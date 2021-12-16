
FROM golang:1.16-alpine

WORKDIR /app
COPY
COPY launch.sh ./

RUN go install github.com/mwatermolen/log4shell-tools/cmd/log4shell-tools-server@latest

EXPOSE 8001
EXPOSE 8080
EXPOSE 12345

CMD [ "/bin/bash", "/app/launch.sh"]