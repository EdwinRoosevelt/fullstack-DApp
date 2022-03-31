//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Student {
    string private name;
    string private class;
    uint8 private age;

    constructor(string memory _name, string memory _class, uint8 _age) {
        name = _name;
        class = _class;
        age = _age;
    }

    function increaseAge (uint8 _age) public returns(uint) {
        age = age + _age;
        return age;        
    }

    function decreaseAge (uint8 _age) public returns(uint) {
        age = age - _age;
        return age;        
    }

    function showStudent () public view returns(string memory, string memory, uint8) {
        return (name, class, age);
    }
}