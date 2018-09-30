### Att få hjälp

Vad kan man göra om det är något i kursen man inte förstår?

Hur kan man få hjälp?



--

### Listbyggare

```python
# 1. Givet en lista med tal, bygg en ny lista av alla icke-negativa tal
[1, -1, 45.3, 4711, -273.15] > [1, 45.3, 4711]

# 2. Givet en lista med strängar, bygg en ny lista av teckenkoden för första
#    bokstaven i varje sträng (använd ord-funktionen för att få ut teckenkoden)
["Apa", "Banan", "Citron"] > [65, 66, 67]

# 3. Bygg en lista av alla näst minsta tal i underlistorna i en given lista (du
#    kan förutsätta att listan består av underlistor med minst två tal)
[[17, 4, 8], [9, 14, 2, 7], [33, 14]] > [8, 7, 33]

# 4. Bygg en lista av strängar som endast innehåller 'a' i given lista men byt
#    ut alla 'a':n mot \*'
['apelsin', 'banan', 'citron'] > ['*pelsin', 'b*n*n']

# 5. Skapa en lista med alla tal mellan 0 och 100 som är delbara med 3 eller
#    5 men ej delbara med 15
[3, 5, 6, 9, 10, 12, 18 ...]

# 6. Skapa en 5x5 identitetsmatris (dvs. en 2d-lista fylld med nollor, men ettor
#    längs ena diagonalen)
[
    [1, 0, 0, 0, 0]
    [0, 1, 0, 0, 0]
    [0, 0, 1, 0, 0]
    [0, 0, 0, 1, 0]
    [0, 0, 0, 0, 1]
]
```






--

### Git

Hur gör man följande operationer?

1. Skapa en commit som ångrar en tidigare commit
2. Ångra en commit som inte har pushats (utan att skapa en ny commit)
3. Ändra commit-meddelandet eller lägg till fler ändringar på senaste committen
4. Ångra git add
5. Ta bort alla ändringar som gjorts sedan senaste committen
6. Spara undan och återställa ändringar som gjorts sedan senaste committen. (kan vara bra om man vill pulla ändringar utan att committa sina egna)
7. Se ändringarna som gjordes för 3 commits sedan

--

### Merge och merge conflicts

Kan vara lite läskigt men är nästan aldrig något att oroa sig över


--

### Tips

Prova att använda git mer än vad som krävs

- Arbeta på två datorer
- Committa ofta
- Det är svårt att förstöra saker med git

--


Peter slår bollar på driving rangen vid Campus Valla med sina vänner varje dag.
För att få en insyn i hur långt han och hans vänner kan slå vill han kunna lagra resultat på ett enkelt sätt.
Resultaten vill han lagra sorterade, och genom att kalla på en funktion vill han kunna lägga till ett eller flera resultat.
När ett resultat lagts till ska resultaten fortfarande vara sorterade.
Peter kommer endast att använda din funktion till att lägga till resultat.

1. Analysera problemet!
2. Specificera vad Peter vill ha!
3. Designa de funktioner ni behöver för att lösa problemet!
4. Vilka datatyper används?
5. Beskriv funktionerna och de parametrar som funktionerna tar in och vilken data de returnerar.
6. Föreslå också namn på funktionerna.
7. Hur löser ni problemet? (OBS! Ingen kod!)





--

### Externa bibliotek


Vad gör följande funktioner och hur används de?
http://docs.python.org/3/library/index.html

1. `math.atan2`
2. `math.copysign`
3. `"yolo".center(10, "-")`
4. `str.format` där `str` är en sträng
5. `str.split` där `str` är en sträng
6. `dict.keys` där `dict` är en dictionary

http://docs.opencv.org/2.4/modules/refman.html
8. `cv2.threshold`
9. `cv2.blur`
10. `cv2.mean`
