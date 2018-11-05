### Longest sequence

Skriv i pseudokod en funktion `longest_sequence(seq, elem)` som beräknar den längsta följden av det givna elementet i en lista.
Skriv en rekursiv version och en iterativ version.

**Körexempel:**

```python
>>> longest_sequence([1, 3, 2, 1, 1, 1, 2, 1, 6, 5], 1)
3
>>> longest_sequence([1, 1, 3, 2, 1, 2, 2, 6, 5], 6)
1
```

--

### Pseudokod


```python
# Översätt följande pseudokod till python. (Koden är inte exakt samma som finns på kurshemsidan)

Cocktail shaker sort
input:
    seq: a list of sortable items
output:
    nothing, this function modifies the given list
repeat
    # First loop
    for each i in 0 to the length of seq - 2 do
        if i:th item in seq is greater than the 'i+1'th item then
            swap the i:th item in seq with the 'i+1':th item in seq
        end if
    end for
    if we did not swap in the loop above then 
        break outer loop
    end if

    # Second loop
    for each i in length of seq - 2 to 0 do
        if the i:th item in seq is greater than the 'i+1':th item in seq do
            swap the i:th item in seq with the 'i+1':th item in seq
        end if
    end for
until no swaps took place in the second loop
```

--

### Listmultiplikation

```python
# Vad är skillnaden i hur listorna är lagrade?
# Vilken av funktionerna är snyggast?

def create_grid(width, height):
    grid = []
    for row in range(height):
        grid.append([])
        for col in range(width):
            grid[row].append(False)
    return grid

def create_grid2(width, height):
    grid = []
    for i in range(height):
        grid.append([False] * width)
    return grid

def create_grid3(width, height):
    return [[False] * width] * height

def create_grid4(width, height):
    return [[False for i in range(width)] for i in range(height)]

def create_grid5(width, height):
    return [[False] * width for i in range(height)]
```

--


--

# Undantagshantering



--

# Gamedev-workshop
