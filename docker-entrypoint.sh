#!/bin/sh

sed "s/MYSQL_HOST/$MYSQL_HOST/;s/MYSQL_PORT/$MYSQL_PORT/;s/MYSQL_USER/$MYSQL_USER/;s/MYSQL_PASSWORD/$MYSQL_PASSWORD/" /usr/local/tomcat/webapps/solo/WEB-INF/classes/local.properties.template > /usr/local/tomcat/webapps/solo/WEB-INF/classes/local.properties
sed "s/SERVER_HOST/$SERVER_HOST/;s/SERVER_PORT/$SERVER_PORT/;s/STATIC_SERVER_HOST/$STATIC_SERVER_HOST/;s/STATIC_SERVER_PORT/$STATIC_SERVER_PORT/;" /usr/local/tomcat/webapps/solo/WEB-INF/classes/latke.properties.template > /usr/local/tomcat/webapps/solo/WEB-INF/classes/latke.properties.template

exec "$@"
