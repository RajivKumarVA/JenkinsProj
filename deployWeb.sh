sudo cp /var/www/html/index.html /var/www/html/index.html_bkp
if [ $? -eq 0 ]
then
    sudo rm /var/www/html/index.html
    sudo cp index.html /var/www/html/
else
    echo "Error occurred in deploying" >> /tmp/log.txt
    exit 1
fi
