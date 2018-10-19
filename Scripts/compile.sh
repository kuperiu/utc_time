#!/bin/bash
sudo mkdir /app
cd /app && sudo git clone https://github.com/kuperiu/utc_time.git
if [ $? -ne 0 ]; then
    exit 1
fi
cd utc_time
./mvnw package
if [ $? -ne 0 ]; then
    exit 1
fi