# Common Linux Commands
- `pwd` - To Find the current Location (Path)
- `whoami` - To print the username of the current user.
- `uname` - To find the current OS.
- `uname -a` - Detail of current OS.
- `touch filename` - To create a new file
- `nano filename` - To create a new file and add content at the same time. *Note*: `nano` editor should be available.
- `ls` - To display the files.
- `ls -a` - To display the hidden files.
- `ll` - Long list format to display the files.
- `mkdir foldername` - To create a folder.
- `cd foldername` - To navigate to the folder.
- `cd ..` - To navigate out of the folder.
- `cd` - To navigate back to the home folder.
- `rm -rf file/foldername` - To delete a file/folder.
- `cp filename location - To copy a file. E.g. `cp test.txt app/` copies `test.txt` inside `app` folder.
- `sudo` - For admin access. To modify anything, we need to append it at the begining.
- `sudo su` - `su` stands for Super User. It switch to admin user.
- `chmod instruction filename` - To change the permission. Example `chmod 700 test.text` will give `read` `write` and `execute` permission for that file.
- `top` - Displays the currently running process.
Note: To exit from running process display press `q`. Alternatively, we can also use `CTRL+C` when we are done with top command.
- `ps aux` - Displays the detailed currently running processes.
- `kill PID` - To remove any running processes. E.g. `kill 76123`
 

## Exercises:

- Print last 3 lines from test.txt
```
tail -3 file-name
```

- Print first 3 lines from the test.txt
```
head -3 file-name
```

- Print last 10 lines from the test.txt
``` 
tail -10 file-name
```

- print last line from the test.txt
```
tail -1 file-name
```

- Research how to use `|` & `grep`& `sort`
```
The Pipe symbol `|` is use to combine two or more commands. The output of the first command is used as the input of the second command.

The `grep` command is used to search text and string in a file. For e.g. `grep string filename` or  `grep 'word' filename`

The `sort` command is used to sort a file, arranging the records in a particular order
```

- How to create/run a process in the background & foreground, create/run a process in both area
```
`fg` - is used to bring a background process to the foreground.
`bg` - is used to send a process to the background.
```

- kill the process that you created.
```
$kill 6213
```
