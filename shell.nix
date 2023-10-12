{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    name="dev-environment";
    buildInputs = [ 
         pkgs.go 
         pkgs.git
         pkgs.glibcLocales
        ];
    shellHook = ''
      go get github.com/gin-gonic/gin;
      echo "Start developing";  
    '';
}
