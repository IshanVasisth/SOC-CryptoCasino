# SOC-CryptoCasino
The first week i read bitcoin whitepaper. The whitepaper introduced me to different concepts in blockchain. Through this i got a an overall idea about the backend functioning of the bitcoin network. 

I followed it up with cyfrin updraft's blockchain basics course. This introduced me to even more concepts like testnets, mainnets etc. Got introduced to smart contracts, walllets, their security, and had some surface level idea about rollups and oracle networks. 

The second week was all about learning solidity and writing your first smart contract. I leant the basic syntaxes used in solidity. I followed cryptozombies course for the first part but then i switched to cyfrin updraft's solidity course. I also referred to the official solidity documentation. There was no exact assignment given as much by the mentor. 

So i asked chatGPT for an assignmnet to write a basic smart contract and using the help of remix environment i wrote my first smart contract and cleaned the code using chatGPT. This is the  assignment : 

🧪 Smart Contract Assignment – Solidity (Week 2)
Contract: SavingsPool

📄 Problem Statement:
Build a smart contract that lets users deposit ETH into a shared pool for a fixed time period. Only the deployer (owner) can withdraw the total funds after the deadline.

🧱 Core Tasks:
Set the deployer as the owner.

Accept deposits from any user.

Deadline-based system: accept deposits only until a certain timestamp.

Track deposits per user using mapping(address => uint).

Add a withdrawn flag to prevent double withdrawal.

Allow only the owner to withdraw after the deadline.

Emit events on deposit and withdrawal.

Add a function to check user deposit amount.

🔧 Input / Output Expectations:
constructor(uint _durationInSeconds)

deposit() — payable

withdraw() — only after deadline and only by owner

getMyBalance() — view function

event Deposited(address, uint)

event Withdrawn(address, uint)

##I have uploaded the source code of the assignement.
