#!/bin/sh

set -e
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

if [ "$1" = 'server' ]; then
  # Run database migrations only if needed
  bundle exec rails db:drop db:migrate 2>/dev/null || bundle exec rails db:drop db:create db:migrate 

  # Start the Rails server
  exec bundle exec rails server -b 0.0.0.0 -p 3000
fi

exec bundle exec rails server -b 0.0.0.0 -p 3000
