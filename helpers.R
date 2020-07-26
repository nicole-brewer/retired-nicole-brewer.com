
curl_markdown <- function(url) {
  output <- base::system(paste("curl", url), intern = TRUE)
  knitr::combine_words(output, sep='\n')
}
