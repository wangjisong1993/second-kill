// TODO
FROM java
VOLUME /tmp
ADD red-package.jar red-package.jar
RUN bash -c 'touch /red-package.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /red-package.jar" ]