#!/bin/bash
echo 'Starting Spring Boot app'
cd /app/utc_time/target
java -jar suchapp-0.0.1-SNAPSHOT.jar >/dev/null 2>&1 &
if [ $? -ne 0 ]; then
    exit 1
fi
sleep 60