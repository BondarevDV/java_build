FROM  ubuntu

WORKDIR /root/hello-world

COPY helloWorld.java /root/hello-world
RUN apt-get update

RUN apt-get install -y  openjdk-8-jdk
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

RUN javac helloWorld.java


ENTRYPOINT java helloWorld




