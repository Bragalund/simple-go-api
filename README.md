# Go Api

## Needed software  

1. nix  

## How to run  

```shell
nix-shell  
go run main.go
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
