// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Todo {

    struct TodoObject {
        uint id;
        string todoName;
        string todoDes;
    }

    event TaskCreate(uint, string);

    TodoObject[] public todos;

    mapping(address => TodoObject[]) todoMap;

    function addTodo(uint _id, string memory _todoName, string memory _todoDes) public {
        todos.push(TodoObject(_id, _todoName, _todoDes));
        todoMap[msg.sender] = todos;
        emit TaskCreate(_id, _todoName);
    }
  
    function getTodo(address _address) public view returns(TodoObject[] memory){
     return todoMap[_address];    
     }

    
}