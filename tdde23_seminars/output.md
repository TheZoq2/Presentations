<!-- theme: sjaakvandenberg/cleaver-light -->
<!--theme: jdan/cleaver-retro-->
theme: ../cleaver-light

---

# TDDE2[34] Seminarie 1 - Experimentering

--


## Introduktion

- Frans Skarman
- Labass för D1-b
- Läser D5
- [frask812@student.liu.se](mailto:frask812@student.liu.se)


---

## Seminarier

- Ett per vecka
- "Interaktiv lektion"
- Seminariematerial finns på kurshemsidan
- Läs studiematerialet innan
- Ställ frågor och ge förbättringsförslag

---

## Seminariegrupper

- En sak i taget
- Experimentering
- Diskussion och analys


- Samma innehåll
- Välj det som passar er
- Prova alla om ni är osäkra

---

## Studiematerial

 - [test](test)
 - [test2](test2)



---

## Uppgift: Introduktion till satser och uttryck

```python
def fibonacci(n):
    if n < 3:
        return n-1
    a = 0
    b = 1

    for i in range(n - 2):
        c = b
        b = a + b
        a = c
    return b
```



1. Hur många satser finns det i koden?
-  Hur många sammansatta uttryck finns det i koden?








---

## Uppgift: Satsanalys

```python
def fibonacci(n):
    if n < 3:
        return n-1
    a = 0
    b = 1

    for i in range(n - 2):
        c = b
        b = a + b
        a = c
    return b
```



1. Vad gör funktionen? Vad returnerar den? Vilken indata hanterar funktionen.
1. Vad används variabeln c till? Föreslå ett bättre namn på variabeln.
1. Vilken sorts tal är returvärdet? (Heltal eller flyttal).
1. Vad kommer hända om du ger den ett flyttal?








---

## GCD (Greatest common divisor)


```
+---
| gcd(a, 0) = a
| gcd(a, b) = gcd(b, a mod b)
+---
```


1. Beskriv hur beräkningen går till
1. Skriv gcd i python-kod
1. Räkna antalet satser och sammansatta uttryck i din funktion








---

```python
g = 0
def outer(in1):
    a = "a"
    def inner(in2):
        print(a) # 1.
        c = "c"
        a = "a from inner"
        print(in2) # 2.

    print(c) # 3
    print(a) # 4

    inner("into inner")

    print(c) # 5

    print(a) # 6

    if g == 0:
        d = "g = 0"
    else:
        e = "g != 0"

    print(d) # 7.
    print(e) # 8.
```



--

# Frågor



