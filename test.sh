#!/bin/bash
SERVICE=hello_world_node_app
if P=$(ps -aux | grep 8000)
then
    echo "$SERVICE is running, PID is $P"
else
    echo "$SERVICE is not running"
fi
