token_a_value = 1
token_b_value = 3

def swap_token_a(token_a_value,token_b_value,unit):
    qt = token_b_value * unit
    return qt / token_a_value

value_a = swap_token_a(token_a_value,token_b_value,10)

def swap_token_b(token_a_value,token_b_value,unit):
    qt = token_a_value * unit
    return qt / token_b_value

value = swap_token_b(token_a_value,token_b_value,10)
print(value_a)
print(value)

depaddress = 0x32FcE12f2d6C6821D254dA5BC4B432eA78Ce0bAF