
owner:public(address)
name:public(String[100])

## __init__ function cannot excuted by create_forwader_to .
@external
def __init__():
    self.owner = msg.sender
    self.name = "komal"

# call after create_forwarder_to
@external
def setup():
    self.owner = msg.sender
    self.name = "komal"