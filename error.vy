x: public(String[100])
owner: public(address)

#assert and raise

@external
def __init__():
    self.owner = msg.sender

@internal
def _setX(message:address, _x: String[100]):
    assert self.owner == message, "Not owner"
    #or
    # if self.owner != message:
    #     raise "! owner"
    self.x = _x

@external
def setX( _x: String[100]):
    self._setX(msg.sender, _x)

@external
def setxtofoo():
    self._setX(msg.sender, "foo")
    self.x="bar"

# #UNREACHABLE uses all of gas
# @external
# def unreachable():
#     raise UNREACHABLE