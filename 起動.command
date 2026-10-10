#!/bin/bash
cd "$(dirname "$0")"
lsof -ti:8010 | xargs kill -9 2>/dev/null
(sleep 1.5 && open "http://localhost:8010/index.html") &
python3 -m http.server 8010
