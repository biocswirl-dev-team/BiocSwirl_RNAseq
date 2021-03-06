# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

load(file.path(.get_course_path(), "BiocSwirl_RNAseq", "PCA","rlog_dds.RData"))
load(file.path(.get_course_path(), "BiocSwirl_RNAseq", "PCA","dds.RData"))

colors <- colorRampPalette( rev(brewer.pal(9, "Blues")) )(255)

if (!requireNamespace("DESeq2", quietly = TRUE))
  BiocManager::install("DESeq2")

library(DESeq2)

