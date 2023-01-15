

Dataset=readRDS("C:/doc/data.rds")
Dataset$dataset$REGION_MIDWEST
# how I renamed categorical variables
# Dataset$dataset$REGION  + _category name
# Dataset$dataset$GENDER    + _F  "category name"

# patients' survival situation: 0 means die  and 1 means survive
Dataset$dataset$year0  #means first month
Dataset$dataset$year1
Dataset$dataset$year2  # if survival istuation is not clear yeari is NA

Dataset$dataset$year10

# results of featuer selection, but you either use all the variables or run 
# feature selection again
Dataset$features$year0
Dataset$features$year1
Dataset$features$year2

Dataset$features$year10

# ID for trainset holdoutset and all
Dataset$IDs$ID5  # all the observations
Dataset$IDs$ID_holdout5  #holdout set
Dataset$IDs$ID_train5 # training set that I can have 5 fold cross validation
Dataset$dataset$ID








