-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Otc Markets Multicast Ats 4.3 Protocol
local omi_otc_markets_multicast_ats_v4_3 = Proto("Otc.Markets.Multicast.Ats.v4.3.Lua", "Otc Markets Multicast Ats 4.3")

-- Protocol table
local otc_markets_multicast_ats_v4_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Otc Markets Multicast Ats 4.3 Fields
omi_otc_markets_multicast_ats_v4_3.fields.adr_level = ProtoField.new("Adr Level", "otc.markets.multicast.ats.v4.3.adrlevel", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.adr_ratio = ProtoField.new("Adr Ratio", "otc.markets.multicast.ats.v4.3.adrratio", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.ask_bid_wanted = ProtoField.new("Ask Bid Wanted", "otc.markets.multicast.ats.v4.3.askbidwanted", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_otc_markets_multicast_ats_v4_3.fields.ask_price = ProtoField.new("Ask Price", "otc.markets.multicast.ats.v4.3.askprice", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.ask_priced = ProtoField.new("Ask Priced", "otc.markets.multicast.ats.v4.3.askpriced", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_otc_markets_multicast_ats_v4_3.fields.ask_qap = ProtoField.new("Ask Qap", "otc.markets.multicast.ats.v4.3.askqap", ftypes.INT8)
omi_otc_markets_multicast_ats_v4_3.fields.ask_size = ProtoField.new("Ask Size", "otc.markets.multicast.ats.v4.3.asksize", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.ask_time_milli = ProtoField.new("Ask Time Milli", "otc.markets.multicast.ats.v4.3.asktimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.ask_unsolicited = ProtoField.new("Ask Unsolicited", "otc.markets.multicast.ats.v4.3.askunsolicited", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_otc_markets_multicast_ats_v4_3.fields.asset_class = ProtoField.new("Asset Class", "otc.markets.multicast.ats.v4.3.assetclass", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.bb_quoted = ProtoField.new("Bb Quoted", "otc.markets.multicast.ats.v4.3.bbquoted", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_otc_markets_multicast_ats_v4_3.fields.bid_ask_wanted = ProtoField.new("Bid Ask Wanted", "otc.markets.multicast.ats.v4.3.bidaskwanted", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_otc_markets_multicast_ats_v4_3.fields.bid_auto_ex = ProtoField.new("Bid Auto Ex", "otc.markets.multicast.ats.v4.3.bidautoex", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_otc_markets_multicast_ats_v4_3.fields.bid_price = ProtoField.new("Bid Price", "otc.markets.multicast.ats.v4.3.bidprice", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.bid_priced = ProtoField.new("Bid Priced", "otc.markets.multicast.ats.v4.3.bidpriced", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_otc_markets_multicast_ats_v4_3.fields.bid_qap = ProtoField.new("Bid Qap", "otc.markets.multicast.ats.v4.3.bidqap", ftypes.INT8)
omi_otc_markets_multicast_ats_v4_3.fields.bid_size = ProtoField.new("Bid Size", "otc.markets.multicast.ats.v4.3.bidsize", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.bid_time_milli = ProtoField.new("Bid Time Milli", "otc.markets.multicast.ats.v4.3.bidtimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.bid_unsolicited = ProtoField.new("Bid Unsolicited", "otc.markets.multicast.ats.v4.3.bidunsolicited", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_otc_markets_multicast_ats_v4_3.fields.callable = ProtoField.new("Callable", "otc.markets.multicast.ats.v4.3.callable", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0400)
omi_otc_markets_multicast_ats_v4_3.fields.callable_date_milli = ProtoField.new("Callable Date Milli", "otc.markets.multicast.ats.v4.3.callabledatemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.caveat_emptor_warning = ProtoField.new("Caveat Emptor Warning", "otc.markets.multicast.ats.v4.3.caveatemptorwarning", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_otc_markets_multicast_ats_v4_3.fields.channel_seq_num = ProtoField.new("Channel Seq Num", "otc.markets.multicast.ats.v4.3.channelseqnum", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.coupon = ProtoField.new("Coupon", "otc.markets.multicast.ats.v4.3.coupon", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.cusip = ProtoField.new("Cusip", "otc.markets.multicast.ats.v4.3.cusip", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.deprecated = ProtoField.new("Deprecated", "otc.markets.multicast.ats.v4.3.deprecated", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.disclosure_status = ProtoField.new("Disclosure Status", "otc.markets.multicast.ats.v4.3.disclosurestatus", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.extended_quote_flags = ProtoField.new("Extended Quote Flags", "otc.markets.multicast.ats.v4.3.extendedquoteflags", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.extended_security_flags = ProtoField.new("Extended Security Flags", "otc.markets.multicast.ats.v4.3.extendedsecurityflags", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.heartbeat = ProtoField.new("Heartbeat", "otc.markets.multicast.ats.v4.3.heartbeat", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_otc_markets_multicast_ats_v4_3.fields.inside_id = ProtoField.new("Inside Id", "otc.markets.multicast.ats.v4.3.insideid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.inside_time_milli = ProtoField.new("Inside Time Milli", "otc.markets.multicast.ats.v4.3.insidetimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.investment_grade = ProtoField.new("Investment Grade", "otc.markets.multicast.ats.v4.3.investmentgrade", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_otc_markets_multicast_ats_v4_3.fields.irregular = ProtoField.new("Irregular", "otc.markets.multicast.ats.v4.3.irregular", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_otc_markets_multicast_ats_v4_3.fields.issuer_name = ProtoField.new("Issuer Name", "otc.markets.multicast.ats.v4.3.issuername", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.issuer_size = ProtoField.new("Issuer Size", "otc.markets.multicast.ats.v4.3.issuersize", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.last_update_milli = ProtoField.new("Last Update Milli", "otc.markets.multicast.ats.v4.3.lastupdatemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.market_close = ProtoField.new("Market Close", "otc.markets.multicast.ats.v4.3.marketclose", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.market_close_time_milli = ProtoField.new("Market Close Time Milli", "otc.markets.multicast.ats.v4.3.marketclosetimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.market_msg_ct = ProtoField.new("Market Msg Ct", "otc.markets.multicast.ats.v4.3.marketmsgct", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.market_open = ProtoField.new("Market Open", "otc.markets.multicast.ats.v4.3.marketopen", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.maturity_date_milli = ProtoField.new("Maturity Date Milli", "otc.markets.multicast.ats.v4.3.maturitydatemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.message = ProtoField.new("Message", "otc.markets.multicast.ats.v4.3.message", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.message_header = ProtoField.new("Message Header", "otc.markets.multicast.ats.v4.3.messageheader", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.message_size = ProtoField.new("Message Size", "otc.markets.multicast.ats.v4.3.messagesize", ftypes.UINT16)
omi_otc_markets_multicast_ats_v4_3.fields.message_type = ProtoField.new("Message Type", "otc.markets.multicast.ats.v4.3.messagetype", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.messages = ProtoField.new("Messages", "otc.markets.multicast.ats.v4.3.messages", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.mpid = ProtoField.new("Mpid", "otc.markets.multicast.ats.v4.3.mpid", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.nms_conditional_quote = ProtoField.new("Nms Conditional Quote", "otc.markets.multicast.ats.v4.3.nmsconditionalquote", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_otc_markets_multicast_ats_v4_3.fields.num_priced_mp = ProtoField.new("Num Priced Mp", "otc.markets.multicast.ats.v4.3.numpricedmp", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.offer_auto_ex = ProtoField.new("Offer Auto Ex", "otc.markets.multicast.ats.v4.3.offerautoex", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_otc_markets_multicast_ats_v4_3.fields.otc_issuer_id = ProtoField.new("Otc Issuer Id", "otc.markets.multicast.ats.v4.3.otcissuerid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.otc_link_ecn_eligible = ProtoField.new("Otc Link Ecn Eligible", "otc.markets.multicast.ats.v4.3.otclinkecneligible", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_otc_markets_multicast_ats_v4_3.fields.otc_link_messaging_disabled = ProtoField.new("Otc Link Messaging Disabled", "otc.markets.multicast.ats.v4.3.otclinkmessagingdisabled", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_otc_markets_multicast_ats_v4_3.fields.packet = ProtoField.new("Packet", "otc.markets.multicast.ats.v4.3.packet", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.packet_flag = ProtoField.new("Packet Flag", "otc.markets.multicast.ats.v4.3.packetflag", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.packet_header = ProtoField.new("Packet Header", "otc.markets.multicast.ats.v4.3.packetheader", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.packet_milli = ProtoField.new("Packet Milli", "otc.markets.multicast.ats.v4.3.packetmilli", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.packet_size = ProtoField.new("Packet Size", "otc.markets.multicast.ats.v4.3.packetsize", ftypes.UINT16)
omi_otc_markets_multicast_ats_v4_3.fields.par_value = ProtoField.new("Par Value", "otc.markets.multicast.ats.v4.3.parvalue", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.payload = ProtoField.new("Payload", "otc.markets.multicast.ats.v4.3.payload", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.piggyback = ProtoField.new("Piggyback", "otc.markets.multicast.ats.v4.3.piggyback", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_otc_markets_multicast_ats_v4_3.fields.price = ProtoField.new("Price", "otc.markets.multicast.ats.v4.3.price", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.primary_market = ProtoField.new("Primary Market", "otc.markets.multicast.ats.v4.3.primarymarket", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.qap = ProtoField.new("Qap", "otc.markets.multicast.ats.v4.3.qap", ftypes.INT8)
omi_otc_markets_multicast_ats_v4_3.fields.qualified_institutional_buyers_only = ProtoField.new("Qualified Institutional Buyers Only", "otc.markets.multicast.ats.v4.3.qualifiedinstitutionalbuyersonly", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_otc_markets_multicast_ats_v4_3.fields.quote_action = ProtoField.new("Quote Action", "otc.markets.multicast.ats.v4.3.quoteaction", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.quote_flags = ProtoField.new("Quote Flags", "otc.markets.multicast.ats.v4.3.quoteflags", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.quote_id = ProtoField.new("Quote Id", "otc.markets.multicast.ats.v4.3.quoteid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.quote_reference_id = ProtoField.new("Quote Reference Id", "otc.markets.multicast.ats.v4.3.quotereferenceid", ftypes.UINT16)
omi_otc_markets_multicast_ats_v4_3.fields.quote_saturated = ProtoField.new("Quote Saturated", "otc.markets.multicast.ats.v4.3.quotesaturated", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_otc_markets_multicast_ats_v4_3.fields.quote_time_milli = ProtoField.new("Quote Time Milli", "otc.markets.multicast.ats.v4.3.quotetimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.reference_price_action = ProtoField.new("Reference Price Action", "otc.markets.multicast.ats.v4.3.referencepriceaction", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.reference_price_id = ProtoField.new("Reference Price Id", "otc.markets.multicast.ats.v4.3.referencepriceid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.replay = ProtoField.new("Replay", "otc.markets.multicast.ats.v4.3.replay", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_otc_markets_multicast_ats_v4_3.fields.reporting_status = ProtoField.new("Reporting Status", "otc.markets.multicast.ats.v4.3.reportingstatus", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.reserved_4 = ProtoField.new("Reserved 4", "otc.markets.multicast.ats.v4.3.reserved4", ftypes.UINT8, nil, base.DEC, 0x3C)
omi_otc_markets_multicast_ats_v4_3.fields.reserved_5 = ProtoField.new("Reserved 5", "otc.markets.multicast.ats.v4.3.reserved5", ftypes.UINT16, nil, base.DEC, 0xF800)
omi_otc_markets_multicast_ats_v4_3.fields.reserved_7 = ProtoField.new("Reserved 7", "otc.markets.multicast.ats.v4.3.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_otc_markets_multicast_ats_v4_3.fields.saturation_eligible = ProtoField.new("Saturation Eligible", "otc.markets.multicast.ats.v4.3.saturationeligible", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_otc_markets_multicast_ats_v4_3.fields.security_action = ProtoField.new("Security Action", "otc.markets.multicast.ats.v4.3.securityaction", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.security_desc = ProtoField.new("Security Desc", "otc.markets.multicast.ats.v4.3.securitydesc", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.security_detail = ProtoField.new("Security Detail", "otc.markets.multicast.ats.v4.3.securitydetail", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.security_detail_size = ProtoField.new("Security Detail Size", "otc.markets.multicast.ats.v4.3.securitydetailsize", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.security_flags = ProtoField.new("Security Flags", "otc.markets.multicast.ats.v4.3.securityflags", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.security_id = ProtoField.new("Security Id", "otc.markets.multicast.ats.v4.3.securityid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.security_status = ProtoField.new("Security Status", "otc.markets.multicast.ats.v4.3.securitystatus", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.security_type = ProtoField.new("Security Type", "otc.markets.multicast.ats.v4.3.securitytype", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.seq_num = ProtoField.new("Seq Num", "otc.markets.multicast.ats.v4.3.seqnum", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otc.markets.multicast.ats.v4.3.seqnumreset", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_otc_markets_multicast_ats_v4_3.fields.short_name = ProtoField.new("Short Name", "otc.markets.multicast.ats.v4.3.shortname", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.size = ProtoField.new("Size", "otc.markets.multicast.ats.v4.3.size", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otc.markets.multicast.ats.v4.3.spinendtimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otc.markets.multicast.ats.v4.3.spinlastseqnum", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otc.markets.multicast.ats.v4.3.spinmsgct", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otc.markets.multicast.ats.v4.3.spinstarttimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.spin_type = ProtoField.new("Spin Type", "otc.markets.multicast.ats.v4.3.spintype", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.sponsored_status = ProtoField.new("Sponsored Status", "otc.markets.multicast.ats.v4.3.sponsoredstatus", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_otc_markets_multicast_ats_v4_3.fields.state = ProtoField.new("State", "otc.markets.multicast.ats.v4.3.state", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_otc_markets_multicast_ats_v4_3.fields.symbol = ProtoField.new("Symbol", "otc.markets.multicast.ats.v4.3.symbol", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.test = ProtoField.new("Test", "otc.markets.multicast.ats.v4.3.test", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_otc_markets_multicast_ats_v4_3.fields.tier = ProtoField.new("Tier", "otc.markets.multicast.ats.v4.3.tier", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.time_milli = ProtoField.new("Time Milli", "otc.markets.multicast.ats.v4.3.timemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.trade_action = ProtoField.new("Trade Action", "otc.markets.multicast.ats.v4.3.tradeaction", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.trade_flags = ProtoField.new("Trade Flags", "otc.markets.multicast.ats.v4.3.tradeflags", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_3.fields.trade_id = ProtoField.new("Trade Id", "otc.markets.multicast.ats.v4.3.tradeid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.trade_price = ProtoField.new("Trade Price", "otc.markets.multicast.ats.v4.3.tradeprice", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.trade_size = ProtoField.new("Trade Size", "otc.markets.multicast.ats.v4.3.tradesize", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_3.fields.trade_status = ProtoField.new("Trade Status", "otc.markets.multicast.ats.v4.3.tradestatus", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.trade_time_milli = ProtoField.new("Trade Time Milli", "otc.markets.multicast.ats.v4.3.tradetimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_3.fields.trading_flat = ProtoField.new("Trading Flat", "otc.markets.multicast.ats.v4.3.tradingflat", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_otc_markets_multicast_ats_v4_3.fields.unsolicited_only = ProtoField.new("Unsolicited Only", "otc.markets.multicast.ats.v4.3.unsolicitedonly", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_otc_markets_multicast_ats_v4_3.fields.update_side = ProtoField.new("Update Side", "otc.markets.multicast.ats.v4.3.updateside", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)

-- Otc Markets Multicast Ats 4.3 messages
omi_otc_markets_multicast_ats_v4_3.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otc.markets.multicast.ats.v4.3.endofspinmessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.extended_security_message = ProtoField.new("Extended Security Message", "otc.markets.multicast.ats.v4.3.extendedsecuritymessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.extended_security_no_cusip_message = ProtoField.new("Extended Security No Cusip Message", "otc.markets.multicast.ats.v4.3.extendedsecuritynocusipmessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.inside_update_message = ProtoField.new("Inside Update Message", "otc.markets.multicast.ats.v4.3.insideupdatemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.market_close_message = ProtoField.new("Market Close Message", "otc.markets.multicast.ats.v4.3.marketclosemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.market_open_message = ProtoField.new("Market Open Message", "otc.markets.multicast.ats.v4.3.marketopenmessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.quote_message = ProtoField.new("Quote Message", "otc.markets.multicast.ats.v4.3.quotemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.quote_update_message = ProtoField.new("Quote Update Message", "otc.markets.multicast.ats.v4.3.quoteupdatemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.reference_price_message = ProtoField.new("Reference Price Message", "otc.markets.multicast.ats.v4.3.referencepricemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.reference_price_update_message = ProtoField.new("Reference Price Update Message", "otc.markets.multicast.ats.v4.3.referencepriceupdatemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.security_message = ProtoField.new("Security Message", "otc.markets.multicast.ats.v4.3.securitymessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otc.markets.multicast.ats.v4.3.startofspinmessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_3.fields.trade_message = ProtoField.new("Trade Message", "otc.markets.multicast.ats.v4.3.trademessage", ftypes.STRING)

-- Otc Markets Multicast Ats 4.3 generated fields
omi_otc_markets_multicast_ats_v4_3.fields.message_index = ProtoField.new("Message Index", "otc.markets.multicast.ats.v4.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Otc Markets Multicast Ats 4.3 Element Dissection Options
show.end_of_spin_message = true
show.extended_quote_flags = true
show.extended_security_flags = true
show.extended_security_message = true
show.extended_security_no_cusip_message = true
show.inside_update_message = true
show.market_close_message = true
show.market_open_message = true
show.message = true
show.message_header = true
show.packet = true
show.packet_flag = true
show.packet_header = true
show.quote_flags = true
show.quote_message = true
show.quote_update_message = true
show.reference_price_message = true
show.reference_price_update_message = true
show.security_flags = true
show.security_message = true
show.start_of_spin_message = true
show.trade_message = true
show.trade_status = true
show.payload = false

-- Register Otc Markets Multicast Ats 4.3 Show Options
omi_otc_markets_multicast_ats_v4_3.prefs.show_end_of_spin_message = Pref.bool("Show End Of Spin Message", show.end_of_spin_message, "Parse and add End Of Spin Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_quote_flags = Pref.bool("Show Extended Quote Flags", show.extended_quote_flags, "Parse and add Extended Quote Flags to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_security_flags = Pref.bool("Show Extended Security Flags", show.extended_security_flags, "Parse and add Extended Security Flags to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_security_message = Pref.bool("Show Extended Security Message", show.extended_security_message, "Parse and add Extended Security Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_security_no_cusip_message = Pref.bool("Show Extended Security No Cusip Message", show.extended_security_no_cusip_message, "Parse and add Extended Security No Cusip Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_inside_update_message = Pref.bool("Show Inside Update Message", show.inside_update_message, "Parse and add Inside Update Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_market_close_message = Pref.bool("Show Market Close Message", show.market_close_message, "Parse and add Market Close Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_market_open_message = Pref.bool("Show Market Open Message", show.market_open_message, "Parse and add Market Open Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_packet_flag = Pref.bool("Show Packet Flag", show.packet_flag, "Parse and add Packet Flag to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_quote_flags = Pref.bool("Show Quote Flags", show.quote_flags, "Parse and add Quote Flags to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_quote_update_message = Pref.bool("Show Quote Update Message", show.quote_update_message, "Parse and add Quote Update Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_reference_price_message = Pref.bool("Show Reference Price Message", show.reference_price_message, "Parse and add Reference Price Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_reference_price_update_message = Pref.bool("Show Reference Price Update Message", show.reference_price_update_message, "Parse and add Reference Price Update Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_security_message = Pref.bool("Show Security Message", show.security_message, "Parse and add Security Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_start_of_spin_message = Pref.bool("Show Start Of Spin Message", show.start_of_spin_message, "Parse and add Start Of Spin Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_trade_status = Pref.bool("Show Trade Status", show.trade_status, "Parse and add Trade Status to protocol tree")
omi_otc_markets_multicast_ats_v4_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_otc_markets_multicast_ats_v4_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.end_of_spin_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_end_of_spin_message then
    show.end_of_spin_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_end_of_spin_message
    changed = true
  end
  if show.extended_quote_flags ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_quote_flags then
    show.extended_quote_flags = omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_quote_flags
    changed = true
  end
  if show.extended_security_flags ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_security_flags then
    show.extended_security_flags = omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_security_flags
    changed = true
  end
  if show.extended_security_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_security_message then
    show.extended_security_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_security_message
    changed = true
  end
  if show.extended_security_no_cusip_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_security_no_cusip_message then
    show.extended_security_no_cusip_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_extended_security_no_cusip_message
    changed = true
  end
  if show.inside_update_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_inside_update_message then
    show.inside_update_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_inside_update_message
    changed = true
  end
  if show.market_close_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_market_close_message then
    show.market_close_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_market_close_message
    changed = true
  end
  if show.market_open_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_market_open_message then
    show.market_open_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_market_open_message
    changed = true
  end
  if show.message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_message then
    show.message = omi_otc_markets_multicast_ats_v4_3.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_message_header then
    show.message_header = omi_otc_markets_multicast_ats_v4_3.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_packet then
    show.packet = omi_otc_markets_multicast_ats_v4_3.prefs.show_packet
    changed = true
  end
  if show.packet_flag ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_packet_flag then
    show.packet_flag = omi_otc_markets_multicast_ats_v4_3.prefs.show_packet_flag
    changed = true
  end
  if show.packet_header ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_packet_header then
    show.packet_header = omi_otc_markets_multicast_ats_v4_3.prefs.show_packet_header
    changed = true
  end
  if show.quote_flags ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_quote_flags then
    show.quote_flags = omi_otc_markets_multicast_ats_v4_3.prefs.show_quote_flags
    changed = true
  end
  if show.quote_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_quote_message then
    show.quote_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_quote_message
    changed = true
  end
  if show.quote_update_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_quote_update_message then
    show.quote_update_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_quote_update_message
    changed = true
  end
  if show.reference_price_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_reference_price_message then
    show.reference_price_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_reference_price_message
    changed = true
  end
  if show.reference_price_update_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_reference_price_update_message then
    show.reference_price_update_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_reference_price_update_message
    changed = true
  end
  if show.security_flags ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_security_flags then
    show.security_flags = omi_otc_markets_multicast_ats_v4_3.prefs.show_security_flags
    changed = true
  end
  if show.security_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_security_message then
    show.security_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_security_message
    changed = true
  end
  if show.start_of_spin_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_start_of_spin_message then
    show.start_of_spin_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_start_of_spin_message
    changed = true
  end
  if show.trade_message ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_trade_message then
    show.trade_message = omi_otc_markets_multicast_ats_v4_3.prefs.show_trade_message
    changed = true
  end
  if show.trade_status ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_trade_status then
    show.trade_status = omi_otc_markets_multicast_ats_v4_3.prefs.show_trade_status
    changed = true
  end
  if show.payload ~= omi_otc_markets_multicast_ats_v4_3.prefs.show_payload then
    show.payload = omi_otc_markets_multicast_ats_v4_3.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Otc Markets Multicast Ats 4.3
-----------------------------------------------------------------------

-- Trade Time Milli
otc_markets_multicast_ats_v4_3.trade_time_milli = {}

-- Size: Trade Time Milli
otc_markets_multicast_ats_v4_3.trade_time_milli.size = 8

-- Display: Trade Time Milli
otc_markets_multicast_ats_v4_3.trade_time_milli.display = function(value)
  return "Trade Time Milli: "..value
end

-- Dissect: Trade Time Milli
otc_markets_multicast_ats_v4_3.trade_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.trade_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.trade_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.trade_time_milli, range, value, display)

  return offset + length, value
end

-- Trade Size
otc_markets_multicast_ats_v4_3.trade_size = {}

-- Size: Trade Size
otc_markets_multicast_ats_v4_3.trade_size.size = 4

-- Display: Trade Size
otc_markets_multicast_ats_v4_3.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
otc_markets_multicast_ats_v4_3.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trade Price
otc_markets_multicast_ats_v4_3.trade_price = {}

-- Size: Trade Price
otc_markets_multicast_ats_v4_3.trade_price.size = 8

-- Display: Trade Price
otc_markets_multicast_ats_v4_3.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
otc_markets_multicast_ats_v4_3.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.trade_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Deprecated
otc_markets_multicast_ats_v4_3.deprecated = {}

-- Size: Deprecated
otc_markets_multicast_ats_v4_3.deprecated.size = 8

-- Display: Deprecated
otc_markets_multicast_ats_v4_3.deprecated.display = function(value)
  return "Deprecated: "..value
end

-- Dissect: Deprecated
otc_markets_multicast_ats_v4_3.deprecated.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.deprecated.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.deprecated.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.deprecated, range, value, display)

  return offset + length, value
end

-- Trade Status
otc_markets_multicast_ats_v4_3.trade_status = {}

-- Size: Trade Status
otc_markets_multicast_ats_v4_3.trade_status.size = 1

-- Display: Trade Status
otc_markets_multicast_ats_v4_3.trade_status.display = function(range, value, packet, parent)
  local display = ""

  -- Is Irregular flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Irregular|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Trade Status
otc_markets_multicast_ats_v4_3.trade_status.bits = function(range, value, packet, parent)

  -- Irregular: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.irregular, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.reserved_7, range, value)
end

-- Dissect: Trade Status
otc_markets_multicast_ats_v4_3.trade_status.dissect = function(buffer, offset, packet, parent)
  local size = otc_markets_multicast_ats_v4_3.trade_status.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.trade_status.display(range, value, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.trade_status, range, display)

  if show.trade_status then
    otc_markets_multicast_ats_v4_3.trade_status.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Id
otc_markets_multicast_ats_v4_3.security_id = {}

-- Size: Security Id
otc_markets_multicast_ats_v4_3.security_id.size = 4

-- Display: Security Id
otc_markets_multicast_ats_v4_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otc_markets_multicast_ats_v4_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Trade Flags
otc_markets_multicast_ats_v4_3.trade_flags = {}

-- Size: Trade Flags
otc_markets_multicast_ats_v4_3.trade_flags.size = 1

-- Display: Trade Flags
otc_markets_multicast_ats_v4_3.trade_flags.display = function(value)
  return "Trade Flags: "..value
end

-- Dissect: Trade Flags
otc_markets_multicast_ats_v4_3.trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.trade_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.trade_flags, range, value, display)

  return offset + length, value
end

-- Trade Action
otc_markets_multicast_ats_v4_3.trade_action = {}

-- Size: Trade Action
otc_markets_multicast_ats_v4_3.trade_action.size = 1

-- Display: Trade Action
otc_markets_multicast_ats_v4_3.trade_action.display = function(value)
  if value == 2 then
    return "Trade Action: Add (2)"
  end

  return "Trade Action: Unknown("..value..")"
end

-- Dissect: Trade Action
otc_markets_multicast_ats_v4_3.trade_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.trade_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.trade_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.trade_action, range, value, display)

  return offset + length, value
end

-- Trade Id
otc_markets_multicast_ats_v4_3.trade_id = {}

-- Size: Trade Id
otc_markets_multicast_ats_v4_3.trade_id.size = 4

-- Display: Trade Id
otc_markets_multicast_ats_v4_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
otc_markets_multicast_ats_v4_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Channel Seq Num
otc_markets_multicast_ats_v4_3.channel_seq_num = {}

-- Size: Channel Seq Num
otc_markets_multicast_ats_v4_3.channel_seq_num.size = 4

-- Display: Channel Seq Num
otc_markets_multicast_ats_v4_3.channel_seq_num.display = function(value)
  return "Channel Seq Num: "..value
end

-- Dissect: Channel Seq Num
otc_markets_multicast_ats_v4_3.channel_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.channel_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.channel_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.channel_seq_num, range, value, display)

  return offset + length, value
end

-- Trade Message
otc_markets_multicast_ats_v4_3.trade_message = {}

-- Size: Trade Message
otc_markets_multicast_ats_v4_3.trade_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.trade_id.size + 
  otc_markets_multicast_ats_v4_3.trade_action.size + 
  otc_markets_multicast_ats_v4_3.trade_flags.size + 
  otc_markets_multicast_ats_v4_3.security_id.size + 
  otc_markets_multicast_ats_v4_3.trade_status.size + 
  otc_markets_multicast_ats_v4_3.deprecated.size + 
  otc_markets_multicast_ats_v4_3.trade_price.size + 
  otc_markets_multicast_ats_v4_3.trade_size.size + 
  otc_markets_multicast_ats_v4_3.trade_time_milli.size

-- Display: Trade Message
otc_markets_multicast_ats_v4_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
otc_markets_multicast_ats_v4_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Unsigned Integer
  index, trade_id = otc_markets_multicast_ats_v4_3.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Action: Unsigned Integer
  index, trade_action = otc_markets_multicast_ats_v4_3.trade_action.dissect(buffer, index, packet, parent)

  -- Trade Flags: Unsigned Integer
  index, trade_flags = otc_markets_multicast_ats_v4_3.trade_flags.dissect(buffer, index, packet, parent)

  -- Security Id: Unsigned Integer
  index, security_id = otc_markets_multicast_ats_v4_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Status: Struct of 2 fields
  index, trade_status = otc_markets_multicast_ats_v4_3.trade_status.dissect(buffer, index, packet, parent)

  -- Deprecated: UTF-8
  index, deprecated = otc_markets_multicast_ats_v4_3.deprecated.dissect(buffer, index, packet, parent)

  -- Trade Price: Unsigned Integer
  index, trade_price = otc_markets_multicast_ats_v4_3.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Unsigned Integer
  index, trade_size = otc_markets_multicast_ats_v4_3.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Time Milli: Unsigned Integer
  index, trade_time_milli = otc_markets_multicast_ats_v4_3.trade_time_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
otc_markets_multicast_ats_v4_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.trade_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Issuer Name
otc_markets_multicast_ats_v4_3.issuer_name = {}

-- Display: Issuer Name
otc_markets_multicast_ats_v4_3.issuer_name.display = function(value)
  return "Issuer Name: "..value
end

-- Dissect runtime sized field: Issuer Name
otc_markets_multicast_ats_v4_3.issuer_name.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.issuer_name.display(value, packet, parent, size)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.issuer_name, range, value, display)

  return offset + size, value
end

-- Issuer Size
otc_markets_multicast_ats_v4_3.issuer_size = {}

-- Size: Issuer Size
otc_markets_multicast_ats_v4_3.issuer_size.size = 1

-- Display: Issuer Size
otc_markets_multicast_ats_v4_3.issuer_size.display = function(value)
  return "Issuer Size: "..value
end

-- Dissect: Issuer Size
otc_markets_multicast_ats_v4_3.issuer_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.issuer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.issuer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.issuer_size, range, value, display)

  return offset + length, value
end

-- Security Detail
otc_markets_multicast_ats_v4_3.security_detail = {}

-- Display: Security Detail
otc_markets_multicast_ats_v4_3.security_detail.display = function(value)
  return "Security Detail: "..value
end

-- Dissect runtime sized field: Security Detail
otc_markets_multicast_ats_v4_3.security_detail.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.security_detail.display(value, packet, parent, size)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.security_detail, range, value, display)

  return offset + size, value
end

-- Security Detail Size
otc_markets_multicast_ats_v4_3.security_detail_size = {}

-- Size: Security Detail Size
otc_markets_multicast_ats_v4_3.security_detail_size.size = 1

-- Display: Security Detail Size
otc_markets_multicast_ats_v4_3.security_detail_size.display = function(value)
  return "Security Detail Size: "..value
end

-- Dissect: Security Detail Size
otc_markets_multicast_ats_v4_3.security_detail_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.security_detail_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.security_detail_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.security_detail_size, range, value, display)

  return offset + length, value
end

-- Adr Level
otc_markets_multicast_ats_v4_3.adr_level = {}

-- Size: Adr Level
otc_markets_multicast_ats_v4_3.adr_level.size = 15

-- Display: Adr Level
otc_markets_multicast_ats_v4_3.adr_level.display = function(value)
  return "Adr Level: "..value
end

-- Dissect: Adr Level
otc_markets_multicast_ats_v4_3.adr_level.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.adr_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.adr_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.adr_level, range, value, display)

  return offset + length, value
end

-- Adr Ratio
otc_markets_multicast_ats_v4_3.adr_ratio = {}

-- Size: Adr Ratio
otc_markets_multicast_ats_v4_3.adr_ratio.size = 8

-- Display: Adr Ratio
otc_markets_multicast_ats_v4_3.adr_ratio.display = function(value)
  return "Adr Ratio: "..value
end

-- Dissect: Adr Ratio
otc_markets_multicast_ats_v4_3.adr_ratio.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.adr_ratio.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.adr_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.adr_ratio, range, value, display)

  return offset + length, value
end

-- Callable Date Milli
otc_markets_multicast_ats_v4_3.callable_date_milli = {}

-- Size: Callable Date Milli
otc_markets_multicast_ats_v4_3.callable_date_milli.size = 8

-- Display: Callable Date Milli
otc_markets_multicast_ats_v4_3.callable_date_milli.display = function(value)
  return "Callable Date Milli: "..value
end

-- Dissect: Callable Date Milli
otc_markets_multicast_ats_v4_3.callable_date_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.callable_date_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.callable_date_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.callable_date_milli, range, value, display)

  return offset + length, value
end

-- Maturity Date Milli
otc_markets_multicast_ats_v4_3.maturity_date_milli = {}

-- Size: Maturity Date Milli
otc_markets_multicast_ats_v4_3.maturity_date_milli.size = 8

-- Display: Maturity Date Milli
otc_markets_multicast_ats_v4_3.maturity_date_milli.display = function(value)
  return "Maturity Date Milli: "..value
end

-- Dissect: Maturity Date Milli
otc_markets_multicast_ats_v4_3.maturity_date_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.maturity_date_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.maturity_date_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.maturity_date_milli, range, value, display)

  return offset + length, value
end

-- Coupon
otc_markets_multicast_ats_v4_3.coupon = {}

-- Size: Coupon
otc_markets_multicast_ats_v4_3.coupon.size = 8

-- Display: Coupon
otc_markets_multicast_ats_v4_3.coupon.display = function(value)
  return "Coupon: "..value
end

-- Dissect: Coupon
otc_markets_multicast_ats_v4_3.coupon.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.coupon.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.coupon.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.coupon, range, value, display)

  return offset + length, value
end

-- Par Value
otc_markets_multicast_ats_v4_3.par_value = {}

-- Size: Par Value
otc_markets_multicast_ats_v4_3.par_value.size = 8

-- Display: Par Value
otc_markets_multicast_ats_v4_3.par_value.display = function(value)
  return "Par Value: "..value
end

-- Dissect: Par Value
otc_markets_multicast_ats_v4_3.par_value.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.par_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.par_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.par_value, range, value, display)

  return offset + length, value
end

-- Security Status
otc_markets_multicast_ats_v4_3.security_status = {}

-- Size: Security Status
otc_markets_multicast_ats_v4_3.security_status.size = 1

-- Display: Security Status
otc_markets_multicast_ats_v4_3.security_status.display = function(value)
  if value == "A" then
    return "Security Status: Active (A)"
  end
  if value == "Q" then
    return "Security Status: Quote Only (Q)"
  end
  if value == "S" then
    return "Security Status: Suspended (S)"
  end
  if value == "H" then
    return "Security Status: Halted (H)"
  end
  if value == "I" then
    return "Security Status: Internal Halt (I)"
  end
  if value == "R" then
    return "Security Status: Revoked (R)"
  end
  if value == "D" then
    return "Security Status: Deleted (D)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
otc_markets_multicast_ats_v4_3.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.security_status, range, value, display)

  return offset + length, value
end

-- Disclosure Status
otc_markets_multicast_ats_v4_3.disclosure_status = {}

-- Size: Disclosure Status
otc_markets_multicast_ats_v4_3.disclosure_status.size = 1

-- Display: Disclosure Status
otc_markets_multicast_ats_v4_3.disclosure_status.display = function(value)
  if value == 0 then
    return "Disclosure Status: No Disclosure (0)"
  end
  if value == 2 then
    return "Disclosure Status: Current Information (2)"
  end
  if value == 3 then
    return "Disclosure Status: Limited Information (3)"
  end
  if value == 4 then
    return "Disclosure Status: No Information (4)"
  end

  return "Disclosure Status: Unknown("..value..")"
end

-- Dissect: Disclosure Status
otc_markets_multicast_ats_v4_3.disclosure_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.disclosure_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.disclosure_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.disclosure_status, range, value, display)

  return offset + length, value
end

-- Reporting Status
otc_markets_multicast_ats_v4_3.reporting_status = {}

-- Size: Reporting Status
otc_markets_multicast_ats_v4_3.reporting_status.size = 1

-- Display: Reporting Status
otc_markets_multicast_ats_v4_3.reporting_status.display = function(value)
  if value == "A" then
    return "Reporting Status: Alternative Reporting (A)"
  end
  if value == "B" then
    return "Reporting Status: Bank Thrift (B)"
  end
  if value == "F" then
    return "Reporting Status: Sec Reporting (F)"
  end
  if value == "G" then
    return "Reporting Status: International Reporting (G)"
  end
  if value == "I" then
    return "Reporting Status: Insurance Company (I)"
  end
  if value == "N" then
    return "Reporting Status: No Reporting (N)"
  end
  if value == "O" then
    return "Reporting Status: Other Reporting (O)"
  end
  if value == "R" then
    return "Reporting Status: Finra Reporting (R)"
  end
  if value == "V" then
    return "Reporting Status: Sec Investment Company (V)"
  end
  if value == "W" then
    return "Reporting Status: Sec Reg A (W)"
  end

  return "Reporting Status: Unknown("..value..")"
end

-- Dissect: Reporting Status
otc_markets_multicast_ats_v4_3.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Tier
otc_markets_multicast_ats_v4_3.tier = {}

-- Size: Tier
otc_markets_multicast_ats_v4_3.tier.size = 1

-- Display: Tier
otc_markets_multicast_ats_v4_3.tier.display = function(value)
  if value == 0 then
    return "Tier: No Tier (0)"
  end
  if value == 1 then
    return "Tier: Otcqxus Premier (1)"
  end
  if value == 2 then
    return "Tier: Otcqxus (2)"
  end
  if value == 5 then
    return "Tier: Otcqx International Premier (5)"
  end
  if value == 6 then
    return "Tier: Otcqx International (6)"
  end
  if value == 10 then
    return "Tier: Otcqb (10)"
  end
  if value == 11 then
    return "Tier: Otcbb Only (11)"
  end
  if value == 20 then
    return "Tier: Pink Current (20)"
  end
  if value == 21 then
    return "Tier: Pink Limited (21)"
  end
  if value == 22 then
    return "Tier: Pink No Information (22)"
  end
  if value == 30 then
    return "Tier: Grey Market (30)"
  end
  if value == 40 then
    return "Tier: Expert Market (40)"
  end
  if value == 50 then
    return "Tier: Otc Bonds (50)"
  end

  return "Tier: Unknown("..value..")"
end

-- Dissect: Tier
otc_markets_multicast_ats_v4_3.tier.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.tier, range, value, display)

  return offset + length, value
end

-- Security Flags
otc_markets_multicast_ats_v4_3.security_flags = {}

-- Size: Security Flags
otc_markets_multicast_ats_v4_3.security_flags.size = 1

-- Display: Security Flags
otc_markets_multicast_ats_v4_3.security_flags.display = function(range, value, packet, parent)
  local display = ""

  -- Is Piggyback flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Piggyback|"
  end
  -- Is Caveat Emptor Warning flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Caveat Emptor Warning|"
  end
  -- Is Qualified Institutional Buyers Only flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Qualified Institutional Buyers Only|"
  end
  -- Is Unsolicited Only flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Unsolicited Only|"
  end
  -- Is Bb Quoted flag set?
  if bit.band(value, 0x10) ~= 0 then
    display = display.."Bb Quoted|"
  end
  -- Is Otc Link Ecn Eligible flag set?
  if bit.band(value, 0x20) ~= 0 then
    display = display.."Otc Link Ecn Eligible|"
  end
  -- Is Otc Link Messaging Disabled flag set?
  if bit.band(value, 0x40) ~= 0 then
    display = display.."Otc Link Messaging Disabled|"
  end
  -- Is Saturation Eligible flag set?
  if bit.band(value, 0x80) ~= 0 then
    display = display.."Saturation Eligible|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Security Flags
otc_markets_multicast_ats_v4_3.security_flags.bits = function(range, value, packet, parent)

  -- Piggyback: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.piggyback, range, value)

  -- Caveat Emptor Warning: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.caveat_emptor_warning, range, value)

  -- Qualified Institutional Buyers Only: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.qualified_institutional_buyers_only, range, value)

  -- Unsolicited Only: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.unsolicited_only, range, value)

  -- Bb Quoted: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.bb_quoted, range, value)

  -- Otc Link Ecn Eligible: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.otc_link_ecn_eligible, range, value)

  -- Otc Link Messaging Disabled: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.otc_link_messaging_disabled, range, value)

  -- Saturation Eligible: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.saturation_eligible, range, value)
end

-- Dissect: Security Flags
otc_markets_multicast_ats_v4_3.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otc_markets_multicast_ats_v4_3.security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.security_flags, range, display)

  if show.security_flags then
    otc_markets_multicast_ats_v4_3.security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Primary Market
otc_markets_multicast_ats_v4_3.primary_market = {}

-- Size: Primary Market
otc_markets_multicast_ats_v4_3.primary_market.size = 3

-- Display: Primary Market
otc_markets_multicast_ats_v4_3.primary_market.display = function(value)
  return "Primary Market: "..value
end

-- Dissect: Primary Market
otc_markets_multicast_ats_v4_3.primary_market.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.primary_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.primary_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.primary_market, range, value, display)

  return offset + length, value
end

-- Security Type
otc_markets_multicast_ats_v4_3.security_type = {}

-- Size: Security Type
otc_markets_multicast_ats_v4_3.security_type.size = 5

-- Display: Security Type
otc_markets_multicast_ats_v4_3.security_type.display = function(value)
  return "Security Type: "..value
end

-- Dissect: Security Type
otc_markets_multicast_ats_v4_3.security_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.security_type, range, value, display)

  return offset + length, value
end

-- Asset Class
otc_markets_multicast_ats_v4_3.asset_class = {}

-- Size: Asset Class
otc_markets_multicast_ats_v4_3.asset_class.size = 1

-- Display: Asset Class
otc_markets_multicast_ats_v4_3.asset_class.display = function(value)
  if value == 1 then
    return "Asset Class: Equity (1)"
  end
  if value == 2 then
    return "Asset Class: Fixed Income (2)"
  end

  return "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otc_markets_multicast_ats_v4_3.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Short Name
otc_markets_multicast_ats_v4_3.short_name = {}

-- Size: Short Name
otc_markets_multicast_ats_v4_3.short_name.size = 25

-- Display: Short Name
otc_markets_multicast_ats_v4_3.short_name.display = function(value)
  return "Short Name: "..value
end

-- Dissect: Short Name
otc_markets_multicast_ats_v4_3.short_name.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.short_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.short_name, range, value, display)

  return offset + length, value
end

-- Security Desc
otc_markets_multicast_ats_v4_3.security_desc = {}

-- Size: Security Desc
otc_markets_multicast_ats_v4_3.security_desc.size = 25

-- Display: Security Desc
otc_markets_multicast_ats_v4_3.security_desc.display = function(value)
  return "Security Desc: "..value
end

-- Dissect: Security Desc
otc_markets_multicast_ats_v4_3.security_desc.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.security_desc.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.security_desc.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.security_desc, range, value, display)

  return offset + length, value
end

-- Otc Issuer Id
otc_markets_multicast_ats_v4_3.otc_issuer_id = {}

-- Size: Otc Issuer Id
otc_markets_multicast_ats_v4_3.otc_issuer_id.size = 4

-- Display: Otc Issuer Id
otc_markets_multicast_ats_v4_3.otc_issuer_id.display = function(value)
  return "Otc Issuer Id: "..value
end

-- Dissect: Otc Issuer Id
otc_markets_multicast_ats_v4_3.otc_issuer_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.otc_issuer_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.otc_issuer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.otc_issuer_id, range, value, display)

  return offset + length, value
end

-- Security Action
otc_markets_multicast_ats_v4_3.security_action = {}

-- Size: Security Action
otc_markets_multicast_ats_v4_3.security_action.size = 1

-- Display: Security Action
otc_markets_multicast_ats_v4_3.security_action.display = function(value)
  if value == 1 then
    return "Security Action: Update (1)"
  end
  if value == 2 then
    return "Security Action: Add (2)"
  end
  if value == 3 then
    return "Security Action: Delete (3)"
  end
  if value == 4 then
    return "Security Action: Spin (4)"
  end

  return "Security Action: Unknown("..value..")"
end

-- Dissect: Security Action
otc_markets_multicast_ats_v4_3.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.security_action, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otc_markets_multicast_ats_v4_3.last_update_milli = {}

-- Size: Last Update Milli
otc_markets_multicast_ats_v4_3.last_update_milli.size = 8

-- Display: Last Update Milli
otc_markets_multicast_ats_v4_3.last_update_milli.display = function(value)
  return "Last Update Milli: "..value
end

-- Dissect: Last Update Milli
otc_markets_multicast_ats_v4_3.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.last_update_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.last_update_milli, range, value, display)

  return offset + length, value
end

-- Symbol
otc_markets_multicast_ats_v4_3.symbol = {}

-- Size: Symbol
otc_markets_multicast_ats_v4_3.symbol.size = 10

-- Display: Symbol
otc_markets_multicast_ats_v4_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otc_markets_multicast_ats_v4_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Extended Security No Cusip Message
otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message = {}

-- Calculate size of: Extended Security No Cusip Message
otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_3.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_3.symbol.size

  index = index + otc_markets_multicast_ats_v4_3.last_update_milli.size

  index = index + otc_markets_multicast_ats_v4_3.security_action.size

  index = index + otc_markets_multicast_ats_v4_3.otc_issuer_id.size

  index = index + otc_markets_multicast_ats_v4_3.security_desc.size

  index = index + otc_markets_multicast_ats_v4_3.short_name.size

  index = index + otc_markets_multicast_ats_v4_3.asset_class.size

  index = index + otc_markets_multicast_ats_v4_3.security_type.size

  index = index + otc_markets_multicast_ats_v4_3.primary_market.size

  index = index + otc_markets_multicast_ats_v4_3.security_id.size

  index = index + otc_markets_multicast_ats_v4_3.security_flags.size

  index = index + otc_markets_multicast_ats_v4_3.tier.size

  index = index + otc_markets_multicast_ats_v4_3.reporting_status.size

  index = index + otc_markets_multicast_ats_v4_3.disclosure_status.size

  index = index + otc_markets_multicast_ats_v4_3.security_status.size

  index = index + otc_markets_multicast_ats_v4_3.par_value.size

  index = index + otc_markets_multicast_ats_v4_3.coupon.size

  index = index + otc_markets_multicast_ats_v4_3.maturity_date_milli.size

  index = index + otc_markets_multicast_ats_v4_3.callable_date_milli.size

  index = index + otc_markets_multicast_ats_v4_3.adr_ratio.size

  index = index + otc_markets_multicast_ats_v4_3.adr_level.size

  index = index + otc_markets_multicast_ats_v4_3.security_detail_size.size

  -- Parse runtime size of: Security Detail
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + otc_markets_multicast_ats_v4_3.issuer_size.size

  -- Parse runtime size of: Issuer Name
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Extended Security No Cusip Message
otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Security No Cusip Message
otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: UTF-8
  index, symbol = otc_markets_multicast_ats_v4_3.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Unsigned Integer
  index, last_update_milli = otc_markets_multicast_ats_v4_3.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Unsigned Integer
  index, security_action = otc_markets_multicast_ats_v4_3.security_action.dissect(buffer, index, packet, parent)

  -- Otc Issuer Id: Unsigned Integer
  index, otc_issuer_id = otc_markets_multicast_ats_v4_3.otc_issuer_id.dissect(buffer, index, packet, parent)

  -- Security Desc: UTF-8
  index, security_desc = otc_markets_multicast_ats_v4_3.security_desc.dissect(buffer, index, packet, parent)

  -- Short Name: UTF-8
  index, short_name = otc_markets_multicast_ats_v4_3.short_name.dissect(buffer, index, packet, parent)

  -- Asset Class: Unsigned Integer
  index, asset_class = otc_markets_multicast_ats_v4_3.asset_class.dissect(buffer, index, packet, parent)

  -- Security Type: UTF-8
  index, security_type = otc_markets_multicast_ats_v4_3.security_type.dissect(buffer, index, packet, parent)

  -- Primary Market: UTF-8
  index, primary_market = otc_markets_multicast_ats_v4_3.primary_market.dissect(buffer, index, packet, parent)

  -- Security Id: Unsigned Integer
  index, security_id = otc_markets_multicast_ats_v4_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 8 fields
  index, security_flags = otc_markets_multicast_ats_v4_3.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Unsigned Integer
  index, tier = otc_markets_multicast_ats_v4_3.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: UTF-8
  index, reporting_status = otc_markets_multicast_ats_v4_3.reporting_status.dissect(buffer, index, packet, parent)

  -- Disclosure Status: Unsigned Integer
  index, disclosure_status = otc_markets_multicast_ats_v4_3.disclosure_status.dissect(buffer, index, packet, parent)

  -- Security Status: UTF-8
  index, security_status = otc_markets_multicast_ats_v4_3.security_status.dissect(buffer, index, packet, parent)

  -- Par Value: Unsigned Integer
  index, par_value = otc_markets_multicast_ats_v4_3.par_value.dissect(buffer, index, packet, parent)

  -- Coupon: Unsigned Integer
  index, coupon = otc_markets_multicast_ats_v4_3.coupon.dissect(buffer, index, packet, parent)

  -- Maturity Date Milli: Unsigned Integer
  index, maturity_date_milli = otc_markets_multicast_ats_v4_3.maturity_date_milli.dissect(buffer, index, packet, parent)

  -- Callable Date Milli: Unsigned Integer
  index, callable_date_milli = otc_markets_multicast_ats_v4_3.callable_date_milli.dissect(buffer, index, packet, parent)

  -- Adr Ratio: Unsigned Integer
  index, adr_ratio = otc_markets_multicast_ats_v4_3.adr_ratio.dissect(buffer, index, packet, parent)

  -- Adr Level: UTF-8
  index, adr_level = otc_markets_multicast_ats_v4_3.adr_level.dissect(buffer, index, packet, parent)

  -- Security Detail Size: Unsigned Integer
  index, security_detail_size = otc_markets_multicast_ats_v4_3.security_detail_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Security Detail
  index, security_detail = otc_markets_multicast_ats_v4_3.security_detail.dissect(buffer, index, packet, parent, security_detail_size)

  -- Issuer Size: Unsigned Integer
  index, issuer_size = otc_markets_multicast_ats_v4_3.issuer_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Issuer Name
  index, issuer_name = otc_markets_multicast_ats_v4_3.issuer_name.dissect(buffer, index, packet, parent, issuer_size)

  return index
end

-- Dissect: Extended Security No Cusip Message
otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.extended_security_no_cusip_message then
    local length = otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message.display(buffer, packet, parent)
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.extended_security_no_cusip_message, range, display)
  end

  return otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message.fields(buffer, offset, packet, parent)
end

-- Cusip
otc_markets_multicast_ats_v4_3.cusip = {}

-- Size: Cusip
otc_markets_multicast_ats_v4_3.cusip.size = 9

-- Display: Cusip
otc_markets_multicast_ats_v4_3.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
otc_markets_multicast_ats_v4_3.cusip.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.cusip.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.cusip, range, value, display)

  return offset + length, value
end

-- Extended Security Flags
otc_markets_multicast_ats_v4_3.extended_security_flags = {}

-- Size: Extended Security Flags
otc_markets_multicast_ats_v4_3.extended_security_flags.size = 2

-- Display: Extended Security Flags
otc_markets_multicast_ats_v4_3.extended_security_flags.display = function(range, value, packet, parent)
  local display = ""

  -- Is Piggyback flag set?
  if bit.band(value, 0x0001) ~= 0 then
    display = display.."Piggyback|"
  end
  -- Is Caveat Emptor Warning flag set?
  if bit.band(value, 0x0002) ~= 0 then
    display = display.."Caveat Emptor Warning|"
  end
  -- Is Qualified Institutional Buyers Only flag set?
  if bit.band(value, 0x0004) ~= 0 then
    display = display.."Qualified Institutional Buyers Only|"
  end
  -- Is Unsolicited Only flag set?
  if bit.band(value, 0x0008) ~= 0 then
    display = display.."Unsolicited Only|"
  end
  -- Is Sponsored Status flag set?
  if bit.band(value, 0x0010) ~= 0 then
    display = display.."Sponsored Status|"
  end
  -- Is Otc Link Ecn Eligible flag set?
  if bit.band(value, 0x0020) ~= 0 then
    display = display.."Otc Link Ecn Eligible|"
  end
  -- Is Otc Link Messaging Disabled flag set?
  if bit.band(value, 0x0040) ~= 0 then
    display = display.."Otc Link Messaging Disabled|"
  end
  -- Is Saturation Eligible flag set?
  if bit.band(value, 0x0080) ~= 0 then
    display = display.."Saturation Eligible|"
  end
  -- Is Investment Grade flag set?
  if bit.band(value, 0x0100) ~= 0 then
    display = display.."Investment Grade|"
  end
  -- Is Trading Flat flag set?
  if bit.band(value, 0x0200) ~= 0 then
    display = display.."Trading Flat|"
  end
  -- Is Callable flag set?
  if bit.band(value, 0x0400) ~= 0 then
    display = display.."Callable|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Extended Security Flags
otc_markets_multicast_ats_v4_3.extended_security_flags.bits = function(range, value, packet, parent)

  -- Piggyback: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.piggyback, range, value)

  -- Caveat Emptor Warning: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.caveat_emptor_warning, range, value)

  -- Qualified Institutional Buyers Only: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.qualified_institutional_buyers_only, range, value)

  -- Unsolicited Only: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.unsolicited_only, range, value)

  -- Sponsored Status: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.sponsored_status, range, value)

  -- Otc Link Ecn Eligible: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.otc_link_ecn_eligible, range, value)

  -- Otc Link Messaging Disabled: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.otc_link_messaging_disabled, range, value)

  -- Saturation Eligible: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.saturation_eligible, range, value)

  -- Investment Grade: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.investment_grade, range, value)

  -- Trading Flat: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.trading_flat, range, value)

  -- Callable: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.callable, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.reserved_5, range, value)
end

-- Dissect: Extended Security Flags
otc_markets_multicast_ats_v4_3.extended_security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otc_markets_multicast_ats_v4_3.extended_security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.extended_security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.extended_security_flags, range, display)

  if show.extended_security_flags then
    otc_markets_multicast_ats_v4_3.extended_security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Extended Security Message
otc_markets_multicast_ats_v4_3.extended_security_message = {}

-- Calculate size of: Extended Security Message
otc_markets_multicast_ats_v4_3.extended_security_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_3.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_3.symbol.size

  index = index + otc_markets_multicast_ats_v4_3.last_update_milli.size

  index = index + otc_markets_multicast_ats_v4_3.security_action.size

  index = index + otc_markets_multicast_ats_v4_3.otc_issuer_id.size

  index = index + otc_markets_multicast_ats_v4_3.security_desc.size

  index = index + otc_markets_multicast_ats_v4_3.short_name.size

  index = index + otc_markets_multicast_ats_v4_3.asset_class.size

  index = index + otc_markets_multicast_ats_v4_3.security_type.size

  index = index + otc_markets_multicast_ats_v4_3.primary_market.size

  index = index + otc_markets_multicast_ats_v4_3.security_id.size

  index = index + otc_markets_multicast_ats_v4_3.extended_security_flags.size

  index = index + otc_markets_multicast_ats_v4_3.tier.size

  index = index + otc_markets_multicast_ats_v4_3.reporting_status.size

  index = index + otc_markets_multicast_ats_v4_3.disclosure_status.size

  index = index + otc_markets_multicast_ats_v4_3.security_status.size

  index = index + otc_markets_multicast_ats_v4_3.par_value.size

  index = index + otc_markets_multicast_ats_v4_3.coupon.size

  index = index + otc_markets_multicast_ats_v4_3.maturity_date_milli.size

  index = index + otc_markets_multicast_ats_v4_3.callable_date_milli.size

  index = index + otc_markets_multicast_ats_v4_3.adr_ratio.size

  index = index + otc_markets_multicast_ats_v4_3.adr_level.size

  index = index + otc_markets_multicast_ats_v4_3.security_detail_size.size

  -- Parse runtime size of: Security Detail
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + otc_markets_multicast_ats_v4_3.issuer_size.size

  -- Parse runtime size of: Issuer Name
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + otc_markets_multicast_ats_v4_3.cusip.size

  return index
end

-- Display: Extended Security Message
otc_markets_multicast_ats_v4_3.extended_security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Security Message
otc_markets_multicast_ats_v4_3.extended_security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: UTF-8
  index, symbol = otc_markets_multicast_ats_v4_3.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Unsigned Integer
  index, last_update_milli = otc_markets_multicast_ats_v4_3.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Unsigned Integer
  index, security_action = otc_markets_multicast_ats_v4_3.security_action.dissect(buffer, index, packet, parent)

  -- Otc Issuer Id: Unsigned Integer
  index, otc_issuer_id = otc_markets_multicast_ats_v4_3.otc_issuer_id.dissect(buffer, index, packet, parent)

  -- Security Desc: UTF-8
  index, security_desc = otc_markets_multicast_ats_v4_3.security_desc.dissect(buffer, index, packet, parent)

  -- Short Name: UTF-8
  index, short_name = otc_markets_multicast_ats_v4_3.short_name.dissect(buffer, index, packet, parent)

  -- Asset Class: Unsigned Integer
  index, asset_class = otc_markets_multicast_ats_v4_3.asset_class.dissect(buffer, index, packet, parent)

  -- Security Type: UTF-8
  index, security_type = otc_markets_multicast_ats_v4_3.security_type.dissect(buffer, index, packet, parent)

  -- Primary Market: UTF-8
  index, primary_market = otc_markets_multicast_ats_v4_3.primary_market.dissect(buffer, index, packet, parent)

  -- Security Id: Unsigned Integer
  index, security_id = otc_markets_multicast_ats_v4_3.security_id.dissect(buffer, index, packet, parent)

  -- Extended Security Flags: Struct of 12 fields
  index, extended_security_flags = otc_markets_multicast_ats_v4_3.extended_security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Unsigned Integer
  index, tier = otc_markets_multicast_ats_v4_3.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: UTF-8
  index, reporting_status = otc_markets_multicast_ats_v4_3.reporting_status.dissect(buffer, index, packet, parent)

  -- Disclosure Status: Unsigned Integer
  index, disclosure_status = otc_markets_multicast_ats_v4_3.disclosure_status.dissect(buffer, index, packet, parent)

  -- Security Status: UTF-8
  index, security_status = otc_markets_multicast_ats_v4_3.security_status.dissect(buffer, index, packet, parent)

  -- Par Value: Unsigned Integer
  index, par_value = otc_markets_multicast_ats_v4_3.par_value.dissect(buffer, index, packet, parent)

  -- Coupon: Unsigned Integer
  index, coupon = otc_markets_multicast_ats_v4_3.coupon.dissect(buffer, index, packet, parent)

  -- Maturity Date Milli: Unsigned Integer
  index, maturity_date_milli = otc_markets_multicast_ats_v4_3.maturity_date_milli.dissect(buffer, index, packet, parent)

  -- Callable Date Milli: Unsigned Integer
  index, callable_date_milli = otc_markets_multicast_ats_v4_3.callable_date_milli.dissect(buffer, index, packet, parent)

  -- Adr Ratio: Unsigned Integer
  index, adr_ratio = otc_markets_multicast_ats_v4_3.adr_ratio.dissect(buffer, index, packet, parent)

  -- Adr Level: UTF-8
  index, adr_level = otc_markets_multicast_ats_v4_3.adr_level.dissect(buffer, index, packet, parent)

  -- Security Detail Size: Unsigned Integer
  index, security_detail_size = otc_markets_multicast_ats_v4_3.security_detail_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Security Detail
  index, security_detail = otc_markets_multicast_ats_v4_3.security_detail.dissect(buffer, index, packet, parent, security_detail_size)

  -- Issuer Size: Unsigned Integer
  index, issuer_size = otc_markets_multicast_ats_v4_3.issuer_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Issuer Name
  index, issuer_name = otc_markets_multicast_ats_v4_3.issuer_name.dissect(buffer, index, packet, parent, issuer_size)

  -- Cusip: UTF-8
  index, cusip = otc_markets_multicast_ats_v4_3.cusip.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Security Message
otc_markets_multicast_ats_v4_3.extended_security_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.extended_security_message then
    local length = otc_markets_multicast_ats_v4_3.extended_security_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = otc_markets_multicast_ats_v4_3.extended_security_message.display(buffer, packet, parent)
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.extended_security_message, range, display)
  end

  return otc_markets_multicast_ats_v4_3.extended_security_message.fields(buffer, offset, packet, parent)
end

-- Time Milli
otc_markets_multicast_ats_v4_3.time_milli = {}

-- Size: Time Milli
otc_markets_multicast_ats_v4_3.time_milli.size = 8

-- Display: Time Milli
otc_markets_multicast_ats_v4_3.time_milli.display = function(value)
  return "Time Milli: "..value
end

-- Dissect: Time Milli
otc_markets_multicast_ats_v4_3.time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.time_milli, range, value, display)

  return offset + length, value
end

-- Size
otc_markets_multicast_ats_v4_3.size = {}

-- Size: Size
otc_markets_multicast_ats_v4_3.size.size = 4

-- Display: Size
otc_markets_multicast_ats_v4_3.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
otc_markets_multicast_ats_v4_3.size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.size, range, value, display)

  return offset + length, value
end

-- Price
otc_markets_multicast_ats_v4_3.price = {}

-- Size: Price
otc_markets_multicast_ats_v4_3.price.size = 8

-- Display: Price
otc_markets_multicast_ats_v4_3.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
otc_markets_multicast_ats_v4_3.price.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.price, range, value, display)

  return offset + length, value
end

-- Quote Flags
otc_markets_multicast_ats_v4_3.quote_flags = {}

-- Size: Quote Flags
otc_markets_multicast_ats_v4_3.quote_flags.size = 1

-- Display: Quote Flags
otc_markets_multicast_ats_v4_3.quote_flags.display = function(range, value, packet, parent)
  local display = ""

  -- Is Update Side flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Update Side|"
  end
  -- Is State flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."State|"
  end
  -- Is Ask Unsolicited flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Ask Unsolicited|"
  end
  -- Is Ask Priced flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Ask Priced|"
  end
  -- Is Ask Bid Wanted flag set?
  if bit.band(value, 0x10) ~= 0 then
    display = display.."Ask Bid Wanted|"
  end
  -- Is Bid Unsolicited flag set?
  if bit.band(value, 0x20) ~= 0 then
    display = display.."Bid Unsolicited|"
  end
  -- Is Bid Priced flag set?
  if bit.band(value, 0x40) ~= 0 then
    display = display.."Bid Priced|"
  end
  -- Is Bid Ask Wanted flag set?
  if bit.band(value, 0x80) ~= 0 then
    display = display.."Bid Ask Wanted|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Quote Flags
otc_markets_multicast_ats_v4_3.quote_flags.bits = function(range, value, packet, parent)

  -- Update Side: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.update_side, range, value)

  -- State: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.state, range, value)

  -- Ask Unsolicited: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.ask_unsolicited, range, value)

  -- Ask Priced: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.ask_priced, range, value)

  -- Ask Bid Wanted: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.ask_bid_wanted, range, value)

  -- Bid Unsolicited: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.bid_unsolicited, range, value)

  -- Bid Priced: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.bid_priced, range, value)

  -- Bid Ask Wanted: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.bid_ask_wanted, range, value)
