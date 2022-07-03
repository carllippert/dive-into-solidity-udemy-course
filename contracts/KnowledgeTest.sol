//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract KnowledgeTest {
    string[] public tokens = ["BTC", "ETH"];
    address[] public players;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "ONLY_OWNER");
        _;
    }

    function changeTokens() public {
        string[] storage t = tokens;
        t[0] = "VET";
    }

    receive() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function transferAll(address payable destination) public onlyOwner {
        destination.transfer(address(this).balance);
    }

    function start() public {
         players.push(msg.sender); 
    }
}
