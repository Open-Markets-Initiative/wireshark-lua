-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Otc Markets Multicast Ats 4.5 Protocol
local omi_otc_markets_multicast_ats_v4_5 = Proto("Otc.Markets.Multicast.Ats.v4.5.Lua", "Otc Markets Multicast Ats 4.5")

-- Protocol table
local otc_markets_multicast_ats_v4_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Otc Markets Multicast Ats 4.5 Fields
omi_otc_markets_multicast_ats_v4_5.fields.adr_level = ProtoField.new("Adr Level", "otc.markets.multicast.ats.v4.5.adrlevel", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.adr_ratio = ProtoField.new("Adr Ratio", "otc.markets.multicast.ats.v4.5.adrratio", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.ask_bid_wanted = ProtoField.new("Ask Bid Wanted", "otc.markets.multicast.ats.v4.5.askbidwanted", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_otc_markets_multicast_ats_v4_5.fields.ask_price = ProtoField.new("Ask Price", "otc.markets.multicast.ats.v4.5.askprice", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.ask_priced = ProtoField.new("Ask Priced", "otc.markets.multicast.ats.v4.5.askpriced", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_otc_markets_multicast_ats_v4_5.fields.ask_qap = ProtoField.new("Ask Qap", "otc.markets.multicast.ats.v4.5.askqap", ftypes.INT8)
omi_otc_markets_multicast_ats_v4_5.fields.ask_size = ProtoField.new("Ask Size", "otc.markets.multicast.ats.v4.5.asksize", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.ask_time_milli = ProtoField.new("Ask Time Milli", "otc.markets.multicast.ats.v4.5.asktimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.ask_unsolicited = ProtoField.new("Ask Unsolicited", "otc.markets.multicast.ats.v4.5.askunsolicited", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_otc_markets_multicast_ats_v4_5.fields.asset_class = ProtoField.new("Asset Class", "otc.markets.multicast.ats.v4.5.assetclass", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.bb_quoted = ProtoField.new("Bb Quoted", "otc.markets.multicast.ats.v4.5.bbquoted", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_otc_markets_multicast_ats_v4_5.fields.bid_ask_wanted = ProtoField.new("Bid Ask Wanted", "otc.markets.multicast.ats.v4.5.bidaskwanted", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_otc_markets_multicast_ats_v4_5.fields.bid_auto_ex = ProtoField.new("Bid Auto Ex", "otc.markets.multicast.ats.v4.5.bidautoex", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_otc_markets_multicast_ats_v4_5.fields.bid_price = ProtoField.new("Bid Price", "otc.markets.multicast.ats.v4.5.bidprice", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.bid_priced = ProtoField.new("Bid Priced", "otc.markets.multicast.ats.v4.5.bidpriced", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_otc_markets_multicast_ats_v4_5.fields.bid_qap = ProtoField.new("Bid Qap", "otc.markets.multicast.ats.v4.5.bidqap", ftypes.INT8)
omi_otc_markets_multicast_ats_v4_5.fields.bid_size = ProtoField.new("Bid Size", "otc.markets.multicast.ats.v4.5.bidsize", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.bid_time_milli = ProtoField.new("Bid Time Milli", "otc.markets.multicast.ats.v4.5.bidtimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.bid_unsolicited = ProtoField.new("Bid Unsolicited", "otc.markets.multicast.ats.v4.5.bidunsolicited", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_otc_markets_multicast_ats_v4_5.fields.callable = ProtoField.new("Callable", "otc.markets.multicast.ats.v4.5.callable", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0400)
omi_otc_markets_multicast_ats_v4_5.fields.callable_date_milli = ProtoField.new("Callable Date Milli", "otc.markets.multicast.ats.v4.5.callabledatemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.caveat_emptor_warning = ProtoField.new("Caveat Emptor Warning", "otc.markets.multicast.ats.v4.5.caveatemptorwarning", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_otc_markets_multicast_ats_v4_5.fields.channel_seq_num = ProtoField.new("Channel Seq Num", "otc.markets.multicast.ats.v4.5.channelseqnum", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.coupon = ProtoField.new("Coupon", "otc.markets.multicast.ats.v4.5.coupon", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.cusip = ProtoField.new("Cusip", "otc.markets.multicast.ats.v4.5.cusip", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.deprecated = ProtoField.new("Deprecated", "otc.markets.multicast.ats.v4.5.deprecated", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.disclosure_status = ProtoField.new("Disclosure Status", "otc.markets.multicast.ats.v4.5.disclosurestatus", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.extended_quote_flags = ProtoField.new("Extended Quote Flags", "otc.markets.multicast.ats.v4.5.extendedquoteflags", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.extended_security_flags = ProtoField.new("Extended Security Flags", "otc.markets.multicast.ats.v4.5.extendedsecurityflags", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.heartbeat = ProtoField.new("Heartbeat", "otc.markets.multicast.ats.v4.5.heartbeat", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_otc_markets_multicast_ats_v4_5.fields.inside_id = ProtoField.new("Inside Id", "otc.markets.multicast.ats.v4.5.insideid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.inside_time_milli = ProtoField.new("Inside Time Milli", "otc.markets.multicast.ats.v4.5.insidetimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.investment_grade = ProtoField.new("Investment Grade", "otc.markets.multicast.ats.v4.5.investmentgrade", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_otc_markets_multicast_ats_v4_5.fields.irregular = ProtoField.new("Irregular", "otc.markets.multicast.ats.v4.5.irregular", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_otc_markets_multicast_ats_v4_5.fields.issuer_name = ProtoField.new("Issuer Name", "otc.markets.multicast.ats.v4.5.issuername", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.issuer_size = ProtoField.new("Issuer Size", "otc.markets.multicast.ats.v4.5.issuersize", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.last_update_milli = ProtoField.new("Last Update Milli", "otc.markets.multicast.ats.v4.5.lastupdatemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.market_close = ProtoField.new("Market Close", "otc.markets.multicast.ats.v4.5.marketclose", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.market_close_time_milli = ProtoField.new("Market Close Time Milli", "otc.markets.multicast.ats.v4.5.marketclosetimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.market_msg_ct = ProtoField.new("Market Msg Ct", "otc.markets.multicast.ats.v4.5.marketmsgct", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.market_open = ProtoField.new("Market Open", "otc.markets.multicast.ats.v4.5.marketopen", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.maturity_date_milli = ProtoField.new("Maturity Date Milli", "otc.markets.multicast.ats.v4.5.maturitydatemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.message = ProtoField.new("Message", "otc.markets.multicast.ats.v4.5.message", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.message_header = ProtoField.new("Message Header", "otc.markets.multicast.ats.v4.5.messageheader", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.message_size = ProtoField.new("Message Size", "otc.markets.multicast.ats.v4.5.messagesize", ftypes.UINT16)
omi_otc_markets_multicast_ats_v4_5.fields.message_type = ProtoField.new("Message Type", "otc.markets.multicast.ats.v4.5.messagetype", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.messages = ProtoField.new("Messages", "otc.markets.multicast.ats.v4.5.messages", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.mpid = ProtoField.new("Mpid", "otc.markets.multicast.ats.v4.5.mpid", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.nms_conditional_quote = ProtoField.new("Nms Conditional Quote", "otc.markets.multicast.ats.v4.5.nmsconditionalquote", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_otc_markets_multicast_ats_v4_5.fields.num_priced_mp = ProtoField.new("Num Priced Mp", "otc.markets.multicast.ats.v4.5.numpricedmp", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.offer_auto_ex = ProtoField.new("Offer Auto Ex", "otc.markets.multicast.ats.v4.5.offerautoex", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_otc_markets_multicast_ats_v4_5.fields.otc_issuer_id = ProtoField.new("Otc Issuer Id", "otc.markets.multicast.ats.v4.5.otcissuerid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.otc_link_ecn_eligible = ProtoField.new("Otc Link Ecn Eligible", "otc.markets.multicast.ats.v4.5.otclinkecneligible", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_otc_markets_multicast_ats_v4_5.fields.otc_link_messaging_disabled = ProtoField.new("Otc Link Messaging Disabled", "otc.markets.multicast.ats.v4.5.otclinkmessagingdisabled", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_otc_markets_multicast_ats_v4_5.fields.packet = ProtoField.new("Packet", "otc.markets.multicast.ats.v4.5.packet", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.packet_flag = ProtoField.new("Packet Flag", "otc.markets.multicast.ats.v4.5.packetflag", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.packet_header = ProtoField.new("Packet Header", "otc.markets.multicast.ats.v4.5.packetheader", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.packet_milli = ProtoField.new("Packet Milli", "otc.markets.multicast.ats.v4.5.packetmilli", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.packet_size = ProtoField.new("Packet Size", "otc.markets.multicast.ats.v4.5.packetsize", ftypes.UINT16)
omi_otc_markets_multicast_ats_v4_5.fields.par_value = ProtoField.new("Par Value", "otc.markets.multicast.ats.v4.5.parvalue", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.payload = ProtoField.new("Payload", "otc.markets.multicast.ats.v4.5.payload", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.piggyback = ProtoField.new("Piggyback", "otc.markets.multicast.ats.v4.5.piggyback", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_otc_markets_multicast_ats_v4_5.fields.price = ProtoField.new("Price", "otc.markets.multicast.ats.v4.5.price", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.primary_market = ProtoField.new("Primary Market", "otc.markets.multicast.ats.v4.5.primarymarket", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.proprietary_quote_eligible = ProtoField.new("Proprietary Quote Eligible", "otc.markets.multicast.ats.v4.5.proprietaryquoteeligible", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_otc_markets_multicast_ats_v4_5.fields.qap = ProtoField.new("Qap", "otc.markets.multicast.ats.v4.5.qap", ftypes.INT8)
omi_otc_markets_multicast_ats_v4_5.fields.qualified_institutional_buyers_only = ProtoField.new("Qualified Institutional Buyers Only", "otc.markets.multicast.ats.v4.5.qualifiedinstitutionalbuyersonly", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_otc_markets_multicast_ats_v4_5.fields.quote_action = ProtoField.new("Quote Action", "otc.markets.multicast.ats.v4.5.quoteaction", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.quote_flags = ProtoField.new("Quote Flags", "otc.markets.multicast.ats.v4.5.quoteflags", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.quote_id = ProtoField.new("Quote Id", "otc.markets.multicast.ats.v4.5.quoteid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.quote_reference_id = ProtoField.new("Quote Reference Id", "otc.markets.multicast.ats.v4.5.quotereferenceid", ftypes.UINT16)
omi_otc_markets_multicast_ats_v4_5.fields.quote_saturated = ProtoField.new("Quote Saturated", "otc.markets.multicast.ats.v4.5.quotesaturated", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_otc_markets_multicast_ats_v4_5.fields.quote_time_milli = ProtoField.new("Quote Time Milli", "otc.markets.multicast.ats.v4.5.quotetimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.reference_price_action = ProtoField.new("Reference Price Action", "otc.markets.multicast.ats.v4.5.referencepriceaction", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.reference_price_id = ProtoField.new("Reference Price Id", "otc.markets.multicast.ats.v4.5.referencepriceid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.replay = ProtoField.new("Replay", "otc.markets.multicast.ats.v4.5.replay", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_otc_markets_multicast_ats_v4_5.fields.reporting_status = ProtoField.new("Reporting Status", "otc.markets.multicast.ats.v4.5.reportingstatus", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.reserved_extended_quote_flag_bits = ProtoField.new("Reserved Extended Quote Flag Bits", "otc.markets.multicast.ats.v4.5.reservedextendedquoteflagbits", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_otc_markets_multicast_ats_v4_5.fields.reserved_extended_security_flag_bits = ProtoField.new("Reserved Extended Security Flag Bits", "otc.markets.multicast.ats.v4.5.reservedextendedsecurityflagbits", ftypes.UINT16, nil, base.DEC, 0xF800)
omi_otc_markets_multicast_ats_v4_5.fields.reserved_packet_flags = ProtoField.new("Reserved Packet Flags", "otc.markets.multicast.ats.v4.5.reservedpacketflags", ftypes.UINT8, nil, base.DEC, 0x3C)
omi_otc_markets_multicast_ats_v4_5.fields.reserved_trade_status_bits = ProtoField.new("Reserved Trade Status Bits", "otc.markets.multicast.ats.v4.5.reservedtradestatusbits", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_otc_markets_multicast_ats_v4_5.fields.saturation_eligible = ProtoField.new("Saturation Eligible", "otc.markets.multicast.ats.v4.5.saturationeligible", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_otc_markets_multicast_ats_v4_5.fields.security_action = ProtoField.new("Security Action", "otc.markets.multicast.ats.v4.5.securityaction", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.security_desc = ProtoField.new("Security Desc", "otc.markets.multicast.ats.v4.5.securitydesc", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.security_detail = ProtoField.new("Security Detail", "otc.markets.multicast.ats.v4.5.securitydetail", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.security_detail_size = ProtoField.new("Security Detail Size", "otc.markets.multicast.ats.v4.5.securitydetailsize", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.security_flags = ProtoField.new("Security Flags", "otc.markets.multicast.ats.v4.5.securityflags", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.security_id = ProtoField.new("Security Id", "otc.markets.multicast.ats.v4.5.securityid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.security_status = ProtoField.new("Security Status", "otc.markets.multicast.ats.v4.5.securitystatus", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.security_type = ProtoField.new("Security Type", "otc.markets.multicast.ats.v4.5.securitytype", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.seq_num = ProtoField.new("Seq Num", "otc.markets.multicast.ats.v4.5.seqnum", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otc.markets.multicast.ats.v4.5.seqnumreset", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_otc_markets_multicast_ats_v4_5.fields.short_name = ProtoField.new("Short Name", "otc.markets.multicast.ats.v4.5.shortname", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.size = ProtoField.new("Size", "otc.markets.multicast.ats.v4.5.size", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otc.markets.multicast.ats.v4.5.spinendtimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otc.markets.multicast.ats.v4.5.spinlastseqnum", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otc.markets.multicast.ats.v4.5.spinmsgct", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otc.markets.multicast.ats.v4.5.spinstarttimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.spin_type = ProtoField.new("Spin Type", "otc.markets.multicast.ats.v4.5.spintype", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.sponsored_status = ProtoField.new("Sponsored Status", "otc.markets.multicast.ats.v4.5.sponsoredstatus", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_otc_markets_multicast_ats_v4_5.fields.state = ProtoField.new("State", "otc.markets.multicast.ats.v4.5.state", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_otc_markets_multicast_ats_v4_5.fields.symbol = ProtoField.new("Symbol", "otc.markets.multicast.ats.v4.5.symbol", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.test = ProtoField.new("Test", "otc.markets.multicast.ats.v4.5.test", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_otc_markets_multicast_ats_v4_5.fields.tier = ProtoField.new("Tier", "otc.markets.multicast.ats.v4.5.tier", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.time_milli = ProtoField.new("Time Milli", "otc.markets.multicast.ats.v4.5.timemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.trade_action = ProtoField.new("Trade Action", "otc.markets.multicast.ats.v4.5.tradeaction", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.trade_flags = ProtoField.new("Trade Flags", "otc.markets.multicast.ats.v4.5.tradeflags", ftypes.UINT8)
omi_otc_markets_multicast_ats_v4_5.fields.trade_id = ProtoField.new("Trade Id", "otc.markets.multicast.ats.v4.5.tradeid", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.trade_price = ProtoField.new("Trade Price", "otc.markets.multicast.ats.v4.5.tradeprice", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.trade_size = ProtoField.new("Trade Size", "otc.markets.multicast.ats.v4.5.tradesize", ftypes.UINT32)
omi_otc_markets_multicast_ats_v4_5.fields.trade_status = ProtoField.new("Trade Status", "otc.markets.multicast.ats.v4.5.tradestatus", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.trade_time_milli = ProtoField.new("Trade Time Milli", "otc.markets.multicast.ats.v4.5.tradetimemilli", ftypes.UINT64)
omi_otc_markets_multicast_ats_v4_5.fields.trading_flat = ProtoField.new("Trading Flat", "otc.markets.multicast.ats.v4.5.tradingflat", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_otc_markets_multicast_ats_v4_5.fields.unsolicited_only = ProtoField.new("Unsolicited Only", "otc.markets.multicast.ats.v4.5.unsolicitedonly", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_otc_markets_multicast_ats_v4_5.fields.update_side = ProtoField.new("Update Side", "otc.markets.multicast.ats.v4.5.updateside", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)

-- Otc Markets Multicast Ats 4.5 messages
omi_otc_markets_multicast_ats_v4_5.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otc.markets.multicast.ats.v4.5.endofspinmessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.extended_security_message = ProtoField.new("Extended Security Message", "otc.markets.multicast.ats.v4.5.extendedsecuritymessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.extended_security_no_cusip_message = ProtoField.new("Extended Security No Cusip Message", "otc.markets.multicast.ats.v4.5.extendedsecuritynocusipmessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.inside_update_message = ProtoField.new("Inside Update Message", "otc.markets.multicast.ats.v4.5.insideupdatemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.market_close_message = ProtoField.new("Market Close Message", "otc.markets.multicast.ats.v4.5.marketclosemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.market_open_message = ProtoField.new("Market Open Message", "otc.markets.multicast.ats.v4.5.marketopenmessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.quote_message = ProtoField.new("Quote Message", "otc.markets.multicast.ats.v4.5.quotemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.quote_update_message = ProtoField.new("Quote Update Message", "otc.markets.multicast.ats.v4.5.quoteupdatemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.reference_price_message = ProtoField.new("Reference Price Message", "otc.markets.multicast.ats.v4.5.referencepricemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.reference_price_update_message = ProtoField.new("Reference Price Update Message", "otc.markets.multicast.ats.v4.5.referencepriceupdatemessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.security_message = ProtoField.new("Security Message", "otc.markets.multicast.ats.v4.5.securitymessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otc.markets.multicast.ats.v4.5.startofspinmessage", ftypes.STRING)
omi_otc_markets_multicast_ats_v4_5.fields.trade_message = ProtoField.new("Trade Message", "otc.markets.multicast.ats.v4.5.trademessage", ftypes.STRING)

-- Otc Markets Multicast Ats 4.5 generated fields
omi_otc_markets_multicast_ats_v4_5.fields.message_index = ProtoField.new("Message Index", "otc.markets.multicast.ats.v4.5.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Otc Markets Multicast Ats 4.5 Element Dissection Options
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

-- Register Otc Markets Multicast Ats 4.5 Show Options
omi_otc_markets_multicast_ats_v4_5.prefs.show_end_of_spin_message = Pref.bool("Show End Of Spin Message", show.end_of_spin_message, "Parse and add End Of Spin Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_quote_flags = Pref.bool("Show Extended Quote Flags", show.extended_quote_flags, "Parse and add Extended Quote Flags to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_security_flags = Pref.bool("Show Extended Security Flags", show.extended_security_flags, "Parse and add Extended Security Flags to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_security_message = Pref.bool("Show Extended Security Message", show.extended_security_message, "Parse and add Extended Security Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_security_no_cusip_message = Pref.bool("Show Extended Security No Cusip Message", show.extended_security_no_cusip_message, "Parse and add Extended Security No Cusip Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_inside_update_message = Pref.bool("Show Inside Update Message", show.inside_update_message, "Parse and add Inside Update Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_market_close_message = Pref.bool("Show Market Close Message", show.market_close_message, "Parse and add Market Close Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_market_open_message = Pref.bool("Show Market Open Message", show.market_open_message, "Parse and add Market Open Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_packet_flag = Pref.bool("Show Packet Flag", show.packet_flag, "Parse and add Packet Flag to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_quote_flags = Pref.bool("Show Quote Flags", show.quote_flags, "Parse and add Quote Flags to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_quote_update_message = Pref.bool("Show Quote Update Message", show.quote_update_message, "Parse and add Quote Update Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_reference_price_message = Pref.bool("Show Reference Price Message", show.reference_price_message, "Parse and add Reference Price Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_reference_price_update_message = Pref.bool("Show Reference Price Update Message", show.reference_price_update_message, "Parse and add Reference Price Update Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_security_message = Pref.bool("Show Security Message", show.security_message, "Parse and add Security Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_start_of_spin_message = Pref.bool("Show Start Of Spin Message", show.start_of_spin_message, "Parse and add Start Of Spin Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_trade_status = Pref.bool("Show Trade Status", show.trade_status, "Parse and add Trade Status to protocol tree")
omi_otc_markets_multicast_ats_v4_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_otc_markets_multicast_ats_v4_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.end_of_spin_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_end_of_spin_message then
    show.end_of_spin_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_end_of_spin_message
    changed = true
  end
  if show.extended_quote_flags ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_quote_flags then
    show.extended_quote_flags = omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_quote_flags
    changed = true
  end
  if show.extended_security_flags ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_security_flags then
    show.extended_security_flags = omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_security_flags
    changed = true
  end
  if show.extended_security_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_security_message then
    show.extended_security_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_security_message
    changed = true
  end
  if show.extended_security_no_cusip_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_security_no_cusip_message then
    show.extended_security_no_cusip_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_extended_security_no_cusip_message
    changed = true
  end
  if show.inside_update_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_inside_update_message then
    show.inside_update_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_inside_update_message
    changed = true
  end
  if show.market_close_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_market_close_message then
    show.market_close_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_market_close_message
    changed = true
  end
  if show.market_open_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_market_open_message then
    show.market_open_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_market_open_message
    changed = true
  end
  if show.message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_message then
    show.message = omi_otc_markets_multicast_ats_v4_5.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_message_header then
    show.message_header = omi_otc_markets_multicast_ats_v4_5.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_packet then
    show.packet = omi_otc_markets_multicast_ats_v4_5.prefs.show_packet
    changed = true
  end
  if show.packet_flag ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_packet_flag then
    show.packet_flag = omi_otc_markets_multicast_ats_v4_5.prefs.show_packet_flag
    changed = true
  end
  if show.packet_header ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_packet_header then
    show.packet_header = omi_otc_markets_multicast_ats_v4_5.prefs.show_packet_header
    changed = true
  end
  if show.quote_flags ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_quote_flags then
    show.quote_flags = omi_otc_markets_multicast_ats_v4_5.prefs.show_quote_flags
    changed = true
  end
  if show.quote_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_quote_message then
    show.quote_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_quote_message
    changed = true
  end
  if show.quote_update_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_quote_update_message then
    show.quote_update_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_quote_update_message
    changed = true
  end
  if show.reference_price_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_reference_price_message then
    show.reference_price_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_reference_price_message
    changed = true
  end
  if show.reference_price_update_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_reference_price_update_message then
    show.reference_price_update_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_reference_price_update_message
    changed = true
  end
  if show.security_flags ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_security_flags then
    show.security_flags = omi_otc_markets_multicast_ats_v4_5.prefs.show_security_flags
    changed = true
  end
  if show.security_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_security_message then
    show.security_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_security_message
    changed = true
  end
  if show.start_of_spin_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_start_of_spin_message then
    show.start_of_spin_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_start_of_spin_message
    changed = true
  end
  if show.trade_message ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_trade_message then
    show.trade_message = omi_otc_markets_multicast_ats_v4_5.prefs.show_trade_message
    changed = true
  end
  if show.trade_status ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_trade_status then
    show.trade_status = omi_otc_markets_multicast_ats_v4_5.prefs.show_trade_status
    changed = true
  end
  if show.payload ~= omi_otc_markets_multicast_ats_v4_5.prefs.show_payload then
    show.payload = omi_otc_markets_multicast_ats_v4_5.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Otc Markets Multicast Ats 4.5
-----------------------------------------------------------------------

-- Trade Time Milli
otc_markets_multicast_ats_v4_5.trade_time_milli = {}

-- Size: Trade Time Milli
otc_markets_multicast_ats_v4_5.trade_time_milli.size = 8

-- Display: Trade Time Milli
otc_markets_multicast_ats_v4_5.trade_time_milli.display = function(value)
  return "Trade Time Milli: "..value
end

-- Dissect: Trade Time Milli
otc_markets_multicast_ats_v4_5.trade_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.trade_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.trade_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.trade_time_milli, range, value, display)

  return offset + length, value
end

-- Trade Size
otc_markets_multicast_ats_v4_5.trade_size = {}

-- Size: Trade Size
otc_markets_multicast_ats_v4_5.trade_size.size = 4

-- Display: Trade Size
otc_markets_multicast_ats_v4_5.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
otc_markets_multicast_ats_v4_5.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trade Price
otc_markets_multicast_ats_v4_5.trade_price = {}

-- Size: Trade Price
otc_markets_multicast_ats_v4_5.trade_price.size = 8

-- Display: Trade Price
otc_markets_multicast_ats_v4_5.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
otc_markets_multicast_ats_v4_5.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.trade_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Deprecated
otc_markets_multicast_ats_v4_5.deprecated = {}

-- Size: Deprecated
otc_markets_multicast_ats_v4_5.deprecated.size = 8

-- Display: Deprecated
otc_markets_multicast_ats_v4_5.deprecated.display = function(value)
  return "Deprecated: "..value
end

-- Dissect: Deprecated
otc_markets_multicast_ats_v4_5.deprecated.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.deprecated.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.deprecated.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.deprecated, range, value, display)

  return offset + length, value
end

-- Trade Status
otc_markets_multicast_ats_v4_5.trade_status = {}

-- Size: Trade Status
otc_markets_multicast_ats_v4_5.trade_status.size = 1

-- Display: Trade Status
otc_markets_multicast_ats_v4_5.trade_status.display = function(buffer, packet, parent)
  local display = ""

  -- Is Irregular flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Irregular|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Status
otc_markets_multicast_ats_v4_5.trade_status.bits = function(buffer, offset, packet, parent)

  -- Reserved Trade Status Bits: 7 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.reserved_trade_status_bits, buffer(offset, 1))

  -- Irregular: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.irregular, buffer(offset, 1))
end

-- Dissect: Trade Status
otc_markets_multicast_ats_v4_5.trade_status.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = otc_markets_multicast_ats_v4_5.trade_status.display(range, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.trade_status, range, display)

  if show.trade_status then
    otc_markets_multicast_ats_v4_5.trade_status.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Security Id
otc_markets_multicast_ats_v4_5.security_id = {}

-- Size: Security Id
otc_markets_multicast_ats_v4_5.security_id.size = 4

-- Display: Security Id
otc_markets_multicast_ats_v4_5.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otc_markets_multicast_ats_v4_5.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.security_id, range, value, display)

  return offset + length, value
end

-- Trade Flags
otc_markets_multicast_ats_v4_5.trade_flags = {}

-- Size: Trade Flags
otc_markets_multicast_ats_v4_5.trade_flags.size = 1

-- Display: Trade Flags
otc_markets_multicast_ats_v4_5.trade_flags.display = function(value)
  return "Trade Flags: "..value
end

-- Dissect: Trade Flags
otc_markets_multicast_ats_v4_5.trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.trade_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.trade_flags, range, value, display)

  return offset + length, value
end

-- Trade Action
otc_markets_multicast_ats_v4_5.trade_action = {}

-- Size: Trade Action
otc_markets_multicast_ats_v4_5.trade_action.size = 1

-- Display: Trade Action
otc_markets_multicast_ats_v4_5.trade_action.display = function(value)
  if value == 2 then
    return "Trade Action: Add (2)"
  end

  return "Trade Action: Unknown("..value..")"
end

-- Dissect: Trade Action
otc_markets_multicast_ats_v4_5.trade_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.trade_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.trade_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.trade_action, range, value, display)

  return offset + length, value
end

-- Trade Id
otc_markets_multicast_ats_v4_5.trade_id = {}

-- Size: Trade Id
otc_markets_multicast_ats_v4_5.trade_id.size = 4

-- Display: Trade Id
otc_markets_multicast_ats_v4_5.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
otc_markets_multicast_ats_v4_5.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Channel Seq Num
otc_markets_multicast_ats_v4_5.channel_seq_num = {}

-- Size: Channel Seq Num
otc_markets_multicast_ats_v4_5.channel_seq_num.size = 4

-- Display: Channel Seq Num
otc_markets_multicast_ats_v4_5.channel_seq_num.display = function(value)
  return "Channel Seq Num: "..value
end

-- Dissect: Channel Seq Num
otc_markets_multicast_ats_v4_5.channel_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.channel_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.channel_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.channel_seq_num, range, value, display)

  return offset + length, value
end

-- Trade Message
otc_markets_multicast_ats_v4_5.trade_message = {}

-- Calculate size of: Trade Message
otc_markets_multicast_ats_v4_5.trade_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.trade_id.size

  index = index + otc_markets_multicast_ats_v4_5.trade_action.size

  index = index + otc_markets_multicast_ats_v4_5.trade_flags.size

  index = index + otc_markets_multicast_ats_v4_5.security_id.size

  index = index + otc_markets_multicast_ats_v4_5.trade_status.size

  index = index + otc_markets_multicast_ats_v4_5.deprecated.size

  index = index + otc_markets_multicast_ats_v4_5.trade_price.size

  index = index + otc_markets_multicast_ats_v4_5.trade_size.size

  index = index + otc_markets_multicast_ats_v4_5.trade_time_milli.size

  return index
end

-- Display: Trade Message
otc_markets_multicast_ats_v4_5.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
otc_markets_multicast_ats_v4_5.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = otc_markets_multicast_ats_v4_5.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Action: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, trade_action = otc_markets_multicast_ats_v4_5.trade_action.dissect(buffer, index, packet, parent)

  -- Trade Flags: 1 Byte Unsigned Fixed Width Integer
  index, trade_flags = otc_markets_multicast_ats_v4_5.trade_flags.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = otc_markets_multicast_ats_v4_5.security_id.dissect(buffer, index, packet, parent)

  -- Trade Status: Struct of 2 fields
  index, trade_status = otc_markets_multicast_ats_v4_5.trade_status.dissect(buffer, index, packet, parent)

  -- Deprecated: 8 Byte Ascii String
  index, deprecated = otc_markets_multicast_ats_v4_5.deprecated.dissect(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = otc_markets_multicast_ats_v4_5.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, trade_size = otc_markets_multicast_ats_v4_5.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, trade_time_milli = otc_markets_multicast_ats_v4_5.trade_time_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
otc_markets_multicast_ats_v4_5.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.trade_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Issuer Name
otc_markets_multicast_ats_v4_5.issuer_name = {}

-- Display: Issuer Name
otc_markets_multicast_ats_v4_5.issuer_name.display = function(value)
  return "Issuer Name: "..value
end

-- Dissect runtime sized field: Issuer Name
otc_markets_multicast_ats_v4_5.issuer_name.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.issuer_name.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.issuer_name, range, value, display)

  return offset + size
end

-- Issuer Size
otc_markets_multicast_ats_v4_5.issuer_size = {}

-- Size: Issuer Size
otc_markets_multicast_ats_v4_5.issuer_size.size = 1

-- Display: Issuer Size
otc_markets_multicast_ats_v4_5.issuer_size.display = function(value)
  return "Issuer Size: "..value
end

-- Dissect: Issuer Size
otc_markets_multicast_ats_v4_5.issuer_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.issuer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.issuer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.issuer_size, range, value, display)

  return offset + length, value
end

-- Security Detail
otc_markets_multicast_ats_v4_5.security_detail = {}

-- Display: Security Detail
otc_markets_multicast_ats_v4_5.security_detail.display = function(value)
  return "Security Detail: "..value
end

-- Dissect runtime sized field: Security Detail
otc_markets_multicast_ats_v4_5.security_detail.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.security_detail.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.security_detail, range, value, display)

  return offset + size
end

-- Security Detail Size
otc_markets_multicast_ats_v4_5.security_detail_size = {}

-- Size: Security Detail Size
otc_markets_multicast_ats_v4_5.security_detail_size.size = 1

-- Display: Security Detail Size
otc_markets_multicast_ats_v4_5.security_detail_size.display = function(value)
  return "Security Detail Size: "..value
end

-- Dissect: Security Detail Size
otc_markets_multicast_ats_v4_5.security_detail_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.security_detail_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.security_detail_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.security_detail_size, range, value, display)

  return offset + length, value
end

-- Adr Level
otc_markets_multicast_ats_v4_5.adr_level = {}

-- Size: Adr Level
otc_markets_multicast_ats_v4_5.adr_level.size = 15

-- Display: Adr Level
otc_markets_multicast_ats_v4_5.adr_level.display = function(value)
  return "Adr Level: "..value
end

-- Dissect: Adr Level
otc_markets_multicast_ats_v4_5.adr_level.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.adr_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.adr_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.adr_level, range, value, display)

  return offset + length, value
end

-- Adr Ratio
otc_markets_multicast_ats_v4_5.adr_ratio = {}

-- Size: Adr Ratio
otc_markets_multicast_ats_v4_5.adr_ratio.size = 8

-- Display: Adr Ratio
otc_markets_multicast_ats_v4_5.adr_ratio.display = function(value)
  return "Adr Ratio: "..value
end

-- Dissect: Adr Ratio
otc_markets_multicast_ats_v4_5.adr_ratio.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.adr_ratio.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.adr_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.adr_ratio, range, value, display)

  return offset + length, value
end

-- Callable Date Milli
otc_markets_multicast_ats_v4_5.callable_date_milli = {}

-- Size: Callable Date Milli
otc_markets_multicast_ats_v4_5.callable_date_milli.size = 8

-- Display: Callable Date Milli
otc_markets_multicast_ats_v4_5.callable_date_milli.display = function(value)
  return "Callable Date Milli: "..value
end

-- Dissect: Callable Date Milli
otc_markets_multicast_ats_v4_5.callable_date_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.callable_date_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.callable_date_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.callable_date_milli, range, value, display)

  return offset + length, value
end

-- Maturity Date Milli
otc_markets_multicast_ats_v4_5.maturity_date_milli = {}

-- Size: Maturity Date Milli
otc_markets_multicast_ats_v4_5.maturity_date_milli.size = 8

-- Display: Maturity Date Milli
otc_markets_multicast_ats_v4_5.maturity_date_milli.display = function(value)
  return "Maturity Date Milli: "..value
end

-- Dissect: Maturity Date Milli
otc_markets_multicast_ats_v4_5.maturity_date_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.maturity_date_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.maturity_date_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.maturity_date_milli, range, value, display)

  return offset + length, value
end

-- Coupon
otc_markets_multicast_ats_v4_5.coupon = {}

-- Size: Coupon
otc_markets_multicast_ats_v4_5.coupon.size = 8

-- Display: Coupon
otc_markets_multicast_ats_v4_5.coupon.display = function(value)
  return "Coupon: "..value
end

-- Dissect: Coupon
otc_markets_multicast_ats_v4_5.coupon.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.coupon.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.coupon.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.coupon, range, value, display)

  return offset + length, value
end

-- Par Value
otc_markets_multicast_ats_v4_5.par_value = {}

-- Size: Par Value
otc_markets_multicast_ats_v4_5.par_value.size = 8

-- Display: Par Value
otc_markets_multicast_ats_v4_5.par_value.display = function(value)
  return "Par Value: "..value
end

-- Dissect: Par Value
otc_markets_multicast_ats_v4_5.par_value.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.par_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.par_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.par_value, range, value, display)

  return offset + length, value
end

-- Security Status
otc_markets_multicast_ats_v4_5.security_status = {}

-- Size: Security Status
otc_markets_multicast_ats_v4_5.security_status.size = 1

-- Display: Security Status
otc_markets_multicast_ats_v4_5.security_status.display = function(value)
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
otc_markets_multicast_ats_v4_5.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.security_status, range, value, display)

  return offset + length, value
end

-- Disclosure Status
otc_markets_multicast_ats_v4_5.disclosure_status = {}

-- Size: Disclosure Status
otc_markets_multicast_ats_v4_5.disclosure_status.size = 1

-- Display: Disclosure Status
otc_markets_multicast_ats_v4_5.disclosure_status.display = function(value)
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
otc_markets_multicast_ats_v4_5.disclosure_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.disclosure_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.disclosure_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.disclosure_status, range, value, display)

  return offset + length, value
end

-- Reporting Status
otc_markets_multicast_ats_v4_5.reporting_status = {}

-- Size: Reporting Status
otc_markets_multicast_ats_v4_5.reporting_status.size = 1

-- Display: Reporting Status
otc_markets_multicast_ats_v4_5.reporting_status.display = function(value)
  if value == "A" then
    return "Reporting Status: Alternative Reporting Standard (A)"
  end
  if value == "B" then
    return "Reporting Status: Bank Thrift (B)"
  end
  if value == "C" then
    return "Reporting Status: Sec Reporting Reg Cf (C)"
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
otc_markets_multicast_ats_v4_5.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Tier
otc_markets_multicast_ats_v4_5.tier = {}

-- Size: Tier
otc_markets_multicast_ats_v4_5.tier.size = 1

-- Display: Tier
otc_markets_multicast_ats_v4_5.tier.display = function(value)
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
otc_markets_multicast_ats_v4_5.tier.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.tier, range, value, display)

  return offset + length, value
end

-- Security Flags
otc_markets_multicast_ats_v4_5.security_flags = {}

-- Size: Security Flags
otc_markets_multicast_ats_v4_5.security_flags.size = 1

-- Display: Security Flags
otc_markets_multicast_ats_v4_5.security_flags.display = function(buffer, packet, parent)
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
  -- Is Proprietary Quote Eligible flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Proprietary Quote Eligible|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Security Flags
otc_markets_multicast_ats_v4_5.security_flags.bits = function(buffer, offset, packet, parent)

  -- Saturation Eligible: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.saturation_eligible, buffer(offset, 1))

  -- Otc Link Messaging Disabled: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.otc_link_messaging_disabled, buffer(offset, 1))

  -- Otc Link Ecn Eligible: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.otc_link_ecn_eligible, buffer(offset, 1))

  -- Bb Quoted: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.bb_quoted, buffer(offset, 1))

  -- Unsolicited Only: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.unsolicited_only, buffer(offset, 1))

  -- Qualified Institutional Buyers Only: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.qualified_institutional_buyers_only, buffer(offset, 1))

  -- Caveat Emptor Warning: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.caveat_emptor_warning, buffer(offset, 1))

  -- Proprietary Quote Eligible: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.proprietary_quote_eligible, buffer(offset, 1))
end

-- Dissect: Security Flags
otc_markets_multicast_ats_v4_5.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = otc_markets_multicast_ats_v4_5.security_flags.display(range, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.security_flags, range, display)

  if show.security_flags then
    otc_markets_multicast_ats_v4_5.security_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Primary Market
otc_markets_multicast_ats_v4_5.primary_market = {}

-- Size: Primary Market
otc_markets_multicast_ats_v4_5.primary_market.size = 3

-- Display: Primary Market
otc_markets_multicast_ats_v4_5.primary_market.display = function(value)
  return "Primary Market: "..value
end

-- Dissect: Primary Market
otc_markets_multicast_ats_v4_5.primary_market.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.primary_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.primary_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.primary_market, range, value, display)

  return offset + length, value
end

-- Security Type
otc_markets_multicast_ats_v4_5.security_type = {}

-- Size: Security Type
otc_markets_multicast_ats_v4_5.security_type.size = 5

-- Display: Security Type
otc_markets_multicast_ats_v4_5.security_type.display = function(value)
  return "Security Type: "..value
end

-- Dissect: Security Type
otc_markets_multicast_ats_v4_5.security_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.security_type, range, value, display)

  return offset + length, value
end

-- Asset Class
otc_markets_multicast_ats_v4_5.asset_class = {}

-- Size: Asset Class
otc_markets_multicast_ats_v4_5.asset_class.size = 1

-- Display: Asset Class
otc_markets_multicast_ats_v4_5.asset_class.display = function(value)
  if value == 1 then
    return "Asset Class: Equity (1)"
  end
  if value == 2 then
    return "Asset Class: Fixed Income (2)"
  end

  return "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otc_markets_multicast_ats_v4_5.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Short Name
otc_markets_multicast_ats_v4_5.short_name = {}

-- Size: Short Name
otc_markets_multicast_ats_v4_5.short_name.size = 25

-- Display: Short Name
otc_markets_multicast_ats_v4_5.short_name.display = function(value)
  return "Short Name: "..value
end

-- Dissect: Short Name
otc_markets_multicast_ats_v4_5.short_name.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.short_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.short_name, range, value, display)

  return offset + length, value
end

-- Security Desc
otc_markets_multicast_ats_v4_5.security_desc = {}

-- Size: Security Desc
otc_markets_multicast_ats_v4_5.security_desc.size = 25

-- Display: Security Desc
otc_markets_multicast_ats_v4_5.security_desc.display = function(value)
  return "Security Desc: "..value
end

-- Dissect: Security Desc
otc_markets_multicast_ats_v4_5.security_desc.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.security_desc.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.security_desc.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.security_desc, range, value, display)

  return offset + length, value
end

-- Otc Issuer Id
otc_markets_multicast_ats_v4_5.otc_issuer_id = {}

-- Size: Otc Issuer Id
otc_markets_multicast_ats_v4_5.otc_issuer_id.size = 4

-- Display: Otc Issuer Id
otc_markets_multicast_ats_v4_5.otc_issuer_id.display = function(value)
  return "Otc Issuer Id: "..value
end

-- Dissect: Otc Issuer Id
otc_markets_multicast_ats_v4_5.otc_issuer_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.otc_issuer_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.otc_issuer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.otc_issuer_id, range, value, display)

  return offset + length, value
end

-- Security Action
otc_markets_multicast_ats_v4_5.security_action = {}

-- Size: Security Action
otc_markets_multicast_ats_v4_5.security_action.size = 1

-- Display: Security Action
otc_markets_multicast_ats_v4_5.security_action.display = function(value)
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
otc_markets_multicast_ats_v4_5.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.security_action, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otc_markets_multicast_ats_v4_5.last_update_milli = {}

-- Size: Last Update Milli
otc_markets_multicast_ats_v4_5.last_update_milli.size = 8

-- Display: Last Update Milli
otc_markets_multicast_ats_v4_5.last_update_milli.display = function(value)
  return "Last Update Milli: "..value
end

-- Dissect: Last Update Milli
otc_markets_multicast_ats_v4_5.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.last_update_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.last_update_milli, range, value, display)

  return offset + length, value
end

-- Symbol
otc_markets_multicast_ats_v4_5.symbol = {}

-- Size: Symbol
otc_markets_multicast_ats_v4_5.symbol.size = 10

-- Display: Symbol
otc_markets_multicast_ats_v4_5.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otc_markets_multicast_ats_v4_5.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.symbol, range, value, display)

  return offset + length, value
end

-- Extended Security No Cusip Message
otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message = {}

-- Calculate size of: Extended Security No Cusip Message
otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.symbol.size

  index = index + otc_markets_multicast_ats_v4_5.last_update_milli.size

  index = index + otc_markets_multicast_ats_v4_5.security_action.size

  index = index + otc_markets_multicast_ats_v4_5.otc_issuer_id.size

  index = index + otc_markets_multicast_ats_v4_5.security_desc.size

  index = index + otc_markets_multicast_ats_v4_5.short_name.size

  index = index + otc_markets_multicast_ats_v4_5.asset_class.size

  index = index + otc_markets_multicast_ats_v4_5.security_type.size

  index = index + otc_markets_multicast_ats_v4_5.primary_market.size

  index = index + otc_markets_multicast_ats_v4_5.security_id.size

  index = index + otc_markets_multicast_ats_v4_5.security_flags.size

  index = index + otc_markets_multicast_ats_v4_5.tier.size

  index = index + otc_markets_multicast_ats_v4_5.reporting_status.size

  index = index + otc_markets_multicast_ats_v4_5.disclosure_status.size

  index = index + otc_markets_multicast_ats_v4_5.security_status.size

  index = index + otc_markets_multicast_ats_v4_5.par_value.size

  index = index + otc_markets_multicast_ats_v4_5.coupon.size

  index = index + otc_markets_multicast_ats_v4_5.maturity_date_milli.size

  index = index + otc_markets_multicast_ats_v4_5.callable_date_milli.size

  index = index + otc_markets_multicast_ats_v4_5.adr_ratio.size

  index = index + otc_markets_multicast_ats_v4_5.adr_level.size

  index = index + otc_markets_multicast_ats_v4_5.security_detail_size.size

  -- Parse runtime size of: Security Detail
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + otc_markets_multicast_ats_v4_5.issuer_size.size

  -- Parse runtime size of: Issuer Name
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Extended Security No Cusip Message
otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Security No Cusip Message
otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: 10 Byte Ascii String
  index, symbol = otc_markets_multicast_ats_v4_5.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: 8 Byte Unsigned Fixed Width Integer
  index, last_update_milli = otc_markets_multicast_ats_v4_5.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_action = otc_markets_multicast_ats_v4_5.security_action.dissect(buffer, index, packet, parent)

  -- Otc Issuer Id: 4 Byte Unsigned Fixed Width Integer
  index, otc_issuer_id = otc_markets_multicast_ats_v4_5.otc_issuer_id.dissect(buffer, index, packet, parent)

  -- Security Desc: 25 Byte Ascii String
  index, security_desc = otc_markets_multicast_ats_v4_5.security_desc.dissect(buffer, index, packet, parent)

  -- Short Name: 25 Byte Ascii String
  index, short_name = otc_markets_multicast_ats_v4_5.short_name.dissect(buffer, index, packet, parent)

  -- Asset Class: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, asset_class = otc_markets_multicast_ats_v4_5.asset_class.dissect(buffer, index, packet, parent)

  -- Security Type: 5 Byte Ascii String
  index, security_type = otc_markets_multicast_ats_v4_5.security_type.dissect(buffer, index, packet, parent)

  -- Primary Market: 3 Byte Ascii String
  index, primary_market = otc_markets_multicast_ats_v4_5.primary_market.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = otc_markets_multicast_ats_v4_5.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 8 fields
  index, security_flags = otc_markets_multicast_ats_v4_5.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, tier = otc_markets_multicast_ats_v4_5.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: 1 Byte Ascii String Enum with 11 values
  index, reporting_status = otc_markets_multicast_ats_v4_5.reporting_status.dissect(buffer, index, packet, parent)

  -- Disclosure Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, disclosure_status = otc_markets_multicast_ats_v4_5.disclosure_status.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 7 values
  index, security_status = otc_markets_multicast_ats_v4_5.security_status.dissect(buffer, index, packet, parent)

  -- Par Value: 8 Byte Unsigned Fixed Width Integer
  index, par_value = otc_markets_multicast_ats_v4_5.par_value.dissect(buffer, index, packet, parent)

  -- Coupon: 8 Byte Unsigned Fixed Width Integer
  index, coupon = otc_markets_multicast_ats_v4_5.coupon.dissect(buffer, index, packet, parent)

  -- Maturity Date Milli: 8 Byte Unsigned Fixed Width Integer
  index, maturity_date_milli = otc_markets_multicast_ats_v4_5.maturity_date_milli.dissect(buffer, index, packet, parent)

  -- Callable Date Milli: 8 Byte Unsigned Fixed Width Integer
  index, callable_date_milli = otc_markets_multicast_ats_v4_5.callable_date_milli.dissect(buffer, index, packet, parent)

  -- Adr Ratio: 8 Byte Unsigned Fixed Width Integer
  index, adr_ratio = otc_markets_multicast_ats_v4_5.adr_ratio.dissect(buffer, index, packet, parent)

  -- Adr Level: 15 Byte Ascii String
  index, adr_level = otc_markets_multicast_ats_v4_5.adr_level.dissect(buffer, index, packet, parent)

  -- Security Detail Size: 1 Byte Unsigned Fixed Width Integer
  index, security_detail_size = otc_markets_multicast_ats_v4_5.security_detail_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Security Detail
  index, security_detail = otc_markets_multicast_ats_v4_5.security_detail.dissect(buffer, index, packet, parent, security_detail_size)

  -- Issuer Size: 1 Byte Unsigned Fixed Width Integer
  index, issuer_size = otc_markets_multicast_ats_v4_5.issuer_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Issuer Name
  index, issuer_name = otc_markets_multicast_ats_v4_5.issuer_name.dissect(buffer, index, packet, parent, issuer_size)

  return index
end

-- Dissect: Extended Security No Cusip Message
otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.extended_security_no_cusip_message then
    local length = otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message.display(buffer, packet, parent)
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.extended_security_no_cusip_message, range, display)
  end

  return otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message.fields(buffer, offset, packet, parent)
end

-- Cusip
otc_markets_multicast_ats_v4_5.cusip = {}

-- Size: Cusip
otc_markets_multicast_ats_v4_5.cusip.size = 9

-- Display: Cusip
otc_markets_multicast_ats_v4_5.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
otc_markets_multicast_ats_v4_5.cusip.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.cusip.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.cusip, range, value, display)

  return offset + length, value
end

-- Extended Security Flags
otc_markets_multicast_ats_v4_5.extended_security_flags = {}

-- Size: Extended Security Flags
otc_markets_multicast_ats_v4_5.extended_security_flags.size = 2

-- Display: Extended Security Flags
otc_markets_multicast_ats_v4_5.extended_security_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Callable flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Callable|"
  end
  -- Is Trading Flat flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Trading Flat|"
  end
  -- Is Investment Grade flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Investment Grade|"
  end
  -- Is Saturation Eligible flag set?
  if buffer:bitfield(8) > 0 then
    display = display.."Saturation Eligible|"
  end
  -- Is Otc Link Messaging Disabled flag set?
  if buffer:bitfield(9) > 0 then
    display = display.."Otc Link Messaging Disabled|"
  end
  -- Is Otc Link Ecn Eligible flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Otc Link Ecn Eligible|"
  end
  -- Is Sponsored Status flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Sponsored Status|"
  end
  -- Is Unsolicited Only flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Unsolicited Only|"
  end
  -- Is Qualified Institutional Buyers Only flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Qualified Institutional Buyers Only|"
  end
  -- Is Caveat Emptor Warning flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Caveat Emptor Warning|"
  end
  -- Is Piggyback flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Piggyback|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Extended Security Flags
otc_markets_multicast_ats_v4_5.extended_security_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved Extended Security Flag Bits: 5 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.reserved_extended_security_flag_bits, buffer(offset, 2))

  -- Callable: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.callable, buffer(offset, 2))

  -- Trading Flat: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.trading_flat, buffer(offset, 2))

  -- Investment Grade: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.investment_grade, buffer(offset, 2))

  -- Saturation Eligible: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.saturation_eligible, buffer(offset, 2))

  -- Otc Link Messaging Disabled: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.otc_link_messaging_disabled, buffer(offset, 2))

  -- Otc Link Ecn Eligible: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.otc_link_ecn_eligible, buffer(offset, 2))

  -- Sponsored Status: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.sponsored_status, buffer(offset, 2))

  -- Unsolicited Only: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.unsolicited_only, buffer(offset, 2))

  -- Qualified Institutional Buyers Only: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.qualified_institutional_buyers_only, buffer(offset, 2))

  -- Caveat Emptor Warning: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.caveat_emptor_warning, buffer(offset, 2))

  -- Piggyback: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.piggyback, buffer(offset, 2))
end

-- Dissect: Extended Security Flags
otc_markets_multicast_ats_v4_5.extended_security_flags.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = otc_markets_multicast_ats_v4_5.extended_security_flags.display(range, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.extended_security_flags, range, display)

  if show.extended_security_flags then
    otc_markets_multicast_ats_v4_5.extended_security_flags.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Extended Security Message
otc_markets_multicast_ats_v4_5.extended_security_message = {}

-- Calculate size of: Extended Security Message
otc_markets_multicast_ats_v4_5.extended_security_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.symbol.size

  index = index + otc_markets_multicast_ats_v4_5.last_update_milli.size

  index = index + otc_markets_multicast_ats_v4_5.security_action.size

  index = index + otc_markets_multicast_ats_v4_5.otc_issuer_id.size

  index = index + otc_markets_multicast_ats_v4_5.security_desc.size

  index = index + otc_markets_multicast_ats_v4_5.short_name.size

  index = index + otc_markets_multicast_ats_v4_5.asset_class.size

  index = index + otc_markets_multicast_ats_v4_5.security_type.size

  index = index + otc_markets_multicast_ats_v4_5.primary_market.size

  index = index + otc_markets_multicast_ats_v4_5.security_id.size

  index = index + otc_markets_multicast_ats_v4_5.extended_security_flags.size

  index = index + otc_markets_multicast_ats_v4_5.tier.size

  index = index + otc_markets_multicast_ats_v4_5.reporting_status.size

  index = index + otc_markets_multicast_ats_v4_5.disclosure_status.size

  index = index + otc_markets_multicast_ats_v4_5.security_status.size

  index = index + otc_markets_multicast_ats_v4_5.par_value.size

  index = index + otc_markets_multicast_ats_v4_5.coupon.size

  index = index + otc_markets_multicast_ats_v4_5.maturity_date_milli.size

  index = index + otc_markets_multicast_ats_v4_5.callable_date_milli.size

  index = index + otc_markets_multicast_ats_v4_5.adr_ratio.size

  index = index + otc_markets_multicast_ats_v4_5.adr_level.size

  index = index + otc_markets_multicast_ats_v4_5.security_detail_size.size

  -- Parse runtime size of: Security Detail
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + otc_markets_multicast_ats_v4_5.issuer_size.size

  -- Parse runtime size of: Issuer Name
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + otc_markets_multicast_ats_v4_5.cusip.size

  return index
end

-- Display: Extended Security Message
otc_markets_multicast_ats_v4_5.extended_security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Security Message
otc_markets_multicast_ats_v4_5.extended_security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: 10 Byte Ascii String
  index, symbol = otc_markets_multicast_ats_v4_5.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: 8 Byte Unsigned Fixed Width Integer
  index, last_update_milli = otc_markets_multicast_ats_v4_5.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_action = otc_markets_multicast_ats_v4_5.security_action.dissect(buffer, index, packet, parent)

  -- Otc Issuer Id: 4 Byte Unsigned Fixed Width Integer
  index, otc_issuer_id = otc_markets_multicast_ats_v4_5.otc_issuer_id.dissect(buffer, index, packet, parent)

  -- Security Desc: 25 Byte Ascii String
  index, security_desc = otc_markets_multicast_ats_v4_5.security_desc.dissect(buffer, index, packet, parent)

  -- Short Name: 25 Byte Ascii String
  index, short_name = otc_markets_multicast_ats_v4_5.short_name.dissect(buffer, index, packet, parent)

  -- Asset Class: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, asset_class = otc_markets_multicast_ats_v4_5.asset_class.dissect(buffer, index, packet, parent)

  -- Security Type: 5 Byte Ascii String
  index, security_type = otc_markets_multicast_ats_v4_5.security_type.dissect(buffer, index, packet, parent)

  -- Primary Market: 3 Byte Ascii String
  index, primary_market = otc_markets_multicast_ats_v4_5.primary_market.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = otc_markets_multicast_ats_v4_5.security_id.dissect(buffer, index, packet, parent)

  -- Extended Security Flags: Struct of 12 fields
  index, extended_security_flags = otc_markets_multicast_ats_v4_5.extended_security_flags.dissect(buffer, index, packet, parent)

  -- Tier: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, tier = otc_markets_multicast_ats_v4_5.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: 1 Byte Ascii String Enum with 11 values
  index, reporting_status = otc_markets_multicast_ats_v4_5.reporting_status.dissect(buffer, index, packet, parent)

  -- Disclosure Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, disclosure_status = otc_markets_multicast_ats_v4_5.disclosure_status.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 7 values
  index, security_status = otc_markets_multicast_ats_v4_5.security_status.dissect(buffer, index, packet, parent)

  -- Par Value: 8 Byte Unsigned Fixed Width Integer
  index, par_value = otc_markets_multicast_ats_v4_5.par_value.dissect(buffer, index, packet, parent)

  -- Coupon: 8 Byte Unsigned Fixed Width Integer
  index, coupon = otc_markets_multicast_ats_v4_5.coupon.dissect(buffer, index, packet, parent)

  -- Maturity Date Milli: 8 Byte Unsigned Fixed Width Integer
  index, maturity_date_milli = otc_markets_multicast_ats_v4_5.maturity_date_milli.dissect(buffer, index, packet, parent)

  -- Callable Date Milli: 8 Byte Unsigned Fixed Width Integer
  index, callable_date_milli = otc_markets_multicast_ats_v4_5.callable_date_milli.dissect(buffer, index, packet, parent)

  -- Adr Ratio: 8 Byte Unsigned Fixed Width Integer
  index, adr_ratio = otc_markets_multicast_ats_v4_5.adr_ratio.dissect(buffer, index, packet, parent)

  -- Adr Level: 15 Byte Ascii String
  index, adr_level = otc_markets_multicast_ats_v4_5.adr_level.dissect(buffer, index, packet, parent)

  -- Security Detail Size: 1 Byte Unsigned Fixed Width Integer
  index, security_detail_size = otc_markets_multicast_ats_v4_5.security_detail_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Security Detail
  index, security_detail = otc_markets_multicast_ats_v4_5.security_detail.dissect(buffer, index, packet, parent, security_detail_size)

  -- Issuer Size: 1 Byte Unsigned Fixed Width Integer
  index, issuer_size = otc_markets_multicast_ats_v4_5.issuer_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Issuer Name
  index, issuer_name = otc_markets_multicast_ats_v4_5.issuer_name.dissect(buffer, index, packet, parent, issuer_size)

  -- Cusip: 9 Byte Ascii String
  index, cusip = otc_markets_multicast_ats_v4_5.cusip.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Security Message
otc_markets_multicast_ats_v4_5.extended_security_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.extended_security_message then
    local length = otc_markets_multicast_ats_v4_5.extended_security_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = otc_markets_multicast_ats_v4_5.extended_security_message.display(buffer, packet, parent)
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.extended_security_message, range, display)
  end

  return otc_markets_multicast_ats_v4_5.extended_security_message.fields(buffer, offset, packet, parent)
end

-- Time Milli
otc_markets_multicast_ats_v4_5.time_milli = {}

-- Size: Time Milli
otc_markets_multicast_ats_v4_5.time_milli.size = 8

-- Display: Time Milli
otc_markets_multicast_ats_v4_5.time_milli.display = function(value)
  return "Time Milli: "..value
end

-- Dissect: Time Milli
otc_markets_multicast_ats_v4_5.time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.time_milli, range, value, display)

  return offset + length, value
end

-- Size
otc_markets_multicast_ats_v4_5.size = {}

-- Size: Size
otc_markets_multicast_ats_v4_5.size.size = 4

-- Display: Size
otc_markets_multicast_ats_v4_5.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
otc_markets_multicast_ats_v4_5.size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.size, range, value, display)

  return offset + length, value
end

-- Price
otc_markets_multicast_ats_v4_5.price = {}

-- Size: Price
otc_markets_multicast_ats_v4_5.price.size = 8

-- Display: Price
otc_markets_multicast_ats_v4_5.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
otc_markets_multicast_ats_v4_5.price.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.price, range, value, display)

  return offset + length, value
end

-- Quote Flags
otc_markets_multicast_ats_v4_5.quote_flags = {}

-- Size: Quote Flags
otc_markets_multicast_ats_v4_5.quote_flags.size = 1

-- Display: Quote Flags
otc_markets_multicast_ats_v4_5.quote_flags.display = function(buffer, packet, parent)
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
otc_markets_multicast_ats_v4_5.quote_flags.bits = function(buffer, offset, packet, parent)

  -- Bid Ask Wanted: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.bid_ask_wanted, buffer(offset, 1))

  -- Bid Priced: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.bid_priced, buffer(offset, 1))

  -- Bid Unsolicited: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.bid_unsolicited, buffer(offset, 1))

  -- Ask Bid Wanted: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.ask_bid_wanted, buffer(offset, 1))

  -- Ask Priced: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.ask_priced, buffer(offset, 1))

  -- Ask Unsolicited: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.ask_unsolicited, buffer(offset, 1))

  -- State: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.state, buffer(offset, 1))

  -- Update Side: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.update_side, buffer(offset, 1))
end

-- Dissect: Quote Flags
otc_markets_multicast_ats_v4_5.quote_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = otc_markets_multicast_ats_v4_5.quote_flags.display(range, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.quote_flags, range, display)

  if show.quote_flags then
    otc_markets_multicast_ats_v4_5.quote_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Reference Price Id
otc_markets_multicast_ats_v4_5.reference_price_id = {}

-- Size: Reference Price Id
otc_markets_multicast_ats_v4_5.reference_price_id.size = 4

-- Display: Reference Price Id
otc_markets_multicast_ats_v4_5.reference_price_id.display = function(value)
  return "Reference Price Id: "..value
end

-- Dissect: Reference Price Id
otc_markets_multicast_ats_v4_5.reference_price_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.reference_price_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.reference_price_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.reference_price_id, range, value, display)

  return offset + length, value
end

-- Reference Price Update Message
otc_markets_multicast_ats_v4_5.reference_price_update_message = {}

-- Calculate size of: Reference Price Update Message
otc_markets_multicast_ats_v4_5.reference_price_update_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.reference_price_id.size

  index = index + otc_markets_multicast_ats_v4_5.quote_flags.size

  index = index + otc_markets_multicast_ats_v4_5.price.size

  index = index + otc_markets_multicast_ats_v4_5.size.size

  index = index + otc_markets_multicast_ats_v4_5.time_milli.size

  return index
end

-- Display: Reference Price Update Message
otc_markets_multicast_ats_v4_5.reference_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Update Message
otc_markets_multicast_ats_v4_5.reference_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price Id: 4 Byte Unsigned Fixed Width Integer
  index, reference_price_id = otc_markets_multicast_ats_v4_5.reference_price_id.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_5.quote_flags.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = otc_markets_multicast_ats_v4_5.price.dissect(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = otc_markets_multicast_ats_v4_5.size.dissect(buffer, index, packet, parent)

  -- Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, time_milli = otc_markets_multicast_ats_v4_5.time_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Update Message
otc_markets_multicast_ats_v4_5.reference_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.reference_price_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.reference_price_update_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.reference_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.reference_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.reference_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Time Milli
otc_markets_multicast_ats_v4_5.bid_time_milli = {}

-- Size: Bid Time Milli
otc_markets_multicast_ats_v4_5.bid_time_milli.size = 8

-- Display: Bid Time Milli
otc_markets_multicast_ats_v4_5.bid_time_milli.display = function(value)
  return "Bid Time Milli: "..value
end

-- Dissect: Bid Time Milli
otc_markets_multicast_ats_v4_5.bid_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.bid_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.bid_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.bid_time_milli, range, value, display)

  return offset + length, value
end

-- Bid Size
otc_markets_multicast_ats_v4_5.bid_size = {}

-- Size: Bid Size
otc_markets_multicast_ats_v4_5.bid_size.size = 4

-- Display: Bid Size
otc_markets_multicast_ats_v4_5.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
otc_markets_multicast_ats_v4_5.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price
otc_markets_multicast_ats_v4_5.bid_price = {}

-- Size: Bid Price
otc_markets_multicast_ats_v4_5.bid_price.size = 8

-- Display: Bid Price
otc_markets_multicast_ats_v4_5.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
otc_markets_multicast_ats_v4_5.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.bid_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Ask Time Milli
otc_markets_multicast_ats_v4_5.ask_time_milli = {}

-- Size: Ask Time Milli
otc_markets_multicast_ats_v4_5.ask_time_milli.size = 8

-- Display: Ask Time Milli
otc_markets_multicast_ats_v4_5.ask_time_milli.display = function(value)
  return "Ask Time Milli: "..value
end

-- Dissect: Ask Time Milli
otc_markets_multicast_ats_v4_5.ask_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.ask_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.ask_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.ask_time_milli, range, value, display)

  return offset + length, value
end

-- Ask Size
otc_markets_multicast_ats_v4_5.ask_size = {}

-- Size: Ask Size
otc_markets_multicast_ats_v4_5.ask_size.size = 4

-- Display: Ask Size
otc_markets_multicast_ats_v4_5.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
otc_markets_multicast_ats_v4_5.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price
otc_markets_multicast_ats_v4_5.ask_price = {}

-- Size: Ask Price
otc_markets_multicast_ats_v4_5.ask_price.size = 8

-- Display: Ask Price
otc_markets_multicast_ats_v4_5.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
otc_markets_multicast_ats_v4_5.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.ask_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Reference Price Action
otc_markets_multicast_ats_v4_5.reference_price_action = {}

-- Size: Reference Price Action
otc_markets_multicast_ats_v4_5.reference_price_action.size = 1

-- Display: Reference Price Action
otc_markets_multicast_ats_v4_5.reference_price_action.display = function(value)
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
otc_markets_multicast_ats_v4_5.reference_price_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.reference_price_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.reference_price_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.reference_price_action, range, value, display)

  return offset + length, value
end

-- Reference Price Message
otc_markets_multicast_ats_v4_5.reference_price_message = {}

-- Calculate size of: Reference Price Message
otc_markets_multicast_ats_v4_5.reference_price_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.reference_price_id.size

  index = index + otc_markets_multicast_ats_v4_5.reference_price_action.size

  index = index + otc_markets_multicast_ats_v4_5.quote_flags.size

  index = index + otc_markets_multicast_ats_v4_5.security_id.size

  index = index + otc_markets_multicast_ats_v4_5.ask_price.size

  index = index + otc_markets_multicast_ats_v4_5.ask_size.size

  index = index + otc_markets_multicast_ats_v4_5.ask_time_milli.size

  index = index + otc_markets_multicast_ats_v4_5.bid_price.size

  index = index + otc_markets_multicast_ats_v4_5.bid_size.size

  index = index + otc_markets_multicast_ats_v4_5.bid_time_milli.size

  return index
end

-- Display: Reference Price Message
otc_markets_multicast_ats_v4_5.reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Message
otc_markets_multicast_ats_v4_5.reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price Id: 4 Byte Unsigned Fixed Width Integer
  index, reference_price_id = otc_markets_multicast_ats_v4_5.reference_price_id.dissect(buffer, index, packet, parent)

  -- Reference Price Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, reference_price_action = otc_markets_multicast_ats_v4_5.reference_price_action.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_5.quote_flags.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = otc_markets_multicast_ats_v4_5.security_id.dissect(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = otc_markets_multicast_ats_v4_5.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = otc_markets_multicast_ats_v4_5.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, ask_time_milli = otc_markets_multicast_ats_v4_5.ask_time_milli.dissect(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = otc_markets_multicast_ats_v4_5.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = otc_markets_multicast_ats_v4_5.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, bid_time_milli = otc_markets_multicast_ats_v4_5.bid_time_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
otc_markets_multicast_ats_v4_5.reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.reference_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.reference_price_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Num Priced Mp
otc_markets_multicast_ats_v4_5.num_priced_mp = {}

-- Size: Num Priced Mp
otc_markets_multicast_ats_v4_5.num_priced_mp.size = 1

-- Display: Num Priced Mp
otc_markets_multicast_ats_v4_5.num_priced_mp.display = function(value)
  return "Num Priced Mp: "..value
end

-- Dissect: Num Priced Mp
otc_markets_multicast_ats_v4_5.num_priced_mp.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.num_priced_mp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.num_priced_mp.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.num_priced_mp, range, value, display)

  return offset + length, value
end

-- Inside Time Milli
otc_markets_multicast_ats_v4_5.inside_time_milli = {}

-- Size: Inside Time Milli
otc_markets_multicast_ats_v4_5.inside_time_milli.size = 8

-- Display: Inside Time Milli
otc_markets_multicast_ats_v4_5.inside_time_milli.display = function(value)
  return "Inside Time Milli: "..value
end

-- Dissect: Inside Time Milli
otc_markets_multicast_ats_v4_5.inside_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.inside_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.inside_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.inside_time_milli, range, value, display)

  return offset + length, value
end

-- Inside Id
otc_markets_multicast_ats_v4_5.inside_id = {}

-- Size: Inside Id
otc_markets_multicast_ats_v4_5.inside_id.size = 4

-- Display: Inside Id
otc_markets_multicast_ats_v4_5.inside_id.display = function(value)
  return "Inside Id: "..value
end

-- Dissect: Inside Id
otc_markets_multicast_ats_v4_5.inside_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.inside_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.inside_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.inside_id, range, value, display)

  return offset + length, value
end

-- Inside Update Message
otc_markets_multicast_ats_v4_5.inside_update_message = {}

-- Calculate size of: Inside Update Message
otc_markets_multicast_ats_v4_5.inside_update_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.inside_id.size

  index = index + otc_markets_multicast_ats_v4_5.quote_flags.size

  index = index + otc_markets_multicast_ats_v4_5.price.size

  index = index + otc_markets_multicast_ats_v4_5.size.size

  index = index + otc_markets_multicast_ats_v4_5.inside_time_milli.size

  index = index + otc_markets_multicast_ats_v4_5.num_priced_mp.size

  return index
end

-- Display: Inside Update Message
otc_markets_multicast_ats_v4_5.inside_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inside Update Message
otc_markets_multicast_ats_v4_5.inside_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Inside Id: 4 Byte Unsigned Fixed Width Integer
  index, inside_id = otc_markets_multicast_ats_v4_5.inside_id.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_5.quote_flags.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = otc_markets_multicast_ats_v4_5.price.dissect(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = otc_markets_multicast_ats_v4_5.size.dissect(buffer, index, packet, parent)

  -- Inside Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, inside_time_milli = otc_markets_multicast_ats_v4_5.inside_time_milli.dissect(buffer, index, packet, parent)

  -- Num Priced Mp: 1 Byte Unsigned Fixed Width Integer
  index, num_priced_mp = otc_markets_multicast_ats_v4_5.num_priced_mp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inside Update Message
otc_markets_multicast_ats_v4_5.inside_update_message.dissect = function(buffer, offset, packet, parent)
  if show.inside_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.inside_update_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.inside_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.inside_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.inside_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Close
otc_markets_multicast_ats_v4_5.market_close = {}

-- Size: Market Close
otc_markets_multicast_ats_v4_5.market_close.size = 8

-- Display: Market Close
otc_markets_multicast_ats_v4_5.market_close.display = function(value)
  return "Market Close: "..value
end

-- Dissect: Market Close
otc_markets_multicast_ats_v4_5.market_close.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.market_close.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.market_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.market_close, range, value, display)

  return offset + length, value
end

-- Market Open
otc_markets_multicast_ats_v4_5.market_open = {}

-- Size: Market Open
otc_markets_multicast_ats_v4_5.market_open.size = 8

-- Display: Market Open
otc_markets_multicast_ats_v4_5.market_open.display = function(value)
  return "Market Open: "..value
end

-- Dissect: Market Open
otc_markets_multicast_ats_v4_5.market_open.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.market_open.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.market_open.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.market_open, range, value, display)

  return offset + length, value
end

-- Market Open Message
otc_markets_multicast_ats_v4_5.market_open_message = {}

-- Calculate size of: Market Open Message
otc_markets_multicast_ats_v4_5.market_open_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.market_open.size

  index = index + otc_markets_multicast_ats_v4_5.market_close.size

  return index
end

-- Display: Market Open Message
otc_markets_multicast_ats_v4_5.market_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Open Message
otc_markets_multicast_ats_v4_5.market_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Market Open: 8 Byte Unsigned Fixed Width Integer
  index, market_open = otc_markets_multicast_ats_v4_5.market_open.dissect(buffer, index, packet, parent)

  -- Market Close: 8 Byte Unsigned Fixed Width Integer
  index, market_close = otc_markets_multicast_ats_v4_5.market_close.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Open Message
otc_markets_multicast_ats_v4_5.market_open_message.dissect = function(buffer, offset, packet, parent)
  if show.market_open_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.market_open_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.market_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.market_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.market_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Quote Flags
otc_markets_multicast_ats_v4_5.extended_quote_flags = {}

-- Size: Extended Quote Flags
otc_markets_multicast_ats_v4_5.extended_quote_flags.size = 1

-- Display: Extended Quote Flags
otc_markets_multicast_ats_v4_5.extended_quote_flags.display = function(buffer, packet, parent)
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
otc_markets_multicast_ats_v4_5.extended_quote_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved Extended Quote Flag Bits: 4 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.reserved_extended_quote_flag_bits, buffer(offset, 1))

  -- Nms Conditional Quote: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.nms_conditional_quote, buffer(offset, 1))

  -- Offer Auto Ex: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.offer_auto_ex, buffer(offset, 1))

  -- Bid Auto Ex: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.bid_auto_ex, buffer(offset, 1))

  -- Quote Saturated: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.quote_saturated, buffer(offset, 1))
end

-- Dissect: Extended Quote Flags
otc_markets_multicast_ats_v4_5.extended_quote_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = otc_markets_multicast_ats_v4_5.extended_quote_flags.display(range, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.extended_quote_flags, range, display)

  if show.extended_quote_flags then
    otc_markets_multicast_ats_v4_5.extended_quote_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Quote Reference Id
otc_markets_multicast_ats_v4_5.quote_reference_id = {}

-- Size: Quote Reference Id
otc_markets_multicast_ats_v4_5.quote_reference_id.size = 2

-- Display: Quote Reference Id
otc_markets_multicast_ats_v4_5.quote_reference_id.display = function(value)
  return "Quote Reference Id: "..value
end

-- Dissect: Quote Reference Id
otc_markets_multicast_ats_v4_5.quote_reference_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.quote_reference_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.quote_reference_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.quote_reference_id, range, value, display)

  return offset + length, value
end

-- Quote Time Milli
otc_markets_multicast_ats_v4_5.quote_time_milli = {}

-- Size: Quote Time Milli
otc_markets_multicast_ats_v4_5.quote_time_milli.size = 8

-- Display: Quote Time Milli
otc_markets_multicast_ats_v4_5.quote_time_milli.display = function(value)
  return "Quote Time Milli: "..value
end

-- Dissect: Quote Time Milli
otc_markets_multicast_ats_v4_5.quote_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.quote_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.quote_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.quote_time_milli, range, value, display)

  return offset + length, value