end

-- Dissect: Quote Flags
otc_markets_multicast_ats_v4_3.quote_flags.dissect = function(buffer, offset, packet, parent)
  local size = otc_markets_multicast_ats_v4_3.quote_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.quote_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.quote_flags, range, display)

  if show.quote_flags then
    otc_markets_multicast_ats_v4_3.quote_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Reference Price Id
otc_markets_multicast_ats_v4_3.reference_price_id = {}

-- Size: Reference Price Id
otc_markets_multicast_ats_v4_3.reference_price_id.size = 4

-- Display: Reference Price Id
otc_markets_multicast_ats_v4_3.reference_price_id.display = function(value)
  return "Reference Price Id: "..value
end

-- Dissect: Reference Price Id
otc_markets_multicast_ats_v4_3.reference_price_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.reference_price_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.reference_price_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.reference_price_id, range, value, display)

  return offset + length, value
end

-- Reference Price Update Message
otc_markets_multicast_ats_v4_3.reference_price_update_message = {}

-- Size: Reference Price Update Message
otc_markets_multicast_ats_v4_3.reference_price_update_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.reference_price_id.size + 
  otc_markets_multicast_ats_v4_3.quote_flags.size + 
  otc_markets_multicast_ats_v4_3.price.size + 
  otc_markets_multicast_ats_v4_3.size.size + 
  otc_markets_multicast_ats_v4_3.time_milli.size

