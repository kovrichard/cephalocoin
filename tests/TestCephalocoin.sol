
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

import "../contracts/Cephalocoin.sol";
import "../node_modules/truffle/build/Assert.sol";

contract TestCephalocoin {
	function createCoin(uint256 totalSupply) internal returns (Cephalocoin) {
		return new Cephalocoin(totalSupply);
	}

	function createCoin() internal returns (Cephalocoin) {
		return new Cephalocoin(1);
	}

	function testCreationShouldSetTotalSupply() public {
		Cephalocoin coin = createCoin(1000);
		Assert.equal(coin.totalSupply(), 1000, "Should set total supply");
	}

	function testCreationShouldSetDecimalsTo18() public {
		Cephalocoin coin = createCoin();
		Assert.equal(coin.decimals(), 18, "Should set decimals to 18");
	}

	function testCreationShouldSetOwnerToCaller() public {
		Cephalocoin coin = createCoin();
		Assert.equal(coin.owner(), address(this), "Should set owner to caller");
	}

	function testCreationShouldAddTotalSupplyToOwner() public {
		Cephalocoin coin = createCoin(1000);
		Assert.equal(coin.balanceOf(address(this)), 1000, "Should add total supply to owner");
	}
}
