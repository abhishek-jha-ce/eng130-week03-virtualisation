# Linux Environtment Variable

## Creating Environment Variable

```
$ NAME=ABHISHEK
$ echo $NAME
ABHISHEK  # The value will be printed
```
`export` is used to create environment value.
```
$ export LAST_NAME=JHA
$ printenv LAST_NAME
JHA


$export DB_HOST=DB-IP:27017
```

To see the evnironment variable we use `$env`

Note: The environment variable is not persistant this way.

To remomve the variable set
```
unset VARIABLE_NAME
```

### To make a Linux Environment Variable Permanent
- To make the evn variable permanent, we can make 
```
user bashrc
```

The .profiile file exists in a user’s home directory. You can add environment variables for a user by editing their .profile file to include export commands to set environment variables.

For example, to make our COOLSERVER environment variable permanent for our current user, follow this process:

Change directory to the user’s home directory cd ~
Open .profile file in a text editor (e.g. nano, vi, vim, etc.)
Add the following line to the bottom of the file: export COOLSERVER='Cherry'
Save the changes
