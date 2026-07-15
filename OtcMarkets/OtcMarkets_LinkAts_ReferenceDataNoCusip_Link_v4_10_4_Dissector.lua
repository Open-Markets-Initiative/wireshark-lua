-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4 Protocol
local omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4 = Proto("Omi.OtcMarkets.LinkAts.ReferenceDataNoCusip.Link.v4.10.4", "OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4")

-- Protocol table
local otcmarkets_linkats_referencedatanocusip_link_v4_10_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4 Fields
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.adr_level = ProtoField.new("Adr Level", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.adrlevel", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.adr_ratio = ProtoField.new("Adr Ratio", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.adrratio", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.asset_class = ProtoField.new("Asset Class", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.assetclass", ftypes.UINT8)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.callable = ProtoField.new("Callable", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.callable", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.callable_date_milli = ProtoField.new("Callable Date Milli", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.callabledatemilli", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.caveat_emptor_warning = ProtoField.new("Caveat Emptor Warning", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.caveatemptorwarning", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.channel_seq_num = ProtoField.new("Channel Seq Num", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.channelseqnum", ftypes.UINT32)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.coupon = ProtoField.new("Coupon", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.coupon", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.disclosure_status = ProtoField.new("Disclosure Status", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.disclosurestatus", ftypes.UINT8)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.extended_security_flags = ProtoField.new("Extended Security Flags", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.extendedsecurityflags", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.heartbeat = ProtoField.new("Heartbeat", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.heartbeat", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.investment_grade = ProtoField.new("Investment Grade", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.investmentgrade", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.issuer = ProtoField.new("Issuer", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.issuer", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.issuer_name = ProtoField.new("Issuer Name", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.issuername", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.issuer_size = ProtoField.new("Issuer Size", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.issuersize", ftypes.UINT8)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.last_update_milli = ProtoField.new("Last Update Milli", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.lastupdatemilli", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_close = ProtoField.new("Market Close", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.marketclose", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_close_time_milli = ProtoField.new("Market Close Time Milli", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.marketclosetimemilli", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_msg_ct = ProtoField.new("Market Msg Ct", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.marketmsgct", ftypes.UINT32)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_open = ProtoField.new("Market Open", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.marketopen", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.maturity_date_milli = ProtoField.new("Maturity Date Milli", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.maturitydatemilli", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message = ProtoField.new("Message", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.message", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message_header = ProtoField.new("Message Header", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.messageheader", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message_size = ProtoField.new("Message Size", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.messagesize", ftypes.UINT16)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message_type = ProtoField.new("Message Type", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.messagetype", ftypes.UINT8)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.messages = ProtoField.new("Messages", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.messages", ftypes.UINT8)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.otc_issuer_id = ProtoField.new("Otc Issuer Id", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.otcissuerid", ftypes.UINT32)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.otc_link_ecn_eligible = ProtoField.new("Otc Link Ecn Eligible", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.otclinkecneligible", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.otc_link_messaging_disabled = ProtoField.new("Otc Link Messaging Disabled", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.otclinkmessagingdisabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.packet = ProtoField.new("Packet", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.packet", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.packet_flag = ProtoField.new("Packet Flag", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.packetflag", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.packet_header = ProtoField.new("Packet Header", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.packetheader", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.packet_milli = ProtoField.new("Packet Milli", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.packetmilli", ftypes.UINT32)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.packet_size = ProtoField.new("Packet Size", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.packetsize", ftypes.UINT16)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.par_value = ProtoField.new("Par Value", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.parvalue", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.piggyback = ProtoField.new("Piggyback", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.piggyback", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.primary_market = ProtoField.new("Primary Market", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.primarymarket", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.qualified_institutional_buyers_only = ProtoField.new("Qualified Institutional Buyers Only", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.qualifiedinstitutionalbuyersonly", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.replay = ProtoField.new("Replay", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.replay", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.reporting_status = ProtoField.new("Reporting Status", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.reportingstatus", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.reserved_4 = ProtoField.new("Reserved 4", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.reserved4", ftypes.UINT8, nil, base.DEC, 0x3C)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.reserved_5 = ProtoField.new("Reserved 5", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.reserved5", ftypes.UINT16, nil, base.DEC, 0xF800)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.saturation_eligible = ProtoField.new("Saturation Eligible", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.saturationeligible", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_action = ProtoField.new("Security Action", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.securityaction", ftypes.UINT8)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_desc = ProtoField.new("Security Desc", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.securitydesc", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_detail = ProtoField.new("Security Detail", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.securitydetail", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_detail_name = ProtoField.new("Security Detail Name", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.securitydetailname", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_detail_size = ProtoField.new("Security Detail Size", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.securitydetailsize", ftypes.UINT8)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_id = ProtoField.new("Security Id", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.securityid", ftypes.UINT32)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_status = ProtoField.new("Security Status", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.securitystatus", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_type = ProtoField.new("Security Type", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.securitytype", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.seq_num = ProtoField.new("Seq Num", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.seqnum", ftypes.UINT32)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.seqnumreset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.short_name = ProtoField.new("Short Name", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.shortname", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.spinendtimemilli", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.spinlastseqnum", ftypes.UINT32)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.spinmsgct", ftypes.UINT32)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.spinstarttimemilli", ftypes.UINT64)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_type = ProtoField.new("Spin Type", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.spintype", ftypes.UINT8)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.sponsored_status = ProtoField.new("Sponsored Status", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.sponsoredstatus", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.symbol = ProtoField.new("Symbol", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.symbol", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.test = ProtoField.new("Test", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.test", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.tier = ProtoField.new("Tier", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.tier", ftypes.UINT8)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.trading_flat = ProtoField.new("Trading Flat", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.tradingflat", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.unsolicited_only = ProtoField.new("Unsolicited Only", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.unsolicitedonly", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)

-- OtcMarkets LinkAts Link ReferenceDataNoCusip 4.10.4 Application Messages
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.endofspinmessage", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.extended_security_no_cusip_message = ProtoField.new("Extended Security No Cusip Message", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.extendedsecuritynocusipmessage", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_close_message = ProtoField.new("Market Close Message", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.marketclosemessage", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_open_message = ProtoField.new("Market Open Message", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.marketopenmessage", ftypes.STRING)
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.startofspinmessage", ftypes.STRING)

-- OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4 generated fields
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message_index = ProtoField.new("Message Index", "otcmarkets.linkats.referencedatanocusip.link.v4.10.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4 Element Dissection Options
show.application_messages = true
show.extended_security_flags = true
show.issuer = true
show.message = true
show.message_header = true
show.packet = true
show.packet_flag = true
show.packet_header = true
show.security_detail = true
show.message_index = true

-- Register OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4 Show Options
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_extended_security_flags = Pref.bool("Show Extended Security Flags", show.extended_security_flags, "Parse and add Extended Security Flags to protocol tree")
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_issuer = Pref.bool("Show Issuer", show.issuer, "Parse and add Issuer to protocol tree")
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_packet_flag = Pref.bool("Show Packet Flag", show.packet_flag, "Parse and add Packet Flag to protocol tree")
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_security_detail = Pref.bool("Show Security Detail", show.security_detail, "Parse and add Security Detail to protocol tree")
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_application_messages then
    show.application_messages = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_application_messages
  end
  if show.extended_security_flags ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_extended_security_flags then
    show.extended_security_flags = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_extended_security_flags
  end
  if show.issuer ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_issuer then
    show.issuer = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_issuer
  end
  if show.message ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_message then
    show.message = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_message
  end
  if show.message_header ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_message_header then
    show.message_header = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_message_header
  end
  if show.packet ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_packet then
    show.packet = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_packet
  end
  if show.packet_flag ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_packet_flag then
    show.packet_flag = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_packet_flag
  end
  if show.packet_header ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_packet_header then
    show.packet_header = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_packet_header
  end
  if show.security_detail ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_security_detail then
    show.security_detail = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_security_detail
  end
  if show.message_index ~= omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_message_index then
    show.message_index = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4 Fields
-----------------------------------------------------------------------

-- Adr Level
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_level = {}

-- Size: Adr Level
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_level.size = 15

-- Display: Adr Level
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_level.display = function(value)
  return "Adr Level: "..value
end

-- Dissect: Adr Level
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_level.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.adr_level, range, value, display)

  return offset + length, value
end

-- Adr Ratio
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_ratio = {}

-- Size: Adr Ratio
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_ratio.size = 8

-- Display: Adr Ratio
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_ratio.display = function(value)
  return "Adr Ratio: "..value
end

-- Dissect: Adr Ratio
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_ratio.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_ratio.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.adr_ratio, range, value, display)

  return offset + length, value
end

-- Asset Class
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.asset_class = {}

-- Size: Asset Class
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.asset_class.size = 1

-- Display: Asset Class
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.asset_class.display = function(value)
  if value == 1 then
    return "Asset Class: Equity (1)"
  end
  if value == 2 then
    return "Asset Class: Fixed Income (2)"
  end

  return "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Callable Date Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.callable_date_milli = {}

-- Size: Callable Date Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.callable_date_milli.size = 8

-- Display: Callable Date Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.callable_date_milli.display = function(value)
  return "Callable Date Milli: "..value
end

-- Dissect: Callable Date Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.callable_date_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.callable_date_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.callable_date_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.callable_date_milli, range, value, display)

  return offset + length, value
end

-- Channel Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num = {}

-- Size: Channel Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.size = 4

-- Display: Channel Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.display = function(value)
  return "Channel Seq Num: "..value
end

-- Dissect: Channel Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.channel_seq_num, range, value, display)

  return offset + length, value
end

-- Coupon
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.coupon = {}

-- Size: Coupon
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.coupon.size = 8

-- Display: Coupon
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.coupon.display = function(value)
  return "Coupon: "..value
end

-- Dissect: Coupon
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.coupon.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.coupon.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.coupon.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.coupon, range, value, display)

  return offset + length, value
end

-- Disclosure Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.disclosure_status = {}

-- Size: Disclosure Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.disclosure_status.size = 1

-- Display: Disclosure Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.disclosure_status.display = function(value)
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
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.disclosure_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.disclosure_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.disclosure_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.disclosure_status, range, value, display)

  return offset + length, value
end

-- Issuer Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_name = {}

-- Display: Issuer Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_name.display = function(value)
  return "Issuer Name: "..value
end

-- Dissect runtime sized field: Issuer Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_name.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_name.display(value, packet, parent, size)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.issuer_name, range, value, display)

  return offset + size, value
end

-- Issuer Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_size = {}

-- Size: Issuer Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_size.size = 1

-- Display: Issuer Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_size.display = function(value)
  return "Issuer Size: "..value
end

-- Dissect: Issuer Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.issuer_size, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.last_update_milli = {}

-- Size: Last Update Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.last_update_milli.size = 8

-- Display: Last Update Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.last_update_milli.display = function(value)
  return "Last Update Milli: "..value
end

-- Dissect: Last Update Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.last_update_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.last_update_milli, range, value, display)

  return offset + length, value
end

-- Market Close
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close = {}

-- Size: Market Close
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close.size = 8

-- Display: Market Close
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close.display = function(value)
  return "Market Close: "..value
end

-- Dissect: Market Close
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_close, range, value, display)

  return offset + length, value
end

-- Market Close Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_time_milli = {}

-- Size: Market Close Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_time_milli.size = 8

-- Display: Market Close Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_time_milli.display = function(value)
  return "Market Close Time Milli: "..value
end

-- Dissect: Market Close Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_close_time_milli, range, value, display)

  return offset + length, value
end

-- Market Msg Ct
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_msg_ct = {}

-- Size: Market Msg Ct
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_msg_ct.size = 4

-- Display: Market Msg Ct
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_msg_ct.display = function(value)
  return "Market Msg Ct: "..value
end

-- Dissect: Market Msg Ct
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_msg_ct, range, value, display)

  return offset + length, value
end

-- Market Open
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open = {}

-- Size: Market Open
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open.size = 8

-- Display: Market Open
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open.display = function(value)
  return "Market Open: "..value
end

-- Dissect: Market Open
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_open, range, value, display)

  return offset + length, value
end

-- Maturity Date Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.maturity_date_milli = {}

-- Size: Maturity Date Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.maturity_date_milli.size = 8

-- Display: Maturity Date Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.maturity_date_milli.display = function(value)
  return "Maturity Date Milli: "..value
end

-- Dissect: Maturity Date Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.maturity_date_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.maturity_date_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.maturity_date_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.maturity_date_milli, range, value, display)

  return offset + length, value
end

-- Message Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_size = {}

-- Size: Message Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_size.size = 2

-- Display: Message Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_type = {}

-- Size: Message Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_type.size = 1

-- Display: Message Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_type.display = function(value)
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
  if value == 16 then
    return "Message Type: Extended Security No Cusip Message (16)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Messages
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.messages = {}

-- Size: Messages
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.messages.size = 1

-- Display: Messages
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.messages.display = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.messages.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.messages, range, value, display)

  return offset + length, value
end

-- Otc Issuer Id
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.otc_issuer_id = {}

-- Size: Otc Issuer Id
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.otc_issuer_id.size = 4

-- Display: Otc Issuer Id
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.otc_issuer_id.display = function(value)
  return "Otc Issuer Id: "..value
end

-- Dissect: Otc Issuer Id
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.otc_issuer_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.otc_issuer_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.otc_issuer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.otc_issuer_id, range, value, display)

  return offset + length, value
end

-- Packet Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli = {}

-- Size: Packet Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli.size = 4

-- Display: Packet Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli_format == 0 then
    return "Packet Milli: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Packet Milli: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Packet Milli: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Packet Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Packet Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_size = {}

-- Size: Packet Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_size.size = 2

-- Display: Packet Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Par Value
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.par_value = {}

-- Size: Par Value
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.par_value.size = 8

-- Display: Par Value
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.par_value.display = function(value)
  return "Par Value: "..value
end

-- Dissect: Par Value
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.par_value.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.par_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.par_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.par_value, range, value, display)

  return offset + length, value
end

-- Primary Market
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.primary_market = {}

-- Size: Primary Market
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.primary_market.size = 3

-- Display: Primary Market
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.primary_market.display = function(value)
  return "Primary Market: "..value
end

-- Dissect: Primary Market
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.primary_market.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.primary_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.primary_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.primary_market, range, value, display)

  return offset + length, value
end

-- Reporting Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.reporting_status = {}

-- Size: Reporting Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.reporting_status.size = 1

-- Display: Reporting Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.reporting_status.display = function(value)
  if value == "A" then
    return "Reporting Status: Alternative Reporting (A)"
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
    return "Reporting Status: Other Reporting (O)"
  end
  if value == "R" then
    return "Reporting Status: Finra Reporting (R)"
  end
  if value == "V" then
    return "Reporting Status: Sec Investment Company (V)"
  end
  if value == "W" then
    return "Reporting Status: Sec Reporting Reg A (W)"
  end

  return "Reporting Status: Unknown("..value..")"
end

-- Dissect: Reporting Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Security Action
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_action = {}

-- Size: Security Action
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_action.size = 1

-- Display: Security Action
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_action.display = function(value)
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
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_action, range, value, display)

  return offset + length, value
end

-- Security Desc
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_desc = {}

-- Size: Security Desc
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_desc.size = 25

-- Display: Security Desc
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_desc.display = function(value)
  return "Security Desc: "..value
end

-- Dissect: Security Desc
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_desc.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_desc.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_desc.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_desc, range, value, display)

  return offset + length, value
end

-- Security Detail Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_name = {}

-- Display: Security Detail Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_name.display = function(value)
  return "Security Detail Name: "..value
end

-- Dissect runtime sized field: Security Detail Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_name.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_name.display(value, packet, parent, size)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_detail_name, range, value, display)

  return offset + size, value
end

-- Security Detail Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_size = {}

-- Size: Security Detail Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_size.size = 1

-- Display: Security Detail Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_size.display = function(value)
  return "Security Detail Size: "..value
end

-- Dissect: Security Detail Size
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_detail_size, range, value, display)

  return offset + length, value
end

-- Security Id
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_id = {}

-- Size: Security Id
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_id.size = 4

-- Display: Security Id
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_status = {}

-- Size: Security Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_status.size = 1

-- Display: Security Status
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_status.display = function(value)
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
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_type = {}

-- Size: Security Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_type.size = 5

-- Display: Security Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_type.display = function(value)
  if value == "CS" then
    return "Security Type: Common Stock (CS)"
  end
  if value == "PS" then
    return "Security Type: Preferred Stock (PS)"
  end
  if value == "RTS" then
    return "Security Type: Rights (RTS)"
  end
  if value == "UTS" then
    return "Security Type: Units (UTS)"
  end
  if value == "OS" then
    return "Security Type: Ordinary Shares (OS)"
  end
  if value == "ADR" then
    return "Security Type: American Depository Receipts (ADR)"
  end
  if value == "GDR" then
    return "Security Type: Global Depository Receipts (GDR)"
  end
  if value == "WTS" then
    return "Security Type: Warrants (WTS)"
  end
  if value == "OTHER" then
    return "Security Type: Other (OTHER)"
  end
  if value == "FUND" then
    return "Security Type: Fund (FUND)"
  end
  if value == "NYRS" then
    return "Security Type: New York Registry Shares (NYRS)"
  end
  if value == "SP" then
    return "Security Type: Structured Product (SP)"
  end
  if value == "ETF" then
    return "Security Type: Exchange Traded Fund (ETF)"
  end
  if value == "CORP" then
    return "Security Type: Corporate Bond (CORP)"
  end
  if value == "AGEN" then
    return "Security Type: Agency Bond (AGEN)"
  end
  if value == "EQLK" then
    return "Security Type: Equity Linked Bond (EQLK)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.seq_num = {}

-- Size: Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.seq_num.size = 4

-- Display: Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Short Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.short_name = {}

-- Size: Short Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.short_name.size = 25

-- Display: Short Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.short_name.display = function(value)
  return "Short Name: "..value
end

-- Dissect: Short Name
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.short_name.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.short_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.short_name, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_end_time_milli.size = 8

-- Display: Spin End Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_end_time_milli.display = function(value)
  return "Spin End Time Milli: "..value
end

-- Dissect: Spin End Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_end_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_end_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Last Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_msg_ct = {}

-- Size: Spin Msg Ct
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Start Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_start_time_milli.size = 8

-- Display: Spin Start Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_start_time_milli.display = function(value)
  return "Spin Start Time Milli: "..value
end

-- Dissect: Spin Start Time Milli
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_start_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_start_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type = {}

-- Size: Spin Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type.size = 1

-- Display: Spin Type
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type.display = function(value)
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
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.spin_type, range, value, display)

  return offset + length, value
end

-- Symbol
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.symbol = {}

-- Size: Symbol
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.symbol.size = 10

-- Display: Symbol
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tier
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.tier = {}

-- Size: Tier
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.tier.size = 1

-- Display: Tier
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.tier.display = function(value)
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
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.tier.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.tier, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4
-----------------------------------------------------------------------

-- Issuer
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer = {}

-- Calculate size of: Issuer
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer.size = function(buffer, offset)
  local index = 0

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_size.size

  local issuer_size = buffer(offset + index - 1, 1):uint()

  if issuer_size > 0 then
    -- Parse runtime size of: Issuer Name
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Issuer
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issuer
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issuer Size: Unsigned Integer
  index, issuer_size = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_size.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Issuer Name
  local issuer_name = nil

  local issuer_name_exists = issuer_size > 0

  if issuer_name_exists then

    -- Runtime Size Of: Issuer Name
    index, issuer_name = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer_name.dissect(buffer, index, packet, parent, issuer_size)
  end

  return index
end

-- Dissect: Issuer
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer.dissect = function(buffer, offset, packet, parent)
  if show.issuer then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.issuer, buffer(offset, 0))
    local index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer.fields(buffer, offset, packet, parent)
  end
end

-- Security Detail
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail = {}

-- Calculate size of: Security Detail
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail.size = function(buffer, offset)
  local index = 0

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_size.size

  local security_detail_size = buffer(offset + index - 1, 1):uint()

  if security_detail_size > 0 then
    -- Parse runtime size of: Security Detail Name
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Security Detail
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Detail
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Detail Size: Unsigned Integer
  index, security_detail_size = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_size.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Security Detail Name
  local security_detail_name = nil

  local security_detail_name_exists = security_detail_size > 0

  if security_detail_name_exists then

    -- Runtime Size Of: Security Detail Name
    index, security_detail_name = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail_name.dissect(buffer, index, packet, parent, security_detail_size)
  end

  return index
end

-- Dissect: Security Detail
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail.dissect = function(buffer, offset, packet, parent)
  if show.security_detail then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.security_detail, buffer(offset, 0))
    local index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail.fields(buffer, offset, packet, parent)
  end
end

-- Extended Security Flags
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags = {}

-- Size: Extended Security Flags
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags.size = 2

-- Display: Extended Security Flags
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Piggyback flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Piggyback"
  end
  -- Is Caveat Emptor Warning flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Caveat Emptor Warning"
  end
  -- Is Qualified Institutional Buyers Only flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Qualified Institutional Buyers Only"
  end
  -- Is Unsolicited Only flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Unsolicited Only"
  end
  -- Is Sponsored Status flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Sponsored Status"
  end
  -- Is Otc Link Ecn Eligible flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Otc Link Ecn Eligible"
  end
  -- Is Otc Link Messaging Disabled flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Otc Link Messaging Disabled"
  end
  -- Is Saturation Eligible flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Saturation Eligible"
  end
  -- Is Investment Grade flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Investment Grade"
  end
  -- Is Trading Flat flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Trading Flat"
  end
  -- Is Callable flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Callable"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Extended Security Flags
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags.bits = function(range, value, packet, parent)

  -- Piggyback: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.piggyback, range, value)

  -- Caveat Emptor Warning: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.caveat_emptor_warning, range, value)

  -- Qualified Institutional Buyers Only: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.qualified_institutional_buyers_only, range, value)

  -- Unsolicited Only: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.unsolicited_only, range, value)

  -- Sponsored Status: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.sponsored_status, range, value)

  -- Otc Link Ecn Eligible: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.otc_link_ecn_eligible, range, value)

  -- Otc Link Messaging Disabled: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.otc_link_messaging_disabled, range, value)

  -- Saturation Eligible: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.saturation_eligible, range, value)

  -- Investment Grade: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.investment_grade, range, value)

  -- Trading Flat: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.trading_flat, range, value)

  -- Callable: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.callable, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.reserved_5, range, value)
