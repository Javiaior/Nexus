#!/usr/bin/env bash

set -e

echo "📦 Setting up PocketBase..."

mkdir -p /workspaces/Nexus/pocketbase
cd /workspaces/Nexus/pocketbase

LATEST=$(curl -s https://pocketbase.io/api/version)

echo "➡️ Downloading PocketBase version $LATEST..."

curl -L \
  "https://github.com/pocketbase/pocketbase/releases/download/v$LATEST/pocketbase_${LATEST}_linux_amd64.zip" \
  -o pb.zip

unzip -o pb.zip
rm pb.zip

chmod +x pocketbase

echo "🚀 PocketBase setup done!"
echo "You can now run: ./pocketbase serve --http=0.0.0.0:8090"
