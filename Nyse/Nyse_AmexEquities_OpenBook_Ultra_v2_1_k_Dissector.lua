-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse AmexEquities OpenBook Ultra 2.1.k Protocol
local omi_nyse_amexequities_openbook_ultra_v2_1_k = Proto("Nyse.AmexEquities.OpenBook.Ultra.v2.1.k.Lua", "Nyse AmexEquities OpenBook Ultra 2.1.k")

-- Protocol table
local nyse_amexequities_openbook_ultra_v2_1_k = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse AmexEquities OpenBook Ultra 2.1.k Fields
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.amexequities.openbook.ultra.v2.1.k.beginseqnum", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.chg_qty = ProtoField.new("Chg Qty", "nyse.amexequities.openbook.ultra.v2.1.k.chgqty", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.delta_price_point = ProtoField.new("Delta Price Point", "nyse.amexequities.openbook.ultra.v2.1.k.deltapricepoint", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.delta_size = ProtoField.new("Delta Size", "nyse.amexequities.openbook.ultra.v2.1.k.deltasize", ftypes.UINT16)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.amexequities.openbook.ultra.v2.1.k.endseqnum", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.filler_1 = ProtoField.new("Filler 1", "nyse.amexequities.openbook.ultra.v2.1.k.filler1", ftypes.UINT8)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.filler_2 = ProtoField.new("Filler 2", "nyse.amexequities.openbook.ultra.v2.1.k.filler2", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.full_price_point = ProtoField.new("Full Price Point", "nyse.amexequities.openbook.ultra.v2.1.k.fullpricepoint", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.link_flag = ProtoField.new("Link Flag", "nyse.amexequities.openbook.ultra.v2.1.k.linkflag", ftypes.UINT8)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.link_id_1 = ProtoField.new("Link Id 1", "nyse.amexequities.openbook.ultra.v2.1.k.linkid1", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.link_id_2 = ProtoField.new("Link Id 2", "nyse.amexequities.openbook.ultra.v2.1.k.linkid2", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.link_id_3 = ProtoField.new("Link Id 3", "nyse.amexequities.openbook.ultra.v2.1.k.linkid3", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.message_count = ProtoField.new("Message Count", "nyse.amexequities.openbook.ultra.v2.1.k.messagecount", ftypes.UINT8)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.message_type = ProtoField.new("Message Type", "nyse.amexequities.openbook.ultra.v2.1.k.messagetype", ftypes.UINT16)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.mpv = ProtoField.new("Mpv", "nyse.amexequities.openbook.ultra.v2.1.k.mpv", ftypes.UINT16)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.msg_type = ProtoField.new("Msg Type", "nyse.amexequities.openbook.ultra.v2.1.k.msgtype", ftypes.UINT16)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.next_seq_number = ProtoField.new("Next Seq Number", "nyse.amexequities.openbook.ultra.v2.1.k.nextseqnumber", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.num_orders = ProtoField.new("Num Orders", "nyse.amexequities.openbook.ultra.v2.1.k.numorders", ftypes.UINT16)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.packet = ProtoField.new("Packet", "nyse.amexequities.openbook.ultra.v2.1.k.packet", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.packet_header = ProtoField.new("Packet Header", "nyse.amexequities.openbook.ultra.v2.1.k.packetheader", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.packet_size = ProtoField.new("Packet Size", "nyse.amexequities.openbook.ultra.v2.1.k.packetsize", ftypes.UINT16)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.price_numerator = ProtoField.new("Price Numerator", "nyse.amexequities.openbook.ultra.v2.1.k.pricenumerator", ftypes.DOUBLE)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.amexequities.openbook.ultra.v2.1.k.pricescalecode", ftypes.DOUBLE)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.product_id = ProtoField.new("Product Id", "nyse.amexequities.openbook.ultra.v2.1.k.productid", ftypes.UINT8)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.amexequities.openbook.ultra.v2.1.k.quotecondition", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.reason_code = ProtoField.new("Reason Code", "nyse.amexequities.openbook.ultra.v2.1.k.reasoncode", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.reject_reason = ProtoField.new("Reject Reason", "nyse.amexequities.openbook.ultra.v2.1.k.rejectreason", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.retransmission_flag = ProtoField.new("Retransmission Flag", "nyse.amexequities.openbook.ultra.v2.1.k.retransmissionflag", ftypes.UINT8)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.amexequities.openbook.ultra.v2.1.k.sequencenumber", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.side = ProtoField.new("Side", "nyse.amexequities.openbook.ultra.v2.1.k.side", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_id = ProtoField.new("Source Id", "nyse.amexequities.openbook.ultra.v2.1.k.sourceid", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_seq_num = ProtoField.new("Source Seq Num", "nyse.amexequities.openbook.ultra.v2.1.k.sourceseqnum", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_session_id = ProtoField.new("Source Session Id", "nyse.amexequities.openbook.ultra.v2.1.k.sourcesessionid", ftypes.UINT8)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_time = ProtoField.new("Source Time", "nyse.amexequities.openbook.ultra.v2.1.k.sourcetime", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "nyse.amexequities.openbook.ultra.v2.1.k.sourcetimemicrosecs", ftypes.UINT16)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.status = ProtoField.new("Status", "nyse.amexequities.openbook.ultra.v2.1.k.status", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_11 = ProtoField.new("Symbol 11", "nyse.amexequities.openbook.ultra.v2.1.k.symbol11", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_16 = ProtoField.new("Symbol 16", "nyse.amexequities.openbook.ultra.v2.1.k.symbol16", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.amexequities.openbook.ultra.v2.1.k.symbolindex", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.amexequities.openbook.ultra.v2.1.k.symbolseqnum", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.timestamp = ProtoField.new("Timestamp", "nyse.amexequities.openbook.ultra.v2.1.k.timestamp", ftypes.UINT32)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.trading_status = ProtoField.new("Trading Status", "nyse.amexequities.openbook.ultra.v2.1.k.tradingstatus", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.update_size = ProtoField.new("Update Size", "nyse.amexequities.openbook.ultra.v2.1.k.updatesize", ftypes.UINT16)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.volume = ProtoField.new("Volume", "nyse.amexequities.openbook.ultra.v2.1.k.volume", ftypes.UINT32)

-- Nyse AmexEquities Ultra OpenBook 2.1.k Application Messages
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.book_refresh_request_message = ProtoField.new("Book Refresh Request Message", "nyse.amexequities.openbook.ultra.v2.1.k.bookrefreshrequestmessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.delta_update_message = ProtoField.new("Delta Update Message", "nyse.amexequities.openbook.ultra.v2.1.k.deltaupdatemessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.extended_book_refresh_request_message = ProtoField.new("Extended Book Refresh Request Message", "nyse.amexequities.openbook.ultra.v2.1.k.extendedbookrefreshrequestmessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.full_update_message = ProtoField.new("Full Update Message", "nyse.amexequities.openbook.ultra.v2.1.k.fullupdatemessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.amexequities.openbook.ultra.v2.1.k.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.amexequities.openbook.ultra.v2.1.k.requestresponsemessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.amexequities.openbook.ultra.v2.1.k.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.amexequities.openbook.ultra.v2.1.k.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.amexequities.openbook.ultra.v2.1.k.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_index_mapping_response_message = ProtoField.new("Symbol Index Mapping Response Message", "nyse.amexequities.openbook.ultra.v2.1.k.symbolindexmappingresponsemessage", ftypes.STRING)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.unavailable_message = ProtoField.new("Unavailable Message", "nyse.amexequities.openbook.ultra.v2.1.k.unavailablemessage", ftypes.STRING)

-- Nyse AmexEquities OpenBook Ultra 2.1.k generated fields
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.delta_price_point_index = ProtoField.new("Delta Price Point Index", "nyse.amexequities.openbook.ultra.v2.1.k.deltapricepointindex", ftypes.UINT16)
omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.full_price_point_index = ProtoField.new("Full Price Point Index", "nyse.amexequities.openbook.ultra.v2.1.k.fullpricepointindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse AmexEquities OpenBook Ultra 2.1.k Element Dissection Options
show.application_messages = true
show.delta_price_point = true
show.full_price_point = true
show.packet = true
show.packet_header = true
show.full_price_point_index = true
show.delta_price_point_index = true

-- Register Nyse AmexEquities OpenBook Ultra 2.1.k Show Options
omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_delta_price_point = Pref.bool("Show Delta Price Point", show.delta_price_point, "Parse and add Delta Price Point to protocol tree")
omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_full_price_point = Pref.bool("Show Full Price Point", show.full_price_point, "Parse and add Full Price Point to protocol tree")
omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_full_price_point_index = Pref.bool("Show Full Price Point Index", show.full_price_point_index, "Show generated full price point index in protocol tree")
omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_delta_price_point_index = Pref.bool("Show Delta Price Point Index", show.delta_price_point_index, "Show generated delta price point index in protocol tree")

-- Handle changed preferences
function omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_application_messages then
    show.application_messages = omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_application_messages
  end
  if show.delta_price_point ~= omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_delta_price_point then
    show.delta_price_point = omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_delta_price_point
  end
  if show.full_price_point ~= omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_full_price_point then
    show.full_price_point = omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_full_price_point
  end
  if show.packet ~= omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_packet then
    show.packet = omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_packet_header then
    show.packet_header = omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_packet_header
  end
  if show.full_price_point_index ~= omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_full_price_point_index then
    show.full_price_point_index = omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_full_price_point_index
  end
  if show.delta_price_point_index ~= omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_delta_price_point_index then
    show.delta_price_point_index = omi_nyse_amexequities_openbook_ultra_v2_1_k.prefs.show_delta_price_point_index
  end
end


-----------------------------------------------------------------------
-- Nyse AmexEquities OpenBook Ultra 2.1.k Fields
-----------------------------------------------------------------------

-- Begin Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Chg Qty
nyse_amexequities_openbook_ultra_v2_1_k.chg_qty = {}

-- Size: Chg Qty
nyse_amexequities_openbook_ultra_v2_1_k.chg_qty.size = 4

-- Display: Chg Qty
nyse_amexequities_openbook_ultra_v2_1_k.chg_qty.display = function(value)
  return "Chg Qty: "..value
end

-- Dissect: Chg Qty
nyse_amexequities_openbook_ultra_v2_1_k.chg_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.chg_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.chg_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.chg_qty, range, value, display)

  return offset + length, value
end

-- Delta Size
nyse_amexequities_openbook_ultra_v2_1_k.delta_size = {}

-- Size: Delta Size
nyse_amexequities_openbook_ultra_v2_1_k.delta_size.size = 2

-- Display: Delta Size
nyse_amexequities_openbook_ultra_v2_1_k.delta_size.display = function(value)
  return "Delta Size: "..value
end

-- Dissect: Delta Size
nyse_amexequities_openbook_ultra_v2_1_k.delta_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.delta_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.delta_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.delta_size, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num = {}

-- Size: End Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num.size = 4

-- Display: End Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Filler 1
nyse_amexequities_openbook_ultra_v2_1_k.filler_1 = {}

-- Size: Filler 1
nyse_amexequities_openbook_ultra_v2_1_k.filler_1.size = 1

-- Display: Filler 1
nyse_amexequities_openbook_ultra_v2_1_k.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
nyse_amexequities_openbook_ultra_v2_1_k.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.filler_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
nyse_amexequities_openbook_ultra_v2_1_k.filler_2 = {}

-- Size: Filler 2
nyse_amexequities_openbook_ultra_v2_1_k.filler_2.size = 2

-- Display: Filler 2
nyse_amexequities_openbook_ultra_v2_1_k.filler_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Filler 2: No Value"
  end

  return "Filler 2: "..value
end

-- Dissect: Filler 2
nyse_amexequities_openbook_ultra_v2_1_k.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.filler_2.size
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

  local display = nyse_amexequities_openbook_ultra_v2_1_k.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Link Flag
nyse_amexequities_openbook_ultra_v2_1_k.link_flag = {}

-- Size: Link Flag
nyse_amexequities_openbook_ultra_v2_1_k.link_flag.size = 1

-- Display: Link Flag
nyse_amexequities_openbook_ultra_v2_1_k.link_flag.display = function(value)
  return "Link Flag: "..value
end

-- Dissect: Link Flag
nyse_amexequities_openbook_ultra_v2_1_k.link_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.link_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.link_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.link_flag, range, value, display)

  return offset + length, value
end

-- Link Id 1
nyse_amexequities_openbook_ultra_v2_1_k.link_id_1 = {}

-- Size: Link Id 1
nyse_amexequities_openbook_ultra_v2_1_k.link_id_1.size = 4

-- Display: Link Id 1
nyse_amexequities_openbook_ultra_v2_1_k.link_id_1.display = function(value)
  return "Link Id 1: "..value
end

-- Dissect: Link Id 1
nyse_amexequities_openbook_ultra_v2_1_k.link_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.link_id_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.link_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.link_id_1, range, value, display)

  return offset + length, value
end

-- Link Id 2
nyse_amexequities_openbook_ultra_v2_1_k.link_id_2 = {}

-- Size: Link Id 2
nyse_amexequities_openbook_ultra_v2_1_k.link_id_2.size = 4

-- Display: Link Id 2
nyse_amexequities_openbook_ultra_v2_1_k.link_id_2.display = function(value)
  return "Link Id 2: "..value
end

-- Dissect: Link Id 2
nyse_amexequities_openbook_ultra_v2_1_k.link_id_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.link_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.link_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.link_id_2, range, value, display)

  return offset + length, value
end

-- Link Id 3
nyse_amexequities_openbook_ultra_v2_1_k.link_id_3 = {}

-- Size: Link Id 3
nyse_amexequities_openbook_ultra_v2_1_k.link_id_3.size = 4

-- Display: Link Id 3
nyse_amexequities_openbook_ultra_v2_1_k.link_id_3.display = function(value)
  return "Link Id 3: "..value
end

-- Dissect: Link Id 3
nyse_amexequities_openbook_ultra_v2_1_k.link_id_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.link_id_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.link_id_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.link_id_3, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_amexequities_openbook_ultra_v2_1_k.message_count = {}

-- Size: Message Count
nyse_amexequities_openbook_ultra_v2_1_k.message_count.size = 1

-- Display: Message Count
nyse_amexequities_openbook_ultra_v2_1_k.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_amexequities_openbook_ultra_v2_1_k.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_amexequities_openbook_ultra_v2_1_k.message_type = {}

-- Size: Message Type
nyse_amexequities_openbook_ultra_v2_1_k.message_type.size = 2

-- Display: Message Type
nyse_amexequities_openbook_ultra_v2_1_k.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset (1)"
  end
  if value == 2 then
    return "Message Type: Heartbeat Message (2)"
  end
  if value == 5 then
    return "Message Type: Message Unavailable (5)"
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
    return "Message Type: Refresh Request Message (22)"
  end
  if value == 24 then
    return "Message Type: Heartbeat Response Message (24)"
  end
  if value == 27 then
    return "Message Type: Extended Refresh Request (27)"
  end
  if value == 34 then
    return "Message Type: Symbol Index Mapping Request (34)"
  end
  if value == 35 then
    return "Message Type: Symbol Index Mapping Refresh Message (35)"
  end
  if value == 230 then
    return "Message Type: Openbook Full Update Message (230)"
  end
  if value == 231 then
    return "Message Type: Openbook Delta Update Message (231)"
  end
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 5 then
    return "Message Type: Unavailable Message (5)"
  end
  if value == 22 then
    return "Message Type: Book Refresh Request Message (22)"
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
nyse_amexequities_openbook_ultra_v2_1_k.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_amexequities_openbook_ultra_v2_1_k.mpv = {}

-- Size: Mpv
nyse_amexequities_openbook_ultra_v2_1_k.mpv.size = 2

-- Display: Mpv
nyse_amexequities_openbook_ultra_v2_1_k.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_amexequities_openbook_ultra_v2_1_k.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.mpv, range, value, display)

  return offset + length, value
end

-- Msg Type
nyse_amexequities_openbook_ultra_v2_1_k.msg_type = {}

-- Size: Msg Type
nyse_amexequities_openbook_ultra_v2_1_k.msg_type.size = 2

-- Display: Msg Type
nyse_amexequities_openbook_ultra_v2_1_k.msg_type.display = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
nyse_amexequities_openbook_ultra_v2_1_k.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Next Seq Number
nyse_amexequities_openbook_ultra_v2_1_k.next_seq_number = {}

-- Size: Next Seq Number
nyse_amexequities_openbook_ultra_v2_1_k.next_seq_number.size = 4

-- Display: Next Seq Number
nyse_amexequities_openbook_ultra_v2_1_k.next_seq_number.display = function(value)
  return "Next Seq Number: "..value
end

-- Dissect: Next Seq Number
nyse_amexequities_openbook_ultra_v2_1_k.next_seq_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.next_seq_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.next_seq_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.next_seq_number, range, value, display)

  return offset + length, value
end

-- Num Orders
nyse_amexequities_openbook_ultra_v2_1_k.num_orders = {}

-- Size: Num Orders
nyse_amexequities_openbook_ultra_v2_1_k.num_orders.size = 2

-- Display: Num Orders
nyse_amexequities_openbook_ultra_v2_1_k.num_orders.display = function(value)
  return "Num Orders: "..value
end

-- Dissect: Num Orders
nyse_amexequities_openbook_ultra_v2_1_k.num_orders.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.num_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.num_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.num_orders, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_amexequities_openbook_ultra_v2_1_k.packet_size = {}

-- Size: Packet Size
nyse_amexequities_openbook_ultra_v2_1_k.packet_size.size = 2

-- Display: Packet Size
nyse_amexequities_openbook_ultra_v2_1_k.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_amexequities_openbook_ultra_v2_1_k.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Price Numerator
nyse_amexequities_openbook_ultra_v2_1_k.price_numerator = {}

-- Size: Price Numerator
nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.size = 4

-- Display: Price Numerator
nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.display = function(value)
  return "Price Numerator: "..value
end

-- Translate: Price Numerator
nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price Numerator
nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.translate(raw)
  local display = nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.price_numerator, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code = {}

-- Size: Price Scale Code
nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Translate: Price Scale Code
nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price Scale Code
nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.translate(raw)
  local display = nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_amexequities_openbook_ultra_v2_1_k.product_id = {}

-- Size: Product Id
nyse_amexequities_openbook_ultra_v2_1_k.product_id.size = 1

-- Display: Product Id
nyse_amexequities_openbook_ultra_v2_1_k.product_id.display = function(value)
  if value == 12 then
    return "Product Id: NYSE Openbook Ultra (12)"
  end
  if value == 62 then
    return "Product Id: NYSE American Openbook Ultra (62)"
  end

  return "Product Id: Unknown("..value..")"
end

-- Dissect: Product Id
nyse_amexequities_openbook_ultra_v2_1_k.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.product_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.product_id, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_amexequities_openbook_ultra_v2_1_k.quote_condition = {}

-- Size: Quote Condition
nyse_amexequities_openbook_ultra_v2_1_k.quote_condition.size = 1

-- Display: Quote Condition
nyse_amexequities_openbook_ultra_v2_1_k.quote_condition.display = function(value)
  if value == " " then
    return "Quote Condition: No Special Quote Condition (<whitespace>)"
  end
  if value == "W" then
    return "Quote Condition: Slow Quote (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_amexequities_openbook_ultra_v2_1_k.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reason Code
nyse_amexequities_openbook_ultra_v2_1_k.reason_code = {}

-- Size: Reason Code
nyse_amexequities_openbook_ultra_v2_1_k.reason_code.size = 1

-- Display: Reason Code
nyse_amexequities_openbook_ultra_v2_1_k.reason_code.display = function(value)
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
nyse_amexequities_openbook_ultra_v2_1_k.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reject Reason
nyse_amexequities_openbook_ultra_v2_1_k.reject_reason = {}

-- Size: Reject Reason
nyse_amexequities_openbook_ultra_v2_1_k.reject_reason.size = 1

-- Display: Reject Reason
nyse_amexequities_openbook_ultra_v2_1_k.reject_reason.display = function(value)
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
nyse_amexequities_openbook_ultra_v2_1_k.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Retransmission Flag
nyse_amexequities_openbook_ultra_v2_1_k.retransmission_flag = {}

-- Size: Retransmission Flag
nyse_amexequities_openbook_ultra_v2_1_k.retransmission_flag.size = 1

-- Display: Retransmission Flag
nyse_amexequities_openbook_ultra_v2_1_k.retransmission_flag.display = function(value)
  if value == 1 then
    return "Retransmission Flag: Original Packet (1)"
  end
  if value == 2 then
    return "Retransmission Flag: Retransmitted Packet (2)"
  end
  if value == 5 then
    return "Retransmission Flag: Refresh Packet (5)"
  end
  if value == 6 then
    return "Retransmission Flag: Last Refresh Packet (6)"
  end

  return "Retransmission Flag: Unknown("..value..")"
end

-- Dissect: Retransmission Flag
nyse_amexequities_openbook_ultra_v2_1_k.retransmission_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.retransmission_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.retransmission_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.retransmission_flag, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_amexequities_openbook_ultra_v2_1_k.sequence_number = {}

-- Size: Sequence Number
nyse_amexequities_openbook_ultra_v2_1_k.sequence_number.size = 4

-- Display: Sequence Number
nyse_amexequities_openbook_ultra_v2_1_k.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_amexequities_openbook_ultra_v2_1_k.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Side
nyse_amexequities_openbook_ultra_v2_1_k.side = {}

-- Size: Side
nyse_amexequities_openbook_ultra_v2_1_k.side.size = 1

-- Display: Side
nyse_amexequities_openbook_ultra_v2_1_k.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_amexequities_openbook_ultra_v2_1_k.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.side, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_amexequities_openbook_ultra_v2_1_k.source_id = {}

-- Size: Source Id
nyse_amexequities_openbook_ultra_v2_1_k.source_id.size = 20

-- Display: Source Id
nyse_amexequities_openbook_ultra_v2_1_k.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_amexequities_openbook_ultra_v2_1_k.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.source_id.size
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

  local display = nyse_amexequities_openbook_ultra_v2_1_k.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num = {}

-- Size: Source Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num.size = 4

-- Display: Source Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Session Id
nyse_amexequities_openbook_ultra_v2_1_k.source_session_id = {}

-- Size: Source Session Id
nyse_amexequities_openbook_ultra_v2_1_k.source_session_id.size = 1

-- Display: Source Session Id
nyse_amexequities_openbook_ultra_v2_1_k.source_session_id.display = function(value)
  return "Source Session Id: "..value
end

-- Dissect: Source Session Id
nyse_amexequities_openbook_ultra_v2_1_k.source_session_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.source_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.source_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_session_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_amexequities_openbook_ultra_v2_1_k.source_time = {}

-- Size: Source Time
nyse_amexequities_openbook_ultra_v2_1_k.source_time.size = 4

-- Display: Source Time
nyse_amexequities_openbook_ultra_v2_1_k.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_amexequities_openbook_ultra_v2_1_k.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs = {}

-- Size: Source Time Micro Secs
nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Status
nyse_amexequities_openbook_ultra_v2_1_k.status = {}

-- Size: Status
nyse_amexequities_openbook_ultra_v2_1_k.status.size = 1

-- Display: Status
nyse_amexequities_openbook_ultra_v2_1_k.status.display = function(value)
  if value == "A" then
    return "Status: Accepted (A)"
  end
  if value == "R" then
    return "Status: Rejected (R)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_amexequities_openbook_ultra_v2_1_k.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol 11
nyse_amexequities_openbook_ultra_v2_1_k.symbol_11 = {}

-- Size: Symbol 11
nyse_amexequities_openbook_ultra_v2_1_k.symbol_11.size = 11

-- Display: Symbol 11
nyse_amexequities_openbook_ultra_v2_1_k.symbol_11.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol 11: No Value"
  end

  return "Symbol 11: "..value
end

-- Dissect: Symbol 11
nyse_amexequities_openbook_ultra_v2_1_k.symbol_11.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.symbol_11.size
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

  local display = nyse_amexequities_openbook_ultra_v2_1_k.symbol_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_11, range, value, display)

  return offset + length, value
end

-- Symbol 16
nyse_amexequities_openbook_ultra_v2_1_k.symbol_16 = {}

-- Size: Symbol 16
nyse_amexequities_openbook_ultra_v2_1_k.symbol_16.size = 16

-- Display: Symbol 16
nyse_amexequities_openbook_ultra_v2_1_k.symbol_16.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol 16: No Value"
  end

  return "Symbol 16: "..value
end

-- Dissect: Symbol 16
nyse_amexequities_openbook_ultra_v2_1_k.symbol_16.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.symbol_16.size
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

  local display = nyse_amexequities_openbook_ultra_v2_1_k.symbol_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_16, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index = {}

-- Size: Symbol Index
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.size = 4

-- Display: Symbol Index
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_amexequities_openbook_ultra_v2_1_k.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_amexequities_openbook_ultra_v2_1_k.timestamp = {}

-- Size: Timestamp
nyse_amexequities_openbook_ultra_v2_1_k.timestamp.size = 4

-- Display: Timestamp
nyse_amexequities_openbook_ultra_v2_1_k.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_amexequities_openbook_ultra_v2_1_k.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
nyse_amexequities_openbook_ultra_v2_1_k.trading_status = {}

-- Size: Trading Status
nyse_amexequities_openbook_ultra_v2_1_k.trading_status.size = 1

-- Display: Trading Status
nyse_amexequities_openbook_ultra_v2_1_k.trading_status.display = function(value)
  if value == "P" then
    return "Trading Status: Pre Opening (P)"
  end
  if value == "B" then
    return "Trading Status: Begin Accepting Orders (B)"
  end
  if value == "E" then
    return "Trading Status: Early Session (E)"
  end
  if value == "O" then
    return "Trading Status: Core Session (O)"
  end
  if value == "L" then
    return "Trading Status: Late Session (L)"
  end
  if value == "C" then
    return "Trading Status: Closed (C)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "6" then
    return "Trading Status: Suspended (6)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
nyse_amexequities_openbook_ultra_v2_1_k.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Update Size
nyse_amexequities_openbook_ultra_v2_1_k.update_size = {}

-- Size: Update Size
nyse_amexequities_openbook_ultra_v2_1_k.update_size.size = 2

-- Display: Update Size
nyse_amexequities_openbook_ultra_v2_1_k.update_size.display = function(value)
  return "Update Size: "..value
end

-- Dissect: Update Size
nyse_amexequities_openbook_ultra_v2_1_k.update_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.update_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.update_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.update_size, range, value, display)

  return offset + length, value
end

-- Volume
nyse_amexequities_openbook_ultra_v2_1_k.volume = {}

-- Size: Volume
nyse_amexequities_openbook_ultra_v2_1_k.volume.size = 4

-- Display: Volume
nyse_amexequities_openbook_ultra_v2_1_k.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_amexequities_openbook_ultra_v2_1_k.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_ultra_v2_1_k.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_ultra_v2_1_k.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse AmexEquities OpenBook Ultra 2.1.k
-----------------------------------------------------------------------

-- Delta Price Point
nyse_amexequities_openbook_ultra_v2_1_k.delta_price_point = {}

-- Size: Delta Price Point
nyse_amexequities_openbook_ultra_v2_1_k.delta_price_point.size =
  nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.volume.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.chg_qty.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.num_orders.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.side.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.reason_code.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.link_id_1.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.link_id_2.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.link_id_3.size

-- Display: Delta Price Point
nyse_amexequities_openbook_ultra_v2_1_k.delta_price_point.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Price Point
nyse_amexequities_openbook_ultra_v2_1_k.delta_price_point.fields = function(buffer, offset, packet, parent, delta_price_point_index)
  local index = offset

  -- Implicit Delta Price Point Index
  if delta_price_point_index ~= nil and show.delta_price_point_index then
    local iteration = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.delta_price_point_index, delta_price_point_index)
    iteration:set_generated()
  end

  -- Price Numerator: Binary
  index, price_numerator = nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexequities_openbook_ultra_v2_1_k.volume.dissect(buffer, index, packet, parent)

  -- Chg Qty: Binary
  index, chg_qty = nyse_amexequities_openbook_ultra_v2_1_k.chg_qty.dissect(buffer, index, packet, parent)

  -- Num Orders: Binary
  index, num_orders = nyse_amexequities_openbook_ultra_v2_1_k.num_orders.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_amexequities_openbook_ultra_v2_1_k.side.dissect(buffer, index, packet, parent)

  -- Reason Code: ASCII
  index, reason_code = nyse_amexequities_openbook_ultra_v2_1_k.reason_code.dissect(buffer, index, packet, parent)

  -- Link Id 1: Binary
  index, link_id_1 = nyse_amexequities_openbook_ultra_v2_1_k.link_id_1.dissect(buffer, index, packet, parent)

  -- Link Id 2: Binary
  index, link_id_2 = nyse_amexequities_openbook_ultra_v2_1_k.link_id_2.dissect(buffer, index, packet, parent)

  -- Link Id 3: Binary
  index, link_id_3 = nyse_amexequities_openbook_ultra_v2_1_k.link_id_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delta Price Point
nyse_amexequities_openbook_ultra_v2_1_k.delta_price_point.dissect = function(buffer, offset, packet, parent, delta_price_point_index)
  if show.delta_price_point then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.delta_price_point, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.delta_price_point.fields(buffer, offset, packet, parent, delta_price_point_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.delta_price_point.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.delta_price_point.fields(buffer, offset, packet, parent, delta_price_point_index)
  end
end

-- Delta Update Message
nyse_amexequities_openbook_ultra_v2_1_k.delta_update_message = {}

-- Calculate size of: Delta Update Message
nyse_amexequities_openbook_ultra_v2_1_k.delta_update_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.delta_size.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.source_time.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.source_session_id.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.quote_condition.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.trading_status.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.size

  -- Calculate field size from count
  local delta_price_point_count = buffer(offset + index - 20, 2):le_uint()
  index = index + delta_price_point_count * 28

  return index
end

-- Display: Delta Update Message
nyse_amexequities_openbook_ultra_v2_1_k.delta_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Update Message
nyse_amexequities_openbook_ultra_v2_1_k.delta_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Delta Size: Binary
  index, delta_size = nyse_amexequities_openbook_ultra_v2_1_k.delta_size.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_amexequities_openbook_ultra_v2_1_k.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary
  index, source_time_micro_secs = nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary
  index, source_seq_num = nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Session Id: Binary
  index, source_session_id = nyse_amexequities_openbook_ultra_v2_1_k.source_session_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_amexequities_openbook_ultra_v2_1_k.quote_condition.dissect(buffer, index, packet, parent)

  -- Trading Status: ASCII
  index, trading_status = nyse_amexequities_openbook_ultra_v2_1_k.trading_status.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.dissect(buffer, index, packet, parent)

  -- Repeating: Delta Price Point
  for delta_price_point_index = 1, delta_size do
    index, delta_price_point = nyse_amexequities_openbook_ultra_v2_1_k.delta_price_point.dissect(buffer, index, packet, parent, delta_price_point_index)
  end

  return index
end

-- Dissect: Delta Update Message
nyse_amexequities_openbook_ultra_v2_1_k.delta_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.delta_update_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.delta_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.delta_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.delta_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Full Price Point
nyse_amexequities_openbook_ultra_v2_1_k.full_price_point = {}

-- Size: Full Price Point
nyse_amexequities_openbook_ultra_v2_1_k.full_price_point.size =
  nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.volume.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.num_orders.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.side.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.filler_1.size

-- Display: Full Price Point
nyse_amexequities_openbook_ultra_v2_1_k.full_price_point.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Price Point
nyse_amexequities_openbook_ultra_v2_1_k.full_price_point.fields = function(buffer, offset, packet, parent, full_price_point_index)
  local index = offset

  -- Implicit Full Price Point Index
  if full_price_point_index ~= nil and show.full_price_point_index then
    local iteration = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.full_price_point_index, full_price_point_index)
    iteration:set_generated()
  end

  -- Price Numerator: Binary
  index, price_numerator = nyse_amexequities_openbook_ultra_v2_1_k.price_numerator.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexequities_openbook_ultra_v2_1_k.volume.dissect(buffer, index, packet, parent)

  -- Num Orders: Binary
  index, num_orders = nyse_amexequities_openbook_ultra_v2_1_k.num_orders.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_amexequities_openbook_ultra_v2_1_k.side.dissect(buffer, index, packet, parent)

  -- Filler 1: Binary
  index, filler_1 = nyse_amexequities_openbook_ultra_v2_1_k.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Price Point
nyse_amexequities_openbook_ultra_v2_1_k.full_price_point.dissect = function(buffer, offset, packet, parent, full_price_point_index)
  if show.full_price_point then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.full_price_point, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.full_price_point.fields(buffer, offset, packet, parent, full_price_point_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.full_price_point.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.full_price_point.fields(buffer, offset, packet, parent, full_price_point_index)
  end
end

-- Full Update Message
nyse_amexequities_openbook_ultra_v2_1_k.full_update_message = {}

-- Calculate size of: Full Update Message
nyse_amexequities_openbook_ultra_v2_1_k.full_update_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.update_size.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.source_time.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.symbol_seq_num.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.source_session_id.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.symbol_11.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.quote_condition.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.trading_status.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.filler_1.size

  index = index + nyse_amexequities_openbook_ultra_v2_1_k.mpv.size

  -- Calculate field size from count
  local full_price_point_count = buffer(offset + index - 34, 2):le_uint()
  index = index + full_price_point_count * 12

  return index
end

-- Display: Full Update Message
nyse_amexequities_openbook_ultra_v2_1_k.full_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Update Message
nyse_amexequities_openbook_ultra_v2_1_k.full_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Update Size: Binary
  index, update_size = nyse_amexequities_openbook_ultra_v2_1_k.update_size.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_amexequities_openbook_ultra_v2_1_k.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary
  index, source_time_micro_secs = nyse_amexequities_openbook_ultra_v2_1_k.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_openbook_ultra_v2_1_k.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Session Id: Binary
  index, source_session_id = nyse_amexequities_openbook_ultra_v2_1_k.source_session_id.dissect(buffer, index, packet, parent)

  -- Symbol 11: ASCII
  index, symbol_11 = nyse_amexequities_openbook_ultra_v2_1_k.symbol_11.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_amexequities_openbook_ultra_v2_1_k.price_scale_code.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_amexequities_openbook_ultra_v2_1_k.quote_condition.dissect(buffer, index, packet, parent)

  -- Trading Status: ASCII
  index, trading_status = nyse_amexequities_openbook_ultra_v2_1_k.trading_status.dissect(buffer, index, packet, parent)

  -- Filler 1: Binary
  index, filler_1 = nyse_amexequities_openbook_ultra_v2_1_k.filler_1.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_amexequities_openbook_ultra_v2_1_k.mpv.dissect(buffer, index, packet, parent)

  -- Repeating: Full Price Point
  for full_price_point_index = 1, update_size do
    index, full_price_point = nyse_amexequities_openbook_ultra_v2_1_k.full_price_point.dissect(buffer, index, packet, parent, full_price_point_index)
  end

  return index
end

-- Dissect: Full Update Message
nyse_amexequities_openbook_ultra_v2_1_k.full_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.full_update_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.full_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.full_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.full_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Response Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_response_message = {}

-- Size: Symbol Index Mapping Response Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_response_message.size =
  nyse_amexequities_openbook_ultra_v2_1_k.symbol_11.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.filler_1.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.size

-- Display: Symbol Index Mapping Response Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Response Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol 11: ASCII
  index, symbol_11 = nyse_amexequities_openbook_ultra_v2_1_k.symbol_11.dissect(buffer, index, packet, parent)

  -- Filler 1: Binary
  index, filler_1 = nyse_amexequities_openbook_ultra_v2_1_k.filler_1.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Response Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_index_mapping_response_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_request_message.size =
  nyse_amexequities_openbook_ultra_v2_1_k.source_id.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.size

-- Display: Symbol Index Mapping Request Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_openbook_ultra_v2_1_k.source_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.extended_book_refresh_request_message = {}

-- Size: Extended Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.extended_book_refresh_request_message.size =
  nyse_amexequities_openbook_ultra_v2_1_k.source_id.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.msg_type.size

-- Display: Extended Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.extended_book_refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.extended_book_refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_openbook_ultra_v2_1_k.source_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_openbook_ultra_v2_1_k.symbol_index.dissect(buffer, index, packet, parent)

  -- Msg Type: Binary
  index, msg_type = nyse_amexequities_openbook_ultra_v2_1_k.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.extended_book_refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.extended_book_refresh_request_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.extended_book_refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.extended_book_refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.extended_book_refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_amexequities_openbook_ultra_v2_1_k.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_amexequities_openbook_ultra_v2_1_k.heartbeat_response_message.size =
  nyse_amexequities_openbook_ultra_v2_1_k.source_id.size

-- Display: Heartbeat Response Message
nyse_amexequities_openbook_ultra_v2_1_k.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_amexequities_openbook_ultra_v2_1_k.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_openbook_ultra_v2_1_k.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_amexequities_openbook_ultra_v2_1_k.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.book_refresh_request_message = {}

-- Size: Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.book_refresh_request_message.size =
  nyse_amexequities_openbook_ultra_v2_1_k.symbol_16.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.source_id.size

-- Display: Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.book_refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.book_refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol 16: ASCII
  index, symbol_16 = nyse_amexequities_openbook_ultra_v2_1_k.symbol_16.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_openbook_ultra_v2_1_k.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Refresh Request Message
nyse_amexequities_openbook_ultra_v2_1_k.book_refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.book_refresh_request_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.book_refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.book_refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.book_refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_amexequities_openbook_ultra_v2_1_k.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_amexequities_openbook_ultra_v2_1_k.retransmission_request_message.size =
  nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.source_id.size

-- Display: Retransmission Request Message
nyse_amexequities_openbook_ultra_v2_1_k.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_amexequities_openbook_ultra_v2_1_k.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_openbook_ultra_v2_1_k.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_amexequities_openbook_ultra_v2_1_k.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_amexequities_openbook_ultra_v2_1_k.request_response_message = {}

-- Size: Request Response Message
nyse_amexequities_openbook_ultra_v2_1_k.request_response_message.size =
  nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.source_id.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.status.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.reject_reason.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.filler_2.size

-- Display: Request Response Message
nyse_amexequities_openbook_ultra_v2_1_k.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_amexequities_openbook_ultra_v2_1_k.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary
  index, source_seq_num = nyse_amexequities_openbook_ultra_v2_1_k.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_openbook_ultra_v2_1_k.source_id.dissect(buffer, index, packet, parent)

  -- Status: Character
  index, status = nyse_amexequities_openbook_ultra_v2_1_k.status.dissect(buffer, index, packet, parent)

  -- Reject Reason: Character
  index, reject_reason = nyse_amexequities_openbook_ultra_v2_1_k.reject_reason.dissect(buffer, index, packet, parent)

  -- Filler 2: ASCII
  index, filler_2 = nyse_amexequities_openbook_ultra_v2_1_k.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_amexequities_openbook_ultra_v2_1_k.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.request_response_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Unavailable Message
nyse_amexequities_openbook_ultra_v2_1_k.unavailable_message = {}

-- Size: Unavailable Message
nyse_amexequities_openbook_ultra_v2_1_k.unavailable_message.size =
  nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num.size

-- Display: Unavailable Message
nyse_amexequities_openbook_ultra_v2_1_k.unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unavailable Message
nyse_amexequities_openbook_ultra_v2_1_k.unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexequities_openbook_ultra_v2_1_k.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexequities_openbook_ultra_v2_1_k.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unavailable Message
nyse_amexequities_openbook_ultra_v2_1_k.unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.unavailable_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_amexequities_openbook_ultra_v2_1_k.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_amexequities_openbook_ultra_v2_1_k.sequence_number_reset_message.size =
  nyse_amexequities_openbook_ultra_v2_1_k.next_seq_number.size

-- Display: Sequence Number Reset Message
nyse_amexequities_openbook_ultra_v2_1_k.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_amexequities_openbook_ultra_v2_1_k.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq Number: Binary
  index, next_seq_number = nyse_amexequities_openbook_ultra_v2_1_k.next_seq_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_amexequities_openbook_ultra_v2_1_k.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_amexequities_openbook_ultra_v2_1_k.payload = {}

-- Dissect: Payload
nyse_amexequities_openbook_ultra_v2_1_k.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_amexequities_openbook_ultra_v2_1_k.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 2 then
    return offset
  end
  -- Dissect Unavailable Message
  if message_type == 5 then
    return nyse_amexequities_openbook_ultra_v2_1_k.unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 10 then
    return nyse_amexequities_openbook_ultra_v2_1_k.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Subscription Message
  if message_type == 19 then
    return offset
  end
  -- Dissect Retransmission Request Message
  if message_type == 20 then
    return nyse_amexequities_openbook_ultra_v2_1_k.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Book Refresh Request Message
  if message_type == 22 then
    return nyse_amexequities_openbook_ultra_v2_1_k.book_refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 24 then
    return nyse_amexequities_openbook_ultra_v2_1_k.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Book Refresh Request Message
  if message_type == 27 then
    return nyse_amexequities_openbook_ultra_v2_1_k.extended_book_refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 34 then
    return nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Response Message
  if message_type == 35 then
    return nyse_amexequities_openbook_ultra_v2_1_k.symbol_index_mapping_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Full Update Message
  if message_type == 230 then
    return nyse_amexequities_openbook_ultra_v2_1_k.full_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delta Update Message
  if message_type == 231 then
    return nyse_amexequities_openbook_ultra_v2_1_k.delta_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet Header
nyse_amexequities_openbook_ultra_v2_1_k.packet_header = {}

-- Size: Packet Header
nyse_amexequities_openbook_ultra_v2_1_k.packet_header.size =
  nyse_amexequities_openbook_ultra_v2_1_k.packet_size.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.message_type.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.sequence_number.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.timestamp.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.product_id.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.retransmission_flag.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.message_count.size + 
  nyse_amexequities_openbook_ultra_v2_1_k.link_flag.size

-- Display: Packet Header
nyse_amexequities_openbook_ultra_v2_1_k.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_amexequities_openbook_ultra_v2_1_k.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_amexequities_openbook_ultra_v2_1_k.packet_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = nyse_amexequities_openbook_ultra_v2_1_k.message_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_amexequities_openbook_ultra_v2_1_k.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_amexequities_openbook_ultra_v2_1_k.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, product_id = nyse_amexequities_openbook_ultra_v2_1_k.product_id.dissect(buffer, index, packet, parent)

  -- Retransmission Flag: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, retransmission_flag = nyse_amexequities_openbook_ultra_v2_1_k.retransmission_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_amexequities_openbook_ultra_v2_1_k.message_count.dissect(buffer, index, packet, parent)

  -- Link Flag: 1 Byte Unsigned Fixed Width Integer
  index, link_flag = nyse_amexequities_openbook_ultra_v2_1_k.link_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_amexequities_openbook_ultra_v2_1_k.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k.fields.packet_header, buffer(offset, 0))
    local index = nyse_amexequities_openbook_ultra_v2_1_k.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_ultra_v2_1_k.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_ultra_v2_1_k.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_amexequities_openbook_ultra_v2_1_k.packet = {}

-- Dissect Packet
nyse_amexequities_openbook_ultra_v2_1_k.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index, packet_header = nyse_amexequities_openbook_ultra_v2_1_k.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 14, 2):uint()

  -- Payload: Runtime Type with 13 branches
  index = nyse_amexequities_openbook_ultra_v2_1_k.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_amexequities_openbook_ultra_v2_1_k.init()
end

-- Dissector for Nyse AmexEquities OpenBook Ultra 2.1.k
function omi_nyse_amexequities_openbook_ultra_v2_1_k.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_amexequities_openbook_ultra_v2_1_k.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_amexequities_openbook_ultra_v2_1_k, buffer(), omi_nyse_amexequities_openbook_ultra_v2_1_k.description, "("..buffer:len().." Bytes)")
  return nyse_amexequities_openbook_ultra_v2_1_k.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_amexequities_openbook_ultra_v2_1_k)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Udp packet
nyse_amexequities_openbook_ultra_v2_1_k.packet.requiredsize = function(buffer)

  return true
end

-- Verify Product Id Field
nyse_amexequities_openbook_ultra_v2_1_k.product_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(12, 1):uint()

  if value == 50 then
    return true
  end

  return false
end

-- Dissector Heuristic for Nyse AmexEquities OpenBook Ultra 2.1.k (Udp)
local function omi_nyse_amexequities_openbook_ultra_v2_1_k_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_amexequities_openbook_ultra_v2_1_k.packet.requiredsize(buffer) then return false end

  -- Verify Product Id
  if not nyse_amexequities_openbook_ultra_v2_1_k.product_id.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_amexequities_openbook_ultra_v2_1_k
  omi_nyse_amexequities_openbook_ultra_v2_1_k.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse AmexEquities OpenBook Ultra 2.1.k
omi_nyse_amexequities_openbook_ultra_v2_1_k:register_heuristic("udp", omi_nyse_amexequities_openbook_ultra_v2_1_k_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.1.k
--   Date: Thursday, February 22, 2024
--   Specification: OpenBook_Ultra_Client_Specification.pdf
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
