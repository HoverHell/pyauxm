#!/bin/sh

set -e
set -x

bumpversion minor

git push
git push --tags

# # No testing that makes sense, currently. Maybe later.
# tox

python setup.py sdist upload
python setup.py bdist_wheel upload
