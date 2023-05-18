// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Test6 {
    uint256[3] public a = [1, 2, 3];
    mapping(uint256 => string) public m1;
    mapping(address => string) public m2;
}

contract A {
    uint256 public number;

    function f1() public pure returns (string memory) {
        return "A: f1() is a public function";
    }

    function f2() public pure virtual returns (string memory) {
        return "A: f2() is a public function";
    }

    function f3() public pure virtual returns (string memory) {
        return "A: f3() is a public function";
    }
}

contract B is A {
    function f2() public pure override returns (string memory) {
        return "B: f2() is a public function";
    }

    function f3() public pure virtual override returns (string memory) {
        return "B: f3() is a public function";
    }
}

contract C is B {
    function f3() public pure override returns (string memory) {
        return "C: f3() is a public function";
    }
}
