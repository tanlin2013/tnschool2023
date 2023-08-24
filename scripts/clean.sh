#!/bin/bash
set -euxo pipefail

poetry run isort tnschool2023/ tests/
poetry run black tnschool2023/ tests/
