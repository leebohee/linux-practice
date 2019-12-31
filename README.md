# Linux Study
Study Linux Programming

## Index
1. [Basic Commands](#basic-commands)

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
