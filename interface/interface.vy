
# how to initialise and implement interface
"""
this methode used to call function from fromcontract.vy in interface 
and have to mention signature of that 
function like (payable , view , pure, nonpayable)

"""

interface Toshow:
    def call_msg(message: String[100]) -> (uint256): nonpayable
    def showmsg() ->(uint256): view
    def checkamount() -> (uint256, bool): pure
    def pay(): payable
    def __init__(): view

@external
@view
def rcv_showmsg(rcv_addr:address):
    Toshow(rcv_addr).showmsg()

@external
def to_call_msg(rcv_addr:address):
    u:uint256= Toshow(rcv_addr).call_msg("Hello interface this is my first contract.")
  
@external
@payable
def rcv_return_addr(rcv_addr:address):
   Toshow(rcv_addr).pay(value=1)







