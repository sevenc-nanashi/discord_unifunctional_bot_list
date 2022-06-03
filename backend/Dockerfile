FROM ruby:3.0.3-slim

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install --deployment --without development test

RUN bundle exec rake db:migrate

RUN rails s -p 3000 -u falcon -e production
