
# CNAME
# Custom slider widget
# custom home header
# list widget

curl_markdown <- function(url) {
  output <- base::system(paste("curl", url), intern = TRUE)
  output <- output[!startsWith(output, '# ')]
  knitr::combine_words(output, sep='\n')
}

clean_and_rebuild <- function() {
  setwd('~/Repos/nicole-brewer-github/catch-me-coding/')
  system('find content/ -name "*.html" -delete')
  system('rm -rf public/*')
  blogdown::build_site()
  blogdown::hugo_build()
}
