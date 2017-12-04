FROM busybox
MAINTAINER kaiyadavenport@gmail.com
ADD ./veth /app/veth
ENTRYPOINT ["cat", "/app/veth"]