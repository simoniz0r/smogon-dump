#!/bin/bash

echo "Fetching rb data..."
curl -L 'https://www.smogon.com/dex/_rpc/dump-basics' \
-H 'content-type: application/json' \
--data-raw '{"gen":"rb"}' \
| jq '.' > "$(dirname $0)"/rb.json
echo "Checking rb data..."
jq -c '.pokemon[] | select(.name == "Charmander")' "$(dirname $0)"/rb.json || exit 1

echo "Fetching gs data..."
curl -L 'https://www.smogon.com/dex/_rpc/dump-basics' \
-H 'content-type: application/json' \
--data-raw '{"gen":"gs"}' \
| jq '.' > "$(dirname $0)"/gs.json
echo "Checking gs data..."
jq -c '.pokemon[] | select(.name == "Charmander")' "$(dirname $0)"/gs.json || exit 2

echo "Fetching rs data..."
curl -L 'https://www.smogon.com/dex/_rpc/dump-basics' \
-H 'content-type: application/json' \
--data-raw '{"gen":"rs"}' \
| jq '.' > "$(dirname $0)"/rs.json
echo "Checking rs data..."
jq -c '.pokemon[] | select(.name == "Charmander")' "$(dirname $0)"/rs.json || exit 3

echo "Fetching dp data..."
curl -L 'https://www.smogon.com/dex/_rpc/dump-basics' \
-H 'content-type: application/json' \
--data-raw '{"gen":"dp"}' \
| jq '.' > "$(dirname $0)"/dp.json
echo "Checking dp data..."
jq -c '.pokemon[] | select(.name == "Charmander")' "$(dirname $0)"/dp.json || exit 4

echo "Fetching bw data..."
curl -L 'https://www.smogon.com/dex/_rpc/dump-basics' \
-H 'content-type: application/json' \
--data-raw '{"gen":"bw"}' \
| jq '.' > "$(dirname $0)"/bw.json
echo "Checking bw data..."
jq -c '.pokemon[] | select(.name == "Charmander")' "$(dirname $0)"/bw.json || exit 5

echo "Fetching xy data..."
curl -L 'https://www.smogon.com/dex/_rpc/dump-basics' \
-H 'content-type: application/json' \
--data-raw '{"gen":"xy"}' \
| jq '.' > "$(dirname $0)"/xy.json
echo "Checking xy data..."
jq -c '.pokemon[] | select(.name == "Charmander")' "$(dirname $0)"/xy.json || exit 6

echo "Fetching sm data..."
curl -L 'https://www.smogon.com/dex/_rpc/dump-basics' \
-H 'content-type: application/json' \
--data-raw '{"gen":"sm"}' \
| jq '.' > "$(dirname $0)"/sm.json
echo "Checking sm data..."
jq -c '.pokemon[] | select(.name == "Charmander")' "$(dirname $0)"/sm.json || exit 7

echo "Fetching ss data..."
curl -L 'https://www.smogon.com/dex/_rpc/dump-basics' \
-H 'content-type: application/json' \
--data-raw '{"gen":"ss"}' \
| jq '.' > "$(dirname $0)"/ss.json
echo "Checking ss data..."
jq -c '.pokemon[] | select(.name == "Charmander")' "$(dirname $0)"/ss.json || exit 8

echo "Fetching sv data..."
curl -L 'https://www.smogon.com/dex/_rpc/dump-basics' \
-H 'content-type: application/json' \
--data-raw '{"gen":"sv"}' \
| jq '.' > "$(dirname $0)"/sv.json
echo "Checking sv data..."
jq -c '.pokemon[] | select(.name == "Charmander")' "$(dirname $0)"/sv.json || exit 9
