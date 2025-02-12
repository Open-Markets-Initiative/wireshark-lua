# Omi Lua Wireshark Dissectors

[![Wireshark](https://github.com/Open-Markets-Initiative/Directory/blob/main/About/Images/Wireshark.png)](https://www.wireshark.org)  [![Lua](https://github.com/Open-Markets-Initiative/Directory/blob/main/About/Images/Lua.png)](https://www.lua.org)

Omi Lua Wireshark dissectors provide easily customized, cross platform viewing of common binary exchange protocols.

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
| 328 | 3,282,285 |

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
## Active Protocols

| Organization | Division | Data | Protocol | Version | Date | [Testing][Omi.Glossary.Testing] |
| --- | --- | --- | --- | --- | --- | --- |
| [Asx][Asx.Directory] | Securities | [Ntp][Asx.Securities.Ntp.Itch.v1.05.Dissector] | Itch | [1.05][Asx.Securities.Ntp.Itch.v1.05.Dissector] | 12/1/2017 | [Verified][Omi.Glossary.Testing.Verified] |
| [Asx][Asx.Directory] | Securities | [Trade][Asx.Securities.Trade.Itch.v3.1.Dissector] | Itch | [3.1][Asx.Securities.Trade.Itch.v3.1.Dissector] | 3/1/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Asx][Asx.Directory] | Securities | [Trade][Asx.Securities.Trade.Ouch.v3.6.Dissector] | Ouch | [3.6][Asx.Securities.Trade.Ouch.v3.6.Dissector] | 2/1/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [B3][B3.Directory] | Equities | [BinaryEntryPoint][B3.Equities.BinaryEntryPoint.Sbe.v8.2.Dissector] | Sbe | [8.2][B3.Equities.BinaryEntryPoint.Sbe.v8.2.Dissector] | 8/30/2024 | [Verified][Omi.Glossary.Testing.Verified] |
| [B3][B3.Directory] | Equities | [BinaryEntryPoint][B3.Equities.BinaryEntryPoint.Sbe.v8.1.Dissector] | Sbe | [8.1][B3.Equities.BinaryEntryPoint.Sbe.v8.1.Dissector] | 6/10/2024 | [Verified][Omi.Glossary.Testing.Verified] |
| [B3][B3.Directory] | Equities | [BinaryUmdf][B3.Equities.BinaryUmdf.Sbe.v1.9.Dissector] | Sbe | [1.9][B3.Equities.BinaryUmdf.Sbe.v1.9.Dissector] | 8/10/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [B3][B3.Directory] | Equities | [BinaryUmdf][B3.Equities.BinaryUmdf.Sbe.v1.8.Dissector] | Sbe | [1.8][B3.Equities.BinaryUmdf.Sbe.v1.8.Dissector] | 4/1/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Box][Box.Directory] | Options Sola | [Multicast][Box.Options.Sola.Multicast.Hsvf.v1.9.Dissector] | Hsvf | [1.9][Box.Options.Sola.Multicast.Hsvf.v1.9.Dissector] | 2/15/2024 | [Verified][Omi.Glossary.Testing.Verified] |
| [Cboe][Cboe.Directory] | Byx Equities | [DepthOfBook][Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.Dissector] | Pitch | [2.41.29][Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.Dissector] | 4/20/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Byx Equities | [SummaryDepth][Cboe.Byx.Equities.SummaryDepth.Pitch.v1.0.4.Dissector] | Pitch | [1.0.4][Cboe.Byx.Equities.SummaryDepth.Pitch.v1.0.4.Dissector] | 7/26/2021 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Byx Equities | [TopOfBook][Cboe.Byx.Equities.TopOfBook.Pitch.v1.3.2.Dissector] | Pitch | [1.3.2][Cboe.Byx.Equities.TopOfBook.Pitch.v1.3.2.Dissector] | 7/14/2021 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Bzx Equities | [OrderEntry][Cboe.Bzx.Equities.OrderEntry.Boe.v2.3.Dissector] | Boe | [2.3][Cboe.Bzx.Equities.OrderEntry.Boe.v2.3.Dissector] | 3/11/2019 | [Incomplete][Omi.Glossary.Testing.Incomplete] |
| [Cboe][Cboe.Directory] | Bzx Equities | [DepthOfBook][Cboe.Bzx.Equities.DepthOfBook.Pitch.v2.41.29.Dissector] | Pitch | [2.41.29][Cboe.Bzx.Equities.DepthOfBook.Pitch.v2.41.29.Dissector] | 4/20/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Bzx Options | [OrderEntry][Cboe.Bzx.Options.OrderEntry.Boe.v2.10.Dissector] | Boe | [2.10][Cboe.Bzx.Options.OrderEntry.Boe.v2.10.Dissector] | 12/3/2019 | [Incomplete][Omi.Glossary.Testing.Incomplete] |
| [Cboe][Cboe.Directory] | Bzx Options | [DepthOfBook][Cboe.Bzx.Options.DepthOfBook.Pitch.v2.41.29.Dissector] | Pitch | [2.41.29][Cboe.Bzx.Options.DepthOfBook.Pitch.v2.41.29.Dissector] | 4/20/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | C1 Options | [OrderEntry][Cboe.C1.Options.OrderEntry.Boe.v2.10.Dissector] | Boe | [2.10][Cboe.C1.Options.OrderEntry.Boe.v2.10.Dissector] | 12/3/2019 | [Incomplete][Omi.Glossary.Testing.Incomplete] |
| [Cboe][Cboe.Directory] | C1 Options | [OrderEntry][Cboe.C1.Options.OrderEntry.Boe3.v1.0.12.Dissector] | Boe3 | [1.0.12][Cboe.C1.Options.OrderEntry.Boe3.v1.0.12.Dissector] | 1/23/2025 | [Beta][Omi.Glossary.Testing.Beta] |
| [Cboe][Cboe.Directory] | C1 Options | [AuctionFeed][Cboe.C1.Options.AuctionFeed.Pitch.v1.1.1.Dissector] | Pitch | [1.1.1][Cboe.C1.Options.AuctionFeed.Pitch.v1.1.1.Dissector] | 12/6/2018 | [Verified][Omi.Glossary.Testing.Verified] |
| [Cboe][Cboe.Directory] | C1 Options | [Complex][Cboe.C1.Options.Complex.Pitch.v2.1.37.Dissector] | Pitch | [2.1.37][Cboe.C1.Options.Complex.Pitch.v2.1.37.Dissector] | 3/1/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | C1 Options | [DepthOfBook][Cboe.C1.Options.DepthOfBook.Pitch.v2.41.29.Dissector] | Pitch | [2.41.29][Cboe.C1.Options.DepthOfBook.Pitch.v2.41.29.Dissector] | 4/20/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | C2 Options | [DepthOfBook][Cboe.C2.Options.DepthOfBook.Pitch.v2.41.29.Dissector] | Pitch | [2.41.29][Cboe.C2.Options.DepthOfBook.Pitch.v2.41.29.Dissector] | 4/20/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Edgx Equities | [OrderEntry][Cboe.Edgx.Equities.OrderEntry.Boe.v2.3.Dissector] | Boe | [2.3][Cboe.Edgx.Equities.OrderEntry.Boe.v2.3.Dissector] | 3/11/2019 | [Incomplete][Omi.Glossary.Testing.Incomplete] |
| [Cboe][Cboe.Directory] | Edgx Equities | [DepthOfBook][Cboe.Edgx.Equities.DepthOfBook.Pitch.v2.41.29.Dissector] | Pitch | [2.41.29][Cboe.Edgx.Equities.DepthOfBook.Pitch.v2.41.29.Dissector] | 4/20/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Edgx Options | [OrderEntry][Cboe.Edgx.Options.OrderEntry.Boe.v2.10.Dissector] | Boe | [2.10][Cboe.Edgx.Options.OrderEntry.Boe.v2.10.Dissector] | 12/3/2019 | [Incomplete][Omi.Glossary.Testing.Incomplete] |
| [Cboe][Cboe.Directory] | Edgx Options | [AuctionFeed][Cboe.Edgx.Options.AuctionFeed.Pitch.v1.1.1.Dissector] | Pitch | [1.1.1][Cboe.Edgx.Options.AuctionFeed.Pitch.v1.1.1.Dissector] | 12/6/2018 | [Verified][Omi.Glossary.Testing.Verified] |
| [Cboe][Cboe.Directory] | Edgx Options | [DepthOfBook][Cboe.Edgx.Options.DepthOfBook.Pitch.v2.41.29.Dissector] | Pitch | [2.41.29][Cboe.Edgx.Options.DepthOfBook.Pitch.v2.41.29.Dissector] | 4/20/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Europe | [LastSale][Cboe.Europe.LastSale.Apf.v1.7.Dissector] | Apf | [1.7][Cboe.Europe.LastSale.Apf.v1.7.Dissector] | 10/2/2023 | [Beta][Omi.Glossary.Testing.Beta] |
| [Cboe][Cboe.Directory] | Europe | [CedxMulticast][Cboe.Europe.CedxMulticast.Pitch.v1.11.Dissector] | Pitch | [1.11][Cboe.Europe.CedxMulticast.Pitch.v1.11.Dissector] | 2/27/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Europe | [DepthOfBook][Cboe.Europe.DepthOfBook.Pitch.v6.49.Dissector] | Pitch | [6.49][Cboe.Europe.DepthOfBook.Pitch.v6.49.Dissector] | 11/16/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Futures | [OrderEntry][Cboe.Futures.OrderEntry.Boe3.v1.1.20.Dissector] | Boe3 | [1.1.20][Cboe.Futures.OrderEntry.Boe3.v1.1.20.Dissector] | 1/23/2025 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Futures | [OrderEntry][Cboe.Futures.OrderEntry.Boe3.v1.0.Dissector] | Boe3 | [1.0][Cboe.Futures.OrderEntry.Boe3.v1.0.Dissector] | 5/21/2021 | [Verified][Omi.Glossary.Testing.Verified] |
| [Cboe][Cboe.Directory] | Futures | [DepthOfBook][Cboe.Futures.DepthOfBook.Pitch.v1.1.12.Dissector] | Pitch | [1.1.12][Cboe.Futures.DepthOfBook.Pitch.v1.1.12.Dissector] | 1/12/2021 | [Verified][Omi.Glossary.Testing.Verified] |
| [Cboe][Cboe.Directory] | Options | [Complex][Cboe.Options.Complex.Pitch.v2.1.37.Dissector] | Pitch | [2.1.37][Cboe.Options.Complex.Pitch.v2.1.37.Dissector] | 3/1/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Options | [Complex][Cboe.Options.Complex.Pitch.v2.1.18.Dissector] | Pitch | [2.1.18][Cboe.Options.Complex.Pitch.v2.1.18.Dissector] | 1/31/2020 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cboe][Cboe.Directory] | Options | [DepthOfBook][Cboe.Options.DepthOfBook.Pitch.v2.39.4.Dissector] | Pitch | [2.39.4][Cboe.Options.DepthOfBook.Pitch.v2.39.4.Dissector] | 8/21/2018 | [Verified][Omi.Glossary.Testing.Verified] |
| [Cme][Cme.Directory] | BrokerTec | [Ust][Cme.BrokerTec.Ust.Sbe.v10.1.Dissector] | Sbe | [10.1][Cme.BrokerTec.Ust.Sbe.v10.1.Dissector] | 4/13/2023 | [Beta][Omi.Glossary.Testing.Beta] |
| [Cme][Cme.Directory] | Ebs | [Spectrum][Cme.Ebs.Spectrum.Sbe.v12.0.Dissector] | Sbe | [12.0][Cme.Ebs.Spectrum.Sbe.v12.0.Dissector] | 4/8/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cme][Cme.Directory] | Futures | [Derived][Cme.Futures.Derived.Sbe.v12.0.Dissector] | Sbe | [12.0][Cme.Futures.Derived.Sbe.v12.0.Dissector] | 1/4/2020 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cme][Cme.Directory] | Futures | [iLink3][Cme.Futures.iLink3.Sbe.v8.8.Dissector] | Sbe | [8.8][Cme.Futures.iLink3.Sbe.v8.8.Dissector] | 5/31/2022 | [Verified][Omi.Glossary.Testing.Verified] |
| [Cme][Cme.Directory] | Futures | [iLink3][Cme.Futures.iLink3.Sbe.v8.7.Dissector] | Sbe | [8.7][Cme.Futures.iLink3.Sbe.v8.7.Dissector] | 1/6/2021 | [Verified][Omi.Glossary.Testing.Verified] |
| [Cme][Cme.Directory] | Futures | [Mdp3][Cme.Futures.Mdp3.Sbe.v1.13.Dissector] | Sbe | [1.13][Cme.Futures.Mdp3.Sbe.v1.13.Dissector] | 4/11/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cme][Cme.Directory] | Futures | [Mdp3][Cme.Futures.Mdp3.Sbe.v1.12.Dissector] | Sbe | [1.12][Cme.Futures.Mdp3.Sbe.v1.12.Dissector] | 3/10/2021 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cme][Cme.Directory] | Futures | [Settlements][Cme.Futures.Settlements.Sbe.v7.0.Dissector] | Sbe | [7.0][Cme.Futures.Settlements.Sbe.v7.0.Dissector] | 12/3/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Cme][Cme.Directory] | Futures | [Streamlined][Cme.Futures.Streamlined.Sbe.v5.9.Dissector] | Sbe | [5.9][Cme.Futures.Streamlined.Sbe.v5.9.Dissector] | 4/4/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Coinbase][Coinbase.Directory] | Derivatives | [MarketDataApi][Coinbase.Derivatives.MarketDataApi.Sbe.v1.7.Dissector] | Sbe | [1.7][Coinbase.Derivatives.MarketDataApi.Sbe.v1.7.Dissector] | 4/14/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Coinbase][Coinbase.Directory] | Derivatives | [OrdersApi][Coinbase.Derivatives.OrdersApi.Sbe.v1.6.Dissector] | Sbe | [1.6][Coinbase.Derivatives.OrdersApi.Sbe.v1.6.Dissector] | 10/13/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Eurex][Eurex.Directory] | Cash | [Eti][Eurex.Cash.Eti.T7.v13.0.Dissector] | T7 | [13.0][Eurex.Cash.Eti.T7.v13.0.Dissector] | 10/10/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Eurex][Eurex.Directory] | Cash | [Eti][Eurex.Cash.Eti.T7.v12.1.Dissector] | T7 | [12.1][Eurex.Cash.Eti.T7.v12.1.Dissector] | 3/11/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Eurex][Eurex.Directory] | Derivatives | [Eobi][Eurex.Derivatives.Eobi.T7.v13.0.Dissector] | T7 | [13.0][Eurex.Derivatives.Eobi.T7.v13.0.Dissector] | 8/27/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Eurex][Eurex.Directory] | Derivatives | [Eobi][Eurex.Derivatives.Eobi.T7.v12.1.Dissector] | T7 | [12.1][Eurex.Derivatives.Eobi.T7.v12.1.Dissector] | 3/11/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Eurex][Eurex.Directory] | Derivatives | [Eti][Eurex.Derivatives.Eti.T7.v13.0.Dissector] | T7 | [13.0][Eurex.Derivatives.Eti.T7.v13.0.Dissector] | 9/20/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Eurex][Eurex.Directory] | Derivatives | [Eti][Eurex.Derivatives.Eti.T7.v12.1.Dissector] | T7 | [12.1][Eurex.Derivatives.Eti.T7.v12.1.Dissector] | 3/11/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Euronext][Euronext.Directory] | Optiq | [MarketDataGateway][Euronext.Optiq.MarketDataGateway.Sbe.v5.52.Dissector] | Sbe | [5.52][Euronext.Optiq.MarketDataGateway.Sbe.v5.52.Dissector] | 12/13/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Euronext][Euronext.Directory] | Optiq | [MarketDataGateway][Euronext.Optiq.MarketDataGateway.Sbe.v5.51.Dissector] | Sbe | [5.51][Euronext.Optiq.MarketDataGateway.Sbe.v5.51.Dissector] | 10/18/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Euronext][Euronext.Directory] | Optiq | [OrderEntryGateway][Euronext.Optiq.OrderEntryGateway.Sbe.v5.52.Dissector] | Sbe | [5.52][Euronext.Optiq.OrderEntryGateway.Sbe.v5.52.Dissector] | 12/13/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Euronext][Euronext.Directory] | Optiq | [OrderEntryGateway][Euronext.Optiq.OrderEntryGateway.Sbe.v5.51.Dissector] | Sbe | [5.51][Euronext.Optiq.OrderEntryGateway.Sbe.v5.51.Dissector] | 10/18/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Finra][Finra.Directory] | Orf | [Tdds][Finra.Orf.Tdds.Dfi.v2.1.Dissector] | Dfi | [2.1][Finra.Orf.Tdds.Dfi.v2.1.Dissector] | 5/10/2022 | [Verified][Omi.Glossary.Testing.Verified] |
| [Finra][Finra.Directory] | Otc | [Bbds][Finra.Otc.Bbds.Dfi.v2018.1A.Dissector] | Dfi | [2018.1A][Finra.Otc.Bbds.Dfi.v2018.1A.Dissector] | 5/14/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Ice][Ice.Directory] | Futures | [Mdf][Ice.Futures.Mdf.iMpact.v1.1.43.Dissector] | iMpact | [1.1.43][Ice.Futures.Mdf.iMpact.v1.1.43.Dissector] | 11/18/2020 | [Untested][Omi.Glossary.Testing.Untested] |
| [Iex][Iex.Directory] | Equities | [Deep][Iex.Equities.Deep.IexTp.v1.0.8.Dissector] | IexTp | [1.0.8][Iex.Equities.Deep.IexTp.v1.0.8.Dissector] | 2/27/2018 | [Verified][Omi.Glossary.Testing.Verified] |
| [Iex][Iex.Directory] | Equities | [DeepPlus][Iex.Equities.DeepPlus.IexTp.v1.0.1.Dissector] | IexTp | [1.0.1][Iex.Equities.DeepPlus.IexTp.v1.0.1.Dissector] | 9/30/2024 | [Verified][Omi.Glossary.Testing.Verified] |
| [Iex][Iex.Directory] | Equities | [Tops][Iex.Equities.Tops.IexTp.v1.6.6.Dissector] | IexTp | [1.6.6][Iex.Equities.Tops.IexTp.v1.6.6.Dissector] | 10/19/2021 | [Verified][Omi.Glossary.Testing.Verified] |
| [Imperative][Imperative.Directory] |  | [IntelligentCross][Imperative.IntelligentCross.Mdf.v1.11.Dissector] | Mdf | [1.11][Imperative.IntelligentCross.Mdf.v1.11.Dissector] | 7/30/2020 | [Untested][Omi.Glossary.Testing.Untested] |
| [Jnx][Jnx.Directory] | Bonds | [Pts][Jnx.Bonds.Pts.Itch.v1.2.Dissector] | Itch | [1.2][Jnx.Bonds.Pts.Itch.v1.2.Dissector] | 4/1/2020 | [Untested][Omi.Glossary.Testing.Untested] |
| [Jnx][Jnx.Directory] | Bonds | [Pts][Jnx.Bonds.Pts.Ouch.v1.4.Dissector] | Ouch | [1.4][Jnx.Bonds.Pts.Ouch.v1.4.Dissector] | 4/1/2020 | [Untested][Omi.Glossary.Testing.Untested] |
| [Jnx][Jnx.Directory] | Equities | [Pts][Jnx.Equities.Pts.Itch.v1.7.Dissector] | Itch | [1.7][Jnx.Equities.Pts.Itch.v1.7.Dissector] | 11/1/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Jnx][Jnx.Directory] | Equities | [Pts][Jnx.Equities.Pts.Itch.v1.6.Dissector] | Itch | [1.6][Jnx.Equities.Pts.Itch.v1.6.Dissector] | 3/9/2023 | [Verified][Omi.Glossary.Testing.Verified] |
| [Jnx][Jnx.Directory] | Equities | [Pts][Jnx.Equities.Pts.Ouch.v1.12.Dissector] | Ouch | [1.12][Jnx.Equities.Pts.Ouch.v1.12.Dissector] | 11/1/2023 | [Verified][Omi.Glossary.Testing.Verified] |
| [Lseg][Lseg.Directory] | TradeEcho | [Level2][Lseg.TradeEcho.Level2.Gtp.v24.4.Dissector] | Gtp | [24.4][Lseg.TradeEcho.Level2.Gtp.v24.4.Dissector] | 4/24/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Lseg][Lseg.Directory] | TradeEcho | [Mifid][Lseg.TradeEcho.Mifid.Gtp.v24.4.Dissector] | Gtp | [24.4][Lseg.TradeEcho.Mifid.Gtp.v24.4.Dissector] | 4/24/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Lseg][Lseg.Directory] | Turquoise | [Analytics][Lseg.Turquoise.Analytics.Gtp.v24.4.Dissector] | Gtp | [24.4][Lseg.Turquoise.Analytics.Gtp.v24.4.Dissector] | 4/24/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Lseg][Lseg.Directory] | Turquoise | [Level1][Lseg.Turquoise.Level1.Gtp.v24.4.Dissector] | Gtp | [24.4][Lseg.Turquoise.Level1.Gtp.v24.4.Dissector] | 4/24/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Lseg][Lseg.Directory] | Turquoise | [Level2][Lseg.Turquoise.Level2.Gtp.v24.4.Dissector] | Gtp | [24.4][Lseg.Turquoise.Level2.Gtp.v24.4.Dissector] | 4/24/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Lseg][Lseg.Directory] | Turquoise | [Mifid][Lseg.Turquoise.Mifid.Gtp.v24.4.Dissector] | Gtp | [24.4][Lseg.Turquoise.Mifid.Gtp.v24.4.Dissector] | 4/24/2024 | [Beta][Omi.Glossary.Testing.Beta] |
| [Memx][Memx.Directory] | Equities | [Memo][Memx.Equities.Memo.Sbe.v1.12.Dissector] | Sbe | [1.12][Memx.Equities.Memo.Sbe.v1.12.Dissector] | 12/12/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Memx][Memx.Directory] | Equities | [Memo][Memx.Equities.Memo.Sbe.v1.11.Dissector] | Sbe | [1.11][Memx.Equities.Memo.Sbe.v1.11.Dissector] | 1/13/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Memx][Memx.Directory] | Equities | [MemoirDepthFeed][Memx.Equities.MemoirDepthFeed.Sbe.v1.3.Dissector] | Sbe | [1.3][Memx.Equities.MemoirDepthFeed.Sbe.v1.3.Dissector] | 4/5/2021 | [Beta][Omi.Glossary.Testing.Beta] |
| [Memx][Memx.Directory] | Equities | [MemoirLastSale][Memx.Equities.MemoirLastSale.Sbe.v1.3.Dissector] | Sbe | [1.3][Memx.Equities.MemoirLastSale.Sbe.v1.3.Dissector] | 4/5/2021 | [Beta][Omi.Glossary.Testing.Beta] |
| [Memx][Memx.Directory] | Equities | [MemoirTopOfBook][Memx.Equities.MemoirTopOfBook.Sbe.v1.3.Dissector] | Sbe | [1.3][Memx.Equities.MemoirTopOfBook.Sbe.v1.3.Dissector] | 4/5/2021 | [Beta][Omi.Glossary.Testing.Beta] |
| [Memx][Memx.Directory] | Options | [Memo][Memx.Options.Memo.Sbe.v1.8.Dissector] | Sbe | [1.8][Memx.Options.Memo.Sbe.v1.8.Dissector] | 8/2/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Memx][Memx.Directory] | Options | [Memo][Memx.Options.Memo.Sbe.v1.7.Dissector] | Sbe | [1.7][Memx.Options.Memo.Sbe.v1.7.Dissector] | 4/17/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Memx][Memx.Directory] | Options | [MemoirDepth][Memx.Options.MemoirDepth.Sbe.v1.6.a.Dissector] | Sbe | [1.6.a][Memx.Options.MemoirDepth.Sbe.v1.6.a.Dissector] | 11/13/2023 | [Verified][Omi.Glossary.Testing.Verified] |
| [Memx][Memx.Directory] | Options | [MemoirDepth][Memx.Options.MemoirDepth.Sbe.v1.3.Dissector] | Sbe | [1.3][Memx.Options.MemoirDepth.Sbe.v1.3.Dissector] | 6/29/2023 | [Verified][Omi.Glossary.Testing.Verified] |
| [Memx][Memx.Directory] | Options | [MemoirTop][Memx.Options.MemoirTop.Sbe.v1.6.a.Dissector] | Sbe | [1.6.a][Memx.Options.MemoirTop.Sbe.v1.6.a.Dissector] | 11/13/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Memx][Memx.Directory] | Options | [MemoirTop][Memx.Options.MemoirTop.Sbe.v1.3.Dissector] | Sbe | [1.3][Memx.Options.MemoirTop.Sbe.v1.3.Dissector] | 6/29/2023 | [Beta][Omi.Glossary.Testing.Beta] |
| [Memx][Memx.Directory] | Options | [RiskControl][Memx.Options.RiskControl.Sbe.v1.7.Dissector] | Sbe | [1.7][Memx.Options.RiskControl.Sbe.v1.7.Dissector] | 4/17/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Memx][Memx.Directory] | Options | [RiskControl][Memx.Options.RiskControl.Sbe.v1.3.Dissector] | Sbe | [1.3][Memx.Options.RiskControl.Sbe.v1.3.Dissector] | 6/29/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [Miax][Miax.Directory] | Options | [ComplexTopOfMarket][Miax.Options.ComplexTopOfMarket.Mach.v1.3.Dissector] | Mach | [1.3][Miax.Options.ComplexTopOfMarket.Mach.v1.3.Dissector] | 3/16/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Miax][Miax.Directory] | Options | [TopOfMarket][Miax.Options.TopOfMarket.Mach.v2.3.Dissector] | Mach | [2.3][Miax.Options.TopOfMarket.Mach.v2.3.Dissector] | 6/10/2019 | [Untested][Omi.Glossary.Testing.Untested] |
| [Miax][Miax.Directory] | Options | [TopOfMarket][Miax.Options.TopOfMarket.Mach.v2.2.Dissector] | Mach | [2.2][Miax.Options.TopOfMarket.Mach.v2.2.Dissector] | 3/16/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Miax][Miax.Directory] | Pearl Equities | [DepthOfMarket][Miax.Pearl.Equities.DepthOfMarket.Mach.v1.3.a.Dissector] | Mach | [1.3.a][Miax.Pearl.Equities.DepthOfMarket.Mach.v1.3.a.Dissector] | 11/5/2020 | [Untested][Omi.Glossary.Testing.Untested] |
| [Miax][Miax.Directory] | Pearl Equities | [TopOfMarket][Miax.Pearl.Equities.TopOfMarket.Mach.v1.1.a.Dissector] | Mach | [1.1.a][Miax.Pearl.Equities.TopOfMarket.Mach.v1.1.a.Dissector] | 11/5/2020 | [Untested][Omi.Glossary.Testing.Untested] |
| [Miax][Miax.Directory] | Pearl Options | [TopOfMarket][Miax.Pearl.Options.TopOfMarket.Mach.v1.0.Dissector] | Mach | [1.0][Miax.Pearl.Options.TopOfMarket.Mach.v1.0.Dissector] | 2/27/2017 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] |  Equities | [Orders][Nasdaq.Equities.Orders.Ouch.v5.0.Dissector] | Ouch | [5.0][Nasdaq.Equities.Orders.Ouch.v5.0.Dissector] | 4/1/2023 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nasdaq][Nasdaq.Directory] |  Equities | [Orders][Nasdaq.Equities.Orders.Ouch.v4.2.Dissector] | Ouch | [4.2][Nasdaq.Equities.Orders.Ouch.v4.2.Dissector] | 7/8/2019 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Bx Equities | [TotalView][Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Dissector] | Itch | [5.0][Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Dissector] | 5/23/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Bx Equities | [Orders][Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Dissector] | Ouch | [4.2][Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Dissector] | 7/8/2019 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Bx Options | [DepthOfMarket][Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Dissector] | Itch | [1.3][Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Dissector] | 11/2/2017 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Bx Options | [TopOfMarket][Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Dissector] | Itch | [1.2][Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Dissector] | 11/2/2017 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Equities | [Aggregated][Nasdaq.Equities.Aggregated.Itch.v2.0.Dissector] | Itch | [2.0][Nasdaq.Equities.Aggregated.Itch.v2.0.Dissector] | 9/12/2017 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Equities | [Level2][Nasdaq.Equities.Level2.Itch.v2.0.Dissector] | Itch | [2.0][Nasdaq.Equities.Level2.Itch.v2.0.Dissector] | 5/3/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Equities | [Noi][Nasdaq.Equities.Noi.Itch.v3.0.Dissector] | Itch | [3.0][Nasdaq.Equities.Noi.Itch.v3.0.Dissector] | 9/12/2017 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Equities | [TotalView][Nasdaq.Equities.TotalView.Itch.v5.0.Dissector] | Itch | [5.0][Nasdaq.Equities.TotalView.Itch.v5.0.Dissector] | 9/12/2017 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Ise | [OrderComboFeed][Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Dissector] | Itch | [1.1][Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Dissector] | 6/13/2017 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nasdaq][Nasdaq.Directory] | Ise | [OrderFeed][Nasdaq.Ise.OrderFeed.Itch.v1.1.Dissector] | Itch | [1.1][Nasdaq.Ise.OrderFeed.Itch.v1.1.Dissector] | 8/23/2017 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Ise | [TopComboQuoteFeed][Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Dissector] | Itch | [1.0][Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Dissector] | 8/23/2017 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nasdaq][Nasdaq.Directory] | Nom | [Bono][Nasdaq.Nom.Bono.Itch.v3.2.Dissector] | Itch | [3.2][Nasdaq.Nom.Bono.Itch.v3.2.Dissector] | 11/2/2017 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Nom | [Itto][Nasdaq.Nom.Itto.Itch.v4.0.Dissector] | Itch | [4.0][Nasdaq.Nom.Itto.Itch.v4.0.Dissector] | 2/8/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Phlx | [MarketDepth][Nasdaq.Phlx.MarketDepth.Itch.v1.6.Dissector] | Itch | [1.6][Nasdaq.Phlx.MarketDepth.Itch.v1.6.Dissector] | 3/8/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Phlx | [Orders][Nasdaq.Phlx.Orders.Itch.v1.9.Dissector] | Itch | [1.9][Nasdaq.Phlx.Orders.Itch.v1.9.Dissector] | 8/10/2015 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Phlx | [Topo][Nasdaq.Phlx.Topo.Itch.v3.3.Dissector] | Itch | [3.3][Nasdaq.Phlx.Topo.Itch.v3.3.Dissector] | 11/2/2017 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Psx | [Bbo][Nasdaq.Psx.Bbo.Itch.v2.1.Dissector] | Itch | [2.1][Nasdaq.Psx.Bbo.Itch.v2.1.Dissector] | 5/3/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Psx | [LastSale][Nasdaq.Psx.LastSale.Itch.v2.1.Dissector] | Itch | [2.1][Nasdaq.Psx.LastSale.Itch.v2.1.Dissector] | 5/3/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Psx | [TotalView][Nasdaq.Psx.TotalView.Itch.v5.0.Dissector] | Itch | [5.0][Nasdaq.Psx.TotalView.Itch.v5.0.Dissector] | 5/3/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Psx | [Orders][Nasdaq.Psx.Orders.Ouch.v4.2.Dissector] | Ouch | [4.2][Nasdaq.Psx.Orders.Ouch.v4.2.Dissector] | 7/8/2019 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nasdaq][Nasdaq.Directory] | Uqdf | [Output][Nasdaq.Uqdf.Output.Utp.v1.5.Dissector] | Utp | [1.5][Nasdaq.Uqdf.Output.Utp.v1.5.Dissector] | 5/1/2020 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nasdaq][Nasdaq.Directory] | Utdf | [Output][Nasdaq.Utdf.Output.Utp.v1.5.Dissector] | Utp | [1.5][Nasdaq.Utdf.Output.Utp.v1.5.Dissector] | 5/1/2020 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nyse][Nyse.Directory] |  Equities | [OpenBook][Nyse.Equities.OpenBook.Ultra.v2.1.b.Dissector] | Ultra | [2.1.b][Nyse.Equities.OpenBook.Ultra.v2.1.b.Dissector] | 3/9/2018 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Amex Equities | [OpenBook][Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Dissector] | Ultra | [2.1.b][Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Dissector] | 3/9/2018 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Amex Options | [BinaryGateway][Nyse.Amex.Options.BinaryGateway.Pillar.v3.15.Dissector] | Pillar | [3.15][Nyse.Amex.Options.BinaryGateway.Pillar.v3.15.Dissector] | 5/8/2023 | [Beta][Omi.Glossary.Testing.Beta] |
| [Nyse][Nyse.Directory] | Arca Options | [BinaryGateway][Nyse.Arca.Options.BinaryGateway.Pillar.v3.15.Dissector] | Pillar | [3.15][Nyse.Arca.Options.BinaryGateway.Pillar.v3.15.Dissector] | 5/8/2023 | [Beta][Omi.Glossary.Testing.Beta] |
| [Nyse][Nyse.Directory] | Arca Options | [ComplexFeed][Nyse.Arca.Options.ComplexFeed.Pillar.v1.0.d.Dissector] | Pillar | [1.0.d][Nyse.Arca.Options.ComplexFeed.Pillar.v1.0.d.Dissector] | 3/21/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nyse][Nyse.Directory] | Arca Options | [Feed][Nyse.Arca.Options.Feed.Pillar.v1.2.f.Dissector] | Pillar | [1.2.f][Nyse.Arca.Options.Feed.Pillar.v1.2.f.Dissector] | 4/29/2022 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Arca Options | [TopFeed][Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.Dissector] | Pillar | [1.2.c][Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.Dissector] | 3/21/2022 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Equities | [Bbo][Nyse.Equities.Bbo.Pillar.v2.5.b.Dissector] | Pillar | [2.5.b][Nyse.Equities.Bbo.Pillar.v2.5.b.Dissector] | 3/21/2022 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Equities | [BinaryGateway][Nyse.Equities.BinaryGateway.Pillar.v5.8.Dissector] | Pillar | [5.8][Nyse.Equities.BinaryGateway.Pillar.v5.8.Dissector] | 8/23/2023 | [Beta][Omi.Glossary.Testing.Beta] |
| [Nyse][Nyse.Directory] | Equities | [ImbalancesFeed][Nyse.Equities.ImbalancesFeed.Pillar.v2.2.h.Dissector] | Pillar | [2.2.h][Nyse.Equities.ImbalancesFeed.Pillar.v2.2.h.Dissector] | 11/30/2022 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Equities | [IntegratedFeed][Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.Dissector] | Pillar | [2.5.a][Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.Dissector] | 11/30/2022 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Equities | [Bqt][Nyse.Equities.Bqt.Xdp.v2.1.a.Dissector] | Xdp | [2.1.a][Nyse.Equities.Bqt.Xdp.v2.1.a.Dissector] | 4/4/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nyse][Nyse.Directory] | Equities | [Bqt][Nyse.Equities.Bqt.Xdp.v1.7.a.Dissector] | Xdp | [1.7.a][Nyse.Equities.Bqt.Xdp.v1.7.a.Dissector] | 7/24/2017 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Equities | [ImbalancesFeed][Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Dissector] | Xdp | [2.2.a][Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Dissector] | 3/8/2019 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Options | [ComplexFeed][Nyse.Options.ComplexFeed.Xdp.v1.3.a.Dissector] | Xdp | [1.3.a][Nyse.Options.ComplexFeed.Xdp.v1.3.a.Dissector] | 2/28/2018 | [Verified][Omi.Glossary.Testing.Verified] |
| [Nyse][Nyse.Directory] | Options | [DeepFeed][Nyse.Options.DeepFeed.Xdp.v1.3.a.Dissector] | Xdp | [1.3.a][Nyse.Options.DeepFeed.Xdp.v1.3.a.Dissector] | 2/28/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Nyse][Nyse.Directory] | Options | [TopFeed][Nyse.Options.TopFeed.Xdp.v1.3.a.Dissector] | Xdp | [1.3.a][Nyse.Options.TopFeed.Xdp.v1.3.a.Dissector] | 2/28/2018 | [Untested][Omi.Glossary.Testing.Untested] |
| [Otc][Otc.Directory] | Markets | [Multicast][Otc.Markets.Multicast.Ats.v4.5.Dissector] | Ats | [4.5][Otc.Markets.Multicast.Ats.v4.5.Dissector] | 7/28/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Siac][Siac.Directory] | Cqs | [Output][Siac.Cqs.Output.Cta.v2.9.Dissector] | Cta | [2.9][Siac.Cqs.Output.Cta.v2.9.Dissector] | 12/16/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Siac][Siac.Directory] | Cqs | [Snapshot][Siac.Cqs.Snapshot.Cta.v1.0.Dissector] | Cta | [1.0][Siac.Cqs.Snapshot.Cta.v1.0.Dissector] | 1/24/2022 | [Untested][Omi.Glossary.Testing.Untested] |
| [Siac][Siac.Directory] | Cts | [Output][Siac.Cts.Output.Cta.v2.10.Dissector] | Cta | [2.10][Siac.Cts.Output.Cta.v2.10.Dissector] | 9/30/2024 | [Untested][Omi.Glossary.Testing.Untested] |
| [Siac][Siac.Directory] | Opra | [Recipient][Siac.Opra.Recipient.Obi.v6.2.Dissector] | Obi | [6.2][Siac.Opra.Recipient.Obi.v6.2.Dissector] | 7/23/2023 | [Untested][Omi.Glossary.Testing.Untested] |
| [SmallX][SmallX.Directory] |  | [OrderBookFeed][SmallX.OrderBookFeed.Sbe.v2.2.Dissector] | Sbe | [2.2][SmallX.OrderBookFeed.Sbe.v2.2.Dissector] | 10/12/2021 | [Untested][Omi.Glossary.Testing.Untested] |
| [Tmx][Tmx.Directory] | Mx Sola | [Multicast][Tmx.Mx.Sola.Multicast.Hsvf.v1.11.Dissector] | Hsvf | [1.11][Tmx.Mx.Sola.Multicast.Hsvf.v1.11.Dissector] | 1/23/2019 | [Untested][Omi.Glossary.Testing.Untested] |
| [Tmx][Tmx.Directory] | QuantumFeed | [AlphaLevel1][Tmx.QuantumFeed.AlphaLevel1.Xmt.v2.2.Dissector] | Xmt | [2.2][Tmx.QuantumFeed.AlphaLevel1.Xmt.v2.2.Dissector] | 4/17/2023 | [Beta][Omi.Glossary.Testing.Beta] |
| [Tmx][Tmx.Directory] | QuantumFeed | [AlphaLevel2][Tmx.QuantumFeed.AlphaLevel2.Xmt.v2.2.Dissector] | Xmt | [2.2][Tmx.QuantumFeed.AlphaLevel2.Xmt.v2.2.Dissector] | 4/17/2023 | [Beta][Omi.Glossary.Testing.Beta] |
| [Tmx][Tmx.Directory] | QuantumFeed | [TsxTsxvLevel1][Tmx.QuantumFeed.TsxTsxvLevel1.Xmt.v2.8.Dissector] | Xmt | [2.8][Tmx.QuantumFeed.TsxTsxvLevel1.Xmt.v2.8.Dissector] | 2/22/2023 | [Beta][Omi.Glossary.Testing.Beta] |
| [Tmx][Tmx.Directory] | QuantumFeed | [TsxTsxvLevel2][Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v3.6.Dissector] | Xmt | [3.6][Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v3.6.Dissector] | 10/20/2020 | [Beta][Omi.Glossary.Testing.Beta] |

