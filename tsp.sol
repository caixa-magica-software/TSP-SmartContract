pragma solidity ^0.4.0;


/*
    Smart contract for logging sign documents from a wallet adress
    
    
    Caixa Mágica : 25-out-2018
    Vitor Viana
*/
contract Tsp {
    
     /*
        Event definition
     */
      event AddedDocument(
        bytes hash, 
        bytes hash_meta, 
        bytes metamask_pkey, 
        address wallet_address, 
        bytes document_id
    );

    /*
     add document method
    */
    function addDocument( bytes hash, bytes hash_meta, bytes metamask_pkey, address wallet_address, bytes document_id) public payable {
        emit AddedDocument(hash , hash_meta, metamask_pkey,  wallet_address, document_id);
    }
    
    
}