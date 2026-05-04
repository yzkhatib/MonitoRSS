# Paw Feed VPS Deployment

Target host: `yazan@139.59.143.83`

Install path: `/home/yazan/bots/paw-feed-monitorss`

Public panel URL before a domain is assigned: `http://139.59.143.83:8001`

## Discord App Requirements

Create or use a Discord application named `Paw Feed`, then set the bot username to `Paw Feed`.

Required values for `.env`:

- `PAW_FEED_BOT_TOKEN_HERE`: Discord bot token.
- `PAW_FEED_APPLICATION_ID_HERE`: Discord application/client ID.
- `PAW_FEED_CLIENT_SECRET_HERE`: Discord OAuth2 client secret.

Discord Developer Portal OAuth2 redirect URI:

```text
http://139.59.143.83:8001/api/v1/discord/callback-v2
```

When a domain is assigned, replace every `http://139.59.143.83:8001` value in `.env` with the HTTPS domain and add the matching callback URL in Discord.

## First Start

```bash
cd /home/yazan/bots/paw-feed-monitorss
cp deploy/paw-feed/.env.example .env
openssl rand -hex 32 # BACKEND_API_SESSION_SECRET
openssl rand -hex 8  # BACKEND_API_SESSION_SALT
docker compose pull --ignore-buildable
docker compose up -d --no-build
docker compose ps
```

Migration containers may exit after completing. The long-running services should stay healthy.
