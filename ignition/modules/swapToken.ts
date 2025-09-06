import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("swapTokenModule", (m) => {
  const tokenA = m.contract("tokenA");
  const tokenB = m.contract("tokenA");
  const swapToken = m.contract("swapToken");


  return { tokenA,tokenB,swapToken };
});
