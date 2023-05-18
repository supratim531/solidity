// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract TestArray {
    bytes public b;
    // bytes4 public b;
    uint256[3] public arr = [12, 34, 56];

    // function setBytes4(uint256 index) public {
    //     b[index] = "a";
    // }

    function lengthOfB() public view returns (uint256) {
        return b.length;
    }

    function setB(uint256 index) public {
        b[index] = "a";
    }

    function pushB() public {
        b.push("z");
    }

    function setValueByIndex(uint256 index, uint256 element) public {
        arr[index] = element;
    }
}
