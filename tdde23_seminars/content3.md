### Uppgift: Kommentering

- Skriv kod som på så tydligt sätt itererar över alla kort i en kortlek
- Korten är numrerade från 0 till 51
- Skriv gärna kommentarer





--


### Programmeringspraxis

```python
def e(b):
    if b < 2: return False
    else:
        for d in range(2, int(b**(1/2))):
            if not b % d: return False
        return True
```


- Vad gör koden?

--

### Programmeringspraxis

```python
def a(b):
    c = b[0]
    for i in range(len(b)):
        c = b[i] if b[i] - c < 0 else c
    return c
```


- Vad gör koden?
- Föreslå bättre variabelnamn





--

#### Instruktioner: Dubbelrekursion

1. Skriv en funktion som går igenom en lista och dess underlistor och returnerar elementet med det största värdet. _Tips: Gör en fallanalys!_
2. I vilken ordning kommer heltalselementen att besökas i sekvensen [0, [7, [1, 27], 2], 3]?
3. Vilken ändring behöver göras för att ändra ordningen elementen besöks?






--

### Metoder


#### Uppgift: Metoder

Skriv funktioner som med hjälp av Pythons sträng-metoder manipulerar indata på valfritt sätt.

#####  Exempel

```python
"Hello noob" => "h3ll0 n00b"
"Super sale" => "!!!SUPER SALE!!!"
"from_snake_case_to_camel_case" => "fromSnakeCaseToCamelCase"
"/dir/on/linux/to/windows/" => "C:\dir\on\linux\to\windows"
"Hola" => "¿Hola?"
"Jag är vilse" => "Jojagog äror vovilolsose"
"Best idea ever" => "Best. Idea. Ever"
" too\n much\n whitespace\n       " => "too much whitespace"
```
