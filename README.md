# Go Api

## Needed software  

1. nix-shell   

## How to run  

Locally

```shell
nix-shell           # enter shell with all dependencies 
go run main.go      # run application
```

With docker  

```shell
docker build -t go-api:latest .; docker run -p 8080:8080 go-api:latest
```

## How to use  

GET all books
```shell  
curl http://localhost:8080/books
```

POST book
```shell  
curl localhost:8080/books --include --header "Content-Type: application/json" -d @bookPayload.json 
```
