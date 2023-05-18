// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract HashFunctions {
    function keccak256Demo(uint256 number, string memory name)
        public
        pure
        returns (bytes32 _hashResult)
    {
        _hashResult = keccak256(abi.encode(number, name));
    }

    function sha256Demo(uint256 number, string memory name)
        public
        pure
        returns (bytes32 _hashResult)
    {
        _hashResult = sha256(abi.encode(number, name));
    }

    function ripemd160Demo(uint256 number, string memory name)
        public
        pure
        returns (bytes32 _hashResult)
    {
        _hashResult = ripemd160(abi.encode(number, name));
    }
}
