// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract send_transfer_call{
    address payable  getEth;
    function userInput(address _address) public returns(address){
        getEth = payable(_address);
        return getEth;
    }
    receive() external payable{

    }
    function check_bal () public view returns(uint){
        return address(this).balance;
    }
    event log(uint value);
    function contract_To_otherAddress() public payable{
        emit log(msg.value);
        bool sent = getEth.send(msg.value);
        require(sent,"You transaction is failed");
    }
    function other_account_balance() public view returns(uint){
        return address(getEth).balance;
    }
    function CAll() public payable{
        emit log(msg.value);
        (bool sent,) = getEth.call{value:msg.value}("");
        require(sent,"You transaction has failed");

    }

   
}

contract getEthToContractAddress{
    receive() external payable{}
    function check_bal () public view returns(uint){
        return address(this).balance;
        }

}