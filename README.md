# System Software Development Assignment - 1
- This assignment is based on SHELL.
- There are 4 folders each containing .sh file and supporting files(whereever required) for each part of this assignment.

## Steps to run each file

### Question 1
This shell file need to download [quotes.txt](https://gist.github.com/sai11101989/bcf9376201a363807fb4daa2ce778b14) file.

To execute this .sh file, open Terminal and change the directory where the .sh files are stored. Run the file on terminal eg. `./Q1.sh` to execute Q1.sh file.

This question contains 4 parts.
1. Generate quotes_empty.txt file which removes all the empty files from quotes.txt file.

```bash
grep -v '^$'
```
   - grep : command is used to search for pattern within a file.
   - -v : option inverts the match.
   - ^$ : regular expression for an empty line. ^ means start of the line, $ means end of the line. Together '^$ means a line with no characters.


2. Remove duplicates and generate a quotes_rdup.txt file.

3. Count number of quotes by personality and print them in quotes_byperson.txt file

```bash
awk -F'~' '{gsub(/^[ \t]+|[ \t]+$/, "", $2); print $2}'
```
   - awk is text processing tool.
   - -F'~' specifies that the fields in the input are separated by the ~ character (i.e., ~ is used as the field delimiter).

4. List all the words in the file that starts with ‘s’ and doesn’t follow by ‘a'.

### Question 2
To execute this .sh file, open Terminal and change the directory where the .sh files are stored. Run the file on terminal eg. `./Q2.sh` to execute Q2.sh file.

This SHELL command will generate a random account nmuber and password with the following specifications:
 - Password with length not less than 8 characters and not more than 10
characters with at least one Captial English alphabet, at least one small English at least and at least one symbol among %&#$@()!
 - account number for banks with length not less than 12 characters and not more than 14 characters containing only numbers i.e [0-9] ~~without repetition~~. The first character of the account number should not be zero. The account number should not form a Fibonacci series in any part of the overall string. The account number should not have a repeated number for more than 3 times.

ASSUMPTION MADE : We cannot generate 12-14 digit number without repetition of numbers.

NOTE : If using macOS, first install 
```bash
brew install coreutils
```

### Question 3
To execute this .sh file, open Terminal and change the directory where the .sh files are stored. Run the file on terminal eg. `./Q3.sh` to execute Q3.sh file.

This SHELL command will print all the directories ONLY present in its current directory.

The output displayed will be listed by size in increasing order. The size of the directory will be printed in human readable format. The columns will be tab separated. 

### Ouestion 4
To execute this .sh file, open Terminal and change the directory where the .sh files are stored. Run the file on terminal eg. `./Q4.sh` to execute Q4.sh file.

 - This shell script will create an empty directory named `temp_activity`.

 - Inside this directory, files temp1.sh till temp50.sh will be created.

 - After creating 50 .sh files, overwriting the extensions of files from temp1 to temp25 from .sh to .txt