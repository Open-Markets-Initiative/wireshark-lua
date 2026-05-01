set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Nasdaq/Uqdf.Output.Utp.v1.5/LimitUpLimitDownPriceBandMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Uqdf.Output.Utp.v1.5/LimitUpLimitDownPriceBandMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_Uqdf_Output_Utp_v1_5_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.uqdf.output.utp.v1.5.lua" \
  -T json \
  > Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json 2> Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json.stderr \
  || { echo "--- tshark FAILED (LimitUpLimitDownPriceBandMessage) ---"; cat Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json.stderr; exit 1; }
if [ -s Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json.stderr ]; then echo "--- tshark stderr (LimitUpLimitDownPriceBandMessage) ---"; cat Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json.stderr; fi

grep "nasdaq.uqdf.output.utp.v1.5.symbol" Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.luldpricebandindicator" Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.luldtimestamp" Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.limitdownprice" Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.limitupprice" Nasdaq.Uqdf.Output.Utp.v1.5.LimitUpLimitDownPriceBandMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Uqdf.Output.Utp.v1.5/QuoteLongFormMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Uqdf.Output.Utp.v1.5/QuoteLongFormMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_Uqdf_Output_Utp_v1_5_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.uqdf.output.utp.v1.5.lua" \
  -T json \
  > Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json 2> Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteLongFormMessage) ---"; cat Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json.stderr; exit 1; }
if [ -s Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json.stderr ]; then echo "--- tshark stderr (QuoteLongFormMessage) ---"; cat Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json.stderr; fi

grep "nasdaq.uqdf.output.utp.v1.5.finratimestamp" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.symbol" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.bidprice" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.bidsize" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.askprice" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.asksize" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.quotecondition" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.sipgeneratedupdate" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.luldbboindicator" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.retailinterestindicator" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.nbboappendageindicator" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.luldnationalbboindicator" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.finraadfmpidappendageindicator" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteLongFormMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Uqdf.Output.Utp.v1.5/QuoteShortFormMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Uqdf.Output.Utp.v1.5/QuoteShortFormMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_Uqdf_Output_Utp_v1_5_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.uqdf.output.utp.v1.5.lua" \
  -T json \
  > Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json 2> Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteShortFormMessage) ---"; cat Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json.stderr; exit 1; }
if [ -s Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json.stderr ]; then echo "--- tshark stderr (QuoteShortFormMessage) ---"; cat Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json.stderr; fi

grep "nasdaq.uqdf.output.utp.v1.5.symbolshort" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.bidpriceshort" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.bidsizeshort" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.askpriceshort" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.asksizeshort" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.quotecondition" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.sipgeneratedupdate" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.luldbboindicator" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.retailinterestindicator" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.nbboappendageindicator" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
grep "nasdaq.uqdf.output.utp.v1.5.luldnationalbboindicator" Nasdaq.Uqdf.Output.Utp.v1.5.QuoteShortFormMessage.json
