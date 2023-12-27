# Lesson 1: Getting Started

This lesson covers setting up your development environment and building a basic project using Micromamba, Bazel, and GDB.

## Installation

### Micromamba

```bash
curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
micromamba shell init --shell bash --root-prefix=~/micromamba
```

```bash
add /home/<user>/bin to your PATH in .bashrc or your rc for your shell (export PATH=$PATH:/usr/jonty/bin)
source your .bashrc or your logout and login back
```

### Create Environment

Create a new environment using Micromamba:

```bash
micromamba create -n cpp_env
micromamba activate cpp_env
micromamba install -c conda-forge gxx
micromamba install -c conda-forge bazel
micromamba install -c conda-forge gdb
```

### build with debug

bazel build --config=dbg //main:tg -s

### run with debug

bazel run //main:tg

### clean 

bazel clean

### Export micromamba environment
