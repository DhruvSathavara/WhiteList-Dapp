require("@nomiclabs/hardhat-waffle");
require("dotenv").config({ path: ".env"});

const ALCHEMY_API_KEY_URL = process.env.ALCHEMY_API_KEY_URL;
const GOERLI_METAMASK_ACCOUNT_ADDRESS_PVT_KEY = process.env.GOERLI_METAMASK_ACCOUNT_ADDRESS_PVT_KEY;


module.exports = {
  solidity : "0.8.4",
  networks:{
    goerli : {
      url: ALCHEMY_API_KEY_URL,
      accounts : [GOERLI_METAMASK_ACCOUNT_ADDRESS_PVT_KEY]
    }
  }
}