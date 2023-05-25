// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Ether payments
// Modifiers
// Visilibity
// Events
// Enums

contract HotelRoom {
    enum Status {
        Vacant,
        Occupied
    }

    Status public currentStatus;
    event Occupy(address _occupant, uint _value);
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Status.Vacant;
    }

    modifier onlyWhileVacant { //To make code cleaner
        require(currentStatus == Status.Vacant, "Currently occupied");
        _;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether) {
        currentStatus = Status.Occupied;  
        
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);
        
        emit Occupy(msg.sender, msg.value);
   }
}