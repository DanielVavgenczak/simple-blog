#!/usr/bin/env bash
set -o errexit

echo "=== Ruby version ==="
ruby --version

echo "=== Bundler version ==="
bundle --version

echo "=== Installing gems ==="
bundle install

echo "=== Checking bundle ==="
bundle check

echo "=== Precompiling assets ==="
bundle exec rails assets:precompile
bundle exec rails assets:clean

echo "=== Running migrations ==="
bundle exec rails db:migrate

echo "=== Build complete ==="