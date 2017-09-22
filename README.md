# veth

Ethereum development setup

## install

```bash
$ docker build -t binocarlos/veth .
```

Then clone this folder and install the wrapper:

```bash
$ git clone https://github.com/binocarlos/veth.git
$ cd veth
$ sudo ln -s ./veth /usr/local/bin/veth
```

TODO: better installation

## useful things

#### install geth on OSX

```bash
$ brew update
$ brew upgrade
$ brew tap ethereum/ethereum
$ brew install ethereum
```

Then to start the chain download:

```bash
$ geth --datadir $HOME/.veth --fast --cache 1024
```
