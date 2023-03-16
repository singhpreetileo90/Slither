pragma solidity ^0.8.13;
// SPDX-License-Identifier: UNLICENSED

contract Counter {
    uint256 private number;

    function setNumber(unit256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
