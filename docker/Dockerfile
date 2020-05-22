FROM java:11-jre-alpine

LABEL maintainer=vicker23@163.com

ENV TZ=Asia/Shanghai \
    APP_NAME="hero-story-base" \
    APP_HOME="/opt/hero-story"

#java environment,远程调试-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=56273
#默认配置512m，其他依赖镜像可修改配置
ENV JAVA_OPTS="-server -Xms512m -Xmx512m -Djava.awt.headless=true -Djava.security.egd=file:/dev/urandom"

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk add --update openssl && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#&& wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.3.1-linux-x86_64.tar.gz && tar

EXPOSE 8080

WORKDIR $APP_HOME

#ENTRYPOINT ["/docker-entrypoint.sh"]
ENTRYPOINT ["/bin/sh","-c","java $JAVA_OPTS -jar $APP_HOME/$APP_NAME"]