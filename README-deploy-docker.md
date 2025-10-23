Deploying with bin/docker-deploy

This repository includes a convenience script to build and run the Docker image with automatic generation of VAPID keys and SECRET_KEY_BASE.

Usage (from project root, WSL recommended):

Make executable (if not already):

  chmod +x bin/docker-deploy

Build, generate keys, and run:

  ./bin/docker-deploy --domain chat.example.com

To only build and generate keys without running the container:

  ./bin/docker-deploy --no-run

Notes:
- Requires: docker, openssl, xxd (xxd is part of vim-common on Debian/Ubuntu), openssl base64 command
- The script will print generated environment values; copy them to your server or set them in your orchestration tool as needed.
- For production you should set your own persistent SECRET_KEY_BASE and store VAPID keys securely.
