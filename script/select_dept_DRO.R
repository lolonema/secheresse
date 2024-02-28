library("tidyverse")
library("sf")
read_sf("./data/zones_arretes_en_vigueur.geojson")
secteur <-
  sf::read_sf("./data/zones_arretes_en_vigueur.geojson")
mapview::mapview(secteur)
restriction <-
  read_csv("./data/restrictions.csv")
secteur_metro <-
  sf::read_sf("./data/all_zones.shp")
mapview::mapview(secteur_metro)
secteur_DRO <-
  subset(secteur_metro, code_dep %in% c('09','11','12', '30', '31', '32','34', '46','48', '65','66','81','82'))
mapview::mapview(secteur_DRO)
