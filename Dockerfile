# Dockerfile for scrapy

FROM ubuntu:precise

# Update APT cache
RUN sed -i.bak 's/main$/main universe/' /etc/apt/sources.list
RUN apt-get update

# Add scrapy APT repository
ADD http://archive.scrapy.org/ubuntu/archive.key /tmp/scrapy.key
RUN apt-key add /tmp/scrapy.key
RUN echo "deb http://archive.scrapy.org/ubuntu precise main" > /etc/apt/sources.list.d/scrapy.list
RUN apt-get update

# Install scrapy
RUN apt-get install -y scrapy-0.23

