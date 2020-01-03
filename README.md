# Linux Study
Study Linux Programming

## Index
1. [Basic Commands](#basic-commands)
2. [Redirection and Pipe](#redirection-and-pipe)

<a name="basic-commands" />
## 1. Basic Commands
Before we start, we can get detailed information about each command using ```--help``` option.
For example, if you want to know detailed usage and relevant options of ```ls```, you should do like this.
```bash
$ ls --help
```

#### pwd (print working directory)
Print current working directory path as absolute path.
```bash
$ pwd
/home/Desktop
```

#### cd (change directory)
Change current working directory to the directory given as argument.
```bash
$ cd [directory_path]

$ cd /      # move to root directory
$ cd ~      # move to home directory
$ cd ..     # move to parent directory
$ cd dir    # move to child directory named 'dir'
$ cd ../dir # move to parent directory's child directory named 'dir'
```

#### ls (list)
List files and directories. 
If the directory path is not given as argument, the items in current working directory are printed.
```bash
$ ls [directory_path]

$ ls        # list items in current working directory
dir1 dir2 file1.txt file2.txt
$ ls /usr   # list items in '/usr' directory
bin  games    lib    libexec  local   sbin   src
etc  include  lib32  libx32   locale  share
$ ls -a     # list all items in current working directory (list items starting with .)
. .. dir1 dir2 file1.txt file2.txt
$ ls -l     # list items in current working directory as a long listing format
total 16
drwxr-x--- 2 bohee bohee 4096 Dec 31 16:45 dir1
drwxr-x--- 2 bohee bohee 4096 Dec 31 16:45 dir2
-rw-r----- 1 bohee bohee    7 Dec 31 16:45 file1.txt
-rw-r----- 1 bohee bohee   14 Dec 31 16:45 file2.txt
$ ls -al
total 24
drwxr-x---  4 bohee bohee 4096 Dec 31 16:45 .
drwx------ 16 bohee bohee 4096 Dec 31 16:45 ..
drwxr-x---  2 bohee bohee 4096 Dec 31 16:45 dir1
drwxr-x---  2 bohee bohee 4096 Dec 31 16:45 dir2
-rw-r-----  1 bohee bohee    7 Dec 31 16:45 file1.txt
-rw-r-----  1 bohee bohee   14 Dec 31 16:45 file2.txt
```

#### mkdir (make directory)
Create a new directory.
```bash
$ mkdir [directory_path]

$ mkdir dir1      # make a new direcory named 'dir1' in current working directory
```

#### mv (move)
Move files or directories to other location.
This command can be used when renaming. 
```bash
$ mv [source_path] [destination_path]

$ ls
dir1 dir2 file1.txt file2.txt
$ mv file1.txt file_renamed.txt   # rename file1.txt as file_renamed.txt
$ ls
dir1 dir2 file2.txt file_renamed.txt
```

#### cp (copy)
Copy files or directories.
```bash
$ cp [source_path] [destination_path]

$ cp file1.txt file3.txt          # copy file1.txt to file3.txt
```

#### rm (remove)
Delete files or directories. 
If a directory is given as argument, that directory should be empty.
Or use ```-r``` option, then you can also delete the directory with items recursively.
```bash
$ rm [path]

$ ls        # list items in current working directory
$ rm file1.txt   # remove file1.txt
$ rm dir    # remove directory named 'dir', 'dir' should be empty 
$ rm dir -r # remove directory named 'dir'
```

#### cat (concatenate)
Concatenate given files and print it.
```bash
$ cat [file_path]

$ cat file1.txt  # print contents of file1.txt
$ cat file1.txt file2.txt  # concatenate file1.txt and file2.txt and print it
```

#### less
View a given file page by page. 
Unlike ```more``` command, it searches words, moves backward, and so one.
```bash
$ less [file_path]
```
It has several options, and followings are used commonly. 

option | usage
:---: | :---:
-N | Print line number
-n | Hide line number
/[string] | Search [string]
n | Search next [string]
N | Search previous [string]
[number] | Move to line [number]

#### head
Print the first few lines(10 lines by default) of a given file. 
```bash
$ head [file_path]

$ head file1.txt       # print first 10 lines of file1.txt
$ head file1.txt -n 8  # print first 8 lines of file1.txt
```

#### tail
Print the last few lines(10 lines by default) of a given file. 
If we use ```-F``` option, ```tail``` command doesn't terminate, then print file when update occurs.
```bash
$ tail [file_path]

$ tail file1.txt       # print last 10 lines of file1.txt
$ tail file1.txt -n 8  # print last 8 lines of file1.txt
```

#### file
Find files or directories. 
```bash
$ file [file_path]

$ file p1       # determine file type of file 'p1'
p1: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32, BuildID[sha1]=ad3eaeb130976a8de203103960aab263eff9c243, not stripped
```

#### find
Determine file type of a given file.
We can find only files or directories using ```-type``` option.
```bash
$ find [search_path] -name [file_name]

$ find ./ -name 'file1.txt'    # find 'file1.txt' in current working directory
file1.txt
$ find ./ -name 'file*'        # find items whose name starts as 'file' in current working directory
./file
./file1.txt
./file2.txt
$ find ./ -name 'file*' -type -d  # find directories whose name starts as 'file' in current working directory
./file
$ find ./ -name 'file*' -type -f  # find files whose name starts as 'file' in current working directory
./file1.txt
./file2.txt
```

<a name="redirection-and-pipe" />
## 2. Redirection and Pipe
