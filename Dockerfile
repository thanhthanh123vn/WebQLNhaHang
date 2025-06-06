FROM maven:3.9.6-eclipse-temurin-17-alpine AS build

WORKDIR /app
COPY pom.xml .
COPY src ./src

# Build project và tạo file WAR trong /app/target
RUN mvn clean package

FROM tomcat:10.0.27-jdk17-temurin

# Xóa ứng dụng mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR từ bước build sang thư mục webapps
COPY --from=build /app/target/WebQLNhaHang-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
