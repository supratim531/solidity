// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Events {
    event test(address account, string message, uint256 value);

    function testEvent(uint256 value) public {
        emit test(msg.sender, "has provided", value);
    }
}

contract ChatAppEvent {
    event chat(address indexed from, address to, string message);

    function chatFunction(address to, string memory message) public {
        emit chat(msg.sender, to, message);
    }
}
