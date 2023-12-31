#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bin/rails db:environment:set RAILS_ENV=production
bundle exec rake db:setup DISABLE_DATABASE_ENVIRONMENT_CHECK=1