end

-- Qap
otc_markets_multicast_ats_v4_5.qap = {}

-- Size: Qap
otc_markets_multicast_ats_v4_5.qap.size = 1

-- Display: Qap
otc_markets_multicast_ats_v4_5.qap.display = function(value)
  return "Qap: "..value
end

-- Dissect: Qap
otc_markets_multicast_ats_v4_5.qap.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.qap.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = otc_markets_multicast_ats_v4_5.qap.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.qap, range, value, display)

  return offset + length, value
end

-- Quote Id
otc_markets_multicast_ats_v4_5.quote_id = {}

-- Size: Quote Id
otc_markets_multicast_ats_v4_5.quote_id.size = 4

-- Display: Quote Id
otc_markets_multicast_ats_v4_5.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
otc_markets_multicast_ats_v4_5.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.quote_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Quote Update Message
otc_markets_multicast_ats_v4_5.quote_update_message = {}

-- Calculate size of: Quote Update Message
otc_markets_multicast_ats_v4_5.quote_update_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.quote_id.size

  index = index + otc_markets_multicast_ats_v4_5.quote_flags.size

  index = index + otc_markets_multicast_ats_v4_5.price.size

  index = index + otc_markets_multicast_ats_v4_5.size.size

  index = index + otc_markets_multicast_ats_v4_5.qap.size

  index = index + otc_markets_multicast_ats_v4_5.quote_time_milli.size

  index = index + otc_markets_multicast_ats_v4_5.quote_reference_id.size

  index = index + otc_markets_multicast_ats_v4_5.extended_quote_flags.size

  return index
