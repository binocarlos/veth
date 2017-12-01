# veth

Ethereum / IPFS development setup

## install

```bash
$ docker run --rm binocarlos/veth install | sudo cat > /usr/local/bin/veth
$ sudo chmod a+x /usr/local/bin/veth
```

## truffle

In your repo create a folder for the truffle files (e.g. `truffle`):

```bash
$ mkdir truffle
$ cd truffle
```

Then initialize:

```bash
$ veth truffle init
```

From now on - from within the `truffle` folder you can run truffle as normal:

```bash
$ veth truffle compile
$ veth truffle migrate
$ veth truffle test
```

## geth

In the root of your repo - we can run a `geth` server that will keep it's state in `.data`:

```bash
$ veth init
```

This will write the password to `.data/password.txt` and the genesisblock to `.data/genesisblock.json`

To run the geth server in mining mode:

```bash
$ veth start
```

To get a console:

```bash
$ veth console
```

