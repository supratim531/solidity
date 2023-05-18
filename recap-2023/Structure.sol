// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0 <0.9.0;

struct Student {
    uint256 roll;
    string name;
}

contract Structure {
    // struct Student {
    //     uint256 roll;
    //     uint256 marks;
    //     string name;
    // } // takes high priority

    Student public s1;
    Student public s2;

    constructor(uint256 roll, string memory name) {
        s1.roll = roll;
        s1.name = name;
    }

    // function setS2(Student memory _s2) public {
    //     s2 = _s2;
    // }

    function setS2(uint256 roll, string memory name) public {
        Student memory _s2 = Student({roll: roll, name: name});
        s2 = _s2;
    }
}
