source("draw-cor-base.R");

  # G1
  df.G1.info <- rbind(c(Cell="G1", Mark="H3k122ac", Ver="S1.V3",
                         file.pred.bw = file.k562.H3k122ac.pred.raw,   
                         file.exp.bw = file.k562.H3k122ac.bw,  
                         file.ctrl.bw = file.k562.H3k122ac.ctrl.bw,  
                         file.exp.peak = file.k562.H3k122ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL ),

                    c(Cell="G1", Mark="H3k27ac", Ver="S1.V3", 
                         file.pred.bw = file.k562.H3k27ac.pred.raw,   
                         file.exp.bw = file.k562.H3k27ac.bw,  
                         file.ctrl.bw = file.k562.H3k27ac.ctrl.bw,  
                         file.exp.peak = file.k562.H3k27ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="G1", Mark="H3k27me3", Ver="S1.V3", 
                         file.pred.bw = file.k562.H3k27me3.pred.raw,   
                         file.exp.bw = file.k562.H3k27me3.bw,  
                         file.ctrl.bw = file.k562.H3k27me3.ctrl.bw,  
                         file.exp.peak = file.k562.H3k27me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="G1", Mark="H3k36me3", Ver="S1.V3", 
                         file.pred.bw = file.k562.H3k36me3.pred.raw,   
                         file.exp.bw = file.k562.H3k36me3.bw,  
                         file.ctrl.bw = file.k562.H3k36me3.ctrl.bw,  
                         file.exp.peak = file.k562.H3k36me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="G1", Mark="H3k4me1", Ver="S1.V2", 
                         file.pred.bw = file.k562.H3k4me1.pred.raw,   
                         file.exp.bw = file.k562.H3k4me1.bw,  
                         file.ctrl.bw = file.k562.H3k4me1.ctrl.bw,  
                         file.exp.peak = file.k562.H3k4me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="G1", Mark="H3k4me2", Ver="S1.V2", 
                         file.pred.bw = file.k562.H3k4me2.pred.raw,   
                         file.exp.bw = file.k562.H3k4me2.bw,  
                         file.ctrl.bw = file.k562.H3k4me2.ctrl.bw,  
                         file.exp.peak = file.k562.H3k4me2.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="G1", Mark="H3k4me3", Ver="S1.V3", 
                         file.pred.bw = file.k562.H3k4me3.pred.raw,   
                         file.exp.bw = file.k562.H3k4me3.bw,  
                         file.ctrl.bw = file.k562.H3k4me3.ctrl.bw,  
                         file.exp.peak = file.k562.H3k4me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="G1", Mark="H3k9ac", Ver="S1.V2", 
                         file.pred.bw = file.k562.H3k9ac.pred.raw,   
                         file.exp.bw = file.k562.H3k9ac.bw,  
                         file.ctrl.bw = file.k562.H3k9ac.ctrl.bw,  
                         file.exp.peak = file.k562.H3k9ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="G1", Mark="H3k9me3", Ver="S1.V2", 
                         file.pred.bw = file.k562.H3k9me3.pred.raw,   
                         file.exp.bw = file.k562.H3k9me3.bw,  
                         file.ctrl.bw = file.k562.H3k9me3.ctrl.bw,  
                         file.exp.peak = file.k562.H3k9me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="G1", Mark="H4k20me1", Ver="S1.V3", 
                         file.pred.bw = file.k562.H4k20me1.pred.raw,   
                         file.exp.bw = file.k562.H4k20me1.bw,  
                         file.ctrl.bw = file.k562.H4k20me1.ctrl.bw,  
                         file.exp.peak = file.k562.H4k20me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL));



  df.GM.info <- rbind(
                    c(Cell="GM", Mark="H3k27ac", Ver="S1.V3", 
                         file.pred.bw = file.gm.H3k27ac.pred.raw,   
                         file.exp.bw = file.gm.H3k27ac.bw,  
                         file.ctrl.bw = file.gm.H3k27ac.ctrl.bw,  
                         file.exp.peak = file.gm.H3k27ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="GM", Mark="H3k27me3", Ver="S1.V3", 
                         file.pred.bw = file.gm.H3k27me3.pred.raw,   
                         file.exp.bw = file.gm.H3k27me3.bw,  
                         file.ctrl.bw = file.gm.H3k27me3.ctrl.bw,  
                         file.exp.peak = file.gm.H3k27me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="GM", Mark="H3k36me3", Ver="S1.V3", 
                         file.pred.bw = file.gm.H3k36me3.pred.raw,   
                         file.exp.bw = file.gm.H3k36me3.bw,  
                         file.ctrl.bw = file.gm.H3k36me3.ctrl.bw,  
                         file.exp.peak = file.gm.H3k36me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="GM", Mark="H3k4me1", Ver="S1.V2", 
                         file.pred.bw = file.gm.H3k4me1.pred.raw,   
                         file.exp.bw = file.gm.H3k4me1.bw,  
                         file.ctrl.bw = file.gm.H3k4me1.ctrl.bw,  
                         file.exp.peak = file.gm.H3k4me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="GM", Mark="H3k4me2", Ver="S1.V2", 
                         file.pred.bw = file.gm.H3k4me2.pred.raw,   
                         file.exp.bw = file.gm.H3k4me2.bw,  
                         file.ctrl.bw = file.gm.H3k4me2.ctrl.bw,  
                         file.exp.peak = file.gm.H3k4me2.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="GM", Mark="H3k4me3", Ver="S1.V3", 
                         file.pred.bw = file.gm.H3k4me3.pred.raw,   
                         file.exp.bw = file.gm.H3k4me3.bw,  
                         file.ctrl.bw = file.gm.H3k4me3.ctrl.bw,  
                         file.exp.peak = file.gm.H3k4me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="GM", Mark="H3k9ac", Ver="S1.V2", 
                         file.pred.bw = file.gm.H3k9ac.pred.raw,   
                         file.exp.bw = file.gm.H3k9ac.bw,  
                         file.ctrl.bw = file.gm.H3k9ac.ctrl.bw,  
                         file.exp.peak = file.gm.H3k9ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="GM", Mark="H3k9me3", Ver="S1.V2", 
                         file.pred.bw = file.gm.H3k9me3.pred.raw,   
                         file.exp.bw = file.gm.H3k9me3.bw,  
                         file.ctrl.bw = file.gm.H3k9me3.ctrl.bw,  
                         file.exp.peak = file.gm.H3k9me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="GM", Mark="H4k20me1", Ver="S1.V3", 
                         file.pred.bw = file.gm.H4k20me1.pred.raw,   
                         file.exp.bw = file.gm.H4k20me1.bw,  
                         file.ctrl.bw = file.gm.H4k20me1.ctrl.bw,  
                         file.exp.peak = file.gm.H4k20me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL));


  df.CD4.info <- rbind(
                    c(Cell="CD4", Mark="H3k27ac", Ver="S1.V3", 
                         file.pred.bw = file.cd4.H3k27ac.pred.raw,   
                         file.exp.bw = file.cd4.H3k27ac.bw,  
                         file.ctrl.bw = file.cd4.H3k27ac.ctrl.bw,  
                         file.exp.peak = file.cd4.H3k27ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="CD4", Mark="H3k27me3", Ver="S1.V3", 
                         file.pred.bw = file.cd4.H3k27me3.pred.raw,   
                         file.exp.bw = file.cd4.H3k27me3.bw,  
                         file.ctrl.bw = file.cd4.H3k27me3.ctrl.bw,  
                         file.exp.peak = file.cd4.H3k27me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="CD4", Mark="H3k36me3", Ver="S1.V3", 
                         file.pred.bw = file.cd4.H3k36me3.pred.raw,   
                         file.exp.bw = file.cd4.H3k36me3.bw,  
                         file.ctrl.bw = file.cd4.H3k36me3.ctrl.bw,  
                         file.exp.peak = file.cd4.H3k36me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="CD4", Mark="H3k4me1", Ver="S1.V2", 
                         file.pred.bw = file.cd4.H3k4me1.pred.raw,   
                         file.exp.bw = file.cd4.H3k4me1.bw,  
                         file.ctrl.bw = file.cd4.H3k4me1.ctrl.bw,  
                         file.exp.peak = file.cd4.H3k4me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="CD4", Mark="H3k4me2", Ver="S1.V2", 
                         file.pred.bw = file.cd4.H3k4me2.pred.raw,   
                         file.exp.bw = file.cd4.H3k4me2.bw,  
                         file.ctrl.bw = file.cd4.H3k4me2.ctrl.bw,  
                         file.exp.peak = file.cd4.H3k4me2.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="CD4", Mark="H3k4me3", Ver="S1.V3", 
                         file.pred.bw = file.cd4.H3k4me3.pred.raw,   
                         file.exp.bw = file.cd4.H3k4me3.bw,  
                         file.ctrl.bw = file.cd4.H3k4me3.ctrl.bw,  
                         file.exp.peak = file.cd4.H3k4me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="CD4", Mark="H3k9ac", Ver="S1.V2", 
                         file.pred.bw = file.cd4.H3k9ac.pred.raw,   
                         file.exp.bw = file.cd4.H3k9ac.bw,  
                         file.ctrl.bw = file.cd4.H3k9ac.ctrl.bw,  
                         file.exp.peak = file.cd4.H3k9ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="CD4", Mark="H3k9me3", Ver="S1.V2", 
                         file.pred.bw = file.cd4.H3k9me3.pred.raw,   
                         file.exp.bw = file.cd4.H3k9me3.bw,  
                         file.ctrl.bw = file.cd4.H3k9me3.ctrl.bw,  
                         file.exp.peak = file.cd4.H3k9me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="CD4", Mark="H4k20me1", Ver="S1.V3", 
                         file.pred.bw = file.cd4.H4k20me1.pred.raw,   
                         file.exp.bw = file.cd4.H4k20me1.bw,  
                         file.ctrl.bw = file.cd4.H4k20me1.ctrl.bw,  
                         file.exp.peak = file.cd4.H4k20me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL));


  df.HELA.info <- rbind(
                    c(Cell="HELA", Mark="H3k27ac", Ver="S1.V3", 
                         file.pred.bw = file.hela.H3k27ac.pred.raw,   
                         file.exp.bw = file.hela.H3k27ac.bw,  
                         file.ctrl.bw = file.hela.H3k27ac.ctrl.bw,  
                         file.exp.peak = file.hela.H3k27ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HELA", Mark="H3k27me3", Ver="S1.V3", 
                         file.pred.bw = file.hela.H3k27me3.pred.raw,   
                         file.exp.bw = file.hela.H3k27me3.bw,  
                         file.ctrl.bw = file.hela.H3k27me3.ctrl.bw,  
                         file.exp.peak = file.hela.H3k27me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HELA", Mark="H3k36me3", Ver="S1.V3", 
                         file.pred.bw = file.hela.H3k36me3.pred.raw,   
                         file.exp.bw = file.hela.H3k36me3.bw,  
                         file.ctrl.bw = file.hela.H3k36me3.ctrl.bw,  
                         file.exp.peak = file.hela.H3k36me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HELA", Mark="H3k4me1", Ver="S1.V2", 
                         file.pred.bw = file.hela.H3k4me1.pred.raw,   
                         file.exp.bw = file.hela.H3k4me1.bw,  
                         file.ctrl.bw = file.hela.H3k4me1.ctrl.bw,  
                         file.exp.peak = file.hela.H3k4me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="HELA", Mark="H3k4me2", Ver="S1.V2", 
                         file.pred.bw = file.hela.H3k4me2.pred.raw,   
                         file.exp.bw = file.hela.H3k4me2.bw,  
                         file.ctrl.bw = file.hela.H3k4me2.ctrl.bw,  
                         file.exp.peak = file.hela.H3k4me2.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HELA", Mark="H3k4me3", Ver="S1.V3", 
                         file.pred.bw = file.hela.H3k4me3.pred.raw,   
                         file.exp.bw = file.hela.H3k4me3.bw,  
                         file.ctrl.bw = file.hela.H3k4me3.ctrl.bw,  
                         file.exp.peak = file.hela.H3k4me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HELA", Mark="H3k9ac", Ver="S1.V2", 
                         file.pred.bw = file.hela.H3k9ac.pred.raw,   
                         file.exp.bw = file.hela.H3k9ac.bw,  
                         file.ctrl.bw = file.hela.H3k9ac.ctrl.bw,  
                         file.exp.peak = file.hela.H3k9ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HELA", Mark="H3k9me3", Ver="S1.V2", 
                         file.pred.bw = file.hela.H3k9me3.pred.raw,   
                         file.exp.bw = file.hela.H3k9me3.bw,  
                         file.ctrl.bw = file.hela.H3k9me3.ctrl.bw,  
                         file.exp.peak = file.hela.H3k9me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HELA", Mark="H4k20me1", Ver="S1.V3", 
                         file.pred.bw = file.hela.H4k20me1.pred.raw,   
                         file.exp.bw = file.hela.H4k20me1.bw,  
                         file.ctrl.bw = file.hela.H4k20me1.ctrl.bw,  
                         file.exp.peak = file.hela.H4k20me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL));


  df.HCT.info <- rbind(
                    c(Cell="HCT", Mark="H3k27ac", Ver="S1.V3", 
                         file.pred.bw = file.hct.H3k27ac.pred.raw,   
                         file.exp.bw = file.hct.H3k27ac.bw,  
                         file.ctrl.bw = file.hct.H3k27ac.ctrl.bw,  
                         file.exp.peak = file.hct.H3k27ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HCT", Mark="H3k27me3", Ver="S1.V3", 
                         file.pred.bw = file.hct.H3k27me3.pred.raw,   
                         file.exp.bw = file.hct.H3k27me3.bw,  
                         file.ctrl.bw = file.hct.H3k27me3.ctrl.bw,  
                         file.exp.peak = file.hct.H3k27me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HCT", Mark="H3k36me3", Ver="S1.V3", 
                         file.pred.bw = file.hct.H3k36me3.pred.raw,   
                         file.exp.bw = file.hct.H3k36me3.bw,  
                         file.ctrl.bw = file.hct.H3k36me3.ctrl.bw,  
                         file.exp.peak = file.hct.H3k36me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HCT", Mark="H3k4me1", Ver="S1.V2", 
                         file.pred.bw = file.hct.H3k4me1.pred.raw,   
                         file.exp.bw = file.hct.H3k4me1.bw,  
                         file.ctrl.bw = file.hct.H3k4me1.ctrl.bw,  
                         file.exp.peak = file.hct.H3k4me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="HCT", Mark="H3k4me2", Ver="S1.V2", 
                         file.pred.bw = file.hct.H3k4me2.pred.raw,   
                         file.exp.bw = file.hct.H3k4me2.bw,  
                         file.ctrl.bw = file.hct.H3k4me2.ctrl.bw,  
                         file.exp.peak = file.hct.H3k4me2.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HCT", Mark="H3k4me3", Ver="S1.V3", 
                         file.pred.bw = file.hct.H3k4me3.pred.raw,   
                         file.exp.bw = file.hct.H3k4me3.bw,  
                         file.ctrl.bw = file.hct.H3k4me3.ctrl.bw,  
                         file.exp.peak = file.hct.H3k4me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HCT", Mark="H3k9ac", Ver="S1.V2", 
                         file.pred.bw = file.hct.H3k9ac.pred.raw,   
                         file.exp.bw = file.hct.H3k9ac.bw,  
                         file.ctrl.bw = file.hct.H3k9ac.ctrl.bw,  
                         file.exp.peak = file.hct.H3k9ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HCT", Mark="H3k9me3", Ver="S1.V2", 
                         file.pred.bw = file.hct.H3k9me3.pred.raw,   
                         file.exp.bw = file.hct.H3k9me3.bw,  
                         file.ctrl.bw = file.hct.H3k9me3.ctrl.bw,  
                         file.exp.peak = file.hct.H3k9me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="HCT", Mark="H4k20me1", Ver="S1.V3", 
                         file.pred.bw = file.hct.H4k20me1.pred.raw,   
                         file.exp.bw = file.hct.H4k20me1.bw,  
                         file.ctrl.bw = file.hct.H4k20me1.ctrl.bw,  
                         file.exp.peak = file.hct.H4k20me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL));



  df.Alex.K562.info <- rbind(
                    c(Cell="Alex.K562", Mark="H3k27ac", Ver="S1.V3", 
                         file.pred.bw = file.Alex.H3k27ac.Gx.pred.raw,   
                         file.exp.bw = file.Alex.H3k27ac.bw,  
                         file.ctrl.bw = file.Alex.H3k27ac.ctrl.bw,  
                         file.exp.peak = file.Alex.H3k27ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="Alex.K562", Mark="H3k4me1", Ver="S1.V2", 
                         file.pred.bw = file.Alex.H3k4me1.Gx.pred.raw,   
                         file.exp.bw = file.Alex.H3k4me1.bw,  
                         file.ctrl.bw = file.Alex.H3k4me1.ctrl.bw,  
                         file.exp.peak = file.Alex.H3k4me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="Alex.K562", Mark="H3k4me2", Ver="S1.V2", 
                         file.pred.bw = file.Alex.H3k4me2.Gx.pred.raw,   
                         file.exp.bw = file.Alex.H3k4me2.bw,  
                         file.ctrl.bw = file.Alex.H3k4me2.ctrl.bw,  
                         file.exp.peak = file.Alex.H3k4me2.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="Alex.K562", Mark="H3k4me3", Ver="S1.V3", 
                         file.pred.bw = file.Alex.H3k4me3.Gx.pred.raw,   
                         file.exp.bw = file.Alex.H3k4me3.bw,  
                         file.ctrl.bw = file.Alex.H3k4me3.ctrl.bw,  
                         file.exp.peak = file.Alex.H3k4me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL))

  df.Alex.Mnase.info <- rbind(
                    c(Cell="Alex.Mnase", Mark="H3k27ac", Ver="S1.V3", 
                         file.pred.bw = file.Alex.Mnase.H3k27ac.Gx.pred.raw,   
                         file.exp.bw = file.Alex.Mnase.H3k27ac.bw,  
                         file.ctrl.bw = file.Alex.Mnase.H3k27ac.ctrl.bw,  
                         file.exp.peak = file.Alex.Mnase.H3k27ac.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="Alex.Mnase", Mark="H3k36me3", Ver="S1.V3", 
                         file.pred.bw = file.Alex.Mnase.H3k36me3.Gx.pred.raw,   
                         file.exp.bw = file.Alex.Mnase.H3k36me3.bw,  
                         file.ctrl.bw = file.Alex.Mnase.H3k36me3.ctrl.bw,  
                         file.exp.peak = file.Alex.Mnase.H3k36me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="Alex.Mnase", Mark="H3k4me1", Ver="S1.V2", 
                         file.pred.bw = file.Alex.Mnase.H3k4me1.Gx.pred.raw,   
                         file.exp.bw = file.Alex.Mnase.H3k4me1.bw,  
                         file.ctrl.bw = file.Alex.Mnase.H3k4me1.ctrl.bw,  
                         file.exp.peak = file.Alex.Mnase.H3k4me1.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="Alex.Mnase", Mark="H3k4me2", Ver="S1.V2", 
                         file.pred.bw = file.Alex.Mnase.H3k4me2.Gx.pred.raw,   
                         file.exp.bw = file.Alex.Mnase.H3k4me2.bw,  
                         file.ctrl.bw = file.Alex.Mnase.H3k4me2.ctrl.bw,  
                         file.exp.peak = file.Alex.Mnase.H3k4me2.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="Alex.Mnase", Mark="H3k4me3", Ver="S1.V3", 
                         file.pred.bw = file.Alex.Mnase.H3k4me3.Gx.pred.raw,   
                         file.exp.bw = file.Alex.Mnase.H3k4me3.bw,  
                         file.ctrl.bw = file.Alex.Mnase.H3k4me3.ctrl.bw,  
                         file.exp.peak = file.Alex.Mnase.H3k4me3.peak,
                         file.unmap.bed = file.hg19.unmap.bed,
                         file.black.bed = file.hg19.black.bed,
                         file.cell.hugemap.bed = NULL))


  df.Don.Horse.info <- as.data.frame(rbind(
                    c(Cell="Don.Horse", Mark="H3k27ac", Ver="S1.V3", 
                         file.pred.bw = file.Don.Horse.H3k27ac.pred.raw,   
                         file.exp.bw = file.Don.Horse.H3k27ac.bw,  
                         file.ctrl.bw = file.Don.Horse.H3k27ac.ctrl.bw,  
                         file.exp.peak = file.Don.Horse.H3k27ac.peak,
                         file.unmap.bed = file.horse.unmap.bed,
                         file.black.bed = file.horse.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="Don.Horse", Mark="H3k27me3", Ver="S1.V3", 
                         file.pred.bw = file.Don.Horse.H3k27me3.pred.raw,   
                         file.exp.bw = file.Don.Horse.H3k27me3.bw,  
                         file.ctrl.bw = file.Don.Horse.H3k27me3.ctrl.bw,  
                         file.exp.peak = file.Don.Horse.H3k27me3.peak,
                         file.unmap.bed = file.horse.unmap.bed,
                         file.black.bed = file.horse.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="Don.Horse", Mark="H3k4me1", Ver="S1.V2", 
                         file.pred.bw = file.Don.Horse.H3k4me1.pred.raw,   
                         file.exp.bw = file.Don.Horse.H3k4me1.bw,  
                         file.ctrl.bw = file.Don.Horse.H3k4me1.ctrl.bw,  
                         file.exp.peak = file.Don.Horse.H3k4me1.peak,
                         file.unmap.bed = file.horse.unmap.bed,
                         file.black.bed = file.horse.black.bed,
                         file.cell.hugemap.bed = NULL),


                    c(Cell="Don.Horse", Mark="H3k4me3", Ver="S1.V3", 
                         file.pred.bw = file.Don.Horse.H3k4me3.pred.raw,   
                         file.exp.bw = file.Don.Horse.H3k4me3.bw,  
                         file.ctrl.bw = file.Don.Horse.H3k4me3.ctrl.bw,  
                         file.exp.peak = file.Don.Horse.H3k4me3.peak,
                         file.unmap.bed = file.horse.unmap.bed,
                         file.black.bed = file.horse.black.bed,
                         file.cell.hugemap.bed = NULL)), stringsAsFactors=F)

