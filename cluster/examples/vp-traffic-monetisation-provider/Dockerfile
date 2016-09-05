FROM hub.docker.vpclub.cn/vpclub/java:8
VOLUME /tmp
ADD app/vp-traffic-monetisation-provider-1.0.0.jar /app/vp-traffic-monetisation-provider-1.0.0.jar 

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/vp-traffic-monetisation-provider-1.0.0.jar"]
