## Omi Lua Wireshark Dissectors

Lua wireshark dissector scripts provide an easily customized cross platform dissection solution for viewing common binary exchange protocols. For more information on lua dissectors: [How Lua fits into Wireshark.](https://wiki.wireshark.org/Lua#How_Lua_fits_into_Wireshark "Wireshark's Lua Documentation")

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
For configuration information: [Wireshark Configuration](https://www.wireshark.org/docs/wsug_html_chunked/ChAppFilesConfigurationSection.html "Wireshark Configuration Documentation")

Note: Some packets contain enough information to programmatically determine the correct protocol specification and/or version at runtime.  *Many do not.*  If you add multiple dissectors to your plugins folder, wireshark will dissect each "conversation" based on the first matching protocol.  In these cases, please manually select protocol dissector using Analyze | Decode As….

For decoding information: [Wireshark Protocol Decoding](https://www.wireshark.org/docs/wsug_html_chunked/ChCustProtocolDissectionSection.html "Wireshark Protocol Selection Documentation")
## Protocols

|Organization | Data | Protocol | Version | Date | Size | Testing|
|--- | --- | --- | --- | --- | --- | ---|
|[Asx](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Asx "Australian Securities Exchange Dissectors") | T24 | Itch | [1.13](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Asx/Asx.T24.Itch.v1.13.Script.Dissector.lua "Australian Securities Exchange 1.13 Script Dissector") | 7/15/2014 | 5071 | Verified|
|[Cboe Bats](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange Dissectors") | DepthOfBook | Pitch | [2.39.4](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Bats.DepthOfBook.Pitch.v2.39.4.Script.Dissector.lua "Chicago Board Options Exchange 2.39.4 Script Dissector") | 8/21/2018 | 2730 | Verified|
|[Cboe Options](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange Dissectors") | Smdf | Csm | [1.4.2](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.Smdf.Csm.v1.4.2.Script.Dissector.lua "Chicago Board Options Exchange 1.4.2 Script Dissector") | 5/8/2018 | 3760 | Verified|
|[Cboe Options](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cboe "Chicago Board Options Exchange Dissectors") | Sml2 | Csm | [1.0.4](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cboe/Cboe.Options.Sml2.Csm.v1.0.4.Script.Dissector.lua "Chicago Board Options Exchange 1.0.4 Script Dissector") | 5/8/2018 | 2734 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Mdp3 | Sbe | [9.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Mdp3.Sbe.v9.1.Script.Dissector.lua "Chicago Mercantile Exchange 9.1 Script Dissector") | 3/8/2018 | 8034 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Mdp3 | Sbe | [8.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Mdp3.Sbe.v8.1.Script.Dissector.lua "Chicago Mercantile Exchange 8.1 Script Dissector") | 7/1/2016 | 7042 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Mdp3 | Sbe | [6.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Mdp3.Sbe.v6.1.Script.Dissector.lua "Chicago Mercantile Exchange 6.1 Script Dissector") | 1/9/2016 | 6272 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Mdp3 | Sbe | [5.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Mdp3.Sbe.v5.1.Script.Dissector.lua "Chicago Mercantile Exchange 5.1 Script Dissector") | 8/6/2014 | 6263 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Streamline | Sbe | [9.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Streamline.Sbe.v9.5.Script.Dissector.lua "Chicago Mercantile Exchange 9.5 Script Dissector") | 4/4/2018 | 5708 | Untested|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Streamline | Sbe | [8.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Streamline.Sbe.v8.5.Script.Dissector.lua "Chicago Mercantile Exchange 8.5 Script Dissector") | 6/2/2017 | 5570 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | Eobi | T7 | [7.0.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v7.0.0.Script.Dissector.lua "Eurex Exchange 7.0.0 Script Dissector") | 8/20/2018 | 3799 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | Eobi | T7 | [6.1.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v6.1.0.Script.Dissector.lua "Eurex Exchange 6.1.0 Script Dissector") | 3/20/2018 | 3671 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | Eobi | T7 | [6.0.2](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v6.0.2.Script.Dissector.lua "Eurex Exchange 6.0.2 Script Dissector") | 10/23/2017 | 3668 | Verified|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | Eobi | T7 | [5.0.3](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v5.0.3.Script.Dissector.lua "Eurex Exchange 5.0.3 Script Dissector") | 6/9/2017 | 3561 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | Eobi | T7 | [4.0.225](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v4.0.225.Script.Dissector.lua "Eurex Exchange 4.0.225 Script Dissector") | 11/11/2016 | 3558 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | Eobi | T7 | [3.0.71](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v3.0.71.Script.Dissector.lua "Eurex Exchange 3.0.71 Script Dissector") | 8/3/2015 | 3368 | Verified|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | Eobi | T7 | [2.5.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.Eobi.T7.v2.5.5.Script.Dissector.lua "Eurex Exchange 2.5.5 Script Dissector") | 11/7/2014 | 3348 | Untested|
|[Ice](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange Dissectors") | Mdf | iMpact | [1.1.34](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Mdf.iMpact.v1.1.34.Script.Dissector.lua "Intercontinental Exchange 1.1.34 Script Dissector") | 9/4/2018 | 8805 | Verified|
|[Ice](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange Dissectors") | Mdf | iMpact | [1.1.33](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Mdf.iMpact.v1.1.33.Script.Dissector.lua "Intercontinental Exchange 1.1.33 Script Dissector") | 8/6/2018 | 8600 | Verified|
|[Ice](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange Dissectors") | Mdf | iMpact | [1.1.24](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.Mdf.iMpact.v1.1.24.Script.Dissector.lua "Intercontinental Exchange 1.1.24 Script Dissector") | 3/30/2016 | 7837 | Verified|
|[Miax](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange Dissectors") | cTom | Mach | [1.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.cTom.Mach.v1.1.Script.Dissector.lua "Miami International Securities Exchange 1.1 Script Dissector") | 7/15/2016 | 2695 | Verified|
|[Miax](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange Dissectors") | Tom | Mach | [1.9](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Tom.Mach.v1.9.Script.Dissector.lua "Miami International Securities Exchange 1.9 Script Dissector") | 1/15/2016 | 2278 | Verified|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | TotalView | Itch | [5.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Script Dissector") | 9/12/2017 | 3511 | Untested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | TotalView | Itch | [4.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.TotalView.Itch.v4.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.1 Script Dissector") | 6/12/2014 | 2274 | Untested|
|[Nasdaq Phlx](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | MarketDepth | Itch | [1.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Phlx.MarketDepth.Itch.v1.5.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 1.5 Script Dissector") | 9/30/2015 | 3228 | Untested|
|[Nasdaq Psx](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | Bbo | Itch | [2.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.Bbo.Itch.v2.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 2.1 Script Dissector") | 5/3/2018 | 1829 | Untested|
|[Nasdaq Psx](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | TotalView | Itch | [5.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.Psx.TotalView.Itch.v5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Script Dissector") | 5/3/2018 | 3181 | Untested|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Bqt | Xdp | [2.1.a](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Bqt.Xdp.v2.1.a.Script.Dissector.lua "New York Stock Exchange 2.1.a Script Dissector") | 4/4/2018 | 3950 | Untested|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Bqt | Xdp | [1.7.a](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Bqt.Xdp.v1.7.a.Script.Dissector.lua "New York Stock Exchange 1.7.a Script Dissector") | 7/24/2017 | 3857 | Verified|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | ImbalancesFeed | Xdp | [2.1.f](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.ImbalancesFeed.Xdp.v2.1.f.Script.Dissector.lua "New York Stock Exchange 2.1.f Script Dissector") | 2/1/2018 | 2512 | Verified|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | IntegratedFeed | Xdp | [2.1.g](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.IntegratedFeed.Xdp.v2.1.g.Script.Dissector.lua "New York Stock Exchange 2.1.g Script Dissector") | 1/29/2018 | 4139 | Verified|
|[Nyse Arca](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Bbo | Xdp | [2.4.c](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Arca.Bbo.Xdp.v2.4.c.Script.Dissector.lua "New York Stock Exchange 2.4.c Script Dissector") | 7/13/2016 | 2660 | Verified|
|[Nyse Client](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchange Dissectors") | Bbo | Xdp | [2.4.g](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.Client.Bbo.Xdp.v2.4.g.Script.Dissector.lua "New York Stock Exchange 2.4.g Script Dissector") | 1/29/2018 | 2657 | Verified|

## Development

Updates are greatly appreciated; however, this entire repository is source generated...including the words you are reading right now. Code generation requires a different workflow.  The recommended process is to create an issue with suggested script edits and explanation.  If the changes are applicable to some or all protocols, we will update the model and regenerate.

|Protocol Count | Generated Lines|
|--- | ---|
|33 | 142,170|

Note: Our dissector model is still under rapid development.

## Testing

Please report any dissection errors as issues.  Include a small note on the protocol and version, and a minimal capture demonstrating the problem. Also consider including a link or pdf specification documenting the correct behavior.

Production captures are required for protocol verification.  If your organization has the rights to donate captures, and you wish to make the world a better place, please contact us.

## Open Markets Initiative

The Open Markets Initiative (Omi) is a group of technologists dedicated to enhancing the stability of electronic financial markets using modern development methods.

Please check out our other projects: [Go to Omi Directory](https://github.com/Open-Markets-Initiative/Directory "Open Markets Initiative Repository Directory")

## Disclaimer

Any similarities between existing people, places and/or protocols is purely incidental.

Enjoy.

