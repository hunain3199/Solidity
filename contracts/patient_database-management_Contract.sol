// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


  
contract Patient_data_base{
    address owner = msg.sender;
    struct PatientModel{
    
        string Patient_Name; //HUNAIN
        uint Patient_Age; // 21
        string Patient_patient_appointment_type; // SURGERY
    }

    struct MainpatientModel{
        PatientModel[] patientData;
    }

    
    mapping(address => MainpatientModel) patientMap;

    function addd_patient_data(string memory _Patient_Name,uint _Patient_Age,string memory _Patient_appointment_type) public {
        PatientModel memory patientModel = PatientModel(_Patient_Name, _Patient_Age,_Patient_appointment_type);
        patientMap[msg.sender].patientData.push(patientModel);
    }

    function getPatientData() public view returns(MainpatientModel memory){
       
        require(owner == msg.sender ,"You cannot access patient data");
            return patientMap[msg.sender];
    }
}   