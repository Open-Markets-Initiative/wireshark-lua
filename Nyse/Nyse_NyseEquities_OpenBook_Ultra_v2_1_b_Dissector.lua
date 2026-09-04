-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseEquities OpenBook Ultra 2.1.b Protocol
local omi_nyse_nyseequities_openbook_ultra_v2_1_b = Proto("Omi.Nyse.NyseEquities.OpenBook.Ultra.v2.1.b", "Nyse NyseEquities OpenBook Ultra 2.1.b")

-- Protocol table
local nyse_nyseequities_openbook_ultra_v2_1_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseEquities OpenBook Ultra 2.1.b Fields
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.nyseequities.openbook.ultra.v2.1.b.beginseqnum", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.chg_qty = ProtoField.new("Chg Qty", "nyse.nyseequities.openbook.ultra.v2.1.b.chgqty", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_price_point = ProtoField.new("Delta Price Point", "nyse.nyseequities.openbook.ultra.v2.1.b.deltapricepoint", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_size = ProtoField.new("Delta Size", "nyse.nyseequities.openbook.ultra.v2.1.b.deltasize", ftypes.INT16)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.nyseequities.openbook.ultra.v2.1.b.endseqnum", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.filler_1 = ProtoField.new("Filler 1", "nyse.nyseequities.openbook.ultra.v2.1.b.filler1", ftypes.BYTES)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.filler_2 = ProtoField.new("Filler 2", "nyse.nyseequities.openbook.ultra.v2.1.b.filler2", ftypes.BYTES)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.full_price_point = ProtoField.new("Full Price Point", "nyse.nyseequities.openbook.ultra.v2.1.b.fullpricepoint", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.link_flag = ProtoField.new("Link Flag", "nyse.nyseequities.openbook.ultra.v2.1.b.linkflag", ftypes.UINT8)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.link_id_1 = ProtoField.new("Link Id 1", "nyse.nyseequities.openbook.ultra.v2.1.b.linkid1", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.link_id_2 = ProtoField.new("Link Id 2", "nyse.nyseequities.openbook.ultra.v2.1.b.linkid2", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.link_id_3 = ProtoField.new("Link Id 3", "nyse.nyseequities.openbook.ultra.v2.1.b.linkid3", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.message_count = ProtoField.new("Message Count", "nyse.nyseequities.openbook.ultra.v2.1.b.messagecount", ftypes.UINT8)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.message_type = ProtoField.new("Message Type", "nyse.nyseequities.openbook.ultra.v2.1.b.messagetype", ftypes.UINT16)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.mpv = ProtoField.new("Mpv", "nyse.nyseequities.openbook.ultra.v2.1.b.mpv", ftypes.INT16)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.msg_type = ProtoField.new("Msg Type", "nyse.nyseequities.openbook.ultra.v2.1.b.msgtype", ftypes.INT16)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "nyse.nyseequities.openbook.ultra.v2.1.b.nextsequencenumber", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.num_orders = ProtoField.new("Num Orders", "nyse.nyseequities.openbook.ultra.v2.1.b.numorders", ftypes.INT16)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.packet_size = ProtoField.new("Packet Size", "nyse.nyseequities.openbook.ultra.v2.1.b.packetsize", ftypes.UINT16)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.price_numerator = ProtoField.new("Price Numerator", "nyse.nyseequities.openbook.ultra.v2.1.b.pricenumerator", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.nyseequities.openbook.ultra.v2.1.b.pricescalecode", ftypes.INT8)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.product_id = ProtoField.new("Product Id", "nyse.nyseequities.openbook.ultra.v2.1.b.productid", ftypes.UINT8)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.nyseequities.openbook.ultra.v2.1.b.quotecondition", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.reason_code = ProtoField.new("Reason Code", "nyse.nyseequities.openbook.ultra.v2.1.b.reasoncode", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.reject_reason = ProtoField.new("Reject Reason", "nyse.nyseequities.openbook.ultra.v2.1.b.rejectreason", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.nyseequities.openbook.ultra.v2.1.b.reserved1", ftypes.BYTES)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.retransmission_flag = ProtoField.new("Retransmission Flag", "nyse.nyseequities.openbook.ultra.v2.1.b.retransmissionflag", ftypes.UINT8)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.nyseequities.openbook.ultra.v2.1.b.sequencenumber", ftypes.UINT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.side = ProtoField.new("Side", "nyse.nyseequities.openbook.ultra.v2.1.b.side", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_id = ProtoField.new("Source Id", "nyse.nyseequities.openbook.ultra.v2.1.b.sourceid", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_seq_num = ProtoField.new("Source Seq Num", "nyse.nyseequities.openbook.ultra.v2.1.b.sourceseqnum", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_session_id = ProtoField.new("Source Session Id", "nyse.nyseequities.openbook.ultra.v2.1.b.sourcesessionid", ftypes.INT8)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_time = ProtoField.new("Source Time", "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetime", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetimemicrosecs", ftypes.INT16)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.status = ProtoField.new("Status", "nyse.nyseequities.openbook.ultra.v2.1.b.status", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_11 = ProtoField.new("Symbol 11", "nyse.nyseequities.openbook.ultra.v2.1.b.symbol11", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_16 = ProtoField.new("Symbol 16", "nyse.nyseequities.openbook.ultra.v2.1.b.symbol16", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.nyseequities.openbook.ultra.v2.1.b.symbolindex", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.nyseequities.openbook.ultra.v2.1.b.symbolseqnum", ftypes.INT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.timestamp = ProtoField.new("Timestamp", "nyse.nyseequities.openbook.ultra.v2.1.b.timestamp", ftypes.UINT32)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.trading_status = ProtoField.new("Trading Status", "nyse.nyseequities.openbook.ultra.v2.1.b.tradingstatus", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.update_size = ProtoField.new("Update Size", "nyse.nyseequities.openbook.ultra.v2.1.b.updatesize", ftypes.INT16)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.volume = ProtoField.new("Volume", "nyse.nyseequities.openbook.ultra.v2.1.b.volume", ftypes.INT32)

-- Nyse NyseEquities OpenBook Ultra 2.1.b Headers
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.packet = ProtoField.new("Packet", "nyse.nyseequities.openbook.ultra.v2.1.b.packet", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.packet_header = ProtoField.new("Packet Header", "nyse.nyseequities.openbook.ultra.v2.1.b.packetheader", ftypes.STRING)

-- Nyse NyseEquities OpenBook 2.1.b Application Messages
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.book_refresh_request_message = ProtoField.new("Book Refresh Request Message", "nyse.nyseequities.openbook.ultra.v2.1.b.bookrefreshrequestmessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_update_message = ProtoField.new("Delta Update Message", "nyse.nyseequities.openbook.ultra.v2.1.b.deltaupdatemessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_update_message_body = ProtoField.new("Delta Update Message Body", "nyse.nyseequities.openbook.ultra.v2.1.b.deltaupdatemessagebody", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_update_messages = ProtoField.new("Delta Update Messages", "nyse.nyseequities.openbook.ultra.v2.1.b.deltaupdatemessages", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.extended_book_refresh_request_message = ProtoField.new("Extended Book Refresh Request Message", "nyse.nyseequities.openbook.ultra.v2.1.b.extendedbookrefreshrequestmessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.full_update_message = ProtoField.new("Full Update Message", "nyse.nyseequities.openbook.ultra.v2.1.b.fullupdatemessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.full_update_message_body = ProtoField.new("Full Update Message Body", "nyse.nyseequities.openbook.ultra.v2.1.b.fullupdatemessagebody", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.full_update_messages = ProtoField.new("Full Update Messages", "nyse.nyseequities.openbook.ultra.v2.1.b.fullupdatemessages", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nyse.nyseequities.openbook.ultra.v2.1.b.heartbeatmessage", ftypes.BYTES)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.nyseequities.openbook.ultra.v2.1.b.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.heartbeat_subscription_message = ProtoField.new("Heartbeat Subscription Message", "nyse.nyseequities.openbook.ultra.v2.1.b.heartbeatsubscriptionmessage", ftypes.BYTES)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.nyseequities.openbook.ultra.v2.1.b.requestresponsemessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.nyseequities.openbook.ultra.v2.1.b.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.nyseequities.openbook.ultra.v2.1.b.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.nyseequities.openbook.ultra.v2.1.b.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_index_mapping_response_message = ProtoField.new("Symbol Index Mapping Response Message", "nyse.nyseequities.openbook.ultra.v2.1.b.symbolindexmappingresponsemessage", ftypes.STRING)
omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.unavailable_message = ProtoField.new("Unavailable Message", "nyse.nyseequities.openbook.ultra.v2.1.b.unavailablemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse NyseEquities OpenBook Ultra 2.1.b Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true

-- Register Nyse NyseEquities OpenBook Ultra 2.1.b Show Options
omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs.show_application_messages then
    show.application_messages = omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs.show_application_messages
  end
  if show.repeating_groups ~= omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs.show_repeating_groups then
    show.repeating_groups = omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs.show_repeating_groups
  end
  if show.structs ~= omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs.show_structs then
    show.structs = omi_nyse_nyseequities_openbook_ultra_v2_1_b.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Nyse NyseEquities OpenBook Ultra 2.1.b Fields
-----------------------------------------------------------------------

-- Begin Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Chg Qty
nyse_nyseequities_openbook_ultra_v2_1_b.chg_qty = {}

-- Size: Chg Qty
nyse_nyseequities_openbook_ultra_v2_1_b.chg_qty.size = 4

-- Display: Chg Qty
nyse_nyseequities_openbook_ultra_v2_1_b.chg_qty.display = function(value)
  return "Chg Qty: "..value
end

-- Dissect: Chg Qty
nyse_nyseequities_openbook_ultra_v2_1_b.chg_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.chg_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.chg_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.chg_qty, range, value, display)

  return offset + length, value
end

-- Delta Size
nyse_nyseequities_openbook_ultra_v2_1_b.delta_size = {}

-- Size: Delta Size
nyse_nyseequities_openbook_ultra_v2_1_b.delta_size.size = 2

-- Display: Delta Size
nyse_nyseequities_openbook_ultra_v2_1_b.delta_size.display = function(value)
  return "Delta Size: "..value
end

-- Dissect: Delta Size
nyse_nyseequities_openbook_ultra_v2_1_b.delta_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.delta_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.delta_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_size, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num = {}

-- Size: End Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num.size = 4

-- Display: End Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Filler 1
nyse_nyseequities_openbook_ultra_v2_1_b.filler_1 = {}

-- Size: Filler 1
nyse_nyseequities_openbook_ultra_v2_1_b.filler_1.size = 1

-- Display: Filler 1
nyse_nyseequities_openbook_ultra_v2_1_b.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
nyse_nyseequities_openbook_ultra_v2_1_b.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
nyse_nyseequities_openbook_ultra_v2_1_b.filler_2 = {}

-- Size: Filler 2
nyse_nyseequities_openbook_ultra_v2_1_b.filler_2.size = 2

-- Display: Filler 2
nyse_nyseequities_openbook_ultra_v2_1_b.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
nyse_nyseequities_openbook_ultra_v2_1_b.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Link Flag
nyse_nyseequities_openbook_ultra_v2_1_b.link_flag = {}

-- Size: Link Flag
nyse_nyseequities_openbook_ultra_v2_1_b.link_flag.size = 1

-- Display: Link Flag
nyse_nyseequities_openbook_ultra_v2_1_b.link_flag.display = function(value)
  return "Link Flag: "..value
end

-- Dissect: Link Flag
nyse_nyseequities_openbook_ultra_v2_1_b.link_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.link_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.link_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.link_flag, range, value, display)

  return offset + length, value
end

-- Link Id 1
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_1 = {}

-- Size: Link Id 1
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_1.size = 4

-- Display: Link Id 1
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_1.display = function(value)
  return "Link Id 1: "..value
end

-- Dissect: Link Id 1
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.link_id_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.link_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.link_id_1, range, value, display)

  return offset + length, value
end

-- Link Id 2
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_2 = {}

-- Size: Link Id 2
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_2.size = 4

-- Display: Link Id 2
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_2.display = function(value)
  return "Link Id 2: "..value
end

-- Dissect: Link Id 2
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.link_id_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.link_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.link_id_2, range, value, display)

  return offset + length, value
end

-- Link Id 3
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_3 = {}

-- Size: Link Id 3
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_3.size = 4

-- Display: Link Id 3
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_3.display = function(value)
  return "Link Id 3: "..value
end

-- Dissect: Link Id 3
nyse_nyseequities_openbook_ultra_v2_1_b.link_id_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.link_id_3.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.link_id_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.link_id_3, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_nyseequities_openbook_ultra_v2_1_b.message_count = {}

-- Size: Message Count
nyse_nyseequities_openbook_ultra_v2_1_b.message_count.size = 1

-- Display: Message Count
nyse_nyseequities_openbook_ultra_v2_1_b.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_nyseequities_openbook_ultra_v2_1_b.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_nyseequities_openbook_ultra_v2_1_b.message_type = {}

-- Size: Message Type
nyse_nyseequities_openbook_ultra_v2_1_b.message_type.size = 2

-- Display: Message Type
nyse_nyseequities_openbook_ultra_v2_1_b.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Heartbeat Message (2)"
  end
  if value == 5 then
    return "Message Type: Unavailable Message (5)"
  end
  if value == 10 then
    return "Message Type: Request Response Message (10)"
  end
  if value == 19 then
    return "Message Type: Heartbeat Subscription Message (19)"
  end
  if value == 20 then
    return "Message Type: Retransmission Request Message (20)"
  end
  if value == 22 then
    return "Message Type: Book Refresh Request Message (22)"
  end
  if value == 24 then
    return "Message Type: Heartbeat Response Message (24)"
  end
  if value == 27 then
    return "Message Type: Extended Book Refresh Request Message (27)"
  end
  if value == 34 then
    return "Message Type: Symbol Index Mapping Request Message (34)"
  end
  if value == 35 then
    return "Message Type: Symbol Index Mapping Response Message (35)"
  end
  if value == 230 then
    return "Message Type: Full Update Message (230)"
  end
  if value == 231 then
    return "Message Type: Delta Update Message (231)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_nyseequities_openbook_ultra_v2_1_b.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_nyseequities_openbook_ultra_v2_1_b.mpv = {}

-- Size: Mpv
nyse_nyseequities_openbook_ultra_v2_1_b.mpv.size = 2

-- Display: Mpv
nyse_nyseequities_openbook_ultra_v2_1_b.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_nyseequities_openbook_ultra_v2_1_b.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.mpv.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.mpv, range, value, display)

  return offset + length, value
end

-- Msg Type
nyse_nyseequities_openbook_ultra_v2_1_b.msg_type = {}

-- Size: Msg Type
nyse_nyseequities_openbook_ultra_v2_1_b.msg_type.size = 2

-- Display: Msg Type
nyse_nyseequities_openbook_ultra_v2_1_b.msg_type.display = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
nyse_nyseequities_openbook_ultra_v2_1_b.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.msg_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
nyse_nyseequities_openbook_ultra_v2_1_b.next_sequence_number = {}

-- Size: Next Sequence Number
nyse_nyseequities_openbook_ultra_v2_1_b.next_sequence_number.size = 4

-- Display: Next Sequence Number
nyse_nyseequities_openbook_ultra_v2_1_b.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
nyse_nyseequities_openbook_ultra_v2_1_b.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Num Orders
nyse_nyseequities_openbook_ultra_v2_1_b.num_orders = {}

-- Size: Num Orders
nyse_nyseequities_openbook_ultra_v2_1_b.num_orders.size = 2

-- Display: Num Orders
nyse_nyseequities_openbook_ultra_v2_1_b.num_orders.display = function(value)
  return "Num Orders: "..value
end

-- Dissect: Num Orders
nyse_nyseequities_openbook_ultra_v2_1_b.num_orders.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.num_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.num_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.num_orders, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_nyseequities_openbook_ultra_v2_1_b.packet_size = {}

-- Size: Packet Size
nyse_nyseequities_openbook_ultra_v2_1_b.packet_size.size = 2

-- Display: Packet Size
nyse_nyseequities_openbook_ultra_v2_1_b.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_nyseequities_openbook_ultra_v2_1_b.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Price Numerator
nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator = {}

-- Size: Price Numerator
nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator.size = 4

-- Display: Price Numerator
nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator.display = function(value)
  return "Price Numerator: "..value
end

-- Dissect: Price Numerator
nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.price_numerator, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_nyseequities_openbook_ultra_v2_1_b.price_scale_code = {}

-- Size: Price Scale Code
nyse_nyseequities_openbook_ultra_v2_1_b.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_nyseequities_openbook_ultra_v2_1_b.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_nyseequities_openbook_ultra_v2_1_b.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_nyseequities_openbook_ultra_v2_1_b.product_id = {}

-- Size: Product Id
nyse_nyseequities_openbook_ultra_v2_1_b.product_id.size = 1

-- Display: Product Id
nyse_nyseequities_openbook_ultra_v2_1_b.product_id.display = function(value)
  if value == 12 then
    return "Product Id: Nyse OpenBook Ultra"
  end

  return "Product Id: Unknown("..value..")"
end

-- Dissect: Product Id
nyse_nyseequities_openbook_ultra_v2_1_b.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.product_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.product_id, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_nyseequities_openbook_ultra_v2_1_b.quote_condition = {}

-- Size: Quote Condition
nyse_nyseequities_openbook_ultra_v2_1_b.quote_condition.size = 1

-- Display: Quote Condition
nyse_nyseequities_openbook_ultra_v2_1_b.quote_condition.display = function(value)
  if value == " " then
    return "Quote Condition: No Special Quote Condition (<whitespace>)"
  end
  if value == "W" then
    return "Quote Condition: Slow Quote (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_nyseequities_openbook_ultra_v2_1_b.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reason Code
nyse_nyseequities_openbook_ultra_v2_1_b.reason_code = {}

-- Size: Reason Code
nyse_nyseequities_openbook_ultra_v2_1_b.reason_code.size = 1

-- Display: Reason Code
nyse_nyseequities_openbook_ultra_v2_1_b.reason_code.display = function(value)
  if value == "O" then
    return "Reason Code: New Orderadditional Interest Added (O)"
  end
  if value == "C" then
    return "Reason Code: Cancel (C)"
  end
  if value == "E" then
    return "Reason Code: Execution (E)"
  end
  if value == "X" then
    return "Reason Code: Multiple Events (X)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nyse_nyseequities_openbook_ultra_v2_1_b.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reject Reason
nyse_nyseequities_openbook_ultra_v2_1_b.reject_reason = {}

-- Size: Reject Reason
nyse_nyseequities_openbook_ultra_v2_1_b.reject_reason.size = 1

-- Display: Reject Reason
nyse_nyseequities_openbook_ultra_v2_1_b.reject_reason.display = function(value)
  if value == "0" then
    return "Reject Reason: Request Accepted (0)"
  end
  if value == "1" then
    return "Reject Reason: Rejected Due To Permissions (1)"
  end
  if value == "2" then
    return "Reject Reason: Invalid Sequence Range Eg Low High (2)"
  end
  if value == "3" then
    return "Reject Reason: Exceeded Max Sequence Range 1000 (3)"
  end
  if value == "4" then
    return "Reject Reason: Exceeded Max Retrans Requests In A Day (4)"
  end
  if value == "5" then
    return "Reject Reason: Exceeded Max Refresh Requests In A Day (5)"
  end
  if value == "6" then
    return "Reject Reason: Rejected Requested Seqnum 1000000 Packets In The Past Use Refresh To Recover Current State If Necessary (6)"
  end

  return "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
nyse_nyseequities_openbook_ultra_v2_1_b.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_nyseequities_openbook_ultra_v2_1_b.reserved_1 = {}

-- Size: Reserved 1
nyse_nyseequities_openbook_ultra_v2_1_b.reserved_1.size = 1

-- Display: Reserved 1
nyse_nyseequities_openbook_ultra_v2_1_b.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_nyseequities_openbook_ultra_v2_1_b.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Retransmission Flag
nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_flag = {}

-- Size: Retransmission Flag
nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_flag.size = 1

-- Display: Retransmission Flag
nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_flag.display = function(value)
  return "Retransmission Flag: "..value
end

-- Dissect: Retransmission Flag
nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.retransmission_flag, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number = {}

-- Size: Sequence Number
nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number.size = 4

-- Display: Sequence Number
nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Side
nyse_nyseequities_openbook_ultra_v2_1_b.side = {}

-- Size: Side
nyse_nyseequities_openbook_ultra_v2_1_b.side.size = 1

-- Display: Side
nyse_nyseequities_openbook_ultra_v2_1_b.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_nyseequities_openbook_ultra_v2_1_b.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.side, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_nyseequities_openbook_ultra_v2_1_b.source_id = {}

-- Size: Source Id
nyse_nyseequities_openbook_ultra_v2_1_b.source_id.size = 20

-- Display: Source Id
nyse_nyseequities_openbook_ultra_v2_1_b.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_nyseequities_openbook_ultra_v2_1_b.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.source_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_openbook_ultra_v2_1_b.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.source_seq_num = {}

-- Size: Source Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.source_seq_num.size = 4

-- Display: Source Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Session Id
nyse_nyseequities_openbook_ultra_v2_1_b.source_session_id = {}

-- Size: Source Session Id
nyse_nyseequities_openbook_ultra_v2_1_b.source_session_id.size = 1

-- Display: Source Session Id
nyse_nyseequities_openbook_ultra_v2_1_b.source_session_id.display = function(value)
  return "Source Session Id: "..value
end

-- Dissect: Source Session Id
nyse_nyseequities_openbook_ultra_v2_1_b.source_session_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.source_session_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.source_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_session_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_nyseequities_openbook_ultra_v2_1_b.source_time = {}

-- Size: Source Time
nyse_nyseequities_openbook_ultra_v2_1_b.source_time.size = 4

-- Display: Source Time
nyse_nyseequities_openbook_ultra_v2_1_b.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_nyseequities_openbook_ultra_v2_1_b.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.source_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
nyse_nyseequities_openbook_ultra_v2_1_b.source_time_micro_secs = {}

-- Size: Source Time Micro Secs
nyse_nyseequities_openbook_ultra_v2_1_b.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
nyse_nyseequities_openbook_ultra_v2_1_b.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
nyse_nyseequities_openbook_ultra_v2_1_b.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Status
nyse_nyseequities_openbook_ultra_v2_1_b.status = {}

-- Size: Status
nyse_nyseequities_openbook_ultra_v2_1_b.status.size = 1

-- Display: Status
nyse_nyseequities_openbook_ultra_v2_1_b.status.display = function(value)
  if value == "A" then
    return "Status: Accepted (A)"
  end
  if value == "R" then
    return "Status: Rejected (R)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_nyseequities_openbook_ultra_v2_1_b.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol 11
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_11 = {}

-- Size: Symbol 11
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_11.size = 11

-- Display: Symbol 11
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_11.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol 11: No Value"
  end

  return "Symbol 11: "..value
end

-- Dissect: Symbol 11
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_11.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_11.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_11, range, value, display)

  return offset + length, value
end

-- Symbol 16
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_16 = {}

-- Size: Symbol 16
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_16.size = 16

-- Display: Symbol 16
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_16.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol 16: No Value"
  end

  return "Symbol 16: "..value
end

-- Dissect: Symbol 16
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_16.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_16.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_16, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index = {}

-- Size: Symbol Index
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.size = 4

-- Display: Symbol Index
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_nyseequities_openbook_ultra_v2_1_b.timestamp = {}

-- Size: Timestamp
nyse_nyseequities_openbook_ultra_v2_1_b.timestamp.size = 4

-- Display: Timestamp
nyse_nyseequities_openbook_ultra_v2_1_b.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_nyseequities_openbook_ultra_v2_1_b.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
nyse_nyseequities_openbook_ultra_v2_1_b.trading_status = {}

-- Size: Trading Status
nyse_nyseequities_openbook_ultra_v2_1_b.trading_status.size = 1

-- Display: Trading Status
nyse_nyseequities_openbook_ultra_v2_1_b.trading_status.display = function(value)
  if value == "P" then
    return "Trading Status: Pre Opening (P)"
  end
  if value == "O" then
    return "Trading Status: Core Session (O)"
  end
  if value == "X" then
    return "Trading Status: Closed (X)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
nyse_nyseequities_openbook_ultra_v2_1_b.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Update Size
nyse_nyseequities_openbook_ultra_v2_1_b.update_size = {}

-- Size: Update Size
nyse_nyseequities_openbook_ultra_v2_1_b.update_size.size = 2

-- Display: Update Size
nyse_nyseequities_openbook_ultra_v2_1_b.update_size.display = function(value)
  return "Update Size: "..value
end

-- Dissect: Update Size
nyse_nyseequities_openbook_ultra_v2_1_b.update_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.update_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.update_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.update_size, range, value, display)

  return offset + length, value
end

-- Volume
nyse_nyseequities_openbook_ultra_v2_1_b.volume = {}

-- Size: Volume
nyse_nyseequities_openbook_ultra_v2_1_b.volume.size = 4

-- Display: Volume
nyse_nyseequities_openbook_ultra_v2_1_b.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_nyseequities_openbook_ultra_v2_1_b.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_openbook_ultra_v2_1_b.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_nyseequities_openbook_ultra_v2_1_b.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse NyseEquities OpenBook Ultra 2.1.b
-----------------------------------------------------------------------

-- Delta Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.delta_price_point = {}

-- Size: Delta Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.delta_price_point.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.volume.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.chg_qty.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.num_orders.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.side.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.reason_code.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.link_id_1.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.link_id_2.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.link_id_3.size

-- Display: Delta Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.delta_price_point.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.delta_price_point.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Numerator: Binary
  index, price_numerator = nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_openbook_ultra_v2_1_b.volume.dissect(buffer, index, packet, parent)

  -- Chg Qty: Binary
  index, chg_qty = nyse_nyseequities_openbook_ultra_v2_1_b.chg_qty.dissect(buffer, index, packet, parent)

  -- Num Orders: Binary
  index, num_orders = nyse_nyseequities_openbook_ultra_v2_1_b.num_orders.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_nyseequities_openbook_ultra_v2_1_b.side.dissect(buffer, index, packet, parent)

  -- Reason Code: ASCII
  index, reason_code = nyse_nyseequities_openbook_ultra_v2_1_b.reason_code.dissect(buffer, index, packet, parent)

  -- Link Id 1: Binary
  index, link_id_1 = nyse_nyseequities_openbook_ultra_v2_1_b.link_id_1.dissect(buffer, index, packet, parent)

  -- Link Id 2: Binary
  index, link_id_2 = nyse_nyseequities_openbook_ultra_v2_1_b.link_id_2.dissect(buffer, index, packet, parent)

  -- Link Id 3: Binary
  index, link_id_3 = nyse_nyseequities_openbook_ultra_v2_1_b.link_id_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delta Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.delta_price_point.dissect = function(buffer, offset, packet, parent)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_price_point, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.delta_price_point.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.delta_price_point.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.delta_price_point.fields(buffer, offset, packet, parent)
  end
end

-- Delta Update Message Body
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message_body = {}

-- Display: Delta Update Message Body
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Update Message Body
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message_body.fields = function(buffer, offset, packet, parent, size_of_delta_update_message_body)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_openbook_ultra_v2_1_b.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary
  index, source_time_micro_secs = nyse_nyseequities_openbook_ultra_v2_1_b.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary
  index, source_seq_num = nyse_nyseequities_openbook_ultra_v2_1_b.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Session Id: Binary
  index, source_session_id = nyse_nyseequities_openbook_ultra_v2_1_b.source_session_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_nyseequities_openbook_ultra_v2_1_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Trading Status: ASCII
  index, trading_status = nyse_nyseequities_openbook_ultra_v2_1_b.trading_status.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_nyseequities_openbook_ultra_v2_1_b.price_scale_code.dissect(buffer, index, packet, parent)

  -- Dependency for Delta Price Point
  local end_of_payload = buffer:len()

  -- Delta Price Point: Struct of 9 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, delta_price_point = nyse_nyseequities_openbook_ultra_v2_1_b.delta_price_point.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delta Update Message Body
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message_body.dissect = function(buffer, offset, packet, parent, size_of_delta_update_message_body)
  local index = offset + size_of_delta_update_message_body

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_update_message_body, buffer(offset, 0))
    local current = nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message_body.fields(buffer, offset, packet, parent, size_of_delta_update_message_body)
    parent:set_len(size_of_delta_update_message_body)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message_body.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message_body.fields(buffer, offset, packet, parent, size_of_delta_update_message_body)

    return index
  end
end

-- Delta Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message = {}

-- Calculate size of: Delta Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_nyseequities_openbook_ultra_v2_1_b.delta_size.size

  -- Parse runtime size of: Delta Update Message Body
  index = index + buffer(offset + index - 2, 2):int()

  return index
end

-- Display: Delta Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Delta Size: Binary
  index, delta_size = nyse_nyseequities_openbook_ultra_v2_1_b.delta_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Delta Update Message Body
  local size_of_delta_update_message_body = delta_size - 2

  -- Delta Update Message Body: Struct of 9 fields
  index, delta_update_message_body = nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message_body.dissect(buffer, index, packet, parent, size_of_delta_update_message_body)

  return index
end

-- Dissect: Delta Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_update_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Delta Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_messages = {}

-- Size: Delta Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_messages.size = function(buffer, offset)
  return buffer:len() - offset
end

-- Display: Delta Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_messages.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_messages.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency for Delta Update Message
  local end_of_payload = buffer:len()

  -- Delta Update Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, delta_update_message = nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_message.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delta Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_messages.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.delta_update_messages, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_messages.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_messages.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_messages.fields(buffer, offset, packet, parent)
  end
end

-- Full Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.full_price_point = {}

-- Size: Full Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.full_price_point.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.volume.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.num_orders.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.side.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.reserved_1.size

-- Display: Full Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.full_price_point.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.full_price_point.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Numerator: Binary
  index, price_numerator = nyse_nyseequities_openbook_ultra_v2_1_b.price_numerator.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_openbook_ultra_v2_1_b.volume.dissect(buffer, index, packet, parent)

  -- Num Orders: Binary
  index, num_orders = nyse_nyseequities_openbook_ultra_v2_1_b.num_orders.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_nyseequities_openbook_ultra_v2_1_b.side.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_nyseequities_openbook_ultra_v2_1_b.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Price Point
nyse_nyseequities_openbook_ultra_v2_1_b.full_price_point.dissect = function(buffer, offset, packet, parent)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.full_price_point, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.full_price_point.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.full_price_point.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.full_price_point.fields(buffer, offset, packet, parent)
  end
end

-- Full Update Message Body
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message_body = {}

-- Display: Full Update Message Body
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Update Message Body
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message_body.fields = function(buffer, offset, packet, parent, size_of_full_update_message_body)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_openbook_ultra_v2_1_b.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary
  index, source_time_micro_secs = nyse_nyseequities_openbook_ultra_v2_1_b.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Session Id: Binary
  index, source_session_id = nyse_nyseequities_openbook_ultra_v2_1_b.source_session_id.dissect(buffer, index, packet, parent)

  -- Symbol 11: ASCII
  index, symbol_11 = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_11.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_nyseequities_openbook_ultra_v2_1_b.price_scale_code.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_nyseequities_openbook_ultra_v2_1_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Trading Status: ASCII
  index, trading_status = nyse_nyseequities_openbook_ultra_v2_1_b.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_nyseequities_openbook_ultra_v2_1_b.reserved_1.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_nyseequities_openbook_ultra_v2_1_b.mpv.dissect(buffer, index, packet, parent)

  -- Dependency for Full Price Point
  local end_of_payload = buffer:len()

  -- Full Price Point: Struct of 5 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, full_price_point = nyse_nyseequities_openbook_ultra_v2_1_b.full_price_point.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Full Update Message Body
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message_body.dissect = function(buffer, offset, packet, parent, size_of_full_update_message_body)
  local index = offset + size_of_full_update_message_body

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.full_update_message_body, buffer(offset, 0))
    local current = nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message_body.fields(buffer, offset, packet, parent, size_of_full_update_message_body)
    parent:set_len(size_of_full_update_message_body)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message_body.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message_body.fields(buffer, offset, packet, parent, size_of_full_update_message_body)

    return index
  end
end

-- Full Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message = {}

-- Calculate size of: Full Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_nyseequities_openbook_ultra_v2_1_b.update_size.size

  -- Parse runtime size of: Full Update Message Body
  index = index + buffer(offset + index - 2, 2):int()

  return index
end

-- Display: Full Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Update Size: Binary
  index, update_size = nyse_nyseequities_openbook_ultra_v2_1_b.update_size.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Full Update Message Body
  local size_of_full_update_message_body = update_size - 2

  -- Full Update Message Body: Struct of 12 fields
  index, full_update_message_body = nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message_body.dissect(buffer, index, packet, parent, size_of_full_update_message_body)

  return index
end

-- Dissect: Full Update Message
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.full_update_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Full Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_messages = {}

-- Size: Full Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_messages.size = function(buffer, offset)
  return buffer:len() - offset
end

-- Display: Full Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_messages.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_messages.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency for Full Update Message
  local end_of_payload = buffer:len()

  -- Full Update Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, full_update_message = nyse_nyseequities_openbook_ultra_v2_1_b.full_update_message.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Full Update Messages
nyse_nyseequities_openbook_ultra_v2_1_b.full_update_messages.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.full_update_messages, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.full_update_messages.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.full_update_messages.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.full_update_messages.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_response_message = {}

-- Size: Symbol Index Mapping Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_response_message.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.symbol_11.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.filler_1.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.size

-- Display: Symbol Index Mapping Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol 11: ASCII
  index, symbol_11 = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_11.dissect(buffer, index, packet, parent)

  -- Filler 1: Binary
  index, filler_1 = nyse_nyseequities_openbook_ultra_v2_1_b.filler_1.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_index_mapping_response_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_request_message.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.source_id.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.size

-- Display: Symbol Index Mapping Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_openbook_ultra_v2_1_b.source_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.extended_book_refresh_request_message = {}

-- Size: Extended Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.extended_book_refresh_request_message.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.source_id.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.msg_type.size

-- Display: Extended Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.extended_book_refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.extended_book_refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_openbook_ultra_v2_1_b.source_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Msg Type: Binary
  index, msg_type = nyse_nyseequities_openbook_ultra_v2_1_b.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.extended_book_refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.extended_book_refresh_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.extended_book_refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.extended_book_refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.extended_book_refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.heartbeat_response_message.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.source_id.size

-- Display: Heartbeat Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_openbook_ultra_v2_1_b.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.book_refresh_request_message = {}

-- Size: Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.book_refresh_request_message.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.symbol_16.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.source_id.size

-- Display: Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.book_refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.book_refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol 16: ASCII
  index, symbol_16 = nyse_nyseequities_openbook_ultra_v2_1_b.symbol_16.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_openbook_ultra_v2_1_b.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Refresh Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.book_refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.book_refresh_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.book_refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.book_refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.book_refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_request_message.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.source_id.size

-- Display: Retransmission Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_openbook_ultra_v2_1_b.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.request_response_message = {}

-- Size: Request Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.request_response_message.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.source_seq_num.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.source_id.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.status.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.reject_reason.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.filler_2.size

-- Display: Request Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary
  index, source_seq_num = nyse_nyseequities_openbook_ultra_v2_1_b.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_openbook_ultra_v2_1_b.source_id.dissect(buffer, index, packet, parent)

  -- Status: Character
  index, status = nyse_nyseequities_openbook_ultra_v2_1_b.status.dissect(buffer, index, packet, parent)

  -- Reject Reason: Character
  index, reject_reason = nyse_nyseequities_openbook_ultra_v2_1_b.reject_reason.dissect(buffer, index, packet, parent)

  -- Filler 2: ASCII
  index, filler_2 = nyse_nyseequities_openbook_ultra_v2_1_b.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_nyseequities_openbook_ultra_v2_1_b.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.request_response_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Unavailable Message
nyse_nyseequities_openbook_ultra_v2_1_b.unavailable_message = {}

-- Size: Unavailable Message
nyse_nyseequities_openbook_ultra_v2_1_b.unavailable_message.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num.size

-- Display: Unavailable Message
nyse_nyseequities_openbook_ultra_v2_1_b.unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unavailable Message
nyse_nyseequities_openbook_ultra_v2_1_b.unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nyseequities_openbook_ultra_v2_1_b.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nyseequities_openbook_ultra_v2_1_b.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unavailable Message
nyse_nyseequities_openbook_ultra_v2_1_b.unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.unavailable_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number_reset_message.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.next_sequence_number.size

-- Display: Sequence Number Reset Message
nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: Binary
  index, next_sequence_number = nyse_nyseequities_openbook_ultra_v2_1_b.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_nyseequities_openbook_ultra_v2_1_b.payload = {}

-- Dissect: Payload
nyse_nyseequities_openbook_ultra_v2_1_b.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 2 then
    return offset
  end
  -- Dissect Unavailable Message
  if message_type == 5 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 10 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Subscription Message
  if message_type == 19 then
    return offset
  end
  -- Dissect Retransmission Request Message
  if message_type == 20 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Book Refresh Request Message
  if message_type == 22 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.book_refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 24 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Book Refresh Request Message
  if message_type == 27 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.extended_book_refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 34 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Response Message
  if message_type == 35 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.symbol_index_mapping_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Full Update Messages
  if message_type == 230 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.full_update_messages.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delta Update Messages
  if message_type == 231 then
    return nyse_nyseequities_openbook_ultra_v2_1_b.delta_update_messages.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet Header
nyse_nyseequities_openbook_ultra_v2_1_b.packet_header = {}

-- Size: Packet Header
nyse_nyseequities_openbook_ultra_v2_1_b.packet_header.size =
  nyse_nyseequities_openbook_ultra_v2_1_b.packet_size.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.message_type.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.timestamp.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.product_id.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_flag.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.message_count.size + 
  nyse_nyseequities_openbook_ultra_v2_1_b.link_flag.size

-- Display: Packet Header
nyse_nyseequities_openbook_ultra_v2_1_b.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_nyseequities_openbook_ultra_v2_1_b.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_nyseequities_openbook_ultra_v2_1_b.packet_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = nyse_nyseequities_openbook_ultra_v2_1_b.message_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_nyseequities_openbook_ultra_v2_1_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_nyseequities_openbook_ultra_v2_1_b.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer Static
  index, product_id = nyse_nyseequities_openbook_ultra_v2_1_b.product_id.dissect(buffer, index, packet, parent)

  -- Retransmission Flag: 1 Byte Unsigned Fixed Width Integer
  index, retransmission_flag = nyse_nyseequities_openbook_ultra_v2_1_b.retransmission_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_nyseequities_openbook_ultra_v2_1_b.message_count.dissect(buffer, index, packet, parent)

  -- Link Flag: 1 Byte Unsigned Fixed Width Integer
  index, link_flag = nyse_nyseequities_openbook_ultra_v2_1_b.link_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_nyseequities_openbook_ultra_v2_1_b.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b.fields.packet_header, buffer(offset, 0))
    local index = nyse_nyseequities_openbook_ultra_v2_1_b.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_openbook_ultra_v2_1_b.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_openbook_ultra_v2_1_b.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_nyseequities_openbook_ultra_v2_1_b.packet = {}

-- Verify required size of Udp packet
nyse_nyseequities_openbook_ultra_v2_1_b.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_nyseequities_openbook_ultra_v2_1_b.packet_header.size
end

-- Dissect Packet
nyse_nyseequities_openbook_ultra_v2_1_b.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index, packet_header = nyse_nyseequities_openbook_ultra_v2_1_b.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 14, 2):uint()

  -- Payload: Runtime Type with 13 branches
  index = nyse_nyseequities_openbook_ultra_v2_1_b.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_nyseequities_openbook_ultra_v2_1_b.init()
end

-- Dissector for Nyse NyseEquities OpenBook Ultra 2.1.b
function omi_nyse_nyseequities_openbook_ultra_v2_1_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_nyseequities_openbook_ultra_v2_1_b.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nyseequities_openbook_ultra_v2_1_b, buffer(), omi_nyse_nyseequities_openbook_ultra_v2_1_b.description, "("..buffer:len().." Bytes)")
  return nyse_nyseequities_openbook_ultra_v2_1_b.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Product Id Field
nyse_nyseequities_openbook_ultra_v2_1_b.product_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(12, 1):uint()

  if value == 12 then
    return true
  end

  return false
end

-- Dissector Heuristic for Nyse NyseEquities OpenBook Ultra 2.1.b (Udp)
local function omi_nyse_nyseequities_openbook_ultra_v2_1_b_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nyseequities_openbook_ultra_v2_1_b.packet.requiredsize(buffer) then return false end

  -- Verify Product Id
  if not nyse_nyseequities_openbook_ultra_v2_1_b.product_id.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nyseequities_openbook_ultra_v2_1_b
  omi_nyse_nyseequities_openbook_ultra_v2_1_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse NyseEquities OpenBook Ultra 2.1.b
omi_nyse_nyseequities_openbook_ultra_v2_1_b:register_heuristic("udp", omi_nyse_nyseequities_openbook_ultra_v2_1_b_udp_heuristic)

-- Register Nyse NyseEquities OpenBook Ultra 2.1.b for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nyse_nyseequities_openbook_ultra_v2_1_b)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.1.b
--   Date: Friday, March 9, 2018
--   Specification: OpenBook_Ultra_Client_Spec_v2.1b.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
