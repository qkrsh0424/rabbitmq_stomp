# rabbitmq_stomp

STOMP 플러그인이 탑재된 rabbitmq 도커 이미지 빌드 및 docker-compose 입니다.

rabbitmq:management 를 기반으로 빌드 되어지는 도커 이미지 입니다.

Dockerfile 을 빌드하기 위해서는 rabbitmq:management 이미지가 필요 합니다.

### RUN
```
# 깃 클론
git clone https://github.com/qkrsh0424/rabbitmq_stomp.git

# rabbitmq:management 이미지 pull
docker pull rabbitmq:management

# Dockerfile build
docker build . -t rabbitmq_stomp:1.0.0

# Container 생성 및 실행
docker-compose up -d
````

### RabbitMQ Dashboard
```
브라우저를 열고 http://localhost:15672 로 접근
username : guest
password : guest

유저네임과 패스워드를 바꾸시려면 docker-compose.yml을 열고 아래의 부분을 수정해 주세요.
environment:
  RABBITMQ_DEFAULT_USER: "{USERNAME}"
  RABBITMQ_DEFAULT_PASS: "{PASSWORD}"
  
인바운드 포트 주소를 바꾸시려면 docker-compose.yml을 열고 아래의 부분을 수정해 주세요.
ports:
  - "{PORT}:5672"
  - "{PORT}:15672"
  - "{PORT}:61613"
  - "{PORT}:15674"
```
