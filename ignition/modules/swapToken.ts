import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const SwapModule = buildModule("SwapModule", (m) => {
  // Add unique IDs to avoid conflicts
  const tokenA = m.contract("TokenB", ["TokA", "TKNA"], {
    id: "TokenA"
  });
  
  const tokenB = m.contract("TokenA", ["TokB", "TKNB"], {
    id: "TokenB"
  });
  
  const swapToken = m.contract("SwapTokens", [tokenA, tokenB], {
    id: "SwapToken"
  });

  return { tokenA, tokenB, swapToken };
});

module.exports = SwapModule;

// export default buildModule("SwapTokenModule", (m) => {
//   const tokenA = m.contract("TokenA",["Toka","TKA"]);
//   const tokenB = m.contract("TokenA",["Tokb","TKB"]);
//   const swapToken = m.contract("SwapTokens",[tokenA,tokenB]);


//   return { tokenA,tokenB,swapToken };
// });
