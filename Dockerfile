FROM golang:latest AS BuildStage

COPY . .  

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod go.sum ./
RUN go mod download && go mod verify

EXPOSE 8000  
RUN go mod init
RUN go build -o go_api 

FROM alpine:latest  

WORKDIR /  

COPY --from=BuildStage go_api go_api

EXPOSE 8000  

ENTRYPOINT go_api

