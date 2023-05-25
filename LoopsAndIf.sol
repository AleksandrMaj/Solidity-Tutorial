// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

//Conditionals & Loops
contract LoopsAndIf {
    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
    address public owner;

    constructor() {
        owner = msg.sender; //The person that deployt this contract
    }

    function countEvenNumbers() public view returns(uint) {
        uint count = 0;

        for(uint i=0; i < numbers.length; i++) {
            if(isEvenNumber(numbers[i]))
                count++;
        }
        return count;
    }

    function isEvenNumber(uint _number) public pure returns(bool) {
        return (_number % 2 == 0);
    }

    function isOwner() public view returns(bool) {
        return (msg.sender == owner);
    }
}