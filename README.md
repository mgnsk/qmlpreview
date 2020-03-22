### Go QT playground (WIP)

A sandbox for getting started with [Qt binding for Go](https://github.com/therecipe/qt)

QML live editor written in QML

Browser screenshot
![Browser](/screenshot.png "Browser")

### Requirements

- `docker`
- `docker-compose`
- `direnv` (https://direnv.net)

### Build
* Set up direnv

* `$ ./build.sh`

#### Run editor on linux
* `$ install_linux /app/cmd/editor`

* `$ editor`

#### Preview any qml file:
* `$ install_linux /app/cmd/qmlpreview`

* `$ qmlpreview -f ./app/cmd/editor/qml/main.qml` Runs the editor.

* `$ qmlpreview -f ./app/qml/board.qml` for a chessboard table.


#### Run editor in browser with gopherjs

* `$ deploy_js /app/cmd/editor`

* `$ docker-compose run --rm -p "8080:8080" deploy_linux go run /app/cmd/serve/main.go -root /app/cmd/editor/deploy/js`

* Open browser at http://localhost:8080

#### Run editor in browser with go wasm

* `$ deploy_wasm /app/cmd/editor`

* `$ docker-compose run --rm -p "8080:8080" deploy_linux go run /app/cmd/serve/main.go -root /app/cmd/editor/deploy/wasm`

* Open browser at http://localhost:8080

#### Development

For proper go environment, use remote containers plugin in VSCode and attach to deploy_linux.