end

-- Dissect: Extended Security Flags
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.extended_security_flags, range, display)

  if show.extended_security_flags then
    otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Extended Security No Cusip Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_no_cusip_message = {}

-- Calculate size of: Extended Security No Cusip Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_no_cusip_message.size = function(buffer, offset)
  local index = 0

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.symbol.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.last_update_milli.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_action.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.otc_issuer_id.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_desc.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.short_name.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.asset_class.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_type.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.primary_market.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_id.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.tier.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.reporting_status.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.disclosure_status.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_status.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.par_value.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.coupon.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.maturity_date_milli.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.callable_date_milli.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_ratio.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_level.size

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail.size(buffer, offset + index)

  index = index + otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer.size(buffer, offset + index)

  return index
end

-- Display: Extended Security No Cusip Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_no_cusip_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Security No Cusip Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_no_cusip_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: UTF-8
  index, symbol = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Unsigned Integer
  index, last_update_milli = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Unsigned Integer
  index, security_action = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_action.dissect(buffer, index, packet, parent)

  -- Otc Issuer Id: Unsigned Integer
  index, otc_issuer_id = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.otc_issuer_id.dissect(buffer, index, packet, parent)

  -- Security Desc: UTF-8
  index, security_desc = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_desc.dissect(buffer, index, packet, parent)

  -- Short Name: UTF-8
  index, short_name = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.short_name.dissect(buffer, index, packet, parent)

  -- Asset Class: Unsigned Integer
  index, asset_class = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.asset_class.dissect(buffer, index, packet, parent)

  -- Security Type: UTF-8
  index, security_type = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_type.dissect(buffer, index, packet, parent)

  -- Primary Market: UTF-8
  index, primary_market = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.primary_market.dissect(buffer, index, packet, parent)

  -- Security Id: Unsigned Integer
  index, security_id = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_id.dissect(buffer, index, packet, parent)

  -- Extended Security Flags: Struct of 12 fields
  index, extended_security_flags = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Unsigned Integer
  index, tier = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: UTF-8
  index, reporting_status = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.reporting_status.dissect(buffer, index, packet, parent)

  -- Disclosure Status: Unsigned Integer
  index, disclosure_status = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.disclosure_status.dissect(buffer, index, packet, parent)

  -- Security Status: UTF-8
  index, security_status = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_status.dissect(buffer, index, packet, parent)

  -- Par Value: Unsigned Integer
  index, par_value = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.par_value.dissect(buffer, index, packet, parent)

  -- Coupon: Unsigned Integer
  index, coupon = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.coupon.dissect(buffer, index, packet, parent)

  -- Maturity Date Milli: Unsigned Integer
  index, maturity_date_milli = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.maturity_date_milli.dissect(buffer, index, packet, parent)

  -- Callable Date Milli: Unsigned Integer
  index, callable_date_milli = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.callable_date_milli.dissect(buffer, index, packet, parent)

  -- Adr Ratio: Unsigned Integer
  index, adr_ratio = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_ratio.dissect(buffer, index, packet, parent)

  -- Adr Level: UTF-8
  index, adr_level = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.adr_level.dissect(buffer, index, packet, parent)

  -- Security Detail: Struct of 2 fields
  index, security_detail = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.security_detail.dissect(buffer, index, packet, parent)

  -- Issuer: Struct of 2 fields
  index, issuer = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.issuer.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Security No Cusip Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_no_cusip_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.extended_security_no_cusip_message, buffer(offset, 0))
    local index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_no_cusip_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_no_cusip_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_no_cusip_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Close Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_message = {}

