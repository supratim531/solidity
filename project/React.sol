// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract React {
    string[] quotes;
    event setLog(string[] quotes);
    event resetLog(string message);

    function resetMessage() public {
        delete quotes;
        emit resetLog("All quotes are cleared");
    }

    function setMessage(string memory quote) public {
        quotes.push(quote);
        emit setLog(quotes);
    }

    function getMessage() public view returns (string[] memory) {
        return quotes;
    }
}
