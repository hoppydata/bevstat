
#' Auslesen der Bevölkerungsdaten
#'
#' @param x url als Charakterstring
#'
#' @return Datensatz mit Labels und Headern
#' @export
#'
#' @importFrom readr read_csv2
#' @examples
read_stat_data<-function(x){

my_data<-read_csv2(x)
my_header<-read_csv2("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020_HEADER.csv")
my_labels1<-read_csv2("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020_C-A10-0.csv") %>% select(code,name)
my_labels2<-read_csv2("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020_C-C11-0.csv")%>% select(code,name)
my_labels3<-read_csv2("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020_C-GRGEMAKT-0.csv")%>% select(code,name)
my_labels4<-read_csv2("https://data.statistik.gv.at/data/OGD_bevstandjbab2002_BevStand_2020_C-GALTEJ112-0.csv")%>% select(code,name)
#https://stackoverflow.com/questions/38874509/r-match-and-replace-column-names-by-data-frame


my_data$`C-A10-0`<-my_labels1$name[match(my_data$`C-A10-0`, my_labels1$code)]
my_data$`C-C11-0`<-my_labels2$name[match(my_data$`C-C11-0`, my_labels2$code)]
my_data$`C-GRGEMAKT-0`<-my_labels3$name[match(my_data$`C-GRGEMAKT-0`, my_labels3$code)]
my_data$`C-GALTEJ112-0`<-my_labels4$name[match(my_data$`C-GALTEJ112-0`, my_labels4$code)]


names(my_data) <- my_header$name[match(names(my_data), my_header$code)]
my_data
}


