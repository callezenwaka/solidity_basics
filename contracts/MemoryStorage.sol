// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MemoryStorage {
    // storage
    uint a;

    struct User {
        string name;
    }
    User[] users;

    function func1() external {
        User storage user = users[0];
        user.name = '';
    }

    // memory
    function func2() external {
        User memory user = users[0];
        user.name = '';

        func3(user);
    }

    function func3(User memory user) internal {

    }

    // stack
    function func4() external {
        uint b;
    }

    // calldata
    function func4(uint[] calldata _users) external {
        uint b;
    }
}