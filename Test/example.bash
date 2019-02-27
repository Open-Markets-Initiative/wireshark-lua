#!/usr/bin/env bash

set -o errexit
set -o pipefail

if [ -n "$DEBUG" ]; then
  set -x
fi

SELF_HOME=$(dirname "$BASH_SOURCE")
PCAP_DIR=${PCAP_DIR-"$SELF_HOME/../Directory"}
LUA_DIR=${LUA_DIR-"$SELF_HOME/.."}
tmpfile="Nasdaq.Ise.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.H.json"

tshark \
  -r "$PCAP_DIR/Data/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.H.pcap" \
  -X "lua_script:$LUA_DIR/Nasdaq/Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Script.Dissector.lua" \
  -T json \
  | jq -e '.[0]._source.layers["nasdaq.ise.ordercombofeed.itch.v1.1.lua"]' \
  > "$tmpfile"
cat "$tmpfile"
grep "nasdaq.ise.ordercombofeed.itch.v1.1.strategyid" "$tmpfile"
grep "nasdaq.ise.ordercombofeed.itch.v1.1.currenttradingstate" "$tmpfile"
rm "$tmpfile"
