set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/B3/BinaryUmdf.v1.8/SecurityDefinitionMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/B3/BinaryUmdf.v1.8/SecurityDefinitionMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryUmdf_Sbe_v1_8_Dissector.lua" \
  -d "udp.port==${PORT},b3.b3derivatives.binaryumdf.sbe.v1.8.lua" \
  -T json \
  > B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json 2> B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDefinitionMessage) ---"; cat B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json.stderr ]; then echo "--- tshark stderr (SecurityDefinitionMessage) ---"; cat B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json.stderr; fi

grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securityid" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securityexchange" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securityidsource" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securitygroup" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.symbol" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securityupdateaction" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securitytype" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securitysubtype" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.totnorelatedsym" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.minpriceincrementoptional" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.strikeprice" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.contractmultiplier" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.pricedivisor" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securityvaliditytimestamp" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.nosharesissued" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.clearinghouseid" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.minorderqty" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.maxorderqty" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.minlotsize" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.mintradevol" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.corporateactioneventid" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.issuedate" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.maturitydate" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.countryofissue" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.startdate" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.enddate" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.settltype" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.settldate" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.dateddate" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.isinnumber" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.asset" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.cficode" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.currency" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.strikecurrency" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.settlcurrency" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securitystrategytype" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.lottype" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.ticksizedenominator" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.product" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.exercisestyle" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.putorcall" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.pricetypepricetypeoptional" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.marketsegmentid" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.governanceindicator" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.securitymatchtype" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.lastfragment" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.multilegmodel" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.multilegpricemethod" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
grep "b3.b3derivatives.binaryumdf.sbe.v1.8.mincrossqty" B3.B3Derivatives.BinaryUmdf.Sbe.v1.8.SecurityDefinitionMessage.json
