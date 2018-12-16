--

## Tentainformation

Info finns ocksw på kurshemsidan

[[(animated)
- 6 uppgifter med *ungefär* stigande svårighetsgrad
>>
- Liverättning (typ)
>>
    - En inlämning per uppgift
>>
    - Inte säkert att allt blir rättat

>>
#### Krav på koden

>>
- Samma funktionsnamn som i uppgiften
>>
- Övriga variabler/funktioner ska ha beskrivande namn
>>
- Välstrukturerade och väldokumenterade lösningar krävs **docstrings**
>>
- Lösningar ska vara generella
]]



--

# Tentauppgifter

https://www.ida.liu.se/~TDDE24/tenta/exempel/tenta.txt


--

### Uppgift 2


Byt ut alla förekomster av ett element i en rak lista mot ett annat. Gå bara igenom
listan en gång (det betyder att t.ex. `remove()` inte får användas).

Skriv en rekursiv och en iterativ funktion

```python
  >>> replace('old', 'new', ['old', 'a', 'old', 'b'])
  ['new', 'a', 'new', 'b']
  >>> replace(1, 'x', [0, 1, 2, 1, 7])
  [0, 'x', 2, 'x', 7]
```

[https://goo.gl/YsqfNy](https://goo.gl/YsqfNy)




--

### Uppgift 3A

`collector(pred, list)` ska gå igenom en "djup" lista och returnera alla element som uppfyller
en predikatsfunktion. Elementen i resultatlistan ska komma i samma ordning som i originalet, men
resultatlistan ska vara platt. Använd inte `filter`

```python
>>> pred = (lambda x: isinstance(x, str))
>>> collector(pred, ['a', 1, ['b', ['c'], 2], 'd', 3])
['a', 'b', 'c', 'd']
```


--


### Uppgift 3B

Skriv en funktion numbers_in_interval som med hjälp av collector plockar
ut alla heltal som ligger inom ett angivet intervall (inklusive gränserna).
Listan kan innehålla även andra saker än tal. Exempel:

```python
>>> numbers_in_interval(10, 20, [['x', 5, [15, 'y'], 20], 2, 'z', 17])
[15, 20, 17]
```




--

### Uppgift 5

```
          -----> C
         /        \
  A --> B <---     \
   \          \     \
    ---------> D <---
                \
                 --> E --> F
```

Givet en riktad graf och en startpunkt, returnera `True` om man hamnar i en oändlig loop vid traversering


```python
>>> test_graph = {'a': ('b', 'd'), 'b': ('c'), 'c': ('d'), 'd': ('b', 'e'), 
                'e': ('f'), 'f': ()}
>>> has_loop('a', test_graph)
True
>>> has_loop('c', test_graph)
True
>>> not has_loop('e', test_graph)
False
```

