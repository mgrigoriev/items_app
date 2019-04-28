#!/usr/bin/env bash

export RAILS_ENV=$1

if [ $1 == 'production' ]; then
  rails assets:precompile && rails db:migrate && rails server -b 0.0.0.0
else
  rails db:migrate && rails server -b 0.0.0.0
fi
