// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

struct Donor {
    uint256 age;
    string name;
    string phone;
}

contract Donation {
    mapping(address => bool) public wallets;
    mapping(address => Donor) public donors;
    mapping(address => uint256) public donations;
    error donorError(address user, string message);
    error alreadyRegisteredError(address user, string message);
    error amountError(address donor, uint256 amount, string message);

    modifier registered() {
        if (wallets[msg.sender]) {
            revert alreadyRegisteredError(
                msg.sender,
                "You have already registered"
            );
        }
        _;
    }

    modifier checkDonor() {
        if (!wallets[msg.sender]) {
            revert donorError(
                msg.sender,
                "You have to register as a donor first"
            );
        }
        _;
    }

    modifier checkAmount() {
        if (msg.value != 10000000000000000) {
            revert amountError(
                msg.sender,
                msg.value,
                "Donation amount is sharp 0.01 ether"
            );
        }
        _;
    }

    function register(
        uint256 age,
        string calldata name,
        string calldata phone
    ) public payable registered checkAmount {
        wallets[msg.sender] = true;
        donors[msg.sender] = Donor(age, name, phone);
        donations[msg.sender] += msg.value;
    }

    function donate() public payable checkDonor checkAmount {
        donations[msg.sender] += msg.value;
    }
}
