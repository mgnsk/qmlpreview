### Go QT playground (WIP)

A sandbox for getting started with [Qt binding for Go](https://github.com/therecipe/qt)

Currently it draws a configurable board of random colors using dynamic QML.

![Alt text](/screenshot.jpg?raw=true "Optional Title")

### Requirements

- `docker`
- `docker-compose`
- `direnv` (https://direnv.net)

#### Deploy linux (in a direnv loaded environment)

* `$ ./build.sh`

* `$ install_linux /app/cmd/qmlpreview`

* `$ qmlpreview -f $REPO/app/qml/board.qml`

#### Deploy js (TODO)

#### Deploy wasm (TODO)

#### Development

For proper go environment, use remote containers plugin in VSCode and attach to deploy_linux.
