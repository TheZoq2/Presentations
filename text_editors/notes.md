# Introduktion

<!--- Hur mycket ska jag referera till python -->

Som programmerare kommer ni att skriva mycket kod och för det behöver man ett bra verktyg: en texteditor.
Texteditorns uppgift är egentligen bara att låta oss användare skriva rå text som vi sedan
kan skicka till en kompilator eller interpretator. Rå text innebär att texten som skrivs sparas "direkt"
till disken utan någon formatering och annat skräp. Detta innebhär att word inte alls fungerar som texteditor
för kod medan *paint*, som om man sparar i rätt format låter en föra in specifika bitar i koden faktiskt går
att programmera med.

# Notepad

Antagligen har ni alla stött på programmet notepad. Det uppfyller kriteriet att
man kan spara och editera råa textfiler och är definitivt kapabelt att fungera som
kodeditor men det saknar också rätt många funktioner.

Ni har säkert någon gång öppnat en fil som har fått en superlång scrollbar medan
texten bara tar upp en rad.

Den har även väldigt få inställnignar för hur kod ska formateras coh visar inte radnummer
vilket är väldigt bra att ha när python säger att det är ett fel på en specifik rad.

# Avancerade notepads

Så notepad kanske inte är det bästa alternativet för att skriva ett helt program i, vi vill
ha något mer avancerat.

Ett första steg kan vara att titta på moderna texteditorer som sublime text, atom, notepad++ och
visual studio code. Dessa editorer lägger till rätt mycket funktioner som gör programmering lättare
till exempel

- Syntax highlighting
- Automatchning av paranteser
- Radnummer
- Projekt
- Grundläggande autocomplete
- mycket mer

** Kort demo i atom **

Här visade jag atom, men alla de andra editorerna jag nämnde fungerar på liknande sätt.

# IDE

De här texteditorerna gör väldigt mycket för att göra skrivning och formatering av
kod enklare, men de är också väldigt generella och fungerar för många språk samtidigt.

Detta gör också att de inte är anpassade för specifika språk och inte enkelt kan implementera
funktioner som gör till exempel python enklare att skriva.


** Demo **
- Bra autocomplete
- Refactoring
- Run

# Tillbaks till avancerade notepads

Som ni kan se är IDEer är väldigt bra verktyg och kan göra många jobbiga
ändringar i ett stort projekt mycket enklare, men ändå väljer många att använda
någon av de tidigare nämnda editorerna, varför?

- Ett IDE per språk
- "Inlåst" i idets konfiguration och verktyg
- Kostar ofta
- Inte lika användbara för dynamiska språk
- Man kan få mycket av samma saker med plugins till andra editors


# Emacs/vim

De editorer jag har pratat om hitils fungerar ungefär på samma sätt som notepad för
vanlig texteditering och bygger på det med extra funktioner. Det finns dock två editorer
som ni antagligen kommer att stöta på någon gång som skiljer sig rätt mycket från den konventionen:
Emacas och vim

Både vim och Emacs har sina grunder i editorer från mitten av 70-talet och det finns få saker
som gör programmerare mer elitiska än att de använder någon av dem. Elitismen har nått såna nivåer
att wikipedia har en sida med titeln "Editor war" om ämnet.

Även om jag som medlem i "the cult of vi" gärna skulle säga att vim är det bästa som finns och att emacs
är skit så vet jag att det inte är sant. Men jag kan i alla fall ge en bild av hur vi fungerar och
varför det är värt att investera tid i att lära sig en texteditor där ctrl+z inte ångrar.

Sen kommer Emil, som är mycket bättre än mig på att använda Emacs kan göra samma sak för Emacs

## Vim

Vim är uppdelad i 2 eller 3 moder beroende på hur man ser på saker. Dels finns det "insert" mode
där den beter sig ungefär som en vanlig texteditor men utan många kortkommandon, och så finns
det edit-mode och visual-mode där alla kortkommandon finns.


** Rätt mycket av det här kan nog vara en demo**

I edit mode har nästan alla knappar på tangentbordet bytts ut från att skriva ett tecken
till att utföra ett kommando. Till exempel används hjkl istället för piltangenter
u och r gör undo och redo, och x tar bort ett tecken, ungefär som backspace.
I och esc tar en mellan edit- och insert mode.

Men det finns många mer avancerade kommandon också, speciellt om man kedjar dem. Till exempel
används `ci(` för att ta bort allt innom parantesen man står i, och gå in i insert mode där.
Eller `dt;` som tar bort alla tecken från pekaren till ett semikolon.

** Nämn något om att vim har en grammatik och att det är mycket enklare och kraftfullare om man
tänker på det **



** Antagligen på slutet så jag kan visa att det inte är så svårt **

Det finns ett klassikt skämt att det bästa sättet att generera en slumpmässig sträng är att ge
vim till någon som inte har använt det tidigare och be dem att gå ur editorn och frågan "How to exit the Vim editor?"
på stack overflow har visats 1.6 miljoner gånger.

# Nano


# Välj rätt verktyg för jobbet


Elitism är en grej. Ignorera det

"Eriks vanliga emacs sak"


# Terminal
