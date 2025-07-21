#!/bin/bash
echo "starting Caddy reverse proxy server"

# Start Caddy with the configuration file
caddy run --config /home/computeruse/Caddyfile &

# Wait for Caddy to start
timeout=10
while [ $timeout -gt 0 ]; do
    if netstat -tuln | grep -q ":7860 "; then
        break
    fi
    sleep 1
    ((timeout--))
done

if [ $timeout -eq 0 ]; then
    echo "Caddy failed to start" >&2
    exit 1
fi

echo "Caddy started successfully on port 7860"