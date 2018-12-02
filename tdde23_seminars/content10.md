
### Abstrakta datatyper

[[(animated)

Specialisering andra datatyper

Exempel: tid

`time` ⊊ `tuple_2d`
>>

Tillsammans med funktioner för arbete med typen

>>

Varför?
]]


--

### Abstraherar bort implementationsdetaljer

```python
# Utan abstraktion

time1 = (11, 56)
time2 = (13, 12)

hour = time1[0]
minute = time1[1]

sum = (
    time1[0] + time2[0] + (time1[1] + time2[1]) // 60,
    (time1[1] + time2[1]) % 60
)
```

--

### Abstraherar bort implementationsdetaljer

[[(animated)
```python
def new_time(hour, minute): return (hour, minute)
def hour(time): return time[0]
def minute(time): return time[1]
```

>>

```python
# Rör inte tupler diret
def add_times(time1, time2):
    return new_time(
        hour(time1) + hour(time2) + (minute(time1) + minute(time2)) // 60,
        (time1[1] + time2[1]) % 60
    )
```

>>

```python
# Med abstraktion

# Här rörs inte intern lagring eller beräkningarna bakom

time1 = new_time(11, 56)
time2 = new_time(13, 12)

sum = add_times(time1, time2)
```

]]



--

### Rätt data på rätt plats

[[(animated)
`velocity : float`

>>
`volume : float`

>>

```python
velocity = 5
volume = 10

fill_glass(velocity)
```
>>

### Duck typing

- "If it walks like a duck and it quacks like a duck, it must be a duck"

```html
<!--       _
       .__(.)< (MEOW)
        \___)   
 ~~~~~~~~~~~~~~~~~~-->
```

]]


--

## Baka in typinformation i datan


```python
velocity = ("velocity", int)
volume = ("volume", int)

>>> fill_glass(velocity)
Exception: Expected volume, got velocity
```




--

## Uppgift: designa Skapa ett eget abstraktionslager

```python
>>> a = create_fraction(8, 10)
>>> b = create_fraction(1, 5)
>>> is_fraction(a)
True
>>> is_fraction((5,3))
False
>>> print_fraction(fraction_minus(a, b))
3/5
>>> print_fraction(fraction_multiply(a, b))
4/25
>>> print_fraction(fraction_divide(b, a))
1/4
>>> print_fraction(create_fraction(2,4)) # Note: 2/4 -> 1/2
1/2
```

Lägg till fler funktioner om det finns tid (is_equal, multiply_int, ...)

--

## Del 1: Primitva funktioner - Skapar datatypen från rå data

[[(animated)
```python
def create_fraction(x, y):
    # Store normalized, allows (1/2 == 2/4) == True
    g = gcd(x, y)
    return ('F', x // g, y // g)
```

>>
```python
def numerator(frac):
    return frac[1]
def denominator(frac):
    return frac[2]
```

>>
```python
# Should this be called above?
def is_fraction(frac):
    return isinstance(frac, tuple) and frac[0] == 'F'
```
]]

--

## Del 2: Abstrakta funktioner - Opererar på datan

```python
def print_fraction(frac):
    assert(is_fraction(frac))
    print("{}/{}".format(numerator(frac), denominator(frac)))


def fraction_plus(x, y):
    assert(is_fraction(x))
    assert(is_fraction(y))
    return create_fraction(
        numerator(x) * denominator(y) + numerator(x) * denominator(y),
        numerator(x) * numerator(y)
    )

def fraction_divide(x, y):
    assert(is_fraction(x))
    assert(is_fraction(y))
    return create_fraction(
        numerator(x) * denominator(y),
        numerator(y) * numerator(x)
    )
```

# Intro till almanackan (labb 8)

--


### Uppgift: Algoritmutveckling

Uppgift 5E: Hitta lediga tider i en kalender

Designa översiktligt en algoritm för det.

- Vilka fall finns det?
- Hur ska indata/utdata vara strukturerat?
- Ungefär hur ska algoritmen fungera


--

--

## Nästa seminarie

- Gå igenom gamla uppgifter
- Förklara svårigheter

frask812@student.liu.se


