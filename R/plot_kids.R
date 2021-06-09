#' Title
#'
#' @param my_data
#'
#' @return
#' @export
#'
#' @examples
plot_kids<-function(my_data){
y<-my_data %>%
  mutate(age=parse_number(`Alter in Einzeljahren`),
         is_underage=ifelse(age<6,"Vorschulalter","Alt")) %>%
  group_by(`Gemeinde (Vergröberung über Politischen Bezirk)`,is_underage) %>%
  summarise(Fallz=sum(Fallzahl)) %>%
  mutate(Anteil=Fallz/sum(Fallz),EW=sum(Fallz)) %>%
  filter(is_underage=="Vorschulalter") %>%
  ungroup() %>%
  mutate(BL=as.factor(as.numeric(str_extract(`Gemeinde (Vergröberung über Politischen Bezirk)`, "(\\d)")))) %>%
  arrange(BL,Anteil)

y %>% ggplot(aes(x=`Gemeinde (Vergröberung über Politischen Bezirk)`,
                 y=Anteil,
                 col=BL,
                 size=EW))+geom_point()

}