end

-- Display: Quote Update Message
otc_markets_multicast_ats_v4_5.quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Message
otc_markets_multicast_ats_v4_5.quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = otc_markets_multicast_ats_v4_5.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_5.quote_flags.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = otc_markets_multicast_ats_v4_5.price.dissect(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = otc_markets_multicast_ats_v4_5.size.dissect(buffer, index, packet, parent)

  -- Qap: 1 Byte Signed Fixed Width Integer
  index, qap = otc_markets_multicast_ats_v4_5.qap.dissect(buffer, index, packet, parent)

  -- Quote Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, quote_time_milli = otc_markets_multicast_ats_v4_5.quote_time_milli.dissect(buffer, index, packet, parent)

  -- Quote Reference Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_reference_id = otc_markets_multicast_ats_v4_5.quote_reference_id.dissect(buffer, index, packet, parent)

  -- Extended Quote Flags: Struct of 5 fields
  index, extended_quote_flags = otc_markets_multicast_ats_v4_5.extended_quote_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Message
otc_markets_multicast_ats_v4_5.quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.quote_update_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Qap
otc_markets_multicast_ats_v4_5.bid_qap = {}

-- Size: Bid Qap
otc_markets_multicast_ats_v4_5.bid_qap.size = 1

-- Display: Bid Qap
otc_markets_multicast_ats_v4_5.bid_qap.display = function(value)
  return "Bid Qap: "..value
end

-- Dissect: Bid Qap
otc_markets_multicast_ats_v4_5.bid_qap.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.bid_qap.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = otc_markets_multicast_ats_v4_5.bid_qap.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.bid_qap, range, value, display)

  return offset + length, value
