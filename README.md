# bevstat
Integerierte Auswertung von Bevölkerungsdaten

read_stat_data("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020.csv") %>% durchschnittsalter()
read_stat_data("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020.csv") %>% altersgruppe()
read_stat_data("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020.csv") %>% plot_kids()
