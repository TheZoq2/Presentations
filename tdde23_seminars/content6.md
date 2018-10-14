# Något i kursen som är extras svårt?

--


### Testning

```python
def count(seq):
    """
    Counts the number of elements in a given list
    including elements in inner lists
    """
    if not seq:
        return 0
    elif isinstance(seq[0], list):
        return count(seq[0]) + count(seq[1:])
    else:
        return 1 + count(seq[1:])
```

- Testa `count` med en funktion `test_count`
- Vad ska returneras?
- Vad ska printas?
- Vilka testfall?


--

## Diskussion om paradigm

```markdown
- Om man programmerar funktionellt kan man ej använda listor då de är objekt.

- Python stödjer objektorienterad programmering.

- Om man programmerar funktionellt får funktioner inte ha sidoeffekter.

- Om en funktionellt programmerad funktion tar emot en lista får denna inte ändras,
dock kan kopior av listan ändras.

- Funktionen print() kan användas i funktionell programmering.

- Funktionell programmering är generellt snabbare än annan programmering.

- Inom funktionell programmering används ofta rekursion istället för for-loopar.

- När man programmerar funktionellt måste all kod vara strikt funktionell.
```


--

### Git

- .gitignore
- merge

--

### Dubbelrekursion

```python
{
    "Carl Gustaf": {
        "Victoria": {
            "Estelle": {},
            "Oscar": {}
        },
        "Carl Philip": {
            "Alexander": {}
        },
        "Madeleine": {
            "Leonore": {}
            "Nicolas": {}
        }
    },
    "Birgitta": {}
}
```

- Returnera "vägen" till en given person.
- Om personen inte finns, returnera `None`

```python
>>> ascendants(tree, "Nicolas")
["Carl Gustaf", "Madeleine", "Leonore"]
```

--



