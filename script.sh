#!/bin/bash

domain=example.org
server=otherserver.example.org

touch /root/domain.pem
cat /etc/letsencrypt/live/domain/privkey.pem > /root/os_vu.pem
cat /etc/letsencrypt/live/domain/fullchain.pem >> /root/os_vu.pem
scp -i /root/.ssh/server -P42022 /root/domain.pem user@server:~/
