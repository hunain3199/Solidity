// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract practice {

    address payable owner = payable(msg.sender);

    struct Doctor{
        string name;
        string speciality;
        uint roomNo;
    }

    struct Doctor_Model {
        Doctor[] DoctorsArray;
    }

    mapping(uint => Doctor_Model) doctor_mapping;

    function add_doctor_data(uint _doctorNo,string memory _name,string memory _speciality,uint _roomNo)
    public 
    {
        Doctor memory doctor = Doctor(_name,_speciality,_roomNo);
        doctor_mapping[_doctorNo].DoctorsArray.push(doctor);

    }

    function get_doctor_data(uint _doctorNo) view public returns(Doctor_Model memory)
    {
        Doctor_Model memory doctors = doctor_mapping[_doctorNo];
        return doctors;

    }

    function delete_doctor_data(uint _doctorNo) public 
    {
        doctor_mapping[_doctorNo].DoctorsArray.pop();
    }

    function payment_from_patients() public payable 
    {

    }

    function get_balance_earn_from_patients() public view returns(uint,address)
    {
        require(owner == msg.sender,"You cannot have access to read balance");
        return(address(this).balance,address(this));

    }

    function withdraw_funds_to_owner_from_contract() public 
    {
        
        owner.transfer(address(this).balance);
    }

}