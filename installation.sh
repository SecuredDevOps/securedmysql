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
