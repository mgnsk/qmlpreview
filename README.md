## QML live preview

### Requirements

- `docker`
- `docker-compose`
- `direnv` (https://direnv.net)

### Build
* Set up direnv

* `$ ./build.sh`

#### Run editor on linux
* `$ install_linux editor`

* `$ editor`

#### Preview any qml file:
* `$ install_linux qmlpreview` to install the tool into `deploy/linux` directory.

* `$ qmlpreview -f app/cmd/editor/qml/main.qml` Runs the editor.

* `$ qmlpreview -f app/qml/board.qml` for a chessboard table.

#### Run editor in browser with gopherjs ([demo](https://mgnsk.github.io/qmlpreview/js/index.html))

* `$ install_js editor`

* `$ docker-compose run --rm -p "8080:8080" deploy_linux go run /app/cmd/serve/main.go -root /deploy/js/editor`

* Open browser at http://localhost:8080

#### Run editor in browser with go wasm ([demo](https://mgnsk.github.io/qmlpreview/wasm/index.html))

* `$ install_wasm editor`

* `$ docker-compose run --rm -p "8080:8080" deploy_linux go run /app/cmd/serve/main.go -root /deploy/wasm/editor`

* Open browser at http://localhost:8080

#### Development

For proper go and QT environment (go language server worked quite well), use remote containers plugin in VSCode and attach to deploy_linux.
All `bin` commands are meant to control docker from outside.
