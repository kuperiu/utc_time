curl --fail  http://localhost:8090/
if [ $? -ne 0 ]; then
    exit 1
fi
curl --fail  http://localhost/
if [ $? -ne 0 ]; then
    exit 1
fi