# Exercise I
An exercise project for Haskell University task.

## Description
This project have several implementations.

- A "basic" way implemented either \#1 nor \#2 task.
- A "monadic" way implemented \#3 task using `Control.Monad`.
- A "recursive" way implemented \#3 task using recursive function.

## Running Program
1. Run `stack install`.
2. Run `stack exec exercise1`.

You may use an argument to display different task number.

- `1` will displaying the \#1 task.
- `2` will displaying the \#2 task.
- `3` will displaying the \#3 task using recursive.
- `3a` same as `3`.
- `3b` will displaying the \#3 task using `Control.Monad`.
- otherwise, same as `1`.

Example, run `stack exec exercise1 3b`.

## Directory Structure
```
exercise1
├── app
│   └── Main.hs
├── exercise1.cabal
├── LICENSE
├── README.md
├── Setup.hs
├── src
│   ├── Exercise
│   │   ├── App.hs
│   │   ├── Basic.hs
│   │   ├── Monadic.hs
│   │   └── Recursive.hs
│   ├── Exercise.hs
│   └── Lib.hs
├── stack.yaml
└── test
    └── Spec.hs
```

## License
Licensed under the [The MIT License](https://choosealicense.com/licenses/mit/).
