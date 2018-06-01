#!/bin/bash

# TODO: Make/check for a symlink to the server jar file in each of the server directories.
./createSymlinks.sh

if [ $? -eq 0 ]; then 
    echo "Symlinks ok, killing all screen sessions and java processes..."
else
    echo "Error verifying or creating symlinks."
    exit 1
fi

killall screen
killall java

echo "Done killing processes."

echo "Starting bungeecord and spigot servers..."

cd bungeecord
./start.sh
cd ..

cd hub
./start.sh
cd ..

cd factions
./start.sh
cd ..

cd cannon
./start.sh
cd ..

#cd survival
#./start.sh
#cd ..

echo "Done starting servers."
