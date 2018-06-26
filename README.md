# Testing Passing Time in Soldity

## Run

```
git clone git@github.com:cmditch/solidity-time-testing.git
cd solidity-time-testing
dapp test
```

## Requirements
[Dapp.tools](https://dapp.tools/) required.

```
curl https://nixos.org/nix/install | sh
nix-channel --add https://nix.dapphub.com/pkgs/dapphub
nix-channel --update
nix-env -iA dapphub.{dapp,seth,hevm,evmdis}
```

## Info
In order to play nice with DSWarp, your contracts must implement a wrapper around `now`/`block.timestamp` called era().

In testing, you then create a "testable" version of the contract which mixes in DSWarp, allowing you to use `myTestContract.warp(2 days)`.
