FROM alpine:3.5

LABEL authors="Yung Trinh"

RUN apk update && \
	apk add bash mysql mysql-client && \
	addgroup mysql mysql && \
	mkdir /scripts && \
	rm -rf /var/cache/apk/*

VOLUME ["/var/lib/mysql"]

ENV MYSQL_USER dev
ENV MYSQL_USER_PWD dev
ENV MYSQL_USER_DB dev

COPY ./startup.sh /scripts/startup.sh
COPY ./schema /scripts/schema
RUN chmod +x /scripts/startup.sh \
  && chmod +x /scripts/schema/*.sh

EXPOSE 3306

ENTRYPOINT ["/scripts/startup.sh"]
