# bevstat
Integerierte Auswertung von Bevölkerungsdaten

my_data<-read_stat_data("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020.csv")

my_data %>% durchschnittsalter()
my_data %>% altersgruppe()
my_data %>% plot_kids()
