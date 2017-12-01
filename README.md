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

We can run multiple blockchains and join them for testing.

The state for each node is kept in `~/.veth/<nodename>`

To add a new node:

```bash
$ veth add node1
```

To start it:

```bash
$ veth start node1
```

To view its logs:

```bash
$ veth logs node1
```

To attach:

```bash
$ veth attach node1
```

