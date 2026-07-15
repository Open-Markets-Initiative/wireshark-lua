-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4 Protocol
local omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4 = Proto("Omi.OtcMarkets.LinkAts.QuoteReferencePrice.Link.v4.10.4", "OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4")

-- Protocol table
local otcmarkets_linkats_quotereferenceprice_link_v4_10_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4 Fields
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.ask_price = ProtoField.new("Ask Price", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.askprice", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.ask_size = ProtoField.new("Ask Size", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.asksize", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.ask_time_milli = ProtoField.new("Ask Time Milli", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.asktimemilli", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.asset_class = ProtoField.new("Asset Class", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.assetclass", ftypes.UINT8)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.bb_quoted = ProtoField.new("Bb Quoted", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.bbquoted", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.bid_price = ProtoField.new("Bid Price", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.bidprice", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.bid_size = ProtoField.new("Bid Size", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.bidsize", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.bid_time_milli = ProtoField.new("Bid Time Milli", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.bidtimemilli", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.caveat_emptor_warning = ProtoField.new("Caveat Emptor Warning", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.caveatemptorwarning", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.channel_seq_num = ProtoField.new("Channel Seq Num", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.channelseqnum", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.heartbeat = ProtoField.new("Heartbeat", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.heartbeat", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.last_update_milli = ProtoField.new("Last Update Milli", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.lastupdatemilli", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_close = ProtoField.new("Market Close", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.marketclose", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_close_time_milli = ProtoField.new("Market Close Time Milli", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.marketclosetimemilli", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_msg_ct = ProtoField.new("Market Msg Ct", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.marketmsgct", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_open = ProtoField.new("Market Open", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.marketopen", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message = ProtoField.new("Message", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.message", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message_header = ProtoField.new("Message Header", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.messageheader", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message_size = ProtoField.new("Message Size", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.messagesize", ftypes.UINT16)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message_type = ProtoField.new("Message Type", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.messagetype", ftypes.UINT8)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.messages = ProtoField.new("Messages", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.messages", ftypes.UINT8)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.otc_link_ecn_eligible = ProtoField.new("Otc Link Ecn Eligible", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.otclinkecneligible", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.otc_link_messaging_disabled = ProtoField.new("Otc Link Messaging Disabled", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.otclinkmessagingdisabled", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.packet = ProtoField.new("Packet", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.packet", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.packet_flag = ProtoField.new("Packet Flag", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.packetflag", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.packet_header = ProtoField.new("Packet Header", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.packetheader", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.packet_milli = ProtoField.new("Packet Milli", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.packetmilli", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.packet_size = ProtoField.new("Packet Size", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.packetsize", ftypes.UINT16)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.price = ProtoField.new("Price", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.price", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.proprietary_quote_eligible = ProtoField.new("Proprietary Quote Eligible", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.proprietaryquoteeligible", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.qualified_institutional_buyers_only = ProtoField.new("Qualified Institutional Buyers Only", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.qualifiedinstitutionalbuyersonly", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reference_price_action = ProtoField.new("Reference Price Action", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.referencepriceaction", ftypes.UINT8)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reference_price_id = ProtoField.new("Reference Price Id", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.referencepriceid", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.replay = ProtoField.new("Replay", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.replay", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reporting_status = ProtoField.new("Reporting Status", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.reportingstatus", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reserved_4 = ProtoField.new("Reserved 4", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.reserved4", ftypes.UINT8, nil, base.DEC, 0x3C)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.saturation_eligible = ProtoField.new("Saturation Eligible", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.saturationeligible", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_action = ProtoField.new("Security Action", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.securityaction", ftypes.UINT8)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_flags = ProtoField.new("Security Flags", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.securityflags", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_id = ProtoField.new("Security Id", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.securityid", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_status = ProtoField.new("Security Status", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.securitystatus", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.seq_num = ProtoField.new("Seq Num", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.seqnum", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.seqnumreset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.size = ProtoField.new("Size", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.size", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.spinendtimemilli", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.spinlastseqnum", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.spinmsgct", ftypes.UINT32)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.spinstarttimemilli", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_type = ProtoField.new("Spin Type", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.spintype", ftypes.UINT8)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.symbol = ProtoField.new("Symbol", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.symbol", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.test = ProtoField.new("Test", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.test", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.tier = ProtoField.new("Tier", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.tier", ftypes.UINT8)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.time_milli = ProtoField.new("Time Milli", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.timemilli", ftypes.UINT64)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.unsolicited_only = ProtoField.new("Unsolicited Only", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.unsolicitedonly", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)

-- OtcMarkets LinkAts Link QuoteReferencePrice 4.10.4 Application Messages
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.endofspinmessage", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_close_message = ProtoField.new("Market Close Message", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.marketclosemessage", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_open_message = ProtoField.new("Market Open Message", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.marketopenmessage", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reference_price_message = ProtoField.new("Reference Price Message", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.referencepricemessage", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reference_price_update_message = ProtoField.new("Reference Price Update Message", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.referencepriceupdatemessage", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_message = ProtoField.new("Security Message", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.securitymessage", ftypes.STRING)
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.startofspinmessage", ftypes.STRING)

-- OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4 generated fields
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message_index = ProtoField.new("Message Index", "otcmarkets.linkats.quotereferenceprice.link.v4.10.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_flag = true
show.packet_header = true
show.security_flags = true
show.message_index = true

-- Register OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4 Show Options
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_packet_flag = Pref.bool("Show Packet Flag", show.packet_flag, "Parse and add Packet Flag to protocol tree")
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_application_messages then
    show.application_messages = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_application_messages
  end
  if show.message ~= omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_message then
    show.message = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_message
  end
  if show.message_header ~= omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_message_header then
    show.message_header = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_message_header
  end
  if show.packet ~= omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_packet then
    show.packet = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_packet
  end
  if show.packet_flag ~= omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_packet_flag then
    show.packet_flag = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_packet_flag
  end
  if show.packet_header ~= omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_packet_header then
    show.packet_header = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_packet_header
  end
  if show.security_flags ~= omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_security_flags then
    show.security_flags = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_security_flags
  end
  if show.message_index ~= omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_message_index then
    show.message_index = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4 Fields
-----------------------------------------------------------------------

-- Ask Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_price = {}

-- Size: Ask Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_price.size = 8

-- Display: Ask Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_size = {}

-- Size: Ask Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_size.size = 4

-- Display: Ask Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_time_milli = {}

-- Size: Ask Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_time_milli.size = 8

-- Display: Ask Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_time_milli.display = function(value)
  return "Ask Time Milli: "..value
end

-- Dissect: Ask Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.ask_time_milli, range, value, display)

  return offset + length, value
end

-- Asset Class
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.asset_class = {}

-- Size: Asset Class
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.asset_class.size = 1

-- Display: Asset Class
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.asset_class.display = function(value)
  if value == 1 then
    return "Asset Class: Equity (1)"
  end
  if value == 2 then
    return "Asset Class: Fixed Income (2)"
  end

  return "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Bid Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_price = {}

-- Size: Bid Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_price.size = 8

-- Display: Bid Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_size = {}

-- Size: Bid Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_size.size = 4

-- Display: Bid Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_time_milli = {}

-- Size: Bid Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_time_milli.size = 8

-- Display: Bid Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_time_milli.display = function(value)
  return "Bid Time Milli: "..value
end

-- Dissect: Bid Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.bid_time_milli, range, value, display)

  return offset + length, value
end

-- Channel Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num = {}

-- Size: Channel Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.size = 4

-- Display: Channel Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.display = function(value)
  return "Channel Seq Num: "..value
end

-- Dissect: Channel Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.channel_seq_num, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.last_update_milli = {}

-- Size: Last Update Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.last_update_milli.size = 8

-- Display: Last Update Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.last_update_milli.display = function(value)
  return "Last Update Milli: "..value
end

-- Dissect: Last Update Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.last_update_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.last_update_milli, range, value, display)

  return offset + length, value
end

-- Market Close
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close = {}

-- Size: Market Close
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close.size = 8

-- Display: Market Close
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close.display = function(value)
  return "Market Close: "..value
end

-- Dissect: Market Close
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_close, range, value, display)

  return offset + length, value
end

-- Market Close Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_time_milli = {}

-- Size: Market Close Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_time_milli.size = 8

-- Display: Market Close Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_time_milli.display = function(value)
  return "Market Close Time Milli: "..value
end

-- Dissect: Market Close Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_close_time_milli, range, value, display)

  return offset + length, value
end

-- Market Msg Ct
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_msg_ct = {}

-- Size: Market Msg Ct
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_msg_ct.size = 4

-- Display: Market Msg Ct
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_msg_ct.display = function(value)
  return "Market Msg Ct: "..value
end

-- Dissect: Market Msg Ct
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_msg_ct, range, value, display)

  return offset + length, value
end

-- Market Open
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open = {}

-- Size: Market Open
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open.size = 8

-- Display: Market Open
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open.display = function(value)
  return "Market Open: "..value
end

-- Dissect: Market Open
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_open, range, value, display)

  return offset + length, value
end

-- Message Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_size = {}

-- Size: Message Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_size.size = 2

-- Display: Message Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_type = {}

-- Size: Message Type
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_type.size = 1

-- Display: Message Type
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_type.display = function(value)
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
  if value == 7 then
    return "Message Type: Reference Price Message (7)"
  end
  if value == 8 then
    return "Message Type: Reference Price Update Message (8)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Messages
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.messages = {}

-- Size: Messages
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.messages.size = 1

-- Display: Messages
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.messages.display = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.messages.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.messages, range, value, display)

  return offset + length, value
end

-- Packet Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli = {}

-- Size: Packet Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli.size = 4

-- Display: Packet Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli_format == 0 then
    return "Packet Milli: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Packet Milli: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Packet Milli: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Packet Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Packet Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_size = {}

-- Size: Packet Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_size.size = 2

-- Display: Packet Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.price = {}

-- Size: Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.price.size = 8

-- Display: Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.price, range, value, display)

  return offset + length, value
end

-- Reference Price Action
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_action = {}

-- Size: Reference Price Action
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_action.size = 1

-- Display: Reference Price Action
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_action.display = function(value)
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
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_action.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reference_price_action, range, value, display)

  return offset + length, value
end

-- Reference Price Id
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id = {}

-- Size: Reference Price Id
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id.size = 4

-- Display: Reference Price Id
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id.display = function(value)
  return "Reference Price Id: "..value
end

-- Dissect: Reference Price Id
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reference_price_id, range, value, display)

  return offset + length, value
end

-- Reporting Status
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reporting_status = {}

-- Size: Reporting Status
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reporting_status.size = 1

-- Display: Reporting Status
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reporting_status.display = function(value)
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
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Security Action
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_action = {}

-- Size: Security Action
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_action.size = 1

-- Display: Security Action
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_action.display = function(value)
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
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_action, range, value, display)

  return offset + length, value
end

-- Security Id
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id = {}

-- Size: Security Id
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id.size = 4

-- Display: Security Id
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_status = {}

-- Size: Security Status
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_status.size = 1

-- Display: Security Status
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_status.display = function(value)
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
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_status, range, value, display)

  return offset + length, value
end

-- Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.seq_num = {}

-- Size: Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.seq_num.size = 4

-- Display: Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.size = {}

-- Size: Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.size.size = 4

-- Display: Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.size, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_end_time_milli.size = 8

-- Display: Spin End Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_end_time_milli.display = function(value)
  return "Spin End Time Milli: "..value
end

-- Dissect: Spin End Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_end_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_end_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Last Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_msg_ct = {}

-- Size: Spin Msg Ct
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Start Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_start_time_milli.size = 8

-- Display: Spin Start Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_start_time_milli.display = function(value)
  return "Spin Start Time Milli: "..value
end

-- Dissect: Spin Start Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_start_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_start_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Type
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type = {}

-- Size: Spin Type
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type.size = 1

-- Display: Spin Type
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type.display = function(value)
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
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.spin_type, range, value, display)

  return offset + length, value
end

-- Symbol
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.symbol = {}

-- Size: Symbol
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.symbol.size = 10

-- Display: Symbol
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tier
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.tier = {}

-- Size: Tier
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.tier.size = 1

-- Display: Tier
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.tier.display = function(value)
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
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.tier.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.tier, range, value, display)

  return offset + length, value
end

-- Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.time_milli = {}

-- Size: Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.time_milli.size = 8

-- Display: Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.time_milli.display = function(value)
  return "Time Milli: "..value
end

-- Dissect: Time Milli
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.time_milli, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4
-----------------------------------------------------------------------

-- Reference Price Update Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_update_message = {}

-- Size: Reference Price Update Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_update_message.size =
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.quote_flags.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.price.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.size.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.time_milli.size

-- Display: Reference Price Update Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Update Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price Id: Unsigned Integer
  index, reference_price_id = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id.dissect(buffer, index, packet, parent)

  -- Quote Flags
  index, quote_flags = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.quote_flags.dissect(buffer, index, packet, parent)

  -- Price: Unsigned Integer
  index, price = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.price.dissect(buffer, index, packet, parent)

  -- Size: Unsigned Integer
  index, size = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.size.dissect(buffer, index, packet, parent)

  -- Time Milli: Unsigned Integer
  index, time_milli = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.time_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Update Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reference_price_update_message, buffer(offset, 0))
    local index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_message = {}

-- Size: Reference Price Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_message.size =
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_action.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.quote_flags.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_price.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_size.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_time_milli.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_price.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_size.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_time_milli.size

-- Display: Reference Price Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price Id: Unsigned Integer
  index, reference_price_id = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_id.dissect(buffer, index, packet, parent)

  -- Reference Price Action: Unsigned Integer
  index, reference_price_action = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_action.dissect(buffer, index, packet, parent)

  -- Quote Flags
  index, quote_flags = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.quote_flags.dissect(buffer, index, packet, parent)

  -- Security Id: Unsigned Integer
  index, security_id = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id.dissect(buffer, index, packet, parent)

  -- Ask Price: Unsigned Integer
  index, ask_price = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Unsigned Integer
  index, ask_size = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Time Milli: Unsigned Integer
  index, ask_time_milli = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.ask_time_milli.dissect(buffer, index, packet, parent)

  -- Bid Price: Unsigned Integer
  index, bid_price = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Unsigned Integer
  index, bid_size = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Time Milli: Unsigned Integer
  index, bid_time_milli = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.bid_time_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reference_price_message, buffer(offset, 0))
    local index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Flags
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags = {}

-- Size: Security Flags
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags.size = 1

-- Display: Security Flags
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Proprietary Quote Eligible flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Proprietary Quote Eligible"
  end
  -- Is Caveat Emptor Warning flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Caveat Emptor Warning"
  end
  -- Is Qualified Institutional Buyers Only flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Qualified Institutional Buyers Only"
  end
  -- Is Unsolicited Only flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Unsolicited Only"
  end
  -- Is Bb Quoted flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Bb Quoted"
  end
  -- Is Otc Link Ecn Eligible flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Otc Link Ecn Eligible"
  end
  -- Is Otc Link Messaging Disabled flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Otc Link Messaging Disabled"
  end
  -- Is Saturation Eligible flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Saturation Eligible"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Flags
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags.bits = function(range, value, packet, parent)

  -- Proprietary Quote Eligible: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.proprietary_quote_eligible, range, value)

  -- Caveat Emptor Warning: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.caveat_emptor_warning, range, value)

  -- Qualified Institutional Buyers Only: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.qualified_institutional_buyers_only, range, value)

  -- Unsolicited Only: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.unsolicited_only, range, value)

  -- Bb Quoted: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.bb_quoted, range, value)

  -- Otc Link Ecn Eligible: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.otc_link_ecn_eligible, range, value)

  -- Otc Link Messaging Disabled: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.otc_link_messaging_disabled, range, value)

  -- Saturation Eligible: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.saturation_eligible, range, value)
