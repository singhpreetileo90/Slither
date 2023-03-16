# Slither
Slither - a static analysis framework for Ethereum smart contracts - Assertion Error

Issue : support for imports with alias (either symbol alias or unit alias) #1452

Running slither . --compile-force-framework foundry leads to the crash with a backtrace pasted as the log output below. 

This is because Slither cannot find a contract named c.Counter (as referenced from src/Importer.sol).