end

-- Ask Qap
otc_markets_multicast_ats_v4_5.ask_qap = {}

-- Size: Ask Qap
otc_markets_multicast_ats_v4_5.ask_qap.size = 1

-- Display: Ask Qap
otc_markets_multicast_ats_v4_5.ask_qap.display = function(value)
  return "Ask Qap: "..value
end

-- Dissect: Ask Qap
otc_markets_multicast_ats_v4_5.ask_qap.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.ask_qap.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = otc_markets_multicast_ats_v4_5.ask_qap.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.ask_qap, range, value, display)

  return offset + length, value
end

-- Mpid
otc_markets_multicast_ats_v4_5.mpid = {}

-- Size: Mpid
otc_markets_multicast_ats_v4_5.mpid.size = 4

-- Display: Mpid
otc_markets_multicast_ats_v4_5.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
otc_markets_multicast_ats_v4_5.mpid.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.mpid.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_markets_multicast_ats_v4_5.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.mpid, range, value, display)

  return offset + length, value
end

-- Quote Action
otc_markets_multicast_ats_v4_5.quote_action = {}

-- Size: Quote Action
otc_markets_multicast_ats_v4_5.quote_action.size = 1

-- Display: Quote Action
otc_markets_multicast_ats_v4_5.quote_action.display = function(value)
  return "Quote Action: "..value
