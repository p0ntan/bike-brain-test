# bike-brain-test

Ett repo som jobbar med fyra containrar där en är databas, en är server, en är en simulerad cykel och den fjärde är själva webbklienten. Databsen är mariadb, servern är i javascript, cykelhjärnarn i python och webbklienten vanlig html i en nginx container.

## Testa repot
Starta upp alla containrar med (kan ta lite tid med nedladdningar och uppsättningar):

```
docker-compose up -d --build
```

Det bygger de containrar som behövs och sedan startar nätverket igång.

Först startar mariadb, där en heathcheck görs så att inte express containern startar före databsen är uppe och snurrar vilket gör uppstarten tar lite längre tid. Detta kan man ändra så det blir effektivare/snabbare, men nu är bara tanken att det ska fungera.

Sedan startar express servern. Även där görs en healthcheck på ett liknande sätt som ovan, så att inte nästa container går igång före servern är uppe och snurrar. Sidan har url http://localhost:1337/, där det bara visar att servern är igång. Routen '/get' hämtar data från tabellen 'bike' i databasen.

Sedan startar de sista två containrarna igång, där ett pythonscript körs automatiskt och skickar data för 5 olika cyklar. Denna data skrivs även till databasen när den gör sina POST request (borde väl egentligen vara PUT). Datan skickas även ut via ett event, som sedan kan fångas upp på url:en http://localhost:1337/eventsource för olika klienter.

Kartan kan man hitta på url http://localhost:5000. Där kan man starta en simulering av alla cyklar på en knapp, som använder sig utav ett fetch till urlen http://localhost:1337/bikes/simulate. Via urlen triggas ett SSE igång och startar simuleringen för alla cyklar.

För att stänga ner nätverket.
```
docker-compose down -v
```
