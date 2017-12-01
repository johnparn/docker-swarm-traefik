#!/bin/sh

# Cleanup
. uninstall.sh
sleep 4

# Create traefik
docker stack deploy traefik --compose-file traefik.yaml

# Give traefik a chance to establish network
sleep 4

# Deploy images
docker stack deploy web --compose-file docker-compose.yaml
