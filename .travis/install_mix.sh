#!/bin/bash
set -e
set -x

pushd ~

  mkdir kerl

  pushd kerl
    curl -O https://raw.githubusercontent.com/kerl/kerl/master/kerl
    chmod a+x kerl
  popd

  kerl build 19.1 erlang-19.1
  kerl install erlang-19.1 erlang

  wget https://github.com/elixir-lang/elixir/releases/download/v1.3.4/Precompiled.zip
  unzip Precompiled.zip -d elixir
popd
