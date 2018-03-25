## Lua Wireshark Dissectors

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
For configuration information: [Wireshark Configuration Files.](https://www.wireshark.org/docs/wsug_html_chunked/ChAppFilesConfigurationSection.html "Wireshark Files Configuration Documentation")
## Protocols

|Organization | Protocol | Data | Version | Date | Size | Testing|
|--- | --- | --- | --- | --- | --- | ---|
|[Asx](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Asx "Australian Securities Exchange Dissectors") | T24 | Itch | [1.13](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Asx/Asx.T24.Itch.1.13.Script.Dissector.lua "Australian Securities Exchange 1.13 Script Dissector") | 7/15/2014 | 4670 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Sbe | Mdp3 | [8.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Sbe.Mdp3.8.1.Script.Dissector.lua "Chicago Mercantile Exchange 8.1 Script Dissector") | 7/1/2016 | 6542 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Sbe | Mdp3 | [6.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Sbe.Mdp3.6.1.Script.Dissector.lua "Chicago Mercantile Exchange 6.1 Script Dissector") | 1/9/2016 | 5828 | Verified|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Sbe | Mdp3 | [5.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Sbe.Mdp3.5.1.Script.Dissector.lua "Chicago Mercantile Exchange 5.1 Script Dissector") | 8/6/2014 | 5819 | Verified|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | T7 | Eobi | [5.0.3](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.T7.Eobi.5.0.3.Script.Dissector.lua "Eurex Exchange 5.0.3 Script Dissector") | 6/9/2017 | 3277 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | T7 | Eobi | [4.0.225](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.T7.Eobi.4.0.225.Script.Dissector.lua "Eurex Exchange 4.0.225 Script Dissector") | 11/11/2016 | 3274 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | T7 | Eobi | [3.0.71](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.T7.Eobi.3.0.71.Script.Dissector.lua "Eurex Exchange 3.0.71 Script Dissector") | 8/3/2015 | 3076 | Untested|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | T7 | Eobi | [2.5.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.T7.Eobi.2.5.5.Script.Dissector.lua "Eurex Exchange 2.5.5 Script Dissector") | 11/7/2014 | 3058 | Untested|
|[Ice](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange Dissectors") | iMpact | Mdf | [1.24](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.iMpact.Mdf.1.24.Script.Dissector.lua "Intercontinental Exchange 1.24 Script Dissector") | 3/30/2016 | 6111 | Verified|
|[Miax](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange Dissectors") | Mach | cTom | [1.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Mach.cTom.1.1.Script.Dissector.lua "Miami International Securities Exchange 1.1 Script Dissector") | 7/15/2016 | 2404 | Verified|
|[Miax](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange Dissectors") | Mach | Tom | [1.9](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Mach.Tom.1.9.Script.Dissector.lua "Miami International Securities Exchange 1.9 Script Dissector") | 1/15/2016 | 2149 | Verified|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | TotalView | Itch | [5.0](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.TotalView.Itch.5.0.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 5.0 Script Dissector") | 9/12/2017 | 3099 | Tested|
|[Nasdaq](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nasdaq "National Association of Securities Dealers Automated Quotations Dissectors") | TotalView | Itch | [4.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nasdaq/Nasdaq.TotalView.Itch.4.1.Script.Dissector.lua "National Association of Securities Dealers Automated Quotations 4.1 Script Dissector") | 6/12/2014 | 2071 | Untested|
|[Nyse](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Nyse "New York Stock Exchnage Dissectors") | IntegratedFeed | Xdp | [2.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Nyse/Nyse.IntegratedFeed.Xdp.2.1.Script.Dissector.lua "New York Stock Exchnage 2.1 Script Dissector") | 1/29/2014 | 3820 | Untested|

Note: Some packets contain enough information to programmatically determine the correct protocol specification.  *Some do not.*  If you add multiple dissectors to your plugins folder, wireshark will dissect each "conversation" based on the first matching protocol.

## Development

Updates are greatly appreciated; however, this entire repository is source generated...including the words you are reading right now. Code generation requires a slightly different workflow.  The recommended process is to post a dissector script with suggested edits and explanation.  If the changes are applicable to some or all protocols, we will update the model and regenerate.

Note: Our dissector model is still under rapid development.

## Testing

Please report any dissection errors as issues.  Include a small note on the protocol and version, what you expect, a zipped minimal capture demonstrating the problem, and a link or pdf specification documenting the correct behavior. 

Production captures are required for protocol verification.  If your organization has the rights to donate captures, and you wish to make the world a better place, please contact us.

## Disclaimer

The Open Markets Initiative (Omi) is a group of technologists dedicated to enhancing the stability of electronic financial markets using modern development methods.

Any similarities between existing people, places and/or protocols is purely incidental.

Enjoy.

