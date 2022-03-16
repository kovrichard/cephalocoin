const Cephalocoin = artifacts.require("Cephalocoin");
const ethers = require('ethers');
const fs = require('fs');

module.exports = async (cb) => {
	let cephalocoin = await Cephalocoin.deployed();
	const abiJson = 'cephalocoin-abi.json';

	fs.writeFileSync(abiJson, JSON.stringify(cephalocoin.abi));
	c = new ethers.Contract(Cephalocoin.address, cephalocoin.abi)
	console.log(Cephalocoin.address)
	console.log(await cephalocoin.symbol())

	cb();
}
