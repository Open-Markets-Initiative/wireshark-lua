set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketLevel2.Csm.v1.0.4/SecurityDefinitionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketLevel2_Csm_v1_0_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json 2> Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDefinitionMessage) ---"; cat Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketlevel2.csm.v1.0.4.securitytypelength" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.securitytypetext" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityexchange" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.symbollength" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.symboltext" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.targetlocationidlength" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.targetlocationidtext" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.classkey" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityid" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.maturitydate" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.pricetype" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.strikepriceexponent" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.strikepricemantissa" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.putorcall" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.minimumstrikepricefractionexponent" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.minimumstrikepricefractionmantissa" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.maxstrikepriceexponent" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.maxstrikepricemantissa" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.premiumbreakpointexponent" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.premiumbreakpointmantissa" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.minimumabovepremiumfractionexponent" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.minimumabovepremiumfractionmantissa" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.minimumbelowpremiumfractionexponent" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.minimumbelowpremiumfractionmantissa" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.exercisestyle" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.currencycodelength" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.currencycodetext" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.underlyingsymbollength" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.underlyingsymboltext" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.underlyingtypelength" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.underlyingtypetext" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.contractsize" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.nolegs" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
