// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract LocalVariable {
    uint256 public age;
    string name = "jadeja";

    function getLocalNumber() public pure returns (uint256) {
        uint256 number;
        // uint256 number = 102;
        number += 8;
        return number;
    }

    function getLocalName() public pure returns (string memory) {
        string memory names;
        names = "dasddasfdas";
        return names;
    }

    function getNameByLocal() public view returns (string memory) {
        return name;
    }

    // function changeAgeByLocal() public returns (uint256) {
    //     age += 10;
    //     return age;
    // }

    function changeAgeByLocal() public {
        age += 10;
    }

    function updateAgeByLocal(uint256 _age) public {
        age += _age;
    }
}
