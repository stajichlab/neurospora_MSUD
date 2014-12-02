cutadapt -n 2 -a TCGTATGCCGTCTT -a TCGTATGCC -a GTTCAGAGTT -o ../cutadapt/PP.cutadapt.fq 101015_7589X1_s_6_sequence.txt 2> PP.cut.out &
cutadapt -n 2 -a TCGTATGCCGTCTT -a TCGTATGCC -a GTTCAGAGTT -o ../cutadapt/2PF.cutadapt.fq 101015_7589X2_s_7_sequence.txt 2> 2PF.cut.out &
cutadapt -n 2 -a TCGTATGCCGTCTT -a TCGTATGCC -a GTTCAGAGTT -o ../cutadapt/4PF.cutadapt.fq 101015_7589X3_s_8_sequence.txt 2> 4PF.cut.out &
