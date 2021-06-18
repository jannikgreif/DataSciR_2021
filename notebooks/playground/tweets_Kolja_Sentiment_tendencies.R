library(rtweet)
library(tidyverse)
library(tidytext)
library(dplyr)

library(stringr)

tidy_tweets <- search_tweets("StephenCurry30", n = 1000) %>%
  unnest_tokens(word, text)

nrc_negative <- get_sentiments("nrc") %>%
  filter(sentiment == c("negative", "fear", "sadness", "anger", "disgust"))

tidy_tweets %>%
  inner_join(nrc_negative) %>%
  count(word, sort = TRUE)

nrc_positive <- get_sentiments("nrc") %>%
  filter(sentiment == c("anticipation", "joy", "surprise", "trust"))

tidy_tweets %>%
  inner_join(nrc_positive) %>%
  count(word, sort = TRUE)

library(tidyr)

steven_curry_sentiment <- tidy_tweets %>%
  inner_join(get_sentiments("bing")) %>%
  count(word, index = linenumber %/% 80, sentiment) %>%
  spread(sentiment, n, fill = 0) %>%
  mutate(sentiment = positive - negative)

library(ggplot2)

ggplot(stephen_curry_sentiment, aes(index, sentiment, fill = text)) +
  geom_col(show.legend = FALSE) + 
  facet_wrap(~book, ncol = 2, scales = "free_x")
 