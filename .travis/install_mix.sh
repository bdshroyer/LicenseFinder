#!/bin/bash
set -e
set -x

pushd ~

  mkdir kerl

  pushd kerl
    curl -O https://raw.githubusercontent.com/kerl/kerl/master/kerl
    chmod a+x kerl
  popd

  export KERL_BUILD_DOCS=yes
  kerl build 18.3 erlang-18.3
  kerl install erlang-18.3 erlang

  wget https://github.com/elixir-lang/elixir/releases/download/v1.3.4/Precompiled.zip
  unzip Precompiled.zip -d elixir
popd
