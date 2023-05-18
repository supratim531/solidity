// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

// 0xCf4De7F64cb892E1Bd560f7c053B7ddC4FFd5882
// https://sepolia.etherscan.io/tx/0xf8bd9a43bbf5cbd124fbe350f8afa9295031c3be24178664ddb82d4a88481294
contract NodeJS {
    uint256 number;
    string public name = "supratim";

    function getNumber() public view returns (uint256) {
        return number;
    }

    function setNumber(uint256 _number) public {
        number = _number;
    }

    function sendEtherToContract() public payable {}

    function sendEtherToUser(address user) public payable {
        payable(user).transfer(msg.value);
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function getUserBalance(address user) public view returns (uint256) {
        return user.balance;
    }
}
