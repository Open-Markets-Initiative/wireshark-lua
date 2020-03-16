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
## Protocols

|Organization | Division | Data | Protocol | Version | Date | Size | Testing|
|--- | --- | --- | --- | --- | --- | --- | ---|
|[Asx][Asx.Securities.T24.Itch.v1.13.Organization] | Securities | T24 | Itch | [1.13][Asx.Securities.T24.Itch.v1.13.Dissector] | 7/15/2014 | 6049 | Untested|
|[Cboe][Cboe.Futures.DepthOfBook.Pitch.v1.1.6.Organization] | Futures | DepthOfBook | Pitch | [1.1.6][Cboe.Futures.DepthOfBook.Pitch.v1.1.6.Dissector] | 4/8/2019 | 3453 | Verified|
|[Cboe][Cboe.Options.MarketDataFeed.Csm.v1.4.2.Organization] | Options | MarketDataFeed | Csm | [1.4.2][Cboe.Options.MarketDataFeed.Csm.v1.4.2.Dissector] | 5/8/2018 | 4205 | Verified|
|[Cboe][Cboe.Options.MarketLevel2.Csm.v1.0.4.Organization] | Options | MarketLevel2 | Csm | [1.0.4][Cboe.Options.MarketLevel2.Csm.v1.0.4.Dissector] | 5/8/2018 | 2939 | Verified|
|[Cboe][Cboe.Options.OpeningAuction.Csm.v1.0.Organization] | Options | OpeningAuction | Csm | [1.0][Cboe.Options.OpeningAuction.Csm.v1.0.Dissector] | 7/18/2018 | 3060 | Verified|
|[Cboe][Cboe.Options.DepthOfBook.Pitch.v2.39.4.Organization] | Options | DepthOfBook | Pitch | [2.39.4][Cboe.Options.DepthOfBook.Pitch.v2.39.4.Dissector] | 8/21/2018 | 3315 | Verified|
|[Cboe][Cboe.Options.Bzx.OrderEntry.Boe.v2.10.Organization] | Options Bzx | OrderEntry | Boe | [2.10][Cboe.Options.Bzx.OrderEntry.Boe.v2.10.Dissector] | 12/3/2019 | 30269 | Beta|
|[Cboe][Cboe.Options.C1.OrderEntry.Boe.v2.10.Organization] | Options C1 | OrderEntry | Boe | [2.10][Cboe.Options.C1.OrderEntry.Boe.v2.10.Dissector] | 12/3/2019 | 46148 | Beta|
|[Cboe][Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Organization] | Options C1 | AuctionFeed | Pitch | [1.1.1][Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Dissector] | 12/6/2018 | 1857 | Verified|
|[Cboe][Cboe.Options.Edgx.OrderEntry.Boe.v2.10.Organization] | Options Edgx | OrderEntry | Boe | [2.10][Cboe.Options.Edgx.OrderEntry.Boe.v2.10.Dissector] | 12/3/2019 | 44998 | Beta|
|[Cboe][Cboe.Options.Edgx.AuctionFeed.Pitch.v1.1.1.Organization] | Options Edgx | AuctionFeed | Pitch | [1.1.1][Cboe.Options.Edgx.AuctionFeed.Pitch.v1.1.1.Dissector] | 12/6/2018 | 1301 | Verified|
|[Cme][Cme.Streamline.Sbe.v9.5.Organization] |  | Streamline | Sbe | [9.5][Cme.Streamline.Sbe.v9.5.Dissector] | 4/4/2018 | 6634 | Untested|
|[Cme][Cme.Streamline.Sbe.v8.5.Organization] |  | Streamline | Sbe | [8.5][Cme.Streamline.Sbe.v8.5.Dissector] | 6/2/2017 | 6484 | Untested|
|[Cme][Cme.Futures.iLink3.Sbe.v8.5.Organization] | Futures | iLink3 | Sbe | [8.5][Cme.Futures.iLink3.Sbe.v8.5.Dissector] | 2/27/2020 | 13481 | Untested|
|[Cme][Cme.Futures.iLink3.Sbe.v8.4.Organization] | Futures | iLink3 | Sbe | [8.4][Cme.Futures.iLink3.Sbe.v8.4.Dissector] | 2/11/2020 | 13435 | Untested|
|[Cme][Cme.Futures.iLink3.Sbe.v8.3.Organization] | Futures | iLink3 | Sbe | [8.3][Cme.Futures.iLink3.Sbe.v8.3.Dissector] | 1/9/2020 | 13354 | Untested|
|[Cme][Cme.Futures.iLink3.Sbe.v8.2.Organization] | Futures | iLink3 | Sbe | [8.2][Cme.Futures.iLink3.Sbe.v8.2.Dissector] | 11/5/2019 | 13359 | Verified|
|[Cme][Cme.Futures.Mdp3.Sbe.v1.9.Organization] | Futures | Mdp3 | Sbe | [1.9][Cme.Futures.Mdp3.Sbe.v1.9.Dissector] | 3/8/2018 | 9426 | Verified|
|[Cme][Cme.Futures.Mdp3.Sbe.v1.8.Organization] | Futures | Mdp3 | Sbe | [1.8][Cme.Futures.Mdp3.Sbe.v1.8.Dissector] | 7/1/2016 | 8171 | Verified|
|[Cme][Cme.Futures.Mdp3.Sbe.v1.6.Organization] | Futures | Mdp3 | Sbe | [1.6][Cme.Futures.Mdp3.Sbe.v1.6.Dissector] | 1/9/2016 | 7266 | Verified|
|[Cme][Cme.Futures.Mdp3.Sbe.v1.5.Organization] | Futures | Mdp3 | Sbe | [1.5][Cme.Futures.Mdp3.Sbe.v1.5.Dissector] | 8/6/2014 | 7251 | Verified|
|[Cme][Cme.Futures.Mdp3.Sbe.v1.10.Organization] | Futures | Mdp3 | Sbe | [1.10][Cme.Futures.Mdp3.Sbe.v1.10.Dissector] | 7/26/2019 | 9893 | Untested|
|[Eurex][Eurex.Derivatives.Eobi.T7.v8.0.Organization] | Derivatives | Eobi | T7 | [8.0][Eurex.Derivatives.Eobi.T7.v8.0.Dissector] | 9/23/2019 | 5064 | Untested|
|[Eurex][Eurex.Derivatives.Eobi.T7.v7.1.Organization] | Derivatives | Eobi | T7 | [7.1][Eurex.Derivatives.Eobi.T7.v7.1.Dissector] | 3/14/2019 | 4567 | Untested|
|[Eurex][Eurex.Derivatives.Eobi.T7.v7.0.Organization] | Derivatives | Eobi | T7 | [7.0][Eurex.Derivatives.Eobi.T7.v7.0.Dissector] | 8/20/2018 | 4440 | Untested|
|[Eurex][Eurex.Derivatives.Eobi.T7.v6.1.Organization] | Derivatives | Eobi | T7 | [6.1][Eurex.Derivatives.Eobi.T7.v6.1.Dissector] | 3/20/2018 | 4297 | Untested|
|[Eurex][Eurex.Derivatives.Eobi.T7.v6.0.Organization] | Derivatives | Eobi | T7 | [6.0][Eurex.Derivatives.Eobi.T7.v6.0.Dissector] | 10/23/2017 | 4294 | Verified|
|[Eurex][Eurex.Derivatives.Eobi.T7.v5.0.Organization] | Derivatives | Eobi | T7 | [5.0][Eurex.Derivatives.Eobi.T7.v5.0.Dissector] | 6/9/2017 | 4164 | Untested|
|[Eurex][Eurex.Derivatives.Eobi.T7.v4.0.Organization] | Derivatives | Eobi | T7 | [4.0][Eurex.Derivatives.Eobi.T7.v4.0.Dissector] | 11/11/2016 | 4161 | Untested|
|[Eurex][Eurex.Derivatives.Eobi.T7.v3.0.Organization] | Derivatives | Eobi | T7 | [3.0][Eurex.Derivatives.Eobi.T7.v3.0.Dissector] | 8/3/2015 | 3938 | Verified|
|[Eurex][Eurex.Derivatives.Eobi.T7.v2.5.Organization] | Derivatives | Eobi | T7 | [2.5][Eurex.Derivatives.Eobi.T7.v2.5.Dissector] | 11/7/2014 | 3917 | Untested|
|[Ice][Ice.Futures.Mdf.iMpact.v1.1.34.Organization] | Futures | Mdf | iMpact | [1.1.34][Ice.Futures.Mdf.iMpact.v1.1.34.Dissector] | 9/4/2018 | 10214 | Verified|
|[Ice][Ice.Futures.Mdf.iMpact.v1.1.33.Organization] | Futures | Mdf | iMpact | [1.1.33][Ice.Futures.Mdf.iMpact.v1.1.33.Dissector] | 8/6/2018 | 9971 | Verified|
|[Ice][Ice.Futures.Mdf.iMpact.v1.1.24.Organization] | Futures | Mdf | iMpact | [1.1.24][Ice.Futures.Mdf.iMpact.v1.1.24.Dissector] | 3/30/2016 | 9047 | Verified|
|[Miax][Miax.Options.cTom.Mach.v1.3.Organization] | Options | cTom | Mach | [1.3][Miax.Options.cTom.Mach.v1.3.Dissector] | 3/16/2018 | 3073 | Untested|
|[Miax][Miax.Options.cTom.Mach.v1.1.Organization] | Options | cTom | Mach | [1.1][Miax.Options.cTom.Mach.v1.1.Dissector] | 7/15/2016 | 3061 | Verified|
|[Miax][Miax.Options.Tom.Mach.v2.3.Organization] | Options | Tom | Mach | [2.3][Miax.Options.Tom.Mach.v2.3.Dissector] | 6/10/2019 | 2955 | Untested|
|[Miax][Miax.Options.Tom.Mach.v2.2.Organization] | Options | Tom | Mach | [2.2][Miax.Options.Tom.Mach.v2.2.Dissector] | 3/16/2018 | 2895 | Untested|
|[Miax][Miax.Options.Tom.Mach.v1.9.Organization] | Options | Tom | Mach | [1.9][Miax.Options.Tom.Mach.v1.9.Dissector] | 1/15/2016 | 2801 | Verified|
|[Miax][Miax.Pearl.Tom.Mach.v1.0.Organization] | Pearl | Tom | Mach | [1.0][Miax.Pearl.Tom.Mach.v1.0.Dissector] | 2/27/2017 | 2876 | Untested|
|[Nasdaq][Nasdaq.Equities.Orders.Ouch.v4.2.Organization] |  Equities | Orders | Ouch | [4.2][Nasdaq.Equities.Orders.Ouch.v4.2.Dissector] | 7/8/2019 | 3215 | Untested|
|[Nasdaq][Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Organization] | Bx Equities | TotalView | Itch | [5.0][Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Dissector] | 5/23/2018 | 3739 | Untested|
|[Nasdaq][Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Organization] | Bx Equities | Orders | Ouch | [4.2][Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Dissector] | 7/8/2019 | 3170 | Untested|
|[Nasdaq][Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Organization] | Bx Options | DepthOfMarket | Itch | [1.3][Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Dissector] | 11/2/2017 | 3655 | Untested|
|[Nasdaq][Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Organization] | Bx Options | TopOfMarket | Itch | [1.2][Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Dissector] | 11/2/2017 | 2319 | Untested|
|[Nasdaq][Nasdaq.Equities.Aggregated.Itch.v2.0.Organization] | Equities | Aggregated | Itch | [2.0][Nasdaq.Equities.Aggregated.Itch.v2.0.Dissector] | 9/12/2017 | 3096 | Untested|
|[Nasdaq][Nasdaq.Equities.Level2.Itch.v2.0.Organization] | Equities | Level2 | Itch | [2.0][Nasdaq.Equities.Level2.Itch.v2.0.Dissector] | 5/3/2018 | 2690 | Untested|
|[Nasdaq][Nasdaq.Equities.Noi.Itch.v3.0.Organization] | Equities | Noi | Itch | [3.0][Nasdaq.Equities.Noi.Itch.v3.0.Dissector] | 9/12/2017 | 2012 | Untested|
|[Nasdaq][Nasdaq.Equities.TotalView.Itch.v5.0.Organization] | Equities | TotalView | Itch | [5.0][Nasdaq.Equities.TotalView.Itch.v5.0.Dissector] | 9/12/2017 | 4083 | Untested|
|[Nasdaq][Nasdaq.Equities.TotalView.Itch.v4.1.Organization] | Equities | TotalView | Itch | [4.1][Nasdaq.Equities.TotalView.Itch.v4.1.Dissector] | 6/12/2014 | 2640 | Untested|
|[Nasdaq][Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Organization] | Ise | OrderComboFeed | Itch | [1.1][Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Dissector] | 6/13/2017 | 2119 | Verified|
|[Nasdaq][Nasdaq.Ise.OrderFeed.Itch.v1.1.Organization] | Ise | OrderFeed | Itch | [1.1][Nasdaq.Ise.OrderFeed.Itch.v1.1.Dissector] | 8/23/2017 | 2202 | Untested|
|[Nasdaq][Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Organization] | Ise | TopComboQuoteFeed | Itch | [1.0][Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Dissector] | 8/23/2017 | 2462 | Verified|
|[Nasdaq][Nasdaq.Nom.Bono.Itch.v3.2.Organization] | Nom | Bono | Itch | [3.2][Nasdaq.Nom.Bono.Itch.v3.2.Dissector] | 11/2/2017 | 2326 | Untested|
|[Nasdaq][Nasdaq.Nom.Itto.Itch.v4.0.Organization] | Nom | Itto | Itch | [4.0][Nasdaq.Nom.Itto.Itch.v4.0.Dissector] | 2/8/2018 | 3505 | Untested|
|[Nasdaq][Nasdaq.Phlx.MarketDepth.Itch.v1.6.Organization] | Phlx | MarketDepth | Itch | [1.6][Nasdaq.Phlx.MarketDepth.Itch.v1.6.Dissector] | 3/8/2018 | 3910 | Untested|
|[Nasdaq][Nasdaq.Phlx.MarketDepth.Itch.v1.5.Organization] | Phlx | MarketDepth | Itch | [1.5][Nasdaq.Phlx.MarketDepth.Itch.v1.5.Dissector] | 9/30/2015 | 3910 | Untested|
|[Nasdaq][Nasdaq.Phlx.Orders.Itch.v1.9.Organization] | Phlx | Orders | Itch | [1.9][Nasdaq.Phlx.Orders.Itch.v1.9.Dissector] | 8/10/2015 | 2796 | Untested|
|[Nasdaq][Nasdaq.Phlx.Topo.Itch.v3.3.Organization] | Phlx | Topo | Itch | [3.3][Nasdaq.Phlx.Topo.Itch.v3.3.Dissector] | 11/2/2017 | 2335 | Untested|
|[Nasdaq][Nasdaq.Psx.Bbo.Itch.v2.1.Organization] | Psx | Bbo | Itch | [2.1][Nasdaq.Psx.Bbo.Itch.v2.1.Dissector] | 5/3/2018 | 2085 | Untested|
|[Nasdaq][Nasdaq.Psx.LastSale.Itch.v2.1.Organization] | Psx | LastSale | Itch | [2.1][Nasdaq.Psx.LastSale.Itch.v2.1.Dissector] | 5/3/2018 | 3215 | Untested|
|[Nasdaq][Nasdaq.Psx.TotalView.Itch.v5.0.Organization] | Psx | TotalView | Itch | [5.0][Nasdaq.Psx.TotalView.Itch.v5.0.Dissector] | 5/3/2018 | 3731 | Untested|
|[Nasdaq][Nasdaq.Psx.Orders.Ouch.v4.2.Organization] | Psx | Orders | Ouch | [4.2][Nasdaq.Psx.Orders.Ouch.v4.2.Dissector] | 7/8/2019 | 3100 | Untested|
|[Nyse][Nyse.Equities.OpenBook.Ultra.v2.1.b.Organization] |  Equities | OpenBook | Ultra | [2.1.b][Nyse.Equities.OpenBook.Ultra.v2.1.b.Dissector] | 3/9/2018 | 1471 | Verified|
|[Nyse][Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Organization] | Amex Equities | OpenBook | Ultra | [2.1.b][Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Dissector] | 3/9/2018 | 1477 | Verified|
|[Nyse][Nyse.Equities.Bbo.Xdp.v2.4.g.Organization] | Equities | Bbo | Xdp | [2.4.g][Nyse.Equities.Bbo.Xdp.v2.4.g.Dissector] | 1/29/2018 | 3042 | Verified|
|[Nyse][Nyse.Equities.Bqt.Xdp.v2.1.a.Organization] | Equities | Bqt | Xdp | [2.1.a][Nyse.Equities.Bqt.Xdp.v2.1.a.Dissector] | 4/4/2018 | 4516 | Untested|
|[Nyse][Nyse.Equities.Bqt.Xdp.v1.7.a.Organization] | Equities | Bqt | Xdp | [1.7.a][Nyse.Equities.Bqt.Xdp.v1.7.a.Dissector] | 7/24/2017 | 4425 | Verified|
|[Nyse][Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Organization] | Equities | ImbalancesFeed | Xdp | [2.2.a][Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Dissector] | 3/8/2019 | 2990 | Verified|
|[Nyse][Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.Organization] | Equities | ImbalancesFeed | Xdp | [2.1.f][Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.Dissector] | 2/1/2018 | 2895 | Verified|
|[Nyse][Nyse.Equities.IntegratedFeed.Xdp.v2.1.g.Organization] | Equities | IntegratedFeed | Xdp | [2.1.g][Nyse.Equities.IntegratedFeed.Xdp.v2.1.g.Dissector] | 1/29/2018 | 4842 | Verified|
|[Nyse][Nyse.Equities.Amex.IntegratedFeed.Xdp.v2.1.g.Organization] | Equities Amex | IntegratedFeed | Xdp | [2.1.g][Nyse.Equities.Amex.IntegratedFeed.Xdp.v2.1.g.Dissector] | 1/29/2018 | 4842 | Verified|
|[Nyse][Nyse.Equities.Arca.Bbo.Xdp.v2.4.c.Organization] | Equities Arca | Bbo | Xdp | [2.4.c][Nyse.Equities.Arca.Bbo.Xdp.v2.4.c.Dissector] | 7/13/2016 | 3047 | Verified|
|[Nyse][Nyse.Options.ComplexFeed.Xdp.v1.3.a.Organization] | Options | ComplexFeed | Xdp | [1.3.a][Nyse.Options.ComplexFeed.Xdp.v1.3.a.Dissector] | 2/28/2018 | 2349 | Verified|
|[Nyse][Nyse.Options.DeepFeed.Xdp.v1.3.a.Organization] | Options | DeepFeed | Xdp | [1.3.a][Nyse.Options.DeepFeed.Xdp.v1.3.a.Dissector] | 2/28/2018 | 2651 | Untested|
|[Nyse][Nyse.Options.TopFeed.Xdp.v1.3.a.Organization] | Options | TopFeed | Xdp | [1.3.a][Nyse.Options.TopFeed.Xdp.v1.3.a.Dissector] | 2/28/2018 | 3692 | Untested|
|[Siac][Siac.Cqs.Output.Cta.v1.91.Organization] | Cqs | Output | Cta | [1.91][Siac.Cqs.Output.Cta.v1.91.Dissector] | 1/2/2020 | 4603 | Verified|
|[Siac][Siac.Opra.Recipient.Obi.v4.0.Organization] | Opra | Recipient | Obi | [4.0][Siac.Opra.Recipient.Obi.v4.0.Dissector] | 1/17/2020 | 2927 | Untested|

