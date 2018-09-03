import numpy

# Parametriserad, generell variant
def beer_song(n, beverage):
    """
    Sings the beer song starting with n bottles of the
    provided beverage.
    """

    for i in range(n, 0, -1):
        print(i, "bottles of", beverage, "on the wall,", i, "bottles of", beverage)
        print("Take one down, pass it around,", i - 1, "bottles of", beverage)


def buy(drink):
    pass

beer_song(5, "beer")