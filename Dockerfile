FROM golang:latest AS BuildStage

COPY . .  

EXPOSE 8000  
RUN go mod init
RUN go build -o go_api 

FROM alpine:latest  

WORKDIR /  

COPY --from=BuildStage go_api go_api

EXPOSE 8000  

ENTRYPOINT go_api

