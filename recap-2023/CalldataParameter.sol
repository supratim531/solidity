// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract CalldataParameter {
    string public s;

    function testMemoryParameter(uint256[3] memory arr)
        public
        pure
        returns (uint256[3] memory)
    {
        arr[2] = 23;
        return arr;
    }

    function testCalldataParameter(uint256[3] calldata arr)
        public
        pure
        returns (uint256[3] calldata)
    {
        // arr[2] = 23;
        return arr;
    }

    function test1(string memory str) public pure returns (string memory) {
        string memory _str = string.concat(str, " das");
        return _str;
    }

    function test2(string calldata str) public pure returns (string memory) {
        return test1(str);
    }
}
