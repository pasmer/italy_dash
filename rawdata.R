#' Update the Package Datasets
#' 
#' ----------------------------------
# FROM
# https://github.com/RamiKrispin/covid19Italy/blob/master/data_raw/data_refresh.R
#' ----------------------------------
# Italy Total
#' ----------------------------------
#' 
`%>%` <- magrittr::`%>%`
italy_total <- read.csv("https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-andamento-nazionale/dpc-covid19-ita-andamento-nazionale.csv",
                        stringsAsFactors = FALSE) %>%
  stats::setNames(c("date_temp", "state",
                    "hospitalized_with_symptoms",
                    "intensive_care",
                    "total_hospitalized",
                    "home_confinement",
                    "cumulative_positive_cases",
                    "daily_positive_cases",
                    "daily_cases",
                    "recovered", "death", "cumulative_cases",
                    "total_tests", "notes_it", "notes_en")) %>%
  dplyr::mutate(date = lubridate::ymd(substr(date_temp, 1, 10))) %>%
  dplyr::select(-date_temp, -state, -notes_it, -notes_en, -daily_cases) %>%
  dplyr::select(date, dplyr::everything()) %>%
  dplyr::arrange(date)

# Italy_region

italy_region <- read.csv("https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-regioni/dpc-covid19-ita-regioni.csv",
                         stringsAsFactors = FALSE) %>%
  stats::setNames(c("date_temp", "state",
                    "region_code", "region_name",
                    "lat", "long",
                    "hospitalized_with_symptoms",
                    "intensive_care",
                    "total_hospitalized",
                    "home_confinement",
                    "cumulative_positive_cases",
                    "daily_positive_cases",
                    "daily_cases",
                    "recovered", "death",
                    "cumulative_cases",
                    "total_tests", "notes_it", "notes_en")) %>%
  dplyr::mutate(date = lubridate::ymd(substr(date_temp, 1, 10))) %>%
  dplyr::select(-date_temp, - state, -notes_it, -notes_en, -daily_cases) %>%
  dplyr::select(date, dplyr::everything()) %>%
  dplyr::mutate(region_spatial = region_name) %>%
  dplyr::arrange(date)

italy_region$region_spatial <- ifelse(italy_region$region_spatial == "Emilia Romagna",
                                      "Emilia-Romagna",
                                      italy_region$region_spatial)


italy_region$region_spatial <- ifelse(italy_region$region_spatial == "Friuli Venezia Giulia",
                                      "Friuli-Venezia Giulia",
                                      italy_region$region_spatial)


italy_region$region_spatial <- ifelse(italy_region$region_spatial == "Sicilia",
                                      "Sicily",
                                      italy_region$region_spatial)

italy_region$region_spatial <- ifelse(italy_region$region_spatial == "Puglia",
                                      "Apulia",
                                      italy_region$region_spatial)


italy_region$region_spatial <- ifelse(italy_region$region_spatial == "P.A. Bolzano" |
                                        italy_region$region_spatial == "P.A. Trento",
                                      "Trentino-Alto Adige",
                                      italy_region$region_spatial)

