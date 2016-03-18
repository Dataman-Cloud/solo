FROM index.shurenyun.com/tomcat:7
MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

ENV  SERVER_HOST=0.0.0.0
ENV  SERVER_PORT=8080
ENV  STATIC_SERVER_HOST=localhost
ENV  STATIC_SERVER_PORT=8080
ENV  MYSQL_USERNAME=root
ENV  MYSQL_PASSWORD=password
ENV  MYSQL_HOST=localhost
ENV  MYSQL_PORT=3306

ADD  target/solo /usr/local/tomcat/webapps/solo
ADD  docker-entrypoint.sh /usr/local/sbin/docker-entrypoint.sh

RUN  chmod a+x /usr/local/sbin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/sbin/docker-entrypoint.sh"]
CMD ["catalina.sh", "run"]
