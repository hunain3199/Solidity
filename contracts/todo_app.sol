// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract Todo{

    struct TodoModel{
        uint index;
        string todoName;
        string todoDes;
    }

    struct MainTodoModel{
        TodoModel[] todoData;
    }


    mapping(address => MainTodoModel) todoMap;

    function adddTodos(uint _id, string memory _todoText, string memory _todoDes) public {
        TodoModel memory todoModel = TodoModel(_id, _todoText,_todoDes);
        todoMap[msg.sender].todoData.push(todoModel);
    }

    function getTodosData() public view returns(MainTodoModel memory){
        return todoMap[msg.sender];
    }

}