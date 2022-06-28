"""
create_forwarder_to used to reduce charge of gas of masterdeploy contract
"""

interface Deployme:
    def setup(): nonpayable

@external
def deploy(_mastercopy:address, name:String[100]) ->(address):
    addr:address = create_forwarder_to(_mastercopy)
    return addr