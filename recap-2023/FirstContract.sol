// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract FirstContract {
    uint256 age;
    string name;

    constructor() {
        age = 21;
        name = "Sayan";
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setAge() public {
        age = age + 1;
    }
}
