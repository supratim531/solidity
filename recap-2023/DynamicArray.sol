// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract DynamicArray {
    int256[] public myArray = [-32, -54];

    function setElement(int256 element) public {
        myArray.push(element);
    }

    function getLengthOfMyArray() public view returns (uint256) {
        return myArray.length;
    }

    function removeElement() public {
        myArray.pop();
    }
}
