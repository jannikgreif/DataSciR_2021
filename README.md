## Data Science with R (DataSciR) 
<img src="https://brain.cs.uni-magdeburg.de/kmd/DataSciR/figures/datascir_w300.png" width="160px" align="right">

This github repository is part of the [Data Science with R](https://brain.cs.uni-magdeburg.de/kmd/DataSciR/ "Data Science with R") seminar 2021. 

The project aims to discover a significant impact of social media posts addressed to NBA players before matches with respect to their influence on these players’ game performance. For this purpose, we consider NBA players that are highly active on Twitter and extract tweets that are addressed to them within a short period of time before matches via the Twitter API. A sentiment analysis indicates the attitude of the posts and with the resulting sentiment polarity scores we test if there is a correlation between social media posts and players’ on-court performance.

[The project website can be found here.](https://datascirnba.netlify.app/)
[The screencast can be found here.](https://www.youtube.com/watch?v=VZLCjVUelCs)

### Prerequisites:
RStudio (version 1.4 or higher)

R-packages:
* tidyverse (version or higher)
* rtweet (version or higher)
* academictwitteR (version or higher)
* anytime (version or higher)
* rvest (version or higher)
* naniar (version or higher)
* stringr (version or higher)
* textclean (version or higher)
* magrittr (version or higher)
* sentimentr (version or higher)
* tidytext (version or higher)
* ggwordcloud (version or higher)
* lubridate (version or higher)
* purrr (version or higher)
* ranger (version or higher)
* tidymodels (version or higher)

### Important notes:
* The whole R-code for our project is incorporated into our final project notebook.
* You can find the project notebook in the respective folder under `project_notebook_with_code.Rmd`
* By default, the code chunk that extracts the tweets from the Twitter API is set to `eval = FALSE`.
    * So by default, the code re-uses the already extracted tweets that are stored in the "data" directory.
    * If you want to extract fresh tweets (which will take some time), set the code chunk `extract_and_save_tweets` to `eval = TRUE`.
* All code sections can be found as separate .Rmd files in the `notebooks` directory. These codes can be executed independently (as long as they have access to the existing data in this repository).

### Screencast:
{{< youtube VZLCjVUelCs >}}

