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

##H3k4me1
if(0)
{
file.bw.histone <- file.Alex.Mnase.H3k4me1.bw;
file.peak.histone <- file.Alex.Mnase.H3k4me1.peak;
file.rdata.model <- file.Alex.Mnase.H3k4me1.AL.model;
str.prefix <- "Alex.Mnase.H3k4me1.AL.S1"
}

##H3k4me2
if(0)
{
file.bw.histone <- file.Alex.Mnase.H3k4me2.bw;
file.peak.histone <- file.Alex.Mnase.H3k4me2.peak;
file.rdata.model <- file.Alex.Mnase.H3k4me2.AL.model;
str.prefix <- "Alex.Mnase.H3k4me2.AL.S1"
}

##H3k4me3
if(0)
{
file.bw.histone <- file.Alex.Mnase.H3k4me3.bw;
file.peak.histone <- file.Alex.Mnase.H3k4me3.peak;
file.rdata.model <- file.Alex.Mnase.H3k4me3.AL.model;
str.prefix <- "Alex.Mnase.H3k4me3.AL.S1"
}

##H3k27ac
if(0)
{
file.bw.histone <- file.Alex.Mnase.H3k27ac.bw;
file.peak.histone <- file.Alex.Mnase.H3k27ac.peak;
file.rdata.model <- file.Alex.Mnase.H3k27ac.AL.model;
str.prefix <- "Alex2.Mnase.H3k27ac.AL.S1"
}

##H3k36me3
if(0)
{
file.bw.histone <- file.Alex.Mnase.H3k36me3.bw;
file.peak.histone <- file.Alex.Mnase.H3k36me3.peak;
file.rdata.model <- file.Alex.Mnase.H3k36me3.AL.model;
str.prefix <- "Alex.Mnase.H3k36me3.AL.S1"
}

##H3k79me3
if(0)
{
file.bw.histone <- file.Alex.Mnase.H3k79me3.bw;
file.peak.histone <- file.Alex.Mnase.H3k79me3.peak;
file.rdata.model <- file.Alex.Mnase.H3k79me3.AL.model;
str.prefix <- "Alex.Mnase.H3k79me3.AL.S1"
}

## !!!
## 
## This scipt trains model on own ChRO-seq data
##  
## !!!
path.histone="";
path.proseq="";

file.bws.plus <- file.Alex.proseq.plus.m.bw
file.bws.minus <- file.Alex.proseq.minus.m.bw
selectGPUdevice(1);

if(!file.exists(file.rdata.model))
{
 model <- create_train_model( path.proseq, 
 		file.bws.plus, file.bws.minus, 
 		file.rdata.negative, file.rdata.positive, 
 		path.histone, file.bw.histone, file.peak.histone, 
 		ratio = 0.1, samples=600000*5, strategy=1, 
 		exclude=c("chr22", "chrY", "chrX","chrM"))
 
 model <- build_train_model( model )
 model <- svm_train_model(model, gdm, file.rdata.model, ncores=15);
 save(model, file=file.rdata.model);
}
 
pred <- svm_predict_chr_parallel( str.prefix, 
		file.bws.plus, file.bws.minus, 
		file.rdata.model, chr="chr22", 
		bigwig_compare=file.bw.histone, 
		ncores=5, linear_scale=F, gpu.idx=1  )
		
		
