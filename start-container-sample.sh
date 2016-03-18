#! /bin/bash

docker run -e SERVER_HOST=10.3.10.121 -e STATIC_SERVER_HOST=10.3.10.121 -e MYSQL_PASSWORD=123456 -e MYSQL_HOST=10.3.10.121 --net=host solo:latest
