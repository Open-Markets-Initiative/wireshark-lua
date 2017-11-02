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
|[Asx](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Asx "Australian Securities Exchange Dissectors") | T24 | Itch | [2.4](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Asx/Asx.T24.Itch.2.4.Script.Dissector.lua "Australian Securities Exchange 2.4 Script Dissector") | 7/15/2014 | 4843|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Sbe | Mdp | [8.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Sbe.Mdp.8.1.Script.Dissector.lua "Chicago Mercantile Exchange 8.1 Script Dissector") | 7/1/2016 | 7452|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Sbe | Mdp | [6.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Sbe.Mdp.6.1.Script.Dissector.lua "Chicago Mercantile Exchange 6.1 Script Dissector") | 1/9/2016 | 6738|
|[Cme](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Cme "Chicago Mercantile Exchange Dissectors") | Sbe | Mdp | [5.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Cme/Cme.Sbe.Mdp.5.1.Script.Dissector.lua "Chicago Mercantile Exchange 5.1 Script Dissector") | 8/6/2014 | 6729|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | T7 | Eobi | [3.0.71](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.T7.Eobi.3.0.71.Script.Dissector.lua "Eurex Exchange 3.0.71 Script Dissector") | 8/3/2015 | 3076|
|[Eurex](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Eurex "Eurex Exchange Dissectors") | T7 | Eobi | [2.5.5](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Eurex/Eurex.T7.Eobi.2.5.5.Script.Dissector.lua "Eurex Exchange 2.5.5 Script Dissector") | 11/7/2014 | 3058|
|[Ice](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Ice "Intercontinental Exchange Dissectors") | iMpact | Mdp | [1.24](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Ice/Ice.iMpact.Mdp.1.24.Script.Dissector.lua "Intercontinental Exchange 1.24 Script Dissector") | 3/30/2016 | 6111|
|[Miax](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange Dissectors") | Mach | cTom | [1.1](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Mach.cTom.1.1.Script.Dissector.lua "Miami International Securities Exchange 1.1 Script Dissector") | 7/15/2016 | 2404|
|[Miax](https://github.com/Open-Markets-Initiative/wireshark-lua/tree/master/Miax "Miami International Securities Exchange Dissectors") | Mach | Tom | [1.9](https://github.com/Open-Markets-Initiative/wireshark-lua/blob/master/Miax/Miax.Mach.Tom.1.9.Script.Dissector.lua "Miami International Securities Exchange 1.9 Script Dissector") | 1/15/2016 | 2149|

Note: Some packets contain enough information to programmatically determine the correct protocol specification.  *Some do not.*  If you add multiple dissectors to your plugins folder, wireshark will dissect each "conversation" based on the first matching protocol.

## Development

Updates are greatly appreciated; however, this entire repository is source generated...including the words you are reading right now. Code generation requires a slighty different workflow.  The recommended process is to post a dissector script with suggested edits and explanation.  If the changes are applicable to some or all protocols, we will update the model and regenerate.

Note: Our dissector model is still in beta and subject to rapid development.

## Testing

Please report any dissection errors as issues.  Include a small note on the protocol and version, what you expect, a zipped minimal capture demonstrating the problem, and a link or pdf specification documenting the correct behavior. 

Production captures are required for protocol verification.  If your organization has the rights to donate captures, and you wish to make the world a better place, please contact us.

## Disclaimer

The Open Markets Initiative (Omi) is a group of technologists dedicated to enhancing the stability of electronic financial markets using modern development methods.

Any similaraity between existing people, places and/or protocols is purely incidental.

Enjoy.

