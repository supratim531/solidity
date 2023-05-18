// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Test7 {
    event log(
        string message,
        uint256 etherAmount,
        uint256 balance,
        address sender,
        bytes data
    );
    event log(bytes any);
    event log(string message, uint256 amount);

    receive() external payable {
        emit log("Ether received in wei", msg.value);
    }

    fallback() external payable {
        emit log(
            "Transaction completed",
            msg.value,
            address(this).balance,
            msg.sender,
            msg.data
        );
    }

    function bytesTest() public {
        bytes memory b = "abc";
        emit log(b);
        b = "dsa";
        emit log(b);
    }

    function stringTest() public pure returns (string memory) {
        string memory str;
        str = string.concat("Ami", " Bari ", "Jabo");
        return str;
    }
}
