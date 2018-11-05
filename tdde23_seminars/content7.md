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
   for each element e in seq except the last
       if e is greater than the element after e then
           swap e and the next element
       end if
   end for
   if we did not swap in the loop above then
       break outer loop
   end if

   # Second loop
   for each element e in seq except the last, going backwards
       if e is greater than the element after e then
           swap e and the next element
       end if
   end for
until no swaps took place in the second loop```
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

### Cellulära automater

Se kurshemsidan för kodskelett och uppgift

--

### Cellulära automater

```python
def left(seq, i):
    """ Returns the left element in a circular list """
    return seq[(i-1) % len(seq)]

def right(seq, i):
    """ Returns the right element in a circular list """
    return seq[(i+1) % len(seq)]

def next_state(seq, pred):
    """
    Returns the next state of the automaton based on the
    rules defined by the predicate function
    """
    return [pred(left(seq, i), seq[i], right(seq, i)) for i in range(len(seq))]
```

--

### Cellulära Automater

Skriv en predikatsfunktion som uppfyller följande:

```
| a     | b     | c     | b i nästa generation |
| ----- | ----- | ----- | -------------------- |
| död   | död   | död   | död                  |
| död   | död   | lever | lever                |
| död   | lever | död   | lever                |
| död   | lever | lever | lever                |
| lever | död   | död   | lever                |
| lever | död   | lever | lever                |
| lever | lever | död   | lever                |
| lever | lever | lever | död                  |
```

Det snyggaste sättet att göra detta på är att beskriva det med ett booleskt uttryck.

När funktionen är klar, testa att skicka in den till *next_state* och se vilket mönster som bildas.


--

### Undantagshantering

Labb 5c är lite konstig.

Att fånga ett undantag i onödan gör debugging svårare


--

### Undantagshantering

Undantag fångas av tre anledningar:


```python
# 1. För att ge en mer hjälpsam exception
def third_element(tpl):
    try:
        return tpl[2]
    except IndexError:
        raise TypeError("Length of input must be at least 3")


# 2. För att städa upp:
try:
    file = openFile()
    process_file() # Might throw some exception
except:
    close(file)
    raise # Raise the same exception

# 3. För att rädda användaren från läskiga errormeddelanden

try:
    in = input()
    print(in[3])
except IndexError:
    print("Input must contain at least 3 characters")
```


--

# Gamedev-workshop
