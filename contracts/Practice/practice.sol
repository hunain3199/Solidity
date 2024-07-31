// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract  practice{
        uint  public num;
        string  name;
        constructor(){
            num  = 10;
        }
        function  setter() public {
            name = "Hunain";
        }
        function getter() view public returns(string memory){
            return name;
        }
        function purer() pure public returns(string memory){
            string memory namee = "Hunain Pasha";
            return namee;
        }
        }