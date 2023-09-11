//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Good {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // can be hacked:
    // function setOwner(address newOwner) public {
    //     require(tx.origin == owner, "Not owner");
    //     owner = newOwner;
    // }

    // solution:
    function setOwner(address newOwner) public {
        require(msg.sender == owner, "Not owner");
        owner = newOwner;
    }
}
