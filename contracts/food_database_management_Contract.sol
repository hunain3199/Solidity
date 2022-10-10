// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


  
contract Food_data_base{
    address owner = msg.sender;
    struct FoodModel{
    
        string Food_Name; // BISCUITS
        string Food_status; // HEALTHY
        uint Food_status_percentage; // 100 %
    }

    struct MainfoodModel{
        FoodModel[] foodData;
    }

    
    mapping(address => MainfoodModel) foodMap;

    function addd_food_data(string memory _Food_name,string memory _Food_status,uint _Food_status_percentage) public {
        FoodModel memory foodModel = FoodModel(_Food_name, _Food_status,_Food_status_percentage);
        foodMap[msg.sender].foodData.push(foodModel);
    }

    function getFoodData() public view returns(MainfoodModel memory){
       
        require(owner == msg.sender ,"You cannot access food data");
            return foodMap[msg.sender];
    }
}