import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("tokenBModule", (m) => {
  const tokenB = m.contract("TokenB",["TokB","TKB"]);
  


  return { tokenB};
});
