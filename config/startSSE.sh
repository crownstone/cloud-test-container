#!/usr/bin/env bash
export CROWNSTONE_CLOUD_SSE_TOKEN="sse_token"
export CROWNSTONE_CLOUD_NEXT_SOCKET_ENDPOINT="http://localhost:3050"
export CROWNSTONE_CLOUD_SOCKET_ENDPOINT="http://localhost:3000"

./node_modules/.bin/supervisor ./dist/Server.js
