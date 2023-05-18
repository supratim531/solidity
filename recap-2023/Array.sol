// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract Array {
    uint256[4] public arr = [12, 32, 546, 8];
    int256[4] public myArray = [-112, -32, -546, 8];

    function name(int256 _test) public pure returns (int256) {
        int256 test = _test * 2;
        return test;
    }

    function setMyArray(uint256 index, int256 element) public {
        myArray[index] = element;
    }

    function getSizeOfMyArray() public view returns (uint256) {
        return myArray.length;
    }
}
