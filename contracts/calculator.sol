// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;


contract calculator{
    function add(uint _firstnum, uint _secondnum) public pure returns(uint){
        return _firstnum + _secondnum;
    }

    function sub(uint _firstnum, uint _secondnum) public pure returns(uint) {
        return _firstnum - _secondnum;
    }

    function mul(uint _firstnum, uint _secondnum) public pure returns(uint) {
        return _firstnum * _secondnum;
    }

    function div(uint _firstnum, uint _secondnum) public pure returns(uint) {
        return _firstnum / _secondnum;
    }

    function mod(uint _firstnum, uint _secondnum) public pure returns(uint) {
        return _firstnum % _secondnum;
    }
}