## 06: The root directory

Let's change directory to the root directory, and then into our home directory

```bash

bch709@:/learning_unix/outer/inner$ cd /
bch709@:/$ cd home
bch709@:/home$ cd learner
bch709@:~$
```

In this case, we may as well have just changed directory in one go:
```bash
cd /home/bch709/
```

The leading `/` is incredibly important. The following two commands are very different:

```bash
cd /home/bch709/
cd home/bch709/
```

The first command says go the `bch709` directory that is beneath the `home` directory that is at the top level (the root) of the file system. There can only be one `/home/bch709` directory on any Unix system.

The second command says go to the `bch709` directory that is beneath the `home` directory that is located wherever I am right now. There can potentially be many `home/bch709` directories on a Unix system (though this is unlikely).

Learn and understand the difference between these two commands.