-- Display: Reference Price Update Message
otc_markets_multicast_ats_v4_3.reference_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Update Message
otc_markets_multicast_ats_v4_3.reference_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price Id: Unsigned Integer
  index, reference_price_id = otc_markets_multicast_ats_v4_3.reference_price_id.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_3.quote_flags.dissect(buffer, index, packet, parent)

  -- Price: Unsigned Integer
  index, price = otc_markets_multicast_ats_v4_3.price.dissect(buffer, index, packet, parent)

  -- Size: Unsigned Integer
  index, size = otc_markets_multicast_ats_v4_3.size.dissect(buffer, index, packet, parent)

  -- Time Milli: Unsigned Integer
  index, time_milli = otc_markets_multicast_ats_v4_3.time_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Update Message
otc_markets_multicast_ats_v4_3.reference_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.reference_price_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.reference_price_update_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.reference_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.reference_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.reference_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Time Milli
otc_markets_multicast_ats_v4_3.bid_time_milli = {}

-- Size: Bid Time Milli
otc_markets_multicast_ats_v4_3.bid_time_milli.size = 8

-- Display: Bid Time Milli
otc_markets_multicast_ats_v4_3.bid_time_milli.display = function(value)
  return "Bid Time Milli: "..value
end

-- Dissect: Bid Time Milli
otc_markets_multicast_ats_v4_3.bid_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.bid_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.bid_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.bid_time_milli, range, value, display)

  return offset + length, value
