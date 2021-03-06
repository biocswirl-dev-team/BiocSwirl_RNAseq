# Code placed in this file fill be executed every time the
    # lesson is started. Any variables created here will show up in
    # the user's working directory and thus be accessible to them
    # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

if (!requireNamespace("DESeq2", quietly = TRUE))
  BiocManager::install("DESeq2")

if (!requireNamespace("apeglm", quietly = TRUE))
  BiocManager::install("apeglm")

library(DESeq2)
library(apeglm)

load(file.path(.get_course_path(), "BiocSwirl_RNAseq", "Examine_DESEq2_results","res_sig.RData"))
load(file.path(.get_course_path(), "BiocSwirl_RNAseq", "Examine_DESEq2_results","res_dds.RData"))
load(file.path(.get_course_path(), "BiocSwirl_RNAseq", "Examine_DESEq2_results","res.RData"))
load(file.path(.get_course_path(), "BiocSwirl_RNAseq", "Examine_DESEq2_results","IL6_data.RData"))
load(file.path(.get_course_path(), "BiocSwirl_RNAseq", "Examine_DESEq2_results","topGenes.RData"))
load(file.path(.get_course_path(), "BiocSwirl_RNAseq", "Examine_DESEq2_results","anno_data.RData"))
load(file.path(.get_course_path(), "BiocSwirl_RNAseq", "PCA","dds.RData"))
