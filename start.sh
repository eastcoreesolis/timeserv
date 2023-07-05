#!/bin/bash

/usr/bin/nohup busybox httpd -h ./ -p 8080 &
/usr/bin/tail -f /dev/null