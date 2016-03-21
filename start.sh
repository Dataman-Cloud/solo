#!/bin/sh

java -Dcom.sun.management.jmxremote \
     -Dcom.sun.management.jmxremote.port=8081 \
     -Djava.rmi.server.hostname=${SERVER_HOST} \
     -Dcom.sun.management.jmxremote.local.only=false \
     -Dcom.sun.management.jmxremote.ssl=false \
     -Dcom.sun.management.jmxremote.authenticate=false \
     -cp WEB-INF/lib/*:WEB-INF/classes org.b3log.solo.Starter
