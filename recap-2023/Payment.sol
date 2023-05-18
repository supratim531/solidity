// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Payment {
    address payable public pUser;
    address user = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    function payEtherToContract() public payable {}

    function getUserAddress() public view returns (address) {
        return user;
    }

    function getLocalUserAddress() public pure returns (address) {
        address user2 = 0x0A098Eda01Ce92ff4A4CCb7A4fFFb5A43EBC70DC;
        return user2;
    }

    function payEtherToUser(address _pUser) public {
        pUser = payable(_pUser);
        pUser.transfer(1 ether);
    }
}
