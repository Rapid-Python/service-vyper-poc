"""
events
    - user interface
    - cheap storage (cannot access inside smart contract)
"""
#declaration of events
event Transfer:
    sender: indexed(address)
    receiver: indexed(address)
    value: uint256
#this events basically used for authorisation.
event Authorized:
    owner: indexed(address)
    authorized: bool

authorized: public(HashMap[address, bool])
#to initialised authorization
@external
def __init__():
    self.authorized[msg.sender] = True
    log Authorized(msg.sender, True)

@external
def transfer(to:address, amount: uint256):
    # logic for transfer here
    log Transfer(msg.sender, to, amount)

# this is default fucntion that can access external
# def __default__():
#     self.authorized[msg.sender] = True
#     log Authorized(msg.sender, True)

#to authorized sender
@external
def grantauthorization(addr: address):
    assert self.authorized[msg.sender], "!authorized"
    self.authorized[msg.sender] = True

#to revoke authorized from sender
@external
def revokeauthorization(addr: address):
    assert self.authorized[msg.sender], "!authorized"
    self.authorized[addr] = False