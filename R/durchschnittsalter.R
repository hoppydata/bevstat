#' Title
#'
#' @param my_data daten ausgelesen mit \code{\link{read_stat_data}}
#'
#' @return
#' @export
#'
#' @examples
durchschnittsalter<-function(my_data){

x<-my_data %>%
    mutate(age=parse_number(`Alter in Einzeljahren`)) %>%
    group_by(`Gemeinde (Vergröberung über Politischen Bezirk)`) %>%
    summarise(avg_age=sum(age*Fallzahl)/sum(Fallzahl))

  x
}
