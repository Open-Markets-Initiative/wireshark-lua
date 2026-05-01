set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.MarketLevel2.Csm.v1.0.4/SecurityDefinitionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketLevel2_Csm_v1_0_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json 2> Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDefinitionMessage) ---"; cat Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr ]; then echo "--- tshark stderr (SecurityDefinitionMessage) ---"; cat Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr; fi
echo "--- tshark diagnostic (SecurityDefinitionMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json; echo

grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityexchange" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.classkey" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityid" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.maturitydate" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.pricetype" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.putorcall" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.exercisestyle" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.contractsize" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.nolegs" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
