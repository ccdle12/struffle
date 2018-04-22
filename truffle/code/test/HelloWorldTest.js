const HelloWorld = artifacts.require('HelloWorld.sol');

const should = require('chai')
  .use(require('chai-as-promised'))
  .use(require('chai-bignumber')(BigNumber))
  .should();


contract('HelloWorld', function(accounts) {
  
  const deploying_account = accounts[0];
  const account1 = accounts[1];
  const account2 = accounts[2];
  const account3 = accounts[3];
  const account4 = accounts[4];

  /**
   * Helper Functions
   */
  const bigNumber = (x) => new BigNumber(x);
  const toEth = (x) => web3.fromWei(x).toNumber();
  const toWei = (x) => web3.toWei(x, 'ether');
  const sendTx = (sender, receiver, amount) => web3.eth.sendTransaction({from: sender, to: receiver, value: toWei(amount)});
  const getBalance = (x) => web3.eth.getBalance(x);
  async function helperTryCatch(fn) {
    try {
      await fn;
    } catch(err) {
       return false;
    } 
    return true;
  }
  
  before(async() => {
    this.HelloWorld = await HelloWorld.deployed();
  });

  it("should exist", async() => {
    await this.HelloWorld.should.exist;
  });

});
