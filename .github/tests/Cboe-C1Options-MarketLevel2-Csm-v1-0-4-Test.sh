set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.MarketLevel2.Csm.v1.0.4/SecurityDefinitionMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.MarketLevel2.Csm.v1.0.4/SecurityDefinitionMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,cboe.c1options.marketlevel2.csm.v1.0.4.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,cboe.c1options.marketlevel2.csm.v1.0.4.lua"; else echo "could not detect transport port for SecurityDefinitionMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.MarketLevel2.Csm.v1.0.4/SecurityDefinitionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketLevel2_Csm_v1_0_4_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json 2> Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDefinitionMessage) ---"; cat Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr ]; then echo "--- tshark stderr (SecurityDefinitionMessage) ---"; cat Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json.stderr; fi
echo "--- tshark diagnostic (SecurityDefinitionMessage) ---"
echo "json bytes: $(wc -c < Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json | sort -u | head -n 40

grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityexchange" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.classkey" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.securityid" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.maturitydate" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.pricetype" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.putorcall" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.exercisestyle" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.contractsize" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
grep "cboe.c1options.marketlevel2.csm.v1.0.4.nolegs" Cboe.C1Options.MarketLevel2.Csm.v1.0.4.SecurityDefinitionMessage.json
