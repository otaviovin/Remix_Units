//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

// It is not necessary use a lot of zeros or calculate time,
// there is some units as ether, gwei, wei, seconds, minutos, hour, days or weeks
// See the examples below to see how it works

contract SampleUnits {
    modifier betweenOneandTwoEther() {
        require(msg.value >= 1000000000000000000 && msg.value <= 2000000000000000000);
        // or
        // require(msg.value >= 1e18 && msg.value <= 2e18);
        // or
        // require(msg.value >= 1 ether && msg.value <= 2 ether);
        // or gwei or wei
        _;
    }
    uint runUntilTimestamp;
    uint startTimestamp;

    constructor (uint startInDays) {
        startTimestamp = block.timestamp + (startInDays * 24 * 60 * 60);
        runUntilTimestamp = startTimestamp + (7* 24 * 60 * 60);
        // or
        // startTimestamp = block.timestamp + (startInDays * 1 day);
        // runUntilTimestamp = startTimestamp + (7 days);
        // seconds, minutos, hour, days, weeks
    }
}