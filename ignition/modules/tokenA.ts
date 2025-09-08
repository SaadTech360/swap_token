import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("tokenAModule", (m) => {
  const tokenA = m.contract("TokenA",["Toka","TKA"]);
  


  return { tokenA};
});
