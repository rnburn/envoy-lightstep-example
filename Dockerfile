FROM envoyproxy/envoy:v1.6.0

WORKDIR /app

ADD . /app

RUN apt-get update
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install -r requirements.txt

EXPOSE 8080
EXPOSE 8001
EXPOSE 8002
EXPOSE 8003

CMD ["sh", "/app/start-helloworld.sh"]
