// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TransferEther {
    // address payable[] recipient;

    function sendEther(address payable recipient) external {
        // transfer 1 ether from this smart contranct to recipient
        recipient.transfer(1 ether);
        // address payable casting
        address a;
        a = recipient;
        a.transfer(100);
        // msg.sender
        msg.sender.transfer(100);

        recipient.send(1 ether);
    }
}