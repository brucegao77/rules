#!/bin/bash

cd /home/bruce/rules
git add .
git commit -m update
git push

mv /var/log/xray/access.log ./
chmod 666 access.log
systemctl restart xray
