### Requirements

- `docker`
- `docker-compose`

### Deploy linux

* `$ ./build.sh deploy_linux`

* `$ ./deploy_linux.sh`

* `$ cd app/cmd/example1/deploy/linux`

* `$ ./example1`

### Deploy js/wasm

* `$ ./build.sh deploy_js`

* `$ ./deploy_js.sh`

* `$ go run app/cmd/serve/main.go -root ./app/cmd/example1/deploy/js`

* Open browser at `http://localhost:8080`
