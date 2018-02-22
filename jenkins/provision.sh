adduser jenkins root
apt-get update
apt-get install -y vim
apt-get install -y sudo
apt-get install -y man
echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
ls -ltr /var/jenkins_home
cat /var/jenkins_home/config.xml
sed -i -e 's#<isSetupComplete>false</isSetupComplete>#<isSetupComplete>true</isSetupComplete>#g' /var/jenkins_home/config.xml
sed -i -e 's#<name>NEW</name>#<name>RUNNING</name>#g' /var/jenkins_home/config.xml
sed -i -e 's#<useSecurity>true</useSecurity>#<useSecurity>false</useSecurity>#g' /var/jenkins_home/config.xml
sed -i -e '/<globalNodeProperties\/>/r /var/tmp/jenkins_config.xml' /var/jenkins_home/config.xml
cat /var/jenkins_home/config.xml
cp /var/jenkins_home/config.xml /var/jenkins_home/config2.xml
chown root:root /var/jenkins_home/config.xml
cp /var/jenkins_home/config.xml /usr/share/jenkins/ref/
#sed -i -e '#<globalNodeProperties\>#r /var/tmp/jenkins_config.xml' /var/jenkins_home/config.xml
#/usr/local/bin/plugins.sh /var/tmp/plugins.txt