## Development

Updates are greatly appreciated; however, this entire repository is source generated...including the words you are reading right now. If you wish to suggest script updates, the recommended process is to create an issue with changes and explanation.  Time permitting, we will update the models and regenerate.

|Protocol Count | Generated Lines|
|--- | ---|
|78 | 460,167|

Note: Our dissector model is still under rapid development.

## Testing

Please report any dissection errors as issues.  Include a small note on the protocol and version, and a minimal capture demonstrating the problem. Also consider including a link or pdf specification documenting the correct behavior.

Production packet captures are required for protocol verification.  If your organization has the rights to packet captures, and you wish to make the world a better place, please post captures to this project. [Untested Protocols](https://github.com/Open-Markets-Initiative/wireshark-lua/wiki/Data "Unverified Protocol Data List")
## Open Markets Initiative

The Open Markets Initiative (Omi) is a group of technologists dedicated to enhancing the stability of electronic financial markets using modern development methods.

For full list of OMI projects, rules and regulations: [Omi Directory](https://github.com/Open-Markets-Initiative/Directory "Open Markets Initiative Directory")

## Disclaimer

Any similarities between existing people, places and/or protocols is purely incidental.

Enjoy.

[Asx.Securities.T24.Itch.v1.13.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Asx "Australian Securities Exchange"
[Asx.Securities.T24.Itch.v1.13.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Asx/Asx.Securities.T24.Itch.v1.13.Script.Dissector.lua "Australian Securities Exchange 1.13 Wireshark Dissector"
[Cboe.Futures.DepthOfBook.Pitch.v1.1.6.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Futures.DepthOfBook.Pitch.v1.1.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Futures.DepthOfBook.Pitch.v1.1.6.Script.Dissector.lua "Chicago Board Options Exchange 1.1.6 Wireshark Dissector"
[Cboe.Options.Bzx.OrderEntry.Boe.v2.10.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Options.Bzx.OrderEntry.Boe.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.Bzx.OrderEntry.Boe.v2.10.Script.Dissector.lua "Chicago Board Options Exchange 2.10 Wireshark Dissector"
[Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Script.Dissector.lua "Chicago Board Options Exchange 1.1.1 Wireshark Dissector"
[Cboe.Options.C1.OrderEntry.Boe.v2.10.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Options.C1.OrderEntry.Boe.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.C1.OrderEntry.Boe.v2.10.Script.Dissector.lua "Chicago Board Options Exchange 2.10 Wireshark Dissector"
[Cboe.Options.Edgx.AuctionFeed.Pitch.v1.1.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Options.Edgx.AuctionFeed.Pitch.v1.1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.Edgx.AuctionFeed.Pitch.v1.1.1.Script.Dissector.lua "Chicago Board Options Exchange 1.1.1 Wireshark Dissector"
[Cboe.Options.Edgx.OrderEntry.Boe.v2.10.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Options.Edgx.OrderEntry.Boe.v2.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.Edgx.OrderEntry.Boe.v2.10.Script.Dissector.lua "Chicago Board Options Exchange 2.10 Wireshark Dissector"
[Cboe.Options.DepthOfBook.Pitch.v2.39.4.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Options.DepthOfBook.Pitch.v2.39.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.DepthOfBook.Pitch.v2.39.4.Script.Dissector.lua "Chicago Board Options Exchange 2.39.4 Wireshark Dissector"
[Cboe.Options.MarketDataFeed.Csm.v1.4.2.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Options.MarketDataFeed.Csm.v1.4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.MarketDataFeed.Csm.v1.4.2.Script.Dissector.lua "Chicago Board Options Exchange 1.4.2 Wireshark Dissector"
[Cboe.Options.MarketLevel2.Csm.v1.0.4.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Options.MarketLevel2.Csm.v1.0.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.MarketLevel2.Csm.v1.0.4.Script.Dissector.lua "Chicago Board Options Exchange 1.0.4 Wireshark Dissector"
[Cboe.Options.OpeningAuction.Csm.v1.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange"
[Cboe.Options.OpeningAuction.Csm.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.OpeningAuction.Csm.v1.0.Script.Dissector.lua "Chicago Board Options Exchange 1.0 Wireshark Dissector"
[Cme.Futures.Mdp3.Sbe.v1.5.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Futures.Mdp3.Sbe.v1.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.Mdp3.Sbe.v1.5.Script.Dissector.lua "Chicago Mercantile Exchange 1.5 Wireshark Dissector"
[Cme.Futures.Mdp3.Sbe.v1.6.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Futures.Mdp3.Sbe.v1.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.Mdp3.Sbe.v1.6.Script.Dissector.lua "Chicago Mercantile Exchange 1.6 Wireshark Dissector"
[Cme.Futures.Mdp3.Sbe.v1.8.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Futures.Mdp3.Sbe.v1.8.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.Mdp3.Sbe.v1.8.Script.Dissector.lua "Chicago Mercantile Exchange 1.8 Wireshark Dissector"
[Cme.Futures.Mdp3.Sbe.v1.9.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Futures.Mdp3.Sbe.v1.9.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.Mdp3.Sbe.v1.9.Script.Dissector.lua "Chicago Mercantile Exchange 1.9 Wireshark Dissector"
[Cme.Futures.Mdp3.Sbe.v1.10.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Futures.Mdp3.Sbe.v1.10.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.Mdp3.Sbe.v1.10.Script.Dissector.lua "Chicago Mercantile Exchange 1.10 Wireshark Dissector"
[Cme.Streamline.Sbe.v8.5.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Streamline.Sbe.v8.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Streamline.Sbe.v8.5.Script.Dissector.lua "Chicago Mercantile Exchange 8.5 Wireshark Dissector"
[Cme.Streamline.Sbe.v9.5.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Streamline.Sbe.v9.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Streamline.Sbe.v9.5.Script.Dissector.lua "Chicago Mercantile Exchange 9.5 Wireshark Dissector"
[Cme.Futures.iLink3.Sbe.v8.2.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Futures.iLink3.Sbe.v8.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.iLink3.Sbe.v8.2.Script.Dissector.lua "Chicago Mercantile Exchange 8.2 Wireshark Dissector"
[Cme.Futures.iLink3.Sbe.v8.3.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Futures.iLink3.Sbe.v8.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.iLink3.Sbe.v8.3.Script.Dissector.lua "Chicago Mercantile Exchange 8.3 Wireshark Dissector"
[Cme.Futures.iLink3.Sbe.v8.4.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Futures.iLink3.Sbe.v8.4.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.iLink3.Sbe.v8.4.Script.Dissector.lua "Chicago Mercantile Exchange 8.4 Wireshark Dissector"
[Cme.Futures.iLink3.Sbe.v8.5.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange"
[Cme.Futures.iLink3.Sbe.v8.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Futures.iLink3.Sbe.v8.5.Script.Dissector.lua "Chicago Mercantile Exchange 8.5 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v2.5.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Eurex.Derivatives.Eobi.T7.v2.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v2.5.Script.Dissector.lua "Eurex Exchange 2.5 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v3.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Eurex.Derivatives.Eobi.T7.v3.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v3.0.Script.Dissector.lua "Eurex Exchange 3.0 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v4.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Eurex.Derivatives.Eobi.T7.v4.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v4.0.Script.Dissector.lua "Eurex Exchange 4.0 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v5.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Eurex.Derivatives.Eobi.T7.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v5.0.Script.Dissector.lua "Eurex Exchange 5.0 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v6.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Eurex.Derivatives.Eobi.T7.v6.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v6.0.Script.Dissector.lua "Eurex Exchange 6.0 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v6.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Eurex.Derivatives.Eobi.T7.v6.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v6.1.Script.Dissector.lua "Eurex Exchange 6.1 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v7.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Eurex.Derivatives.Eobi.T7.v7.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v7.0.Script.Dissector.lua "Eurex Exchange 7.0 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v7.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Eurex.Derivatives.Eobi.T7.v7.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v7.1.Script.Dissector.lua "Eurex Exchange 7.1 Wireshark Dissector"
[Eurex.Derivatives.Eobi.T7.v8.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange"
[Eurex.Derivatives.Eobi.T7.v8.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Derivatives.Eobi.T7.v8.0.Script.Dissector.lua "Eurex Exchange 8.0 Wireshark Dissector"
[Ice.Futures.Mdf.iMpact.v1.1.24.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange"
[Ice.Futures.Mdf.iMpact.v1.1.24.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Futures.Mdf.iMpact.v1.1.24.Script.Dissector.lua "Intercontinental Exchange 1.1.24 Wireshark Dissector"
[Ice.Futures.Mdf.iMpact.v1.1.33.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange"
[Ice.Futures.Mdf.iMpact.v1.1.33.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Futures.Mdf.iMpact.v1.1.33.Script.Dissector.lua "Intercontinental Exchange 1.1.33 Wireshark Dissector"
[Ice.Futures.Mdf.iMpact.v1.1.34.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange"
[Ice.Futures.Mdf.iMpact.v1.1.34.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Futures.Mdf.iMpact.v1.1.34.Script.Dissector.lua "Intercontinental Exchange 1.1.34 Wireshark Dissector"
[Miax.Options.cTom.Mach.v1.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange"
[Miax.Options.cTom.Mach.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.cTom.Mach.v1.1.Script.Dissector.lua "Miami International Securities Exchange 1.1 Wireshark Dissector"
[Miax.Options.cTom.Mach.v1.3.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange"
[Miax.Options.cTom.Mach.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.cTom.Mach.v1.3.Script.Dissector.lua "Miami International Securities Exchange 1.3 Wireshark Dissector"
[Miax.Options.Tom.Mach.v1.9.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange"
[Miax.Options.Tom.Mach.v1.9.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.Tom.Mach.v1.9.Script.Dissector.lua "Miami International Securities Exchange 1.9 Wireshark Dissector"
[Miax.Options.Tom.Mach.v2.2.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange"
[Miax.Options.Tom.Mach.v2.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.Tom.Mach.v2.2.Script.Dissector.lua "Miami International Securities Exchange 2.2 Wireshark Dissector"
[Miax.Options.Tom.Mach.v2.3.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange"
[Miax.Options.Tom.Mach.v2.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.Tom.Mach.v2.3.Script.Dissector.lua "Miami International Securities Exchange 2.3 Wireshark Dissector"
[Miax.Pearl.Tom.Mach.v1.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange"
[Miax.Pearl.Tom.Mach.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Pearl.Tom.Mach.v1.0.Script.Dissector.lua "Miami International Securities Exchange 1.0 Wireshark Dissector"
[Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Wireshark Dissector"
[Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Equities.Orders.Ouch.v4.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.2 Wireshark Dissector"
[Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.2 Wireshark Dissector"
[Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.3 Wireshark Dissector"
[Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.1 Wireshark Dissector"
[Nasdaq.Ise.OrderFeed.Itch.v1.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Ise.OrderFeed.Itch.v1.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Ise.OrderFeed.Itch.v1.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.1 Wireshark Dissector"
[Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.0 Wireshark Dissector"
[Nasdaq.Nom.Bono.Itch.v3.2.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Nom.Bono.Itch.v3.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Nom.Bono.Itch.v3.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 3.2 Wireshark Dissector"
[Nasdaq.Nom.Itto.Itch.v4.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Nom.Itto.Itch.v4.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Nom.Itto.Itch.v4.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.0 Wireshark Dissector"
[Nasdaq.Phlx.MarketDepth.Itch.v1.5.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Phlx.MarketDepth.Itch.v1.5.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.MarketDepth.Itch.v1.5.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.5 Wireshark Dissector"
[Nasdaq.Phlx.MarketDepth.Itch.v1.6.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Phlx.MarketDepth.Itch.v1.6.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.MarketDepth.Itch.v1.6.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.6 Wireshark Dissector"
[Nasdaq.Phlx.Orders.Itch.v1.9.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Phlx.Orders.Itch.v1.9.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.Orders.Itch.v1.9.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.9 Wireshark Dissector"
[Nasdaq.Phlx.Topo.Itch.v3.3.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Phlx.Topo.Itch.v3.3.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.Topo.Itch.v3.3.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 3.3 Wireshark Dissector"
[Nasdaq.Psx.LastSale.Itch.v2.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Psx.LastSale.Itch.v2.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.LastSale.Itch.v2.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.1 Wireshark Dissector"
[Nasdaq.Psx.TotalView.Itch.v5.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Psx.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Wireshark Dissector"
[Nasdaq.Psx.Bbo.Itch.v2.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Psx.Bbo.Itch.v2.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.Bbo.Itch.v2.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.1 Wireshark Dissector"
[Nasdaq.Psx.Orders.Ouch.v4.2.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Psx.Orders.Ouch.v4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.Orders.Ouch.v4.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.2 Wireshark Dissector"
[Nasdaq.Equities.Aggregated.Itch.v2.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Equities.Aggregated.Itch.v2.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.Aggregated.Itch.v2.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.0 Wireshark Dissector"
[Nasdaq.Equities.Level2.Itch.v2.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Equities.Level2.Itch.v2.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.Level2.Itch.v2.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.0 Wireshark Dissector"
[Nasdaq.Equities.Noi.Itch.v3.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Equities.Noi.Itch.v3.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.Noi.Itch.v3.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 3.0 Wireshark Dissector"
[Nasdaq.Equities.Orders.Ouch.v4.2.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Equities.Orders.Ouch.v4.2.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.Orders.Ouch.v4.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.2 Wireshark Dissector"
[Nasdaq.Equities.TotalView.Itch.v4.1.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Equities.TotalView.Itch.v4.1.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.TotalView.Itch.v4.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.1 Wireshark Dissector"
[Nasdaq.Equities.TotalView.Itch.v5.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nasdaq.Equities.TotalView.Itch.v5.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Wireshark Dissector"
[Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Script.Dissector.lua "New York Stock Exchange 2.1.b Wireshark Dissector"
[Nyse.Equities.OpenBook.Ultra.v2.1.b.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Equities.OpenBook.Ultra.v2.1.b.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.OpenBook.Ultra.v2.1.b.Script.Dissector.lua "New York Stock Exchange 2.1.b Wireshark Dissector"
[Nyse.Equities.Amex.IntegratedFeed.Xdp.v2.1.g.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Equities.Amex.IntegratedFeed.Xdp.v2.1.g.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Amex.IntegratedFeed.Xdp.v2.1.g.Script.Dissector.lua "New York Stock Exchange 2.1.g Wireshark Dissector"
[Nyse.Equities.Arca.Bbo.Xdp.v2.4.c.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Equities.Arca.Bbo.Xdp.v2.4.c.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Arca.Bbo.Xdp.v2.4.c.Script.Dissector.lua "New York Stock Exchange 2.4.c Wireshark Dissector"
[Nyse.Equities.Bbo.Xdp.v2.4.g.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Equities.Bbo.Xdp.v2.4.g.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Bbo.Xdp.v2.4.g.Script.Dissector.lua "New York Stock Exchange 2.4.g Wireshark Dissector"
[Nyse.Equities.Bqt.Xdp.v1.7.a.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Equities.Bqt.Xdp.v1.7.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Bqt.Xdp.v1.7.a.Script.Dissector.lua "New York Stock Exchange 1.7.a Wireshark Dissector"
[Nyse.Equities.Bqt.Xdp.v2.1.a.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Equities.Bqt.Xdp.v2.1.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Bqt.Xdp.v2.1.a.Script.Dissector.lua "New York Stock Exchange 2.1.a Wireshark Dissector"
[Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.Script.Dissector.lua "New York Stock Exchange 2.1.f Wireshark Dissector"
[Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.ImbalancesFeed.Xdp.v2.2.a.Script.Dissector.lua "New York Stock Exchange 2.2.a Wireshark Dissector"
[Nyse.Equities.IntegratedFeed.Xdp.v2.1.g.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Equities.IntegratedFeed.Xdp.v2.1.g.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.IntegratedFeed.Xdp.v2.1.g.Script.Dissector.lua "New York Stock Exchange 2.1.g Wireshark Dissector"
[Nyse.Options.ComplexFeed.Xdp.v1.3.a.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Options.ComplexFeed.Xdp.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Options.ComplexFeed.Xdp.v1.3.a.Script.Dissector.lua "New York Stock Exchange 1.3.a Wireshark Dissector"
[Nyse.Options.DeepFeed.Xdp.v1.3.a.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Options.DeepFeed.Xdp.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Options.DeepFeed.Xdp.v1.3.a.Script.Dissector.lua "New York Stock Exchange 1.3.a Wireshark Dissector"
[Nyse.Options.TopFeed.Xdp.v1.3.a.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange"
[Nyse.Options.TopFeed.Xdp.v1.3.a.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Options.TopFeed.Xdp.v1.3.a.Script.Dissector.lua "New York Stock Exchange 1.3.a Wireshark Dissector"
[Siac.Opra.Recipient.Obi.v4.0.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Siac "Securities Industry Automation Corporation"
[Siac.Opra.Recipient.Obi.v4.0.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Siac/Siac.Opra.Recipient.Obi.v4.0.Script.Dissector.lua "Securities Industry Automation Corporation 4.0 Wireshark Dissector"
[Siac.Cqs.Output.Cta.v1.91.Organization]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Siac "Securities Industry Automation Corporation"
[Siac.Cqs.Output.Cta.v1.91.Dissector]: https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Siac/Siac.Cqs.Output.Cta.v1.91.Script.Dissector.lua "Securities Industry Automation Corporation 1.91 Wireshark Dissector"
