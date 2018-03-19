pragma solidity ^0.4.0;

import "browser/library.sol";
// import "github.com/willitscale/solidity/library.sol"


/* Way to use the extension feature of libraries
Extension of pre-existing object */

contract TestLibrary {

    using IntExtended for uint;

    function testIncrement(uint _base) returns (uint) {
        return _base.increment();
    }

    function testDecrement(uint _base) returns (uint) {
        return _base.decrement();
    }

    function testIncrementByValue(uint _base, uint _value) returns (uint) {
        return _base.incrementByValue(_value);
    }

    function testDecrementByValue(uint _base, uint _value) returns (uint) {
        return _base.decrementByValue(_value);
    }

}


// Anoter way to do this

contract TestLibrary2 {

    using IntExtended for uint;

    function testIncrement(uint _base) returns (uint) {
        return IntExtended.increment(_base);
    }

    function testDecrement(uint _base) returns (uint) {
        return IntExtended.decrement(_base);
    }

    function testIncrementByValue(uint _base, uint _value) returns (uint) {
        return IntExtended.incrementByValue(_base, _value);
    }

    function testDecrementByValue(uint _base, uint _value) returns (uint) {
        return IntExtended.decrementByValue(_base, _value);
    }

}