// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Revert {
    address public owner = msg.sender;
    uint256 public age = 21;
    error incError(address user, string message, uint256 inc);

    function testRequire(uint256 inc) public {
        age += inc;
        if (inc > 2) {
            revert incError(msg.sender, "has supplied", inc);
        }
    }

    function resetAge() public {
        require(msg.sender == owner, "You are not the owner");
        delete age;
    }

    // Assert demo in bonus

    function checkOwnership() public {
        assert(msg.sender == owner);
        age += 21;
    }
}
