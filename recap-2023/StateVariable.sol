// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract StateVariable {
    uint256 public number;
    uint256 public age = 21;

    // age = 10; // it'll give an error

    constructor() {
        number = 108;
    }

    function setNumber() public {
        number = 111;
    }
}