end

-- Bid Size
otc_markets_multicast_ats_v4_3.bid_size = {}

-- Size: Bid Size
otc_markets_multicast_ats_v4_3.bid_size.size = 4

-- Display: Bid Size
otc_markets_multicast_ats_v4_3.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
otc_markets_multicast_ats_v4_3.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price
otc_markets_multicast_ats_v4_3.bid_price = {}

-- Size: Bid Price
otc_markets_multicast_ats_v4_3.bid_price.size = 8

-- Display: Bid Price
otc_markets_multicast_ats_v4_3.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
otc_markets_multicast_ats_v4_3.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.bid_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Ask Time Milli
otc_markets_multicast_ats_v4_3.ask_time_milli = {}

-- Size: Ask Time Milli
otc_markets_multicast_ats_v4_3.ask_time_milli.size = 8

-- Display: Ask Time Milli
otc_markets_multicast_ats_v4_3.ask_time_milli.display = function(value)
  return "Ask Time Milli: "..value
end

-- Dissect: Ask Time Milli
otc_markets_multicast_ats_v4_3.ask_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.ask_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.ask_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.ask_time_milli, range, value, display)

  return offset + length, value
end

-- Ask Size
otc_markets_multicast_ats_v4_3.ask_size = {}

-- Size: Ask Size
otc_markets_multicast_ats_v4_3.ask_size.size = 4

