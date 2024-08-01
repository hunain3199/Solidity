// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract dynamic_array{
    uint[] public arr ;

    function push(uint item) public{
        arr.push(item);
    }
    function length() view public returns(uint){
        return arr.length;
    }
    function pop() public{
        arr.pop();
    }
}