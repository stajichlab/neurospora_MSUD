module load RAxML/7.3.2
#raxmlHPC-PTHREADS-SSE3  -T 48 -m PROTCATBLOSUM62F -s ALL.trim.phy -N 100 -f a -n ALL_run4 -x 121 -p 13 -o Transib1_HM
#raxmlHPC-PTHREADS-SSE3  -T 48 -m PROTCATBLOSUM62F -s ALL.trim_gappy.aln -N 100 -f a -n ALL_run5 -x 121 -p 13 -o Transib1_HM
raxmlHPC-PTHREADS-SSE3  -T 48 -m PROTCATBLOSUM62F -s ALL.phy -N 100 -f a -n ALL_run6 -x 121 -p 13 -o Transib1_HM

