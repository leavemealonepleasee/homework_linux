#!/bin/bash

# Update and upgrade system packages
sudo apt update -y
sudo apt upgrade -y

# Install Apache, PHP, and required modules for WordPress
sudo apt install -y apache2 php libapache2-mod-php php-mysqli php-xml php-mbstring wget curl unzip

# Download the latest WordPress package
cd /var/www/html
sudo wget https://wordpress.org/latest.tar.gz

# Extract the WordPress package
sudo tar -xvzf latest.tar.gz

# Set correct ownership and permissions
sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chmod -R 755 /var/www/html/wordpress

# Clean up the tarball
sudo rm latest.tar.gz

# Enable Apache mod_rewrite for WordPress permalinks
sudo a2enmod rewrite

# Restart Apache to apply changes
sudo systemctl restart apache2

# Open port 80 in UFW firewall if necessary
sudo ufw allow 80/tcp

# Ensure Apache is running
sudo systemctl status apache2

echo "WordPress installation is complete. Visit your server's IP to continue setup."

