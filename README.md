# veth

A viewer for ethereum based on [blessed-contrib](https://github.com/yaronn/blessed-contrib)

## install

You will be running against the blockchain which needs to be on your computer somewhere.

If you don't already have it downloaded - make a new folder.

Export the `VETH_DATA` variable to point to the data:

```bash
export VETH_DATA=$HOME/.veth
```

Then use veth to initialize the chain:

```bash
docker run -v $VETH_DATA:/root/.ethereum binocarlos/veth --help
```


## install geth on OSX

To install geth on OSX and get the chain downloaded quicker:

```bash
brew update
brew upgrade
brew tap ethereum/ethereum
brew install ethereum
```

Then to start the chain download:

```bash
geth --datadir $VETH_DATA --fast --cache 1024
```
