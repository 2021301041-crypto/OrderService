# 1. 베이스 이미지 설정
FROM eclipse-temurin:21-jdk

# 2. 현재 생성된 JAR 파일을 컨테이너 내부에 복사
COPY ./target/OrderService-0.0.1-SNAPSHOT.jar /usr/src/OrderService/

# 3. 작업 디렉토리 설정  (cmd창 cd 생략)
WORKDIR /usr/src/OrderService

# 4. 컨테이너 사용하는 포트를 노출 시킨다 (일종의 설명서 = 메타데이터)
EXPOSE 8081

# 5. 응용 프로그램 실행
CMD ["java", "-jar", "OrderService-0.0.1-SNAPSHOT.jar"]