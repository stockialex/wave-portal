// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {

    uint256 totalWaves;

    constructor() {
        console.log("En la calle me conocen como el hip-hop, the hit, the real dance crip");
    }

    function wave() public {
        totalWaves = totalWaves + 1;
        console.log("%s has waved to you", msg.sender);
    }

    function getTotalWaves() public view returns(uint256) {
        console.log("You get a total of %s waves", totalWaves);
        return totalWaves;
    }
}