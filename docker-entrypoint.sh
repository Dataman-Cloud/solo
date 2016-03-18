#!/bin/sh

sed "s/MYSQL_HOST/$MYSQL_HOST/;s/MYSQL_PORT/$MYSQL_PORT/;s/MYSQL_USERNAME/$MYSQL_USERNAME/;s/MYSQL_PASSWORD/$MYSQL_PASSWORD/" /solo/WEB-INF/classes/local.properties.template > /solo/WEB-INF/classes/local.properties
cat /solo/WEB-INF/classes/local.properties

sed "s/STATIC_SERVER_HOST/$STATIC_SERVER_HOST/;s/STATIC_SERVER_PORT/$STATIC_SERVER_PORT/;s/SERVER_HOST/$SERVER_HOST/;s/SERVER_PORT/$SERVER_PORT/" /solo/WEB-INF/classes/latke.properties.template > /solo/WEB-INF/classes/latke.properties
cat /solo/WEB-INF/classes/latke.properties

exec "$@"
