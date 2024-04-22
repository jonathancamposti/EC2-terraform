#!/bin/bash
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
echo '<html><h1>Olá, sou um servidor Web Apache!</h1></html>' > /var/www/html/index.html
