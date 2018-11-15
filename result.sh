#!/bin/bash

# Temporary Source db save directory.
tmp_sql_dir="/tmp"

# MySQL settings
mysql_user="root"
mysql_password=""

# Read MySQL password from stdin if empty
if [ -z "${mysql_password}" ]; then
  echo -n "Enter MySQL ${mysql_user} password: "
  read -s mysql_password
  echo
fi

# Check MySQL password
# echo exit | mysql --user=${mysql_user} --password=${mysql_password} -B 2>/dev/null
# if [ "$?" -gt 0 ]; then
#   echo "MySQL ${mysql_user} password incorrect"
#   exit 1
# else
#   echo "MySQL ${mysql_user} password correct."
# fi

# Source and Target database setting.
source_db="flex_id_moovci_test"
target_db="moovci_staging"

# Get data from source db: flex_id_moovci_test
echo "Creating temporary sqldump of source database: \"${source_db}\""

src_tables="$(mysql --user=${mysql_user} --password=${mysql_password} --database ${source_db} -Bse 'show tables')"
src_table1="core_identification"
src_table2=()
for src_table in $src_tables
do
	if [ $src_table != "core_identification" ]; then
		src_table2+=(${src_table})
	fi
done

# Dump source database tables with filtering
# last 3 months for core_identification table
cmp_dt=$(date --date="3 months ago" '+%Y-%m-%d %H:%M:%S')

# dump only last 3 months
mysqldump --user=${mysql_user} --password=${mysql_password} ${source_db} ${src_table1} --where="updatedAt>'${cmp_dt}'" > "${tmp_sql_dir}/${source_db}1.sql"

# Max 20000 transaction id for other tables
mysqldump --user=${mysql_user} --password=${mysql_password} ${source_db} ${src_table2[@]} --where="1=1 ORDER BY id DESC LIMIT 20000" > "${tmp_sql_dir}/${source_db}2.sql"

 # Create staging database(target database)
mysqladmin --user=${mysql_user} --password=${mysql_password} drop ${target_db} --force
mysqladmin --user=${mysql_user} --password=${mysql_password} create ${target_db}

# Save staging data into moovci_staging database
echo "Saving Staging data into \"${target_db}\" database..."
mysql --user=${mysql_user} --password=${mysql_password} ${target_db} < ${tmp_sql_dir}/${source_db}1.sql
mysql --user=${mysql_user} --password=${mysql_password} ${target_db} < ${tmp_sql_dir}/${source_db}2.sql

# Clear temporary sql files
rm ${tmp_sql_dir}/${source_db}1.sql ${tmp_sql_dir}/${source_db}2.sql

echo "All done!"
