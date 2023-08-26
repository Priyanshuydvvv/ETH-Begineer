// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    string public coinName = "Tether";
    string public coinSymbol = "USDT";
    uint public totalCoinSupply = 0;

    // Mapping to track balances of addresses
    mapping(address => uint) public coinBalances;

    // Mint function 
    function mintCoins(address _receiver, uint _amount) public {
        totalCoinSupply += _amount;
        coinBalances[_receiver] += _amount;
    }

    // Burn function 
    function burnCoins(address _holder, uint _amount) public {
        // Check if the sender has enough balance to burn
        require(coinBalances[_holder] >= _amount, "Insufficient balance");

        totalCoinSupply -= _amount;
        coinBalances[_holder] -= _amount;
    }
}
