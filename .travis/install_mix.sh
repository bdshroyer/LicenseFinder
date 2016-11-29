#!/bin/bash
set -e
set -x

pushd ~

  erl -version

  wget https://github.com/elixir-lang/elixir/releases/download/v1.3.4/Precompiled.zip
  unzip Precompiled.zip -d elixir
  export PATH=$PATH:$PWD/elixir/bin
popd
