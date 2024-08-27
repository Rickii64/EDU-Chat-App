// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;

contract ChatApp {
    struct Message {
        address sender;
        string message;
        uint timestamp;
    }

    mapping(address => Message[]) public messages;

    function sendMessage(string memory _message) public {
        messages[msg.sender].push(Message(msg.sender, _message, block.timestamp));
    }

    function getMessages(address _sender) public view returns (Message[] memory) {
        return messages[_sender];
    }
}
