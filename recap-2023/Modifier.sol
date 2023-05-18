// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Modifier {
    int256 a = 1080;
    error constructError(string message);
    error throwError(address user, string message, int256 value);

    constructor() payable {
        if (a == 108) {
            revert constructError(
                "Initial balance of the contract is too small"
            );
        }
    }

    modifier sameCode(int256 value) {
        if (value <= 10) {
            revert throwError(
                msg.sender,
                "Value is less than or equals to 10",
                value
            );
        }
        _;
    }

    function f1(int256 value)
        public
        view
        sameCode(value)
        returns (string memory)
    {
        return "This is f1()";
    }

    function f2(int256 value)
        public
        view
        sameCode(value)
        returns (string memory)
    {
        return "This is f2()";
    }

    function showBalanceOf(address userAddress) public view returns (uint256) {
        return userAddress.balance;
    }
}
