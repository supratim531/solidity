// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Test3 {
    uint256[6] arr;
    uint256[] dArr;

    constructor() {
        arr = [12, 44, 55, 67, 89, 11];
    }

    function getDArr() public view returns (uint256[] memory) {
        return dArr;
    }

    function getArr() public view returns (uint256[6] memory) {
        return arr;
    }

    function setDArr(uint256 element) public {
        dArr.push(element);
    }
}
