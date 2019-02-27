#!/usr/bin/env bats

function setup () {
  set -o pipefail
  if [ -n "$DEBUG" ]; then
    set -x
  fi
  PCAP_DIR=${PCAP_DIR-"$BATS_TEST_DIRNAME/../Directory"}
  LUA_DIR=${LUA_DIR-"$BATS_TEST_DIRNAME/.."}
}

@test "nasdaq.ise.ordercombofeed.itch.v1.1" {
  tmpfile="$BATS_TMPDIR/Nasdaq.Ise.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.H.json"
  tshark \
    -r "$PCAP_DIR/Data/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.H.pcap" \
    -X "lua_script:$LUA_DIR/Nasdaq/Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Script.Dissector.lua" \
    -T json \
    | jq -e '.[0]._source.layers["nasdaq.ise.ordercombofeed.itch.v1.1.lua"]' \
    > "$tmpfile"
  #cat "$tmpfile" 1>&2
  grep "nasdaq.ise.ordercombofeed.itch.v1.1.strategyid" "$tmpfile"
  grep "nasdaq.ise.ordercombofeed.itch.v1.1.currenttradingstate" "$tmpfile"
}
