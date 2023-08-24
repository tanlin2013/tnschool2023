#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run safety check -i 39462 -i 40291
poetry run bandit -c pyproject.toml -r tnschool2023/
poetry run isort --check --diff tnschool2023/ tests/
poetry run black --check tnschool2023/ tests/
poetry run flake8 tnschool2023/ tests/
poetry run mypy \
           --install-types \
           --non-interactive \
           tnschool2023/
#  https://mypy.readthedocs.io/en/stable/running_mypy.html#library-stubs-not-installed
