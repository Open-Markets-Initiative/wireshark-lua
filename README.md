# Omi Lua Wireshark Dissectors

<p align = "left">
<a href="https://travis-ci.org/Open-Markets-Initiative/wireshark-lua"><img src = "https://img.shields.io/travis/Open-Markets-Initiative/wireshark-lua.svg?style=flat-square" /></a>
</p>

Omi Lua Wireshark dissector scripts provide easily customized cross platform dissection solutions for viewing common binary exchange protocols.

For more information on lua dissectors: [How Lua fits into Wireshark](https://wiki.wireshark.org/Lua "Wireshark Lua Documentation")

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
## Active Protocols

| Organization | Division | Data | Protocol | Version | Date | Testing |
| --- | --- | --- | --- | --- | --- | --- |
| [Cboe][Cboe.Directory] | Equities Bzx | OrderEntry | Boe | [2.3][Cboe.Equities.Bzx.OrderEntry.Boe.v2.3.Dissector] | 3/11/2019 | [Beta][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Equities Edgx | OrderEntry | Boe | [2.3][Cboe.Equities.Edgx.OrderEntry.Boe.v2.3.Dissector] | 3/11/2019 | [Beta][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Futures | OrderEntry | Boe | [1.3][Cboe.Futures.OrderEntry.Boe.v1.3.Dissector] | 4/21/2020 | [Beta][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Futures | DepthOfBook | Pitch | [1.1.6][Cboe.Futures.DepthOfBook.Pitch.v1.1.6.Dissector] | 4/8/2019 | [Verified][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Options | ComplexDepthOfBook | Pitch | [2.1.18][Cboe.Options.ComplexDepthOfBook.Pitch.v2.1.18.Dissector] | 1/31/2020 | [Untested][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Options | DepthOfBook | Pitch | [2.39.4][Cboe.Options.DepthOfBook.Pitch.v2.39.4.Dissector] | 8/21/2018 | [Verified][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Options Bzx | OrderEntry | Boe | [2.10][Cboe.Options.Bzx.OrderEntry.Boe.v2.10.Dissector] | 12/3/2019 | [Beta][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Options C1 | OrderEntry | Boe | [2.10][Cboe.Options.C1.OrderEntry.Boe.v2.10.Dissector] | 12/3/2019 | [Beta][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Options C1 | AuctionFeed | Pitch | [1.1.1][Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Dissector] | 12/6/2018 | [Verified][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Options Edgx | OrderEntry | Boe | [2.10][Cboe.Options.Edgx.OrderEntry.Boe.v2.10.Dissector] | 12/3/2019 | [Beta][Omi.Glossary.Testing] |
| [Cboe][Cboe.Directory] | Options Edgx | AuctionFeed | Pitch | [1.1.1][Cboe.Options.Edgx.AuctionFeed.Pitch.v1.1.1.Dissector] | 12/6/2018 | [Verified][Omi.Glossary.Testing] |
| [Cme][Cme.Directory] | Futures | iLink3 | Sbe | [8.5][Cme.Futures.iLink3.Sbe.v8.5.Dissector] | 2/27/2020 | [Untested][Omi.Glossary.Testing] |
| [Cme][Cme.Directory] | Futures | Mdp3 | Sbe | [1.11][Cme.Futures.Mdp3.Sbe.v1.11.Dissector] | 3/3/2020 | [Untested][Omi.Glossary.Testing] |
| [Cme][Cme.Directory] | Futures | Streamline | Sbe | [9.5][Cme.Futures.Streamline.Sbe.v9.5.Dissector] | 4/4/2018 | [Untested][Omi.Glossary.Testing] |
| [Eurex][Eurex.Directory] | Cash | Eti | T7 | [9.0][Eurex.Cash.Eti.T7.v9.0.Dissector] | 8/10/2020 | [Untested][Omi.Glossary.Testing] |
| [Eurex][Eurex.Directory] | Cash | Eti | T7 | [8.1][Eurex.Cash.Eti.T7.v8.1.Dissector] | 3/25/2020 | [Untested][Omi.Glossary.Testing] |
| [Eurex][Eurex.Directory] | Derivatives | Eobi | T7 | [9.0][Eurex.Derivatives.Eobi.T7.v9.0.Dissector] | 7/24/2020 | [Untested][Omi.Glossary.Testing] |
| [Eurex][Eurex.Directory] | Derivatives | Eobi | T7 | [8.1][Eurex.Derivatives.Eobi.T7.v8.1.Dissector] | 3/23/2020 | [Untested][Omi.Glossary.Testing] |
| [Eurex][Eurex.Directory] | Derivatives | Eti | T7 | [9.0][Eurex.Derivatives.Eti.T7.v9.0.Dissector] | 8/10/2020 | [Untested][Omi.Glossary.Testing] |
| [Eurex][Eurex.Directory] | Derivatives | Eti | T7 | [8.1][Eurex.Derivatives.Eti.T7.v8.1.Dissector] | 3/25/2020 | [Untested][Omi.Glossary.Testing] |
| [Finra][Finra.Directory] | Orf | Tdds | Dfi | [2.0][Finra.Orf.Tdds.Dfi.v2.0.Dissector] | 9/24/2018 | [Verified][Omi.Glossary.Testing] |
| [Finra][Finra.Directory] | Otc | Bbds | Dfi | [2018.1A][Finra.Otc.Bbds.Dfi.v2018.1A.Dissector] | 5/14/2018 | [Untested][Omi.Glossary.Testing] |
| [Ice][Ice.Directory] | Futures | Mdf | iMpact | [1.1.34][Ice.Futures.Mdf.iMpact.v1.1.34.Dissector] | 9/4/2018 | [Verified][Omi.Glossary.Testing] |
| [Memx][Memx.Directory] | Equities | Memo | Sbe | [1.2][Memx.Equities.Memo.Sbe.v1.2.Dissector] | 9/23/2020 | [Untested][Omi.Glossary.Testing] |
| [Memx][Memx.Directory] | Equities | Memo | Sbe | [1.1][Memx.Equities.Memo.Sbe.v1.1.Dissector] | 7/27/2020 | [Untested][Omi.Glossary.Testing] |
| [Memx][Memx.Directory] | Equities | MemoirDepthFeed | Sbe | [1.1][Memx.Equities.MemoirDepthFeed.Sbe.v1.1.Dissector] | 7/27/2020 | [Untested][Omi.Glossary.Testing] |
| [Memx][Memx.Directory] | Equities | MemoirLastSale | Sbe | [1.1][Memx.Equities.MemoirLastSale.Sbe.v1.1.Dissector] | 7/27/2020 | [Untested][Omi.Glossary.Testing] |
| [Memx][Memx.Directory] | Equities | MemoirTopOfBook | Sbe | [1.1][Memx.Equities.MemoirTopOfBook.Sbe.v1.1.Dissector] | 7/27/2020 | [Untested][Omi.Glossary.Testing] |
| [Miax][Miax.Directory] | Options | cTom | Mach | [1.3][Miax.Options.cTom.Mach.v1.3.Dissector] | 3/16/2018 | [Untested][Omi.Glossary.Testing] |
| [Miax][Miax.Directory] | Options | Tom | Mach | [2.3][Miax.Options.Tom.Mach.v2.3.Dissector] | 6/10/2019 | [Untested][Omi.Glossary.Testing] |
| [Miax][Miax.Directory] | Options | Tom | Mach | [2.2][Miax.Options.Tom.Mach.v2.2.Dissector] | 3/16/2018 | [Untested][Omi.Glossary.Testing] |
| [Miax][Miax.Directory] | Pearl | Tom | Mach | [1.0][Miax.Pearl.Tom.Mach.v1.0.Dissector] | 2/27/2017 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] |  Equities | Orders | Ouch | [4.2][Nasdaq.Equities.Orders.Ouch.v4.2.Dissector] | 7/8/2019 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Bx Equities | TotalView | Itch | [5.0][Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Dissector] | 5/23/2018 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Bx Equities | Orders | Ouch | [4.2][Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Dissector] | 7/8/2019 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Bx Options | DepthOfMarket | Itch | [1.3][Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Dissector] | 11/2/2017 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Bx Options | TopOfMarket | Itch | [1.2][Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Dissector] | 11/2/2017 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Equities | Aggregated | Itch | [2.0][Nasdaq.Equities.Aggregated.Itch.v2.0.Dissector] | 9/12/2017 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Equities | Level2 | Itch | [2.0][Nasdaq.Equities.Level2.Itch.v2.0.Dissector] | 5/3/2018 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Equities | Noi | Itch | [3.0][Nasdaq.Equities.Noi.Itch.v3.0.Dissector] | 9/12/2017 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Equities | TotalView | Itch | [5.0][Nasdaq.Equities.TotalView.Itch.v5.0.Dissector] | 9/12/2017 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Ise | OrderComboFeed | Itch | [1.1][Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Dissector] | 6/13/2017 | [Verified][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Ise | OrderFeed | Itch | [1.1][Nasdaq.Ise.OrderFeed.Itch.v1.1.Dissector] | 8/23/2017 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Ise | TopComboQuoteFeed | Itch | [1.0][Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Dissector] | 8/23/2017 | [Verified][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Nom | Bono | Itch | [3.2][Nasdaq.Nom.Bono.Itch.v3.2.Dissector] | 11/2/2017 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Nom | Itto | Itch | [4.0][Nasdaq.Nom.Itto.Itch.v4.0.Dissector] | 2/8/2018 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Phlx | MarketDepth | Itch | [1.6][Nasdaq.Phlx.MarketDepth.Itch.v1.6.Dissector] | 3/8/2018 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Phlx | Orders | Itch | [1.9][Nasdaq.Phlx.Orders.Itch.v1.9.Dissector] | 8/10/2015 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Phlx | Topo | Itch | [3.3][Nasdaq.Phlx.Topo.Itch.v3.3.Dissector] | 11/2/2017 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Psx | Bbo | Itch | [2.1][Nasdaq.Psx.Bbo.Itch.v2.1.Dissector] | 5/3/2018 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Psx | LastSale | Itch | [2.1][Nasdaq.Psx.LastSale.Itch.v2.1.Dissector] | 5/3/2018 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Psx | TotalView | Itch | [5.0][Nasdaq.Psx.TotalView.Itch.v5.0.Dissector] | 5/3/2018 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Psx | Orders | Ouch | [4.2][Nasdaq.Psx.Orders.Ouch.v4.2.Dissector] | 7/8/2019 | [Untested][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Uqdf | Output | Utp | [1.5][Nasdaq.Uqdf.Output.Utp.v1.5.Dissector] | 5/1/2020 | [Verified][Omi.Glossary.Testing] |
| [Nasdaq][Nasdaq.Directory] | Utdf | Output | Utp | [1.5][Nasdaq.Utdf.Output.Utp.v1.5.Dissector] | 5/1/2020 | [Untested][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] |  Equities | OpenBook | Ultra | [2.1.b][Nyse.Equities.OpenBook.Ultra.v2.1.b.Dissector] | 3/9/2018 | [Verified][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Amex Equities | OpenBook | Ultra | [2.1.b][Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Dissector] | 3/9/2018 | [Verified][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Equities | Bbo | Xdp | [2.4.g][Nyse.Equities.Bbo.Xdp.v2.4.g.Dissector] | 1/29/2018 | [Verified][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Equities | Bqt | Xdp | [2.1.a][Nyse.Equities.Bqt.Xdp.v2.1.a.Dissector] | 4/4/2018 | [Untested][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Equities | Bqt | Xdp | [1.7.a][Nyse.Equities.Bqt.Xdp.v1.7.a.Dissector] | 7/24/2017 | [Verified][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Equities | ImbalancesFeed | Xdp | [2.2.a][Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Dissector] | 3/8/2019 | [Verified][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Equities | IntegratedFeed | Xdp | [2.1.g][Nyse.Equities.IntegratedFeed.Xdp.v2.1.g.Dissector] | 1/29/2018 | [Verified][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Equities Amex | IntegratedFeed | Xdp | [2.1.g][Nyse.Equities.Amex.IntegratedFeed.Xdp.v2.1.g.Dissector] | 1/29/2018 | [Verified][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Equities Arca | Bbo | Xdp | [2.4.c][Nyse.Equities.Arca.Bbo.Xdp.v2.4.c.Dissector] | 7/13/2016 | [Verified][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Options | ComplexFeed | Xdp | [1.3.a][Nyse.Options.ComplexFeed.Xdp.v1.3.a.Dissector] | 2/28/2018 | [Verified][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Options | DeepFeed | Xdp | [1.3.a][Nyse.Options.DeepFeed.Xdp.v1.3.a.Dissector] | 2/28/2018 | [Untested][Omi.Glossary.Testing] |
| [Nyse][Nyse.Directory] | Options | TopFeed | Xdp | [1.3.a][Nyse.Options.TopFeed.Xdp.v1.3.a.Dissector] | 2/28/2018 | [Untested][Omi.Glossary.Testing] |
| [Otc][Otc.Directory] | Markets | Headers | Ats | [1.0][Otc.Markets.Headers.Ats.v1.0.Dissector] | 12/11/2019 | [Verified][Omi.Glossary.Testing] |
| [Otc][Otc.Directory] | Markets | Multicast | Ats | [4.3][Otc.Markets.Multicast.Ats.v4.3.Dissector] | 12/11/2019 | [Verified][Omi.Glossary.Testing] |
| [Siac][Siac.Directory] | Cqs | Output | Cta | [1.91][Siac.Cqs.Output.Cta.v1.91.Dissector] | 1/2/2020 | [Verified][Omi.Glossary.Testing] |
| [Siac][Siac.Directory] | Cts | Output | Cta | [1.91][Siac.Cts.Output.Cta.v1.91.Dissector] | 1/2/2020 | [Beta][Omi.Glossary.Testing] |
| [Siac][Siac.Directory] | Opra | Recipient | Obi | [4.0][Siac.Opra.Recipient.Obi.v4.0.Dissector] | 1/17/2020 | [Untested][Omi.Glossary.Testing] |

Obsolete and header dissectors are in dissector directories: [Asx][Asx.Directory], [Cboe][Cboe.Directory], [Cme][Cme.Directory], [Eurex][Eurex.Directory], [Finra][Finra.Directory], [Ice][Ice.Directory], [Miax][Miax.Directory], [Memx][Memx.Directory], [Nasdaq][Nasdaq.Directory], [Nyse][Nyse.Directory], [Otc][Otc.Directory], [Siac][Siac.Directory]

## Development

Updates are greatly appreciated; however, this entire repository is source generated...including the words you are reading right now. If you wish to suggest script updates, the recommended process is to create an issue with changes and explanation.  Time permitting, we will update the models and regenerate.

| Protocol Count | Generated Lines |
| --- | --- |
| 114 | 1,019,925 |

Note: Our dissector model is still under rapid development.

## Testing

Please report any dissection errors as issues.  Include a small note on the protocol and version, and a minimal capture demonstrating the problem. Also consider including a link or pdf specification documenting the correct behavior.

Production packet captures are required for protocol verification.  If your organization has the rights to packet captures, and you wish to make the world a better place, please post captures to this project.

List of data requests: [Untested Protocols](https://github.com/Open-Markets-Initiative/wireshark-lua/wiki/Data "Unverified Protocol Data List")
## Open Markets Initiative

The Open Markets Initiative (Omi) is a group of technologists dedicated to enhancing the stability of electronic financial markets using modern development methods.

For a list of Omi Hft projects: [Omi Projects](https://github.com/Open-Markets-Initiative/Directory/tree/master/Projects "Open Markets Initiative Projects")

For details of Omi rules and regulations: [Omi Directory](https://github.com/Open-Markets-Initiative/Directory "Open Markets Initiative Directory")
## Disclaimer

Any similarities between existing people, places and/or protocols is purely incidental.

Enjoy.

[Omi Projects]: https://github.com/Open-Markets-Initiative/Directory/tree/master/Projects "Open Markets Initiative Projects"
[Omi Rules and Regulations]: https://github.com/Open-Markets-Initiative/Directory/tree/master/License "Open Markets Initiative Rules and Regulations"
[Omi.Glossary.Testing]: https://github.com/Open-Markets-Initiative/Directory/blob/master/Glossary/Testing.md "Protocol Testing Status"

[Asx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Asx "Australian Securities Exchange"
[Cboe.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cme.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Eurex.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Finra.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Finra "Financial Industry Regulatory Authority"
[Ice.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange"
[Miax.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange"
[Memx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Memx "Members Exchange"
[Nasdaq.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nyse.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Otc.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Otc "Otc Markets"
[Siac.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Siac "Securities Industry Automation Corporation"

[Cboe.Equities.Bzx.OrderEntry.Boe.v2.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Equities.Bzx.OrderEntry.Boe.v2.3.Script.Dissector.lua "Chicago Board Options Exchange 2.3 Wireshark Dissector"
[Cboe.Equities.Edgx.OrderEntry.Boe.v2.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Equities.Edgx.OrderEntry.Boe.v2.3.Script.Dissector.lua "Chicago Board Options Exchange 2.3 Wireshark Dissector"
[Cboe.Futures.DepthOfBook.Pitch.v1.1.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Futures.DepthOfBook.Pitch.v1.1.6.Script.Dissector.lua "Chicago Board Options Exchange 1.1.6 Wireshark Dissector"
[Cboe.Futures.OrderEntry.Boe.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Futures.OrderEntry.Boe.v1.3.Script.Dissector.lua "Chicago Board Options Exchange 1.3 Wireshark Dissector"
[Cboe.Options.ComplexDepthOfBook.Pitch.v2.1.18.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.ComplexDepthOfBook.Pitch.v2.1.18.Script.Dissector.lua "Chicago Board Options Exchange 2.1.18 Wireshark Dissector"
[Cboe.Options.Bzx.OrderEntry.Boe.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.Bzx.OrderEntry.Boe.v2.10.Script.Dissector.lua "Chicago Board Options Exchange 2.10 Wireshark Dissector"
[Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Script.Dissector.lua "Chicago Board Options Exchange 1.1.1 Wireshark Dissector"
[Cboe.Options.C1.OrderEntry.Boe.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.C1.OrderEntry.Boe.v2.10.Script.Dissector.lua "Chicago Board Options Exchange 2.10 Wireshark Dissector"
[Cboe.Options.Edgx.AuctionFeed.Pitch.v1.1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.Edgx.AuctionFeed.Pitch.v1.1.1.Script.Dissector.lua "Chicago Board Options Exchange 1.1.1 Wireshark Dissector"
[Cboe.Options.Edgx.OrderEntry.Boe.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.Edgx.OrderEntry.Boe.v2.10.Script.Dissector.lua "Chicago Board Options Exchange 2.10 Wireshark Dissector"
[Cboe.Options.DepthOfBook.Pitch.v2.39.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.DepthOfBook.Pitch.v2.39.4.Script.Dissector.lua "Chicago Board Options Exchange 2.39.4 Wireshark Dissector"
[Cme.Futures.Mdp3.Sbe.v1.11.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.Mdp3.Sbe.v1.11.Script.Dissector.lua "Chicago Mercantile Exchange 1.11 Wireshark Dissector"
[Cme.Futures.Streamline.Sbe.v9.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.Streamline.Sbe.v9.5.Script.Dissector.lua "Chicago Mercantile Exchange 9.5 Wireshark Dissector"
[Cme.Futures.iLink3.Sbe.v8.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.iLink3.Sbe.v8.5.Script.Dissector.lua "Chicago Mercantile Exchange 8.5 Wireshark Dissector"
[Eurex.Cash.Eti.T7.v8.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Cash.Eti.T7.v8.1.Script.Dissector.lua "Eurex Exchange 8.1 Wireshark Dissector"
[Eurex.Derivatives.Eti.T7.v8.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eti.T7.v8.1.Script.Dissector.lua "Eurex Exchange 8.1 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v8.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v8.1.Script.Dissector.lua "Eurex Exchange 8.1 Wireshark Dissector"
[Eurex.Cash.Eti.T7.v9.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Cash.Eti.T7.v9.0.Script.Dissector.lua "Eurex Exchange 9.0 Wireshark Dissector"
[Eurex.Derivatives.Eti.T7.v9.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eti.T7.v9.0.Script.Dissector.lua "Eurex Exchange 9.0 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v9.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v9.0.Script.Dissector.lua "Eurex Exchange 9.0 Wireshark Dissector"
[Finra.Orf.Tdds.Dfi.v2.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Finra/Finra.Orf.Tdds.Dfi.v2.0.Script.Dissector.lua "Financial Industry Regulatory Authority 2.0 Wireshark Dissector"
[Finra.Otc.Bbds.Dfi.v2018.1A.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Finra/Finra.Otc.Bbds.Dfi.v2018.1A.Script.Dissector.lua "Financial Industry Regulatory Authority 2018.1A Wireshark Dissector"
[Ice.Futures.Mdf.iMpact.v1.1.34.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Futures.Mdf.iMpact.v1.1.34.Script.Dissector.lua "Intercontinental Exchange 1.1.34 Wireshark Dissector"
[Miax.Options.cTom.Mach.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.cTom.Mach.v1.3.Script.Dissector.lua "Miami International Securities Exchange 1.3 Wireshark Dissector"
[Miax.Options.Tom.Mach.v2.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.Tom.Mach.v2.2.Script.Dissector.lua "Miami International Securities Exchange 2.2 Wireshark Dissector"
[Miax.Options.Tom.Mach.v2.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.Tom.Mach.v2.3.Script.Dissector.lua "Miami International Securities Exchange 2.3 Wireshark Dissector"
[Miax.Pearl.Tom.Mach.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Pearl.Tom.Mach.v1.0.Script.Dissector.lua "Miami International Securities Exchange 1.0 Wireshark Dissector"
[Memx.Equities.MemoirDepthFeed.Sbe.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Memx/Memx.Equities.MemoirDepthFeed.Sbe.v1.1.Script.Dissector.lua "Members Exchange 1.1 Wireshark Dissector"
[Memx.Equities.MemoirLastSale.Sbe.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Memx/Memx.Equities.MemoirLastSale.Sbe.v1.1.Script.Dissector.lua "Members Exchange 1.1 Wireshark Dissector"
[Memx.Equities.MemoirTopOfBook.Sbe.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Memx/Memx.Equities.MemoirTopOfBook.Sbe.v1.1.Script.Dissector.lua "Members Exchange 1.1 Wireshark Dissector"
[Memx.Equities.Memo.Sbe.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Memx/Memx.Equities.Memo.Sbe.v1.1.Script.Dissector.lua "Members Exchange 1.1 Wireshark Dissector"
[Memx.Equities.Memo.Sbe.v1.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Memx/Memx.Equities.Memo.Sbe.v1.2.Script.Dissector.lua "Members Exchange 1.2 Wireshark Dissector"
[Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Wireshark Dissector"
[Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.2 Wireshark Dissector"
[Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.2 Wireshark Dissector"
[Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.3 Wireshark Dissector"
[Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.1 Wireshark Dissector"
[Nasdaq.Ise.OrderFeed.Itch.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Ise.OrderFeed.Itch.v1.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.1 Wireshark Dissector"
[Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.0 Wireshark Dissector"
[Nasdaq.Nom.Bono.Itch.v3.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Nom.Bono.Itch.v3.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 3.2 Wireshark Dissector"
[Nasdaq.Nom.Itto.Itch.v4.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Nom.Itto.Itch.v4.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.0 Wireshark Dissector"
[Nasdaq.Phlx.MarketDepth.Itch.v1.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.MarketDepth.Itch.v1.6.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.6 Wireshark Dissector"
[Nasdaq.Phlx.Orders.Itch.v1.9.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.Orders.Itch.v1.9.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.9 Wireshark Dissector"
[Nasdaq.Phlx.Topo.Itch.v3.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.Topo.Itch.v3.3.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 3.3 Wireshark Dissector"
[Nasdaq.Psx.LastSale.Itch.v2.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.LastSale.Itch.v2.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.1 Wireshark Dissector"
[Nasdaq.Psx.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Wireshark Dissector"
[Nasdaq.Psx.Bbo.Itch.v2.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.Bbo.Itch.v2.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.1 Wireshark Dissector"
[Nasdaq.Psx.Orders.Ouch.v4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.Orders.Ouch.v4.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.2 Wireshark Dissector"
[Nasdaq.Equities.Aggregated.Itch.v2.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.Aggregated.Itch.v2.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.0 Wireshark Dissector"
[Nasdaq.Equities.Level2.Itch.v2.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.Level2.Itch.v2.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.0 Wireshark Dissector"
[Nasdaq.Equities.Noi.Itch.v3.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.Noi.Itch.v3.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 3.0 Wireshark Dissector"
[Nasdaq.Equities.Orders.Ouch.v4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.Orders.Ouch.v4.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.2 Wireshark Dissector"
[Nasdaq.Equities.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Wireshark Dissector"
[Nasdaq.Uqdf.Output.Utp.v1.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Uqdf.Output.Utp.v1.5.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.5 Wireshark Dissector"
[Nasdaq.Utdf.Output.Utp.v1.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Utdf.Output.Utp.v1.5.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.5 Wireshark Dissector"
[Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Script.Dissector.lua "New York Stock Exchange 2.1.b Wireshark Dissector"
[Nyse.Equities.OpenBook.Ultra.v2.1.b.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.OpenBook.Ultra.v2.1.b.Script.Dissector.lua "New York Stock Exchange 2.1.b Wireshark Dissector"
[Nyse.Equities.Amex.IntegratedFeed.Xdp.v2.1.g.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Amex.IntegratedFeed.Xdp.v2.1.g.Script.Dissector.lua "New York Stock Exchange 2.1.g Wireshark Dissector"
[Nyse.Equities.Arca.Bbo.Xdp.v2.4.c.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Arca.Bbo.Xdp.v2.4.c.Script.Dissector.lua "New York Stock Exchange 2.4.c Wireshark Dissector"
[Nyse.Equities.Bbo.Xdp.v2.4.g.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Bbo.Xdp.v2.4.g.Script.Dissector.lua "New York Stock Exchange 2.4.g Wireshark Dissector"
[Nyse.Equities.Bqt.Xdp.v1.7.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Bqt.Xdp.v1.7.a.Script.Dissector.lua "New York Stock Exchange 1.7.a Wireshark Dissector"
[Nyse.Equities.Bqt.Xdp.v2.1.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Bqt.Xdp.v2.1.a.Script.Dissector.lua "New York Stock Exchange 2.1.a Wireshark Dissector"
[Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Script.Dissector.lua "New York Stock Exchange 2.2.a Wireshark Dissector"
[Nyse.Equities.IntegratedFeed.Xdp.v2.1.g.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.IntegratedFeed.Xdp.v2.1.g.Script.Dissector.lua "New York Stock Exchange 2.1.g Wireshark Dissector"
[Nyse.Options.ComplexFeed.Xdp.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Options.ComplexFeed.Xdp.v1.3.a.Script.Dissector.lua "New York Stock Exchange 1.3.a Wireshark Dissector"
[Nyse.Options.DeepFeed.Xdp.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Options.DeepFeed.Xdp.v1.3.a.Script.Dissector.lua "New York Stock Exchange 1.3.a Wireshark Dissector"
[Nyse.Options.TopFeed.Xdp.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Options.TopFeed.Xdp.v1.3.a.Script.Dissector.lua "New York Stock Exchange 1.3.a Wireshark Dissector"
[Otc.Markets.Headers.Ats.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Otc/Otc.Markets.Headers.Ats.v1.0.Script.Dissector.lua "Otc Markets 1.0 Wireshark Dissector"
[Otc.Markets.Multicast.Ats.v4.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Otc/Otc.Markets.Multicast.Ats.v4.3.Script.Dissector.lua "Otc Markets 4.3 Wireshark Dissector"
[Siac.Opra.Recipient.Obi.v4.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Siac/Siac.Opra.Recipient.Obi.v4.0.Script.Dissector.lua "Securities Industry Automation Corporation 4.0 Wireshark Dissector"
[Siac.Cqs.Output.Cta.v1.91.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Siac/Siac.Cqs.Output.Cta.v1.91.Script.Dissector.lua "Securities Industry Automation Corporation 1.91 Wireshark Dissector"
[Siac.Cts.Output.Cta.v1.91.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Siac/Siac.Cts.Output.Cta.v1.91.Script.Dissector.lua "Securities Industry Automation Corporation 1.91 Wireshark Dissector"
