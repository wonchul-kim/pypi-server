FROM python:3
MAINTAINER wonchul <onedang22@gmail.com>

# to avoid user input when installing
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -y python3 python3-dev python3-pip \
    && mkdir -p /pypi

RUN apt-get install -y apache2

RUN pip3 install -U pip
RUN pip3 install -U passlib pypiserver twisted 

EXPOSE 80
# VOLUME ["/pypi"]

ADD entrypoint.sh /
CMD ["/entrypoint.sh"]
