// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './Token.sol';

contract TransferToken {
    function transfer() external {
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        token.transfer(msg.sender, 50);
    }

    function transferFrom(address recipient, uint amount) external {
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        token.transferFrom(msg.sender, recipient, amount);
    }
}

contract Owner {
    function transfer(address recipient, uint amount) external {
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        token.approve(0x583031D1113aD414F02576BD6afaBfb302140225, amount);

        TransferToken transferToken = TransferToken(0x583031D1113aD414F02576BD6afaBfb302140225);
        transferToken.transferFrom(recipient, amount);
    }
}