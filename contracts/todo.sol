// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract todo{
  string  [] todo_arr;

    function set_value(string memory _value) public {

     todo_arr.push(_value);

  }

    function show_value()public view returns(string [] memory){
      return todo_arr;
  }

    function delete_arr() public{
        delete todo_arr;

    }
    function delete_index_vise(uint task_number) public {
        delete todo_arr[task_number];

    }





}