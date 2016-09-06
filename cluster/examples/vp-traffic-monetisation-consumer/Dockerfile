FROM hub.docker.vpclub.cn/vpclub/java:8
VOLUME /app 
ADD app/vp-traffic-monetisation-consumer-1.0.0.jar /app/vp-traffic-monetisation-consumer-1.0.0.jar
ENV PROFILE=default
ENTRYPOINT ["java","-Xmx128m","-Xss256k","-jar","/app/vp-traffic-monetisation-consumer-1.0.0.jar","-Dspring.profiles.active=$PROFILE"]
