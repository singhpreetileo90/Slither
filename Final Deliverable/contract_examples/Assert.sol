//SPDX-License-Identifier: MIT
// This file taken from here: https://raw.githubusercontent.com/smartcontractproduction/sol-unit/master/contracts/src/Assertions.sol
// It was renamed to Assert.sol by Tim Coulter. Refactored for solidity 0.5.0 by Cruz Molina.

pragma solidity ^0.8.9;

import "./AssertString.sol";
import "./AssertBytes32.sol";
import "./AssertAddress.sol";
import "./AssertBool.sol";
import "./AssertUint.sol";
import "./AssertInt.sol";
import "./AssertUintArray.sol";
import "./AssertIntArray.sol";
import "./AssertAddressArray.sol";

import "./AssertBytes32Array.sol";
import "./AssertBalance.sol";
import "./AssertGeneral.sol";

/*
    File: Assertions.slb

    Author: Andreas Olofsson (androlo1980@gmail.com)

    Library: Assertions

    Assertions for unit testing contracts. Tests are run with the
    <solUnit at https://github.com/smartcontractproduction/sol-unit>
    unit-testing framework.

    (start code)
    contract ModAdder {

        function addMod(uint a, uint b, uint modulus) constant returns (uint sum) {
            if (modulus == 0)
                throw;
            return addmod(a, b, modulus);
        }

    }

    contract SomeTest {
        using Assertions for uint;

        function testAdd() {
            var adder = new ModAdder();
            adder.addMod(50, 66, 30).equal(26, "addition returned the wrong sum");
        }
    }
    (end)

    It is also possible to extend <Test>, to have all bindings (using) properly set up.

    (start code)

    contract SomeTest is Test {

        function testAdd() {
            var adder = new ModAdder();
            adder.addMod(50, 66, 30).equal(26, "addition returned the wrong sum");
        }
    }
    (end)
*/

