FROM maven:4.0.0
COPY ..
RUN mvn clean package -Chatroom





FROM openjdk:17
COPY --from=build /target/chatroom.jar chatroom.jar
EXPOSE 9191
ADD target/chatroom.jar chatroom.jar
ENTRYPOINT [ "java","-jar","chatroom.jar" ]


