FROM ubuntu:bionic

# Update
RUN apt-get -y update
RUN apt-get -y upgrade

# Python Packages
RUN apt-get -y install python-pip
RUN pip install pwn pwntools

# Useful Tools
RUN apt-get -y install bsdmainutils
RUN apt-get -y install curl
RUN apt-get -y install netcat
RUN apt-get -y install telnet
RUN apt-get -y install wget
RUN apt-get -y install xxd

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /root/.cache
