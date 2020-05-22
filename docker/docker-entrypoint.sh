#!/bin/sh
set -eux

exec "java $JAVA_OPTS -jar $APP_HOME/$APP_NAME $@"