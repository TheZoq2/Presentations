# Introduktion

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


- Tanken med presentationen: Ge en bild av vilka alternativ som finns

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
- snppets
- run kräver terminalen
- Fungerar med C++
- mycket mer

** Kort demo i atom **

Här visade jag atom, men alla de andra editorerna jag nämnde fungerar på liknande sätt.

# IDE

De här texteditorerna gör väldigt mycket för att göra skrivning och formatering av
kod enklare, men de är också väldigt generella och fungerar för många språk samtidigt.

Detta gör också att de inte är anpassade för specifika språk och inte enkelt kan implementera
funktioner som gör till exempel python enklare att skriva.



** Demo **
- Run
- varningar
- Bra autocomplete
    - Med förslag på parametrar
        - `numpy.array_equal`
- Refactoring
    - bev->beverage
- Fungerar inte med C++

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

Under nolle-p har ni säkert hört orden "det var bättre förr" några gånger. Även
om det kanske inte alltid är sant finns det ändå folk som jag som envisas med
att använda texteditorer som är äldre än oss själva.

De två texteditorerna jag pratar om är "emacs" och "vim" och till skilnad från de
andra editorerna jag pratat om hittils så är de inte "notepad med extra features"
utan bryter rätt många av konventionerna vi är vana vid.

Ofta på grund av att konventionerna vi är vana vid inte fanns för 40 år sedan när emacs och vim påbörjades,
men ibland för att vi som använder dem tycker att de är bättre.

## Vim

Låt oss börja med att titta på "vim"

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


Till sist, varför kan det vara värt att spendera tid på att lära sig vim?

- Mer effektiv editering
- Kanske mer ergonomiskt
- vi finns överallt
- kan köras i terminalen

Och varför inte?

- Tar mycket tid
- Kan bli svårt att sammarbeta med labbpartners etc.
- Produktivitetsökningen kanske inte är så stor

### Macron?



## Emacs

Den andra stora gamla editorn är som sagt Emacs och tyvärr har jag inte alls lika
mycket erfarenhet av emacs som av vim. Jag skulle till och med behöva en "how to 
exit emacs" stack overflow-post men jag ska ändå försöka ge en hint om vad emacs
kan göra baserat på vad jag hört.

Precis som vim har emacs också kortkommandon som inte följer det vi är vana vid
och mer avancerade kortkommandon än vanligt. Istället för att ha olika moder har
de istället "ctrl" och "meta" där meta är alt- eller windows-tangenten.

Emacs stora fördel över andra editors är konfigurerbarhet. Vim har plugins som gör
rätt mycket men det är inget mot vad emacs har. Som ett typexempel på det kan man
med några korta knapptryckningar spela tetris, direkt i sin editor. Och till skilnad
från en potentiell vim-version av tetris har emacs riktig grafik och inte bara text.

Ett coolt exempel på det är pluginen `auctex` som renderar latex-dokument medan
man editerar dem. Erik kommer att berätta mer om latex senare, men i grunden är det
ett programmeringsspråk för att skriva dokument. Språket är inte jätteläsbart
i ren textform vilket är varför acutex kan vara bra.


# Välj rätt verktyg för jobbet

Som ni kan se finns det många texteditorer att välja på och under er utbildning
kommer ni säkert att stöta på någon som jag som försöker övertala er
att byta till vim eller emacs eller någon annan editor. Först och främst, lyssna
inte på oss, att vara elitisk om texteditorer är lite av en tradition, inte minst
med tanke på att det finns en dedikerad wikipediasida om rivalitet mellan emacs- och
vimanvändare.

Om du har något som fungerar så använd det, men om du någon gång har lite tid över
och tyckte att det jag pratade om här var intressant är det definitivt en idé
att installera och prova någon av editorerna jag nämnde. Och ofta går det
också att kombinera de olika alternativen. Nästan alla editorer har plugins
för att emulera både vim och emacs. Till och med emacs har "evil mode" som
lägger till vim-bindings, även om både hardcore emacs- och vi-användare skulle
hävda att det är dödssynd.

Till sist vill jag också ge lite tips:

1. Om ni vill ha en mer kraftfull editor på idas datorer men inte orkar installera
något går det att köra `gedit` som är lite lättare att använda än emacs.
2. Även om ideer är bra är det bra att kunna vara utan dem, så i inledande
kurserna ni läser kan det vara bra att hålla sig borta
3. Om ni vill editera en fil via terminalen någon gång finns ett bra program
som heter `nano` så slipper ni lära er `vim` bara för att editera någon enstaka fil.


# Terminal

Innan rasten/jag lämnar över vill jag också säga några ord om terminalen och visa några
tips som gör terminalen mycket trevligare att använda.

Först och främst, varför ska man använda terminalen istället för en grafisk filhanterare?

- Kan vara snabbare
- Fungerar på samma sätt på alla unix-system, även remotely
- Slipper implementera gui själv

Passar dock inte alltid, typ när man hanterar bilder. Åter igen, använd rätt verktyg för
jobbet


- Tab completion
- CTRL+R
- cd -
- ls --color=auto
- Find
- Alias
- Wildcards
- grep -R

## Mer avancerade saker:
- Fuzzy matching
- Ändra prompten
- Bash, Zsh, Fish
- fzf