-- Size: Market Close Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_message.size =
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_time_milli.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_msg_ct.size

-- Display: Market Close Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Close Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Market Close Time Milli: Unsigned Integer
  index, market_close_time_milli = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_time_milli.dissect(buffer, index, packet, parent)

  -- Market Msg Ct: Unsigned Integer
  index, market_msg_ct = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_msg_ct.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Close Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_close_message, buffer(offset, 0))
    local index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Open Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open_message = {}

-- Size: Market Open Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open_message.size =
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close.size

-- Display: Market Open Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Open Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Market Open: Unsigned Integer
  index, market_open = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open.dissect(buffer, index, packet, parent)

  -- Market Close: Unsigned Integer
  index, market_close = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Open Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.market_open_message, buffer(offset, 0))
    local index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.end_of_spin_message = {}

-- Size: End Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.end_of_spin_message.size =
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_msg_ct.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_end_time_milli.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num.size

-- Display: End Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Spin Type: Unsigned Byte
  index, spin_type = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: Unsigned Integer
  index, spin_msg_ct = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: Unsigned Integer
  index, spin_end_time_milli = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Unsigned Integer
  index, spin_last_seq_num = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.end_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.start_of_spin_message = {}

-- Size: Start Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.start_of_spin_message.size =
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_start_time_milli.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num.size

-- Display: Start Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Spin Type: Unsigned Byte
  index, spin_type = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: Unsigned Integer
  index, spin_start_time_milli = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Unsigned Integer
  index, spin_last_seq_num = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.start_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.payload = {}

