// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MappingContract {
    //Mapping
    mapping(uint => string) public names;
    mapping(uint256 => Book) public books;
    mapping(address => mapping(uint256 => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public 
    {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public 
    {
        myBooks[msg.sender][_id] = Book(_title, _author);
    } 
}