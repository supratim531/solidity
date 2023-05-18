// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Lottery {
    address manager;
    address[] participants;
    mapping(address => bool) reset;
    mapping(address => bool) public registered;
    event winnerLog(address winner, uint256 amount);
    error minimumPlayerError(uint256 count, string message);

    constructor() {
        manager = msg.sender;
    }

    modifier checkManager() {
        require(msg.sender == manager, "You are not the manager");
        _;
    }

    modifier checkPlayer() {
        require(
            msg.sender != manager,
            "As a manager you can't contribute for lottery"
        );
        _;
    }

    modifier minimumPlayer() {
        uint256 count = participants.length;

        if (count < 3) {
            revert minimumPlayerError(
                count,
                "There has to be at least 3 players to declare a winner"
            );
        }
        _;
    }

    receive() external payable checkPlayer {
        require(msg.value >= 1 ether, "Required amount is at least 1 ether");

        if (!registered[msg.sender]) {
            registered[msg.sender] = true;
            participants.push(msg.sender);
        }
    }

    function getParticipants() public view returns (address[] memory) {
        return participants;
    }

    function checkBalance() public view checkManager returns (uint256 balance) {
        balance = address(this).balance;
    }

    function random() private view returns (uint256) {
        uint256 number = uint256(
            keccak256(abi.encode(block.timestamp, checkBalance()))
        );
        number %= participants.length;
        return number;
    }

    function payWinner() public checkManager minimumPlayer {
        uint256 index = random();
        address payable winner = payable(participants[index]);
        emit winnerLog(winner, address(this).balance);
        (bool isSent, ) = winner.call{value: address(this).balance}("");
        require(isSent, "Winning amount didn't transfer to the winner");

        for (uint256 i = 0; i < participants.length; ++i) {
            delete registered[participants[i]];
        }

        delete participants;
    }
}
