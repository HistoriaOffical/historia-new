#!/usr/bin/env bash
# Copyright (c) 2018-2020 The Historia Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.
# use testnet settings,  if you need mainnet,  use ~/.historiacore/historiad.pid file instead
export LC_ALL=C

historia_pid=$(<~/.historiacore/testnet3/historiad.pid)
sudo gdb -batch -ex "source debug.gdb" historiad ${historia_pid}
