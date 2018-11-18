## Uppgift 1: Patrick jagar doktorander

Patrick har ett problem, för att lösa det går vi igenom de tre första delarna av
programutvecklingsprocessen.

--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar


--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar

- En väg från en doktorand via alla andra


--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar

- En väg från en doktorand via alla andra
- Gå genom varje korridor

--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar

- En väg från en doktorand via alla andra
- Gå genom varje korridor *exakt en gång*


--

### Analys - Vad vill Patrick egentligen ha


- Besöka alla doktorander
- Se alla korridorer
- Vara effektiv
- Skalbar

- En väg från en doktorand via alla andra
- Gå genom varje korridor *exakt en gång*

- Eulerväg i en graf


--



## Specifikation

- Vad ska programet faktiskt göra?


--

## Specifikation

- Vad ska programet faktiskt göra?

- Ta en graf och undersök om det finns en eulerväg




--

## Design: Eran uppgift


Designa de funktioner och hjälpfunktioner som ni vill använda för att lösa problemet.


- Hur bör grafen lagras?
- Vilka funktioner finns?
    - Vad ska de heta och göra?
    - Exakt vilka indata tar de, och vilka utdata returnerar de?


Hur ska problemet lösas? Ungefärlig lösningsgång, inte fullständig programkod. Det tar vi senare!



--

### Muddy cards

- Vad har varit bra?
- Vad har varit dåligt?
- Något annat



--

## Datatypen set

- Lagrar mängder
- Oordnat - innehållet är det viktiga
- Ett element finns eller finns inte -> inga dubletter
- Lägg till element med `.add()`
- Kan jämföras med `==` `a == {"yolo", "test"}`


--

## Uppgift: Sudoku


Skriv färdigt kod för att kontrollera lösningen för en sudoku. 

Lösningen är korrekt om varje rad, kolumn och 3x3-block innehåller siffrorna 1-9 exakt en gång


- Se koden på kurshemsidan



