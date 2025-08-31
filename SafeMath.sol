// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SafeMath {
    uint8 public num = 254;
    function add() public {
        unchecked{num += 1;}
    }
}
