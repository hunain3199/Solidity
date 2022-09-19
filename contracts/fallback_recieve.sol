// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

// contract Payable{
//     address payable owner   = payable(msg.sender);
//     function get_eth() payable public {
//         require(owner == msg.sender,"You can not deposit eth");
//     }
//     function check_bal() public view returns(uint){
//         return address(this).balance;
//     }
// }

// contract fall_bACK_AND_rECIEVE{

//     event log(string _fun,address _sender,uint _val,bytes _data);


//     fallback() external payable{
//         emit log("fallback",msg.sender,msg.value,msg.data);
//     }
//     receive() external payable{
//         emit log("receive",msg.sender,msg.value,"");
//     }
//     function check_bal() public view returns(uint){
//         return address(this).balance;
//     }
// }







