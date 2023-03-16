pragma solidity ^0.8.19;
// SPDX-License-Identifier: UNLICENSED

import {MyContract as MyAliasedContract} from "./MyContract.sol";

contract TestWorkaround {
MyAliasedContract c;
    constructor() {
        c = new MyAliasedContract();
    }
}