// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist{
    // maximum number of addresses which can be white listed
    uint8 public maxWhitelistedAddresses;

    // to keep track of number of addresses whitelisted till now
    uint8 public numOfAddressesWhitelisted;

    mapping(address => bool) public WhitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(!WhitelistedAddresses[msg.sender] ,"Sender is already in whitelist.");
        require(numOfAddressesWhitelisted < maxWhitelistedAddresses," MAx limit reached!!" );
        WhitelistedAddresses[msg.sender] = true;
        numOfAddressesWhitelisted += 1;
    }
}
