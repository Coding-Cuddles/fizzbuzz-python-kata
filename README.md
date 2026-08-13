# FizzBuzz kata in Python

[![CI](https://github.com/Coding-Cuddles/fizzbuzz-python-kata/actions/workflows/main.yml/badge.svg)](https://github.com/Coding-Cuddles/fizzbuzz-python-kata/actions/workflows/main.yml)
[![Python 3.11+](https://img.shields.io/badge/python-3.11%2B-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## Overview

This kata complements [Clean Code: Fundamentals, Ep. 3 - Functions](https://cleancoders.com/episode/clean-code-episode-3).

From Wikipedia:

> Fizz buzz is a group word game for children to teach them about division.
> Players take turns to count incrementally, replacing any number divisible
> by three with the word "fizz," and any number divisible by five with the
> word "buzz."

## Instructions

### Canonical version

Write a program to print the first 100 FizzBuzz numbers, separated by newlines:

- if a number is divisible by three, replace it with "Fizz";
- if a number is divisible by five, replace it with "Buzz";
- numbers divisible by both three and five become "FizzBuzz."

#### Sample output

```text
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
...
```

### Advanced version

> [!NOTE]
>
> We recommend always starting with the canonical version and proceeding to
> the advanced version only once it works. This helps model situations in
> production where we don't know all the requirements when a project starts.

Follow the same rules as the canonical version with these additional rules:

- if a number is divisible by seven, replace it with "Fuzz";
- if a number is divisible by 11, replace it with "Jazz";
- if a number is divisible by any combination of 3, 5, 7, or 11, replace it with
  concatenated values corresponding to each divisor: e.g., 55 becomes "BuzzJazz."

#### Sample output

```text
...
86
Fizz
Jazz
89
FizzBuzz
Fuzz
92
Fizz
94
Buzz
Fizz
97
Fuzz
FizzJazz
Buzz
```

## Prerequisites

Required:

- [Git](https://git-scm.com/downloads)
- [uv](https://docs.astral.sh/uv/getting-started/installation/)

Optional:

- [GNU Make](https://www.gnu.org/software/make/), for shorter commands. Every required task also
  has a direct `uv` command.

You do not need to install Python or pytest separately. `uv` installs a compatible Python version
and the locked project dependencies when needed.

## Set up the kata

1. Clone the repository:

   ```console
   git clone https://github.com/Coding-Cuddles/fizzbuzz-python-kata.git
   ```

2. Enter the repository directory:

   ```console
   cd fizzbuzz-python-kata
   ```

3. Run the starter test. Use Make when it is installed:

   ```console
   make test
   ```

   Otherwise, run pytest through `uv` directly:

   ```console
   uv run pytest
   ```

   The first run may install Python and the project dependencies. Setup is complete when pytest
   reports `1 passed`.

   If the command fails with `uv: command not found`, install
   [uv](https://docs.astral.sh/uv/getting-started/installation/) and repeat this step.

## Work on the kata

1. Replace the starter assertion in `test_fizzbuzz.py` with the first FizzBuzz test.

2. Run the tests after each change. Use Make when it is installed:

   ```console
   make test
   ```

   Otherwise, run pytest through `uv` directly:

   ```console
   uv run pytest
   ```

   Continue when the test run passes.

## Make command reference

Make is optional. Run `make` or `make help` to list these commands in the terminal.

| Command             | Result                                  |
| ------------------- | --------------------------------------- |
| `make all`          | Run the test suite                      |
| `make help`         | Show the command reference              |
| `make test`         | Run the test suite                      |
| `make format`       | Format tracked Python files             |
| `make format-check` | Check formatting without changing files |
| `make clean`        | Remove generated caches                 |
