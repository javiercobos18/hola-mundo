FROM tomcat:8.0-alpine

ADD hello-world-war-1.0.0.war /usr/local/tomee/conf/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
