FROM microsoft/aspnet
ADD ./app /app/
WORKDIR /app
RUN kpm restore
WORKDIR /app/src/helloworld
EXPOSE 5000
ENTRYPOINT ["k","web"]
