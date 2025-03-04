# mypy bazel integration error repro

## Bazel mypy-integration issue:

With the newer `protobuf` version, it started to generate `*.pyi` files for the
generated python `pb` files in the same directory. The original `mypy-integration`
rule reads the sources file-by-file and passes it to `mypy`, which results in the
`error: Duplicate module named`.

## Bazel repro:

To bump into the error simply run `cd bazel_mypy && bazel run //:main` in the root of the repository.

## Original mypy error:

`cd venv_mypy && ./run.sh`