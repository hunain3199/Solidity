// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract main{
    string public name = "Hunain";
    function change_name() public {
        name = "Hamza";
    }
}

interface Main {
    function name() external view returns(string memory);
    function change_name() external ;
}

contract _main{
    Main public _main_interface = Main(0xd9145CCE52D386f254917e481eB44e9943F39138);
    function get_name() public view returns(string memory){
        return _main_interface.name();
    }
}

