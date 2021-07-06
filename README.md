## Data Science with R (DataSciR) 
<img src="https://raw.githubusercontent.com/jannikgreif/DataSciR_2021/main/Screencast%2BLogo/datascir_w300.png" width="160px" align="right">

This github repository is part of the [Data Science with R](https://brain.cs.uni-magdeburg.de/kmd/DataSciR/ "Data Science with R") seminar 2021. 

The project aims to discover a significant impact of social media posts addressed to NBA players before matches with respect to their influence on these players’ game performance. For this purpose, we consider NBA players that are highly active on Twitter and extract tweets that are addressed to them within a short period of time before matches via the Twitter API. A sentiment analysis indicates the attitude of the posts and with the resulting sentiment polarity scores we test if there is a correlation between social media posts and players’ on-court performance.

[The project website can be found here.](https://datascirnba.netlify.app/)<br/>
[The screencast can be found here.](https://www.youtube.com/watch?v=VZLCjVUelCs)

### Prerequisites:
* R (version 4.0.5 or higher)
* RStudio (version 1.4.1 or higher)
* R-packages:
    * tidyverse (version 1.3.0 or higher)
    * rtweet (version 0.7.0 or higher)
    * academictwitteR (version 0.1.0 or higher)
    * anytime (version  or higher)
    * rvest (version 1.0.0 or higher)
    * naniar (version 0.6.1 or higher)
    * stringr (version 1.4.0 or higher)
    * textclean (version 0.9.3 or higher)
    * magrittr (version 2.0.1 or higher)
    * sentimentr (version 2.7.1 or higher)
    * tidytext (version 0.3.1 or higher)
    * ggwordcloud (version 0.5.0 or higher)
    * lubridate (version 1.7.10 or higher)
    * purrr (version 0.3.4 or higher)
    * ranger (version 0.12.1 or higher)
    * tidymodels (version 0.1.3 or higher)
    * knitr (version 1.31 or higher)
    * kableExtra (version 1.3.4 or higher)

### Important notes:
* The whole R-code for our project is incorporated into our final project notebook.
* You can find the project notebook in the respective folder under `project_notebook_with_code.Rmd`
* By default, the code chunk that extracts the tweets from the Twitter API is set to `eval = FALSE`.
    * So by default, the code re-uses the already extracted tweets that are stored in the "data" directory.
    * If you want to extract fresh tweets (which will take some time), set the code chunk `extract_and_save_tweets` to `eval = TRUE`.
    * In order to be able to access the Twitter API, you have to set up the necessary credentials which are stated in the `setup` code chunk at the header of our notebook. (These credentials can be accessed by creating an Academic Twitter developer account here: https://developer.twitter.com/en/products/twitter-api/academic-research)
* By default, all data extraction & sentiment computation code chunks are set to `eval = FALSE`.
    * If you want to extract and compute those data again, set the code chunks `player-metadata`, `player-season-stats`, `player-game-stats`, `game-metadata`, `preprocess-tweets`, `bing_sentiments`, `syuzhet_sentiments`, `jockers_rinker_sentiments`, `nrc_sentiments`, `afinn_sentiments` and `novak_emoji_sentiments` to `eval = TRUE`
* All code sections can be found as separate .Rmd files in the `notebooks` directory. These codes can be executed independently (as long as they have access to the existing data in this repository).
