pragma solidity ^0.4.21;

//                        *****SOLVED***** 
//  https://capturetheether.com/challenges/lotteries/guess-the-secret-number/
//           ^^^^^^^^^^^^ CAPTURE ETH HERE ^^^^^^^^^^^^^^

contract CaptureTheEther {
    bytes32 answerHash = 0xdb81b4d58595fbbbb592d3661a34cdca14d7ab379441400cbfa1b78bc447c365;
    
    function capture() public view returns (uint8){
        
        //Traverse through all values of uint8, which their are 256 of them: 0 - 255.
        for (uint8 i=0; i<256; i++) {
            
            //Just like the guess() function, once the value integer matches with the hash...
            // return the correct value
            if (keccak256(i) == answerHash) {
                return i;
            }
        }
    }
}
