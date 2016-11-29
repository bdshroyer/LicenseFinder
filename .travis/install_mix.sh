#!/bin/bash
set -e
set -x

pushd ~

  erl -version

  wget https://github.com/elixir-lang/elixir/releases/download/v1.3.4/Precompiled.zip
  gunzip Precompiled.zip
  mv Precompiled elixir
  export PATH=$PATH:$PWD/elixir/bin
popd