end

-- Dissect: Quote Action
otc_markets_multicast_ats_v4_5.quote_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.quote_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.quote_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.quote_action, range, value, display)

  return offset + length, value
end

-- Quote Message
otc_markets_multicast_ats_v4_5.quote_message = {}

-- Calculate size of: Quote Message
otc_markets_multicast_ats_v4_5.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.quote_id.size

  index = index + otc_markets_multicast_ats_v4_5.quote_action.size

  index = index + otc_markets_multicast_ats_v4_5.quote_flags.size

  index = index + otc_markets_multicast_ats_v4_5.security_id.size

  index = index + otc_markets_multicast_ats_v4_5.mpid.size

  index = index + otc_markets_multicast_ats_v4_5.ask_price.size

  index = index + otc_markets_multicast_ats_v4_5.ask_size.size

  index = index + otc_markets_multicast_ats_v4_5.ask_qap.size

  index = index + otc_markets_multicast_ats_v4_5.ask_time_milli.size

  index = index + otc_markets_multicast_ats_v4_5.bid_price.size

  index = index + otc_markets_multicast_ats_v4_5.bid_size.size

  index = index + otc_markets_multicast_ats_v4_5.bid_qap.size

  index = index + otc_markets_multicast_ats_v4_5.bid_time_milli.size

  index = index + otc_markets_multicast_ats_v4_5.quote_reference_id.size

  index = index + otc_markets_multicast_ats_v4_5.extended_quote_flags.size

  return index
