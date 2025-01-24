async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);

    const Token = await ethers.getContractFactory("FanCoin");  // Updated contract name
    const token = await Token.deploy();
    console.log("FanCoin contract deployed to:", token.address);  // Updated name
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
