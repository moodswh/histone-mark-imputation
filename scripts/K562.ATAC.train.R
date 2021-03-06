source("hist.svm.com.R")
source("hist.svm.pred.R")
source("hist.svm.main.R")
source("hist.param.R");

#args = commandArgs(trailingOnly=TRUE)
#file.model <- args[1];
#file.bw.plus <- args[2];
#file.bw.minus <- args[3];
#str.FID <- args[4];
#str.chr <- args[5];
#file.bed <- args[6];

#path.histone defined in "hist.param.R"
#path.proseq  defined in "hist.param.R"
#file.rdata.negative defined in "hist.param.R"
#file.rdata.positive defined in "hist.param.R"

file.bws.plus <- c(file.bw.G1[1], file.bw.G2[1],file.bw.G3[1], file.bw.G5[1], file.bw.G6[1]);
file.bws.minus <-c(file.bw.G1[2], file.bw.G2[2],file.bw.G3[2], file.bw.G5[2], file.bw.G6[2]);

file.bw.histone <- file.k562.atack562.bw;
file.peak.histone <- file.k562.atack562.peak;
file.rdata.model <- "../models/Atack562.S1.train.rdata"

if(!file.exists(file.rdata.model))
{
model <- create_train_model( path.proseq, file.bws.plus, file.bws.minus, file.rdata.negative, file.rdata.positive, ".", file.bw.histone, file.peak.histone, ratio = 0.1, samples=600000, strategy=1 )
model <- build_train_model( model )
model <- svm_train_model(model, gdm, file.rdata.model, ncores=15);
save(model, file=);
}
cat("Model=", file.rdata.model, "\n");

pred <- svm_predict_chr_parallel( "ATAC.K562.S1", file.bws.plus[1], file.bws.minus[1], file.rdata.model, chr="chr22", bigwig_compare=file.bw.histone, ncores=5, linear_scale=F, gpu.idx=1  )
