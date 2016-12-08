library(ggplot2)

## Add your user name and working directory path to the statement below

si <- Sys.info()
User  <- si[["user"]]
d.dirs <- switch(User,
                 'Yarden-' = c(files_path = 'C:/Users/Yarden-/Desktop/ETH Autumn 2016/Information Retrieval/IR_P2/'), 
                 stop("add your user name", User, " and files_path")
                 )
rm(si, User)

# setting working dir
setwd(d.dirs[["files_path"]])  # working directory

# import language model search data file
lang_model_search = read.table("lang_model_search.txt", 
  col.names = c("method", "lambda", "candidate_size", "MAP_score"))

lang_model_search$method <- as.factor(lang_model_search$method)
lang_model_search$candidate_size <- as.factor(lang_model_search$candidate_size)

# plot
ggplot(lang_model_search, aes(x = lambda, y = MAP_score, 
                 colour = method, 
                 shape = candidate_size, 
                 group=interaction(candidate_size, method))) + 
  scale_x_log10(breaks = scales::trans_breaks("log10", function(x) 10^x),
                labels = scales::trans_format("log10", scales::math_format(10^.x))
  ) + 
  geom_point(size=4) +
  geom_line() + theme(panel.grid.minor.x=element_blank(),
                      panel.grid.major.x=element_blank())



ggsave(file="lang_model_search.png", width = 14, height = 7, units = "cm")
