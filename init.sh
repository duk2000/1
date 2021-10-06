sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

#database conf
#sudo /etc/init.d/mysql restart
#mysql -uroot -e "DROP DATABASE ASK"
#mysql -uroot -e "CREATE DATABASE ASK"
#mysql -uroot -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'sa'"
#mysql -uroot -e "GRANT ALL PRIVILEGES ON ASK.* TO 'sa'@'localhost'"

python /home/box/web/ask/manage.py #syncdb
