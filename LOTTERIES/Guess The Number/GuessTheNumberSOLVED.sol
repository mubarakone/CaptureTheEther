pragma solidity ^0.4.21;

//                        *****AUDITED***** 
//  https://capturetheether.com/challenges/lotteries/guess-the-number/
//           ^^^^^^^^^^^^ CAPTURE ETH HERE ^^^^^^^^^^^^^^

contract CaptureTheEther {
    GuessTheNumberChallenge number = GuessTheNumberChallenge(/* INSERT CONTRACT ADDRESS */)
    
    //This may be gas intensive
    function capture() public payable {
        for (uint8 n = 0; n<256; n++) {
        number.guess(n);
        }
    }
}
