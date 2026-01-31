library(httr)
library(jsonlite)

get_sie_series <- function(id_series, sie_token){
    
    # Get the response
    url <- paste0("https://www.banxico.org.mx/SieAPIRest/service/v1/series/",id_series,"/datos")
    response <- GET(url, add_headers("Bmx-Token" = sie_token))

    # Parse the response
    json_data <- fromJSON(content(response, "text", encoding = "UTF-8"))

    # Get name of the series
    series_name <- json_data$bmx$series$titulo

    # Obtain a df
    df <- json_data$bmx$series$datos[[1]]
    df$dato <- as.numeric(gsub(",", "", df$dato)) # Series in returned as string
    df$fecha <- as.Date(df$fecha, format = "%d/%m/%Y") # Convert date
    colnames(df) <- c("fecha", series_name)

    return(df)

}