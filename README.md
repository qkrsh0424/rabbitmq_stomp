# rabbitmq_stomp

STOMP 플러그인이 탑재된 rabbitmq 도커 이미지 빌드 및 docker-compose 입니다.

rabbitmq:management 를 기반으로 빌드 되어지는 도커 이미지 입니다.

Dockerfile 을 빌드하기 위해서는 rabbitmq:management 이미지가 필요 합니다.
```
# 깃 클론
git clone https://github.com/qkrsh0424/rabbitmq_stomp.git

# rabbitmq:management 이미지 pull
docker pull rabbitmq:management

# Dockerfile build
docker build . -t rabbitmq_stomp

# Container 생성 및 실행
docker-compose up -d
````
