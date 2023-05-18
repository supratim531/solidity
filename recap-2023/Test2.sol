// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Test2 {
    uint256[5] public arr = [12, 32, 45, 67, 78];

    function arrayOperation() public {
        // fetching
        uint256 temp;
        temp = arr[3];

        // update
        arr[2] = 3000;

        // delete
        delete arr[4];
    }

    function localArray() public pure returns (uint256) {
        uint256[] memory _arr = new uint256[](3);
        _arr[2] = 900;
        return _arr[2];
    }
}
