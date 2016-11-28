#!/bin/sh
set -e
set -x


kerl build 19.1 19.1
kerl install 19.1 /usr/local/erlang19.1
. /usr/local/erlang19.1/activate

git clone https://github.com/elixir-lang/elixir.git
cd elixir
make install
