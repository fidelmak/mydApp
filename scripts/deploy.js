const { ethers } = require("hardhat");

async function main(){
  const whitelistedContract = await ethers.getContractFactory('whitelist');

  const deployedWhitelistedContract = await whitelistedContract.deploy(10)

  await deployedWhitelistedContract.deployed();

  console.log("whitelisted address", deployedWhitelistedContract.address)
}
main()
.then(()=> process.exit(0))
.catch((error)=>{
  console.error(error);
  process.exit(1)
})