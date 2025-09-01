// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FundMe {
  using PriceConvertor for uint256;
  address[] public funders;
    mapping(address => uint256) public addressToAmountfunded;
      
      address public owner;
    constructor() {
      owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value > 1e18, "there is no eth");
        msg.value.getConversionRate();
        funders.push(msg.sender);
        addressToAmountfunded[msg.sender] = addressToAmountfunded[msg.sender] + msg.value;
    }

    modifier onlyOwner() {
      require(msg.sender == owner,"only owner can send eth");
      _;
    }

    function withdraw() public onlyOwner {
      for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
         address funder = funders[funderIndex];
         addressToAmountfunded[funder] = 0;
      }
    }
