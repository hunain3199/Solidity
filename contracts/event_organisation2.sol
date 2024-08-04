// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract event_organisation2 {
    struct Event{
        string organizer_name;
        string event_name;
        uint ticket_price;
        }

    struct Event_Modal {
        Event[] events_array ;
    }

    mapping(address => Event_Modal)  events_mapping;

    function addEvents(string memory _organizer_name,string memory _event_name,uint _ticket_price)
    public 
    {
        Event memory _events = Event(_organizer_name , _event_name , _ticket_price);
        events_mapping[msg.sender].events_array.push(_events);
    }

    function getEvents(address _organizerAddress) view public returns(Event_Modal memory)
    {
        return events_mapping[_organizerAddress];
    }

    

    
}