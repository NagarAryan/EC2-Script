sudo su
yum install -y docker
usermod -a -G docker ec2-user
systemctl start docker.service
docker pull aryannagar/testapache
docker run -e "USERNAME=aryan" -e "PASSWORD=1234" -d -p 8000:8000 aryannagar/testapache