def cocktail(seq):
    swapped = True
    while swapped:
        swapped = False
        # for each i in 0 to the length of seq - 2 do
        for i in range(len(seq) - 2):
            # if i:th item in seq is greater than the 'i+1'th item then
            if seq[i] > seq[i+1]:
                # swap the i:th item in seq with the 'i+1':th item in seq
                tmp = seq[i]
                seq[i] = seq[i+1]
                seq[i+1] = tmp

                swapped = True
        # if we did not swap in the loop above then break outer loop
        if not swapped:
            break

        swapped = False
        # for each i in 0 to the length of seq - 2 do
        for i in range(len(seq) - 2, -0, -1):
            if seq[i] > seq[i+1]:
                # swap the i:th item in seq with the 'i+1':th item in seq
                tmp = seq[i]
                seq[i] = seq[i+1]
                seq[i+1] = tmp

                swapped = True




import random
import math

a = [math.floor(random.random() * 100) for _ in range(10)]
cocktail(a)
print(a)
