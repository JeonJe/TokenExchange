pragma solidity 0.5.0;

import "./SafeMath.sol";
import "./Mortal.sol";
import "./ERC20.sol";

contract VEN is Mortal,ERC20{
    string public constant name = "VEN";
    string public constant symbol = "VEN";
    uint8 public constant decimals = 18;
    
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(decimals));
    
    constructor () public {
        total = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(address(0),msg.sender,INITIAL_SUPPLY);
    }
}   