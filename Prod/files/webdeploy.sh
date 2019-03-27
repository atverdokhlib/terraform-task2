sudo apt update -y
sudo apt install apache2 -y
sudo sh -c 'echo "Hi, this is VM <strong>$(hostname)</strong> with IP: <strong>$(curl ifconfig.io)</strong>" > /var/www/html/index.html'

