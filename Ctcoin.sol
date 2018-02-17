pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Ctcoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Ctcoin(address _owner)  UpgradeableToken(_owner) {
    name = "Ctcoin";
    symbol = "ctc";
    totalSupply = 21000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}