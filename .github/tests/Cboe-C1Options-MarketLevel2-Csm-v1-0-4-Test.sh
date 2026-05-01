set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Cboe/Options.MarketLevel2.Csm.v1.0.4/SecurityDefinitionMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.MarketLevel2.Csm.v1.0.4/SecurityDefinitionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketLevel2_Csm_v1_0_4_Dissector.lua" \
  --enable-heuristic "cboe.c1options.marketlevel2.csm.v1.0.4.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.marketlevel2.csm.v1.0.4.lua" \
  -T json \
  > Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json 2> Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr
if [ -s Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr ]; then echo "--- tshark stderr (SecurityDefinitionMessage) ---"; cat Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr; fi

grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityexchange" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.classkey" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityid" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.maturitydate" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.pricetype" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.putorcall" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.exercisestyle" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.contractsize" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.nolegs" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
