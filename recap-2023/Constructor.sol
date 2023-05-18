// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract Constructor {
    uint16 test = 9;
    uint256 public age;

    constructor(uint256 _age) {
        age = _age;
    }

    function getTest() public view returns (uint16) {
        return test;
    }
}
