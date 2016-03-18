FROM index.shurenyun.com/solo:runtime
MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

ENV  SERVER_HOST=0.0.0.0
ENV  SERVER_PORT=8080
ENV  STATIC_SERVER_HOST=localhost
ENV  STATIC_SERVER_PORT=8080
ENV  MYSQL_USERNAME=root
ENV  MYSQL_PASSWORD=password
ENV  MYSQL_HOST=localhost
ENV  MYSQL_PORT=3306

ADD  target/solo /solo
ADD  docker-entrypoint.sh /usr/local/sbin/docker-entrypoint.sh

WORKDIR /solo

RUN  chmod a+x /usr/local/sbin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/sbin/docker-entrypoint.sh"]

CMD ["java", "-cp", "WEB-INF/lib/*:WEB-INF/classes", "org.b3log.solo.Starter"]
