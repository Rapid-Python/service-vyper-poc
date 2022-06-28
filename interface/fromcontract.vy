amt:public(uint256)
addr:public(address)

event Checkinfo:
    amount: uint256
    at_addr: indexed(address)
    bal: uint256

event Sender:
    at_addr: indexed(address)
    amount: uint256

@external
def __init__():
    self.amt = self.balance

@internal
def amt_in()->(uint256):
    self.amt = self.balance
    return self.amt

@external
def call_msg(message: String[100]) -> (uint256):
    log Sender(msg.sender, self.balance)
    return 1234

@external
@view
def showmsg() ->(uint256):
    return self.balance

@external
@pure
def checkamount() -> (uint256, bool):
    u:uint256 = 178
    if u > 100:
        return (u, True)
    else:
       return (u, False)

@external
@payable
def pay():
    log Checkinfo(msg.value, msg.sender,self.balance)
    

