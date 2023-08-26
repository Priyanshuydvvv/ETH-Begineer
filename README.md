# ERC-20 Token Contract - Tether (USDT)

A basic Ethereum smart contract that implements an ERC-20 token called Tether (USDT) with minting and burning capabilities.

## Description

The Tether (USDT) contract is a simple implementation of an ERC-20 token on the Ethereum blockchain. It allows for the creation (minting) and destruction (burning) of tokens. The contract maintains information about the token's name, symbol, and total supply. It also tracks the balances of token holders.

## Functions

### `mintCoins(address _receiver, uint _amount)`

This function is used to mint new Tethers and assign them to a specific address. It takes two parameters: `_receiver`, which is the address that will receive the minted coins, and `_amount`, which specifies the number of coins to mint. The function increases the total coin supply and updates the balance of the `_receiver`.

### `burnCoins(address _holder, uint _amount)`

This function is used to burn (destroy) existing Tethers held by a specific address. It takes two parameters: `_holder`, which is the address that holds the coins to be burned, and `_amount`, which specifies the number of coins to burn. The function checks if the `_holder` has sufficient balance to burn, and if so, it decreases the total coin supply and updates the balance of the `_holder`.

## Getting Started

### Installing

To use the Tether contract, you need an Ethereum development environment set up (e.g., Remix, Truffle, etc.).

1. Download or copy the `MyToken.sol` file.

### Executing Program

1. Open your Ethereum development environment.
2. Create a new Solidity file (e.g., `TetherContract.sol`).
3. Paste the contents of `MyToken.sol` into the new Solidity file.
4. Compile and deploy the contract to a local or testnet Ethereum network.

## Help

If you encounter any issues or have questions, consider the following contacting me , the contact info is given below.

## Authors

- Priyanshu Yadav
- 22BCT10057@cuchd.in

## License

This project is licensed under the [MIT License](LICENSE.md).
