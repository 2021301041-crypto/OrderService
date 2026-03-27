rem 1. Build JAR    (rem = 주석 처리)
call mvnw.cmd clean package

rem 2. Dockerfile을 실행   (rem = 주석 처리)
call docker build -t 2021301041/order-service:1.0 .

rem 3. 도커허브에 이미지 저장
call docker push 2021301041/order-service:1.0

rem 4. ssh접속 / pull
call ssh pcm@localhost "cd /home/pcm/order-service && docker compose pull && docker compose up -d"