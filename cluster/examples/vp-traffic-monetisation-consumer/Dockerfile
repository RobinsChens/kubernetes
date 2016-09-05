FROM hub.docker.vpclub.cn/vpclub/java:8
VOLUME /tmp
WORKDIR /app
ADD app/vp-traffic-monetisation-consumer-1.0.0.jar /app/vp-traffic-monetisation-consumer-1.0.0.jar
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV PROFILE=default
ENTRYPOINT ["java","-Xmx128m -Xss256k","-jar","/app/vp-traffic-monetisation-consumer-1.0.0.jar","-Dspring.profiles.active=$PROFILE"]
