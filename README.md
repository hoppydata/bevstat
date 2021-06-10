# bevstat
Integerierte Auswertung von Bevölkerungsdaten

### Info read_stat_data()
- Als Parameter wird die url übergeben
- die Metadaten sind hardcoded
- gegeben der Datenstruktur könnte die Funktion auf andere Datensätze ausgebaut werden (Angabe von Variablennamen, Parsen der Webseite etc.)

### Info durchschnittsalter()
- Alter wird per Hilfefuktion parse_number() extrahiert. Alternativ wäre Regex eine Möglichkeit.
- Berechnung des Alters als avg_age Spalte 

### Info altersgruppe()
- Berechnung des relativen anteils in der rel_Fallzahl Spalte

### Info plot_kids() 
- standard ggplot mit angegebenen parametern
- nächster schritt wäre einbauen eines themes 
- beschriftung der achsen etc..
- facetting nach bundesland wäre eine gute Erweiterung

### Verwendung
- my_data<-read_stat_data("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020.csv")
- my_data %>% durchschnittsalter()
- my_data %>% altersgruppe()
- my_data %>% plot_kids()

