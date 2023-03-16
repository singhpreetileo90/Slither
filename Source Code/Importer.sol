pragma solidity ^0.8.19;
// SPDX-License-Identifier: UNLICENSED

import "Counter.sol" as c;
 
 contract Importer {
     constructor() {
	 new c.Counter();

     }
 }