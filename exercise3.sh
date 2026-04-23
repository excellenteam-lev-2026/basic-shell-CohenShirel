pwd
#1
who -a > logged_is_who.txt
cat logged_is_who.txt
#2
echo "The answer is 42" > fact
#3
cat logged_is_who.txt >> fact
#4
grep "Alice" alice.txt
#5
grep -c "Why" alice.txt
#6
grep "^CHAPTER" alice.txt | sed 's/^CHAPTER [0-9A-ZIVX]*\. //g' | sed 's/^CHAPTER [0-9A-ZIVX]* //g' > chapters.txt
#7
grep fear alice.txt | sed 's/e/o/g'
#8
grep -n "Alice" alice.txt > numbered_alice.txt
#9
grep -v fear alice.txt | grep -v rabbit
#10
grep "\*" alice.txt | sort | uniq