-- Display: Ask Size
otc_markets_multicast_ats_v4_3.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
otc_markets_multicast_ats_v4_3.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price
otc_markets_multicast_ats_v4_3.ask_price = {}

-- Size: Ask Price
otc_markets_multicast_ats_v4_3.ask_price.size = 8

-- Display: Ask Price
otc_markets_multicast_ats_v4_3.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
otc_markets_multicast_ats_v4_3.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.ask_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Reference Price Action
otc_markets_multicast_ats_v4_3.reference_price_action = {}

-- Size: Reference Price Action
otc_markets_multicast_ats_v4_3.reference_price_action.size = 1

-- Display: Reference Price Action
otc_markets_multicast_ats_v4_3.reference_price_action.display = function(value)
  if value == 2 then
    return "Reference Price Action: Add (2)"
  end
  if value == 3 then
    return "Reference Price Action: Delete (3)"
  end
  if value == 4 then
    return "Reference Price Action: Spin (4)"
  end

  return "Reference Price Action: Unknown("..value..")"
end

-- Dissect: Reference Price Action
otc_markets_multicast_ats_v4_3.reference_price_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.reference_price_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.reference_price_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.reference_price_action, range, value, display)

  return offset + length, value
end

-- Reference Price Message
otc_markets_multicast_ats_v4_3.reference_price_message = {}

