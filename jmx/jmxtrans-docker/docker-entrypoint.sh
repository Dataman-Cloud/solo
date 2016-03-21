#!/bin/bash
set -e

set_conf () {
  if [ $# -ne 2 ]; then
    echo "set_conf requires two arguments: <key> <value>"
    exit 1
  fi

find /opt/jmxtrans/conf -type f -name '*.json' -exec sed -i 's|'"$1"'|'"$2"'|g' {} \;
}

for e in $(env); do
  key=${e%=*}
  value=${e#*=}
  if [[ $key == JMXTRANS_* ]]; then
    set_conf $key $value
  fi
done

if [ "$1" == "jmxtrans" ]; then
  exec java -Djmxtrans.log.dir='/opt/jmxtrans/log' -jar /opt/jmxtrans/jmxtrans-all.jar -j /opt/jmxtrans/conf/
else
  exec "$@"
fi
