//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./Student.sol";

contract StudentMonitor {

    mapping(uint => Student) private studentList;
    
    event Log(string message);

    constructor() {
        emit Log("Deployment complete!");
    }

    function addStudent(uint _id, string memory _name, string memory _class, uint8 _age) public {
        studentList[_id] = new Student(_name, _class, _age);
        emit Log(("Student added."));
    }
    
    function showStudent(uint _id) public view returns(Student) {
            return studentList[_id];
    }

    function deleteStudent(uint _id) public {
            delete studentList[_id];
    }

}