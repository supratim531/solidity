// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract FallbackReceive {
    event log(string functionName, address sender, uint256 value, bytes data);

    fallback() external payable {
        emit log("fallback()", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit log("receive()", msg.sender, msg.value, "");
    }
}
