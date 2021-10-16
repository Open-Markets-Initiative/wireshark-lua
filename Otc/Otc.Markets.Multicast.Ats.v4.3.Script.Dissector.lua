-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Otc Markets Multicast Ats 4.3 Protocol
local otc_markets_multicast_ats_v4_3 = Proto("Otc.Markets.Multicast.Ats.v4.3.Lua", "Otc Markets Multicast Ats 4.3")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Otc Markets Multicast Ats 4.3 Fields
otc_markets_multicast_ats_v4_3.fields.adr_level = ProtoField.new("Adr Level", "otc.markets.multicast.ats.v4.3.adrlevel", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.adr_ratio = ProtoField.new("Adr Ratio", "otc.markets.multicast.ats.v4.3.adrratio", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.ask_bid_wanted = ProtoField.new("Ask Bid Wanted", "otc.markets.multicast.ats.v4.3.askbidwanted", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
otc_markets_multicast_ats_v4_3.fields.ask_price = ProtoField.new("Ask Price", "otc.markets.multicast.ats.v4.3.askprice", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.ask_priced = ProtoField.new("Ask Priced", "otc.markets.multicast.ats.v4.3.askpriced", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
otc_markets_multicast_ats_v4_3.fields.ask_qap = ProtoField.new("Ask Qap", "otc.markets.multicast.ats.v4.3.askqap", ftypes.INT8)
otc_markets_multicast_ats_v4_3.fields.ask_size = ProtoField.new("Ask Size", "otc.markets.multicast.ats.v4.3.asksize", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.ask_time_milli = ProtoField.new("Ask Time Milli", "otc.markets.multicast.ats.v4.3.asktimemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.ask_unsolicited = ProtoField.new("Ask Unsolicited", "otc.markets.multicast.ats.v4.3.askunsolicited", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
otc_markets_multicast_ats_v4_3.fields.asset_class = ProtoField.new("Asset Class", "otc.markets.multicast.ats.v4.3.assetclass", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.bb_quoted = ProtoField.new("Bb Quoted", "otc.markets.multicast.ats.v4.3.bbquoted", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
otc_markets_multicast_ats_v4_3.fields.bid_ask_wanted = ProtoField.new("Bid Ask Wanted", "otc.markets.multicast.ats.v4.3.bidaskwanted", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
otc_markets_multicast_ats_v4_3.fields.bid_auto_ex = ProtoField.new("Bid Auto Ex", "otc.markets.multicast.ats.v4.3.bidautoex", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
otc_markets_multicast_ats_v4_3.fields.bid_price = ProtoField.new("Bid Price", "otc.markets.multicast.ats.v4.3.bidprice", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.bid_priced = ProtoField.new("Bid Priced", "otc.markets.multicast.ats.v4.3.bidpriced", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
otc_markets_multicast_ats_v4_3.fields.bid_qap = ProtoField.new("Bid Qap", "otc.markets.multicast.ats.v4.3.bidqap", ftypes.INT8)
otc_markets_multicast_ats_v4_3.fields.bid_size = ProtoField.new("Bid Size", "otc.markets.multicast.ats.v4.3.bidsize", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.bid_time_milli = ProtoField.new("Bid Time Milli", "otc.markets.multicast.ats.v4.3.bidtimemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.bid_unsolicited = ProtoField.new("Bid Unsolicited", "otc.markets.multicast.ats.v4.3.bidunsolicited", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
otc_markets_multicast_ats_v4_3.fields.callable_date_milli = ProtoField.new("Callable Date Milli", "otc.markets.multicast.ats.v4.3.callabledatemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.caveat_emptor_warning = ProtoField.new("Caveat Emptor Warning", "otc.markets.multicast.ats.v4.3.caveatemptorwarning", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
otc_markets_multicast_ats_v4_3.fields.channel_seq_num = ProtoField.new("Channel Seq Num", "otc.markets.multicast.ats.v4.3.channelseqnum", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.coupon = ProtoField.new("Coupon", "otc.markets.multicast.ats.v4.3.coupon", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.cusip = ProtoField.new("Cusip", "otc.markets.multicast.ats.v4.3.cusip", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.deprecated = ProtoField.new("Deprecated", "otc.markets.multicast.ats.v4.3.deprecated", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.disclosure_status = ProtoField.new("Disclosure Status", "otc.markets.multicast.ats.v4.3.disclosurestatus", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otc.markets.multicast.ats.v4.3.endofspinmessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.extended_quote_flags = ProtoField.new("Extended Quote Flags", "otc.markets.multicast.ats.v4.3.extendedquoteflags", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.extended_security_message = ProtoField.new("Extended Security Message", "otc.markets.multicast.ats.v4.3.extendedsecuritymessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.extended_security_no_cusip_message = ProtoField.new("Extended Security No Cusip Message", "otc.markets.multicast.ats.v4.3.extendedsecuritynocusipmessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.heartbeat = ProtoField.new("Heartbeat", "otc.markets.multicast.ats.v4.3.heartbeat", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
otc_markets_multicast_ats_v4_3.fields.inside_id = ProtoField.new("Inside Id", "otc.markets.multicast.ats.v4.3.insideid", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.inside_time_milli = ProtoField.new("Inside Time Milli", "otc.markets.multicast.ats.v4.3.insidetimemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.inside_update_message = ProtoField.new("Inside Update Message", "otc.markets.multicast.ats.v4.3.insideupdatemessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.irregular = ProtoField.new("Irregular", "otc.markets.multicast.ats.v4.3.irregular", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
otc_markets_multicast_ats_v4_3.fields.issuer_name = ProtoField.new("Issuer Name", "otc.markets.multicast.ats.v4.3.issuername", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.issuer_size = ProtoField.new("Issuer Size", "otc.markets.multicast.ats.v4.3.issuersize", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.last_update_milli = ProtoField.new("Last Update Milli", "otc.markets.multicast.ats.v4.3.lastupdatemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.market_close = ProtoField.new("Market Close", "otc.markets.multicast.ats.v4.3.marketclose", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.market_close_message = ProtoField.new("Market Close Message", "otc.markets.multicast.ats.v4.3.marketclosemessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.market_close_time_milli = ProtoField.new("Market Close Time Milli", "otc.markets.multicast.ats.v4.3.marketclosetimemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.market_msg_ct = ProtoField.new("Market Msg Ct", "otc.markets.multicast.ats.v4.3.marketmsgct", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.market_open = ProtoField.new("Market Open", "otc.markets.multicast.ats.v4.3.marketopen", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.market_open_message = ProtoField.new("Market Open Message", "otc.markets.multicast.ats.v4.3.marketopenmessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.maturity_date_milli = ProtoField.new("Maturity Date Milli", "otc.markets.multicast.ats.v4.3.maturitydatemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.message = ProtoField.new("Message", "otc.markets.multicast.ats.v4.3.message", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.message_header = ProtoField.new("Message Header", "otc.markets.multicast.ats.v4.3.messageheader", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.message_size = ProtoField.new("Message Size", "otc.markets.multicast.ats.v4.3.messagesize", ftypes.UINT16)
otc_markets_multicast_ats_v4_3.fields.message_type = ProtoField.new("Message Type", "otc.markets.multicast.ats.v4.3.messagetype", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.messages = ProtoField.new("Messages", "otc.markets.multicast.ats.v4.3.messages", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.mpid = ProtoField.new("Mpid", "otc.markets.multicast.ats.v4.3.mpid", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.nms_conditional_quote = ProtoField.new("Nms Conditional Quote", "otc.markets.multicast.ats.v4.3.nmsconditionalquote", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
otc_markets_multicast_ats_v4_3.fields.num_priced_mp = ProtoField.new("Num Priced Mp", "otc.markets.multicast.ats.v4.3.numpricedmp", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.offer_auto_ex = ProtoField.new("Offer Auto Ex", "otc.markets.multicast.ats.v4.3.offerautoex", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
otc_markets_multicast_ats_v4_3.fields.otc_issuer_id = ProtoField.new("Otc Issuer Id", "otc.markets.multicast.ats.v4.3.otcissuerid", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.otc_link_ecn_eligible = ProtoField.new("Otc Link Ecn Eligible", "otc.markets.multicast.ats.v4.3.otclinkecneligible", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
otc_markets_multicast_ats_v4_3.fields.otc_link_messaging_disabled = ProtoField.new("Otc Link Messaging Disabled", "otc.markets.multicast.ats.v4.3.otclinkmessagingdisabled", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
otc_markets_multicast_ats_v4_3.fields.packet = ProtoField.new("Packet", "otc.markets.multicast.ats.v4.3.packet", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.packet_flag = ProtoField.new("Packet Flag", "otc.markets.multicast.ats.v4.3.packetflag", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.packet_header = ProtoField.new("Packet Header", "otc.markets.multicast.ats.v4.3.packetheader", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.packet_milli = ProtoField.new("Packet Milli", "otc.markets.multicast.ats.v4.3.packetmilli", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.packet_size = ProtoField.new("Packet Size", "otc.markets.multicast.ats.v4.3.packetsize", ftypes.UINT16)
otc_markets_multicast_ats_v4_3.fields.par_value = ProtoField.new("Par Value", "otc.markets.multicast.ats.v4.3.parvalue", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.payload = ProtoField.new("Payload", "otc.markets.multicast.ats.v4.3.payload", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.piggyback = ProtoField.new("Piggyback", "otc.markets.multicast.ats.v4.3.piggyback", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
otc_markets_multicast_ats_v4_3.fields.price = ProtoField.new("Price", "otc.markets.multicast.ats.v4.3.price", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.primary_market = ProtoField.new("Primary Market", "otc.markets.multicast.ats.v4.3.primarymarket", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.qap = ProtoField.new("Qap", "otc.markets.multicast.ats.v4.3.qap", ftypes.INT8)
otc_markets_multicast_ats_v4_3.fields.qualified_institutional_buyers_only = ProtoField.new("Qualified Institutional Buyers Only", "otc.markets.multicast.ats.v4.3.qualifiedinstitutionalbuyersonly", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
otc_markets_multicast_ats_v4_3.fields.quote_action = ProtoField.new("Quote Action", "otc.markets.multicast.ats.v4.3.quoteaction", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.quote_flags = ProtoField.new("Quote Flags", "otc.markets.multicast.ats.v4.3.quoteflags", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.quote_id = ProtoField.new("Quote Id", "otc.markets.multicast.ats.v4.3.quoteid", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.quote_message = ProtoField.new("Quote Message", "otc.markets.multicast.ats.v4.3.quotemessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.quote_reference_id = ProtoField.new("Quote Reference Id", "otc.markets.multicast.ats.v4.3.quotereferenceid", ftypes.UINT16)
otc_markets_multicast_ats_v4_3.fields.quote_saturated = ProtoField.new("Quote Saturated", "otc.markets.multicast.ats.v4.3.quotesaturated", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
otc_markets_multicast_ats_v4_3.fields.quote_time_milli = ProtoField.new("Quote Time Milli", "otc.markets.multicast.ats.v4.3.quotetimemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.quote_update_message = ProtoField.new("Quote Update Message", "otc.markets.multicast.ats.v4.3.quoteupdatemessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.reference_price_action = ProtoField.new("Reference Price Action", "otc.markets.multicast.ats.v4.3.referencepriceaction", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.reference_price_id = ProtoField.new("Reference Price Id", "otc.markets.multicast.ats.v4.3.referencepriceid", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.reference_price_message = ProtoField.new("Reference Price Message", "otc.markets.multicast.ats.v4.3.referencepricemessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.reference_price_update_message = ProtoField.new("Reference Price Update Message", "otc.markets.multicast.ats.v4.3.referencepriceupdatemessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.replay = ProtoField.new("Replay", "otc.markets.multicast.ats.v4.3.replay", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
otc_markets_multicast_ats_v4_3.fields.reporting_status = ProtoField.new("Reporting Status", "otc.markets.multicast.ats.v4.3.reportingstatus", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.reserved_extended_quote_flag_bits = ProtoField.new("Reserved Extended Quote Flag Bits", "otc.markets.multicast.ats.v4.3.reservedextendedquoteflagbits", ftypes.UINT8, nil, base.DEC, "0xF0")
otc_markets_multicast_ats_v4_3.fields.reserved_packet_flags = ProtoField.new("Reserved Packet Flags", "otc.markets.multicast.ats.v4.3.reservedpacketflags", ftypes.UINT8, nil, base.DEC, "0x3C")
otc_markets_multicast_ats_v4_3.fields.reserved_trade_status_bits = ProtoField.new("Reserved Trade Status Bits", "otc.markets.multicast.ats.v4.3.reservedtradestatusbits", ftypes.UINT8, nil, base.DEC, "0xFE")
otc_markets_multicast_ats_v4_3.fields.saturation_eligible = ProtoField.new("Saturation Eligible", "otc.markets.multicast.ats.v4.3.saturationeligible", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
otc_markets_multicast_ats_v4_3.fields.security_action = ProtoField.new("Security Action", "otc.markets.multicast.ats.v4.3.securityaction", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.security_desc = ProtoField.new("Security Desc", "otc.markets.multicast.ats.v4.3.securitydesc", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.security_detail = ProtoField.new("Security Detail", "otc.markets.multicast.ats.v4.3.securitydetail", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.security_detail_size = ProtoField.new("Security Detail Size", "otc.markets.multicast.ats.v4.3.securitydetailsize", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.security_flags = ProtoField.new("Security Flags", "otc.markets.multicast.ats.v4.3.securityflags", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.security_id = ProtoField.new("Security Id", "otc.markets.multicast.ats.v4.3.securityid", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.security_message = ProtoField.new("Security Message", "otc.markets.multicast.ats.v4.3.securitymessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.security_status = ProtoField.new("Security Status", "otc.markets.multicast.ats.v4.3.securitystatus", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.security_type = ProtoField.new("Security Type", "otc.markets.multicast.ats.v4.3.securitytype", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.seq_num = ProtoField.new("Seq Num", "otc.markets.multicast.ats.v4.3.seqnum", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otc.markets.multicast.ats.v4.3.seqnumreset", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
otc_markets_multicast_ats_v4_3.fields.short_name = ProtoField.new("Short Name", "otc.markets.multicast.ats.v4.3.shortname", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.size = ProtoField.new("Size", "otc.markets.multicast.ats.v4.3.size", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otc.markets.multicast.ats.v4.3.spinendtimemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otc.markets.multicast.ats.v4.3.spinlastseqnum", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otc.markets.multicast.ats.v4.3.spinmsgct", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otc.markets.multicast.ats.v4.3.spinstarttimemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.spin_type = ProtoField.new("Spin Type", "otc.markets.multicast.ats.v4.3.spintype", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otc.markets.multicast.ats.v4.3.startofspinmessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.state = ProtoField.new("State", "otc.markets.multicast.ats.v4.3.state", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
otc_markets_multicast_ats_v4_3.fields.symbol = ProtoField.new("Symbol", "otc.markets.multicast.ats.v4.3.symbol", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.test = ProtoField.new("Test", "otc.markets.multicast.ats.v4.3.test", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
otc_markets_multicast_ats_v4_3.fields.tier = ProtoField.new("Tier", "otc.markets.multicast.ats.v4.3.tier", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.time_milli = ProtoField.new("Time Milli", "otc.markets.multicast.ats.v4.3.timemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.trade_action = ProtoField.new("Trade Action", "otc.markets.multicast.ats.v4.3.tradeaction", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.trade_flags = ProtoField.new("Trade Flags", "otc.markets.multicast.ats.v4.3.tradeflags", ftypes.UINT8)
otc_markets_multicast_ats_v4_3.fields.trade_id = ProtoField.new("Trade Id", "otc.markets.multicast.ats.v4.3.tradeid", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.trade_message = ProtoField.new("Trade Message", "otc.markets.multicast.ats.v4.3.trademessage", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.trade_price = ProtoField.new("Trade Price", "otc.markets.multicast.ats.v4.3.tradeprice", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.trade_size = ProtoField.new("Trade Size", "otc.markets.multicast.ats.v4.3.tradesize", ftypes.UINT32)
otc_markets_multicast_ats_v4_3.fields.trade_status = ProtoField.new("Trade Status", "otc.markets.multicast.ats.v4.3.tradestatus", ftypes.STRING)
otc_markets_multicast_ats_v4_3.fields.trade_time_milli = ProtoField.new("Trade Time Milli", "otc.markets.multicast.ats.v4.3.tradetimemilli", ftypes.UINT64)
otc_markets_multicast_ats_v4_3.fields.unsolicited_only = ProtoField.new("Unsolicited Only", "otc.markets.multicast.ats.v4.3.unsolicitedonly", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
otc_markets_multicast_ats_v4_3.fields.update_side = ProtoField.new("Update Side", "otc.markets.multicast.ats.v4.3.updateside", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Otc Markets Multicast Ats 4.3 Element Dissection Options
show.end_of_spin_message = true
show.extended_quote_flags = true
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
otc_markets_multicast_ats_v4_3.prefs.show_end_of_spin_message = Pref.bool("Show End Of Spin Message", show.end_of_spin_message, "Parse and add End Of Spin Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_extended_quote_flags = Pref.bool("Show Extended Quote Flags", show.extended_quote_flags, "Parse and add Extended Quote Flags to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_extended_security_message = Pref.bool("Show Extended Security Message", show.extended_security_message, "Parse and add Extended Security Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_extended_security_no_cusip_message = Pref.bool("Show Extended Security No Cusip Message", show.extended_security_no_cusip_message, "Parse and add Extended Security No Cusip Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_inside_update_message = Pref.bool("Show Inside Update Message", show.inside_update_message, "Parse and add Inside Update Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_market_close_message = Pref.bool("Show Market Close Message", show.market_close_message, "Parse and add Market Close Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_market_open_message = Pref.bool("Show Market Open Message", show.market_open_message, "Parse and add Market Open Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_packet_flag = Pref.bool("Show Packet Flag", show.packet_flag, "Parse and add Packet Flag to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_quote_flags = Pref.bool("Show Quote Flags", show.quote_flags, "Parse and add Quote Flags to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_quote_update_message = Pref.bool("Show Quote Update Message", show.quote_update_message, "Parse and add Quote Update Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_reference_price_message = Pref.bool("Show Reference Price Message", show.reference_price_message, "Parse and add Reference Price Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_reference_price_update_message = Pref.bool("Show Reference Price Update Message", show.reference_price_update_message, "Parse and add Reference Price Update Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_security_message = Pref.bool("Show Security Message", show.security_message, "Parse and add Security Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_start_of_spin_message = Pref.bool("Show Start Of Spin Message", show.start_of_spin_message, "Parse and add Start Of Spin Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_trade_status = Pref.bool("Show Trade Status", show.trade_status, "Parse and add Trade Status to protocol tree")
otc_markets_multicast_ats_v4_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function otc_markets_multicast_ats_v4_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.end_of_spin_message ~= otc_markets_multicast_ats_v4_3.prefs.show_end_of_spin_message then
    show.end_of_spin_message = otc_markets_multicast_ats_v4_3.prefs.show_end_of_spin_message
    changed = true
  end
  if show.extended_quote_flags ~= otc_markets_multicast_ats_v4_3.prefs.show_extended_quote_flags then
    show.extended_quote_flags = otc_markets_multicast_ats_v4_3.prefs.show_extended_quote_flags
    changed = true
  end
  if show.extended_security_message ~= otc_markets_multicast_ats_v4_3.prefs.show_extended_security_message then
    show.extended_security_message = otc_markets_multicast_ats_v4_3.prefs.show_extended_security_message
    changed = true
  end
  if show.extended_security_no_cusip_message ~= otc_markets_multicast_ats_v4_3.prefs.show_extended_security_no_cusip_message then
    show.extended_security_no_cusip_message = otc_markets_multicast_ats_v4_3.prefs.show_extended_security_no_cusip_message
    changed = true
  end
  if show.inside_update_message ~= otc_markets_multicast_ats_v4_3.prefs.show_inside_update_message then
    show.inside_update_message = otc_markets_multicast_ats_v4_3.prefs.show_inside_update_message
    changed = true
  end
  if show.market_close_message ~= otc_markets_multicast_ats_v4_3.prefs.show_market_close_message then
    show.market_close_message = otc_markets_multicast_ats_v4_3.prefs.show_market_close_message
    changed = true
  end
  if show.market_open_message ~= otc_markets_multicast_ats_v4_3.prefs.show_market_open_message then
    show.market_open_message = otc_markets_multicast_ats_v4_3.prefs.show_market_open_message
    changed = true
  end
  if show.message ~= otc_markets_multicast_ats_v4_3.prefs.show_message then
    show.message = otc_markets_multicast_ats_v4_3.prefs.show_message
    changed = true
  end
  if show.message_header ~= otc_markets_multicast_ats_v4_3.prefs.show_message_header then
    show.message_header = otc_markets_multicast_ats_v4_3.prefs.show_message_header
    changed = true
  end
  if show.packet ~= otc_markets_multicast_ats_v4_3.prefs.show_packet then
    show.packet = otc_markets_multicast_ats_v4_3.prefs.show_packet
    changed = true
  end
  if show.packet_flag ~= otc_markets_multicast_ats_v4_3.prefs.show_packet_flag then
    show.packet_flag = otc_markets_multicast_ats_v4_3.prefs.show_packet_flag
    changed = true
  end
  if show.packet_header ~= otc_markets_multicast_ats_v4_3.prefs.show_packet_header then
    show.packet_header = otc_markets_multicast_ats_v4_3.prefs.show_packet_header
    changed = true
  end
  if show.quote_flags ~= otc_markets_multicast_ats_v4_3.prefs.show_quote_flags then
    show.quote_flags = otc_markets_multicast_ats_v4_3.prefs.show_quote_flags
    changed = true
  end
  if show.quote_message ~= otc_markets_multicast_ats_v4_3.prefs.show_quote_message then
    show.quote_message = otc_markets_multicast_ats_v4_3.prefs.show_quote_message
    changed = true
  end
  if show.quote_update_message ~= otc_markets_multicast_ats_v4_3.prefs.show_quote_update_message then
    show.quote_update_message = otc_markets_multicast_ats_v4_3.prefs.show_quote_update_message
    changed = true
  end
  if show.reference_price_message ~= otc_markets_multicast_ats_v4_3.prefs.show_reference_price_message then
    show.reference_price_message = otc_markets_multicast_ats_v4_3.prefs.show_reference_price_message
    changed = true
  end
  if show.reference_price_update_message ~= otc_markets_multicast_ats_v4_3.prefs.show_reference_price_update_message then
    show.reference_price_update_message = otc_markets_multicast_ats_v4_3.prefs.show_reference_price_update_message
    changed = true
  end
  if show.security_flags ~= otc_markets_multicast_ats_v4_3.prefs.show_security_flags then
    show.security_flags = otc_markets_multicast_ats_v4_3.prefs.show_security_flags
    changed = true
  end
  if show.security_message ~= otc_markets_multicast_ats_v4_3.prefs.show_security_message then
    show.security_message = otc_markets_multicast_ats_v4_3.prefs.show_security_message
    changed = true
  end
  if show.start_of_spin_message ~= otc_markets_multicast_ats_v4_3.prefs.show_start_of_spin_message then
    show.start_of_spin_message = otc_markets_multicast_ats_v4_3.prefs.show_start_of_spin_message
    changed = true
  end
  if show.trade_message ~= otc_markets_multicast_ats_v4_3.prefs.show_trade_message then
    show.trade_message = otc_markets_multicast_ats_v4_3.prefs.show_trade_message
    changed = true
  end
  if show.trade_status ~= otc_markets_multicast_ats_v4_3.prefs.show_trade_status then
    show.trade_status = otc_markets_multicast_ats_v4_3.prefs.show_trade_status
    changed = true
  end
  if show.payload ~= otc_markets_multicast_ats_v4_3.prefs.show_payload then
    show.payload = otc_markets_multicast_ats_v4_3.prefs.show_payload
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

-- Size: Trade Time Milli
size_of.trade_time_milli = 8

-- Display: Trade Time Milli
display.trade_time_milli = function(value)
  return "Trade Time Milli: "..value
end

-- Dissect: Trade Time Milli
dissect.trade_time_milli = function(buffer, offset, packet, parent)
  local length = size_of.trade_time_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.trade_time_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.trade_time_milli, range, value, display)

  return offset + length, value
end

-- Size: Trade Size
size_of.trade_size = 4

-- Display: Trade Size
display.trade_size = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
dissect.trade_size = function(buffer, offset, packet, parent)
  local length = size_of.trade_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.trade_size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
size_of.trade_price = 8

-- Display: Trade Price
display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
dissect.trade_price = function(buffer, offset, packet, parent)
  local length = size_of.trade_price
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.trade_price(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Deprecated
size_of.deprecated = 8

-- Display: Deprecated
display.deprecated = function(value)
  return "Deprecated: "..value
end

-- Dissect: Deprecated
dissect.deprecated = function(buffer, offset, packet, parent)
  local length = size_of.deprecated
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.deprecated(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.deprecated, range, value, display)

  return offset + length, value
end

-- Size: Trade Status
size_of.trade_status = 1

-- Display: Trade Status
display.trade_status = function(buffer, packet, parent)
  local display = ""

  -- Is Irregular flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Irregular|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Status
dissect.trade_status_bits = function(buffer, offset, packet, parent)

  -- Reserved Trade Status Bits: 7 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.reserved_trade_status_bits, buffer(offset, 1))

  -- Irregular: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.irregular, buffer(offset, 1))
end

-- Dissect: Trade Status
dissect.trade_status = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.trade_status(range, packet, parent)
  local element = parent:add(otc_markets_multicast_ats_v4_3.fields.trade_status, range, display)

  if show.trade_status then
    dissect.trade_status_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Security Id
size_of.security_id = 4

-- Display: Security Id
display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local length = size_of.security_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Flags
size_of.trade_flags = 1

-- Display: Trade Flags
display.trade_flags = function(value)
  return "Trade Flags: "..value
end

-- Dissect: Trade Flags
dissect.trade_flags = function(buffer, offset, packet, parent)
  local length = size_of.trade_flags
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.trade_flags(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.trade_flags, range, value, display)

  return offset + length, value
end

-- Size: Trade Action
size_of.trade_action = 1

-- Display: Trade Action
display.trade_action = function(value)
  if value == 2 then
    return "Trade Action: Add (2)"
  end

  return "Trade Action: Unknown("..value..")"
end

-- Dissect: Trade Action
dissect.trade_action = function(buffer, offset, packet, parent)
  local length = size_of.trade_action
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.trade_action(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.trade_action, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
size_of.trade_id = 4

-- Display: Trade Id
display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
dissect.trade_id = function(buffer, offset, packet, parent)
  local length = size_of.trade_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Channel Seq Num
size_of.channel_seq_num = 4

-- Display: Channel Seq Num
display.channel_seq_num = function(value)
  return "Channel Seq Num: "..value
end

-- Dissect: Channel Seq Num
dissect.channel_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.channel_seq_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.channel_seq_num(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.channel_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.trade_id

  index = index + size_of.trade_action

  index = index + size_of.trade_flags

  index = index + size_of.security_id

  index = index + size_of.trade_status

  index = index + size_of.deprecated

  index = index + size_of.trade_price

  index = index + size_of.trade_size

  index = index + size_of.trade_time_milli

  return index
end

-- Display: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Trade Action: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, trade_action = dissect.trade_action(buffer, index, packet, parent)

  -- Trade Flags: 1 Byte Unsigned Fixed Width Integer
  index, trade_flags = dissect.trade_flags(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Trade Status: Struct of 2 fields
  index, trade_status = dissect.trade_status(buffer, index, packet, parent)

  -- Deprecated: 8 Byte Ascii String
  index, deprecated = dissect.deprecated(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, trade_size = dissect.trade_size(buffer, index, packet, parent)

  -- Trade Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, trade_time_milli = dissect.trade_time_milli(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local length = size_of.trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Issuer Name
display.issuer_name = function(value)
  return "Issuer Name: "..value
end

-- Dissect runtime sized field: Issuer Name
dissect.issuer_name = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.issuer_name(value, buffer, offset, packet, parent, size)

  parent:add(otc_markets_multicast_ats_v4_3.fields.issuer_name, range, value, display)

  return offset + size
end

-- Size: Issuer Size
size_of.issuer_size = 1

-- Display: Issuer Size
display.issuer_size = function(value)
  return "Issuer Size: "..value
end

-- Dissect: Issuer Size
dissect.issuer_size = function(buffer, offset, packet, parent)
  local length = size_of.issuer_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.issuer_size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.issuer_size, range, value, display)

  return offset + length, value
end

-- Display: Security Detail
display.security_detail = function(value)
  return "Security Detail: "..value
end

-- Dissect runtime sized field: Security Detail
dissect.security_detail = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.security_detail(value, buffer, offset, packet, parent, size)

  parent:add(otc_markets_multicast_ats_v4_3.fields.security_detail, range, value, display)

  return offset + size
end

-- Size: Security Detail Size
size_of.security_detail_size = 1

-- Display: Security Detail Size
display.security_detail_size = function(value)
  return "Security Detail Size: "..value
end

-- Dissect: Security Detail Size
dissect.security_detail_size = function(buffer, offset, packet, parent)
  local length = size_of.security_detail_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.security_detail_size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.security_detail_size, range, value, display)

  return offset + length, value
end

-- Size: Adr Level
size_of.adr_level = 15

-- Display: Adr Level
display.adr_level = function(value)
  return "Adr Level: "..value
end

-- Dissect: Adr Level
dissect.adr_level = function(buffer, offset, packet, parent)
  local length = size_of.adr_level
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.adr_level(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.adr_level, range, value, display)

  return offset + length, value
end

-- Size: Adr Ratio
size_of.adr_ratio = 8

-- Display: Adr Ratio
display.adr_ratio = function(value)
  return "Adr Ratio: "..value
end

-- Dissect: Adr Ratio
dissect.adr_ratio = function(buffer, offset, packet, parent)
  local length = size_of.adr_ratio
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.adr_ratio(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.adr_ratio, range, value, display)

  return offset + length, value
end

-- Size: Callable Date Milli
size_of.callable_date_milli = 8

-- Display: Callable Date Milli
display.callable_date_milli = function(value)
  return "Callable Date Milli: "..value
end

-- Dissect: Callable Date Milli
dissect.callable_date_milli = function(buffer, offset, packet, parent)
  local length = size_of.callable_date_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.callable_date_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.callable_date_milli, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date Milli
size_of.maturity_date_milli = 8

-- Display: Maturity Date Milli
display.maturity_date_milli = function(value)
  return "Maturity Date Milli: "..value
end

-- Dissect: Maturity Date Milli
dissect.maturity_date_milli = function(buffer, offset, packet, parent)
  local length = size_of.maturity_date_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.maturity_date_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.maturity_date_milli, range, value, display)

  return offset + length, value
end

-- Size: Coupon
size_of.coupon = 8

-- Display: Coupon
display.coupon = function(value)
  return "Coupon: "..value
end

-- Dissect: Coupon
dissect.coupon = function(buffer, offset, packet, parent)
  local length = size_of.coupon
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.coupon(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.coupon, range, value, display)

  return offset + length, value
end

-- Size: Par Value
size_of.par_value = 8

-- Display: Par Value
display.par_value = function(value)
  return "Par Value: "..value
end

-- Dissect: Par Value
dissect.par_value = function(buffer, offset, packet, parent)
  local length = size_of.par_value
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.par_value(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.par_value, range, value, display)

  return offset + length, value
end

-- Size: Security Status
size_of.security_status = 1

-- Display: Security Status
display.security_status = function(value)
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
dissect.security_status = function(buffer, offset, packet, parent)
  local length = size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.security_status, range, value, display)

  return offset + length, value
end

-- Size: Disclosure Status
size_of.disclosure_status = 1

-- Display: Disclosure Status
display.disclosure_status = function(value)
  if value == 0 then
    return "Disclosure Status: No Disclosure Status (0)"
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
dissect.disclosure_status = function(buffer, offset, packet, parent)
  local length = size_of.disclosure_status
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.disclosure_status(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.disclosure_status, range, value, display)

  return offset + length, value
end

-- Size: Reporting Status
size_of.reporting_status = 1

-- Display: Reporting Status
display.reporting_status = function(value)
  if value == "A" then
    return "Reporting Status: Alternative Reporting Standard (A)"
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
    return "Reporting Status: Other Reporting Standard (O)"
  end
  if value == "R" then
    return "Reporting Status: Finra Reporting (R)"
  end
  if value == "V" then
    return "Reporting Status: Sec Reporting Investment Company (V)"
  end
  if value == "W" then
    return "Reporting Status: Sec Reporting Reg A (W)"
  end

  return "Reporting Status: Unknown("..value..")"
end

-- Dissect: Reporting Status
dissect.reporting_status = function(buffer, offset, packet, parent)
  local length = size_of.reporting_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reporting_status(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Size: Tier
size_of.tier = 1

-- Display: Tier
display.tier = function(value)
  if value == 0 then
    return "Tier: No Tier (0)"
  end
  if value == 1 then
    return "Tier: Otcqx Us Premier (1)"
  end
  if value == 2 then
    return "Tier: Otcqx Us (2)"
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
dissect.tier = function(buffer, offset, packet, parent)
  local length = size_of.tier
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.tier(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.tier, range, value, display)

  return offset + length, value
end

-- Size: Security Flags
size_of.security_flags = 1

-- Display: Security Flags
display.security_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Saturation Eligible flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Saturation Eligible|"
  end
  -- Is Otc Link Messaging Disabled flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Otc Link Messaging Disabled|"
  end
  -- Is Otc Link Ecn Eligible flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Otc Link Ecn Eligible|"
  end
  -- Is Bb Quoted flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Bb Quoted|"
  end
  -- Is Unsolicited Only flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Unsolicited Only|"
  end
  -- Is Qualified Institutional Buyers Only flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Qualified Institutional Buyers Only|"
  end
  -- Is Caveat Emptor Warning flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Caveat Emptor Warning|"
  end
  -- Is Piggyback flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Piggyback|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Security Flags
dissect.security_flags_bits = function(buffer, offset, packet, parent)

  -- Saturation Eligible: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.saturation_eligible, buffer(offset, 1))

  -- Otc Link Messaging Disabled: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.otc_link_messaging_disabled, buffer(offset, 1))

  -- Otc Link Ecn Eligible: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.otc_link_ecn_eligible, buffer(offset, 1))

  -- Bb Quoted: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.bb_quoted, buffer(offset, 1))

  -- Unsolicited Only: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.unsolicited_only, buffer(offset, 1))

  -- Qualified Institutional Buyers Only: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.qualified_institutional_buyers_only, buffer(offset, 1))

  -- Caveat Emptor Warning: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.caveat_emptor_warning, buffer(offset, 1))

  -- Piggyback: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.piggyback, buffer(offset, 1))
end

-- Dissect: Security Flags
dissect.security_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.security_flags(range, packet, parent)
  local element = parent:add(otc_markets_multicast_ats_v4_3.fields.security_flags, range, display)

  if show.security_flags then
    dissect.security_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Primary Market
size_of.primary_market = 3

-- Display: Primary Market
display.primary_market = function(value)
  return "Primary Market: "..value
end

-- Dissect: Primary Market
dissect.primary_market = function(buffer, offset, packet, parent)
  local length = size_of.primary_market
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.primary_market(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.primary_market, range, value, display)

  return offset + length, value
end

-- Size: Security Type
size_of.security_type = 5

-- Display: Security Type
display.security_type = function(value)
  return "Security Type: "..value
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  local length = size_of.security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Asset Class
size_of.asset_class = 1

-- Display: Asset Class
display.asset_class = function(value)
  if value == 1 then
    return "Asset Class: Equity (1)"
  end
  if value == 2 then
    return "Asset Class: Fixed Income (2)"
  end

  return "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
dissect.asset_class = function(buffer, offset, packet, parent)
  local length = size_of.asset_class
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.asset_class(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Size: Short Name
size_of.short_name = 25

-- Display: Short Name
display.short_name = function(value)
  return "Short Name: "..value
end

-- Dissect: Short Name
dissect.short_name = function(buffer, offset, packet, parent)
  local length = size_of.short_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.short_name(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.short_name, range, value, display)

  return offset + length, value
end

-- Size: Security Desc
size_of.security_desc = 25

-- Display: Security Desc
display.security_desc = function(value)
  return "Security Desc: "..value
end

-- Dissect: Security Desc
dissect.security_desc = function(buffer, offset, packet, parent)
  local length = size_of.security_desc
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_desc(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.security_desc, range, value, display)

  return offset + length, value
end

-- Size: Otc Issuer Id
size_of.otc_issuer_id = 4

-- Display: Otc Issuer Id
display.otc_issuer_id = function(value)
  return "Otc Issuer Id: "..value
end

-- Dissect: Otc Issuer Id
dissect.otc_issuer_id = function(buffer, offset, packet, parent)
  local length = size_of.otc_issuer_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.otc_issuer_id(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.otc_issuer_id, range, value, display)

  return offset + length, value
end

-- Size: Security Action
size_of.security_action = 1

-- Display: Security Action
display.security_action = function(value)
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
dissect.security_action = function(buffer, offset, packet, parent)
  local length = size_of.security_action
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.security_action(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.security_action, range, value, display)

  return offset + length, value
end

-- Size: Last Update Milli
size_of.last_update_milli = 8

-- Display: Last Update Milli
display.last_update_milli = function(value)
  return "Last Update Milli: "..value
end

-- Dissect: Last Update Milli
dissect.last_update_milli = function(buffer, offset, packet, parent)
  local length = size_of.last_update_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.last_update_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.last_update_milli, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 10

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Extended Security No Cusip Message
size_of.extended_security_no_cusip_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.symbol

  index = index + size_of.last_update_milli

  index = index + size_of.security_action

  index = index + size_of.otc_issuer_id

  index = index + size_of.security_desc

  index = index + size_of.short_name

  index = index + size_of.asset_class

  index = index + size_of.security_type

  index = index + size_of.primary_market

  index = index + size_of.security_id

  index = index + size_of.security_flags

  index = index + size_of.tier

  index = index + size_of.reporting_status

  index = index + size_of.disclosure_status

  index = index + size_of.security_status

  index = index + size_of.par_value

  index = index + size_of.coupon

  index = index + size_of.maturity_date_milli

  index = index + size_of.callable_date_milli

  index = index + size_of.adr_ratio

  index = index + size_of.adr_level

  index = index + size_of.security_detail_size

  -- Parse runtime size of: Security Detail
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + size_of.issuer_size

  -- Parse runtime size of: Issuer Name
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Extended Security No Cusip Message
display.extended_security_no_cusip_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Extended Security No Cusip Message
dissect.extended_security_no_cusip_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Symbol: 10 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Last Update Milli: 8 Byte Unsigned Fixed Width Integer
  index, last_update_milli = dissect.last_update_milli(buffer, index, packet, parent)

  -- Security Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_action = dissect.security_action(buffer, index, packet, parent)

  -- Otc Issuer Id: 4 Byte Unsigned Fixed Width Integer
  index, otc_issuer_id = dissect.otc_issuer_id(buffer, index, packet, parent)

  -- Security Desc: 25 Byte Ascii String
  index, security_desc = dissect.security_desc(buffer, index, packet, parent)

  -- Short Name: 25 Byte Ascii String
  index, short_name = dissect.short_name(buffer, index, packet, parent)

  -- Asset Class: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, asset_class = dissect.asset_class(buffer, index, packet, parent)

  -- Security Type: 5 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Primary Market: 3 Byte Ascii String
  index, primary_market = dissect.primary_market(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Flags: Struct of 8 fields
  index, security_flags = dissect.security_flags(buffer, index, packet, parent)

  -- Tier: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, tier = dissect.tier(buffer, index, packet, parent)

  -- Reporting Status: 1 Byte Ascii String Enum with 10 values
  index, reporting_status = dissect.reporting_status(buffer, index, packet, parent)

  -- Disclosure Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, disclosure_status = dissect.disclosure_status(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 7 values
  index, security_status = dissect.security_status(buffer, index, packet, parent)

  -- Par Value: 8 Byte Unsigned Fixed Width Integer
  index, par_value = dissect.par_value(buffer, index, packet, parent)

  -- Coupon: 8 Byte Unsigned Fixed Width Integer
  index, coupon = dissect.coupon(buffer, index, packet, parent)

  -- Maturity Date Milli: 8 Byte Unsigned Fixed Width Integer
  index, maturity_date_milli = dissect.maturity_date_milli(buffer, index, packet, parent)

  -- Callable Date Milli: 8 Byte Unsigned Fixed Width Integer
  index, callable_date_milli = dissect.callable_date_milli(buffer, index, packet, parent)

  -- Adr Ratio: 8 Byte Unsigned Fixed Width Integer
  index, adr_ratio = dissect.adr_ratio(buffer, index, packet, parent)

  -- Adr Level: 15 Byte Ascii String
  index, adr_level = dissect.adr_level(buffer, index, packet, parent)

  -- Security Detail Size: 1 Byte Unsigned Fixed Width Integer
  index, security_detail_size = dissect.security_detail_size(buffer, index, packet, parent)

  -- Security Detail: 0 Byte Ascii String
  index = dissect.security_detail(buffer, index, packet, parent, security_detail_size)

  -- Issuer Size: 1 Byte Unsigned Fixed Width Integer
  index, issuer_size = dissect.issuer_size(buffer, index, packet, parent)

  -- Issuer Name: 0 Byte Ascii String
  index = dissect.issuer_name(buffer, index, packet, parent, issuer_size)

  return index
end

-- Dissect: Extended Security No Cusip Message
dissect.extended_security_no_cusip_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.extended_security_no_cusip_message then
    local length = size_of.extended_security_no_cusip_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.extended_security_no_cusip_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.extended_security_no_cusip_message, range, display)
  end

  return dissect.extended_security_no_cusip_message_fields(buffer, offset, packet, parent)
end

-- Size: Cusip
size_of.cusip = 9

-- Display: Cusip
display.cusip = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
dissect.cusip = function(buffer, offset, packet, parent)
  local length = size_of.cusip
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cusip(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.cusip, range, value, display)

  return offset + length, value
end

-- Calculate size of: Extended Security Message
size_of.extended_security_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.symbol

  index = index + size_of.last_update_milli

  index = index + size_of.security_action

  index = index + size_of.otc_issuer_id

  index = index + size_of.security_desc

  index = index + size_of.short_name

  index = index + size_of.asset_class

  index = index + size_of.security_type

  index = index + size_of.primary_market

  index = index + size_of.security_id

  index = index + size_of.security_flags

  index = index + size_of.tier

  index = index + size_of.reporting_status

  index = index + size_of.disclosure_status

  index = index + size_of.security_status

  index = index + size_of.par_value

  index = index + size_of.coupon

  index = index + size_of.maturity_date_milli

  index = index + size_of.callable_date_milli

  index = index + size_of.adr_ratio

  index = index + size_of.adr_level

  index = index + size_of.security_detail_size

  -- Parse runtime size of: Security Detail
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + size_of.issuer_size

  -- Parse runtime size of: Issuer Name
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + size_of.cusip

  return index
end

-- Display: Extended Security Message
display.extended_security_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Extended Security Message
dissect.extended_security_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Symbol: 10 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Last Update Milli: 8 Byte Unsigned Fixed Width Integer
  index, last_update_milli = dissect.last_update_milli(buffer, index, packet, parent)

  -- Security Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_action = dissect.security_action(buffer, index, packet, parent)

  -- Otc Issuer Id: 4 Byte Unsigned Fixed Width Integer
  index, otc_issuer_id = dissect.otc_issuer_id(buffer, index, packet, parent)

  -- Security Desc: 25 Byte Ascii String
  index, security_desc = dissect.security_desc(buffer, index, packet, parent)

  -- Short Name: 25 Byte Ascii String
  index, short_name = dissect.short_name(buffer, index, packet, parent)

  -- Asset Class: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, asset_class = dissect.asset_class(buffer, index, packet, parent)

  -- Security Type: 5 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Primary Market: 3 Byte Ascii String
  index, primary_market = dissect.primary_market(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Flags: Struct of 8 fields
  index, security_flags = dissect.security_flags(buffer, index, packet, parent)

  -- Tier: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, tier = dissect.tier(buffer, index, packet, parent)

  -- Reporting Status: 1 Byte Ascii String Enum with 10 values
  index, reporting_status = dissect.reporting_status(buffer, index, packet, parent)

  -- Disclosure Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, disclosure_status = dissect.disclosure_status(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 7 values
  index, security_status = dissect.security_status(buffer, index, packet, parent)

  -- Par Value: 8 Byte Unsigned Fixed Width Integer
  index, par_value = dissect.par_value(buffer, index, packet, parent)

  -- Coupon: 8 Byte Unsigned Fixed Width Integer
  index, coupon = dissect.coupon(buffer, index, packet, parent)

  -- Maturity Date Milli: 8 Byte Unsigned Fixed Width Integer
  index, maturity_date_milli = dissect.maturity_date_milli(buffer, index, packet, parent)

  -- Callable Date Milli: 8 Byte Unsigned Fixed Width Integer
  index, callable_date_milli = dissect.callable_date_milli(buffer, index, packet, parent)

  -- Adr Ratio: 8 Byte Unsigned Fixed Width Integer
  index, adr_ratio = dissect.adr_ratio(buffer, index, packet, parent)

  -- Adr Level: 15 Byte Ascii String
  index, adr_level = dissect.adr_level(buffer, index, packet, parent)

  -- Security Detail Size: 1 Byte Unsigned Fixed Width Integer
  index, security_detail_size = dissect.security_detail_size(buffer, index, packet, parent)

  -- Security Detail: 0 Byte Ascii String
  index = dissect.security_detail(buffer, index, packet, parent, security_detail_size)

  -- Issuer Size: 1 Byte Unsigned Fixed Width Integer
  index, issuer_size = dissect.issuer_size(buffer, index, packet, parent)

  -- Issuer Name: 0 Byte Ascii String
  index = dissect.issuer_name(buffer, index, packet, parent, issuer_size)

  -- Cusip: 9 Byte Ascii String
  index, cusip = dissect.cusip(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Security Message
dissect.extended_security_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.extended_security_message then
    local length = size_of.extended_security_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.extended_security_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.extended_security_message, range, display)
  end

  return dissect.extended_security_message_fields(buffer, offset, packet, parent)
end

-- Size: Time Milli
size_of.time_milli = 8

-- Display: Time Milli
display.time_milli = function(value)
  return "Time Milli: "..value
end

-- Dissect: Time Milli
dissect.time_milli = function(buffer, offset, packet, parent)
  local length = size_of.time_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.time_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.time_milli, range, value, display)

  return offset + length, value
end

-- Size: Size
size_of.size = 4

-- Display: Size
display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
dissect.size = function(buffer, offset, packet, parent)
  local length = size_of.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Quote Flags
size_of.quote_flags = 1

-- Display: Quote Flags
display.quote_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Bid Ask Wanted flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Bid Ask Wanted|"
  end
  -- Is Bid Priced flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Bid Priced|"
  end
  -- Is Bid Unsolicited flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Bid Unsolicited|"
  end
  -- Is Ask Bid Wanted flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Ask Bid Wanted|"
  end
  -- Is Ask Priced flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Ask Priced|"
  end
  -- Is Ask Unsolicited flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Ask Unsolicited|"
  end
  -- Is State flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."State|"
  end
  -- Is Update Side flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Update Side|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Quote Flags
dissect.quote_flags_bits = function(buffer, offset, packet, parent)

  -- Bid Ask Wanted: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.bid_ask_wanted, buffer(offset, 1))

  -- Bid Priced: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.bid_priced, buffer(offset, 1))

  -- Bid Unsolicited: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.bid_unsolicited, buffer(offset, 1))

  -- Ask Bid Wanted: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.ask_bid_wanted, buffer(offset, 1))

  -- Ask Priced: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.ask_priced, buffer(offset, 1))

  -- Ask Unsolicited: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.ask_unsolicited, buffer(offset, 1))

  -- State: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.state, buffer(offset, 1))

  -- Update Side: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.update_side, buffer(offset, 1))
end

-- Dissect: Quote Flags
dissect.quote_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.quote_flags(range, packet, parent)
  local element = parent:add(otc_markets_multicast_ats_v4_3.fields.quote_flags, range, display)

  if show.quote_flags then
    dissect.quote_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Reference Price Id
size_of.reference_price_id = 4

-- Display: Reference Price Id
display.reference_price_id = function(value)
  return "Reference Price Id: "..value
end

-- Dissect: Reference Price Id
dissect.reference_price_id = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reference_price_id(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.reference_price_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reference Price Update Message
size_of.reference_price_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.reference_price_id

  index = index + size_of.quote_flags

  index = index + size_of.price

  index = index + size_of.size

  index = index + size_of.time_milli

  return index
end

-- Display: Reference Price Update Message
display.reference_price_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reference Price Update Message
dissect.reference_price_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Reference Price Id: 4 Byte Unsigned Fixed Width Integer
  index, reference_price_id = dissect.reference_price_id(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = dissect.quote_flags(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  -- Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, time_milli = dissect.time_milli(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Update Message
dissect.reference_price_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reference_price_update_message then
    local length = size_of.reference_price_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reference_price_update_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.reference_price_update_message, range, display)
  end

  return dissect.reference_price_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Bid Time Milli
size_of.bid_time_milli = 8

-- Display: Bid Time Milli
display.bid_time_milli = function(value)
  return "Bid Time Milli: "..value
end

-- Dissect: Bid Time Milli
dissect.bid_time_milli = function(buffer, offset, packet, parent)
  local length = size_of.bid_time_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.bid_time_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.bid_time_milli, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
size_of.bid_price = 8

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local length = size_of.bid_price
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Time Milli
size_of.ask_time_milli = 8

-- Display: Ask Time Milli
display.ask_time_milli = function(value)
  return "Ask Time Milli: "..value
end

-- Dissect: Ask Time Milli
dissect.ask_time_milli = function(buffer, offset, packet, parent)
  local length = size_of.ask_time_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.ask_time_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.ask_time_milli, range, value, display)

  return offset + length, value
end

-- Size: Ask Size
size_of.ask_size = 4

-- Display: Ask Size
display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
dissect.ask_size = function(buffer, offset, packet, parent)
  local length = size_of.ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ask_size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
size_of.ask_price = 8

-- Display: Ask Price
display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
dissect.ask_price = function(buffer, offset, packet, parent)
  local length = size_of.ask_price
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Action
size_of.reference_price_action = 1

-- Display: Reference Price Action
display.reference_price_action = function(value)
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
dissect.reference_price_action = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_action
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reference_price_action(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.reference_price_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reference Price Message
size_of.reference_price_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.reference_price_id

  index = index + size_of.reference_price_action

  index = index + size_of.quote_flags

  index = index + size_of.security_id

  index = index + size_of.ask_price

  index = index + size_of.ask_size

  index = index + size_of.ask_time_milli

  index = index + size_of.bid_price

  index = index + size_of.bid_size

  index = index + size_of.bid_time_milli

  return index
end

-- Display: Reference Price Message
display.reference_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reference Price Message
dissect.reference_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Reference Price Id: 4 Byte Unsigned Fixed Width Integer
  index, reference_price_id = dissect.reference_price_id(buffer, index, packet, parent)

  -- Reference Price Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, reference_price_action = dissect.reference_price_action(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = dissect.quote_flags(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Ask Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, ask_time_milli = dissect.ask_time_milli(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, bid_time_milli = dissect.bid_time_milli(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
dissect.reference_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reference_price_message then
    local length = size_of.reference_price_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reference_price_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.reference_price_message, range, display)
  end

  return dissect.reference_price_message_fields(buffer, offset, packet, parent)
end

-- Size: Num Priced Mp
size_of.num_priced_mp = 1

-- Display: Num Priced Mp
display.num_priced_mp = function(value)
  return "Num Priced Mp: "..value
end

-- Dissect: Num Priced Mp
dissect.num_priced_mp = function(buffer, offset, packet, parent)
  local length = size_of.num_priced_mp
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.num_priced_mp(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.num_priced_mp, range, value, display)

  return offset + length, value
end

-- Size: Inside Time Milli
size_of.inside_time_milli = 8

-- Display: Inside Time Milli
display.inside_time_milli = function(value)
  return "Inside Time Milli: "..value
end

-- Dissect: Inside Time Milli
dissect.inside_time_milli = function(buffer, offset, packet, parent)
  local length = size_of.inside_time_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.inside_time_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.inside_time_milli, range, value, display)

  return offset + length, value
end

-- Size: Inside Id
size_of.inside_id = 4

-- Display: Inside Id
display.inside_id = function(value)
  return "Inside Id: "..value
end

-- Dissect: Inside Id
dissect.inside_id = function(buffer, offset, packet, parent)
  local length = size_of.inside_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.inside_id(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.inside_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inside Update Message
size_of.inside_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.inside_id

  index = index + size_of.quote_flags

  index = index + size_of.price

  index = index + size_of.size

  index = index + size_of.inside_time_milli

  index = index + size_of.num_priced_mp

  return index
end

-- Display: Inside Update Message
display.inside_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inside Update Message
dissect.inside_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Inside Id: 4 Byte Unsigned Fixed Width Integer
  index, inside_id = dissect.inside_id(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = dissect.quote_flags(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  -- Inside Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, inside_time_milli = dissect.inside_time_milli(buffer, index, packet, parent)

  -- Num Priced Mp: 1 Byte Unsigned Fixed Width Integer
  index, num_priced_mp = dissect.num_priced_mp(buffer, index, packet, parent)

  return index
end

-- Dissect: Inside Update Message
dissect.inside_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inside_update_message then
    local length = size_of.inside_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inside_update_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.inside_update_message, range, display)
  end

  return dissect.inside_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Close
size_of.market_close = 8

-- Display: Market Close
display.market_close = function(value)
  return "Market Close: "..value
end

-- Dissect: Market Close
dissect.market_close = function(buffer, offset, packet, parent)
  local length = size_of.market_close
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.market_close(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.market_close, range, value, display)

  return offset + length, value
end

-- Size: Market Open
size_of.market_open = 8

-- Display: Market Open
display.market_open = function(value)
  return "Market Open: "..value
end

-- Dissect: Market Open
dissect.market_open = function(buffer, offset, packet, parent)
  local length = size_of.market_open
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.market_open(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.market_open, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Open Message
size_of.market_open_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.market_open

  index = index + size_of.market_close

  return index
end

-- Display: Market Open Message
display.market_open_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Open Message
dissect.market_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Market Open: 8 Byte Unsigned Fixed Width Integer
  index, market_open = dissect.market_open(buffer, index, packet, parent)

  -- Market Close: 8 Byte Unsigned Fixed Width Integer
  index, market_close = dissect.market_close(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Open Message
dissect.market_open_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_open_message then
    local length = size_of.market_open_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_open_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.market_open_message, range, display)
  end

  return dissect.market_open_message_fields(buffer, offset, packet, parent)
end

-- Size: Extended Quote Flags
size_of.extended_quote_flags = 1

-- Display: Extended Quote Flags
display.extended_quote_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Nms Conditional Quote flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Nms Conditional Quote|"
  end
  -- Is Offer Auto Ex flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Offer Auto Ex|"
  end
  -- Is Bid Auto Ex flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Bid Auto Ex|"
  end
  -- Is Quote Saturated flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Quote Saturated|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Extended Quote Flags
dissect.extended_quote_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved Extended Quote Flag Bits: 4 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.reserved_extended_quote_flag_bits, buffer(offset, 1))

  -- Nms Conditional Quote: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.nms_conditional_quote, buffer(offset, 1))

  -- Offer Auto Ex: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.offer_auto_ex, buffer(offset, 1))

  -- Bid Auto Ex: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.bid_auto_ex, buffer(offset, 1))

  -- Quote Saturated: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.quote_saturated, buffer(offset, 1))
end

-- Dissect: Extended Quote Flags
dissect.extended_quote_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.extended_quote_flags(range, packet, parent)
  local element = parent:add(otc_markets_multicast_ats_v4_3.fields.extended_quote_flags, range, display)

  if show.extended_quote_flags then
    dissect.extended_quote_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Quote Reference Id
size_of.quote_reference_id = 2

-- Display: Quote Reference Id
display.quote_reference_id = function(value)
  return "Quote Reference Id: "..value
end

-- Dissect: Quote Reference Id
dissect.quote_reference_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_reference_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.quote_reference_id(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.quote_reference_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Time Milli
size_of.quote_time_milli = 8

-- Display: Quote Time Milli
display.quote_time_milli = function(value)
  return "Quote Time Milli: "..value
end

-- Dissect: Quote Time Milli
dissect.quote_time_milli = function(buffer, offset, packet, parent)
  local length = size_of.quote_time_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.quote_time_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.quote_time_milli, range, value, display)

  return offset + length, value
end

-- Size: Qap
size_of.qap = 1

-- Display: Qap
display.qap = function(value)
  return "Qap: "..value
end

-- Dissect: Qap
dissect.qap = function(buffer, offset, packet, parent)
  local length = size_of.qap
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.qap(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.qap, range, value, display)

  return offset + length, value
end

-- Size: Quote Id
size_of.quote_id = 4

-- Display: Quote Id
display.quote_id = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
dissect.quote_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.quote_id(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Update Message
size_of.quote_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.quote_id

  index = index + size_of.quote_flags

  index = index + size_of.price

  index = index + size_of.size

  index = index + size_of.qap

  index = index + size_of.quote_time_milli

  index = index + size_of.quote_reference_id

  index = index + size_of.extended_quote_flags

  return index
end

-- Display: Quote Update Message
display.quote_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Message
dissect.quote_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = dissect.quote_flags(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  -- Qap: 1 Byte Signed Fixed Width Integer
  index, qap = dissect.qap(buffer, index, packet, parent)

  -- Quote Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, quote_time_milli = dissect.quote_time_milli(buffer, index, packet, parent)

  -- Quote Reference Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_reference_id = dissect.quote_reference_id(buffer, index, packet, parent)

  -- Extended Quote Flags: Struct of 5 fields
  index, extended_quote_flags = dissect.extended_quote_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Message
dissect.quote_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_update_message then
    local length = size_of.quote_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_update_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.quote_update_message, range, display)
  end

  return dissect.quote_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Bid Qap
size_of.bid_qap = 1

-- Display: Bid Qap
display.bid_qap = function(value)
  return "Bid Qap: "..value
end

-- Dissect: Bid Qap
dissect.bid_qap = function(buffer, offset, packet, parent)
  local length = size_of.bid_qap
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.bid_qap(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.bid_qap, range, value, display)

  return offset + length, value
end

-- Size: Ask Qap
size_of.ask_qap = 1

-- Display: Ask Qap
display.ask_qap = function(value)
  return "Ask Qap: "..value
end

-- Dissect: Ask Qap
dissect.ask_qap = function(buffer, offset, packet, parent)
  local length = size_of.ask_qap
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.ask_qap(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.ask_qap, range, value, display)

  return offset + length, value
end

-- Size: Mpid
size_of.mpid = 4

-- Display: Mpid
display.mpid = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
dissect.mpid = function(buffer, offset, packet, parent)
  local length = size_of.mpid
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mpid(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.mpid, range, value, display)

  return offset + length, value
end

-- Size: Quote Action
size_of.quote_action = 1

-- Display: Quote Action
display.quote_action = function(value)
  return "Quote Action: "..value
end

-- Dissect: Quote Action
dissect.quote_action = function(buffer, offset, packet, parent)
  local length = size_of.quote_action
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.quote_action(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.quote_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Message
size_of.quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.quote_id

  index = index + size_of.quote_action

  index = index + size_of.quote_flags

  index = index + size_of.security_id

  index = index + size_of.mpid

  index = index + size_of.ask_price

  index = index + size_of.ask_size

  index = index + size_of.ask_qap

  index = index + size_of.ask_time_milli

  index = index + size_of.bid_price

  index = index + size_of.bid_size

  index = index + size_of.bid_qap

  index = index + size_of.bid_time_milli

  index = index + size_of.quote_reference_id

  index = index + size_of.extended_quote_flags

  return index
end

-- Display: Quote Message
display.quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Message
dissect.quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Action: 1 Byte Unsigned Fixed Width Integer
  index, quote_action = dissect.quote_action(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = dissect.quote_flags(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = dissect.mpid(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Ask Qap: 1 Byte Signed Fixed Width Integer
  index, ask_qap = dissect.ask_qap(buffer, index, packet, parent)

  -- Ask Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, ask_time_milli = dissect.ask_time_milli(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Qap: 1 Byte Signed Fixed Width Integer
  index, bid_qap = dissect.bid_qap(buffer, index, packet, parent)

  -- Bid Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, bid_time_milli = dissect.bid_time_milli(buffer, index, packet, parent)

  -- Quote Reference Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_reference_id = dissect.quote_reference_id(buffer, index, packet, parent)

  -- Extended Quote Flags: Struct of 5 fields
  index, extended_quote_flags = dissect.extended_quote_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
dissect.quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_message then
    local length = size_of.quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.quote_message, range, display)
  end

  return dissect.quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Security Message
size_of.security_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.symbol

  index = index + size_of.last_update_milli

  index = index + size_of.security_action

  index = index + size_of.asset_class

  index = index + size_of.security_id

  index = index + size_of.security_flags

  index = index + size_of.tier

  index = index + size_of.reporting_status

  index = index + size_of.security_status

  return index
end

-- Display: Security Message
display.security_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Message
dissect.security_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Symbol: 10 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Last Update Milli: 8 Byte Unsigned Fixed Width Integer
  index, last_update_milli = dissect.last_update_milli(buffer, index, packet, parent)

  -- Security Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_action = dissect.security_action(buffer, index, packet, parent)

  -- Asset Class: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, asset_class = dissect.asset_class(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Flags: Struct of 8 fields
  index, security_flags = dissect.security_flags(buffer, index, packet, parent)

  -- Tier: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, tier = dissect.tier(buffer, index, packet, parent)

  -- Reporting Status: 1 Byte Ascii String Enum with 10 values
  index, reporting_status = dissect.reporting_status(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 7 values
  index, security_status = dissect.security_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
dissect.security_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_message then
    local length = size_of.security_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.security_message, range, display)
  end

  return dissect.security_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Msg Ct
size_of.market_msg_ct = 4

-- Display: Market Msg Ct
display.market_msg_ct = function(value)
  return "Market Msg Ct: "..value
end

-- Dissect: Market Msg Ct
dissect.market_msg_ct = function(buffer, offset, packet, parent)
  local length = size_of.market_msg_ct
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.market_msg_ct(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.market_msg_ct, range, value, display)

  return offset + length, value
end

-- Size: Market Close Time Milli
size_of.market_close_time_milli = 8

-- Display: Market Close Time Milli
display.market_close_time_milli = function(value)
  return "Market Close Time Milli: "..value
end

-- Dissect: Market Close Time Milli
dissect.market_close_time_milli = function(buffer, offset, packet, parent)
  local length = size_of.market_close_time_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.market_close_time_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.market_close_time_milli, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Close Message
size_of.market_close_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.market_close_time_milli

  index = index + size_of.market_msg_ct

  return index
end

-- Display: Market Close Message
display.market_close_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Close Message
dissect.market_close_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Market Close Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, market_close_time_milli = dissect.market_close_time_milli(buffer, index, packet, parent)

  -- Market Msg Ct: 4 Byte Unsigned Fixed Width Integer
  index, market_msg_ct = dissect.market_msg_ct(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Close Message
dissect.market_close_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_close_message then
    local length = size_of.market_close_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_close_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.market_close_message, range, display)
  end

  return dissect.market_close_message_fields(buffer, offset, packet, parent)
end

-- Size: Spin Last Seq Num
size_of.spin_last_seq_num = 4

-- Display: Spin Last Seq Num
display.spin_last_seq_num = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
dissect.spin_last_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.spin_last_seq_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.spin_last_seq_num(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Spin End Time Milli
size_of.spin_end_time_milli = 8

-- Display: Spin End Time Milli
display.spin_end_time_milli = function(value)
  return "Spin End Time Milli: "..value
end

-- Dissect: Spin End Time Milli
dissect.spin_end_time_milli = function(buffer, offset, packet, parent)
  local length = size_of.spin_end_time_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.spin_end_time_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.spin_end_time_milli, range, value, display)

  return offset + length, value
end

-- Size: Spin Msg Ct
size_of.spin_msg_ct = 4

-- Display: Spin Msg Ct
display.spin_msg_ct = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
dissect.spin_msg_ct = function(buffer, offset, packet, parent)
  local length = size_of.spin_msg_ct
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.spin_msg_ct(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Size: Spin Type
size_of.spin_type = 1

-- Display: Spin Type
display.spin_type = function(value)
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
dissect.spin_type = function(buffer, offset, packet, parent)
  local length = size_of.spin_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.spin_type(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.spin_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Spin Message
size_of.end_of_spin_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.spin_type

  index = index + size_of.spin_msg_ct

  index = index + size_of.spin_end_time_milli

  index = index + size_of.spin_last_seq_num

  return index
end

-- Display: End Of Spin Message
display.end_of_spin_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Spin Message
dissect.end_of_spin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Spin Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, spin_type = dissect.spin_type(buffer, index, packet, parent)

  -- Spin Msg Ct: 4 Byte Unsigned Fixed Width Integer
  index, spin_msg_ct = dissect.spin_msg_ct(buffer, index, packet, parent)

  -- Spin End Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, spin_end_time_milli = dissect.spin_end_time_milli(buffer, index, packet, parent)

  -- Spin Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, spin_last_seq_num = dissect.spin_last_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
dissect.end_of_spin_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_spin_message then
    local length = size_of.end_of_spin_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.end_of_spin_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.end_of_spin_message, range, display)
  end

  return dissect.end_of_spin_message_fields(buffer, offset, packet, parent)
end

-- Size: Spin Start Time Milli
size_of.spin_start_time_milli = 8

-- Display: Spin Start Time Milli
display.spin_start_time_milli = function(value)
  return "Spin Start Time Milli: "..value
end

-- Dissect: Spin Start Time Milli
dissect.spin_start_time_milli = function(buffer, offset, packet, parent)
  local length = size_of.spin_start_time_milli
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.spin_start_time_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.spin_start_time_milli, range, value, display)

  return offset + length, value
end

-- Calculate size of: Start Of Spin Message
size_of.start_of_spin_message = function(buffer, offset)
  local index = 0

  index = index + size_of.channel_seq_num

  index = index + size_of.spin_type

  index = index + size_of.spin_start_time_milli

  index = index + size_of.spin_last_seq_num

  return index
end

-- Display: Start Of Spin Message
display.start_of_spin_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Spin Message
dissect.start_of_spin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = dissect.channel_seq_num(buffer, index, packet, parent)

  -- Spin Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, spin_type = dissect.spin_type(buffer, index, packet, parent)

  -- Spin Start Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, spin_start_time_milli = dissect.spin_start_time_milli(buffer, index, packet, parent)

  -- Spin Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, spin_last_seq_num = dissect.spin_last_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
dissect.start_of_spin_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.start_of_spin_message then
    local length = size_of.start_of_spin_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.start_of_spin_message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.start_of_spin_message, range, display)
  end

  return dissect.start_of_spin_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_type)
  -- Size of Start Of Spin Message
  if message_type == 11 then
    return size_of.start_of_spin_message(buffer, offset)
  end
  -- Size of End Of Spin Message
  if message_type == 12 then
    return size_of.end_of_spin_message(buffer, offset)
  end
  -- Size of Market Open Message
  if message_type == 13 then
    return size_of.market_open_message(buffer, offset)
  end
  -- Size of Market Close Message
  if message_type == 14 then
    return size_of.market_close_message(buffer, offset)
  end
  -- Size of Security Message
  if message_type == 9 then
    return size_of.security_message(buffer, offset)
  end
  -- Size of Quote Message
  if message_type == 1 then
    return size_of.quote_message(buffer, offset)
  end
  -- Size of Quote Update Message
  if message_type == 2 then
    return size_of.quote_update_message(buffer, offset)
  end
  -- Size of Market Open Message
  if message_type == 3 then
    return size_of.market_open_message(buffer, offset)
  end
  -- Size of Inside Update Message
  if message_type == 4 then
    return size_of.inside_update_message(buffer, offset)
  end
  -- Size of Reference Price Message
  if message_type == 7 then
    return size_of.reference_price_message(buffer, offset)
  end
  -- Size of Reference Price Update Message
  if message_type == 8 then
    return size_of.reference_price_update_message(buffer, offset)
  end
  -- Size of Extended Security Message
  if message_type == 15 then
    return size_of.extended_security_message(buffer, offset)
  end
  -- Size of Extended Security No Cusip Message
  if message_type == 16 then
    return size_of.extended_security_no_cusip_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == 17 then
    return size_of.trade_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Spin Message
  if message_type == 11 then
    return dissect.start_of_spin_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Spin Message
  if message_type == 12 then
    return dissect.end_of_spin_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if message_type == 13 then
    return dissect.market_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Close Message
  if message_type == 14 then
    return dissect.market_close_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Message
  if message_type == 9 then
    return dissect.security_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_type == 1 then
    return dissect.quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Message
  if message_type == 2 then
    return dissect.quote_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if message_type == 3 then
    return dissect.market_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Inside Update Message
  if message_type == 4 then
    return dissect.inside_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Message
  if message_type == 7 then
    return dissect.reference_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Update Message
  if message_type == 8 then
    return dissect.reference_price_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Extended Security Message
  if message_type == 15 then
    return dissect.extended_security_message(buffer, offset, packet, parent)
  end
  -- Dissect Extended Security No Cusip Message
  if message_type == 16 then
    return dissect.extended_security_no_cusip_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 17 then
    return dissect.trade_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(otc_markets_multicast_ats_v4_3.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
size_of.message_size = 2

-- Display: Message Size
display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
dissect.message_size = function(buffer, offset, packet, parent)
  local length = size_of.message_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_size

  index = index + size_of.message_type

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 14 branches
  index = dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.message, range, display)
  end

  dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Packet Milli
size_of.packet_milli = 4

-- Display: Packet Milli
display.packet_milli = function(value)
  return "Packet Milli: "..value
end

-- Dissect: Packet Milli
dissect.packet_milli = function(buffer, offset, packet, parent)
  local length = size_of.packet_milli
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.packet_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Size: Messages
size_of.messages = 1

-- Display: Messages
display.messages = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
dissect.messages = function(buffer, offset, packet, parent)
  local length = size_of.messages
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.messages(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.messages, range, value, display)

  return offset + length, value
end

-- Size: Packet Flag
size_of.packet_flag = 1

-- Display: Packet Flag
display.packet_flag = function(buffer, packet, parent)
  local display = ""

  -- Is Test flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Test|"
  end
  -- Is Replay flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Replay|"
  end
  -- Is Seq Num Reset flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Seq Num Reset|"
  end
  -- Is Heartbeat flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Heartbeat|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Packet Flag
dissect.packet_flag_bits = function(buffer, offset, packet, parent)

  -- Test: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.test, buffer(offset, 1))

  -- Replay: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.replay, buffer(offset, 1))

  -- Reserved Packet Flags: 4 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.reserved_packet_flags, buffer(offset, 1))

  -- Seq Num Reset: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.seq_num_reset, buffer(offset, 1))

  -- Heartbeat: 1 Bit
  parent:add(otc_markets_multicast_ats_v4_3.fields.heartbeat, buffer(offset, 1))
end

-- Dissect: Packet Flag
dissect.packet_flag = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.packet_flag(range, packet, parent)
  local element = parent:add(otc_markets_multicast_ats_v4_3.fields.packet_flag, range, display)

  if show.packet_flag then
    dissect.packet_flag_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Seq Num
size_of.seq_num = 4

-- Display: Seq Num
display.seq_num = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
dissect.seq_num = function(buffer, offset, packet, parent)
  local length = size_of.seq_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.seq_num(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
size_of.packet_size = 2

-- Display: Packet Size
display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
dissect.packet_size = function(buffer, offset, packet, parent)
  local length = size_of.packet_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.packet_size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_multicast_ats_v4_3.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.packet_size

  index = index + size_of.seq_num

  index = index + size_of.packet_flag

  index = index + size_of.messages

  index = index + size_of.packet_milli

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = dissect.packet_size(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = dissect.packet_flag(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = dissect.messages(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = dissect.packet_milli(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(otc_markets_multicast_ats_v4_3.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Message: Struct of 2 fields
    index = dissect.message(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function otc_markets_multicast_ats_v4_3.init()
end

-- Dissector for Otc Markets Multicast Ats 4.3
function otc_markets_multicast_ats_v4_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = otc_markets_multicast_ats_v4_3.name

  -- Dissect protocol
  local protocol = parent:add(otc_markets_multicast_ats_v4_3, buffer(), otc_markets_multicast_ats_v4_3.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, otc_markets_multicast_ats_v4_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.otc_markets_multicast_ats_v4_3_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Otc Markets Multicast Ats 4.3
local function otc_markets_multicast_ats_v4_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.otc_markets_multicast_ats_v4_3_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = otc_markets_multicast_ats_v4_3
  otc_markets_multicast_ats_v4_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Otc Markets Multicast Ats 4.3
otc_markets_multicast_ats_v4_3:register_heuristic("udp", otc_markets_multicast_ats_v4_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
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
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