-- Size: Reference Price Message
otc_markets_multicast_ats_v4_3.reference_price_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.reference_price_id.size + 
  otc_markets_multicast_ats_v4_3.reference_price_action.size + 
  otc_markets_multicast_ats_v4_3.quote_flags.size + 
  otc_markets_multicast_ats_v4_3.security_id.size + 
  otc_markets_multicast_ats_v4_3.ask_price.size + 
  otc_markets_multicast_ats_v4_3.ask_size.size + 
  otc_markets_multicast_ats_v4_3.ask_time_milli.size + 
  otc_markets_multicast_ats_v4_3.bid_price.size + 
  otc_markets_multicast_ats_v4_3.bid_size.size + 
  otc_markets_multicast_ats_v4_3.bid_time_milli.size

-- Display: Reference Price Message
otc_markets_multicast_ats_v4_3.reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Message
otc_markets_multicast_ats_v4_3.reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price Id: Unsigned Integer
  index, reference_price_id = otc_markets_multicast_ats_v4_3.reference_price_id.dissect(buffer, index, packet, parent)

  -- Reference Price Action: Unsigned Integer
  index, reference_price_action = otc_markets_multicast_ats_v4_3.reference_price_action.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_3.quote_flags.dissect(buffer, index, packet, parent)

  -- Security Id: Unsigned Integer
  index, security_id = otc_markets_multicast_ats_v4_3.security_id.dissect(buffer, index, packet, parent)

  -- Ask Price: Unsigned Integer
  index, ask_price = otc_markets_multicast_ats_v4_3.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Unsigned Integer
  index, ask_size = otc_markets_multicast_ats_v4_3.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Time Milli: Unsigned Integer
  index, ask_time_milli = otc_markets_multicast_ats_v4_3.ask_time_milli.dissect(buffer, index, packet, parent)

  -- Bid Price: Unsigned Integer
  index, bid_price = otc_markets_multicast_ats_v4_3.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Unsigned Integer
  index, bid_size = otc_markets_multicast_ats_v4_3.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Time Milli: Unsigned Integer
  index, bid_time_milli = otc_markets_multicast_ats_v4_3.bid_time_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
otc_markets_multicast_ats_v4_3.reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.reference_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.reference_price_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Num Priced Mp
otc_markets_multicast_ats_v4_3.num_priced_mp = {}

-- Size: Num Priced Mp
otc_markets_multicast_ats_v4_3.num_priced_mp.size = 1

-- Display: Num Priced Mp
otc_markets_multicast_ats_v4_3.num_priced_mp.display = function(value)
  return "Num Priced Mp: "..value
end

-- Dissect: Num Priced Mp
otc_markets_multicast_ats_v4_3.num_priced_mp.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.num_priced_mp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.num_priced_mp.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.num_priced_mp, range, value, display)

  return offset + length, value
end

-- Inside Time Milli
otc_markets_multicast_ats_v4_3.inside_time_milli = {}

-- Size: Inside Time Milli
otc_markets_multicast_ats_v4_3.inside_time_milli.size = 8

-- Display: Inside Time Milli
otc_markets_multicast_ats_v4_3.inside_time_milli.display = function(value)
  return "Inside Time Milli: "..value
end

-- Dissect: Inside Time Milli
otc_markets_multicast_ats_v4_3.inside_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.inside_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.inside_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.inside_time_milli, range, value, display)

  return offset + length, value
end

-- Inside Id
otc_markets_multicast_ats_v4_3.inside_id = {}

-- Size: Inside Id
otc_markets_multicast_ats_v4_3.inside_id.size = 4

-- Display: Inside Id
otc_markets_multicast_ats_v4_3.inside_id.display = function(value)
  return "Inside Id: "..value
end

-- Dissect: Inside Id
otc_markets_multicast_ats_v4_3.inside_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.inside_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.inside_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.inside_id, range, value, display)

  return offset + length, value
end

-- Inside Update Message
otc_markets_multicast_ats_v4_3.inside_update_message = {}

-- Size: Inside Update Message
otc_markets_multicast_ats_v4_3.inside_update_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.inside_id.size + 
  otc_markets_multicast_ats_v4_3.quote_flags.size + 
  otc_markets_multicast_ats_v4_3.price.size + 
  otc_markets_multicast_ats_v4_3.size.size + 
  otc_markets_multicast_ats_v4_3.inside_time_milli.size + 
  otc_markets_multicast_ats_v4_3.num_priced_mp.size

-- Display: Inside Update Message
otc_markets_multicast_ats_v4_3.inside_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inside Update Message
otc_markets_multicast_ats_v4_3.inside_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Inside Id: Unsigned Integer
  index, inside_id = otc_markets_multicast_ats_v4_3.inside_id.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_3.quote_flags.dissect(buffer, index, packet, parent)

  -- Price: Unsigned Integer
  index, price = otc_markets_multicast_ats_v4_3.price.dissect(buffer, index, packet, parent)

  -- Size: Unsigned Integer
  index, size = otc_markets_multicast_ats_v4_3.size.dissect(buffer, index, packet, parent)

  -- Inside Time Milli: Unsigned Integer
  index, inside_time_milli = otc_markets_multicast_ats_v4_3.inside_time_milli.dissect(buffer, index, packet, parent)

  -- Num Priced Mp: Unsigned Integer
  index, num_priced_mp = otc_markets_multicast_ats_v4_3.num_priced_mp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inside Update Message
otc_markets_multicast_ats_v4_3.inside_update_message.dissect = function(buffer, offset, packet, parent)
  if show.inside_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.inside_update_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.inside_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.inside_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.inside_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Close
otc_markets_multicast_ats_v4_3.market_close = {}

-- Size: Market Close
otc_markets_multicast_ats_v4_3.market_close.size = 8

-- Display: Market Close
otc_markets_multicast_ats_v4_3.market_close.display = function(value)
  return "Market Close: "..value
end

-- Dissect: Market Close
otc_markets_multicast_ats_v4_3.market_close.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.market_close.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.market_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.market_close, range, value, display)

  return offset + length, value
end

-- Market Open
otc_markets_multicast_ats_v4_3.market_open = {}

-- Size: Market Open
otc_markets_multicast_ats_v4_3.market_open.size = 8

-- Display: Market Open
otc_markets_multicast_ats_v4_3.market_open.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Market Open: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Market Open
otc_markets_multicast_ats_v4_3.market_open.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.market_open.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.market_open.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.market_open, range, value, display)

  return offset + length, value
end

-- Market Open Message
otc_markets_multicast_ats_v4_3.market_open_message = {}

-- Size: Market Open Message
otc_markets_multicast_ats_v4_3.market_open_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.market_open.size + 
  otc_markets_multicast_ats_v4_3.market_close.size

-- Display: Market Open Message
otc_markets_multicast_ats_v4_3.market_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Open Message
otc_markets_multicast_ats_v4_3.market_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Market Open: Unsigned Integer
  index, market_open = otc_markets_multicast_ats_v4_3.market_open.dissect(buffer, index, packet, parent)

  -- Market Close: Unsigned Integer
  index, market_close = otc_markets_multicast_ats_v4_3.market_close.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Open Message
otc_markets_multicast_ats_v4_3.market_open_message.dissect = function(buffer, offset, packet, parent)
  if show.market_open_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.market_open_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.market_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.market_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.market_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Quote Flags
otc_markets_multicast_ats_v4_3.extended_quote_flags = {}

-- Size: Extended Quote Flags
otc_markets_multicast_ats_v4_3.extended_quote_flags.size = 1

-- Display: Extended Quote Flags
otc_markets_multicast_ats_v4_3.extended_quote_flags.display = function(range, value, packet, parent)
  local display = ""

  -- Is Quote Saturated flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Quote Saturated|"
  end
  -- Is Bid Auto Ex flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Bid Auto Ex|"
  end
  -- Is Offer Auto Ex flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Offer Auto Ex|"
  end
  -- Is Nms Conditional Quote flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Nms Conditional Quote|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Extended Quote Flags
otc_markets_multicast_ats_v4_3.extended_quote_flags.bits = function(range, value, packet, parent)

  -- Quote Saturated: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.quote_saturated, range, value)

  -- Bid Auto Ex: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.bid_auto_ex, range, value)

  -- Offer Auto Ex: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.offer_auto_ex, range, value)

  -- Nms Conditional Quote: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.nms_conditional_quote, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.reserved_4, range, value)
end

-- Dissect: Extended Quote Flags
otc_markets_multicast_ats_v4_3.extended_quote_flags.dissect = function(buffer, offset, packet, parent)
  local size = otc_markets_multicast_ats_v4_3.extended_quote_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.extended_quote_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.extended_quote_flags, range, display)

  if show.extended_quote_flags then
    otc_markets_multicast_ats_v4_3.extended_quote_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Quote Reference Id
otc_markets_multicast_ats_v4_3.quote_reference_id = {}

-- Size: Quote Reference Id
otc_markets_multicast_ats_v4_3.quote_reference_id.size = 2

-- Display: Quote Reference Id
otc_markets_multicast_ats_v4_3.quote_reference_id.display = function(value)
  return "Quote Reference Id: "..value
end

-- Dissect: Quote Reference Id
otc_markets_multicast_ats_v4_3.quote_reference_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.quote_reference_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.quote_reference_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.quote_reference_id, range, value, display)

  return offset + length, value
end

-- Quote Time Milli
otc_markets_multicast_ats_v4_3.quote_time_milli = {}

-- Size: Quote Time Milli
otc_markets_multicast_ats_v4_3.quote_time_milli.size = 8

-- Display: Quote Time Milli
otc_markets_multicast_ats_v4_3.quote_time_milli.display = function(value)
  return "Quote Time Milli: "..value
end

-- Dissect: Quote Time Milli
otc_markets_multicast_ats_v4_3.quote_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.quote_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.quote_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.quote_time_milli, range, value, display)

  return offset + length, value
end

-- Qap
otc_markets_multicast_ats_v4_3.qap = {}

-- Size: Qap
otc_markets_multicast_ats_v4_3.qap.size = 1

-- Display: Qap
otc_markets_multicast_ats_v4_3.qap.display = function(value)
  return "Qap: "..value
end

-- Dissect: Qap
otc_markets_multicast_ats_v4_3.qap.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.qap.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = otc_markets_multicast_ats_v4_3.qap.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.qap, range, value, display)

  return offset + length, value
end

-- Quote Id
otc_markets_multicast_ats_v4_3.quote_id = {}

-- Size: Quote Id
otc_markets_multicast_ats_v4_3.quote_id.size = 4

-- Display: Quote Id
otc_markets_multicast_ats_v4_3.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
otc_markets_multicast_ats_v4_3.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.quote_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Quote Update Message
otc_markets_multicast_ats_v4_3.quote_update_message = {}

