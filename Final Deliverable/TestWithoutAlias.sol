
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./Assert.sol";
import "./Counter.sol";

contract TestCaseCounter {
  Counter counter;

  function before() public {
    counter = new Counter();
  }

  function test_for_SetNumber() public {
    counter.setNumber(20);
    bool eql = Assert.equal(counter.number(), 20, "Number must be set to 20");
    assert(eql);
  }

  function test_for_Increment() public {
    counter.setNumber(0);
    counter.increment();
    bool inc = Assert.equal(counter.number(), 5, "Number must be incremented by 5 points");
    require(inc, "Number must be incremented by 5 points");
  }
}