end

-- Dissect: Security Flags
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_flags, range, display)

  if show.security_flags then
    otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_message = {}

-- Size: Security Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_message.size =
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.symbol.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.last_update_milli.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_action.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.asset_class.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.tier.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reporting_status.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_status.size

-- Display: Security Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: UTF-8
  index, symbol = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Unsigned Integer
  index, last_update_milli = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Unsigned Integer
  index, security_action = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_action.dissect(buffer, index, packet, parent)

  -- Asset Class: Unsigned Integer
  index, asset_class = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.asset_class.dissect(buffer, index, packet, parent)

  -- Security Id: Unsigned Integer
  index, security_id = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 8 fields
  index, security_flags = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Unsigned Integer
  index, tier = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: UTF-8
  index, reporting_status = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reporting_status.dissect(buffer, index, packet, parent)

  -- Security Status: UTF-8
  index, security_status = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.security_message, buffer(offset, 0))
    local index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Close Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_message = {}

-- Size: Market Close Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_message.size =
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_time_milli.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_msg_ct.size

-- Display: Market Close Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Close Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Market Close Time Milli: Unsigned Integer
  index, market_close_time_milli = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_time_milli.dissect(buffer, index, packet, parent)

  -- Market Msg Ct: Unsigned Integer
  index, market_msg_ct = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_msg_ct.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Close Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_close_message, buffer(offset, 0))
    local index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Open Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open_message = {}

