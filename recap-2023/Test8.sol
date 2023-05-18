// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Test8 {
    uint256[3] public arr;
    uint256[] darr = new uint256[](3);

    // function setArr(uint256 value) public {
    //     arr.push(value);
    // }

    function getDarr() public view returns (uint256[] memory _darr) {
        _darr = darr;
    }

    function setDarr(uint256 value) public {
        darr.push(value);
    }

    function resetDarr() public {
        darr = new uint256[](0);
        darr.push(108);
    }
}
