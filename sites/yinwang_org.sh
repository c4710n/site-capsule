#!/usr/bin/env bash

# capture https://www.yinwang.org/

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
     --domains www.yinwang.org \
     https://www.yinwang.org
