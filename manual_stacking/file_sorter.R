library(filesstrings)
library(stringr)

RAW_folder <- "C:/scAnt/scAnt-master/PR_1023/RAW/"
file.list <- list.files(RAW_folder, pattern = "_\\.jpg")

folder_names <- gsub("_step_.+$", "", file.list)
folder_names <- unique(folder_names)

for(i in 1:length(folder_names)){
  curr.folder.name <- folder_names[i]
  curr.image.files <- file.list[grepl(curr.folder.name, file.list)]

  dir.create(file.path(RAW_folder, curr.folder.name))

  for(j in 1:length(curr.image.files)){
    curr.image <- curr.image.files[j]
    file.move(file.path(RAW_folder, curr.image), file.path(RAW_folder, curr.folder.name)) # , paste0(str_pad(j, 3, pad = "0"), ".jpg"))
  }
  print(round(i*100/length(folder_names), 2))
}
