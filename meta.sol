pragma solidity ^0.8.0;

contract ExampleContract {
    uint256 public myNumber;

    function setMyNumber(uint256 _newNumber) public {
       
        require(_newNumber != 0, "New number cannot be zero");

       
        assert(_newNumber <= 100);

       
        myNumber = _newNumber;

        // Revert the transaction if the number is greater than 100
        if (myNumber > 100) {
            revert("Number cannot be greater than 100");
        }
    }
}
