
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./Counter.sol" as c;

 
contract Importer {
    constructor() {
        new c.Counter();

    }
}
