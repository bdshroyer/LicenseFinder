#!/bin/sh
set -e
set -x

git clone https://github.com/elixir-lang/elixir.git
cd elixir
make install
