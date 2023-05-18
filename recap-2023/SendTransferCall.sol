// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract SendTransferCall {
    event log(bytes data);
    event checkThisBalance(string message, uint256 thisBalance);
    address payable public payableUser;

    receive() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function sendFunction(address payable user) public {
        payableUser = user;
        bool isSent = payableUser.send(1 ether);
        require(isSent, "Transaction failed");
    }

    function transferFunction(address payable user) public {
        payableUser = user;
        payableUser.transfer(1 ether);
    }

    function callFunction(address payable user) public {
        payableUser = user;
        (bool isSent, bytes memory data) = payableUser.call{
            value: 1000000000000000000
        }("sayan");
        require(isSent, "Transaction failed");
        emit log(data);
    }

    function CALL(address payable user) public payable {
        emit checkThisBalance(
            "Now the contract balance is",
            address(this).balance
        );
        (bool isSent, ) = user.call{value: msg.value}("");
        require(isSent, "Transaction failed from CALL");
    }
}

contract Other {
    fallback() external payable {}
}
