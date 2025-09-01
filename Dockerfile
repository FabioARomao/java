FROM openjdk:17-jdk-slim AS builder

WORKDIR /app

COPY src/main/java/AloMundo.java .

RUN javac AloMundo.java

FROM openjdk:17-jre-slim

WORKDIR /app

COPY --from=builder /app/AloMundo.class .

CMD ["java", "AloMundo"]
