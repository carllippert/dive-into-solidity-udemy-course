//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract KnowledgeTest {
    string[] public tokens = ["BTC", "ETH"];
    address[] public players;
    address public owner; 

    constructor(){
        owner = msg.sender; 
    }

    function changeTokens() public {
        string[] storage t = tokens;
        t[0] = "VET";
    }

    receive() payable external {

    }
}
