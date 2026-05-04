#!/usr/bin/env bash
set -euo pipefail

cd "${1:-/home/yazan/bots/paw-feed-monitorss}"
docker compose ps
docker compose logs --tail=80 monolith bot-presence-service discord-rest-listener-service
