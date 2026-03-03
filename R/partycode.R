

dictionary <- read.csv("partyfacts-external-parties.csv", stringsAsFactors = FALSE)

sets <- c("manifesto", "parlgov", "wikipedia", "ches", "clea", "ejpr", "vparty", "chisols", "dpi", "essprtc", "essprtv", "huber", "kitschelt", "polcon", "ppmd", "wvs", "afrelec", "afro", "ccs", "coppedge", "cses", "elecglob", "epac", "hix", "erdda", "euandi", "gloelec", "gps", "ipod", "janda", "jw", "kurep", "laeda", "latino", "laverhunt", "mackie", "mapp", "morgan", "mudde", "parlspeech", "postyug", "pip", "poppa", "ppdb", "ppla", "ray", "tap", "populist", "voteview", "ees14", "thomas", "partyfacts")


##################

#subset supported sets


partycode <- function(variable=NULL, from=NULL, to=NULL){


  if(from %in% sets== FALSE){
    message("Error: Argument 'From' is not supported")
  } else if(to %in% sets == FALSE){
    message("Error: Argument 'To' is not supported")
  } else {


  key = variable

  # link datasets (select only linked parties)
  dataset_1 <- dictionary %>% filter(dataset_key == from)
  dataset_2 <- dictionary %>% filter(dataset_key == to)


  link_table <-
    dataset_1 %>%
    inner_join(dataset_2, by = c("partyfacts_id" = "partyfacts_id"))

  to = link_table$dataset_party_id.y[match(key, link_table$dataset_party_id.x)]

  return(to)

}}







