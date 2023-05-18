// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract StorageVsMemory {
    string public name = "Akshat";
    string[] public names = ["Akshat", "Jain"];
    mapping(uint256 => string) public map;

    function mem() public view {
        string[] memory _names = names;
        _names[0] = "Sanjay";
    }

    function store() public {
        string[] storage _names = names;
        _names[0] = "Sanjay";
    }
}
