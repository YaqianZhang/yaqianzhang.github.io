#!/usr/bin/env bash
# Live preview at http://localhost:4000. The page reloads by itself when you save a file.
# Uses podman (or docker) so Ruby doesn't need to be installed. Ctrl+C to stop.
set -e
cd "$(dirname "$0")"
RUNTIME=$(command -v podman || command -v docker)
TTY=""; [ -t 0 ] && TTY="-it"
"$RUNTIME" run --rm $TTY -p 4000:4000 -p 35729:35729 \
  -v "$PWD":/srv:z -v hp-gems:/usr/local/bundle -w /srv docker.io/ruby:3.3-slim bash -c '
    if ! bundle check >/dev/null 2>&1; then
      apt-get update -qq && apt-get install -y -qq build-essential git libssl-dev zlib1g-dev >/dev/null
      bundle install
    fi
    bundle exec jekyll serve --host 0.0.0.0 --livereload --force_polling'
