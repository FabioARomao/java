# Etapa 1: Build da aplicação
FROM eclipse-temurin:17-jdk AS build

WORKDIR /app

COPY src/main/java/AloMundo.java .

RUN javac AloMundo.java

FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY --from=builder /app/AloMundo.class .

CMD ["java", "AloMundo"]
