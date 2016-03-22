FROM java:8-jre
MAINTAINER Adam Kunicki <kunickiaj@gmail.com>

RUN set -x \
  && apt-get update -qq \
  && apt-get install -qq --no-install-recommends curl ca-certificates \
  && mkdir /opt/jmxtrans /opt/jmxtrans/conf /opt/jmxtrans/log \
  && curl -sSL -o /opt/jmxtrans/jmxtrans-all.jar https://search.maven.org/remotecontent?filepath=org/jmxtrans/jmxtrans/252/jmxtrans-252-all.jar \
  && apt-get remove -qq --auto-remove curl \
  && apt-get clean -qq \
  && rm -rf /var/lib/apt/lists/*

VOLUME /opt/jmxtrans/conf
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["jmxtrans"]
