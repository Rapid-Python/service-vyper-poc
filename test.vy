# @version ^0.3.0

bool_var: public(bool)
int_var: public(int256)
uint_var: public(uint256)
decimal_var: public(decimal)
address_var: public(address)
b32_var: public(bytes32)
bs_var: public(Bytes[100])
string_var: public(String[100])

@external
def __init__():

    self.bool_var = True
    self.int_var = -1
    self.uint_var = 1234
    self.decimal_var = 12.55
    self.address_var = 0x6DEA81C8171D0bA574754EF6F8b412F2Ed88c54D
    self.b32_var = 0x0000000000000000000000000000000000000000000000000000000000000000
    self.bs_var = b"\x01"
    self.string_var = "This is data types init function"
