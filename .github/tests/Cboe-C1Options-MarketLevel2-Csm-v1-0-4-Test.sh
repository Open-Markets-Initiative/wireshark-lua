set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.MarketLevel2.Csm.v1.0.4/SecurityDefinitionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketLevel2_Csm_v1_0_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json

grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityexchange" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.classkey" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityid" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.maturitydate" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.pricetype" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.putorcall" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.exercisestyle" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.contractsize" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.nolegs" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
