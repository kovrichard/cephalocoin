const Cephalocoin = artifacts.require('./Cephalocoin.sol');
module.exports = function (deployer) {
  const ether = BigInt(10 ** 18);
  deployer.deploy(Cephalocoin, BigInt(1e6) * ether);
};
