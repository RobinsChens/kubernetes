FROM hub.docker.vpclub.cn/vpclub/java:8
VOLUME /app 
ADD app/vp-traffic-monetisation-provider-1.0.0.jar /app/vp-traffic-monetisation-provider-1.0.0.jar 

ENTRYPOINT ["java","-Xmx128m","-Xss256k","-jar","/app/vp-traffic-monetisation-provider-1.0.0.jar"]
