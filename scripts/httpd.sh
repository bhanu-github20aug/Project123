#!/bin/bash

# Check if httpd is running
if pgrep -x "httpd" > /dev/null
then
    echo "HTTPD is running."
else
    echo "HTTPD is not running. Starting HTTPD..."
    sudo service httpd start
    # Alternatively, you can use "systemctl start httpd" on some systems.

    # Check the status again
    if pgrep -x "httpd" > /dev/null
    then
        echo "HTTPD is now running."
    else
        echo "Failed to start HTTPD. Please check the server logs for more information."
    fi
fi
