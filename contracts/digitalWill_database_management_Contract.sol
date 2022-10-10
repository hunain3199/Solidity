// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


  
contract Digital_will_base{
    address owner = msg.sender;
    struct DigitalModel{
    
        string will_Name; //hunain
        uint will_assets_qty; // 5 
        string asset_type; // property

    
    }

    struct MaindigitalModel{
        DigitalModel [] digitalData;
    }

    
    mapping(address => MaindigitalModel) digitalMap;

    function addd_digital_data(string memory _willname,uint _will_assets_qty,string memory _asset_type) public {
        DigitalModel memory digitalModel = DigitalModel(_willname, _will_assets_qty,_asset_type);
        digitalMap[msg.sender].digitalData.push(digitalModel);
    }

    function getdigitalData() public view returns(MaindigitalModel memory){
        require(owner == msg.sender ,"You cannot access digital will data");
        return digitalMap[msg.sender];
    }
    
}