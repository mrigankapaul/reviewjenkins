FROM centos:7

USER root

#Install Docker
RUN yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-20.10.2-3.el7.x86_64.rpm && \
    yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.4.3-3.1.el7.x86_64.rpm && \
    yum install -y --skip-broken https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-rootless-extras-20.10.2-3.el7.x86_64.rpm && \
    yum install -y --skip-broken https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-20.10.2-3.el7.x86_64.rpm && \
    curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    useradd prod-user && \
    su prod-user && \
    cd /home/prod-user && \
    # mkdir .ssh && \
    # chmod 700 .ssh/ && \
    # echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDfb3gQG8Dd5AFASOuTbEDoWRHSajsz7sZsNaNZ9n/sL257I2mLD7WmRhRAcfhJKn0arkQ+nbOok81U5TaT/9BFuBrO3G17IKoCuQEh3Mderit8zZbqVF30tFRmuQ9rIit5f7727/zVvwA3YxBLf0GySRMv9xJob1R8V9sY5ksxq6gGLeQIRsPsbFUHuEEOepwWdAGiIQOheBRndAQsam1iIEF1uYbmMqeE8YnHSdzCVyYXLSko+B9ujBmRUS5CLRnI39STyj5kXRl6KNeAFccicPujoDBtBRusWdkEVeGQQOV8m5BgyMSI7qGgHrPnJrtI1hrgqKt3Erx92u72A0wX root@3ae36ee03a75" > .ssh/authorized_keys && \
    # chmnod 400 .ssh/authorized_keys

VOLUME "/var/run/docker.sock"