// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

library Library {
    struct Player {
        uint score;
    }

    function incrementScore(Player storage _player, uint points) public {
        _player.score += points;
    }

    function add10(uint a) pure public returns (uint) {
        return a + 10;
    }
}

contract MyLibrary {
    // with struct
    mapping(uint => Library.Player) players;
    // using for
    using Library for Library.Player;

    function func1() external {
        // with struct
        Library.incrementScore(players[0], 10);
        // using for
        players[0].incrementScore(10);
    }

    function func() external pure {
        // uint result = Library.add10(10);
    }

}