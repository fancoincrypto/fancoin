// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FanCoin is ERC20 {
    constructor() ERC20("FanCoin", "FAN") {
        uint256 initialSupply = 100_000_000 * 10 ** decimals(); // 100 million tokens with 18 decimals
        _mint(msg.sender, initialSupply);
    }
}
