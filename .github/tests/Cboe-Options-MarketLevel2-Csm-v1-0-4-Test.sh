set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.MarketLevel2.Csm.v1.0.4/SecurityDefinitionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_MarketLevel2_Csm_v1_0_4_Dissector.lua" \
  -T json \
  > Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json

grep "cboe.options.marketlevel2.csm.v1.0.4.securityexchange" Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.options.marketlevel2.csm.v1.0.4.classkey" Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.options.marketlevel2.csm.v1.0.4.securityid" Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.options.marketlevel2.csm.v1.0.4.maturitydate" Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.options.marketlevel2.csm.v1.0.4.pricetype" Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.options.marketlevel2.csm.v1.0.4.putorcall" Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.options.marketlevel2.csm.v1.0.4.exercisestyle" Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.options.marketlevel2.csm.v1.0.4.contractsize" Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.options.marketlevel2.csm.v1.0.4.nolegs" Cboe.Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
