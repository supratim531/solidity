// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract Mapping {
    uint256[5] public arr;
    mapping(uint256 => string) public map1;
    mapping(uint256 => uint256) public map2;

    constructor() {
        arr[2] = 1080;
        map1[5] = "Reena";
        map2[15] = 334;
    }
}
