pragma solidity ^0.8.0;

contract whitelist {

  uint8 public  maxWhitelistedAddress;


  mapping(address => bool) public whitelistedAddress;
  // keep track of numbers of address
  uint8 public numAddressesWhitelisted;
  
  constructor(uint8 _maxWhitelistedAddress){
    maxWhitelistedAddress = _maxWhitelistedAddress;
  }
  function addNumberToWhitelist() public{
    require(!whitelistedAddress[msg.sender],"sender already in the whitelist");
    require(numAddressesWhitelisted < maxWhitelistedAddress, "max limit reached " );
    whitelistedAddress[msg.sender] = true;
    numAddressesWhitelisted +=1;
  }
}
