pragma solidity ^0.5.17;

import './ERC20CoinInterface.sol';

contract Exchange {
    BestCoinInterface private ACoin;
    BestCoinInterface private BCoin;
    
    constructor (BestCoinInterface _a, BestCoinInterface _b) public {
        ACoin = _a;  // address = 0x62727b7bA5CD9823328C440FA93Aacc58866d2Aa
        BCoin = _b;  // address = 0x351649484058f2EA6c5A7F6cd89F261c718429c7
    }
    
    function AtoB(uint amount) public {
        ACoin.transferFrom(msg.sender, address(this), amount);
        BCoin.transfer(msg.sender, amount);
    }
    
    function BtoA(uint amount) public {
        BCoin.transferFrom(msg.sender, address(this), amount);
        ACoin.transfer(msg.sender, amount);
    }
    
    function getAcoinBalanceOfthis() public view returns(uint) {
        return ACoin.balanceOf(address(this));
    }
    
    function getBcoinBalanceOfthis() public view returns(uint) {
        return BCoin.balanceOf(address(this));
    }
}