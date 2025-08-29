// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function sayHello() public pure returns(string memory) {
        return "Hello Shiva";
    }
    function store(uint256 _newNumber) public override  {
       favoriteNumber = _newNumber + 5;
    }

}
