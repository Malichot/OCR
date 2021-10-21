#'Author: Antoine Silvestre de Sacy
#'Date: 21/10/2021
#'Titre: Script océrisation multiples
#'Tags: OCR, image, R

## Script océrisation :

# Réf : https://datafuture.fr/post/lad-rad-ocr-reconnaissance-optique-de-texte-avec-r/

library("tesseract")  # API R vers le moteur d'OCR Tesseract (Google)
library("magick")  # Ensemble d'outils d'image processing
library("magrittr")  # Pour chaîner les opérations avec %>%


setwd("~/Desktop/Images-Gaspard/")

# Fichiers png (listage) :
list_of_files <- list.files(recursive = TRUE,
                            pattern = "*.png",
                            full.names = TRUE)

# Loop pour créer un txt pour chaque image :

for (i in list_of_files) {
    
    img_raw <- image_read(i)
    
    txt_raw <- ocr(img_raw)

    write.table(txt_raw, paste(i, 'txt', sep = '.'))
        
  }




