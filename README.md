### Requirements

- `docker`
- `docker-compose`

### Installation:

Setup direnv and allow .envrc first.

`$ sh setup.sh` to install tusk task manager.

`$ tusk sandbox.build`

`$ tusk sandbox.up`

`$ tusk sandbox.qtsetup`

`$ tusk sandbox.bash`

Now in the sandbox:

`$ qtrcc linux ./...`

`$ qtdeploy build linux ./...`

Run the example on host machine:

`$ cd app/cmd/example/deploy/linux`

`$ ./example`
