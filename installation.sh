# Jake Farm's secure global MySQL installation

apt-get install mysql
echo "
[mysqld]
bind-address=10.15.20.25
skip-networking=off
max_allowed_packet=16M

[client]
user=root
password="s3cur32020"

user=jake01
password="j4k3F@rm"

[mysql]
user=root" > /opt/local/etc/mysql55/my.cnf

dir=/opt/local/etc/mysql55/my.cnf

touch $dir/mysqldump.cnf
file=$dir/mysqldump.cnf

echo "

[mysqldump]
user=jfarm01
password=S!xteenDigits123

user=dbadmin
password=J@keFarm90120123

user=backup 
password=Corp0rateBackup!"

> $file

# Start our secure db dumps with our client's PCI/PII data
mysqldump --defaults-extra-file=~/.mysql/mysqldump.cnf
