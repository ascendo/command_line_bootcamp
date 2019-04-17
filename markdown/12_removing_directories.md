## 12: Removing directories

We now have a few (empty) directories that we should remove. To do this use the [rmdir][] command, this will only remove empty directories so it is quite safe to use. If you want to know more about this command (or any Unix command), then remember that you can just look at its man page.

```bash
bch709@:~$ cd ~/learning_unix/outer/
bch709@:~/learning_unix/outer/$ rmdir inner/
bch709@:~/learning_unix/outer/$ cd ..
bch709@:~/learning_unix$ rmdir outer/
bch709@:learning_unix$ ls
bch709@:learning_unix$
```

*** Note, you have to be outside a directory before you can remove it with `rmdir` ***

Also, you can use ```bash rm -rf DIR_NAME ```
[rmdir]: http://en.wikipedia.org/wiki/Rmdir
