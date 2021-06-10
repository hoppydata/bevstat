#' Title
#'
#' @param my_data daten ausgelesen mit \code{\link{read_stat_data}}
#'
#' @return
#' @export
#'
#' @examples
altersgruppe<-function(my_data){

x <- my_data%>%
  group_by(`Gemeinde (Vergröberung über Politischen Bezirk)`,`Alter in Einzeljahren`) %>%
  summarise(sum_year_Fallzahl=sum(Fallzahl)) %>%
    group_by(`Gemeinde (Vergröberung über Politischen Bezirk)`) %>%
    mutate(rel_Fallzahl=sum_year_Fallzahl/sum(sum_year_Fallzahl))

x
}

