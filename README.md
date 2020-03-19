# The Knowledge

This is a repository covering the building blocks of a productive remote
experience at the GDSL.

To build it you will need R's `bookdown` and `pandoc` (both available withing the [`gds_dev`](https://github.com/darribas/gds_env) containerised platform). Once you have made edits, you can build the website again by runnin from this folder:

```
make gitbook
```

You can build a pdf by:

```
make pdf
```

Or an `.epub` version by:

```
make epub
```

To run all at once (recommended):

```
make
```
