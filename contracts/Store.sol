pragma solidity ^0.5.0;

import "contracts/ItemFactory.sol";
import "contracts/UserFactory.sol";

contract Store is UserFactory, ItemFactory {

    function setBlockchainMarketBaseContractAddress(address _address) 
        external 
        isAdmin
    {
        BlockchainMarketInterface candidateContract = BlockchainMarketInterface(_address);

        require(candidateContract.isBlockchainMarket());

        blockchainMarket = candidateContract;
    }

}