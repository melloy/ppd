#' Download PPD data
#' 
#' Download PPD data for a station and return as a data frame
#'
#' @param id Weather station ID.
#' @param start Start date (String YYYYmmdd).
#' @param end End date (String YYYYmmdd).
#' @param silo.apiKey SILO API key (available from https://silo.longpaddock.qld.gov.au/).
#' @param variables Vector of weather variables (Full list available  at https://silo.longpaddock.qld.gov.au/climate-variables)
#'
#' @author Fiona Evans & Paul Melloy
#' 
#' @return Data frame containing daily weather data.
#' @export


getPPD2 <- function(station_id, start, end, silo.apikey, variables) {

# 'If' statement for when user does not specify variables
      if(missing(variables)){
      variables <- paste("daily_rain", "max_temp", "min_temp", "rh_tmax", "rh_tmin","vp", "vp_deficit", "radiation",
              sep = ",")
   }

url <- "https://siloapi.longpaddock.qld.gov.au/pointdata?apikey="


dat <- read.csv(paste0(url,silo.apikey , "&start=", start,  "&finish=", end,  "&station=", station_id,  "&format=csv", "&variables=", variables))
print(dat)

}


