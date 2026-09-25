# Ogni passaggio eseguibile è preceduto da una breve spiegazione didattica.
# Installazione una tantum dei pacchetti usati negli script del corso.
# Eseguire soltanto se i pacchetti non sono gia' installati.

# Spiegazione: Creiamo o aggiorniamo l’oggetto `pkg`; il valore sarà usato nei passaggi successivi.
pkg <- c(
  "data.table", "dplyr", "tidyr", "ggplot2", "readxl",
  "caret", "mlbench", "rpart", "randomForest", "nnet",
  "kernlab", "pROC", "forecast", "sf", "rnaturalearth", "countrycode"
)

# Spiegazione: Ricaviamo `missing` selezionando o trasformando parti dell’oggetto indicato a destra.
missing <- pkg[!vapply(pkg, requireNamespace, logical(1), quietly = TRUE)]
# Spiegazione: Controlliamo questa condizione prima di eseguire il blocco successivo.
if (length(missing)) install.packages(missing, dependencies = TRUE)

# Spiegazione: Mostriamo un messaggio informativo senza interrompere l’esecuzione.
message("Pacchetti richiesti controllati.")
