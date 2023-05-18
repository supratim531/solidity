// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Require {
    address public owner = msg.sender;
    uint256 public age = 21;

    function testRequire(uint256 inc) public {
        age += inc;
        require(inc <= 2, "Incremental must be less than or equals with 2");
    }

    function resetAge() public {
        require(msg.sender == owner, "You are not the owner");
        delete age;
    }
}
