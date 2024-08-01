// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract fixed_array{
    uint[4] public arr = [10,20,30,40];

    function setter(uint index , uint value) public {
        arr[index] = value;
    }

    function length() view public returns(uint) {
        return arr.length;
    }
}