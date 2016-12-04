#!/bin/bash
set -e
set -x

pushd ~

  #mkdir kerl

  #pushd kerl
    #curl -O https://raw.githubusercontent.com/kerl/kerl/master/kerl
    #chmod a+x kerl
  #popd

  #export KERL_BUILD_DOCS=yes
  #kerl build 18.3 erlang-18.3
  #kerl install erlang-18.3 erlang

  #mkdir erlang
  #wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
  #dpkg -i erlang-solutions_1.0_all.deb --force-not-root --root=erlang

  apt-get source erlang
  pushd erlang
    ./configure --prefix=$HOME/erlang
    make
    make install
  popd

  wget https://github.com/elixir-lang/elixir/releases/download/v1.3.4/Precompiled.zip
  unzip Precompiled.zip -d elixir
popd
