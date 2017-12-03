FROM ubuntu:16.04

MAINTAINER vadim


# Install Node...
RUN \
	apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install nginx && \
	rm -v /etc/nginx/nginx.conf
	
	
# Copy app to /src
COPY . /etc/nginx/nginx.conf


EXPOSE 80

CMD cd /src && node ./server.js
