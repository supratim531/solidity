// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract A {
    function f1() private pure returns (uint256) {
        return 1;
    }

    function f2() internal pure returns (uint256) {
        return 2;
    }

    function f3() external pure returns (uint256) {
        return 3;
    }

    function f4() public pure returns (uint256) {
        return 4;
    }
}

contract B is A {
    uint256 public bx = f2();
}

contract C {
    A public a = new A();
    uint256 public cx = a.f3();
}
