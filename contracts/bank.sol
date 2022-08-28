// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract bank {
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    mapping (address => uint256) _balances;
    

    function fund() public payable{
        _balances[msg.sender] = msg.value;


    }

    function get_balance() public view returns(uint256){
        return _balances[msg.sender];
        

    }

    function withdraw(address payable _payee) public {
        require(msg.sender == owner,"Not Allowed");
        require(_balances[_payee] > 0,"Zero balance");
        uint256 amount = _balances[_payee];
        _payee.transfer(amount);
    }
    
}
    