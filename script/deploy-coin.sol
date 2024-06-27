// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {BEP20Token} from "../src/BEP20.sol";
import "forge-std/console.sol";

contract BEP20TokenCreate is Script {
    address internal constant DEPLOYER = 0x80ACec8539C7c4Bd6FcA6391c69C4AE80C8ce0eF;

    function setUp() public {
        string memory root = vm.projectRoot();
        // string memory path = string.concat(root, "/script/VaultData/", DEPLOYMENT_FILE_NAME, ".json");
        // string memory file = vm.readFile(path);
        // bytes memory parsed = vm.parseJson(file);
        // vaultDataList = abi.decode(parsed, (VaultDataList));
    }

    function run() public {
        vm.startBroadcast();
        BEP20Token newToken = new BEP20Token();
        vm.stopBroadcast();

        console.log("newToken:", address(newToken));
    }
}
