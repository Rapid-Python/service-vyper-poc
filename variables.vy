# print all env vars 

@external
@payable # accepting ether called payable function.

def return_env_var() -> (uint256, address, uint256, uint256, uint256, address):
    return (
        self.balance,
        msg.sender,
        msg.value,
        block.number,
        block.timestamp,
        tx.origin
    )
