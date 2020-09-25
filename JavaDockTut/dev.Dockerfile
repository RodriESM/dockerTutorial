FROM openjdk:latest
COPY src JavaDockTut
WORKDIR JavaDockTut
RUN mkdir -p bin
RUN javac -d bin ./com/myapp/main.java
WORKDIR bin
CMD ["java", "com.myapp.main"]
