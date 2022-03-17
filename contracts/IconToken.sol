//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract IconToken is ERC20 {
    constructor() ERC20("IconToken","ICON"){
        _mint(msg.sender, 10 ** 6 * (10 ** decimals()));
    }

    function buyToken(address reciever) public payable {
        uint256 amount = 1000 * msg.value;
        transfer(reciever, amount);
    }
}