-- Size: Market Open Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open_message.size =
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close.size

-- Display: Market Open Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Open Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Market Open: Unsigned Integer
  index, market_open = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open.dissect(buffer, index, packet, parent)

  -- Market Close: Unsigned Integer
  index, market_close = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Open Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.market_open_message, buffer(offset, 0))
    local index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.end_of_spin_message = {}

-- Size: End Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.end_of_spin_message.size =
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_msg_ct.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_end_time_milli.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num.size

-- Display: End Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Spin Type: Unsigned Byte
  index, spin_type = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: Unsigned Integer
  index, spin_msg_ct = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: Unsigned Integer
  index, spin_end_time_milli = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Unsigned Integer
  index, spin_last_seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.end_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.start_of_spin_message = {}

-- Size: Start Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.start_of_spin_message.size =
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_start_time_milli.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num.size

-- Display: Start Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Seq Num: Unsigned Integer
  index, channel_seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.channel_seq_num.dissect(buffer, index, packet, parent)

  -- Spin Type: Unsigned Byte
  index, spin_type = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: Unsigned Integer
  index, spin_start_time_milli = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Unsigned Integer
  index, spin_last_seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.start_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.payload = {}

-- Dissect: Payload
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Spin Message
  if message_type == 11 then
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.start_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Spin Message
  if message_type == 12 then
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.end_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if message_type == 13 then
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Close Message
  if message_type == 14 then
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.market_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Message
  if message_type == 9 then
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.security_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Message
  if message_type == 7 then
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Update Message
  if message_type == 8 then
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.reference_price_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_header = {}

