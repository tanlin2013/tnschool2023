#!/bin/bash
set -euxo pipefail

./scripts/lint.sh
poetry run pytest -s --cov=tnschool2023/ --cov=tests --cov-report=term-missing ${@-} --cov-report html
