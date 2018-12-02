# Något i kursen som varit extra svårt?


--

### Undantagshantering

Lägg in undantagshantering i följande funktioner


```python
def run_with_lock():
    while file_exists("/tmp/lock")
        pass
    create_file("/tmp/lock")
    do_some_processing()
    remove_file("/tmp/lock") # What happens if this is never run?


```


```python
days = ["monday", "tuesday", ... "sunday"]
def get_nth_day(n):
    return days[n]


```

```python
def user_function():
    day_number = input("Enter day number")
    day_name = get_nth_day(day_number)
    print("The name of day {} is {}".format(day_number, day_name))
```





--

### Docstrings

[[(animated)
- Beskriv *allt* funktionen gör
>>
    - Funktionens "kontrakt"
>>
- Indata och utdata
>>
- Exceptions
>>
- Andra sidoeffekter

>>
Ska skrivas med ett speciellt format för läsbarhet och andra vekrtyg

>>
- Använd `"""`, inte #
>>
- Precis efter funktionsdefinitionen
]]




--

Lägg till docstrings till följande funktioner

```python
def circle_area(radius):
    if radius < 0:
        return None
    return math.pi * radius**2
```

```python
def save_config(config, filename):
    data_to_save = stringify(config) # ValueError if input is not a valid config
    if not is_path(filename):
        raise ValueError("Filename must be a valid path")
    bytes_written = 0
    with open(filename) as f:
        bytes_written = write(file)
    return bytes_written
```

```python
def map_rec(seq, fn):
    if not seq:
        return []
    else:
        [fn(seq[0])] ++ map_rec(seq[1:], fn)
```

Skriv svar på [https://goo.gl/YsqfNy](https://goo.gl/YsqfNy)




--

# Tentauppgifter

https://www.ida.liu.se/~TDDE24/tenta/exempel/tenta.txt


--

### Uppgift 1


Generera LIU-id från för och efternamn samt slumptal mellan 100 och 999. Om
ett namn är kortare än 3 bokstäver används de som finns

```python
>>> id("Ture", "Teknolog")
'turte155'
>>> id("Bo", "Ek")
'boek675'
>>> from random import randint
>>> randint(10, 19)
15
>>> randint(10, 19)
12
```

Skriv svar på [https://goo.gl/YsqfNy](https://goo.gl/YsqfNy)


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

