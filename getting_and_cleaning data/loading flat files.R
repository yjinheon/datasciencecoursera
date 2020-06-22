cameraData <- read.table("./data/Baltimore_Fixed_Speed_Cameras.csv",
                         sep = ",",
                         header = T)

head(cameraData)
View(cameraData)

# some more important parameters

remotes::install_github("anthonynorth/rscodeio")
rscodeio::activate_menu_theme
rscodeio::install_theme()
