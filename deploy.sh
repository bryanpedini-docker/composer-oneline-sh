#!/bin/sh

set -e

if ! command -v curl &> /dev/null; then
  echo "curl not found, quitting..." >/dev/stderr
  exit 1
fi

curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose -v
printf " - installed successfully"
