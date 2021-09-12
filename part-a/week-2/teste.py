def p(a, b):
    # print('a', a)
    print('b', b)
    # print('p(a, b)', p(a, b))
    return 1 if b == 0 else a + p(a-1, b-1)

r = p(20, 3)
print('r', r)
