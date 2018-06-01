#!/bin/bash

screen -dmS "cannon" java -Xmx4500M  -XX:MaxPermSize=1024M -jar minecraft_server.jar nogui

