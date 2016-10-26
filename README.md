#Ruby Sinatra docker

Docker for hosting [Sinatra](http://www.sinatrarb.com) apps

##Running your Sinatra app
    docker run --name my-sinatra-app \
        -p 80:80 \
        -v /path/to/sinatra/myapp:/usr/src/myapp \
        -e MAIN_APP_FILE=myapp.rb \
        -d buckarooch/ruby-sinatra
        
The Docker image exposes port 80.

The Ruby source code is mounted in `/usr/src/myapp`. The main Sinatra file is configured at container start up via the `MAIN_APP_FILE` environment variable. If not set, it defaults to `myapp.rb`.

Dependencies can be installed through [Bundler](http://bundler.io) by providing a Gemfile. The Sinatra gem is installed by default. The environment can be set via the `RACK_ENV` environment variable. If not set, it defaults to `production`.
