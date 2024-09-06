#! /bin/bash
sudo apt-get update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
echo "<h>Welcome my testing page!</h>" > /var/www/html/index.html