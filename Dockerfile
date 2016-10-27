FROM ruby:2.2.5

MAINTAINER Buckaroo Cheung <cheung.buckaroo@gmail.com>

ENV RACK_ENV production
ENV MAIN_APP_FILE myapp.rb

RUN mkdir -p /myapp

ADD startup.sh /

WORKDIR /myapp

EXPOSE 8080

CMD ["/bin/bash", "/startup.sh"]

