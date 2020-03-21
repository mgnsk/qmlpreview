### Go QT playground (WIP)

A sandbox for getting started with [Qt binding for Go](https://github.com/therecipe/qt)

Currently it draws a configurable board of random colors using dynamic QML.

![Alt text](/screenshot.jpg?raw=true "Optional Title")

### Requirements

- `docker`
- `docker-compose`

### Deploy linux

* `$ ./build.sh deploy_linux`

* `$ ./deploy_linux.sh`

* `./app/cmd/example1/deploy/linux/example1 -qmlpath ./app/cmd/example1/qml/board.qml`


## TODO:

* Need to support dynamic QML loading (linux version does it with a flag),
ideally it the main program should consist of a text editor and a preview pane so that the user can load his own QML program and live-edit it.


### Deploy js (TODO)

* `$ ./build.sh deploy_js`

* `$ ./deploy_js.sh`

* `$ go run app/cmd/serve/main.go -root ./app/cmd/example1/deploy/js`

* Open browser at `http://localhost:8080`

### Deploy wasm (TODO)

* `$ ./build.sh deploy_wasm`

* `$ ./deploy_wasm.sh`

* `$ go run app/cmd/serve/main.go -root ./app/cmd/example1/deploy/wasm`

* Open browser at `http://localhost:8080`
