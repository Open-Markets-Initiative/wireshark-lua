# Omi Lua Wireshark Dissectors

[![Wireshark](https://github.com/Open-Markets-Initiative/Directory/blob/main/About/Images/Wireshark.png)](https://www.wireshark.org)

Omi Lua Wireshark dissectors provide easily customized, cross platform viewing of common binary exchange protocols.

[![Lua](https://github.com/Open-Markets-Initiative/Directory/blob/main/About/Images/Lua.png)](https://www.lua.org)

For more information on lua dissectors: [How Lua fits into Wireshark](https://www.wireshark.org/docs/wsdg_html_chunked/wsluarm.html "Wireshark Lua Documentation")
## Usage

To dissect packets, place lua script(s) in the wireshark plugins directory.

The standard user path on a windows install (please create the plugins directory):

```
%APPDATA%\Wireshark\plugins\
```
On a linux install use:

```
//usr/share/wireshark/plugins
```
For configuration information: [Wireshark Plugin Configuration](https://www.wireshark.org/docs/wsug_html_chunked/ChPluginFolders.html "Wireshark Configuration Documentation")

Note: Some packets contain enough information to programmatically determine the correct protocol specification and/or version at runtime.  *Many do not.*  If you add multiple dissectors to your plugins folder, wireshark will dissect each "conversation" based on the first matching protocol.  In these cases, please manually select protocol dissector using Analyze | Decode As….

For decoding information: [Wireshark Protocol Decoding](https://www.wireshark.org/docs/wsug_html_chunked/ChCustProtocolDissectionSection.html "Wireshark Protocol Selection Documentation")
## Development

Updates are greatly appreciated; however, this entire repository is source generated...including the words you are reading right now. If you wish to suggest script updates, the recommended process is to create an issue with changes and explanation.  Time permitting, we will update the models and regenerate.

| Protocol Count | Generated Lines |
| --- | --- |
| 336 | 3,386,869 |

Note: Our dissector model is still under rapid development.

## Testing

[![Test](https://github.com/Open-Markets-Initiative/wireshark-lua/actions/workflows/github-action-lua.yml/badge.svg)](https://github.com/Open-Markets-Initiative/wireshark-lua/actions//workflows/github-action-lua.yml)

Please report any dissection errors as an [issue](https://github.com/Open-Markets-Initiative/wireshark-lua/issues "Omi Lua Wireshark Issues").  Include a small note on the protocol and version, and a minimal capture demonstrating the problem. Also consider including a link or pdf specification documenting the correct behavior.

Production packet captures are required for protocol verification.  If your organization has the rights to packet captures, and you wish to make the world a better place, please post captures to this project.

List of data requests: [Untested Protocols](https://github.com/Open-Markets-Initiative/wireshark-lua/wiki/Data "Unverified Protocol Data List")
## Open Markets Initiative

[![Omi](https://github.com/Open-Markets-Initiative/Directory/blob/main/About/Images/Logo.png)](https://github.com/Open-Markets-Initiative/Directory)  The Open Markets Initiative (Omi) is a group of technologists dedicated to enhancing the stability of electronic financial markets using modern development methods.

For a list of Omi Hft projects: [Omi Projects](https://github.com/Open-Markets-Initiative/Directory/tree/main/Projects "Open Markets Initiative Projects")

For details of Omi rules and regulations: [Omi Directory](https://github.com/Open-Markets-Initiative/Directory "Open Markets Initiative Directory")
## Protocols

Dissectors by exchange: [Asx][Asx.Directory], [B3][B3.Directory], [Box][Box.Directory], [Cboe][Cboe.Directory], [Cme][Cme.Directory], [Coinbase][Coinbase.Directory], [Eurex][Eurex.Directory], [Euronext][Euronext.Directory], [Finra][Finra.Directory], [Ice][Ice.Directory], [Iex][Iex.Directory], [Imperative][Imperative.Directory], [Jnx][Jnx.Directory], [Lseg][Lseg.Directory], [Miax][Miax.Directory], [Memx][Memx.Directory], [Nasdaq][Nasdaq.Directory], [Nyse][Nyse.Directory], [Otc][Otc.Directory], [Siac][Siac.Directory], [SmallX][SmallX.Directory], [Tmx][Tmx.Directory]

## Disclaimer

Any similarities between existing people, places and/or protocols is purely incidental.

Enjoy.

[Omi Projects]: https://github.com/Open-Markets-Initiative/Directory/tree/main/Projects "Open Markets Initiative Projects"
[Omi Rules and Regulations]: https://github.com/Open-Markets-Initiative/Directory/tree/main/License "Open Markets Initiative Rules and Regulations"

[Omi.Glossary.Testing]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Glossary/Testing.md "Protocol Testing Status"
[Omi.Glossary.Testing.Verified]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Glossary/Testing.md "Testing Status: Protocol has been tested on live data"
[Omi.Glossary.Testing.Incomplete]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Glossary/Testing.md "Testing Status: Protocol has been tested on live data but contains known issues"
[Omi.Glossary.Testing.Beta]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Glossary/Testing.md "Testing Status: Protocol has not been tested and structure is speculative"
[Omi.Glossary.Testing.Untested]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Glossary/Testing.md "Testing Status: Protocol has not been tested on live data"

[Asx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Asx "Australian Securities Exchange"
[B3.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/B3 "Brasil, Bolsa, Balcão"
[Box.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Box "Boston Options Exchange"
[Cboe.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Cboe "Chicago Board Options Exchange"
[Cme.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Cme "Chicago Mercantile Exchange"
[Coinbase.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Coinbase "Coinbase"
[Eurex.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Eurex "Eurex Exchange"
[Euronext.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Euronext "European New Exchange Technology"
[Finra.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Finra "Financial Industry Regulatory Authority"
[Ice.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Ice "Intercontinental Exchange"
[Iex.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Iex "Investors Exchange"
[Imperative.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Imperative "Imperative Execution"
[Jnx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Jnx "Japannext"
[Lseg.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Lseg "London Stock Exchange Group"
[Miax.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Miax "Miami International Securities Exchange"
[Memx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Memx "Members Exchange"
[Nasdaq.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nyse.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Nyse "New York Stock Exchange"
[Otc.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Otc "Otc Markets"
[Siac.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Siac "Securities Industry Automation Corporation"
[SmallX.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/SmallX "The Small Exchange"
[Tmx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Tmx "Tmx Group"

[Asx.Securities.Ntp.Itch.v1.05.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua "Asx Securities Ntp Itch v1.05 Lua Wireshark Dissector"
[Asx.Securities.Trade.Itch.v3.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Asx/Asx_Securities_Trade_Itch_v3_1_Dissector.lua "Asx Securities Trade Itch v3.1 Lua Wireshark Dissector"
[Asx.Securities.Trade.Ouch.v3.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Asx/Asx_Securities_Trade_Ouch_v3_6_Dissector.lua "Asx Securities Trade Ouch v3.6 Lua Wireshark Dissector"
[B3.Equities.BinaryUmdf.Sbe.v2.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/B3/B3_Equities_BinaryUmdf_Sbe_v2_1_Dissector.lua "B3 Equities BinaryUmdf Sbe v2.1 Lua Wireshark Dissector"
[B3.Equities.BinaryEntryPoint.Sbe.v8.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/B3/B3_Equities_BinaryEntryPoint_Sbe_v8_1_Dissector.lua "B3 Equities BinaryEntryPoint Sbe v8.1 Lua Wireshark Dissector"
[B3.Equities.BinaryEntryPoint.Sbe.v8.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/B3/B3_Equities_BinaryEntryPoint_Sbe_v8_2_Dissector.lua "B3 Equities BinaryEntryPoint Sbe v8.2 Lua Wireshark Dissector"
[Box.Options.Sola.Multicast.Hsvf.v1.9.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Box/Box_Options_Sola_Multicast_Hsvf_v1_9_Dissector.lua "Box Options Sola Multicast Hsvf v1.9 Lua Wireshark Dissector"
[Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Byx_Equities_DepthOfBook_Pitch_v2_41_29_Dissector.lua "Cboe Byx Equities DepthOfBook Pitch v2.41.29 Lua Wireshark Dissector"
[Cboe.Byx.Equities.TopOfBook.Pitch.v1.3.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Byx_Equities_TopOfBook_Pitch_v1_3_2_Dissector.lua "Cboe Byx Equities TopOfBook Pitch v1.3.2 Lua Wireshark Dissector"
[Cboe.Byx.Equities.SummaryDepth.Pitch.v1.0.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Byx_Equities_SummaryDepth_Pitch_v1_0_4_Dissector.lua "Cboe Byx Equities SummaryDepth Pitch v1.0.4 Lua Wireshark Dissector"
[Cboe.Bzx.Equities.DepthOfBook.Pitch.v2.41.29.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Bzx_Equities_DepthOfBook_Pitch_v2_41_29_Dissector.lua "Cboe Bzx Equities DepthOfBook Pitch v2.41.29 Lua Wireshark Dissector"
[Cboe.Bzx.Equities.OrderEntry.Boe.v2.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Bzx_Equities_OrderEntry_Boe_v2_3_Dissector.lua "Cboe Bzx Equities OrderEntry Boe v2.3 Lua Wireshark Dissector"
[Cboe.Edgx.Equities.DepthOfBook.Pitch.v2.41.29.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Edgx_Equities_DepthOfBook_Pitch_v2_41_29_Dissector.lua "Cboe Edgx Equities DepthOfBook Pitch v2.41.29 Lua Wireshark Dissector"
[Cboe.Edgx.Equities.OrderEntry.Boe.v2.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Edgx_Equities_OrderEntry_Boe_v2_3_Dissector.lua "Cboe Edgx Equities OrderEntry Boe v2.3 Lua Wireshark Dissector"
[Cboe.C1.Options.DepthOfBook.Pitch.v2.41.29.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_C1_Options_DepthOfBook_Pitch_v2_41_29_Dissector.lua "Cboe C1 Options DepthOfBook Pitch v2.41.29 Lua Wireshark Dissector"
[Cboe.C1.Options.AuctionFeed.Pitch.v1.1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_C1_Options_AuctionFeed_Pitch_v1_1_1_Dissector.lua "Cboe C1 Options AuctionFeed Pitch v1.1.1 Lua Wireshark Dissector"
[Cboe.C1.Options.OrderEntry.Boe.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_C1_Options_OrderEntry_Boe_v2_10_Dissector.lua "Cboe C1 Options OrderEntry Boe v2.10 Lua Wireshark Dissector"
[Cboe.C1.Options.Complex.Pitch.v2.1.37.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_C1_Options_Complex_Pitch_v2_1_37_Dissector.lua "Cboe C1 Options Complex Pitch v2.1.37 Lua Wireshark Dissector"
[Cboe.C1.Options.OrderEntry.Boe3.v1.0.12.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_C1_Options_OrderEntry_Boe3_v1_0_12_Dissector.lua "Cboe C1 Options OrderEntry Boe3 v1.0.12 Lua Wireshark Dissector"
[Cboe.C2.Options.DepthOfBook.Pitch.v2.41.29.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_C2_Options_DepthOfBook_Pitch_v2_41_29_Dissector.lua "Cboe C2 Options DepthOfBook Pitch v2.41.29 Lua Wireshark Dissector"
[Cboe.C2.Options.OrderEntry.Boe3.v1.0.12.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_C2_Options_OrderEntry_Boe3_v1_0_12_Dissector.lua "Cboe C2 Options OrderEntry Boe3 v1.0.12 Lua Wireshark Dissector"
[Cboe.Bzx.Options.DepthOfBook.Pitch.v2.41.29.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Bzx_Options_DepthOfBook_Pitch_v2_41_29_Dissector.lua "Cboe Bzx Options DepthOfBook Pitch v2.41.29 Lua Wireshark Dissector"
[Cboe.Bzx.Options.OrderEntry.Boe.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Bzx_Options_OrderEntry_Boe_v2_10_Dissector.lua "Cboe Bzx Options OrderEntry Boe v2.10 Lua Wireshark Dissector"
[Cboe.Edgx.Options.AuctionFeed.Pitch.v1.1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Edgx_Options_AuctionFeed_Pitch_v1_1_1_Dissector.lua "Cboe Edgx Options AuctionFeed Pitch v1.1.1 Lua Wireshark Dissector"
[Cboe.Edgx.Options.OrderEntry.Boe.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Edgx_Options_OrderEntry_Boe_v2_10_Dissector.lua "Cboe Edgx Options OrderEntry Boe v2.10 Lua Wireshark Dissector"
[Cboe.Edgx.Options.DepthOfBook.Pitch.v2.41.29.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Edgx_Options_DepthOfBook_Pitch_v2_41_29_Dissector.lua "Cboe Edgx Options DepthOfBook Pitch v2.41.29 Lua Wireshark Dissector"
[Cboe.Options.DepthOfBook.Pitch.v2.39.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua "Cboe Options DepthOfBook Pitch v2.39.4 Lua Wireshark Dissector"
[Cboe.Options.Complex.Pitch.v2.1.18.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua "Cboe Options Complex Pitch v2.1.18 Lua Wireshark Dissector"
[Cboe.Options.Complex.Pitch.v2.1.37.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Options_Complex_Pitch_v2_1_37_Dissector.lua "Cboe Options Complex Pitch v2.1.37 Lua Wireshark Dissector"
[Cboe.Futures.DepthOfBook.Pitch.v1.1.12.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Futures_DepthOfBook_Pitch_v1_1_12_Dissector.lua "Cboe Futures DepthOfBook Pitch v1.1.12 Lua Wireshark Dissector"
[Cboe.Futures.OrderEntry.Boe3.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Futures_OrderEntry_Boe3_v1_0_Dissector.lua "Cboe Futures OrderEntry Boe3 v1.0 Lua Wireshark Dissector"
[Cboe.Futures.OrderEntry.Boe3.v1.1.20.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Futures_OrderEntry_Boe3_v1_1_20_Dissector.lua "Cboe Futures OrderEntry Boe3 v1.1.20 Lua Wireshark Dissector"
[Cboe.Europe.LastSale.Apf.v1.7.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Europe_LastSale_Apf_v1_7_Dissector.lua "Cboe Europe LastSale Apf v1.7 Lua Wireshark Dissector"
[Cboe.Europe.DepthOfBook.Pitch.v6.49.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Europe_DepthOfBook_Pitch_v6_49_Dissector.lua "Cboe Europe DepthOfBook Pitch v6.49 Lua Wireshark Dissector"
[Cboe.Europe.CedxMulticast.Pitch.v1.11.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cboe/Cboe_Europe_CedxMulticast_Pitch_v1_11_Dissector.lua "Cboe Europe CedxMulticast Pitch v1.11 Lua Wireshark Dissector"
[Cme.Futures.Mdp3.Sbe.v1.12.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cme/Cme_Futures_Mdp3_Sbe_v1_12_Dissector.lua "Cme Futures Mdp3 Sbe v1.12 Lua Wireshark Dissector"
[Cme.Futures.Mdp3.Sbe.v1.13.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cme/Cme_Futures_Mdp3_Sbe_v1_13_Dissector.lua "Cme Futures Mdp3 Sbe v1.13 Lua Wireshark Dissector"
[Cme.Futures.Streamlined.Sbe.v5.9.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cme/Cme_Futures_Streamlined_Sbe_v5_9_Dissector.lua "Cme Futures Streamlined Sbe v5.9 Lua Wireshark Dissector"
[Cme.Futures.Settlements.Sbe.v7.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cme/Cme_Futures_Settlements_Sbe_v7_0_Dissector.lua "Cme Futures Settlements Sbe v7.0 Lua Wireshark Dissector"
[Cme.Futures.iLink3.Sbe.v8.7.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cme/Cme_Futures_iLink3_Sbe_v8_7_Dissector.lua "Cme Futures iLink3 Sbe v8.7 Lua Wireshark Dissector"
[Cme.Futures.iLink3.Sbe.v8.8.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cme/Cme_Futures_iLink3_Sbe_v8_8_Dissector.lua "Cme Futures iLink3 Sbe v8.8 Lua Wireshark Dissector"
[Cme.BrokerTec.Ust.Sbe.v10.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cme/Cme_BrokerTec_Ust_Sbe_v10_1_Dissector.lua "Cme BrokerTec Ust Sbe v10.1 Lua Wireshark Dissector"
[Cme.Futures.Derived.Sbe.v12.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cme/Cme_Futures_Derived_Sbe_v12_0_Dissector.lua "Cme Futures Derived Sbe v12.0 Lua Wireshark Dissector"
[Cme.Ebs.Spectrum.Sbe.v12.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Cme/Cme_Ebs_Spectrum_Sbe_v12_0_Dissector.lua "Cme Ebs Spectrum Sbe v12.0 Lua Wireshark Dissector"
[Coinbase.Derivatives.MarketDataApi.Sbe.v1.7.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Coinbase/Coinbase_Derivatives_MarketDataApi_Sbe_v1_7_Dissector.lua "Coinbase Derivatives MarketDataApi Sbe v1.7 Lua Wireshark Dissector"
[Coinbase.Derivatives.OrdersApi.Sbe.v1.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_6_Dissector.lua "Coinbase Derivatives OrdersApi Sbe v1.6 Lua Wireshark Dissector"
[Eurex.Cash.Eti.T7.v12.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Cash_Eti_T7_v12_1_Dissector.lua "Eurex Cash Eti T7 v12.1 Lua Wireshark Dissector"
[Eurex.Derivatives.Eti.T7.v12.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Derivatives_Eti_T7_v12_1_Dissector.lua "Eurex Derivatives Eti T7 v12.1 Lua Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v12.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Derivatives_Eobi_T7_v12_1_Dissector.lua "Eurex Derivatives Eobi T7 v12.1 Lua Wireshark Dissector"
[Eurex.Cash.Eti.T7.v13.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Cash_Eti_T7_v13_0_Dissector.lua "Eurex Cash Eti T7 v13.0 Lua Wireshark Dissector"
[Eurex.Derivatives.Eti.T7.v13.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Derivatives_Eti_T7_v13_0_Dissector.lua "Eurex Derivatives Eti T7 v13.0 Lua Wireshark Dissector"
[Eurex.Derivatives.Edci.T7.v13.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Derivatives_Edci_T7_v13_0_Dissector.lua "Eurex Derivatives Edci T7 v13.0 Lua Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v13.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Derivatives_Eobi_T7_v13_0_Dissector.lua "Eurex Derivatives Eobi T7 v13.0 Lua Wireshark Dissector"
[Eurex.Cash.Eti.T7.v13.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Cash_Eti_T7_v13_1_Dissector.lua "Eurex Cash Eti T7 v13.1 Lua Wireshark Dissector"
[Eurex.Derivatives.Eti.T7.v13.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Derivatives_Eti_T7_v13_1_Dissector.lua "Eurex Derivatives Eti T7 v13.1 Lua Wireshark Dissector"
[Eurex.Derivatives.Edci.T7.v13.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Derivatives_Edci_T7_v13_1_Dissector.lua "Eurex Derivatives Edci T7 v13.1 Lua Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v13.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Derivatives_Eobi_T7_v13_1_Dissector.lua "Eurex Derivatives Eobi T7 v13.1 Lua Wireshark Dissector"
[Euronext.Optiq.MarketDataGateway.Sbe.v5.51.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Euronext/Euronext_Optiq_MarketDataGateway_Sbe_v5_51_Dissector.lua "Euronext Optiq MarketDataGateway Sbe v5.51 Lua Wireshark Dissector"
[Euronext.Optiq.OrderEntryGateway.Sbe.v5.51.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Euronext/Euronext_Optiq_OrderEntryGateway_Sbe_v5_51_Dissector.lua "Euronext Optiq OrderEntryGateway Sbe v5.51 Lua Wireshark Dissector"
[Euronext.Optiq.MarketDataGateway.Sbe.v5.52.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Euronext/Euronext_Optiq_MarketDataGateway_Sbe_v5_52_Dissector.lua "Euronext Optiq MarketDataGateway Sbe v5.52 Lua Wireshark Dissector"
[Euronext.Optiq.OrderEntryGateway.Sbe.v5.52.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Euronext/Euronext_Optiq_OrderEntryGateway_Sbe_v5_52_Dissector.lua "Euronext Optiq OrderEntryGateway Sbe v5.52 Lua Wireshark Dissector"
[Finra.Orf.Tdds.Dfi.v2.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Finra/Finra_Orf_Tdds_Dfi_v2_1_Dissector.lua "Finra Orf Tdds Dfi v2.1 Lua Wireshark Dissector"
[Finra.Otc.Bbds.Dfi.v2018.1A.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Finra/Finra_Otc_Bbds_Dfi_v2018_1A_Dissector.lua "Finra Otc Bbds Dfi v2018.1A Lua Wireshark Dissector"
[Ice.Futures.Mdf.iMpact.v1.1.43.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Ice/Ice_Futures_Mdf_iMpact_v1_1_43_Dissector.lua "Ice Futures Mdf iMpact v1.1.43 Lua Wireshark Dissector"
[Iex.Equities.Deep.IexTp.v1.0.8.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Iex/Iex_Equities_Deep_IexTp_v1_0_8_Dissector.lua "Iex Equities Deep IexTp v1.0.8 Lua Wireshark Dissector"
[Iex.Equities.DeepPlus.IexTp.v1.0.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Iex/Iex_Equities_DeepPlus_IexTp_v1_0_1_Dissector.lua "Iex Equities DeepPlus IexTp v1.0.1 Lua Wireshark Dissector"
[Iex.Equities.Tops.IexTp.v1.6.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Iex/Iex_Equities_Tops_IexTp_v1_6_6_Dissector.lua "Iex Equities Tops IexTp v1.6.6 Lua Wireshark Dissector"
[Imperative.IntelligentCross.Mdf.v1.11.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Imperative/Imperative_IntelligentCross_Mdf_v1_11_Dissector.lua "Imperative IntelligentCross Mdf v1.11 Lua Wireshark Dissector"
[Jnx.Bonds.Pts.Itch.v1.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Jnx/Jnx_Bonds_Pts_Itch_v1_2_Dissector.lua "Jnx Bonds Pts Itch v1.2 Lua Wireshark Dissector"
[Jnx.Bonds.Pts.Ouch.v1.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Jnx/Jnx_Bonds_Pts_Ouch_v1_4_Dissector.lua "Jnx Bonds Pts Ouch v1.4 Lua Wireshark Dissector"
[Jnx.Equities.Pts.Itch.v1.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Jnx/Jnx_Equities_Pts_Itch_v1_6_Dissector.lua "Jnx Equities Pts Itch v1.6 Lua Wireshark Dissector"
[Jnx.Equities.Pts.Itch.v1.7.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Jnx/Jnx_Equities_Pts_Itch_v1_7_Dissector.lua "Jnx Equities Pts Itch v1.7 Lua Wireshark Dissector"
[Jnx.Equities.Pts.Ouch.v1.12.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Jnx/Jnx_Equities_Pts_Ouch_v1_12_Dissector.lua "Jnx Equities Pts Ouch v1.12 Lua Wireshark Dissector"
[Lseg.TradeEcho.Level2.Gtp.v24.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Lseg/Lseg_TradeEcho_Level2_Gtp_v24_4_Dissector.lua "Lseg TradeEcho Level2 Gtp v24.4 Lua Wireshark Dissector"
[Lseg.TradeEcho.Mifid.Gtp.v24.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Lseg/Lseg_TradeEcho_Mifid_Gtp_v24_4_Dissector.lua "Lseg TradeEcho Mifid Gtp v24.4 Lua Wireshark Dissector"
[Lseg.Turquoise.Level1.Gtp.v24.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Lseg/Lseg_Turquoise_Level1_Gtp_v24_4_Dissector.lua "Lseg Turquoise Level1 Gtp v24.4 Lua Wireshark Dissector"
[Lseg.Turquoise.Level2.Gtp.v24.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Lseg/Lseg_Turquoise_Level2_Gtp_v24_4_Dissector.lua "Lseg Turquoise Level2 Gtp v24.4 Lua Wireshark Dissector"
[Lseg.Turquoise.Mifid.Gtp.v24.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Lseg/Lseg_Turquoise_Mifid_Gtp_v24_4_Dissector.lua "Lseg Turquoise Mifid Gtp v24.4 Lua Wireshark Dissector"
[Lseg.Turquoise.Analytics.Gtp.v24.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Lseg/Lseg_Turquoise_Analytics_Gtp_v24_4_Dissector.lua "Lseg Turquoise Analytics Gtp v24.4 Lua Wireshark Dissector"
[Miax.Options.ComplexTopOfMarket.Mach.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Miax/Miax_Options_ComplexTopOfMarket_Mach_v1_3_Dissector.lua "Miax Options ComplexTopOfMarket Mach v1.3 Lua Wireshark Dissector"
[Miax.Options.TopOfMarket.Mach.v2.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Miax/Miax_Options_TopOfMarket_Mach_v2_2_Dissector.lua "Miax Options TopOfMarket Mach v2.2 Lua Wireshark Dissector"
[Miax.Options.TopOfMarket.Mach.v2.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Miax/Miax_Options_TopOfMarket_Mach_v2_3_Dissector.lua "Miax Options TopOfMarket Mach v2.3 Lua Wireshark Dissector"
[Miax.Pearl.Equities.DepthOfMarket.Mach.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Miax/Miax_Pearl_Equities_DepthOfMarket_Mach_v1_3_a_Dissector.lua "Miax Pearl Equities DepthOfMarket Mach v1.3.a Lua Wireshark Dissector"
[Miax.Pearl.Equities.TopOfMarket.Mach.v1.1.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Miax/Miax_Pearl_Equities_TopOfMarket_Mach_v1_1_a_Dissector.lua "Miax Pearl Equities TopOfMarket Mach v1.1.a Lua Wireshark Dissector"
[Miax.Pearl.Options.TopOfMarket.Mach.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Miax/Miax_Pearl_Options_TopOfMarket_Mach_v1_0_Dissector.lua "Miax Pearl Options TopOfMarket Mach v1.0 Lua Wireshark Dissector"
[Memx.Equities.MemoirDepthFeed.Sbe.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Equities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua "Memx Equities MemoirDepthFeed Sbe v1.3 Lua Wireshark Dissector"
[Memx.Equities.MemoirLastSale.Sbe.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Equities_MemoirLastSale_Sbe_v1_3_Dissector.lua "Memx Equities MemoirLastSale Sbe v1.3 Lua Wireshark Dissector"
[Memx.Equities.MemoirTopOfBook.Sbe.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Equities_MemoirTopOfBook_Sbe_v1_3_Dissector.lua "Memx Equities MemoirTopOfBook Sbe v1.3 Lua Wireshark Dissector"
[Memx.Equities.Memo.Sbe.v1.11.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Equities_Memo_Sbe_v1_11_Dissector.lua "Memx Equities Memo Sbe v1.11 Lua Wireshark Dissector"
[Memx.Equities.Memo.Sbe.v1.12.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Equities_Memo_Sbe_v1_12_Dissector.lua "Memx Equities Memo Sbe v1.12 Lua Wireshark Dissector"
[Memx.Options.MemoirTop.Sbe.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Options_MemoirTop_Sbe_v1_3_Dissector.lua "Memx Options MemoirTop Sbe v1.3 Lua Wireshark Dissector"
[Memx.Options.MemoirTop.Sbe.v1.6.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Options_MemoirTop_Sbe_v1_6_a_Dissector.lua "Memx Options MemoirTop Sbe v1.6.a Lua Wireshark Dissector"
[Memx.Options.MemoirDepth.Sbe.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Options_MemoirDepth_Sbe_v1_3_Dissector.lua "Memx Options MemoirDepth Sbe v1.3 Lua Wireshark Dissector"
[Memx.Options.MemoirDepth.Sbe.v1.6.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Options_MemoirDepth_Sbe_v1_6_a_Dissector.lua "Memx Options MemoirDepth Sbe v1.6.a Lua Wireshark Dissector"
[Memx.Options.Memo.Sbe.v1.7.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Options_Memo_Sbe_v1_7_Dissector.lua "Memx Options Memo Sbe v1.7 Lua Wireshark Dissector"
[Memx.Options.Memo.Sbe.v1.8.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Options_Memo_Sbe_v1_8_Dissector.lua "Memx Options Memo Sbe v1.8 Lua Wireshark Dissector"
[Memx.Options.RiskControl.Sbe.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Options_RiskControl_Sbe_v1_3_Dissector.lua "Memx Options RiskControl Sbe v1.3 Lua Wireshark Dissector"
[Memx.Options.RiskControl.Sbe.v1.7.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Memx/Memx_Options_RiskControl_Sbe_v1_7_Dissector.lua "Memx Options RiskControl Sbe v1.7 Lua Wireshark Dissector"
[Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Bx_Equities_TotalView_Itch_v5_0_Dissector.lua "Nasdaq Bx Equities TotalView Itch v5.0 Lua Wireshark Dissector"
[Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Bx_Equities_Orders_Ouch_v4_2_Dissector.lua "Nasdaq Bx Equities Orders Ouch v4.2 Lua Wireshark Dissector"
[Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Bx_Options_TopOfMarket_Itch_v1_2_Dissector.lua "Nasdaq Bx Options TopOfMarket Itch v1.2 Lua Wireshark Dissector"
[Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Bx_Options_DepthOfMarket_Itch_v1_3_Dissector.lua "Nasdaq Bx Options DepthOfMarket Itch v1.3 Lua Wireshark Dissector"
[Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Ise_OrderComboFeed_Itch_v1_1_Dissector.lua "Nasdaq Ise OrderComboFeed Itch v1.1 Lua Wireshark Dissector"
[Nasdaq.Ise.OrderFeed.Itch.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Ise_OrderFeed_Itch_v1_1_Dissector.lua "Nasdaq Ise OrderFeed Itch v1.1 Lua Wireshark Dissector"
[Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Ise_TopComboQuoteFeed_Itch_v1_0_Dissector.lua "Nasdaq Ise TopComboQuoteFeed Itch v1.0 Lua Wireshark Dissector"
[Nasdaq.Nom.Bono.Itch.v3.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Nom_Bono_Itch_v3_2_Dissector.lua "Nasdaq Nom Bono Itch v3.2 Lua Wireshark Dissector"
[Nasdaq.Nom.Itto.Itch.v4.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Nom_Itto_Itch_v4_0_Dissector.lua "Nasdaq Nom Itto Itch v4.0 Lua Wireshark Dissector"
[Nasdaq.Phlx.MarketDepth.Itch.v1.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Phlx_MarketDepth_Itch_v1_6_Dissector.lua "Nasdaq Phlx MarketDepth Itch v1.6 Lua Wireshark Dissector"
[Nasdaq.Phlx.Orders.Itch.v1.9.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Phlx_Orders_Itch_v1_9_Dissector.lua "Nasdaq Phlx Orders Itch v1.9 Lua Wireshark Dissector"
[Nasdaq.Phlx.Topo.Itch.v3.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Phlx_Topo_Itch_v3_3_Dissector.lua "Nasdaq Phlx Topo Itch v3.3 Lua Wireshark Dissector"
[Nasdaq.Psx.LastSale.Itch.v2.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Psx_LastSale_Itch_v2_1_Dissector.lua "Nasdaq Psx LastSale Itch v2.1 Lua Wireshark Dissector"
[Nasdaq.Psx.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Psx_TotalView_Itch_v5_0_Dissector.lua "Nasdaq Psx TotalView Itch v5.0 Lua Wireshark Dissector"
[Nasdaq.Psx.Bbo.Itch.v2.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Psx_Bbo_Itch_v2_1_Dissector.lua "Nasdaq Psx Bbo Itch v2.1 Lua Wireshark Dissector"
[Nasdaq.Psx.Orders.Ouch.v4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Psx_Orders_Ouch_v4_2_Dissector.lua "Nasdaq Psx Orders Ouch v4.2 Lua Wireshark Dissector"
[Nasdaq.Equities.Aggregated.Itch.v2.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Equities_Aggregated_Itch_v2_0_Dissector.lua "Nasdaq Equities Aggregated Itch v2.0 Lua Wireshark Dissector"
[Nasdaq.Equities.Level2.Itch.v2.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Equities_Level2_Itch_v2_0_Dissector.lua "Nasdaq Equities Level2 Itch v2.0 Lua Wireshark Dissector"
[Nasdaq.Equities.Noi.Itch.v3.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Equities_Noi_Itch_v3_0_Dissector.lua "Nasdaq Equities Noi Itch v3.0 Lua Wireshark Dissector"
[Nasdaq.Equities.Orders.Ouch.v4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Equities_Orders_Ouch_v4_2_Dissector.lua "Nasdaq Equities Orders Ouch v4.2 Lua Wireshark Dissector"
[Nasdaq.Equities.Orders.Ouch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Equities_Orders_Ouch_v5_0_Dissector.lua "Nasdaq Equities Orders Ouch v5.0 Lua Wireshark Dissector"
[Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Nsm_Equities_TotalView_Itch_v5_0_Dissector.lua "Nasdaq Nsm Equities TotalView Itch v5.0 Lua Wireshark Dissector"
[Nasdaq.Uqdf.Output.Utp.v1.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Uqdf_Output_Utp_v1_5_Dissector.lua "Nasdaq Uqdf Output Utp v1.5 Lua Wireshark Dissector"
[Nasdaq.Utdf.Output.Utp.v1.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Utdf_Output_Utp_v1_5_Dissector.lua "Nasdaq Utdf Output Utp v1.5 Lua Wireshark Dissector"
[Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Amex_Equities_OpenBook_Ultra_v2_1_b_Dissector.lua "Nyse Amex Equities OpenBook Ultra v2.1.b Lua Wireshark Dissector"
[Nyse.Equities.OpenBook.Ultra.v2.1.b.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Equities_OpenBook_Ultra_v2_1_b_Dissector.lua "Nyse Equities OpenBook Ultra v2.1.b Lua Wireshark Dissector"
[Nyse.Equities.Bbo.Pillar.v2.5.b.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Equities_Bbo_Pillar_v2_5_b_Dissector.lua "Nyse Equities Bbo Pillar v2.5.b Lua Wireshark Dissector"
[Nyse.Equities.Bqt.Xdp.v1.7.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Equities_Bqt_Xdp_v1_7_a_Dissector.lua "Nyse Equities Bqt Xdp v1.7.a Lua Wireshark Dissector"
[Nyse.Equities.Bqt.Xdp.v2.1.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Equities_Bqt_Xdp_v2_1_a_Dissector.lua "Nyse Equities Bqt Xdp v2.1.a Lua Wireshark Dissector"
[Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Equities_ImbalancesFeed_Xdp_v2_2_a_Dissector.lua "Nyse Equities ImbalancesFeed Xdp v2.2.a Lua Wireshark Dissector"
[Nyse.Equities.ImbalancesFeed.Pillar.v2.2.h.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Equities_ImbalancesFeed_Pillar_v2_2_h_Dissector.lua "Nyse Equities ImbalancesFeed Pillar v2.2.h Lua Wireshark Dissector"
[Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua "Nyse Equities IntegratedFeed Pillar v2.5.a Lua Wireshark Dissector"
[Nyse.Equities.BinaryGateway.Pillar.v5.8.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Equities_BinaryGateway_Pillar_v5_8_Dissector.lua "Nyse Equities BinaryGateway Pillar v5.8 Lua Wireshark Dissector"
[Nyse.Options.ComplexFeed.Xdp.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Options_ComplexFeed_Xdp_v1_3_a_Dissector.lua "Nyse Options ComplexFeed Xdp v1.3.a Lua Wireshark Dissector"
[Nyse.Options.DeepFeed.Xdp.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Options_DeepFeed_Xdp_v1_3_a_Dissector.lua "Nyse Options DeepFeed Xdp v1.3.a Lua Wireshark Dissector"
[Nyse.Options.TopFeed.Xdp.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Options_TopFeed_Xdp_v1_3_a_Dissector.lua "Nyse Options TopFeed Xdp v1.3.a Lua Wireshark Dissector"
[Nyse.Amex.Options.BinaryGateway.Pillar.v3.15.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Amex_Options_BinaryGateway_Pillar_v3_15_Dissector.lua "Nyse Amex Options BinaryGateway Pillar v3.15 Lua Wireshark Dissector"
[Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Arca_Options_TopFeed_Pillar_v1_2_c_Dissector.lua "Nyse Arca Options TopFeed Pillar v1.2.c Lua Wireshark Dissector"
[Nyse.Arca.Options.ComplexFeed.Pillar.v1.0.d.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Arca_Options_ComplexFeed_Pillar_v1_0_d_Dissector.lua "Nyse Arca Options ComplexFeed Pillar v1.0.d Lua Wireshark Dissector"
[Nyse.Arca.Options.Feed.Pillar.v1.2.f.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Arca_Options_Feed_Pillar_v1_2_f_Dissector.lua "Nyse Arca Options Feed Pillar v1.2.f Lua Wireshark Dissector"
[Nyse.Arca.Options.BinaryGateway.Pillar.v3.15.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nyse/Nyse_Arca_Options_BinaryGateway_Pillar_v3_15_Dissector.lua "Nyse Arca Options BinaryGateway Pillar v3.15 Lua Wireshark Dissector"
[Otc.Markets.Multicast.Ats.v4.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Otc/Otc_Markets_Multicast_Ats_v4_5_Dissector.lua "Otc Markets Multicast Ats v4.5 Lua Wireshark Dissector"
[Siac.Opra.Recipient.Obi.v6.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Siac/Siac_Opra_Recipient_Obi_v6_2_Dissector.lua "Siac Opra Recipient Obi v6.2 Lua Wireshark Dissector"
[Siac.Cts.Output.Cta.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Siac/Siac_Cts_Output_Cta_v2_10_Dissector.lua "Siac Cts Output Cta v2.10 Lua Wireshark Dissector"
[Siac.Cqs.Output.Cta.v2.9.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Siac/Siac_Cqs_Output_Cta_v2_9_Dissector.lua "Siac Cqs Output Cta v2.9 Lua Wireshark Dissector"
[Siac.Cqs.Snapshot.Cta.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Siac/Siac_Cqs_Snapshot_Cta_v1_0_Dissector.lua "Siac Cqs Snapshot Cta v1.0 Lua Wireshark Dissector"
[SmallX.OrderBookFeed.Sbe.v2.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/SmallX/SmallX_OrderBookFeed_Sbe_v2_2_Dissector.lua "SmallX OrderBookFeed Sbe v2.2 Lua Wireshark Dissector"
[Tmx.Mx.Sola.Multicast.Hsvf.v1.11.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_11_Dissector.lua "Tmx Mx Sola Multicast Hsvf v1.11 Lua Wireshark Dissector"
[Tmx.QuantumFeed.AlphaLevel1.Xmt.v2.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Tmx/Tmx_QuantumFeed_AlphaLevel1_Xmt_v2_2_Dissector.lua "Tmx QuantumFeed AlphaLevel1 Xmt v2.2 Lua Wireshark Dissector"
[Tmx.QuantumFeed.AlphaLevel2.Xmt.v2.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Tmx/Tmx_QuantumFeed_AlphaLevel2_Xmt_v2_2_Dissector.lua "Tmx QuantumFeed AlphaLevel2 Xmt v2.2 Lua Wireshark Dissector"
[Tmx.QuantumFeed.TsxTsxvLevel1.Xmt.v2.8.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Tmx/Tmx_QuantumFeed_TsxTsxvLevel1_Xmt_v2_8_Dissector.lua "Tmx QuantumFeed TsxTsxvLevel1 Xmt v2.8 Lua Wireshark Dissector"
[Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v3.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Tmx/Tmx_QuantumFeed_TsxTsxvLevel2_Xmt_v3_6_Dissector.lua "Tmx QuantumFeed TsxTsxvLevel2 Xmt v3.6 Lua Wireshark Dissector"
