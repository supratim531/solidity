// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Test1 {
    uint256 public a;
    uint256 public constant b = 90;
    string public s1 = "gaurav";

    address public owner = msg.sender; // 2558 gas
    address public constant constOwner =
        0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // 379 gas

    function checkString() public pure {
        string memory s2 = "tiwari";
        s2 = "ads";
    }

    function getString(string memory title)
        public
        pure
        returns (string memory)
    {
        string memory name = "Gaurav";
        name = title;
        return name;
    }
}
