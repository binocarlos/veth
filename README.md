# veth

Ethereum development toolkit with:

 * [truffle](http://truffleframework.com/)
 * [geth](https://github.com/ethereum/go-ethereum)

veth is a bash script that uses Docker to hide the complexity of running the various tools.

## install

First - [install docker](https://docs.docker.com/engine/installation/), then download and install the script:

```bash
$ docker run --rm binocarlos/veth install | sudo cat > /usr/local/bin/veth
$ sudo chmod a+x /usr/local/bin/veth
```

## truffle development

Change to the base of your project folder and you can work with truffle to compile your contracts:

```bash
$ veth truffle --help
$ veth truffle init
$ veth truffle compile
$ veth truffle migrate
$ veth truffle test
```

## private blockchain

Run all commands from the root of your project - veth keeps state in the `.veth` folder which should be `.gitignored`

Each geth node has a name that you pass to each of the commands to dictate which node to operate on.

If you are working with a single node you can omit the name and it will default to `node1`.

#### initialize

```bash
$ veth initialize # (same as veth initialize node1)
```

Multiple nodes with custom names:

```bash
$ veth initialize chain1
$ veth initialize chain2
```

This will create two folders to hold blockchain state: `.veth/{chain1,chain2}`

Each state folder contains:

 * `account.txt` - the account id for the miner account
 * `password.txt` - the password for the miner account
 * various state for the geth node

#### list

List the current blockchain folders:

```bash
$ veth list
```

To remove a node's state, delete it's state folder:

```bash
$ rm -f .veth/node2
```

#### start

To start a geth instance that automatically mines:

```bash
$ veth start
```

To attach to the node logs:

```bash
$ veth logs
```

To start a named chain:

```bash
$ veth start chain1
$ veth logs chain1
```

To start a node and have it join an existing node:

```bash
$ veth start <startnode> [runningnode]
```

For example - to start chain1, then start chain2 and join it to chain1:

```bash
$ veth start chain1
$ veth start chain2 chain1
```

#### attach

To attach to the console for a node:

```bash
$ veth attach
$ veth attach chain1
```

#### exec

To run JS commands directly - you **must** name the node:

```bash
$ veth exec node1 'admin.nodeInfo.id'
```

## multi-node run through

To get a 2 node geth cluster running:

```bash
$ veth init node1
$ veth init node2
$ veth start node1
$ veth start node2 node1
$ veth exec node1 'admin.peers'
$ veth attach node1
$ veth logs node1
```

## docs

Useful docs for Solidity:

 * [tips and tricks](https://solidity.readthedocs.io/en/develop/miscellaneous.html#tips-and-tricks)
 * [cheatsheet](https://solidity.readthedocs.io/en/develop/miscellaneous.html#cheatsheet)
 * [command line options](https://github.com/ethereum/go-ethereum/wiki/Command-Line-Options)