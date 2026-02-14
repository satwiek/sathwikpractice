#!#bin#bash

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/rpm-stable/jenkins.repo
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum install java-17
sudo yum install jenkins
sudo systemctl daemon-reload

systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins
