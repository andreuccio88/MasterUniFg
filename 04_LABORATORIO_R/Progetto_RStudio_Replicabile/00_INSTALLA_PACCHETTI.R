# Installazione una tantum dei pacchetti usati negli script del corso.
# Eseguire soltanto se i pacchetti non sono gia' installati.

pkg <- c(
  "data.table", "dplyr", "tidyr", "ggplot2", "readxl",
  "caret", "mlbench", "rpart", "randomForest", "nnet",
  "kernlab", "pROC", "sf", "rnaturalearth", "countrycode"
)

missing <- pkg[!vapply(pkg, requireNamespace, logical(1), quietly = TRUE)]
if (length(missing)) install.packages(missing, dependencies = TRUE)

message("Pacchetti richiesti controllati.")
