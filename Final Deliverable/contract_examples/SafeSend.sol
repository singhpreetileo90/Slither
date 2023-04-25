//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SafeSend {
  function deliver(address recipient) public payable {
    assembly {
      selfdestruct(recipient)
    }
  }
}
