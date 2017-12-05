# veth

veth is a bash script that uses Docker to run multile instances of [geth](https://github.com/ethereum/go-ethereum) locally.

## install

First - [install docker](https://docs.docker.com/engine/installation/), then download and install the script:

```bash
$ cd ~
$ docker run --rm binocarlos/veth > veth
$ sudo mv veth /usr/local/bin/veth
$ sudo chmod a+x /usr/local/bin/veth
```

Run all commands from the root of your project - veth keeps state in the `.veth` folder which should be `.gitignored`

#### initialize

Each node has a name that you pass to each of the commands to dictate which node to operate on.  If you are working with a single node you can omit the name and it will default to `node1`.

Initialize your nodes:

```bash
$ veth init chain1
$ veth init chain2
```

This will create folders to hold blockchain state: `.veth/{chain1,chain2}`

Each state folder contains:

 * `account.txt` - the account id for the miner account
 * `password.txt` - the password for the miner account
 * state for the geth node

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

Start chain1, then start chain2 pointing to chain1:

```bash
$ veth start chain1
$ veth start chain2 chain1
```

If you had a third node - you could point it to either chain1 or chain2:

```bash
$ veth start chain3 chain2
```

#### logs

To follows logs for a node:

```bash
$ veth logs chain1
```

#### attach

To attach to the console for a node:

```bash
$ veth attach chain1
```

#### exec

To run JS commands directly:

```bash
$ veth exec chain1 'admin.nodeInfo.id'
```

#### stop

To stop a node:

```bash
$ veth stop chain1
```

## multi-node run through

To get a 2 node geth cluster running:

```bash
$ veth init chain1
$ veth init chain2
$ veth start chain1
$ veth start chain2 chain1
$ veth exec chain1 'admin.peers'
$ veth attach chain1
$ veth logs chain1
```
