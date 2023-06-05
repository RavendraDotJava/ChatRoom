FROM openjdk:8
EXPOSE 9191
ADD target/chatroom.jar chatroom.jar
ENTRYPOINT [ "java","-jar","chatroom.jar" ]
