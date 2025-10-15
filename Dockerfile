# Dùng JDK chính thức
FROM eclipse-temurin:17-jdk

# Thư mục làm việc trong container
WORKDIR /app

# Copy toàn bộ project vào container
COPY . .

# Cấp quyền thực thi cho gradlew
RUN chmod +x gradlew

# Build project, bỏ qua test cho nhanh
RUN ./gradlew build -x test

# Chạy file jar (chỉnh lại tên đúng)
CMD ["java", "-jar", "build/libs/demo_depoye_spring_boot-0.0.1-SNAPSHOT.jar"]
