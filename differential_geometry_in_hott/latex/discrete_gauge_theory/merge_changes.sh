for i in discrete_gauge_theory*.tex; do python pyMergeChanges.py -ah $i $i.2; done;
for i in discrete_gauge_theory*.tex; do mv $i.2 $i; done
