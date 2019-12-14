sudo cp  /var/www/html/index1.html /var/www/html/index1.html_bkp
if [ $? -eq 0 ]
then
    sudo rm /var/www/html/index1.html
    sudo cp JenkinsProj/index2.html /var/www/html/
else
    echo "Error occurred in deploying"
    exit 1
fi
