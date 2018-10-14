### Högre ordningens funktioner

`count` ska gå igenom en lista och räkna ut hur många av elementen uppfyller ett givet predikat.
Funktionen tar en rak lista samt en predikatfunktion

Definiera predikatfunktionerna `is_number` och `is_positive`

Lös uppgiften iterativt eller rekursivt

Använd *inte* inbyggda iteratorer

```python
>>> count([17, 3.14, "banan"], is_number)
2
>>> count([1, -1, 45.3, 4711, -273.15, "apelsin"], is_positive)
3
```



--

### Högre ordningens funktioner


- Det kan vara jobbigt att definiera småfunktioner hela tiden.

- Lambda-uttryck är lösningen

- `lambda <inputs>: <result>`

- Kan bara beräkna ett uttryck





--

```python
>>> (lambda x: x + x)(10)


>>> (lambda x, y: x * y)(2 + 3, 4 * 5)


>>> (lambda x: x + 1)((lambda y: y + 2)(3))


```



--


### Lambda & Count

- Räkna antalet förekomster av strängen "a"
- Räkna antalet listor som är två element långa
- Räkna antalet tal som är delbara med tre

```python
>>> count(["a", "B", "c", "a", "d"], ___________________)
2
>>> count([["a"], [1, 2], ["b", "c"]], ___________________)
2
>>> count([1, 2, 3, 4, 5, 6, 9], ___________________)
3
```





--

### Inbyggda iteratorer

Vad är en iterator?



--

### Iteratorer

Kan vi skriva om `count` med iteratorfunktioner




--

### Funktionell programmering


- Om man programmerar funktionellt kan man ej använda listor då de är objekt.
- Python stödjer objektorienterad programmering.
- Om man programmerar funktionellt får funktioner inte ha sidoeffekter.
- Om en funktionellt programmerad funktion tar emot en lista får denna inte ändras, dock kan kopior av listan ändras.
- Funktionen print() kan användas i funktionell programmering.
- Funktionell programmering är generellt snabbare än annan programmering.
- Inom funktionell programmering används ofta rekursion istället för for-loopar.
- När man programmerar funktionellt måste all kod vara strikt funktionell.





--

### Till nästa gång:

Maila frågor och funderingar till nästa seminarie



