def sum_list(l: list):
    if not l:
        return 0
    print(l[0])
    print('l[1:]', l[1:])
    return l[0] + sum_list(l[1:])

r = sum_list([1, 2, 3])
print(r)
