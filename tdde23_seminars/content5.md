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

# Gör inte sådär
```
