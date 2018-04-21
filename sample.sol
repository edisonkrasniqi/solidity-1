pragma solidity ^0.4.0;

contract Inbox{

    string public message;
    address public owner;
    address public recipient;

    function Inbox(string initMessage, address _recipient) public {
        owner = msg.sender;
        message = initMessage;
        recipient = _recipient;
    }

    function setMessage(string newMessage) public {
        require(msg.sender == owner || msg.sender == recipient);
        message = newMessage;
    }

    function getMessage() public view returns (string){
        return message;
    }

}
