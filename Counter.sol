// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Counter {
    uint256 public count = 0;

    // constructor() {
    //     count = 0;
    // }

    // function getCount() public view returns (uint256) {
    //     return count;
    // }

    function incrementCount() public {
        count++;
    }
}
