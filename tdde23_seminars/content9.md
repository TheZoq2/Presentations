## Uppgift 1: Patrick jagar doktorander

Patrick har ett problem, för att lösa det går vi igenom de tre första delarna av
programutvecklingsprocessen.

--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar


--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar

- En väg från en doktorand via alla andra


--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar

- En väg från en doktorand via alla andra
- Gå genom varje korridor

--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar

- En väg från en doktorand via alla andra
- Gå genom varje korridor *exakt en gång*


--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar

- En väg från en doktorand via alla andra
- Gå genom varje korridor *exakt en gång*

- Eulerväg i en graf


--



## Specifikation

- Vad ska programet faktiskt göra?


--

## Specifikation

- Vad ska programet faktiskt göra?

- Ta en graf och undersök om det finns en eulerväg




--

## Design: Eran uppgift


Designa de funktioner och hjälpfunktioner som ni vill använda för att lösa problemet.


- Hur bör grafen lagras?
- Vilka funktioner finns?
    - Vad ska de heta och göra?
    - Exakt vilka indata tar de, och vilka utdata returnerar de?


Hur ska problemet lösas? Ungefärlig lösningsgång, inte fullständig programkod. Det tar vi senare!


--

## Grafstruktur

```python
graph = {
        "A": ["C", "B"],
        "B": ["A", "C"],
        "C": ["A", "B", "D", "G"],
        "D": ["C", "E", "F"],
        "E": ["D", "F"],
        "F": ["D", "E"],
        "G": ["H", "C"],
        "H": ["G"]
        }
```

--

## Kod

```python
def has_euler_path(graph):
    """ Checks if a graph has an euler path """
    odd = []
    even = []
    num_edges = 0

    for key in graph:
        if len(graph[key]) % 2 == 1:
            odd += [key]
        else:
            even += [key]
        num_edges += len(graph[key])

    # Handshaking lemma: We have counted every edge twice
    num_edges = num_edges // 2 


    if not odd:
        return traverse(even[0], []) # Check if an Euler cycle exists (special case)
    elif len(odd) == 2:
        return traverse(odd[0], []) # Check if an Euler path exist
    else:
        return False
```

--

```python
def traverse(start, visited_edges):
    """ Traverses a graph and looks for an euler path """
    if len(visited_edges) == num_edges:
        return True

    for neighbor in graph[start]:
        edge = {start, neighbor}
        if edge not in visited and traverse(neighbor, visited_edges + [edge]):
            return True

    return False
```




--

### Muddy cards

- Vad har varit bra?
- Vad har varit dåligt?
- Något annat



--

## Datatypen set

- Lagrar mängder
- Oordnat - innehållet är det viktiga
- Ett element finns eller finns inte -> inga dubletter
- Lägg till element med `.add()`
- Kan jämföras med `==` `a == {"yolo", "test"}`


--

## Uppgift: Sudoku


Skriv färdigt kod för att kontrollera lösningen för en sudoku. 

Lösningen är korrekt om varje rad, kolumn och 3x3-block innehåller siffrorna 1-9 exakt en gång


- Se koden på kurshemsidan



--



```python
def check_row(board, row):
    """ Checks if a row is a correct sudoku row (it contains numbers 1 through 9) """
    seen = set()
    for i in range(9):
        seen.add(board[row][i])

    return is_valid(seen)
```


```python
def check_col(board, col):
    """ Checks if a column is a correct sudoku column (it contains numbers 1 through 9) """
    seen = set()
    for i in range(9):
        seen.add(board[i][col])

    return is_valid(seen)
```

--

```python
def check_block(board, block):
    """ Checks if a block is a correct sudoku block (it contains numbers 1 through 9) """
    x = block % 3
    y = block // 3

    seen = set()
    for row in range(0 + x*3, 3 + x*3):
        for col in range(0 + y*3, 3 + y*3):
            seen.add(board[col][row])

    return is_valid(seen)
```

--
