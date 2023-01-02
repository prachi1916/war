FROM tomcat:9
copy gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8080