-- Size: Message Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_header.size =
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_size.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_type.size

-- Display: Message Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message_header, buffer(offset, 0))
    local index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message = {}

-- Display: Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 7 branches
  index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.message, buffer(offset, 0))
    local current = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Flag
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag = {}

-- Size: Packet Flag
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag.size = 1

-- Display: Packet Flag
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag.display = function(range, value, packet, parent)
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
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag.bits = function(range, value, packet, parent)

  -- Heartbeat: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.heartbeat, range, value)

  -- Seq Num Reset: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.seq_num_reset, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.reserved_4, range, value)

  -- Replay: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.replay, range, value)

  -- Test: 1 Bit
  parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.test, range, value)
end

-- Dissect: Packet Flag
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.packet_flag, range, display)

  if show.packet_flag then
    otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Packet Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header = {}

-- Size: Packet Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header.size =
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_size.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.seq_num.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.messages.size + 
  otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli.size

-- Display: Packet Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_size.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.seq_num.dissect(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_flag.dissect(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.messages.dissect(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.fields.packet_header, buffer(offset, 0))
    local index = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet = {}

-- Verify required size of Udp packet
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet.requiredsize = function(buffer)
  return buffer:len() >= otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header.size
end

-- Dissect Packet
otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = otcmarkets_linkats_quotereferenceprice_link_v4_10_4.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.init()
end

-- Dissector for OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4
function omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4, buffer(), omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.description, "("..buffer:len().." Bytes)")
  return otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4 (Udp)
local function omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otcmarkets_linkats_quotereferenceprice_link_v4_10_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4
  omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4
omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4:register_heuristic("udp", omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4_udp_heuristic)

-- Register OtcMarkets LinkAts QuoteReferencePrice Link 4.10.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_otcmarkets_linkats_quotereferenceprice_link_v4_10_4)

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
