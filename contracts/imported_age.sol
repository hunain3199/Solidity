// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

import "./import_contract_main.sol";
import "./imported_name.sol";

contract Age{
    function get_AGE() view public returns(uint){
        return age(0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47)._age();
        
    }
    function get_NAME() view public returns(string memory){
        return name(0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99)._name();
    }
}