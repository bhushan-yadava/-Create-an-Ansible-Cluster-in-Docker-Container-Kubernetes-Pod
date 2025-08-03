FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y sudo openssh-server python3 python3-pip sshpass && \
    pip3 install ansible && \
    mkdir /var/run/sshd

RUN useradd -m ansible && echo 'ansible:ansible' | chpasswd && adduser ansible sudo

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

