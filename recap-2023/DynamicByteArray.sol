// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract DynamicByteArray {
    bytes public b = "abcd";

    function pushElementInByteArray() public {
        b.push("e");
    }

    function updateIndexInArray(uint256 i) public {
        b[i] = "r";
    }

    function getLength() public view returns (uint256) {
        return b.length;
    }
}
