//SPDX-License-Identifier: Unlicense

pragma solidity >=0.5.0 <0.9.0;

contract EventContract{

    struct Event{
        address organizer;
        string name;
        uint date;
        uint price;
        uint ticketCount;
        uint ticketRemaining;
    }
    
    mapping(uint=>Event) public events;          // uint le Event lai map gariraxa: Multiple Events garna milyo 
    mapping(address=>mapping(uint=>uint)) public tickets;

     uint public nextId;  // For event Id


    function createEvent(string memory name, uint date, uint price, uint ticketCount) external{
        require(date>block.timestamp, "You can organize event for future date");
        require(ticketCount>0, "You can organize event only if you create more than 0 tickets");

        events[nextId] = Event(msg.sender, name, date, price, ticketCount, ticketCount);
        nextId++;
    }

    function buyTickets(uint id, uint quantity) external payable{
        require(events[id].date!=0, "Event doesnot exists!!");                            // event nai exist garadaina bhane date ==0
        require(events[id].date>block.timestamp, "Event has already occured!!");

        Event storage _event = events[id];
        require(msg.value==(_event.price*quantity), "Not enough payment!");
        require(_event.ticketRemaining>=quantity, "Sorry, Not enough tickets!!");
        _event.ticketRemaining -= quantity;
        tickets[msg.sender][id]+=quantity;              // buyer ko address, event ko id 
    }

    function transferTickets(uint id, uint quantity, address to) external{
        require(events[id].date!=0, "Event doesnot exists!!");                            // event nai exist garadaina bhane date ==0
        require(events[id].date>block.timestamp, "Event has already occured!!");
        require(tickets[msg.sender][id]>=quantity, "you do not have enough tickets!!");

        tickets[msg.sender][id]-=quantity;
        tickets[to][id]+=quantity;
    }

}
