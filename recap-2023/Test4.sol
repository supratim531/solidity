// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Test4 {
    enum Status {
        STOPPED,
        STARTED,
        PENDING
    }

    Status public status;

    function setStatus(Status _status) public {
        status = _status;
    }

    function statusStarted() public {
        status = Status.STARTED;
    }

    function resetStatus() public {
        delete status;
    }
}
