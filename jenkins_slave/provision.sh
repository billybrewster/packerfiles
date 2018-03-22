wget https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_linux_amd64.zip?_ga=2.121080584.1660155545.1521728395-1981876141.1518449816
mv packer_1.2.1_linux_amd64.zip?_ga=2.121080584.1660155545.1521728395-1981876141.1518449816 packer
yum install -y unzip
pwd
ls -ltr
unzip -o packer
ls -ltr
chmod 777 packer
cp packer /var/tmp/
sed -i -e '/<servers>/r /var/tmp/maven_config.xml' /etc/maven/settings.xml