-- Size: Quote Update Message
otc_markets_multicast_ats_v4_3.quote_update_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.quote_id.size + 
  otc_markets_multicast_ats_v4_3.quote_flags.size + 
  otc_markets_multicast_ats_v4_3.price.size + 
  otc_markets_multicast_ats_v4_3.size.size + 
  otc_markets_multicast_ats_v4_3.qap.size + 
  otc_markets_multicast_ats_v4_3.quote_time_milli.size + 
  otc_markets_multicast_ats_v4_3.quote_reference_id.size + 
  otc_markets_multicast_ats_v4_3.extended_quote_flags.size

-- Display: Quote Update Message
otc_markets_multicast_ats_v4_3.quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Message
otc_markets_multicast_ats_v4_3.quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Quote Id: Unsigned Integer
  index, quote_id = otc_markets_multicast_ats_v4_3.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_3.quote_flags.dissect(buffer, index, packet, parent)

  -- Price: Unsigned Integer
  index, price = otc_markets_multicast_ats_v4_3.price.dissect(buffer, index, packet, parent)

  -- Size: Unsigned Integer
  index, size = otc_markets_multicast_ats_v4_3.size.dissect(buffer, index, packet, parent)

  -- Qap: Integer
  index, qap = otc_markets_multicast_ats_v4_3.qap.dissect(buffer, index, packet, parent)

  -- Quote Time Milli: Unsigned Integer
  index, quote_time_milli = otc_markets_multicast_ats_v4_3.quote_time_milli.dissect(buffer, index, packet, parent)

  -- Quote Reference Id: Unsigned Integer
  index, quote_reference_id = otc_markets_multicast_ats_v4_3.quote_reference_id.dissect(buffer, index, packet, parent)

  -- Extended Quote Flags: Struct of 5 fields
  index, extended_quote_flags = otc_markets_multicast_ats_v4_3.extended_quote_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Message
otc_markets_multicast_ats_v4_3.quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.quote_update_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Qap
otc_markets_multicast_ats_v4_3.bid_qap = {}

-- Size: Bid Qap
otc_markets_multicast_ats_v4_3.bid_qap.size = 1

-- Display: Bid Qap
otc_markets_multicast_ats_v4_3.bid_qap.display = function(value)
  return "Bid Qap: "..value
end

-- Dissect: Bid Qap
otc_markets_multicast_ats_v4_3.bid_qap.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.bid_qap.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = otc_markets_multicast_ats_v4_3.bid_qap.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.bid_qap, range, value, display)

  return offset + length, value
end

-- Ask Qap
otc_markets_multicast_ats_v4_3.ask_qap = {}

-- Size: Ask Qap
otc_markets_multicast_ats_v4_3.ask_qap.size = 1

-- Display: Ask Qap
otc_markets_multicast_ats_v4_3.ask_qap.display = function(value)
  return "Ask Qap: "..value
end

-- Dissect: Ask Qap
otc_markets_multicast_ats_v4_3.ask_qap.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.ask_qap.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = otc_markets_multicast_ats_v4_3.ask_qap.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.ask_qap, range, value, display)

  return offset + length, value
end

-- Mpid
otc_markets_multicast_ats_v4_3.mpid = {}

-- Size: Mpid
otc_markets_multicast_ats_v4_3.mpid.size = 4

-- Display: Mpid
otc_markets_multicast_ats_v4_3.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
otc_markets_multicast_ats_v4_3.mpid.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.mpid.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_3.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.mpid, range, value, display)

  return offset + length, value
end

-- Quote Action
otc_markets_multicast_ats_v4_3.quote_action = {}

-- Size: Quote Action
otc_markets_multicast_ats_v4_3.quote_action.size = 1

-- Display: Quote Action
otc_markets_multicast_ats_v4_3.quote_action.display = function(value)
  return "Quote Action: "..value
end

-- Dissect: Quote Action
otc_markets_multicast_ats_v4_3.quote_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.quote_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.quote_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.quote_action, range, value, display)

  return offset + length, value
end

-- Quote Message
otc_markets_multicast_ats_v4_3.quote_message = {}

-- Size: Quote Message
otc_markets_multicast_ats_v4_3.quote_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.quote_id.size + 
  otc_markets_multicast_ats_v4_3.quote_action.size + 
  otc_markets_multicast_ats_v4_3.quote_flags.size + 
  otc_markets_multicast_ats_v4_3.security_id.size + 
  otc_markets_multicast_ats_v4_3.mpid.size + 
  otc_markets_multicast_ats_v4_3.ask_price.size + 
  otc_markets_multicast_ats_v4_3.ask_size.size + 
  otc_markets_multicast_ats_v4_3.ask_qap.size + 
  otc_markets_multicast_ats_v4_3.ask_time_milli.size + 
  otc_markets_multicast_ats_v4_3.bid_price.size + 
  otc_markets_multicast_ats_v4_3.bid_size.size + 
  otc_markets_multicast_ats_v4_3.bid_qap.size + 
  otc_markets_multicast_ats_v4_3.bid_time_milli.size + 
  otc_markets_multicast_ats_v4_3.quote_reference_id.size + 
  otc_markets_multicast_ats_v4_3.extended_quote_flags.size

-- Display: Quote Message
otc_markets_multicast_ats_v4_3.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
otc_markets_multicast_ats_v4_3.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Quote Id: Unsigned Integer
  index, quote_id = otc_markets_multicast_ats_v4_3.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Action: Unsigned Integer
  index, quote_action = otc_markets_multicast_ats_v4_3.quote_action.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_3.quote_flags.dissect(buffer, index, packet, parent)

  -- Security Id: Unsigned Integer
  index, security_id = otc_markets_multicast_ats_v4_3.security_id.dissect(buffer, index, packet, parent)

  -- Mpid: UTF-8
  index, mpid = otc_markets_multicast_ats_v4_3.mpid.dissect(buffer, index, packet, parent)

  -- Ask Price: Unsigned Integer
  index, ask_price = otc_markets_multicast_ats_v4_3.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Unsigned Integer
  index, ask_size = otc_markets_multicast_ats_v4_3.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Qap: Integer
  index, ask_qap = otc_markets_multicast_ats_v4_3.ask_qap.dissect(buffer, index, packet, parent)

  -- Ask Time Milli: Unsigned Integer
  index, ask_time_milli = otc_markets_multicast_ats_v4_3.ask_time_milli.dissect(buffer, index, packet, parent)

  -- Bid Price: Unsigned Integer
  index, bid_price = otc_markets_multicast_ats_v4_3.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Unsigned Integer
  index, bid_size = otc_markets_multicast_ats_v4_3.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Qap: Integer
  index, bid_qap = otc_markets_multicast_ats_v4_3.bid_qap.dissect(buffer, index, packet, parent)

  -- Bid Time Milli: Unsigned Integer
  index, bid_time_milli = otc_markets_multicast_ats_v4_3.bid_time_milli.dissect(buffer, index, packet, parent)

  -- Quote Reference Id: Unsigned Integer
  index, quote_reference_id = otc_markets_multicast_ats_v4_3.quote_reference_id.dissect(buffer, index, packet, parent)

  -- Extended Quote Flags: Struct of 5 fields
  index, extended_quote_flags = otc_markets_multicast_ats_v4_3.extended_quote_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
otc_markets_multicast_ats_v4_3.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.quote_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Message
otc_markets_multicast_ats_v4_3.security_message = {}

-- Size: Security Message
otc_markets_multicast_ats_v4_3.security_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.symbol.size + 
  otc_markets_multicast_ats_v4_3.last_update_milli.size + 
  otc_markets_multicast_ats_v4_3.security_action.size + 
  otc_markets_multicast_ats_v4_3.asset_class.size + 
  otc_markets_multicast_ats_v4_3.security_id.size + 
  otc_markets_multicast_ats_v4_3.security_flags.size + 
  otc_markets_multicast_ats_v4_3.tier.size + 
  otc_markets_multicast_ats_v4_3.reporting_status.size + 
  otc_markets_multicast_ats_v4_3.security_status.size

-- Display: Security Message
otc_markets_multicast_ats_v4_3.security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Message
otc_markets_multicast_ats_v4_3.security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: UTF-8
  index, symbol = otc_markets_multicast_ats_v4_3.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Unsigned Integer
  index, last_update_milli = otc_markets_multicast_ats_v4_3.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Unsigned Integer
  index, security_action = otc_markets_multicast_ats_v4_3.security_action.dissect(buffer, index, packet, parent)

  -- Asset Class: Unsigned Integer
  index, asset_class = otc_markets_multicast_ats_v4_3.asset_class.dissect(buffer, index, packet, parent)

  -- Security Id: Unsigned Integer
  index, security_id = otc_markets_multicast_ats_v4_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 8 fields
  index, security_flags = otc_markets_multicast_ats_v4_3.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Unsigned Integer
  index, tier = otc_markets_multicast_ats_v4_3.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: UTF-8
  index, reporting_status = otc_markets_multicast_ats_v4_3.reporting_status.dissect(buffer, index, packet, parent)

  -- Security Status: UTF-8
  index, security_status = otc_markets_multicast_ats_v4_3.security_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
otc_markets_multicast_ats_v4_3.security_message.dissect = function(buffer, offset, packet, parent)
  if show.security_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.security_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.security_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Msg Ct
otc_markets_multicast_ats_v4_3.market_msg_ct = {}

-- Size: Market Msg Ct
otc_markets_multicast_ats_v4_3.market_msg_ct.size = 4

-- Display: Market Msg Ct
otc_markets_multicast_ats_v4_3.market_msg_ct.display = function(value)
  return "Market Msg Ct: "..value
end

-- Dissect: Market Msg Ct
otc_markets_multicast_ats_v4_3.market_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.market_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.market_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.market_msg_ct, range, value, display)

  return offset + length, value
end

-- Market Close Time Milli
otc_markets_multicast_ats_v4_3.market_close_time_milli = {}

-- Size: Market Close Time Milli
otc_markets_multicast_ats_v4_3.market_close_time_milli.size = 8

-- Display: Market Close Time Milli
otc_markets_multicast_ats_v4_3.market_close_time_milli.display = function(value)
  return "Market Close Time Milli: "..value
end

-- Dissect: Market Close Time Milli
otc_markets_multicast_ats_v4_3.market_close_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.market_close_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.market_close_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.market_close_time_milli, range, value, display)

  return offset + length, value
end

-- Market Close Message
otc_markets_multicast_ats_v4_3.market_close_message = {}

-- Size: Market Close Message
otc_markets_multicast_ats_v4_3.market_close_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.market_close_time_milli.size + 
  otc_markets_multicast_ats_v4_3.market_msg_ct.size

-- Display: Market Close Message
otc_markets_multicast_ats_v4_3.market_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Close Message
otc_markets_multicast_ats_v4_3.market_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Market Close Time Milli: Unsigned Integer
  index, market_close_time_milli = otc_markets_multicast_ats_v4_3.market_close_time_milli.dissect(buffer, index, packet, parent)

  -- Market Msg Ct: Unsigned Integer
  index, market_msg_ct = otc_markets_multicast_ats_v4_3.market_msg_ct.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Close Message
otc_markets_multicast_ats_v4_3.market_close_message.dissect = function(buffer, offset, packet, parent)
  if show.market_close_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.market_close_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.market_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.market_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.market_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Last Seq Num
otc_markets_multicast_ats_v4_3.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otc_markets_multicast_ats_v4_3.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otc_markets_multicast_ats_v4_3.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otc_markets_multicast_ats_v4_3.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otc_markets_multicast_ats_v4_3.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otc_markets_multicast_ats_v4_3.spin_end_time_milli.size = 8

-- Display: Spin End Time Milli
otc_markets_multicast_ats_v4_3.spin_end_time_milli.display = function(value)
  return "Spin End Time Milli: "..value
end

-- Dissect: Spin End Time Milli
otc_markets_multicast_ats_v4_3.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.spin_end_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.spin_end_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otc_markets_multicast_ats_v4_3.spin_msg_ct = {}

-- Size: Spin Msg Ct
otc_markets_multicast_ats_v4_3.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otc_markets_multicast_ats_v4_3.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otc_markets_multicast_ats_v4_3.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Type
otc_markets_multicast_ats_v4_3.spin_type = {}

-- Size: Spin Type
otc_markets_multicast_ats_v4_3.spin_type.size = 1

-- Display: Spin Type
otc_markets_multicast_ats_v4_3.spin_type.display = function(value)
  if value == 1 then
    return "Spin Type: Reference (1)"
  end
  if value == 2 then
    return "Spin Type: Market Data (2)"
  end
  if value == 3 then
    return "Spin Type: Opening (3)"
  end

  return "Spin Type: Unknown("..value..")"
end

-- Dissect: Spin Type
otc_markets_multicast_ats_v4_3.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.spin_type, range, value, display)

  return offset + length, value
end

-- End Of Spin Message
otc_markets_multicast_ats_v4_3.end_of_spin_message = {}

-- Size: End Of Spin Message
otc_markets_multicast_ats_v4_3.end_of_spin_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.spin_type.size + 
  otc_markets_multicast_ats_v4_3.spin_msg_ct.size + 
  otc_markets_multicast_ats_v4_3.spin_end_time_milli.size + 
  otc_markets_multicast_ats_v4_3.spin_last_seq_num.size

