package main

import (
	"flag"
	"log"
	"net/http"
	"strings"
)

func main() {
	var root string
	flag.StringVar(&root, "root", "", "Root directory of server")
	flag.Parse()
	if root == "" {
		panic("Specify -root directory")
	}

	fs := http.FileServer(http.Dir(root))
	log.Print("Serving " + root + " on http://localhost:8080")
	err := http.ListenAndServe(":8080", http.HandlerFunc(func(resp http.ResponseWriter, req *http.Request) {
		resp.Header().Add("Cache-Control", "no-cache")
		if strings.HasSuffix(req.URL.Path, ".wasm") {
			resp.Header().Set("content-type", "application/wasm")
		}
		fs.ServeHTTP(resp, req)
	}))
	log.Println(err)
}
