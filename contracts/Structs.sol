// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Structs {
    // declare struct
    struct User {
        address addr;
        uint score;
        string name;
    }

    // declare an array of struct
    User[] users;
    mapping(address => User) users2;

    function func1(string calldata _name) external {
        // create
        User memory user1 = User(msg.sender, 0, _name);
        User memory user2 = User(msg.sender, 0, _name);
        User memory user3 = User({name: _name, score: 0, addr: msg.sender});
        // read
        user3.addr;
        // update
        user3.score = 20;
        // delete
        delete user1;
    }

    function func2(string calldata _name) external {
        // create
        users.push(user2);
        users2[msg.sender] = User();
    }
}