-- Display: End Of Spin Message
otc_markets_multicast_ats_v4_3.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otc_markets_multicast_ats_v4_3.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Spin Type: Unsigned Byte
  index, spin_type = otc_markets_multicast_ats_v4_3.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: Unsigned Integer
  index, spin_msg_ct = otc_markets_multicast_ats_v4_3.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: Unsigned Integer
  index, spin_end_time_milli = otc_markets_multicast_ats_v4_3.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Unsigned Integer
  index, spin_last_seq_num = otc_markets_multicast_ats_v4_3.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otc_markets_multicast_ats_v4_3.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_spin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.end_of_spin_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Start Time Milli
otc_markets_multicast_ats_v4_3.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otc_markets_multicast_ats_v4_3.spin_start_time_milli.size = 8

-- Display: Spin Start Time Milli
otc_markets_multicast_ats_v4_3.spin_start_time_milli.display = function(value)
  return "Spin Start Time Milli: "..value
end

-- Dissect: Spin Start Time Milli
otc_markets_multicast_ats_v4_3.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_3.spin_start_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.spin_start_time_milli, range, value, display)

  return offset + length, value
end

-- Start Of Spin Message
otc_markets_multicast_ats_v4_3.start_of_spin_message = {}

-- Size: Start Of Spin Message
otc_markets_multicast_ats_v4_3.start_of_spin_message.size =
  otc_markets_multicast_ats_v4_3.channel_seq_num.size + 
  otc_markets_multicast_ats_v4_3.spin_type.size + 
  otc_markets_multicast_ats_v4_3.spin_start_time_milli.size + 
  otc_markets_multicast_ats_v4_3.spin_last_seq_num.size

-- Display: Start Of Spin Message
otc_markets_multicast_ats_v4_3.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otc_markets_multicast_ats_v4_3.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_3.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Spin Type: Unsigned Byte
  index, spin_type = otc_markets_multicast_ats_v4_3.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: Unsigned Integer
  index, spin_start_time_milli = otc_markets_multicast_ats_v4_3.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Unsigned Integer
  index, spin_last_seq_num = otc_markets_multicast_ats_v4_3.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otc_markets_multicast_ats_v4_3.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_spin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.start_of_spin_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otc_markets_multicast_ats_v4_3.payload = {}

-- Size: Payload
otc_markets_multicast_ats_v4_3.payload.size = function(buffer, offset, message_type)
  -- Size of Start Of Spin Message
  if message_type == 11 then
    return otc_markets_multicast_ats_v4_3.start_of_spin_message.size
  end
  -- Size of End Of Spin Message
  if message_type == 12 then
    return otc_markets_multicast_ats_v4_3.end_of_spin_message.size
  end
  -- Size of Market Open Message
  if message_type == 13 then
    return otc_markets_multicast_ats_v4_3.market_open_message.size
  end
  -- Size of Market Close Message
  if message_type == 14 then
    return otc_markets_multicast_ats_v4_3.market_close_message.size
  end
  -- Size of Security Message
  if message_type == 9 then
    return otc_markets_multicast_ats_v4_3.security_message.size
  end
  -- Size of Quote Message
  if message_type == 1 then
    return otc_markets_multicast_ats_v4_3.quote_message.size
  end
  -- Size of Quote Update Message
  if message_type == 2 then
    return otc_markets_multicast_ats_v4_3.quote_update_message.size
  end
  -- Size of Market Open Message
  if message_type == 3 then
    return otc_markets_multicast_ats_v4_3.market_open_message.size
  end
  -- Size of Inside Update Message
  if message_type == 4 then
    return otc_markets_multicast_ats_v4_3.inside_update_message.size
  end
  -- Size of Reference Price Message
  if message_type == 7 then
    return otc_markets_multicast_ats_v4_3.reference_price_message.size
  end
  -- Size of Reference Price Update Message
  if message_type == 8 then
    return otc_markets_multicast_ats_v4_3.reference_price_update_message.size
  end
  -- Size of Extended Security Message
  if message_type == 15 then
    return otc_markets_multicast_ats_v4_3.extended_security_message.size(buffer, offset)
  end
  -- Size of Extended Security No Cusip Message
  if message_type == 16 then
    return otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == 17 then
    return otc_markets_multicast_ats_v4_3.trade_message.size
  end

  return 0
end

-- Display: Payload
otc_markets_multicast_ats_v4_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
otc_markets_multicast_ats_v4_3.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Spin Message
  if message_type == 11 then
    return otc_markets_multicast_ats_v4_3.start_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Spin Message
  if message_type == 12 then
    return otc_markets_multicast_ats_v4_3.end_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if message_type == 13 then
    return otc_markets_multicast_ats_v4_3.market_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Close Message
  if message_type == 14 then
    return otc_markets_multicast_ats_v4_3.market_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Message
  if message_type == 9 then
    return otc_markets_multicast_ats_v4_3.security_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_type == 1 then
    return otc_markets_multicast_ats_v4_3.quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Message
  if message_type == 2 then
    return otc_markets_multicast_ats_v4_3.quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if message_type == 3 then
    return otc_markets_multicast_ats_v4_3.market_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inside Update Message
  if message_type == 4 then
    return otc_markets_multicast_ats_v4_3.inside_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Message
  if message_type == 7 then
    return otc_markets_multicast_ats_v4_3.reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Update Message
  if message_type == 8 then
    return otc_markets_multicast_ats_v4_3.reference_price_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Security Message
  if message_type == 15 then
    return otc_markets_multicast_ats_v4_3.extended_security_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Security No Cusip Message
  if message_type == 16 then
    return otc_markets_multicast_ats_v4_3.extended_security_no_cusip_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 17 then
    return otc_markets_multicast_ats_v4_3.trade_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
otc_markets_multicast_ats_v4_3.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return otc_markets_multicast_ats_v4_3.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = otc_markets_multicast_ats_v4_3.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = otc_markets_multicast_ats_v4_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.payload, range, display)

  return otc_markets_multicast_ats_v4_3.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
otc_markets_multicast_ats_v4_3.message_type = {}

-- Size: Message Type
otc_markets_multicast_ats_v4_3.message_type.size = 1

-- Display: Message Type
otc_markets_multicast_ats_v4_3.message_type.display = function(value)
  if value == 11 then
    return "Message Type: Start Of Spin Message (11)"
  end
  if value == 12 then
    return "Message Type: End Of Spin Message (12)"
  end
  if value == 13 then
    return "Message Type: Market Open Message (13)"
  end
  if value == 14 then
    return "Message Type: Market Close Message (14)"
  end
  if value == 9 then
    return "Message Type: Security Message (9)"
  end
  if value == 1 then
    return "Message Type: Quote Message (1)"
  end
  if value == 2 then
    return "Message Type: Quote Update Message (2)"
  end
  if value == 3 then
    return "Message Type: Market Open Message (3)"
  end
  if value == 4 then
    return "Message Type: Inside Update Message (4)"
  end
  if value == 7 then
    return "Message Type: Reference Price Message (7)"
  end
  if value == 8 then
    return "Message Type: Reference Price Update Message (8)"
  end
  if value == 15 then
    return "Message Type: Extended Security Message (15)"
  end
  if value == 16 then
    return "Message Type: Extended Security No Cusip Message (16)"
  end
  if value == 17 then
    return "Message Type: Trade Message (17)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
otc_markets_multicast_ats_v4_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
otc_markets_multicast_ats_v4_3.message_size = {}

-- Size: Message Size
otc_markets_multicast_ats_v4_3.message_size.size = 2

-- Display: Message Size
otc_markets_multicast_ats_v4_3.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otc_markets_multicast_ats_v4_3.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
otc_markets_multicast_ats_v4_3.message_header = {}

-- Size: Message Header
otc_markets_multicast_ats_v4_3.message_header.size =
  otc_markets_multicast_ats_v4_3.message_size.size + 
  otc_markets_multicast_ats_v4_3.message_type.size

-- Display: Message Header
otc_markets_multicast_ats_v4_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otc_markets_multicast_ats_v4_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otc_markets_multicast_ats_v4_3.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, message_type = otc_markets_multicast_ats_v4_3.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otc_markets_multicast_ats_v4_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.message_header, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otc_markets_multicast_ats_v4_3.message = {}

-- Display: Message
otc_markets_multicast_ats_v4_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otc_markets_multicast_ats_v4_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = otc_markets_multicast_ats_v4_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 14 branches
  index = otc_markets_multicast_ats_v4_3.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otc_markets_multicast_ats_v4_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.message, buffer(offset, 0))
    local current = otc_markets_multicast_ats_v4_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = otc_markets_multicast_ats_v4_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otc_markets_multicast_ats_v4_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Milli
otc_markets_multicast_ats_v4_3.packet_milli = {}

-- Size: Packet Milli
otc_markets_multicast_ats_v4_3.packet_milli.size = 4

-- Display: Packet Milli
otc_markets_multicast_ats_v4_3.packet_milli.display = function(value)
  return "Packet Milli: "..value
end

-- Dissect: Packet Milli
otc_markets_multicast_ats_v4_3.packet_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.packet_milli.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.packet_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Messages
otc_markets_multicast_ats_v4_3.messages = {}

-- Size: Messages
otc_markets_multicast_ats_v4_3.messages.size = 1

-- Display: Messages
otc_markets_multicast_ats_v4_3.messages.display = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
otc_markets_multicast_ats_v4_3.messages.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.messages, range, value, display)

  return offset + length, value
end

-- Packet Flag
otc_markets_multicast_ats_v4_3.packet_flag = {}

-- Size: Packet Flag
otc_markets_multicast_ats_v4_3.packet_flag.size = 1

-- Display: Packet Flag
otc_markets_multicast_ats_v4_3.packet_flag.display = function(range, value, packet, parent)
  local display = ""

  -- Is Heartbeat flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Heartbeat|"
  end
  -- Is Seq Num Reset flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Seq Num Reset|"
  end
  -- Is Replay flag set?
  if bit.band(value, 0x40) ~= 0 then
    display = display.."Replay|"
  end
  -- Is Test flag set?
  if bit.band(value, 0x80) ~= 0 then
    display = display.."Test|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Packet Flag
otc_markets_multicast_ats_v4_3.packet_flag.bits = function(range, value, packet, parent)

  -- Heartbeat: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.heartbeat, range, value)

  -- Seq Num Reset: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.seq_num_reset, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.reserved_4, range, value)

  -- Replay: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.replay, range, value)

  -- Test: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.test, range, value)
end

-- Dissect: Packet Flag
otc_markets_multicast_ats_v4_3.packet_flag.dissect = function(buffer, offset, packet, parent)
  local size = otc_markets_multicast_ats_v4_3.packet_flag.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.packet_flag.display(range, value, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.packet_flag, range, display)

  if show.packet_flag then
    otc_markets_multicast_ats_v4_3.packet_flag.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Seq Num
otc_markets_multicast_ats_v4_3.seq_num = {}

-- Size: Seq Num
otc_markets_multicast_ats_v4_3.seq_num.size = 4

-- Display: Seq Num
otc_markets_multicast_ats_v4_3.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otc_markets_multicast_ats_v4_3.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Packet Size
otc_markets_multicast_ats_v4_3.packet_size = {}

-- Size: Packet Size
otc_markets_multicast_ats_v4_3.packet_size.size = 2

-- Display: Packet Size
otc_markets_multicast_ats_v4_3.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otc_markets_multicast_ats_v4_3.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_3.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_3.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_3.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
otc_markets_multicast_ats_v4_3.packet_header = {}

-- Size: Packet Header
otc_markets_multicast_ats_v4_3.packet_header.size =
  otc_markets_multicast_ats_v4_3.packet_size.size + 
  otc_markets_multicast_ats_v4_3.seq_num.size + 
  otc_markets_multicast_ats_v4_3.packet_flag.size + 
  otc_markets_multicast_ats_v4_3.messages.size + 
  otc_markets_multicast_ats_v4_3.packet_milli.size

-- Display: Packet Header
otc_markets_multicast_ats_v4_3.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otc_markets_multicast_ats_v4_3.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otc_markets_multicast_ats_v4_3.packet_size.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otc_markets_multicast_ats_v4_3.seq_num.dissect(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = otc_markets_multicast_ats_v4_3.packet_flag.dissect(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = otc_markets_multicast_ats_v4_3.messages.dissect(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otc_markets_multicast_ats_v4_3.packet_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otc_markets_multicast_ats_v4_3.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_3.fields.packet_header, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_3.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_3.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_3.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
otc_markets_multicast_ats_v4_3.packet = {}

-- Dissect Packet
otc_markets_multicast_ats_v4_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otc_markets_multicast_ats_v4_3.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = otc_markets_multicast_ats_v4_3.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otc_markets_multicast_ats_v4_3.init()
end

-- Dissector for Otc Markets Multicast Ats 4.3
function omi_otc_markets_multicast_ats_v4_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otc_markets_multicast_ats_v4_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_otc_markets_multicast_ats_v4_3, buffer(), omi_otc_markets_multicast_ats_v4_3.description, "("..buffer:len().." Bytes)")
  return otc_markets_multicast_ats_v4_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_otc_markets_multicast_ats_v4_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
otc_markets_multicast_ats_v4_3.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Otc Markets Multicast Ats 4.3
local function omi_otc_markets_multicast_ats_v4_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otc_markets_multicast_ats_v4_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otc_markets_multicast_ats_v4_3
  omi_otc_markets_multicast_ats_v4_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Otc Markets Multicast Ats 4.3
omi_otc_markets_multicast_ats_v4_3:register_heuristic("udp", omi_otc_markets_multicast_ats_v4_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Otc Markets
--   Version: 4.3
--   Date: Wednesday, December 11, 2019
--   Specification: OTC Markets Multicast Data Feeds -v4.3.pdf
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
