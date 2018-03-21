pragma solidity ^0.4.0;

contract DataTypes {

    bool myBool = false;

    // has to be divisible by 8
    int8 myInt = -128 ;

    uint8 myUint = 255;

    string myString;
    uint8[] myStringArr;

    byte myValue; //alias to bytes1
    bytes32 byyes32;

//    fixed256x8 myFixed = 1;


    enum Action  {ADD, REMOVE, UPDATE}

    Action myAction = Action.ADD;


    address myAddress;

    function assignAddress(){

        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);


    }

    uint[] myIntArr = [1,2,3];

    function arrFunction() {

        myIntArr.push(1);
        myIntArr.length;
        myIntArr[0];

    }

    uint [10] myFixedArr;


    // object w/ no functionality

    struct Account {
        uint balance;
        uint dailyLimit;
    }

    Account myAccount;

    function structFunc () {
        myAccount.balance = 100;
    }

    mapping(address => Account) _accounts;

    function () payable {

        _accounts[msg.sender].balance += msg.value;

    }

    function getbalance() returns (uint) {

        return _accounts[msg.sender].balance;

    }



}



