#!/bin/bash
if [ "$(type -t when-changed)" != "file" ]; then
echo "‘when-changed’ Python pip package is not installed or PATH variable doesn't contain its path. Consider to install it first: “pip install when-changed”"
elif [ "$(type -t http-server)" != "file" ]; then
	echo "http-server is not installed (you can use any other web server or install it by running ‘npm i -g http-webserver’). Place this folder to the web root or point the web root to web sub-directory"
	pkill 'when-changed'; when-changed -r assets ./watchdog.php
else
	echo "pkill 'http-server'; http-server -o web -s & when-changed -r assets ./watchdog.php"
	pkill 'http-server'; http-server -o web -s & when-changed -r assets ./watchdog.php
fi
