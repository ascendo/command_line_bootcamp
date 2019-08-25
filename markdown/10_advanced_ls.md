## 10: Making the `ls` command more useful

The `..` operator that we saw earlier can also be used with the `ls` command, e.g. you can list directories that are 'above' you:

```bash
bch709@:learning_unix$ cd ~/learning_unix/outer/
bch709@:outer$ ls ../../
a_directory another_directory learning_unix                                                                                                                  ```

Time to learn another useful command-line option. If you add the letter 'l' to the `ls` command it will give you a longer output compared to the default:

```bash
bch709@:learning_unix$ ls -l /home
total 4
drwxr-xr-x 6 bch709 bch709 4096 Dec  2 08:31 bch709
```
For each file or directory we now see more information (including file ownership and modification times). The 'd' at the start of each line indicates that these are directories. and rwx means permission for each user, group and others.

[ls -l](https://4.bp.blogspot.com/-NCCODMUfO4A/UM4byzdcvRI/AAAAAAAAAqs/ZvMPRC-elwE/s1600/linux_file_permissions.png)
[permission](https://i.stack.imgur.com/3NNb8.png)

*Understanding of attribute which can be out put by ls-l:*
[!ls -l](https://i.stack.imgur.com/Lm5yf.png)

*Chmod (Change mode)*
chmod is the command and system call which is used to change the access permissions of file system objects (files and directories). It is also used to change special mode flags. The request is filtered by the umask. The name is an abbreviation of change mode

*Applying Permission:*
[!ls -l](https://i.stack.imgur.com/DDHXy.png)
[!ls -l](https://i.stack.imgur.com/uNXVy.png)
*Using Octal number:*
[!octal](https://i.stack.imgur.com/9fEAm.png)
Hence Following work same like:
```bash
chmod +rwx [file_name]
chmod 777 [file_name]
```
```bash
chmod 775 [file_name]
chmod ug+rwx,o=rx [file_name]
```
Here is the easy example link.

[chmod](https://chmodcommand.com/)


There are many, many different options for the `ls` command. Try out the following (against any directory of your choice) to see how the output changes.

```bash
ls -l
ls -R
ls -l -t -r
ls -lh
```

Note that the last example combine multiple options but only use one dash. This is a very common way of specifying multiple command-line options. You may be wondering what some of these options are doing. It's time to learn about Unix documentation...
