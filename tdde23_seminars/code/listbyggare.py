def one(lst):
    return [x for x in lst if x >= 0]

def two(lst):
    return [ord(word[0]) for word in lst]


def three(lst):
    return [sorted(sub)[1] for sub in lst]


def four(lst):
    return [word.replace("a", "*") for word in lst if word.find("a") == -1]


def five():
    return [x for x in range(100) if (x % 3 == 0 or x % 5 == 0) and not x % 15 == 0]


def six():
    return [[1 if i == n else 0 for i in range(5)] for n in range(5)]
