// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Spaceship {
    uint fuelLevel;

    uint course = 0;

    function setCourse(uint newCourse) public{
        course = newCourse;
    }
}