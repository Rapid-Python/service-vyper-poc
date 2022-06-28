num: public(uint256)
message: public(String[100])
value: public(uint256)
owner: public(address)

@external
@payable
def __init__():
    self.owner= msg.sender
    self.value= msg.value

#visibility function
@internal
@pure # only can read
def internalfunction(x: uint256) -> uint256:
    return(x+1)
    
@external
@view
def externalfunction(x: uint256, b: bool) -> (uint256, bool):

    i: uint256 = 10
    (i) = self.internalfunction(9)
    return(i*2, True)


#mutability
@external
@pure
def purfunction(x: uint256) -> bool:
    return x>2

@external
@view
def viewfunction(y: int256) -> (int256, address):
    return (y, msg.sender)
 
@external
def wriresomething( _message:String[10] ):
    self.message = _message

@external
@payable
def receiveether():
    self.value = msg.value
    