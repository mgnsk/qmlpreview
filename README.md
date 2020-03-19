### Go QT playground (WIP)

A sandbox for getting started with [Qt binding for Go](https://github.com/therecipe/qt)

### Requirements

- `docker`
- `docker-compose`

### Deploy linux

* `$ ./build.sh deploy_linux`

* `$ ./deploy_linux.sh`

* `./app/cmd/example1/deploy/linux/example1 -qmlpath ./app/cmd/example1/qml/main.qml`

### Deploy js (TODO qmlpath)

* `$ ./build.sh deploy_js`

* `$ ./deploy_js.sh`

* `$ go run app/cmd/serve/main.go -root ./app/cmd/example1/deploy/js`

* Open browser at `http://localhost:8080`

### Deploy wasm (TODO qmlpath)

* `$ ./build.sh deploy_wasm`

* `$ ./deploy_wasm.sh`

* `$ go run app/cmd/serve/main.go -root ./app/cmd/example1/deploy/wasm`

* Open browser at `http://localhost:8080`
