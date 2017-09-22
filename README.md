# veth

Ethereum development setup

## install

```bash
$ docker build -t binocarlos/veth .
```

## install geth on OSX

```bash
brew update
brew upgrade
brew tap ethereum/ethereum
brew install ethereum
```

Then to start the chain download:

```bash
geth --datadir $HOME/.veth --fast --cache 1024
```
