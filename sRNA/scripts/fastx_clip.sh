zcat 101015_7589X1_s_6_sequence.txt.gz | fastx_clipper -a CTCGTATGCCGTCTTCTGCTTGT -n -l 17 | fastx_clipper -a CTCGTATGCCGT -n -o ../fastx_clip/PP.trim_3.fq &
zcat 101015_7589X2_s_7_sequence.txt.gz | fastx_clipper -a CTCGTATGCCGTCTTCTGCTTGT -n -l 17 | fastx_clipper -a CTCGTATGCCGT -n -o ../fastx_clip/2PF.trim_3.fq &
zcat 101015_7589X3_s_8_sequence.txt.gz | fastx_clipper -a CTCGTATGCCGTCTTCTGCTTGT -n -l 17 | fastx_clipper -a CTCGTATGCCGT -n -o ../fastx_clip/4PF.trim_3.fq &

