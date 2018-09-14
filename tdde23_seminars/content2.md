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
