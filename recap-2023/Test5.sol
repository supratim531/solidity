// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Test5 {
    struct Employee {
        uint256 id;
        string name;
        uint256 salary;
    }

    Employee[] emps;
    Employee public emp = Employee(1211, "Raja", 42000);

    function resetEmps() public {
        delete emps;
    }

    function setEmps() public {
        emps.push(Employee(1, "Sayan", 32000));
        emps.push(Employee(2, "Rohit", 32000));
        emps.push(Employee(3, "Sankha", 32000));
    }

    function setEmp(Employee memory _emp) public {
        emp = _emp;
    }

    function getEmp() public view returns (Employee memory) {
        return emp;
    }

    function getEmps() public view returns (Employee[] memory) {
        return emps;
    }
}
