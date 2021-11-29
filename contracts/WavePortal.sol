// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {

    uint256 totalWaves;
    address[] addressList;

    constructor() {
        console.log("Start of the contract");
    }

    function wave() public {
        totalWaves = totalWaves + 1;
        console.log("%s has waved to you", msg.sender);
        addressList.push(msg.sender);
    }

    function getTotalWaves() public view returns(uint256) {
        console.log("You get a total of %s waves", totalWaves);
        return totalWaves;
    }

    function printAddresses() public view {
        for(uint i = 0; i < addressList.length; i++) {
            console.log("%i) %s", i, addressList[i]);
        }
    }
}