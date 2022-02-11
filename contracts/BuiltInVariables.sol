// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ControlStructures {
    // tx - sends transactions
    tx.origin; // transaction origin

    // msg - send message
    msg.value; // transaction value
    msg.sender; // transaction caller

    // block - when block is mined
    block.timestamp; // milliseconds since January 1 1970
}