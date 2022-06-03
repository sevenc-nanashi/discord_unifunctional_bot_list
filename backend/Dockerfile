FROM ruby:3.0.3-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
      build-essential \
      libpq-dev
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle config without 'development,test'
RUN bundle config deployment true
RUN bundle install

COPY . .

CMD "./entrypoint.sh"
