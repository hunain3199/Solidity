// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


  
contract Shipment_data_base{
   
    address owner = msg.sender;
    
    struct ShipmentModel{
    
        string shipment_product_name; //LAPTOP 
        uint shipment_qty;          //150
        string shipment_location;   //CHINA
        string Shipment_status;    //Accepted/Cancelled
        
    }

    struct MainshipmentModel{
        ShipmentModel[] shipmentData;
    }

    
    mapping(address => MainshipmentModel) shipmentMap;

    function addd_shipment_data(string memory _shipment_product_name,uint _shipment_qty,string memory _shipment_location,string memory _Shipment_status) public {
        ShipmentModel memory shipmentModel = ShipmentModel(_shipment_product_name, _shipment_qty,_shipment_location,_Shipment_status);
        shipmentMap[msg.sender].shipmentData.push(shipmentModel);
    }
     function getshipmentData() public view returns(MainshipmentModel memory){
        require(owner == msg.sender ,"You cannot access shipment data");
        return shipmentMap[msg.sender];
    }
  
}