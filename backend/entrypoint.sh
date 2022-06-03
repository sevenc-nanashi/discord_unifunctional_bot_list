#!/usr/bin/env bash

bundle exec rake db:migrate
./bin/rails s -p 3000 -u falcon -e production
