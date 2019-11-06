# Start with a base image containing Java runtime

FROM ascdc/jdk8

# Add Maintainer Info
MAINTAINER wpeter@cn.ibm.com

# Set Env
ENV TZ Asia/Shanghai

# The application's jar file
ARG JAR_FILE=target/registry-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

RUN chmod 777 app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","app.jar"]