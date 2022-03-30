// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
contract Spaceship {
    bytes32 name;

    uint public fuelLevel;
    uint constant maxFuelLevel = 100;    
    uint constant deltaVPerSecond = 200;

    Velocity velocity;

    uint orientation = 0;

    struct Velocity{
        uint course;
        uint magnitude;
    }

    constructor (bytes32 _name){
        name = _name;
    }

    function getName() public view returns (bytes32 _name){
        _name = name;
    }

    function setCourse(uint newCourse) public{
        course = newCourse;
    }

    function getCourse() public view returns (uint _course)
    {
        _course = course;
    }

    function burn(uint duration) public{
        // use trig to construct a new vector the represents velocity
        // engines are not yet installed
    }

    function getVelocity() public view returns (uint _course, uint _magnitude)
    {
        _course = velocity.course;
        _magnitude = velocity.magnitude;
    }

    function refuel(uint fuel) public {
        if (fuelLevel + fuel > maxFuelLevel){
            fuelLevel = maxFuelLevel;

            return;
        }

        fuelLevel += fuel;
    }
}