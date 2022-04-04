FROM rabbitmq:management
RUN rabbitmq-plugins enable rabbitmq_web_stomp --offline