Obsolete and header dissectors are in dissector directories: [Asx][Asx.Directory], [B3][B3.Directory], [Box][Box.Directory], [Cboe][Cboe.Directory], [Cme][Cme.Directory], [Coinbase][Coinbase.Directory], [Eurex][Eurex.Directory], [Euronext][Euronext.Directory], [Finra][Finra.Directory], [Ice][Ice.Directory], [Iex][Iex.Directory], [Imperative][Imperative.Directory], [Jnx][Jnx.Directory], [Lseg][Lseg.Directory], [Miax][Miax.Directory], [Memx][Memx.Directory], [Nasdaq][Nasdaq.Directory], [Nyse][Nyse.Directory], [Otc][Otc.Directory], [Siac][Siac.Directory], [SmallX][SmallX.Directory], [Tmx][Tmx.Directory]

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
[B3.Equities.BinaryUmdf.Sbe.v1.8.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/B3/B3_Equities_BinaryUmdf_Sbe_v1_8_Dissector.lua "B3 Equities BinaryUmdf Sbe v1.8 Lua Wireshark Dissector"
[B3.Equities.BinaryUmdf.Sbe.v1.9.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/B3/B3_Equities_BinaryUmdf_Sbe_v1_9_Dissector.lua "B3 Equities BinaryUmdf Sbe v1.9 Lua Wireshark Dissector"
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
[Eurex.Derivatives.Eobi.T7.v13.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Eurex/Eurex_Derivatives_Eobi_T7_v13_0_Dissector.lua "Eurex Derivatives Eobi T7 v13.0 Lua Wireshark Dissector"
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
[Nasdaq.Equities.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/main/Nasdaq/Nasdaq_Equities_TotalView_Itch_v5_0_Dissector.lua "Nasdaq Equities TotalView Itch v5.0 Lua Wireshark Dissector"
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