library Assert {

    // ************************************** general **************************************

    /*
        Function: fail()

        Mark the test as failed.

        Params:
            message (string) - A message associated with the failure.

        Returns:
            result (bool) - false.
    */
    

    // ************************************** strings **************************************

    /*
        Function: equal(string)

        Assert that two strings are equal.

        : _stringsEqual(A, B) == true

        Params:
            A (string) - The first string.
            B (string) - The second string.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: notEqual(string)

        Assert that two strings are not equal.

        : _stringsEqual(A, B) == false

        Params:
            A (string) - The first string.
            B (string) - The second string.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isEmpty(string)

        Assert that a string is empty.

        : _stringsEqual(str, STRING_NULL) == true

        Params:
            str (string) - The string.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isNotEmpty(string)

        Assert that a string is not empty.

        : _stringsEqual(str, STRING_NULL) == false

        Params:
            str (string) - The string.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    // ************************************** bytes32 **************************************

    /*
        Function: equal(bytes32)

        Assert that two 'bytes32' are equal.

        : A == B

        Params:
            A (bytes32) - The first 'bytes32'.
            B (bytes32) - The second 'bytes32'.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: notEqual(bytes32)

        Assert that two 'bytes32' are not equal.

        : A != B

        Params:
            A (bytes32) - The first 'bytes32'.
            B (bytes32) - The second 'bytes32'.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isZero(bytes32)

        Assert that a 'bytes32' is zero.

        : bts == BYTES32_NULL

        Params:
            bts (bytes32) - The 'bytes32'.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isNotZero(bytes32)

        Assert that a 'bytes32' is not zero.

        : bts != BYTES32_NULL

        Params:
            bts (bytes32) - The 'bytes32'.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    // ************************************** address **************************************

    /*
        Function: equal(address)

        Assert that two addresses are equal.

        : A == B

        Params:
            A (address) - The first address.
            B (address) - The second address.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    
    /*
        Function: notEqual(address)

        Assert that two addresses are not equal.

        : A != B

        Params:
            A (address) - The first address.
            B (address) - The second address.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isZero(address)

        Assert that an address is zero.

        : addr == ADDRESS_NULL

        Params:
            addr (address) - The address.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isNotZero(address)

        Assert that an address is not zero.

        : addr != ADDRESS_NULL

        Params:
            addr (address) - The address.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    // ************************************** bool **************************************

    /*
        Function: isTrue

        Assert that a boolean is 'true'.

        : b == true

        Params:
            b (bool) - The boolean.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isFalse

        Assert that a boolean is 'false'.

        : b == false

        Params:
            b (bool) - The boolean.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: equal(bool)

        Assert that two booleans are equal.

        : A == B

        Params:
            A (bool) - The first boolean.
            B (bool) - The second boolean.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: notEqual(bool)

        Assert that two booleans are not equal.

        : A != B

        Params:
            A (bool) - The first boolean.
            B (bool) - The second boolean.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    // ************************************** uint **************************************

    /*
        Function: equal(uint)

        Assert that two (256 bit) unsigned integers are equal.

        : A == B

        Params:
            A (uint) - The first uint.
            B (uint) - The second uint.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    function equal(uint a, uint b, string memory message) internal returns (bool result) {
        return AssertUint.equal(a, b, message);
    }

    /*
        Function: notEqual(uint)

        Assert that two (256 bit) unsigned integers are not equal.

        : A != B

        Params:
            A (uint) - The first uint.
            B (uint) - The second uint.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isAbove(uint)

        Assert that the uint 'A' is greater than the uint 'B'.

        : A > B

        Params:
            A (uint) - The first uint.
            B (uint) - The second uint.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isAtLeast(uint)

        Assert that the uint 'A' is greater than or equal to the uint 'B'.

        : A >= B

        Params:
            A (uint) - The first uint.
            B (uint) - The second uint.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isBelow(uint)

        Assert that the uint 'A' is lesser than the uint 'B'.

        : A < B

        Params:
            A (uint) - The first uint.
            B (uint) - The second uint.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isAtMost(uint)

        Assert that the uint 'A' is lesser than or equal to the uint 'B'.

        : A <= B

        Params:
            A (uint) - The first uint.
            B (uint) - The second uint.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isZero(uint)

        Assert that a (256 bit) unsigned integer is 0.

        : number == 0

        Params:
            number (uint) - The uint.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isNotZero(uint)

        Assert that a (256 bit) unsigned integer is not 0.

        : number != 0

        Params:
            number (uint) - The uint.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    // ************************************** int **************************************

    /*
        Function: equal(int)

        Assert that two (256 bit) signed integers are equal.

        : A == B

        Params:
            A (int) - The first int.
            B (int) - The second int.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: notEqual(int)

        Assert that two (256 bit) signed integers are not equal.

        : A != B

        Params:
            A (int) - The first int.
            B (int) - The second int.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isAbove(int)

        Assert that the int 'A' is greater than the int 'B'.

        : A > B

        Params:
            A (int) - The first int.
            B (int) - The second int.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isAtLeast(int)

        Assert that the int 'A' is greater than or equal to the int 'B'.

        : A >= B

        Params:
            A (int) - The first int.
            B (int) - The second int.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isBelow(int)

        Assert that the int 'A' is lesser than the int 'B'.

        : A < B

        Params:
            A (int) - The first int.
            B (int) - The second int.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isAtMost(int)

        Assert that the int 'A' is lesser than or equal to the int 'B'.

        : A <= B

        Params:
            A (int) - The first int.
            B (int) - The second int.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isZero(int)

        Assert that a (256 bit) signed integer is 0.

        : number == 0

        Params:
            number (int) - The int.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: isNotZero(int)

        Assert that a (256 bit) signed integer is not 0.

        : number != 0

        Params:
            number (int) - The int.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    // ************************************** uint[] **************************************

    /*
        Function: equal(uint[])

        Assert that two 'uint[ ]' are equal.

        : arrA.length == arrB.length

        and, for all valid indices 'i'

        : arrA[i] == arrB[i]

        Params:
            A (uint[]) - The first array.
            B (uint[]) - The second array.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: notEqual(uint[])

        Assert that two 'uint[]' are not equal.

        : arrA.length != arrB.length

        or, for some valid index 'i'

        : arrA[i] != arrB[i]

        Params:
            A (uint[]) - The first string.
            B (uint[]) - The second string.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: lengthEqual(uint[])

        Assert that the length of a 'uint[]' is equal to a given value.

        : arr.length == length

        Params:
            arr (uint[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: lengthNotEqual(uint[])

        Assert that the length of a 'uint[]' is not equal to a given value.

        : arr.length != length

        Params:
            arr (uint[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    // ************************************** int[] **************************************

    /*
        Function: equal(int[])

        Assert that two 'int[]' are equal.

        : arrA.length == arrB.length

        and, for all valid indices 'i'

        : arrA[i] == arrB[i]

        Params:
            A (int[]) - The first array.
            B (int[]) - The second array.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: notEqual(int[])

        Assert that two 'int[]' are not equal.

        : arrA.length != arrB.length

        or, for some valid index 'i'

        : arrA[i] != arrB[i]

        Params:
            A (int[]) - The first string.
            B (int[]) - The second string.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: lengthEqual(int[])

        Assert that the length of an 'int[]' is equal to a given value.

        : arr.length == length

        Params:
            arr (int[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: lengthNotEqual(int[])

        Assert that the length of an 'int[]' is not equal to a given value.

        : arr.length != length

        Params:
            arr (int[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    // ************************************** address[] **************************************

    /*
        Function: equal(address[])

        Assert that two 'address[]' are equal.

        : arrA.length == arrB.length

        and, for all valid indices 'i'

        : arrA[i] == arrB[i]

        Params:
            A (address[]) - The first array.
            B (address[]) - The second array.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    
    /*
        Function: notEqual(address[])

        Assert that two 'address[]' are not equal.

        : arrA.length != arrB.length

        or, for some valid index 'i'

        : arrA[i] != arrB[i]

        Params:
            A (address[]) - The first string.
            B (address[]) - The second string.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: lengthEqual(address[])

        Assert that the length of an 'address[]' is equal to a given value.

        : arr.length == length

        Params:
            arr (address[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: lengthNotEqual(address[])

        Assert that the length of an 'address[]' is not equal to a given value.

        : arr.length != length

        Params:
            arr (address[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    
    // ************************************** address payable[] **************************************

    /*
        Function: equal(address payable[])

        Assert that two 'address payable[]' are equal.

        : arrA.length == arrB.length

        and, for all valid indices 'i'

        : arrA[i] == arrB[i]

        Params:
            A (address payable[]) - The first array.
            B (address payable[]) - The second array.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
//    function equal(address payable[] memory arrA, address payable[] memory arrB, string memory message) internal returns (bool result) {
//        return AssertAddressPayableArray.equal(arrA, arrB, message);
//    }

    /*
        Function: notEqual(address payable[])

        Assert that two 'address payable[]' are not equal.

        : arrA.length != arrB.length

        or, for some valid index 'i'

        : arrA[i] != arrB[i]

        Params:
            A (address payable[]) - The first string.
            B (address payable[]) - The second string.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
//    function notEqual(address payable[] memory arrA, address payable[] memory arrB, string memory message) internal returns (bool result) {
//        return AssertAddressPayableArray.notEqual(arrA, arrB, message);
//    }

    /*
        Function: lengthEqual(address payable[])

        Assert that the length of an 'address payable[]' is equal to a given value.

        : arr.length == length

        Params:
            arr (address payable[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
//    function lengthEqual(address payable[] memory arr, uint length, string memory message) internal returns (bool result) {
//        return AssertAddressPayableArray.lengthEqual(arr, length, message);
//    }

    /*
        Function: lengthNotEqual(address payable[])

        Assert that the length of an 'address payable[]' is not equal to a given value.

        : arr.length != length

        Params:
            arr (address payable[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
//    function lengthNotEqual(address payable[] memory arr, uint length, string memory message) internal returns (bool result) {
//        return AssertAddressPayableArray.lengthNotEqual(arr, length, message);
//    }

    // ************************************** bytes32[] **************************************

    /*
        Function: equal(bytes32[])

        Assert that two 'bytes32[]' are equal.

        : arrA.length == arrB.length

        and, for all valid indices 'i'

        : arrA[i] == arrB[i]

        Params:
            A (bytes32[]) - The first array.
            B (bytes32[]) - The second array.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: notEqual(bytes32[])

        Assert that two 'bytes32[]' are not equal.

        : arrA.length != arrB.length

        or, for some valid index 'i'

        : arrA[i] != arrB[i]

        Params:
            A (bytes32[]) - The first string.
            B (bytes32[]) - The second string.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: lengthEqual(bytes32[])

        Assert that the length of an 'bytes32[]' is equal to a given value.

        : arr.length == length

        Params:
            arr (bytes32[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: lengthNotEqual(bytes32[])

        Assert that the length of an 'bytes32[]' is not equal to a given value.

        : arr.length != length

        Params:
            arr (bytes32[]) - The array.
            length (uint) - The length.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    // ************************************** balances **************************************

    /*
        Function: balanceEqual

        Assert that the balance of an account 'A' is equal to a given number 'b'.

        : A.balance = b

        Params:
            A (address) - The first address.
            b (uint) - The balance.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: balanceNotEqual

        Assert that the balance of an account 'A' is not equal to a given number 'b'.

        : A.balance != b

        Params:
            A (address) - The first address.
            b (uint) - The balance.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: balanceIsZero

        Assert that the balance of an account 'A' is zero.

        : A.balance == 0

        Params:
            A (address) - The first address.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    

    /*
        Function: balanceIsNotZero

        Assert that the balance of an account 'A' is not zero.

        : A.balance != 0

        Params:
            A (address) - The first address.
            message (string) - A message that is sent if the assertion fails.

        Returns:
            result (bool) - The result.
    */
    
}
