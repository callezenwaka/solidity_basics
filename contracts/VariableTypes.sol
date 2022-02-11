// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract VariableTypes {
    // Fixed-size types
    bool isReady;
    uint b;
    address recipient;
    bytes32 data;

    // Variable-size types
    string name;
    bytes _data;
    uint[] amounts;
    mapping(uint => string) users;

    // User-defined data
    struct User {
        uint id;
        string name;
        uint[] friendsIds;
    }
    enum Color {
        RED,
        GREEN,
        BLUE
    }
}