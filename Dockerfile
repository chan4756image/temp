FROM openjdk:17-alpine3.14

# JAR 파일 이름을 유연하게 지정할 수 있도록 ARG 사용
ARG JAR_FILE=demo-0.0.1-SNAPSHOT.jar

# 작업 디렉토리 설정
WORKDIR /

# JAR 파일을 이미지의 app.jar로 복사
COPY ./my/target/${JAR_FILE} app.jar

# 애플리케이션이 사용할 포트 8080 노출
EXPOSE 8080

# JAR 파일 실행
ENTRYPOINT ["java", "-jar", "/app.jar"]
