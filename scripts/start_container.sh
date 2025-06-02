#!/bin/bash

# Stop and remove any container using port 5000
docker ps --filter "publish=5000" -q | xargs -r docker stop
docker ps -a --filter "publish=5000" -q | xargs -r docker rm

# Run fresh container
docker run -d --name simple-python-app -p 5000:5000 suhail4545/simple-python-flask-app:latest



