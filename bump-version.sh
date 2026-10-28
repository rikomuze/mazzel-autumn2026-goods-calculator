#!/bin/sh
# 使い方: ./bump-version.sh 2026.10.29-1
set -e
NEW="$1"
[ -n "$NEW" ] || { echo "使い方: ./bump-version.sh YYYY.MM.DD-N"; exit 1; }
OLD=$(grep -m1 -o '<meta name="app-version" content="[^"]*"' index.html | sed 's/.*content="//; s/"$//')
[ -n "$OLD" ] || { echo "index.html に app-version が見つかりません"; exit 1; }
PAT=$(printf '%s' "$OLD" | sed 's/\./\\./g')
sed -i.bak "s/$PAT/$NEW/g" index.html manifest.json && rm -f index.html.bak manifest.json.bak
echo "$OLD -> $NEW"
