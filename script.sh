# !/bin/bash
yum update
yum install -y docker
usermod -a -G docker ec2-user
systemctl start docker.service
docker pull aryannagar/testapache
docker build -t test-apache --build-arg PORT=8000 .
docker run -e "USERNAME=aryan" -e "PASSWORD=1234" -d -p 8000:8000 test-apache