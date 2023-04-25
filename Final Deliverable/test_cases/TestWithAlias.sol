
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./Counter.sol" as c;

contract TestImport_Alias {
    c.Counter public cnt;

    constructor() {
        cnt = new c.Counter();
    }

    function TestCaseAlias() public view {
        bool exists = ContractAddress(address(cnt));
        assert(exists);
    }

    function ContractAddress(address ad) private view returns (bool) {
        uint size;
        assembly { size := extcodesize(ad) }
        return size > 0;
    }
}

