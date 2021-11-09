#!/bin/bash
ROOT=$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")/.." && pwd)

export CODE_BASE_PATH="$ROOT"
echo "Root of code base has been specified as: $CODE_BASE_PATH"

