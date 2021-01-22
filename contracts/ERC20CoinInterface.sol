pragma solidity ^0.5.0;

interface BestCoinInterface {
    function totalSupply() external view returns(uint);
    function transfer(address _to, uint _value) external;
    function name() external view returns(string memory);
    function symbol() external view returns(string memory);
    function decimals() external view returns(string memory);
    function approve(address _spender, uint _value) external;
    function balanceOf(address _owner) external view returns (uint balance);
    function transferFrom(address _from, address _to, uint _value) external;
    function allowance(address _owner, address _spender) external view returns (uint remaining);
}
