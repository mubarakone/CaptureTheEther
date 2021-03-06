pragma solidity ^0.4.21;

//                        *****AUDITED***** 
//  https://capturetheether.com/challenges/lotteries/guess-the-number/
//           ^^^^^^^^^^^^ CAPTURE ETH HERE ^^^^^^^^^^^^^^

contract GuessTheNumberChallenge {
    uint8 answer = 42;

    constructor() public payable {
        require(msg.value == 1 ether);
    }

    function isComplete() public view returns (bool) {
        return address(this).balance == 0;
    }

    function guess(uint8 n) public payable {
         require(msg.value == 1 ether);

        if (n == answer) {
            msg.sender.transfer(2 ether);
        }
    }
}
