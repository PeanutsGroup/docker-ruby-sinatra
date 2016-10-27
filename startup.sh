#!/bin/bash
gem install sinatra
if [ "$RACK_ENV" == "production" ]; 
then 
  bundle install --without development test
  ruby $MAIN_APP_FILE -p 8080
else
  bundle install
  if [ "$RACK_ENV" == "test" ]; 
  then
    rspec
  else
    gem install shotgun
    shotgun -I /myapp $MAIN_APP_FILE -p 8080 -o '0.0.0.0'
  fi
fi
