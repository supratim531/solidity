// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract ContractBalance {
    uint256 public number;

    function payEther() public payable {
        // code here
    }

    function getThisBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function getThisAddress() public view returns (address) {
        return address(this);
    }
}
