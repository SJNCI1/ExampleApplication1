#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop example_app
cd ExampleApplication1/
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
pm2 start ./bin/www --name example_app
# This is the commented line that I have added to show the whole working of the pipeline.