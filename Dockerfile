FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential mysql-client nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp