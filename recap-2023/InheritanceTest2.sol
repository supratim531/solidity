// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract A {
    uint256 public age;
    string public name;

    constructor(uint256 _age, string memory _name) {
        age = _age;
        name = _name;
    }
}

contract B {
    uint256 public salary;
    string public addressLine;

    constructor(uint256 _salary, string memory _addressLine) {
        salary = _salary;
        addressLine = _addressLine;
    }
}

contract C is
    A(21, "Sayan"),
    B(200000, "14, Subhash Pally, Kolkata - 700108")
{}

contract D is A, B {
    constructor()
        A(21, "Sayan")
        B(200000, "14, Subhash Pally, Kolkata - 700108")
    {}
}

contract E is A, B {
    uint256 public e;

    constructor(
        uint256 _e,
        uint256 age,
        uint256 salary,
        string memory name,
        string memory addressLine
    ) B(salary, addressLine) A(age, name) {
        e = _e;
    }
}
