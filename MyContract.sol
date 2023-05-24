// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyContract {
    //State Variables
    int public myInt = -1;
    uint public myUint = 1; //Short form
    uint256 public myUint256 = 1; //Same thing
    uint8 public myUint8 = 1;

    string public myString = "Hello, world!";
    bytes32 public myBytes32 = "Hello, world!";

    address public myAddress = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    //Structures
    struct MyStruct {
        uint256 myUInt256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, world!");

    //Local Variables
    function getValue() public pure returns (uint256) {
        uint256 value = 1;
        value++;
        return value;
    }
}
