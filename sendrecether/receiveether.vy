# used default function to receive ether from another contract

event Payment:
    sender: indexed(address)
    amount: uint256
    bal: uint256
    gasleft: uint256

@external
@payable
# default is inbuild function which cannot take input and cannot return output
def __default__(): # default function work like fallback
    log Payment(msg.sender, msg.value, self.balance, msg.gas)

