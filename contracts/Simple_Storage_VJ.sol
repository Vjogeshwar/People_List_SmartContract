// SPDX-License-Identifier: MIT

pragma solidity  ^0.6.0;

//Defining a Contract. Contract is same as class in Java
contract SimpleStorage {
    
   //   Types of variables in solidity.
    //    uint --> unsigned integers uint256 means a number of size 256.
    //    int --> Integers
    //    bool --> Boolean (T/F)
    //    string --> String
    //    address --> Account address
    //    bool    favouriteBool = true;
    //        string  favouriteString = "Hello BlockChain";
    //        int256  favouriteInt = -5;
    //        address favouriteAddress = 0xD0AAAb485DbEc71BaE70c4c5Ac7Ea18F5B0d00C2;
    //        bytes32 favouriteByte = "Metamask";
    //This will get initialized to 0!
    uint256 favouriteNumber;
    
    struct People {
        uint256 number;
        string  name;
    }
    
    //People public person1 = People({number : 1, name : "Vidhi"});
    //Creating an array of People
    People[] public peopleList;
    
    //Mapping work with key
    mapping(string => uint256) public nameToFavoriteNumber;
    
    // Define function - It is same as method
    function store(uint256 _myNumber) public {
        favouriteNumber = _myNumber;
    }
    
   //Pure functions are used for mathematical calculations
    //function retrieve1(uint256 favouriteNumber) public pure {
      //  favouriteNumber = favouriteNumber + 100;
    //}
    
     //View and pure functions to read the state of BlockChain
    function retrieve() public view returns(uint256){
       return favouriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _number) public {
        peopleList.push(People(_number, _name));
        nameToFavoriteNumber[_name] = _number;
    }
}