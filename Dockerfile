FROM nginx:alpine
MAINTAINER Samuel
LABEL version="3.2"
LABEL description="Nginx SSL layer for any web site"
RUN apk add --no-cache nginx-mod-stream &&\
    rm /etc/nginx/conf.d/default.conf
COPY ./project /
ENV REMOTEHOST websrv
ENV REMOTEPORT 80
CMD ["/sbin/run"]
EXPOSE 80
