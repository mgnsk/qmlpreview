### Requirements

- `docker`
- `docker-compose`

### Installation:

`$ ./build.sh`

`$ ./start.sh` to run the container and enter a bash shell.

Now in the sandbox:

`$ GO111MODULE=off qtrcc linux ./...`

`$ GO111MODULE=off qtdeploy build linux ./...`

Run the example on host machine:

`$ cd app/cmd/example/deploy/linux`

`$ ./example`
