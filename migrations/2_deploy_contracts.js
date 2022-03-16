const Cephalocoin = artifacts.require('./Cephalocoin.sol');
module.exports = function (deployer) {
  deployer.deploy(Cephalocoin, 100);
};
