//   *****SOLVED*****

contract CaptureTheEther {
    GuessTheNumberChallenge number = GuessTheNumberChallenge(/* INSERT CONTRACT ADDRESS */)
    
    //This may be gas intensive
    function capture() public payable {
        for (uint8 n = 0; n<256; n++) {
        number.guess(n);
        }
    }
}