end

-- Display: Quote Message
otc_markets_multicast_ats_v4_5.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
otc_markets_multicast_ats_v4_5.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = otc_markets_multicast_ats_v4_5.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Action: 1 Byte Unsigned Fixed Width Integer
  index, quote_action = otc_markets_multicast_ats_v4_5.quote_action.dissect(buffer, index, packet, parent)

  -- Quote Flags: Struct of 8 fields
  index, quote_flags = otc_markets_multicast_ats_v4_5.quote_flags.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = otc_markets_multicast_ats_v4_5.security_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = otc_markets_multicast_ats_v4_5.mpid.dissect(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = otc_markets_multicast_ats_v4_5.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = otc_markets_multicast_ats_v4_5.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Qap: 1 Byte Signed Fixed Width Integer
  index, ask_qap = otc_markets_multicast_ats_v4_5.ask_qap.dissect(buffer, index, packet, parent)

  -- Ask Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, ask_time_milli = otc_markets_multicast_ats_v4_5.ask_time_milli.dissect(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = otc_markets_multicast_ats_v4_5.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = otc_markets_multicast_ats_v4_5.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Qap: 1 Byte Signed Fixed Width Integer
  index, bid_qap = otc_markets_multicast_ats_v4_5.bid_qap.dissect(buffer, index, packet, parent)

  -- Bid Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, bid_time_milli = otc_markets_multicast_ats_v4_5.bid_time_milli.dissect(buffer, index, packet, parent)

  -- Quote Reference Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_reference_id = otc_markets_multicast_ats_v4_5.quote_reference_id.dissect(buffer, index, packet, parent)

  -- Extended Quote Flags: Struct of 5 fields
  index, extended_quote_flags = otc_markets_multicast_ats_v4_5.extended_quote_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
otc_markets_multicast_ats_v4_5.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.quote_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Message
otc_markets_multicast_ats_v4_5.security_message = {}

-- Calculate size of: Security Message
otc_markets_multicast_ats_v4_5.security_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.symbol.size

  index = index + otc_markets_multicast_ats_v4_5.last_update_milli.size

  index = index + otc_markets_multicast_ats_v4_5.security_action.size

  index = index + otc_markets_multicast_ats_v4_5.asset_class.size

  index = index + otc_markets_multicast_ats_v4_5.security_id.size

  index = index + otc_markets_multicast_ats_v4_5.security_flags.size

  index = index + otc_markets_multicast_ats_v4_5.tier.size

  index = index + otc_markets_multicast_ats_v4_5.reporting_status.size

  index = index + otc_markets_multicast_ats_v4_5.security_status.size

  return index
end

-- Display: Security Message
otc_markets_multicast_ats_v4_5.security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Message
otc_markets_multicast_ats_v4_5.security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: 10 Byte Ascii String
  index, symbol = otc_markets_multicast_ats_v4_5.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: 8 Byte Unsigned Fixed Width Integer
  index, last_update_milli = otc_markets_multicast_ats_v4_5.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_action = otc_markets_multicast_ats_v4_5.security_action.dissect(buffer, index, packet, parent)

  -- Asset Class: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, asset_class = otc_markets_multicast_ats_v4_5.asset_class.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = otc_markets_multicast_ats_v4_5.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 8 fields
  index, security_flags = otc_markets_multicast_ats_v4_5.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, tier = otc_markets_multicast_ats_v4_5.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: 1 Byte Ascii String Enum with 11 values
  index, reporting_status = otc_markets_multicast_ats_v4_5.reporting_status.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 7 values
  index, security_status = otc_markets_multicast_ats_v4_5.security_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
otc_markets_multicast_ats_v4_5.security_message.dissect = function(buffer, offset, packet, parent)
  if show.security_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.security_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.security_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Msg Ct
otc_markets_multicast_ats_v4_5.market_msg_ct = {}

-- Size: Market Msg Ct
otc_markets_multicast_ats_v4_5.market_msg_ct.size = 4

-- Display: Market Msg Ct
otc_markets_multicast_ats_v4_5.market_msg_ct.display = function(value)
  return "Market Msg Ct: "..value
end

-- Dissect: Market Msg Ct
otc_markets_multicast_ats_v4_5.market_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.market_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.market_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.market_msg_ct, range, value, display)

  return offset + length, value
end

-- Market Close Time Milli
otc_markets_multicast_ats_v4_5.market_close_time_milli = {}

-- Size: Market Close Time Milli
otc_markets_multicast_ats_v4_5.market_close_time_milli.size = 8

-- Display: Market Close Time Milli
otc_markets_multicast_ats_v4_5.market_close_time_milli.display = function(value)
  return "Market Close Time Milli: "..value
end

-- Dissect: Market Close Time Milli
otc_markets_multicast_ats_v4_5.market_close_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.market_close_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.market_close_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.market_close_time_milli, range, value, display)

  return offset + length, value
