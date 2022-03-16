// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Zenya is ERC20, Ownable {

    //state variable
    // uint256 public totalSupply_;
    string public standardPrefix = "Your total supply is ";

    constructor() ERC20("Zenya", "ZNY") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function printTotalSupply() public view returns (string memory){
        return string(abi.encodePacked(standardPrefix, totalSupply));
    }

    // function mint(address to, uint256 amount) public onlyOwner {
    //     _mint(to, amount);
    // } 

    // function setTotalSupply()  public {
    //     totalSupply_ = 1000000;
    // }
}