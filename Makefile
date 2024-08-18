# https://www.hpcs.cs.tsukuba.ac.jp/experiment/openmp-txt.pdf#page=3
run-omphello: omphello.out
	./omphello.out	

run-omphello-4-thread: omphello.out
	export OMP_NUM_THREADS=4; ./omphello.out	

omphello.out: omphello.c
	gcc-14 -fopenmp -o omphello.out omphello.c	

run-sum: sum.out
	time ./sum.out	

sum.out: sum.c
	gcc-14 -fopenmp -o sum.out sum.c	

run-parallel_sum: parallel_sum.out
	time ./parallel_sum.out	

parallel_sum.out: parallel_sum.c
	gcc-14 -fopenmp -o parallel_sum.out parallel_sum.c	

run-gauss_sum: gauss_sum.out
	time ./gauss_sum.out	

gauss_sum.out: gauss_sum.c
	gcc-14 -fopenmp -o gauss_sum.out gauss_sum.c

#TODO: https://www2.ccs.tsukuba.ac.jp/workshop/HPCseminar/2012/material/2012-05-openmp.pdf#page-54
#このスライドにあるナップザック問題を解く
