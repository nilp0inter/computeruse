#!/bin/bash
set -e

./start_all.sh
./novnc_startup.sh
./caddy_startup.sh

STREAMLIT_SERVER_PORT=8501 python -m streamlit run computer_use_demo/streamlit.py > /tmp/streamlit_stdout.log &

echo "✨ Computer Use Demo is ready!"
echo "➡️  Open http://localhost:7860 in your browser to begin"

# Keep the container running
tail -f /dev/null
