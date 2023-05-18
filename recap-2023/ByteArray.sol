// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract ByteArray {
    bytes2 public b2;
    bytes3 public b3;

    function setBytes() public {
        b2 = "ab";
        b3 = "01";
    }
}
