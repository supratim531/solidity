// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract A {
    uint256 public a;

    constructor() {
        a = 18;
        a = 120;
    }

    function funA() public {
        a = 12;
    }

    function funSame() public pure virtual returns (string memory) {
        return "This function is common between A & B";
    }
}

contract B is A {
    uint256 public b;

    constructor() {
        a = 90;
        b = 240;
    }

    function funB() public {
        b = 24;
    }

    function funSame() public pure virtual override returns (string memory) {
        return "This function is common between A & B";
    }
}

contract D {
    function funD() public pure returns (string memory) {
        return "This function is unique for D";
    }
}

contract C is A, B, D {
    function funSame() public pure override(A, B) returns (string memory) {
        return "This function is unique for C";
    }
}
