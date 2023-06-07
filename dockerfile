FROM maven:4.0.0
COPY --from=build /target/ChatRoom-0.0.1-SNAPSHOT.jar ChatRoom-0.0.1-SNAPSHOT.jar
RUN mvn clean package -Chatroom





FROM openjdk:17
COPY --from=build /target/ChatRoom-0.0.1-SNAPSHOT.jar ChatRoom-0.0.1-SNAPSHOT.jar
EXPOSE 9191
ADD target/ChatRoom-0.0.1-SNAPSHOT.jar ChatRoom-0.0.1-SNAPSHOT.jar
ENTRYPOINT [ "java","-jar","ChatRoom-0.0.1-SNAPSHOT.jar" ]


