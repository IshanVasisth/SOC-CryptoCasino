// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract SavingsPool {
    address public owner;
    uint public deadline;
    uint public sharedPool;
    bool public withdrawn;
    mapping(address => uint) public balances;

    event Deposited(address, uint);
    event Withdrawn(address, uint);

    constructor(uint _timeInSeconds) {
        owner = msg.sender;
        deadline = block.timestamp + _timeInSeconds;
    }

    function deposit() external payable {
        require(block.timestamp < deadline, "Deadline passed");
        require(msg.value > 0, "Must send ETH");
        balances[msg.sender] += msg.value;
        sharedPool += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw() external {
        require(!withdrawn, "Already withdrawn");
        require(msg.sender == owner, "Not owner");
        require(block.timestamp >= deadline, "Too early");

        uint amount = address(this).balance;
        withdrawn = true;
        payable(owner).transfer(amount);

        emit Withdrawn(msg.sender, amount);
    }

    function getMyBalance() external view returns (uint) {
        return balances[msg.sender];
    }
}
