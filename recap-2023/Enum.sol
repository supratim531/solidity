// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract Enum {
    enum User {
        ALLOWED,
        NOT_ALLOWED,
        WAIT
    }

    User public user1 = User.WAIT;

    function getUser1() public view returns (string memory) {
        if (user1 == User.WAIT) {
            return "User1 is in waiting stage";
        }

        return "User1 is in different stage";
    }
}
