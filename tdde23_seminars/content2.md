Skriv en funktion `find_uncut` som givet en lista på formatet

```python
[
    [false, true, true, false...]
    .
    .
    .
    [true, false, true, true, ...]
]
```

Returnerar en lista av tuples av koordianter för alla oklipta rutor.

```python
>>> find_uncut( [
            [True,  False, True,  False],
            [False, False, True,  True],
            [True,  False, False, True],
            [False, True,  True,  True]
        ]
    ))


[(1, 0), (3, 0), (0, 1), (1, 1), (2, 1), (2, 2), (0, 3)]

```


---




# Rekursion



---



## Ett exempel

```python
def factorial(n):
    if n == 1:
        return 1
    else:
        rest = factorial(n - 1)
        result = rest * n
        return result
```


---

## Lite kortare

```python
def factorial(n):
    if n == 1:
        return 1
    else:
        # rest = factorial(n - 1)
        # result = rest * n
        result = factorial(n - 1) * n
        return result
```

---

## Ännu kortare
```python
def factorial(n):
    if n == 1:
        return 1
    else:
        # rest = factorial(n - 1)
        # result = rest * n
        # result = factorial(n - 1) * n
        return factorial(n - 1) * n
```






--

### Fysisk rekursion

- Ni är funktioner
- Kort med siffror: Indata
- Post-it lappar
    - Lokala variabler
    - "CPUn"
- Skriv delberäkningar på en post-it
- Funktionsanrop: Skriv indatan på en ny post-it
- Return: Ge tillbaka en post-it med resultatet


--

### Fysisk rekursion

```python
def sum_squares(seq):
    if not seq:
        return 0
    elif not seq[1:]:
        return seq[0]**2
    else:
        sum_two_first = seq[0]**2 + seq[1]**2
        return sum_two_first + sum_squares(seq[2:])
```

- Skriv delberäkningar på en post-it
- Funktionsanrop: Skriv indatan på en ny post-it
- Return: Skriv resultatet längst ner och skicka tillbaka lappen




--

### Tuple och rekursion

```python
def min_max(seq):
    if not seq:
        return (None, None)
    if len(seq) == 1:
        return (seq[0])

    (min, max) = min_max(seq[1:])

    if seq[0] < min:
        a = seq[0]
    if seq[0] > max:
        b = seq[0]

    print("min: ", min, " max: ", max)

    return (min, max)
```

1. Funktionen körs med [3,1,2] som indata. Vad skrivs ut av print-satsen? Vad returnerar funktionen?
1. Går funktionen att köra med [1,2, "abc"] som indata? Varför?
1. Går funktionen att köra med (1,2,3) som indata? Varför?




--

### Palindrom

Skriv en rekursiv och en iterativ funktion som tar en sträng och returnerar huruvida strängen är ett palindrom. Det vill säga: om strängen är den samma framlänges som baklänges.





--

### Dictionaries

Vad gör följande funktion?
```python
def dict_func(dict):
    result = {}

    for key in dict:
        if dict[key] in result:
            result[dict[key]].append(key)
        else:
            result[dict[key]] = [key]
    return result
```
