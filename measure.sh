# clean up
rm -f out_*.txt

# recording
for i in {1..10}; do ./test.sh; done

# calculating Avg.
for j in {1..13};
do
cat out_${j}.txt | awk '{sum+=$1} END {print sum/NR}';
done
