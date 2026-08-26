set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Box/Options.Sola.Multicast.v1.8/OptionQuoteMessage.pcap" \
  -X "lua_script:Box/Box_Options_Sola_Multicast_Hsvf_v1_8_Dissector.lua" \
  -T json \
  > Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json 2> Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionQuoteMessage) ---"; cat Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json.stderr; exit 1; }

grep "box.options.sola.multicast.hsvf.v1.8.exchangeid" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.bidprice" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.bidpricefractionindicator" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.bidsize" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.askprice" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.askpricefractionindicator" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.asksize" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.filler1" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.instrumentstatusmarker" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.publiccustomerbidsize" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.options.sola.multicast.hsvf.v1.8.publiccustomerasksize" Box.Options.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
