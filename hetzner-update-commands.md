# Manual Deployment Update Commands for Hetzner

## SSH into your Hetzner server
ssh your-username@your-server-ip

## Navigate to your app directory
cd /path/to/your/campfire/app

## Pull the latest changes
git pull origin main

## Install any new dependencies (if needed)
bundle install

## Precompile assets (important for CSS changes)
RAILS_ENV=production bundle exec rails assets:precompile

## Restart your application server
# For systemd service:
sudo systemctl restart your-app-name

# Or if using Docker:
docker-compose down && docker-compose up -d

# Or if using Passenger:
touch tmp/restart.txt

# Or if using Puma directly:
kill -USR2 $(cat tmp/pids/server.pid)