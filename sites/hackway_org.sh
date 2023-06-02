#!/usr/bin/env bash

# capture https://hackway.org/

wget \
     --user-agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36' \
     --execute robots=off \
     --limit-rate=200k \
     --wait 1 --random-wait \
     \
     --recursive --level inf \
     --page-requisites \
     --span-hosts \
     --convert-links \
     --adjust-extension \
     --restrict-file-names=windows \
     --no-parent \
     --domains hackway.org,hackweek-1251009918.cos.ap-shanghai.myqcloud.com \
     https://hackway.org/
