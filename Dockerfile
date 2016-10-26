FROM ruby:2.2.5

MAINTAINER Buckaroo Cheung <cheung.buckaroo@gmail.com>

ENV RACK_ENV production
ENV MAIN_APP_FILE myapp.rb

RUN mkdir -p /usr/src/myapp

ADD startup.sh /

WORKDIR /usr/src/myapp

EXPOSE 80

CMD ["/bin/bash", "/startup.sh"]

