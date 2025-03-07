# mypaint-d

D bindings for [libmypaint](https://github.com/mypaint/libmypaint).

## Generating bindings

**Note:** This will not work when fetched using DUB. You must [clone the git repository][mpd-git].
But, if you only plan to use the bindings as-is, you don't have to perform this step.

Make sure you fetch all submodules before proceeding:

```sh
git submodule init
git submodule update
```

You will need to configure mypaint:

```sh
cd libmypaint
./autogen.sh
./configure
```

As soon as this step is complete, you can generate the bindings using DUB:

```
dub -c=generate
```

Some changes are needed to make the result compile. 

To make them accessible from DUB, they are included in this git repository.

[mpd-git]: https://git.samerion.com/Samerion/mypaint-d
