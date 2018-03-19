pragma solidity ^0.4.0;

interface Regulator {

    function checkValue (uint amount) returns (bool);
    function loan() returns (bool);
}



contract Bank is Regulator {
    /*  Cant access aanywhere else */
    uint private value;
    address private owner;

     /* owner based functionality */
    modifier ownerfunc {

        require(owner == msg.sender);

         /* needed function that is being executed */
        _;
    }




    /* contstrucutor */
    function Bank(uint amount) {

        value = amount;
        owner = msg.sender;
    }

     /* no one but the owner of the the original contract can modify these w/ 'ownerfucnt' on them */
    function deposit (uint amount) ownerfunc {

        value += amount;
    }

    function withdraw (uint amount) ownerfunc {

        if (checkValue(amount)) {

            value -= amount;

        }


    }

    function balance () returns (uint) {

        return value;
    }

    function checkValue (uint amount) returns (bool) {

        return value >= amount;
    }

    function loan () returns (bool){

        return value >0;
    }

}

contract MyFirstContract is Bank(10) {

    string private name;

    uint private age;

    function setName (string newName) {

        name = newName;
    }

    function getName() returns (string) {

        return name;
    }

    function setAge (uint newAge) {

        age = newAge;
    }

    function getAge() returns (uint) {

        return age;
    }


}

/* ways to throw errors */

contract TestThrows {

    function testAssert() {

        /* validating inputs at runtime */
        /* gas consumed on messages sent */
        assert(1==2);

    }

    function testRequire(){

        /* gas consumed in message ..maybe not for metropolis */
        require(2==1);

    }

    function testRevert(){
        /* reverts gas cost of message sent */
        revert();

    }

    function testThrow(){

         /* gas is completely consumed */
        throw;


    }

}
