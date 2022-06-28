#if else condition

@external
@pure
def if_else(i: int256) -> int256:
    if i < 10:
        return 0
    elif i < 20:
        return 1
    else:
        return 2

#for loop
@external
@pure
def for_loop() -> (uint256):
    u: uint256 = 0
    for i in [1,2,3,4]:
        u+=convert(i, uint256)
    return u

#continue and break

@external
@view
def con_br() -> (uint256):
    x: uint256 = 0
    for i in range(1, 10):
        if i<5 :
            continue
        if i ==6:
            break
        x = convert(i, uint256)
    return x

#pass -> this keyword used to declare a function without implementation 

@external
def blank():
    pass