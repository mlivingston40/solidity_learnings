pragma solidity ^0.4.0;


library Strings {

    function concat(string _base, string _value) internal returns (string) {

        bytes memory _basebytes = bytes(_base);

        //storage is used for passing value which you don't want to be cloned -- doesnt change original value

        bytes memory _valuebytes = bytes(_value);

        string memory _tmpValue = new string (_basebytes.length + _valuebytes.length);

        bytes memory _newValue = bytes(_tmpValue);

        uint i;
        uint j;

        for (i=0; i<_basebytes.length;i++) {

            _newValue[j++] = _basebytes[i];
        }

        for (i=0; i<_valuebytes.length;i++) {
            _newValue[j++] = _valuebytes[i];
        }


        return string (_newValue);
    }


    // what im trying to do is to iterate through and create a function that can find the position of a character in a string
    function strpos(string _base, string _value) internal returns (int) {

        bytes memory _basebytes = bytes(_base);

        //storage is used for passing value which you don't want to be cloned -- doesnt change original value

        bytes memory _valuebytes = bytes(_value);

        assert(_valuebytes.length == 1);

        for(uint i=0; i<_basebytes.length; i++) {

            if (_basebytes[i] == _valuebytes[0]) {

                return int(i);
            }

        }

        return -1;

    }
}

contract TestStrings {

    using Strings for string;

    function testconcat(string _base) returns (string) {

        return _base.concat("test");

    }

    function teststrpos(string _base) returns (int) {

        return _base.strpos("t");
    }

}



