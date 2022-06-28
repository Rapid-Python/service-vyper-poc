"""
 send Ether from contract to another address
"""
#Ether is transfered from EOA -> this contract -> to address
@external
@payable
def sendether(to: address, amount:uint256):
    send(to, amount)
    # send function work like transfer

@external
@payable
def sendetherwith_val(to: address):
    send(to, msg.value)