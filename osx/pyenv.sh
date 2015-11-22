#!/bin/sh
export PIP_REQUIRE_VIRTUALENV=''
for vers in 3.5.0 3.4.3 3.3.6 3.2.6 2.7.10 2.6.9 pypy-4.0.0 pypy3-2.4.0; do
    pyenv install $vers
    PYENV_VERSION=$vers $HOME/.pyenv/shims/pip install --upgrade pip setuptools
done
pyenv rehash
pyenv global 2.7.10 3.5.0

PYENV_VERSION=3.5.0 $HOME/.pyenv/shims/pip install --upgrade httpie tox
