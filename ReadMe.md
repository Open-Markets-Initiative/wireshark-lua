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
| 434 | 4,191,305 |

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

Dissectors by exchange: [24X][24X.Directory], [A2X][A2X.Directory], [Asx][Asx.Directory], [Aquis][Aquis.Directory], [B3][B3.Directory], [BruceAts][BruceAts.Directory], [Boats][Boats.Directory], [Box][Box.Directory], [Cboe][Cboe.Directory], [Cme][Cme.Directory], [Coinbase][Coinbase.Directory], [Currenex][Currenex.Directory], [Eurex][Eurex.Directory], [Euronext][Euronext.Directory], [Finra][Finra.Directory], [Hkex][Hkex.Directory], [Ice][Ice.Directory], [Iex][Iex.Directory], [Imperative][Imperative.Directory], [Jnx][Jnx.Directory], [Jpx][Jpx.Directory], [Lseg][Lseg.Directory], [Miax][Miax.Directory], [Memx][Memx.Directory], [Nasdaq][Nasdaq.Directory], [Nyse][Nyse.Directory], [Otc][Otc.Directory], [Siac][Siac.Directory], [SmallX][SmallX.Directory], [Tmx][Tmx.Directory], [Txse][Txse.Directory]

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
[Omi.Protocol.Definitions]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/ReadMe.md "Protocol Directory"

[Omi.Protocol.Sbe]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Sbe.md "Sbe Protocol"
[Omi.Protocol.Amd]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Amd.md "Amd Protocol"
[Omi.Protocol.Itch]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Itch.md "Itch Protocol"
[Omi.Protocol.Ouch]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Ouch.md "Ouch Protocol"
[Omi.Protocol.Atp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Atp.md "Atp Protocol"
[Omi.Protocol.Udp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Udp.md "Udp Protocol"
[Omi.Protocol.Hsvf]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Hsvf.md "Hsvf Protocol"
[Omi.Protocol.Pitch]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Pitch.md "Pitch Protocol"
[Omi.Protocol.PitchUdp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/PitchUdp.md "PitchUdp Protocol"
[Omi.Protocol.Boe]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Boe.md "Boe Protocol"
[Omi.Protocol.Boe3]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Boe3.md "Boe3 Protocol"
[Omi.Protocol.Apf]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Apf.md "Apf Protocol"
[Omi.Protocol.Csm]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Csm.md "Csm Protocol"
[Omi.Protocol.Tcp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Tcp.md "Tcp Protocol"
[Omi.Protocol.Cbp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Cbp.md "Cbp Protocol"
[Omi.Protocol.T7]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/T7.md "T7 Protocol"
[Omi.Protocol.Dfi]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Dfi.md "Dfi Protocol"
[Omi.Protocol.Omd]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Omd.md "Omd Protocol"
[Omi.Protocol.iMpact]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/iMpact.md "iMpact Protocol"
[Omi.Protocol.IexTp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/IexTp.md "IexTp Protocol"
[Omi.Protocol.Mdf]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Mdf.md "Mdf Protocol"
[Omi.Protocol.Mitch]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Mitch.md "Mitch Protocol"
[Omi.Protocol.Gtp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Gtp.md "Gtp Protocol"
[Omi.Protocol.Mach]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Mach.md "Mach Protocol"
[Omi.Protocol.ESesM]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/ESesM.md "ESesM Protocol"
[Omi.Protocol.Meo]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Meo.md "Meo Protocol"
[Omi.Protocol.Fei]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Fei.md "Fei Protocol"
[Omi.Protocol.Utp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Utp.md "Utp Protocol"
[Omi.Protocol.Ultra]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Ultra.md "Ultra Protocol"
[Omi.Protocol.Xdp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Xdp.md "Xdp Protocol"
[Omi.Protocol.Pillar]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Pillar.md "Pillar Protocol"
[Omi.Protocol.Ats]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Ats.md "Ats Protocol"
[Omi.Protocol.Obi]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Obi.md "Obi Protocol"
[Omi.Protocol.Cta]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Cta.md "Cta Protocol"
[Omi.Protocol.Xmt]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Xmt.md "Xmt Protocol"
[Omi.Protocol.Seed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/Seed.md "Seed Protocol"

[24X.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/24X "24 Exchange"
[A2X.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/A2X "A2X Markets"
[Asx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Asx "Australian Securities Exchange"
[Aquis.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Aquis "Aquis Exchange"
[B3.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/B3 "Brasil, Bolsa, Balcão"
[BruceAts.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/BruceAts "Bruce Markets"
[Boats.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Boats "Blue Ocean Ats"
[Box.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Box "Boston Options Exchange"
[Cboe.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Cboe "Chicago Board Options Exchange"
[Cme.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Cme "Chicago Mercantile Exchange"
[Coinbase.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Coinbase "Coinbase"
[Currenex.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Currenex "Currenex"
[Eurex.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Eurex "Eurex Exchange"
[Euronext.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Euronext "European New Exchange Technology"
[Finra.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Finra "Financial Industry Regulatory Authority"
[Hkex.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Hkex "Hong Kong Exchanges and Clearing"
[Ice.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Ice "Intercontinental Exchange"
[Iex.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Iex "Investors Exchange"
[Imperative.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Imperative "Imperative Execution"
[Jnx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Jnx "Japannext"
[Jpx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Jpx "Japan Exchange Group"
[Lseg.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Lseg "London Stock Exchange Group"
[Miax.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Miax "Miami International Holdings"
[Memx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Memx "Members Exchange"
[Nasdaq.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Nasdaq "National Association of Securities Dealers Automated Quotations"
[Nyse.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Nyse "New York Stock Exchange"
[Otc.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Otc "Otc Markets"
[Siac.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Siac "Securities Industry Automation Corporation"
[SmallX.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/SmallX "The Small Exchange"
[Tmx.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Tmx "Tmx Group"
[Txse.Directory]: https://github.com/Open-Markets-Initiative/wireshark-lua/tree/main/Txse "Texas Stock Exchange"
