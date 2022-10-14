# Simplifying
The regular expressions can be stored in variables and then called.  After each guess, the regexes are updated.

```bash
wordle_first='/^/ && /^./ && /^../ && /^.../ && /^..../'
wordle_second='[:]'
wordle_third_1='/./ && /./ '
wordle_third_2='/^[:]|^.[:]|^..[:]|^...[:]|^....[:]'
```

```bash
# size of solution space
cat /tmp/words.5-letters.txt |
awk "${wordle_first}" |
egrep -v -e "${wordle_second}" |
awk "${wordle_third_1}" |
egrep -v -e "${wordle_third_2}" |
wc
```

```bash
# frequency of letters in solution space
cat /tmp/words.5-letters.txt |
awk "${wordle_first}" |
egrep -v -e "${wordle_second}" |
awk "${wordle_third_1}" |
egrep -v -e "${wordle_third_2}" |
grep -o . | sort | uniq -c | sort -rn | head
```


```bash
# top 10 words in solution space
cat /tmp/words.5-letters.txt |
awk "${wordle_first}" |
egrep -v -e "${wordle_second}" |
awk "${wordle_third_1}" |
egrep -v -e "${wordle_third_2}" |
cat -n | head
```

```bash
# next guess based on letter frequency
wordle_next_guess='/./ && /./'

cat /tmp/words.5-letters.txt |
awk "${wordle_first}" |
egrep -v -e "${wordle_second}" |
awk "${wordle_third_1}" |
egrep -v -e "${wordle_third_2}" |
awk "${wordle_next_guess}"

```
