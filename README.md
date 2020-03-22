### Go QT playground (WIP)

A sandbox for getting started with [Qt binding for Go](https://github.com/therecipe/qt)

QML editor

Linux
![Linux](/screenshot.jpg "Linux")

Browser
![Browser](/screenshot-browser.jpg "Browser")

### Requirements

- `docker`
- `docker-compose`
- `direnv` (https://direnv.net)
- `go` (for local tools)

### Build
* Set up direnv

* `$ ./build.sh`

#### Run editor
* `$ install_linux /app/cmd/editor`

* `$ editor`

#### Preview any qml file:
* `$ install_linux /app/cmd/qmlpreview`

* `$ qmlpreview -f ./app/cmd/editor/qml/main.qml` Runs the same editor.

#### Run in browser with gopherjs

* `$ deploy_js /app/cmd/editor`

* `$ serve -root ./app/cmd/editor/deploy/js`

* Open browser at http://localhost:8080

#### Run in browser with go wasm

* `$ deploy_wasm /app/cmd/editor`

* `$ serve -root ./app/cmd/editor/deploy/wasm`

* Open browser at http://localhost:8080

#### Development

For proper go environment, use remote containers plugin in VSCode and attach to deploy_linux.
