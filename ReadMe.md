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
| 435 | 4,169,424 |

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
[Omi.Encoding.Definitions]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Protocols/ReadMe.md "Encoding Directory"

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

[Omi.24X.Memo]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/24X/Protocols/Memo.md "24X Members Orders"
[Omi.24X.MemoirDepthFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/24X/Protocols/MemoirDepthFeed.md "24X Memoir Depth Feed"
[Omi.24X.MemoirLastSale]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/24X/Protocols/MemoirLastSale.md "24X Memoir Last Sale Feed"
[Omi.24X.MemoirTopOfBook]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/24X/Protocols/MemoirTopOfBook.md "24X Memoir Top Of Book"
[Omi.A2X.UdpHeader]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/A2X/Protocols/UdpHeader.md "A2X Udp Headers"
[Omi.A2X.Rtmdf]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/A2X/Protocols/Rtmdf.md "A2X Real Time Market Data Feed"
[Omi.A2X.Snapshot]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/A2X/Protocols/Snapshot.md "A2X Snapshot Feed"
[Omi.Asx.T24]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Asx/Protocols/T24.md "Asx Trade 24"
[Omi.Asx.Ntp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Asx/Protocols/Ntp.md "Asx New Trading Platform"
[Omi.Asx.Trade]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Asx/Protocols/Trade.md "Asx Asx Trade"
[Omi.Aquis.TcpHeader]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Aquis/Protocols/TcpHeader.md "Aquis Tcp Headers"
[Omi.Aquis.Orders]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Aquis/Protocols/Orders.md "Aquis Orders"
[Omi.Aquis.RealTime]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Aquis/Protocols/RealTime.md "Aquis Real Time Market Data Feed"
[Omi.Aquis.Replay]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Aquis/Protocols/Replay.md "Aquis Market Data Replay"
[Omi.B3.BinaryPacketHeader]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/B3/Protocols/BinaryPacketHeader.md "B3 Binary Packet Header"
[Omi.B3.BinaryUmdf]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/B3/Protocols/BinaryUmdf.md "B3 Binary Umdf"
[Omi.B3.BinaryEntryPoint]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/B3/Protocols/BinaryEntryPoint.md "B3 Binary Entry Point"
[Omi.BruceAts.BestBidAndOffer]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/BruceAts/Protocols/BestBidAndOffer.md "BruceAts Best Bid And Offer"
[Omi.BruceAts.DepthOfBook]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/BruceAts/Protocols/DepthOfBook.md "BruceAts Depth Of Book"
[Omi.BruceAts.LastSale]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/BruceAts/Protocols/LastSale.md "BruceAts Last Sale"
[Omi.Boats.CommonHeader]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Boats/Protocols/CommonHeader.md "Boats Common Header"
[Omi.Box.Unicast]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Box/Protocols/Unicast.md "Box Unicast"
[Omi.Box.Multicast]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Box/Protocols/Multicast.md "Box Multicast"
[Omi.Cboe.SummaryDepth]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/SummaryDepth.md "Cboe Summary Depth"
[Omi.Cboe.AuctionFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/AuctionFeed.md "Cboe Auction Feed"
[Omi.Cboe.OneFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/OneFeed.md "Cboe One Feed"
[Omi.Cboe.TopOfBook]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/TopOfBook.md "Cboe Top of Book Quotation"
[Omi.Cboe.OrderEntry]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/OrderEntry.md "Cboe Binary Order Entry"
[Omi.Cboe.Complex]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/Complex.md "Cboe Complex"
[Omi.Cboe.CedxMulticast]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/CedxMulticast.md "Cboe Cedx Multicast"
[Omi.Cboe.SequencedUnitHeader]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/SequencedUnitHeader.md "Cboe Sequenced Unit Header"
[Omi.Cboe.MarketDataFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/MarketDataFeed.md "Cboe Streaming Market Data Feed"
[Omi.Cboe.MarketLevel2]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/MarketLevel2.md "Cboe Streaming Market Level 2 Book Data"
[Omi.Cboe.OpeningAuction]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cboe/Protocols/OpeningAuction.md "Cboe Streaming Market Opening Auction Feed"
[Omi.Cme.Mdp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cme/Protocols/Mdp.md "Cme Market Data Protocol"
[Omi.Cme.Mdp3]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cme/Protocols/Mdp3.md "Cme Market Data Protocol Version 3"
[Omi.Cme.Streamlined]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cme/Protocols/Streamlined.md "Cme Streamlined Market Data"
[Omi.Cme.Settlements]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cme/Protocols/Settlements.md "Cme Streamlined Settlements And Volumes Market Data"
[Omi.Cme.iLink3]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cme/Protocols/iLink3.md "Cme iLink Binary Order Entry"
[Omi.Cme.Ust]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cme/Protocols/Ust.md "Cme Us Treasuries"
[Omi.Cme.Derived]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cme/Protocols/Derived.md "Cme Derived Market Data"
[Omi.Cme.Spectrum]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Cme/Protocols/Spectrum.md "Cme Spectrum Market Data"
[Omi.Coinbase.Session]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Coinbase/Protocols/Session.md "Coinbase Tcp Session"
[Omi.Coinbase.MarketDataApi]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Coinbase/Protocols/MarketDataApi.md "Coinbase Market Data Api"
[Omi.Coinbase.OrdersApi]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Coinbase/Protocols/OrdersApi.md "Coinbase Order Api"
[Omi.Currenex.Esp]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Currenex/Protocols/Esp.md "Currenex Executable Streaming Prices"
[Omi.Currenex.Now]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Currenex/Protocols/Now.md "Currenex Now"
[Omi.Currenex.OrderService]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Currenex/Protocols/OrderService.md "Currenex Order Service"
[Omi.Eurex.Eti]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Eurex/Protocols/Eti.md "Eurex Enhanced Trading Interface"
[Omi.Eurex.Eobi]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Eurex/Protocols/Eobi.md "Eurex Enhanced Order Book Interface"
[Omi.Eurex.Edci]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Eurex/Protocols/Edci.md "Eurex Enhanced Drop Copy Interface"
[Omi.Euronext.OrderEntryGateway]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Euronext/Protocols/OrderEntryGateway.md "Euronext Order Entry Gateway"
[Omi.Euronext.MarketDataGateway]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Euronext/Protocols/MarketDataGateway.md "Euronext Market Data Gateway"
[Omi.Euronext.MarketDataPacket]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Euronext/Protocols/MarketDataPacket.md "Euronext Market Data Packet"
[Omi.Finra.Tdds]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Finra/Protocols/Tdds.md "Finra Trade Data Dissemination Service"
[Omi.Finra.Bbds]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Finra/Protocols/Bbds.md "Finra Bulletin Board Dissemination Service"
[Omi.Hkex.Headers]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Hkex/Protocols/Headers.md "Hkex Headers"
[Omi.Hkex.Lite]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Hkex/Protocols/Lite.md "Hkex Lite"
[Omi.Hkex.Standard]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Hkex/Protocols/Standard.md "Hkex Standard"
[Omi.Hkex.Premium]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Hkex/Protocols/Premium.md "Hkex Premium"
[Omi.Hkex.FullTick]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Hkex/Protocols/FullTick.md "Hkex FullTick"
[Omi.Ice.Mdf]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Ice/Protocols/Mdf.md "Ice Multicast Data Feed"
[Omi.Iex.Deep]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Iex/Protocols/Deep.md "Iex Deep"
[Omi.Iex.DeepPlus]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Iex/Protocols/DeepPlus.md "Iex DeepPlus"
[Omi.Iex.Tops]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Iex/Protocols/Tops.md "Iex Tops"
[Omi.Imperative.IntelligentCross]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Imperative/Protocols/IntelligentCross.md "Imperative IntelligentCross"
[Omi.Jnx.Pts]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Jnx/Protocols/Pts.md "Jnx Proprietary Trading System"
[Omi.Jpx.GeniumInet]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Jpx/Protocols/GeniumInet.md "Jpx Genium Inet"
[Omi.Lseg.Level2]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Lseg/Protocols/Level2.md "Lseg Level 2"
[Omi.Lseg.UdpUnitHeader]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Lseg/Protocols/UdpUnitHeader.md "Lseg Udp Unit Header"
[Omi.Lseg.Mifid]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Lseg/Protocols/Mifid.md "Lseg MiFID 2 Post Trade"
[Omi.Lseg.Level1]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Lseg/Protocols/Level1.md "Lseg Level 1"
[Omi.Lseg.Analytics]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Lseg/Protocols/Analytics.md "Lseg Analytics"
[Omi.Miax.ComplexTopOfMarket]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Miax/Protocols/ComplexTopOfMarket.md "Miax Complex Top of Market Data"
[Omi.Miax.TopOfMarket]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Miax/Protocols/TopOfMarket.md "Miax Top of Market Data"
[Omi.Miax.HeaderOnly]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Miax/Protocols/HeaderOnly.md "Miax Headers Only"
[Omi.Miax.DepthOfMarket]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Miax/Protocols/DepthOfMarket.md "Miax Depth of Market"
[Omi.Miax.ExpressOrders]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Miax/Protocols/ExpressOrders.md "Miax Express Orders"
[Omi.Miax.ExpressInterface]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Miax/Protocols/ExpressInterface.md "Miax Express Interface"
[Omi.Memx.MemoirTop]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Memx/Protocols/MemoirTop.md "Memx Memoir Top"
[Omi.Memx.MemoirDepth]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Memx/Protocols/MemoirDepth.md "Memx Memoir Depth"
[Omi.Memx.RiskControl]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Memx/Protocols/RiskControl.md "Memx Risk Control"
[Omi.Nasdaq.TotalView]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/TotalView.md "Nasdaq TotalView"
[Omi.Nasdaq.OrderComboFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/OrderComboFeed.md "Nasdaq Order Combo Feed"
[Omi.Nasdaq.OrderFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/OrderFeed.md "Nasdaq Order Feed"
[Omi.Nasdaq.TopComboQuoteFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/TopComboQuoteFeed.md "Nasdaq Top Combo Quote Feed"
[Omi.Nasdaq.Bono]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Bono.md "Nasdaq Best of Nasdaq Options"
[Omi.Nasdaq.Itto]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Itto.md "Nasdaq Itch to Trade Options"
[Omi.Nasdaq.Qbbo]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Qbbo.md "Nasdaq Nasdaq Best Bid and Offer"
[Omi.Nasdaq.MarketDepth]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/MarketDepth.md "Nasdaq Depth of Market"
[Omi.Nasdaq.Topo]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Topo.md "Nasdaq Top of Phlx Options"
[Omi.Nasdaq.Bbo]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Bbo.md "Nasdaq Best Bid and Offer"
[Omi.Nasdaq.Aggregated]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Aggregated.md "Nasdaq Aggregated"
[Omi.Nasdaq.NlsPlus]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/NlsPlus.md "Nasdaq Nls Plus"
[Omi.Nasdaq.Nois]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Nois.md "Nasdaq Nois"
[Omi.Nasdaq.Noi]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Noi.md "Nasdaq NOI View"
[Omi.Nasdaq.Output]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Output.md "Nasdaq Output"
[Omi.Nasdaq.SoupBin]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/SoupBin.md "Nasdaq SoupBin"
[Omi.Nasdaq.Mold64]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nasdaq/Protocols/Mold64.md "Nasdaq MoldUdp64"
[Omi.Nyse.OpenBook]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/OpenBook.md "Nyse Open Book"
[Omi.Nyse.Bqt]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/Bqt.md "Nyse Best Trade and Quote"
[Omi.Nyse.ImbalancesFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/ImbalancesFeed.md "Nyse Imbalances Feed"
[Omi.Nyse.IntegratedFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/IntegratedFeed.md "Nyse Integrated Feed"
[Omi.Nyse.BinaryGateway]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/BinaryGateway.md "Nyse Binary Gateway"
[Omi.Nyse.ComplexFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/ComplexFeed.md "Nyse Complex Top Of Book Feed"
[Omi.Nyse.DeepFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/DeepFeed.md "Nyse Depth Of Book Feed"
[Omi.Nyse.TopFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/TopFeed.md "Nyse Top Of Book Feed"
[Omi.Nyse.Feed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/Feed.md "Nyse Deep Of Book Feed"
[Omi.Nyse.CommonClient]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/CommonClient.md "Nyse Common Client"
[Omi.Nyse.StreamProtocol]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Nyse/Protocols/StreamProtocol.md "Nyse Stream Protocol"
[Omi.Siac.Recipient]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Siac/Protocols/Recipient.md "Siac Recipient"
[Omi.SmallX.OrderBookFeed]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/SmallX/Protocols/OrderBookFeed.md "SmallX Order Book Feed"
[Omi.Tmx.AlphaLevel1]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Tmx/Protocols/AlphaLevel1.md "Tmx Alpha Level 1"
[Omi.Tmx.AlphaLevel2]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Tmx/Protocols/AlphaLevel2.md "Tmx Alpha Level 2"
[Omi.Tmx.TsxTsxvLevel1]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Tmx/Protocols/TsxTsxvLevel1.md "Tmx Tsx And Tsxv Level 1"
[Omi.Tmx.TsxTsxvLevel2]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Tmx/Protocols/TsxTsxvLevel2.md "Tmx Tsx Tsxv Level 2"
[Omi.Tmx.XmtHeader]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Tmx/Protocols/XmtHeader.md "Tmx Xmt Header"
[Omi.Txse.Rake]: https://github.com/Open-Markets-Initiative/Directory/blob/main/Organizations/Txse/Protocols/Rake.md "Txse Rake"

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