df.Don.Horse.info$file.ctrl.bw <-NULL;


  df.MM9.mESC.info <- as.data.frame(rbind(

                    c(Cell="mESC", Mark="H3k27me3", Ver="S1.V3", 
                         file.pred.bw = file.mm9.mESC.H3k27me3.pred.raw,   
                         file.exp.bw = file.mm9.mESC.H3k27me3.bw,  
                         file.ctrl.bw = file.mm9.mESC.H3k27me3.ctrl.bw,  
                         file.exp.peak = file.mm9.mESC.H3k27me3.peak,
                         file.unmap.bed = NULL,
                         file.black.bed = file.mm9.black.bed,
                         file.cell.hugemap.bed = NULL),

                    c(Cell="mESC", Mark="H3k4me3", Ver="S1.V3", 
                         file.pred.bw = file.mm9.mESC.H3k4me3.pred.raw,   
                         file.exp.bw = file.mm9.mESC.H3k4me3.bw,  
                         file.ctrl.bw = file.mm9.mESC.H3k4me3.ctrl.bw,  
                         file.exp.peak = file.mm9.mESC.H3k4me3.peak,
                         file.unmap.bed = NULL,
                         file.black.bed = file.mm9.black.bed,
                         file.cell.hugemap.bed = NULL)), stringsAsFactors=F)









