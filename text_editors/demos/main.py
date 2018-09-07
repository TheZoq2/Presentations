import numpy

# Parametriserad, generell variant
def beer_song(n, drink):
    """
    Sings the beer song starting with n bottles of the
    provided beverage.
    """

    for i in range(n, 0, -1):
        print(i, "bottles of", drink, "on the wall,", i, "bottles of", drink)
        print("Take one down, pass it around,", i - 1, "bottles of", drink)



def buy(drink):
    pass


beer_song(7, "wine")
