# Usa uma imagem base oficial do Java
FROM openjdk:17-jdk-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia o código-fonte Java para o container
COPY src/main/java/HelloWorld.java /app/

# Compila o arquivo Java
RUN javac HelloWorld.java

# Define o comando para executar a aplicação quando o container iniciar
CMD ["java", "HelloWorld"]