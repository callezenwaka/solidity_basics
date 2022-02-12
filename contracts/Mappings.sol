// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Mappings {
    // declare mappings
    mapping(address => uint) balances;
    mapping(address => mapping(address => bool)) isApproved;
    mapping(address => uint[]) scores;

    function func1() external {
        // add
        balances[msg.sender] = 100;
        // read
        balances[msg.sender];
        // update
        balances[msg.sender] = 200;
        // delete
        delete balances[msg.sender];

        // default values
        // balances[null] returns a value
    }

    function func2(address spender) external {
        // exotic mapping - nested mappings
        // create
        isApproved[msg.sender][spender] = true;
        // read
        isApproved[msg.sender][spender];
        // update
        isApproved[msg.sender][spender] = false;
        // delete
        delete isApproved[msg.sender][spender];
    }

    function func3(address spender) external {
        // exotic mapping - array inside mapping
        // create
        scores[msg.sender].push(1);
        scores[msg.sender].push(2);
        // read
        scores[msg.sender][0];
        // update
        scores[msg.sender][0] = 10;
        // delete
        delete scores[msg.sender][0];
    }
}