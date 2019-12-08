#!/bin/bash
SERVICE=hello_world_node_app
if P=$(ps -aux | grep 8000)
then
    echo "$SERVICE is running, PID is $P"
    echo "Executing changes in production Server"
    curl -X POST http://<Production_Jenkins_URL>:8080/job/Production_Application_job/build
else
    echo "$SERVICE is not running. Please recheck the changes and build again to deploy application to the production" | mail -s "Gogo Hello_world_app is not running" developer@gogo.com
fi
