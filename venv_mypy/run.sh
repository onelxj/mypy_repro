#!/bin/bash

# Activates the virtual environment, invokes 'protoc' for the 'api/test.proto' and tries to pass mypy check.

rm -rf .venv/
rm -rf test_pb2*

python3 -m venv .venv
source .venv/bin/activate

pip install -r requirements.in

python -m grpc_tools.protoc -Iapi --python_out=. --grpc_python_out=. --pyi_out=. api/test.proto

mypy .  # This runs fine, since mypy can detect '.py' and '.pyi' files if they are not spelled explicitly.

# mypy ./*.py* # The same as below.
mypy test_pb2.py test_pb2.pyi  # Fails with "error: Duplicate module named "test_pb2" (also at "test_pb2.py")"

