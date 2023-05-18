// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract GlobalVariable {
    address public contractOwner = msg.sender;
    uint256 public time = block.timestamp;
    uint256 public blockDifficulty = block.difficulty;
    uint256 public gasPrice = tx.gasprice;

    function viewBlockAndMsg()
        public
        view
        returns (
            uint256 blockNumber,
            uint256 timestamp,
            address msgSender
        )
    {
        return (block.number, block.timestamp, msg.sender);
    }
}
