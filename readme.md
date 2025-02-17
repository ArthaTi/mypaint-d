# mypaint-d

D bindings for [libmypaint](https://github.com/mypaint/libmypaint).

## Generating bindings

**Note:** This will not work when fetched using DUB. You must [clone the git repository][mpd-git].

Make sure you fetch all submodules before proceeding:

```sh
git submodule init
git submodule update
```

As soon as this step is complete, you can generate the bindings using DUB:

```
dub -c=generate
```

To make them accessible from DUB, they are included in this git repository.

[mpd-git]: https://git.samerion.com/Samerion/mypaint-d