end

-- Market Close Message
otc_markets_multicast_ats_v4_5.market_close_message = {}

-- Calculate size of: Market Close Message
otc_markets_multicast_ats_v4_5.market_close_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.market_close_time_milli.size

  index = index + otc_markets_multicast_ats_v4_5.market_msg_ct.size

  return index
end

-- Display: Market Close Message
otc_markets_multicast_ats_v4_5.market_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Close Message
otc_markets_multicast_ats_v4_5.market_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Market Close Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, market_close_time_milli = otc_markets_multicast_ats_v4_5.market_close_time_milli.dissect(buffer, index, packet, parent)

  -- Market Msg Ct: 4 Byte Unsigned Fixed Width Integer
  index, market_msg_ct = otc_markets_multicast_ats_v4_5.market_msg_ct.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Close Message
otc_markets_multicast_ats_v4_5.market_close_message.dissect = function(buffer, offset, packet, parent)
  if show.market_close_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.market_close_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.market_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.market_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.market_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Last Seq Num
otc_markets_multicast_ats_v4_5.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otc_markets_multicast_ats_v4_5.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otc_markets_multicast_ats_v4_5.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otc_markets_multicast_ats_v4_5.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otc_markets_multicast_ats_v4_5.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otc_markets_multicast_ats_v4_5.spin_end_time_milli.size = 8

-- Display: Spin End Time Milli
otc_markets_multicast_ats_v4_5.spin_end_time_milli.display = function(value)
  return "Spin End Time Milli: "..value
end

-- Dissect: Spin End Time Milli
otc_markets_multicast_ats_v4_5.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.spin_end_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.spin_end_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otc_markets_multicast_ats_v4_5.spin_msg_ct = {}

-- Size: Spin Msg Ct
otc_markets_multicast_ats_v4_5.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otc_markets_multicast_ats_v4_5.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otc_markets_multicast_ats_v4_5.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Type
otc_markets_multicast_ats_v4_5.spin_type = {}

-- Size: Spin Type
otc_markets_multicast_ats_v4_5.spin_type.size = 1

-- Display: Spin Type
otc_markets_multicast_ats_v4_5.spin_type.display = function(value)
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
otc_markets_multicast_ats_v4_5.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.spin_type, range, value, display)

  return offset + length, value
end

-- End Of Spin Message
otc_markets_multicast_ats_v4_5.end_of_spin_message = {}

-- Calculate size of: End Of Spin Message
otc_markets_multicast_ats_v4_5.end_of_spin_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.spin_type.size

  index = index + otc_markets_multicast_ats_v4_5.spin_msg_ct.size

  index = index + otc_markets_multicast_ats_v4_5.spin_end_time_milli.size

  index = index + otc_markets_multicast_ats_v4_5.spin_last_seq_num.size

  return index
end

