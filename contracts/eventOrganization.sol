// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract event_organization{
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet private organizers;

    enum EventCriteria{ Private,Public,Corperate }
    address owner = msg.sender;
    struct Event {
        string organizorName;
        string eventName;
        uint ticketPrice;
        uint maxtickets;
        EventCriteria eventCriteria;
        address organizerAddress;
}

    struct EventModal {
        Event[] eventArray;
    }

    mapping(address => EventModal)  eventmap;

    modifier onlyOwner() {
    require(msg.sender == owner, "Ownable: caller is not the owner");
    _;
}
    
    function addEvent(string memory organizorName_,string memory eventName_,uint ticketPrice_,uint maxtickets_,EventCriteria eventCriteria_) public payable returns(string memory) 
    {
        require(msg.value == 1 ether, "You must send exactly 1 ether to add an event");
        Event memory event_ = Event(organizorName_,eventName_,ticketPrice_,maxtickets_,eventCriteria_,msg.sender);
        eventmap[msg.sender].eventArray.push(event_);
        organizers.add(msg.sender);
        return "Event Added Successfully";
    }

    
    function showEvent(address organizerAddress_) public view onlyOwner returns(EventModal memory) 
     {

        return eventmap[organizerAddress_];
     }

    function showEventDetails(address _organizerAddress) public view onlyOwner 
    returns(string memory,string memory,uint,uint,EventCriteria)
    {
        string memory organizorName_ = eventmap[_organizerAddress].eventArray[eventmap[_organizerAddress].eventArray.length - 1].organizorName;
        string memory eventName_ = eventmap[_organizerAddress].eventArray[eventmap[_organizerAddress].eventArray.length - 1].eventName;
        uint ticketPrice_ = eventmap[_organizerAddress].eventArray[eventmap[_organizerAddress].eventArray.length - 1].ticketPrice;
        uint maxtickets_ = eventmap[_organizerAddress].eventArray[eventmap[_organizerAddress].eventArray.length - 1].maxtickets;
        EventCriteria eventCriteria_ = eventmap[_organizerAddress].eventArray[eventmap[_organizerAddress].eventArray.length - 1].eventCriteria;
        
       
        return ( organizorName_,eventName_,ticketPrice_,maxtickets_,eventCriteria_);
    }

    function delete_event_data(address _organizerAddress) public  returns(string memory) 
    {
        address payable organizor_owner = payable(_organizerAddress);
        eventmap[_organizerAddress].eventArray.pop();
        organizor_owner.transfer(1 ether);

        return "Event Deleted Successfully";
    }

    function getContractBalance() public view onlyOwner returns(uint)
    {
        return address(this).balance;
    }

    function getAllOrganizers() public view onlyOwner returns (address[] memory) {
        return organizers.values();
    }















    

}