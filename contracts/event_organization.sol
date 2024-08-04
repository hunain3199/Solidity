// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract event_organization {
    struct Event{
        string name;
        address organizer;
        uint256 ticketPrice;
    }
    struct Event_Modal {
        Event[] EventsArray;
    }

    mapping(address => Event_Modal) events_map;

    function addEvent(string memory _name, uint256 _ticketPrice) public payable returns(string memory) {
        require(msg.value == 1 ether, "You must send exactly 1 ether to add an event");
        Event memory newEvent = Event(_name, msg.sender,_ticketPrice);
        events_map[msg.sender].EventsArray.push(newEvent);
        return "Event Registered";
        
    }

    function getFullEvent(address _address) public view returns(Event_Modal memory) {
        return events_map[_address];
    }

    

    function getEventDetails(address _organizer) view public returns(string memory,uint){
        
        return(events_map[_organizer].EventsArray[events_map[_organizer].EventsArray.length - 1].name,events_map[_organizer].EventsArray[events_map[_organizer].EventsArray.length - 1].ticketPrice);
        
    }

}