-- Dissect: Payload
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Spin Message
  if message_type == 11 then
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.start_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Spin Message
  if message_type == 12 then
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.end_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if message_type == 13 then
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Close Message
  if message_type == 14 then
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.market_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Security No Cusip Message
  if message_type == 16 then
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.extended_security_no_cusip_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_header = {}

-- Size: Message Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_header.size =
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_size.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_type.size

-- Display: Message Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, message_type = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message_header, buffer(offset, 0))
    local index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message = {}

-- Display: Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.message, buffer(offset, 0))
    local current = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Flag
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag = {}

-- Size: Packet Flag
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag.size = 1

-- Display: Packet Flag
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Heartbeat flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Heartbeat"
  end
  -- Is Seq Num Reset flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Seq Num Reset"
  end
  -- Is Replay flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Replay"
  end
  -- Is Test flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Test"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Packet Flag
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag.bits = function(range, value, packet, parent)

  -- Heartbeat: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.heartbeat, range, value)

  -- Seq Num Reset: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.seq_num_reset, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.reserved_4, range, value)

  -- Replay: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.replay, range, value)

  -- Test: 1 Bit
  parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.test, range, value)
end

-- Dissect: Packet Flag
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.packet_flag, range, display)

  if show.packet_flag then
    otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Packet Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header = {}

-- Size: Packet Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header.size =
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_size.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.seq_num.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.messages.size + 
  otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli.size

-- Display: Packet Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_size.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.seq_num.dissect(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_flag.dissect(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.messages.dissect(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.fields.packet_header, buffer(offset, 0))
    local index = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet = {}

-- Verify required size of Udp packet
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet.requiredsize = function(buffer)
  return buffer:len() >= otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header.size
end

-- Dissect Packet
otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = otcmarkets_linkats_referencedatanocusip_link_v4_10_4.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.init()
end

-- Dissector for OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4
function omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4, buffer(), omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.description, "("..buffer:len().." Bytes)")
  return otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4 (Udp)
local function omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otcmarkets_linkats_referencedatanocusip_link_v4_10_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4
  omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4
omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4:register_heuristic("udp", omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4_udp_heuristic)

-- Register OtcMarkets LinkAts ReferenceDataNoCusip Link 4.10.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_otcmarkets_linkats_referencedatanocusip_link_v4_10_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: OTC Markets Group
--   Version: 4.10.4
--   Date: Tuesday, June 16, 2026
--   Specification: OTC Markets Multicast Data Feeds.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
