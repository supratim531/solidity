// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

struct Donor {
    string name;
    string city;
    uint256 etherAmount;
}

contract DonationProject {
    mapping(address => Donor) public donors;

    function donate(
        string memory name,
        string memory city,
        uint256 amountInEther
    ) public {
        donors[msg.sender] = Donor(
            name,
            city,
            donors[msg.sender].etherAmount + amountInEther
        );
    }

    function unsubscribe() public {
        delete donors[msg.sender];
    }
}
