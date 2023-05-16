


###############VARIABLES##############################
path_out <- "/home/marta/LABO/PRIMERS4VARIANTS/output"
variant <- "7:140453136" 
#####################################################

rmfastavariant <- function(path_out,variant){
# Directorio a buscar
#path_out <- "/home/marta/LABO/PRIMERS4VARIANTS/output"
# Realizar búsqueda recursiva
archivos <- list.files(path = path_out, recursive = TRUE, full.names = TRUE)

# Patrón de búsqueda
#variant <- "7:140453136" 
patron <- paste0(variant,".fasta")

# Filtrar archivos que coinciden con el patrón
fastavariant <- grep(patron, archivos, value = TRUE)

# Imprimir los archivos coincidentes
print(fastavariant)

# Eliminar el archivo encontrado
file.remove(fastavariant)
}

rmfastavariant("/home/marta/LABO/PRIMERS4VARIANTS/output","1:69134")
