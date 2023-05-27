// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Ownable {
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner,"Must be owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }
}

contract SecretVault {
    string secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function getSecret() public view returns(string memory) {
        return secret;
    }
}

// Inheritance
// Factories
// Interaction
contract InheritaceContract is Ownable {
    string secret;
    address secretVaultAddress;


    constructor(string memory _secret) {
        SecretVault _secretVault = new SecretVault(_secret);
        secretVaultAddress = address(_secretVault);
        super;
    }

    function getSecret() public view onlyOwner returns(string memory) {
        return SecretVault(secretVaultAddress).getSecret();
    }
}

