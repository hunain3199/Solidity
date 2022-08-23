// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract assignment_task_1{
    uint number;

    function set_values(uint _number_x) public{
        number = _number_x;
    }

    function get_values() view public returns(uint){
        return number;
    }

}   

contract assignment_task_2{

    function evaluate(int _a, int _b) pure public returns(int){
        int _add;
        int _sub;
        int _difference;
       _add = _a + _b;
       _sub = _a - _b;
       _difference = _sub - _add;
       return _difference;
    }
}

contract assignment_task_3{
    function find(int a) public pure returns(int){
        require(a > 0);
        return a % 3;
    }
}

contract assignment_task_4{
    function average(int _a, int _b, int _c) public pure returns(int){
        require(_a > 0 && _b > 0 && _c > 0);
        return((_a + _b + _c) / 3);
        
    }
}