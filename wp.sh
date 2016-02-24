#! /bin/sh

echo 'Pulling down Wordpress'
wget https://wordpress.org/latest.tar.gz
echo 'Extracting Wordpress'
tar -zxvf latest.tar.gz
cd wordpress
mv * ../
cd ..
rm -Rf wordpress
rm latest.tar.gz
mv wp-config-sample.php wp-config.php
sed -i 's/database_name_here/wordpress/g' wp-config.php
sed -i 's/username_here/wordpress/g' wp-config.php
sed -i 's/password_here/password/g' wp-config.php
echo 'Done'
