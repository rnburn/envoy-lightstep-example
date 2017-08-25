FROM lyft/envoy

WORKDIR /app

ADD . /app

RUN yes | apt-get install python-pip python-dev build-essential
RUN pip install -r requirements.txt

EXPOSE 8080
EXPOSE 8001
EXPOSE 8002
EXPOSE 8003

CMD ["sh", "/app/start-helloworld.sh"]
