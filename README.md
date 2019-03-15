<p align = "left">
<a href="https://travis-ci.org/Open-Markets-Initiative/wireshark-lua"><img src = "https://img.shields.io/travis/Open-Markets-Initiative/wireshark-lua.svg?style=flat-square" /></a>
</p>

## Omi Lua Wireshark Dissectors

Lua wireshark dissector scripts provide an easily customized cross platform dissection solution for viewing common binary exchange protocols.

For more information on lua dissectors: [How Lua fits into Wireshark](https://wiki.wireshark.org/Lua "Wireshark Lua Documentation")

## Usage

To dissect packets, place lua script(s) in the wireshark plugins directory.

The standard path on a windows install:

```
C:\Program Files\Wireshark\plugins\[version]\
```
The standard path on a linux install:

```
//usr/share/wireshark/plugins
```
For configuration information: [Wireshark Plugin Configuration](https://www.wireshark.org/docs/wsug_html_chunked/ChPluginFolders.html "Wireshark Configuration Documentation")

Note: Some packets contain enough information to programmatically determine the correct protocol specification and/or version at runtime.  *Many do not.*  If you add multiple dissectors to your plugins folder, wireshark will dissect each "conversation" based on the first matching protocol.  In these cases, please manually select protocol dissector using Analyze | Decode As….

For decoding information: [Wireshark Protocol Decoding](https://www.wireshark.org/docs/wsug_html_chunked/ChCustProtocolDissectionSection.html "Wireshark Protocol Selection Documentation")
## Protocols

|Organization | Division | Data | Protocol | Version | Date | Size | Testing|
|--- | --- | --- | --- | --- | --- | --- | ---|
|[Asx](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Asx "Australian Securities Exchange Dissectors") | Securities | T24 | Itch | [1.13](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Asx/Asx.Securities.T24.Itch.v1.13.Script.Dissector.lua "Australian Securities Exchange 1.13 Script Dissector") | 7/15/2014 | 5071 | Untested|
|[Cboe](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange Dissectors") | Options | MarketDataFeed | Csm | [1.4.2](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.MarketDataFeed.Csm.v1.4.2.Script.Dissector.lua "Chicago Board Options Exchange 1.4.2 Script Dissector") | 5/8/2018 | 3786 | Verified|
|[Cboe](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange Dissectors") | Options | MarketLevel2 | Csm | [1.0.4](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.MarketLevel2.Csm.v1.0.4.Script.Dissector.lua "Chicago Board Options Exchange 1.0.4 Script Dissector") | 5/8/2018 | 2679 | Verified|
|[Cboe](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange Dissectors") | Options | OpeningAuction | Csm | [1.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.OpeningAuction.Csm.v1.0.Script.Dissector.lua "Chicago Board Options Exchange 1.0 Script Dissector") | 7/18/2018 | 2774 | Verified|
|[Cboe](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange Dissectors") | Options | DepthOfBook | Pitch | [2.39.4](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.DepthOfBook.Pitch.v2.39.4.Script.Dissector.lua "Chicago Board Options Exchange 2.39.4 Script Dissector") | 8/21/2018 | 2780 | Verified|
|[Cboe](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange Dissectors") | Options C1 | AuctionFeed | Pitch | [1.1.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Script.Dissector.lua "Chicago Board Options Exchange 1.1.1 Script Dissector") | 12/6/2018 | 1618 | Verified|
|[Cboe](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange Dissectors") | Options Edgx | AuctionFeed | Pitch | [1.1.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.Edgx.AuctionFeed.Pitch.v1.1.1.Script.Dissector.lua "Chicago Board Options Exchange 1.1.1 Script Dissector") | 12/6/2018 | 1139 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") |  | Mdp3 | Sbe | [9.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Mdp3.Sbe.v9.1.Script.Dissector.lua "Chicago Mercantile Exchange 9.1 Script Dissector") | 3/8/2018 | 8034 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") |  | Mdp3 | Sbe | [8.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Mdp3.Sbe.v8.1.Script.Dissector.lua "Chicago Mercantile Exchange 8.1 Script Dissector") | 7/1/2016 | 7042 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") |  | Mdp3 | Sbe | [6.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Mdp3.Sbe.v6.1.Script.Dissector.lua "Chicago Mercantile Exchange 6.1 Script Dissector") | 1/9/2016 | 6272 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") |  | Mdp3 | Sbe | [5.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Mdp3.Sbe.v5.1.Script.Dissector.lua "Chicago Mercantile Exchange 5.1 Script Dissector") | 8/6/2014 | 6263 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") |  | Streamline | Sbe | [9.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Streamline.Sbe.v9.5.Script.Dissector.lua "Chicago Mercantile Exchange 9.5 Script Dissector") | 4/4/2018 | 5708 | Untested|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") |  | Streamline | Sbe | [8.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Streamline.Sbe.v8.5.Script.Dissector.lua "Chicago Mercantile Exchange 8.5 Script Dissector") | 6/2/2017 | 5570 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") |  | Eobi | T7 | [7.0.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v7.0.0.Script.Dissector.lua "Eurex Exchange 7.0.0 Script Dissector") | 8/20/2018 | 3799 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") |  | Eobi | T7 | [6.1.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v6.1.0.Script.Dissector.lua "Eurex Exchange 6.1.0 Script Dissector") | 3/20/2018 | 3671 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") |  | Eobi | T7 | [6.0.2](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v6.0.2.Script.Dissector.lua "Eurex Exchange 6.0.2 Script Dissector") | 10/23/2017 | 3668 | Verified|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") |  | Eobi | T7 | [5.0.3](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v5.0.3.Script.Dissector.lua "Eurex Exchange 5.0.3 Script Dissector") | 6/9/2017 | 3561 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") |  | Eobi | T7 | [4.0.225](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v4.0.225.Script.Dissector.lua "Eurex Exchange 4.0.225 Script Dissector") | 11/11/2016 | 3558 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") |  | Eobi | T7 | [3.0.71](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v3.0.71.Script.Dissector.lua "Eurex Exchange 3.0.71 Script Dissector") | 8/3/2015 | 3368 | Verified|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") |  | Eobi | T7 | [2.5.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v2.5.5.Script.Dissector.lua "Eurex Exchange 2.5.5 Script Dissector") | 11/7/2014 | 3348 | Untested|
|[Ice](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange Dissectors") | Futures | Mdf | iMpact | [1.1.34](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Futures.Mdf.iMpact.v1.1.34.Script.Dissector.lua "Intercontinental Exchange 1.1.34 Script Dissector") | 9/4/2018 | 8805 | Verified|
|[Ice](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange Dissectors") | Futures | Mdf | iMpact | [1.1.33](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Futures.Mdf.iMpact.v1.1.33.Script.Dissector.lua "Intercontinental Exchange 1.1.33 Script Dissector") | 8/6/2018 | 8600 | Verified|
|[Ice](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange Dissectors") | Futures | Mdf | iMpact | [1.1.24](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Futures.Mdf.iMpact.v1.1.24.Script.Dissector.lua "Intercontinental Exchange 1.1.24 Script Dissector") | 3/30/2016 | 7837 | Verified|
|[Miax](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange Dissectors") | Options | cTom | Mach | [1.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.cTom.Mach.v1.1.Script.Dissector.lua "Miami International Securities Exchange 1.1 Script Dissector") | 7/15/2016 | 2695 | Verified|
|[Miax](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange Dissectors") | Options | Tom | Mach | [1.9](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Options.Tom.Mach.v1.9.Script.Dissector.lua "Miami International Securities Exchange 1.9 Script Dissector") | 1/15/2016 | 2458 | Verified|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Bx Equities | TotalView | Itch | [5.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Equities.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Script Dissector") | 5/23/2018 | 3187 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Bx Options | DepthOfMarket | Itch | [1.3](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.3 Script Dissector") | 11/2/2017 | 3090 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Bx Options | TopOfMarket | Itch | [1.2](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.2 Script Dissector") | 11/2/2017 | 1998 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Equities | TotalView | Itch | [5.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Script Dissector") | 9/12/2017 | 3511 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Equities | TotalView | Itch | [4.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Equities.TotalView.Itch.v4.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.1 Script Dissector") | 6/12/2014 | 2274 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Ise | OrderComboFeed | Itch | [1.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.1 Script Dissector") | 6/13/2017 | 1881 | Verified|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Ise | OrderFeed | Itch | [1.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Ise.OrderFeed.Itch.v1.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.1 Script Dissector") | 8/23/2017 | 1943 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Ise | TopComboQuoteFeed | Itch | [1.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.0 Script Dissector") | 8/23/2017 | 2159 | Verified|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Phlx | MarketDepth | Itch | [1.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.MarketDepth.Itch.v1.5.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.5 Script Dissector") | 9/30/2015 | 3308 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Phlx | Orders | Itch | [1.9](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.Orders.Itch.v1.9.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.9 Script Dissector") | 8/10/2015 | 2393 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Phlx | Topo | Itch | [3.3](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.Topo.Itch.v3.3.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 3.3 Script Dissector") | 11/2/2017 | 2014 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Psx | Bbo | Itch | [2.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.Bbo.Itch.v2.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.1 Script Dissector") | 5/3/2018 | 1829 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Psx | TotalView | Itch | [5.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Script Dissector") | 5/3/2018 | 3181 | Untested|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Equities | Bbo | Xdp | [2.4.g](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Bbo.Xdp.v2.4.g.Script.Dissector.lua "New York Stock Exchange 2.4.g Script Dissector") | 1/29/2018 | 2657 | Verified|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Equities | Bqt | Xdp | [2.1.a](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Bqt.Xdp.v2.1.a.Script.Dissector.lua "New York Stock Exchange 2.1.a Script Dissector") | 4/4/2018 | 3950 | Untested|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Equities | Bqt | Xdp | [1.7.a](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Bqt.Xdp.v1.7.a.Script.Dissector.lua "New York Stock Exchange 1.7.a Script Dissector") | 7/24/2017 | 3857 | Verified|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Equities | ImbalancesFeed | Xdp | [2.1.f](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.Script.Dissector.lua "New York Stock Exchange 2.1.f Script Dissector") | 2/1/2018 | 2512 | Verified|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Equities | IntegratedFeed | Xdp | [2.1.g](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.IntegratedFeed.Xdp.v2.1.g.Script.Dissector.lua "New York Stock Exchange 2.1.g Script Dissector") | 1/29/2018 | 4139 | Verified|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Equities Arca | Bbo | Xdp | [2.4.c](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Equities.Arca.Bbo.Xdp.v2.4.c.Script.Dissector.lua "New York Stock Exchange 2.4.c Script Dissector") | 7/13/2016 | 2660 | Verified|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Options | ComplexFeed | Xdp | [1.3.a](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Options.ComplexFeed.Xdp.v1.3.a.Script.Dissector.lua "New York Stock Exchange 1.3.a Script Dissector") | 2/28/2018 | 1996 | Tested|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Options | DeepFeed | Xdp | [1.3.a](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Options.DeepFeed.Xdp.v1.3.a.Script.Dissector.lua "New York Stock Exchange 1.3.a Script Dissector") | 2/28/2018 | 2259 | Untested|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Options | TopFeed | Xdp | [1.3.a](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Options.TopFeed.Xdp.v1.3.a.Script.Dissector.lua "New York Stock Exchange 1.3.a Script Dissector") | 2/28/2018 | 3130 | Tested|
|[Opra](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Opra "Options Price Reporting Authority Dissectors") | Options | Recipient | Obdi | [2.9](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Opra/Opra.Options.Recipient.Obdi.v2.9.Script.Dissector.lua "Options Price Reporting Authority 2.9 Script Dissector") | 10/24/2018 | 5636 | Untested|

## Development

Updates are greatly appreciated; however, this entire repository is source generated...including the words you are reading right now. Code generation requires a different workflow.  The recommended process is to create an issue with suggested script edits and explanation.  If the changes are applicable to some or all protocols, we will update the model and regenerate.

|Protocol Count | Generated Lines|
|--- | ---|
|48 | 179,668|

Note: Our dissector model is still under rapid development.

## Testing

Please report any dissection errors as issues.  Include a small note on the protocol and version, and a minimal capture demonstrating the problem. Also consider including a link or pdf specification documenting the correct behavior.

Production captures are required for protocol verification.  If your organization has the rights to donate captures, and you wish to make the world a better place, please contact us.

## Open Markets Initiative

The Open Markets Initiative (Omi) is a group of technologists dedicated to enhancing the stability of electronic financial markets using modern development methods.

Please check out our other projects: [Omi Directory](https://github.com/Open-Markets-Initiative/Directory "Open Markets Initiative Repository Directory")

## Disclaimer

Any similarities between existing people, places and/or protocols is purely incidental.

Enjoy.

