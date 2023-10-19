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

## How to program in go  

[https://go.dev/doc/effective_go](https://go.dev/doc/effective_go)

Fix indentation  
```shell
go fmt *.go
```

## Go with vim  

Install vim plugin https://github.com/fatih/vim-go
```lua  
use {'fatih/vim-go', run = ':GoUpdateBinaries'}  # Written for [packer](https://github.com/wbthomason/packer.nvim) (not documented on vim-go github-site)
```

Handy vim commands
```shell
:GoLint  # Gives feedback on linting in your go-code
:GoBuild # Builds the code
```

## TODO  

[x] Format and lint code properly  
[ ] Read thru https://go.dev/doc/effective_go 
[ ] Add automated tests for all endpoints  