-- Display: End Of Spin Message
otc_markets_multicast_ats_v4_5.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otc_markets_multicast_ats_v4_5.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Spin Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, spin_type = otc_markets_multicast_ats_v4_5.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: 4 Byte Unsigned Fixed Width Integer
  index, spin_msg_ct = otc_markets_multicast_ats_v4_5.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, spin_end_time_milli = otc_markets_multicast_ats_v4_5.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, spin_last_seq_num = otc_markets_multicast_ats_v4_5.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otc_markets_multicast_ats_v4_5.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_spin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.end_of_spin_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Start Time Milli
otc_markets_multicast_ats_v4_5.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otc_markets_multicast_ats_v4_5.spin_start_time_milli.size = 8

-- Display: Spin Start Time Milli
otc_markets_multicast_ats_v4_5.spin_start_time_milli.display = function(value)
  return "Spin Start Time Milli: "..value
end

-- Dissect: Spin Start Time Milli
otc_markets_multicast_ats_v4_5.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_markets_multicast_ats_v4_5.spin_start_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.spin_start_time_milli, range, value, display)

  return offset + length, value
end

-- Start Of Spin Message
otc_markets_multicast_ats_v4_5.start_of_spin_message = {}

-- Calculate size of: Start Of Spin Message
otc_markets_multicast_ats_v4_5.start_of_spin_message.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.channel_seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.spin_type.size

  index = index + otc_markets_multicast_ats_v4_5.spin_start_time_milli.size

  index = index + otc_markets_multicast_ats_v4_5.spin_last_seq_num.size

  return index
end

-- Display: Start Of Spin Message
otc_markets_multicast_ats_v4_5.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otc_markets_multicast_ats_v4_5.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, channel_seq_num = otc_markets_multicast_ats_v4_5.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Spin Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, spin_type = otc_markets_multicast_ats_v4_5.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: 8 Byte Unsigned Fixed Width Integer
  index, spin_start_time_milli = otc_markets_multicast_ats_v4_5.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, spin_last_seq_num = otc_markets_multicast_ats_v4_5.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otc_markets_multicast_ats_v4_5.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_spin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.start_of_spin_message, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otc_markets_multicast_ats_v4_5.payload = {}

-- Calculate runtime size of: Payload
otc_markets_multicast_ats_v4_5.payload.size = function(buffer, offset, message_type)
  -- Size of Start Of Spin Message
  if message_type == 11 then
    return otc_markets_multicast_ats_v4_5.start_of_spin_message.size(buffer, offset)
  end
  -- Size of End Of Spin Message
  if message_type == 12 then
    return otc_markets_multicast_ats_v4_5.end_of_spin_message.size(buffer, offset)
  end
  -- Size of Market Open Message
  if message_type == 13 then
    return otc_markets_multicast_ats_v4_5.market_open_message.size(buffer, offset)
  end
  -- Size of Market Close Message
  if message_type == 14 then
    return otc_markets_multicast_ats_v4_5.market_close_message.size(buffer, offset)
  end
  -- Size of Security Message
  if message_type == 9 then
    return otc_markets_multicast_ats_v4_5.security_message.size(buffer, offset)
  end
  -- Size of Quote Message
  if message_type == 1 then
    return otc_markets_multicast_ats_v4_5.quote_message.size(buffer, offset)
  end
  -- Size of Quote Update Message
  if message_type == 2 then
    return otc_markets_multicast_ats_v4_5.quote_update_message.size(buffer, offset)
  end
  -- Size of Market Open Message
  if message_type == 3 then
    return otc_markets_multicast_ats_v4_5.market_open_message.size(buffer, offset)
  end
  -- Size of Inside Update Message
  if message_type == 4 then
    return otc_markets_multicast_ats_v4_5.inside_update_message.size(buffer, offset)
  end
  -- Size of Reference Price Message
  if message_type == 7 then
    return otc_markets_multicast_ats_v4_5.reference_price_message.size(buffer, offset)
  end
  -- Size of Reference Price Update Message
  if message_type == 8 then
    return otc_markets_multicast_ats_v4_5.reference_price_update_message.size(buffer, offset)
  end
  -- Size of Extended Security Message
  if message_type == 15 then
    return otc_markets_multicast_ats_v4_5.extended_security_message.size(buffer, offset)
  end
  -- Size of Extended Security No Cusip Message
  if message_type == 16 then
    return otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == 17 then
    return otc_markets_multicast_ats_v4_5.trade_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
otc_markets_multicast_ats_v4_5.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
otc_markets_multicast_ats_v4_5.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Spin Message
  if message_type == 11 then
    return otc_markets_multicast_ats_v4_5.start_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Spin Message
  if message_type == 12 then
    return otc_markets_multicast_ats_v4_5.end_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if message_type == 13 then
    return otc_markets_multicast_ats_v4_5.market_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Close Message
  if message_type == 14 then
    return otc_markets_multicast_ats_v4_5.market_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Message
  if message_type == 9 then
    return otc_markets_multicast_ats_v4_5.security_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_type == 1 then
    return otc_markets_multicast_ats_v4_5.quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Message
  if message_type == 2 then
    return otc_markets_multicast_ats_v4_5.quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if message_type == 3 then
    return otc_markets_multicast_ats_v4_5.market_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inside Update Message
  if message_type == 4 then
    return otc_markets_multicast_ats_v4_5.inside_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Message
  if message_type == 7 then
    return otc_markets_multicast_ats_v4_5.reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Update Message
  if message_type == 8 then
    return otc_markets_multicast_ats_v4_5.reference_price_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Security Message
  if message_type == 15 then
    return otc_markets_multicast_ats_v4_5.extended_security_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Security No Cusip Message
  if message_type == 16 then
    return otc_markets_multicast_ats_v4_5.extended_security_no_cusip_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 17 then
    return otc_markets_multicast_ats_v4_5.trade_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
otc_markets_multicast_ats_v4_5.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return otc_markets_multicast_ats_v4_5.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = otc_markets_multicast_ats_v4_5.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = otc_markets_multicast_ats_v4_5.payload.display(buffer, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.payload, range, display)

  return otc_markets_multicast_ats_v4_5.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
otc_markets_multicast_ats_v4_5.message_type = {}

-- Size: Message Type
otc_markets_multicast_ats_v4_5.message_type.size = 1

-- Display: Message Type
otc_markets_multicast_ats_v4_5.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
otc_markets_multicast_ats_v4_5.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
otc_markets_multicast_ats_v4_5.message_size = {}

-- Size: Message Size
otc_markets_multicast_ats_v4_5.message_size.size = 2

-- Display: Message Size
otc_markets_multicast_ats_v4_5.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otc_markets_multicast_ats_v4_5.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
otc_markets_multicast_ats_v4_5.message_header = {}

-- Calculate size of: Message Header
otc_markets_multicast_ats_v4_5.message_header.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.message_size.size

  index = index + otc_markets_multicast_ats_v4_5.message_type.size

  return index
end

-- Display: Message Header
otc_markets_multicast_ats_v4_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otc_markets_multicast_ats_v4_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otc_markets_multicast_ats_v4_5.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = otc_markets_multicast_ats_v4_5.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otc_markets_multicast_ats_v4_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.message_header, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otc_markets_multicast_ats_v4_5.message = {}

-- Display: Message
otc_markets_multicast_ats_v4_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otc_markets_multicast_ats_v4_5.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = otc_markets_multicast_ats_v4_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 14 branches
  index = otc_markets_multicast_ats_v4_5.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otc_markets_multicast_ats_v4_5.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.message, buffer(offset, 0))
    local current = otc_markets_multicast_ats_v4_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = otc_markets_multicast_ats_v4_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otc_markets_multicast_ats_v4_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Milli
otc_markets_multicast_ats_v4_5.packet_milli = {}

-- Size: Packet Milli
otc_markets_multicast_ats_v4_5.packet_milli.size = 4

-- Display: Packet Milli
otc_markets_multicast_ats_v4_5.packet_milli.display = function(value)
  return "Packet Milli: "..value
end

-- Dissect: Packet Milli
otc_markets_multicast_ats_v4_5.packet_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.packet_milli.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.packet_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Messages
otc_markets_multicast_ats_v4_5.messages = {}

-- Size: Messages
otc_markets_multicast_ats_v4_5.messages.size = 1

-- Display: Messages
otc_markets_multicast_ats_v4_5.messages.display = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
otc_markets_multicast_ats_v4_5.messages.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.messages, range, value, display)

  return offset + length, value
end

-- Packet Flag
otc_markets_multicast_ats_v4_5.packet_flag = {}

-- Size: Packet Flag
otc_markets_multicast_ats_v4_5.packet_flag.size = 1

-- Display: Packet Flag
otc_markets_multicast_ats_v4_5.packet_flag.display = function(buffer, packet, parent)
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
otc_markets_multicast_ats_v4_5.packet_flag.bits = function(buffer, offset, packet, parent)

  -- Test: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.test, buffer(offset, 1))

  -- Replay: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.replay, buffer(offset, 1))

  -- Reserved Packet Flags: 4 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.reserved_packet_flags, buffer(offset, 1))

  -- Seq Num Reset: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.seq_num_reset, buffer(offset, 1))

  -- Heartbeat: 1 Bit
  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.heartbeat, buffer(offset, 1))
end

-- Dissect: Packet Flag
otc_markets_multicast_ats_v4_5.packet_flag.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = otc_markets_multicast_ats_v4_5.packet_flag.display(range, packet, parent)
  local element = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.packet_flag, range, display)

  if show.packet_flag then
    otc_markets_multicast_ats_v4_5.packet_flag.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Seq Num
otc_markets_multicast_ats_v4_5.seq_num = {}

-- Size: Seq Num
otc_markets_multicast_ats_v4_5.seq_num.size = 4

-- Display: Seq Num
otc_markets_multicast_ats_v4_5.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otc_markets_multicast_ats_v4_5.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Packet Size
otc_markets_multicast_ats_v4_5.packet_size = {}

-- Size: Packet Size
otc_markets_multicast_ats_v4_5.packet_size.size = 2

-- Display: Packet Size
otc_markets_multicast_ats_v4_5.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otc_markets_multicast_ats_v4_5.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_multicast_ats_v4_5.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_multicast_ats_v4_5.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_multicast_ats_v4_5.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
otc_markets_multicast_ats_v4_5.packet_header = {}

-- Calculate size of: Packet Header
otc_markets_multicast_ats_v4_5.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_multicast_ats_v4_5.packet_size.size

  index = index + otc_markets_multicast_ats_v4_5.seq_num.size

  index = index + otc_markets_multicast_ats_v4_5.packet_flag.size

  index = index + otc_markets_multicast_ats_v4_5.messages.size

  index = index + otc_markets_multicast_ats_v4_5.packet_milli.size

  return index
end

-- Display: Packet Header
otc_markets_multicast_ats_v4_5.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otc_markets_multicast_ats_v4_5.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otc_markets_multicast_ats_v4_5.packet_size.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otc_markets_multicast_ats_v4_5.seq_num.dissect(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = otc_markets_multicast_ats_v4_5.packet_flag.dissect(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = otc_markets_multicast_ats_v4_5.messages.dissect(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otc_markets_multicast_ats_v4_5.packet_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otc_markets_multicast_ats_v4_5.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_multicast_ats_v4_5.fields.packet_header, buffer(offset, 0))
    local index = otc_markets_multicast_ats_v4_5.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_multicast_ats_v4_5.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_multicast_ats_v4_5.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
otc_markets_multicast_ats_v4_5.packet = {}

-- Dissect Packet
otc_markets_multicast_ats_v4_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otc_markets_multicast_ats_v4_5.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = otc_markets_multicast_ats_v4_5.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otc_markets_multicast_ats_v4_5.init()
end

-- Dissector for Otc Markets Multicast Ats 4.5
function omi_otc_markets_multicast_ats_v4_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otc_markets_multicast_ats_v4_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_otc_markets_multicast_ats_v4_5, buffer(), omi_otc_markets_multicast_ats_v4_5.description, "("..buffer:len().." Bytes)")
  return otc_markets_multicast_ats_v4_5.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_otc_markets_multicast_ats_v4_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
otc_markets_multicast_ats_v4_5.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Otc Markets Multicast Ats 4.5
local function omi_otc_markets_multicast_ats_v4_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otc_markets_multicast_ats_v4_5.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otc_markets_multicast_ats_v4_5
  omi_otc_markets_multicast_ats_v4_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Otc Markets Multicast Ats 4.5
omi_otc_markets_multicast_ats_v4_5:register_heuristic("udp", omi_otc_markets_multicast_ats_v4_5_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Otc Markets
--   Version: 4.5
--   Date: Thursday, July 28, 2022
--   Specification: OTC Markets Multicast Data Feeds -v4.5.pdf
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
