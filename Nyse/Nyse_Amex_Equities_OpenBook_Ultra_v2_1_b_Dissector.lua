-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Amex Equities OpenBook Ultra 2.1.b Protocol
local omi_nyse_amex_equities_openbook_ultra_v2_1_b = Proto("Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Lua", "Nyse Amex Equities OpenBook Ultra 2.1.b")

-- Protocol table
local nyse_amex_equities_openbook_ultra_v2_1_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Amex Equities OpenBook Ultra 2.1.b Fields
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.chg_qty = ProtoField.new("Chg Qty", "nyse.amex.equities.openbook.ultra.v2.1.b.chgqty", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_price_point = ProtoField.new("Delta Price Point", "nyse.amex.equities.openbook.ultra.v2.1.b.deltapricepoint", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_size = ProtoField.new("Delta Size", "nyse.amex.equities.openbook.ultra.v2.1.b.deltasize", ftypes.INT16)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_update_messages = ProtoField.new("Delta Update Messages", "nyse.amex.equities.openbook.ultra.v2.1.b.deltaupdatemessages", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_price_point = ProtoField.new("Full Price Point", "nyse.amex.equities.openbook.ultra.v2.1.b.fullpricepoint", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_update_messages = ProtoField.new("Full Update Messages", "nyse.amex.equities.openbook.ultra.v2.1.b.fullupdatemessages", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_flag = ProtoField.new("Link Flag", "nyse.amex.equities.openbook.ultra.v2.1.b.linkflag", ftypes.UINT8)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_1 = ProtoField.new("Link Id 1", "nyse.amex.equities.openbook.ultra.v2.1.b.linkid1", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_2 = ProtoField.new("Link Id 2", "nyse.amex.equities.openbook.ultra.v2.1.b.linkid2", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_3 = ProtoField.new("Link Id 3", "nyse.amex.equities.openbook.ultra.v2.1.b.linkid3", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.message_count = ProtoField.new("Message Count", "nyse.amex.equities.openbook.ultra.v2.1.b.messagecount", ftypes.UINT8)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.message_type = ProtoField.new("Message Type", "nyse.amex.equities.openbook.ultra.v2.1.b.messagetype", ftypes.UINT16)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.mpv = ProtoField.new("Mpv", "nyse.amex.equities.openbook.ultra.v2.1.b.mpv", ftypes.INT16)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "nyse.amex.equities.openbook.ultra.v2.1.b.nextsequencenumber", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.num_orders = ProtoField.new("Num Orders", "nyse.amex.equities.openbook.ultra.v2.1.b.numorders", ftypes.INT16)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet = ProtoField.new("Packet", "nyse.amex.equities.openbook.ultra.v2.1.b.packet", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet_header = ProtoField.new("Packet Header", "nyse.amex.equities.openbook.ultra.v2.1.b.packetheader", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet_size = ProtoField.new("Packet Size", "nyse.amex.equities.openbook.ultra.v2.1.b.packetsize", ftypes.UINT16)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.payload = ProtoField.new("Payload", "nyse.amex.equities.openbook.ultra.v2.1.b.payload", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.price_numerator = ProtoField.new("Price Numerator", "nyse.amex.equities.openbook.ultra.v2.1.b.pricenumerator", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.amex.equities.openbook.ultra.v2.1.b.pricescalecode", ftypes.INT8)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.product_id = ProtoField.new("Product Id", "nyse.amex.equities.openbook.ultra.v2.1.b.productid", ftypes.UINT8)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.amex.equities.openbook.ultra.v2.1.b.quotecondition", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.reason_code = ProtoField.new("Reason Code", "nyse.amex.equities.openbook.ultra.v2.1.b.reasoncode", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.amex.equities.openbook.ultra.v2.1.b.reserved1", ftypes.BYTES)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.retransmission_flag = ProtoField.new("Retransmission Flag", "nyse.amex.equities.openbook.ultra.v2.1.b.retransmissionflag", ftypes.UINT8)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.amex.equities.openbook.ultra.v2.1.b.sequencenumber", ftypes.UINT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.side = ProtoField.new("Side", "nyse.amex.equities.openbook.ultra.v2.1.b.side", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_seq_num = ProtoField.new("Source Seq Num", "nyse.amex.equities.openbook.ultra.v2.1.b.sourceseqnum", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_session_id = ProtoField.new("Source Session Id", "nyse.amex.equities.openbook.ultra.v2.1.b.sourcesessionid", ftypes.INT8)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_time = ProtoField.new("Source Time", "nyse.amex.equities.openbook.ultra.v2.1.b.sourcetime", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "nyse.amex.equities.openbook.ultra.v2.1.b.sourcetimemicrosecs", ftypes.INT16)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol = ProtoField.new("Symbol", "nyse.amex.equities.openbook.ultra.v2.1.b.symbol", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.amex.equities.openbook.ultra.v2.1.b.symbolindex", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.amex.equities.openbook.ultra.v2.1.b.symbolseqnum", ftypes.INT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.timestamp = ProtoField.new("Timestamp", "nyse.amex.equities.openbook.ultra.v2.1.b.timestamp", ftypes.UINT32)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.trading_status = ProtoField.new("Trading Status", "nyse.amex.equities.openbook.ultra.v2.1.b.tradingstatus", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.update_size = ProtoField.new("Update Size", "nyse.amex.equities.openbook.ultra.v2.1.b.updatesize", ftypes.INT16)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.volume = ProtoField.new("Volume", "nyse.amex.equities.openbook.ultra.v2.1.b.volume", ftypes.INT32)

-- Nyse Amex Equities OpenBook Ultra 2.1.b messages
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_update_message = ProtoField.new("Delta Update Message", "nyse.amex.equities.openbook.ultra.v2.1.b.deltaupdatemessage", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_update_message = ProtoField.new("Full Update Message", "nyse.amex.equities.openbook.ultra.v2.1.b.fullupdatemessage", ftypes.STRING)
omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.amex.equities.openbook.ultra.v2.1.b.sequencenumberresetmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Amex Equities OpenBook Ultra 2.1.b Element Dissection Options
show.delta_price_point = true
show.delta_update_message = true
show.delta_update_messages = true
show.full_price_point = true
show.full_update_message = true
show.full_update_messages = true
show.packet = true
show.packet_header = true
show.sequence_number_reset_message = true
show.payload = false

-- Register Nyse Amex Equities OpenBook Ultra 2.1.b Show Options
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_price_point = Pref.bool("Show Delta Price Point", show.delta_price_point, "Parse and add Delta Price Point to protocol tree")
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_message = Pref.bool("Show Delta Update Message", show.delta_update_message, "Parse and add Delta Update Message to protocol tree")
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_messages = Pref.bool("Show Delta Update Messages", show.delta_update_messages, "Parse and add Delta Update Messages to protocol tree")
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_price_point = Pref.bool("Show Full Price Point", show.full_price_point, "Parse and add Full Price Point to protocol tree")
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_message = Pref.bool("Show Full Update Message", show.full_update_message, "Parse and add Full Update Message to protocol tree")
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_messages = Pref.bool("Show Full Update Messages", show.full_update_messages, "Parse and add Full Update Messages to protocol tree")
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.delta_price_point ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_price_point then
    show.delta_price_point = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_price_point
    changed = true
  end
  if show.delta_update_message ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_message then
    show.delta_update_message = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_message
    changed = true
  end
  if show.delta_update_messages ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_messages then
    show.delta_update_messages = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_messages
    changed = true
  end
  if show.full_price_point ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_price_point then
    show.full_price_point = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_price_point
    changed = true
  end
  if show.full_update_message ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_message then
    show.full_update_message = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_message
    changed = true
  end
  if show.full_update_messages ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_messages then
    show.full_update_messages = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_messages
    changed = true
  end
  if show.packet ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet then
    show.packet = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet_header then
    show.packet_header = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet_header
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.payload ~= omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_payload then
    show.payload = omi_nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Amex Equities OpenBook Ultra 2.1.b
-----------------------------------------------------------------------

-- Next Sequence Number
nyse_amex_equities_openbook_ultra_v2_1_b.next_sequence_number = {}

-- Size Of: Next Sequence Number
nyse_amex_equities_openbook_ultra_v2_1_b.next_sequence_number.size = 4

-- Display: Next Sequence Number
nyse_amex_equities_openbook_ultra_v2_1_b.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
nyse_amex_equities_openbook_ultra_v2_1_b.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Sequence Number Reset Message
nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message = {}

-- Size Of: Sequence Number Reset Message
nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message.size =
  nyse_amex_equities_openbook_ultra_v2_1_b.next_sequence_number.size;

-- Display: Sequence Number Reset Message
nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 4 Byte Signed Fixed Width Integer
  index, next_sequence_number = nyse_amex_equities_openbook_ultra_v2_1_b.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Link Id 3
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_3 = {}

-- Size Of: Link Id 3
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_3.size = 4

-- Display: Link Id 3
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_3.display = function(value)
  return "Link Id 3: "..value
end

-- Dissect: Link Id 3
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.link_id_3.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.link_id_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_3, range, value, display)

  return offset + length, value
end

-- Link Id 2
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_2 = {}

-- Size Of: Link Id 2
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_2.size = 4

-- Display: Link Id 2
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_2.display = function(value)
  return "Link Id 2: "..value
end

-- Dissect: Link Id 2
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.link_id_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.link_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_2, range, value, display)

  return offset + length, value
end

-- Link Id 1
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_1 = {}

-- Size Of: Link Id 1
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_1.size = 4

-- Display: Link Id 1
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_1.display = function(value)
  return "Link Id 1: "..value
end

-- Dissect: Link Id 1
nyse_amex_equities_openbook_ultra_v2_1_b.link_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.link_id_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.link_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_1, range, value, display)

  return offset + length, value
end

-- Reason Code
nyse_amex_equities_openbook_ultra_v2_1_b.reason_code = {}

-- Size Of: Reason Code
nyse_amex_equities_openbook_ultra_v2_1_b.reason_code.size = 1

-- Display: Reason Code
nyse_amex_equities_openbook_ultra_v2_1_b.reason_code.display = function(value)
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
nyse_amex_equities_openbook_ultra_v2_1_b.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Side
nyse_amex_equities_openbook_ultra_v2_1_b.side = {}

-- Size Of: Side
nyse_amex_equities_openbook_ultra_v2_1_b.side.size = 1

-- Display: Side
nyse_amex_equities_openbook_ultra_v2_1_b.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_amex_equities_openbook_ultra_v2_1_b.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.side, range, value, display)

  return offset + length, value
end

-- Num Orders
nyse_amex_equities_openbook_ultra_v2_1_b.num_orders = {}

-- Size Of: Num Orders
nyse_amex_equities_openbook_ultra_v2_1_b.num_orders.size = 2

-- Display: Num Orders
nyse_amex_equities_openbook_ultra_v2_1_b.num_orders.display = function(value)
  return "Num Orders: "..value
end

-- Dissect: Num Orders
nyse_amex_equities_openbook_ultra_v2_1_b.num_orders.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.num_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.num_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.num_orders, range, value, display)

  return offset + length, value
end

-- Chg Qty
nyse_amex_equities_openbook_ultra_v2_1_b.chg_qty = {}

-- Size Of: Chg Qty
nyse_amex_equities_openbook_ultra_v2_1_b.chg_qty.size = 4

-- Display: Chg Qty
nyse_amex_equities_openbook_ultra_v2_1_b.chg_qty.display = function(value)
  return "Chg Qty: "..value
end

-- Dissect: Chg Qty
nyse_amex_equities_openbook_ultra_v2_1_b.chg_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.chg_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.chg_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.chg_qty, range, value, display)

  return offset + length, value
end

-- Volume
nyse_amex_equities_openbook_ultra_v2_1_b.volume = {}

-- Size Of: Volume
nyse_amex_equities_openbook_ultra_v2_1_b.volume.size = 4

-- Display: Volume
nyse_amex_equities_openbook_ultra_v2_1_b.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_amex_equities_openbook_ultra_v2_1_b.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.volume, range, value, display)

  return offset + length, value
end

-- Price Numerator
nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator = {}

-- Size Of: Price Numerator
nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator.size = 4

-- Display: Price Numerator
nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator.display = function(value)
  return "Price Numerator: "..value
end

-- Dissect: Price Numerator
nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.price_numerator, range, value, display)

  return offset + length, value
end

-- Delta Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.delta_price_point = {}

-- Size Of: Delta Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.delta_price_point.size =
  nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.volume.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.chg_qty.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.num_orders.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.side.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.reason_code.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.link_id_1.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.link_id_2.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.link_id_3.size;

-- Display: Delta Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.delta_price_point.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.delta_price_point.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Numerator: 4 Byte Signed Fixed Width Integer
  index, price_numerator = nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Signed Fixed Width Integer
  index, volume = nyse_amex_equities_openbook_ultra_v2_1_b.volume.dissect(buffer, index, packet, parent)

  -- Chg Qty: 4 Byte Signed Fixed Width Integer
  index, chg_qty = nyse_amex_equities_openbook_ultra_v2_1_b.chg_qty.dissect(buffer, index, packet, parent)

  -- Num Orders: 2 Byte Signed Fixed Width Integer
  index, num_orders = nyse_amex_equities_openbook_ultra_v2_1_b.num_orders.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_amex_equities_openbook_ultra_v2_1_b.side.dissect(buffer, index, packet, parent)

  -- Reason Code: 1 Byte Ascii String Enum with 4 values
  index, reason_code = nyse_amex_equities_openbook_ultra_v2_1_b.reason_code.dissect(buffer, index, packet, parent)

  -- Link Id 1: 4 Byte Signed Fixed Width Integer
  index, link_id_1 = nyse_amex_equities_openbook_ultra_v2_1_b.link_id_1.dissect(buffer, index, packet, parent)

  -- Link Id 2: 4 Byte Signed Fixed Width Integer
  index, link_id_2 = nyse_amex_equities_openbook_ultra_v2_1_b.link_id_2.dissect(buffer, index, packet, parent)

  -- Link Id 3: 4 Byte Signed Fixed Width Integer
  index, link_id_3 = nyse_amex_equities_openbook_ultra_v2_1_b.link_id_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delta Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.delta_price_point.dissect = function(buffer, offset, packet, parent)
  if show.delta_price_point then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_price_point, buffer(offset, 0))
    local index = nyse_amex_equities_openbook_ultra_v2_1_b.delta_price_point.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_equities_openbook_ultra_v2_1_b.delta_price_point.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_equities_openbook_ultra_v2_1_b.delta_price_point.fields(buffer, offset, packet, parent)
  end
end

-- Price Scale Code
nyse_amex_equities_openbook_ultra_v2_1_b.price_scale_code = {}

-- Size Of: Price Scale Code
nyse_amex_equities_openbook_ultra_v2_1_b.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_amex_equities_openbook_ultra_v2_1_b.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_amex_equities_openbook_ultra_v2_1_b.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Trading Status
nyse_amex_equities_openbook_ultra_v2_1_b.trading_status = {}

-- Size Of: Trading Status
nyse_amex_equities_openbook_ultra_v2_1_b.trading_status.size = 1

-- Display: Trading Status
nyse_amex_equities_openbook_ultra_v2_1_b.trading_status.display = function(value)
  if value == "P" then
    return "Trading Status: Pre Opening (P)"
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
  if value == "X" then
    return "Trading Status: Closed (X)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
nyse_amex_equities_openbook_ultra_v2_1_b.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_amex_equities_openbook_ultra_v2_1_b.quote_condition = {}

-- Size Of: Quote Condition
nyse_amex_equities_openbook_ultra_v2_1_b.quote_condition.size = 1

-- Display: Quote Condition
nyse_amex_equities_openbook_ultra_v2_1_b.quote_condition.display = function(value)
  if value == " " then
    return "Quote Condition: No Special Quote Condition (<whitespace>)"
  end
  if value == "W" then
    return "Quote Condition: Slow Quote (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_amex_equities_openbook_ultra_v2_1_b.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Source Session Id
nyse_amex_equities_openbook_ultra_v2_1_b.source_session_id = {}

-- Size Of: Source Session Id
nyse_amex_equities_openbook_ultra_v2_1_b.source_session_id.size = 1

-- Display: Source Session Id
nyse_amex_equities_openbook_ultra_v2_1_b.source_session_id.display = function(value)
  return "Source Session Id: "..value
end

-- Dissect: Source Session Id
nyse_amex_equities_openbook_ultra_v2_1_b.source_session_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.source_session_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.source_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_session_id, range, value, display)

  return offset + length, value
end

-- Source Seq Num
nyse_amex_equities_openbook_ultra_v2_1_b.source_seq_num = {}

-- Size Of: Source Seq Num
nyse_amex_equities_openbook_ultra_v2_1_b.source_seq_num.size = 4

-- Display: Source Seq Num
nyse_amex_equities_openbook_ultra_v2_1_b.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
nyse_amex_equities_openbook_ultra_v2_1_b.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
nyse_amex_equities_openbook_ultra_v2_1_b.source_time_micro_secs = {}

-- Size Of: Source Time Micro Secs
nyse_amex_equities_openbook_ultra_v2_1_b.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
nyse_amex_equities_openbook_ultra_v2_1_b.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
nyse_amex_equities_openbook_ultra_v2_1_b.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_amex_equities_openbook_ultra_v2_1_b.source_time = {}

-- Size Of: Source Time
nyse_amex_equities_openbook_ultra_v2_1_b.source_time.size = 4

-- Display: Source Time
nyse_amex_equities_openbook_ultra_v2_1_b.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_amex_equities_openbook_ultra_v2_1_b.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.source_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_time, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_amex_equities_openbook_ultra_v2_1_b.symbol_index = {}

-- Size Of: Symbol Index
nyse_amex_equities_openbook_ultra_v2_1_b.symbol_index.size = 4

-- Display: Symbol Index
nyse_amex_equities_openbook_ultra_v2_1_b.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_amex_equities_openbook_ultra_v2_1_b.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.symbol_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Delta Size
nyse_amex_equities_openbook_ultra_v2_1_b.delta_size = {}

-- Size Of: Delta Size
nyse_amex_equities_openbook_ultra_v2_1_b.delta_size.size = 2

-- Display: Delta Size
nyse_amex_equities_openbook_ultra_v2_1_b.delta_size.display = function(value)
  return "Delta Size: "..value
end

-- Dissect: Delta Size
nyse_amex_equities_openbook_ultra_v2_1_b.delta_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.delta_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.delta_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_size, range, value, display)

  return offset + length, value
end

-- Delta Update Message
nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_message = {}

-- Display: Delta Update Message
nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Update Message
nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_message.fields = function(buffer, offset, packet, parent, size_of_delta_update_message)
  local index = offset

  -- Delta Size: 2 Byte Signed Fixed Width Integer
  index, delta_size = nyse_amex_equities_openbook_ultra_v2_1_b.delta_size.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Signed Fixed Width Integer
  index, symbol_index = nyse_amex_equities_openbook_ultra_v2_1_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: 4 Byte Signed Fixed Width Integer
  index, source_time = nyse_amex_equities_openbook_ultra_v2_1_b.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: 2 Byte Signed Fixed Width Integer
  index, source_time_micro_secs = nyse_amex_equities_openbook_ultra_v2_1_b.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Source Seq Num: 4 Byte Signed Fixed Width Integer
  index, source_seq_num = nyse_amex_equities_openbook_ultra_v2_1_b.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Session Id: 1 Byte Signed Fixed Width Integer
  index, source_session_id = nyse_amex_equities_openbook_ultra_v2_1_b.source_session_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nyse_amex_equities_openbook_ultra_v2_1_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 6 values
  index, trading_status = nyse_amex_equities_openbook_ultra_v2_1_b.trading_status.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Signed Fixed Width Integer
  index, price_scale_code = nyse_amex_equities_openbook_ultra_v2_1_b.price_scale_code.dissect(buffer, index, packet, parent)

  -- Dependency for Delta Price Point
  local end_of_payload = offset + delta_size - (index - offset)

  -- Delta Price Point: Struct of 9 fields
  while index < end_of_payload do
    index, delta_price_point = nyse_amex_equities_openbook_ultra_v2_1_b.delta_price_point.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delta Update Message
nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_message.dissect = function(buffer, offset, packet, parent, size_of_delta_update_message)
  local index = offset + size_of_delta_update_message

  -- Optionally add group/struct element to protocol tree
  if show.delta_update_message then
    parent = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_update_message, buffer(offset, 0))
    local current = nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_message.fields(buffer, offset, packet, parent, size_of_delta_update_message)
    parent:set_len(size_of_delta_update_message)
    local display = nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_message.fields(buffer, offset, packet, parent, size_of_delta_update_message)

    return index
  end
end

-- Delta Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages = {}

-- Size Of: Delta Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages.size = function(buffer, offset)
  return buffer:len() - offset
end

-- Display: Delta Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency for Delta Update Message
  local end_of_payload = buffer:len()

  -- Delta Update Message: Struct of 10 fields
  while index < end_of_payload do

    -- Dependency element: Delta Size
    local delta_size = buffer(index, 2):int()

    -- Runtime Size Of: Delta Update Message
    index, delta_update_message = nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_message.dissect(buffer, index, packet, parent, delta_size)
  end

  return index
end

-- Dissect: Delta Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.delta_update_messages then
    local length = nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_update_messages, range, display)
  end

  return nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages.fields(buffer, offset, packet, parent)
end

-- Reserved 1
nyse_amex_equities_openbook_ultra_v2_1_b.reserved_1 = {}

-- Size Of: Reserved 1
nyse_amex_equities_openbook_ultra_v2_1_b.reserved_1.size = 1

-- Display: Reserved 1
nyse_amex_equities_openbook_ultra_v2_1_b.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_amex_equities_openbook_ultra_v2_1_b.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Full Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.full_price_point = {}

-- Size Of: Full Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.full_price_point.size =
  nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.volume.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.num_orders.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.side.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.reserved_1.size;

-- Display: Full Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.full_price_point.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.full_price_point.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Numerator: 4 Byte Signed Fixed Width Integer
  index, price_numerator = nyse_amex_equities_openbook_ultra_v2_1_b.price_numerator.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Signed Fixed Width Integer
  index, volume = nyse_amex_equities_openbook_ultra_v2_1_b.volume.dissect(buffer, index, packet, parent)

  -- Num Orders: 2 Byte Signed Fixed Width Integer
  index, num_orders = nyse_amex_equities_openbook_ultra_v2_1_b.num_orders.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_amex_equities_openbook_ultra_v2_1_b.side.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_amex_equities_openbook_ultra_v2_1_b.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Price Point
nyse_amex_equities_openbook_ultra_v2_1_b.full_price_point.dissect = function(buffer, offset, packet, parent)
  if show.full_price_point then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_price_point, buffer(offset, 0))
    local index = nyse_amex_equities_openbook_ultra_v2_1_b.full_price_point.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_equities_openbook_ultra_v2_1_b.full_price_point.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_equities_openbook_ultra_v2_1_b.full_price_point.fields(buffer, offset, packet, parent)
  end
end

-- Mpv
nyse_amex_equities_openbook_ultra_v2_1_b.mpv = {}

-- Size Of: Mpv
nyse_amex_equities_openbook_ultra_v2_1_b.mpv.size = 2

-- Display: Mpv
nyse_amex_equities_openbook_ultra_v2_1_b.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_amex_equities_openbook_ultra_v2_1_b.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.mpv.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.mpv, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_amex_equities_openbook_ultra_v2_1_b.symbol = {}

-- Size Of: Symbol
nyse_amex_equities_openbook_ultra_v2_1_b.symbol.size = 11

-- Display: Symbol
nyse_amex_equities_openbook_ultra_v2_1_b.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_amex_equities_openbook_ultra_v2_1_b.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_amex_equities_openbook_ultra_v2_1_b.symbol_seq_num = {}

-- Size Of: Symbol Seq Num
nyse_amex_equities_openbook_ultra_v2_1_b.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_amex_equities_openbook_ultra_v2_1_b.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_amex_equities_openbook_ultra_v2_1_b.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Update Size
nyse_amex_equities_openbook_ultra_v2_1_b.update_size = {}

-- Size Of: Update Size
nyse_amex_equities_openbook_ultra_v2_1_b.update_size.size = 2

-- Display: Update Size
nyse_amex_equities_openbook_ultra_v2_1_b.update_size.display = function(value)
  return "Update Size: "..value
end

-- Dissect: Update Size
nyse_amex_equities_openbook_ultra_v2_1_b.update_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.update_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.update_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.update_size, range, value, display)

  return offset + length, value
end

-- Full Update Message
nyse_amex_equities_openbook_ultra_v2_1_b.full_update_message = {}

-- Display: Full Update Message
nyse_amex_equities_openbook_ultra_v2_1_b.full_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Update Message
nyse_amex_equities_openbook_ultra_v2_1_b.full_update_message.fields = function(buffer, offset, packet, parent, size_of_full_update_message)
  local index = offset

  -- Update Size: 2 Byte Signed Fixed Width Integer
  index, update_size = nyse_amex_equities_openbook_ultra_v2_1_b.update_size.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Signed Fixed Width Integer
  index, symbol_index = nyse_amex_equities_openbook_ultra_v2_1_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: 4 Byte Signed Fixed Width Integer
  index, source_time = nyse_amex_equities_openbook_ultra_v2_1_b.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: 2 Byte Signed Fixed Width Integer
  index, source_time_micro_secs = nyse_amex_equities_openbook_ultra_v2_1_b.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Signed Fixed Width Integer
  index, symbol_seq_num = nyse_amex_equities_openbook_ultra_v2_1_b.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Session Id: 1 Byte Signed Fixed Width Integer
  index, source_session_id = nyse_amex_equities_openbook_ultra_v2_1_b.source_session_id.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_amex_equities_openbook_ultra_v2_1_b.symbol.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Signed Fixed Width Integer
  index, price_scale_code = nyse_amex_equities_openbook_ultra_v2_1_b.price_scale_code.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nyse_amex_equities_openbook_ultra_v2_1_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 6 values
  index, trading_status = nyse_amex_equities_openbook_ultra_v2_1_b.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_amex_equities_openbook_ultra_v2_1_b.reserved_1.dissect(buffer, index, packet, parent)

  -- Mpv: 2 Byte Signed Fixed Width Integer
  index, mpv = nyse_amex_equities_openbook_ultra_v2_1_b.mpv.dissect(buffer, index, packet, parent)

  -- Dependency for Full Price Point
  local end_of_payload = offset + update_size - (index - offset)

  -- Full Price Point: Struct of 5 fields
  while index < end_of_payload do
    index, full_price_point = nyse_amex_equities_openbook_ultra_v2_1_b.full_price_point.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Full Update Message
nyse_amex_equities_openbook_ultra_v2_1_b.full_update_message.dissect = function(buffer, offset, packet, parent, size_of_full_update_message)
  local index = offset + size_of_full_update_message

  -- Optionally add group/struct element to protocol tree
  if show.full_update_message then
    parent = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_update_message, buffer(offset, 0))
    local current = nyse_amex_equities_openbook_ultra_v2_1_b.full_update_message.fields(buffer, offset, packet, parent, size_of_full_update_message)
    parent:set_len(size_of_full_update_message)
    local display = nyse_amex_equities_openbook_ultra_v2_1_b.full_update_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_amex_equities_openbook_ultra_v2_1_b.full_update_message.fields(buffer, offset, packet, parent, size_of_full_update_message)

    return index
  end
end

-- Full Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages = {}

-- Size Of: Full Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages.size = function(buffer, offset)
  return buffer:len() - offset
end

-- Display: Full Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency for Full Update Message
  local end_of_payload = buffer:len()

  -- Full Update Message: Struct of 13 fields
  while index < end_of_payload do

    -- Dependency element: Update Size
    local update_size = buffer(index, 2):int()

    -- Runtime Size Of: Full Update Message
    index, full_update_message = nyse_amex_equities_openbook_ultra_v2_1_b.full_update_message.dissect(buffer, index, packet, parent, update_size)
  end

  return index
end

-- Dissect: Full Update Messages
nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.full_update_messages then
    local length = nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_update_messages, range, display)
  end

  return nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages.fields(buffer, offset, packet, parent)
end

-- Payload
nyse_amex_equities_openbook_ultra_v2_1_b.payload = {}

-- Calculate runtime size of: Payload
nyse_amex_equities_openbook_ultra_v2_1_b.payload.size = function(buffer, offset, message_type)
  -- Size of Full Update Messages
  if message_type == 230 then
    return nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages.size(buffer, offset)
  end
  -- Size of Delta Update Messages
  if message_type == 231 then
    return nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages.size(buffer, offset)
  end
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message.size(buffer, offset)
  end
  -- Size of Heartbeat Message
  if message_type == 2 then
    return 0
  end

  return 0
end

-- Display: Payload
nyse_amex_equities_openbook_ultra_v2_1_b.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_amex_equities_openbook_ultra_v2_1_b.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Full Update Messages
  if message_type == 230 then
    return nyse_amex_equities_openbook_ultra_v2_1_b.full_update_messages.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delta Update Messages
  if message_type == 231 then
    return nyse_amex_equities_openbook_ultra_v2_1_b.delta_update_messages.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 2 then
  end

  return offset
end

-- Dissect: Payload
nyse_amex_equities_openbook_ultra_v2_1_b.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_amex_equities_openbook_ultra_v2_1_b.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_amex_equities_openbook_ultra_v2_1_b.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.payload, range, display)

  return nyse_amex_equities_openbook_ultra_v2_1_b.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Link Flag
nyse_amex_equities_openbook_ultra_v2_1_b.link_flag = {}

-- Size Of: Link Flag
nyse_amex_equities_openbook_ultra_v2_1_b.link_flag.size = 1

-- Display: Link Flag
nyse_amex_equities_openbook_ultra_v2_1_b.link_flag.display = function(value)
  return "Link Flag: "..value
end

-- Dissect: Link Flag
nyse_amex_equities_openbook_ultra_v2_1_b.link_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.link_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.link_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_flag, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_amex_equities_openbook_ultra_v2_1_b.message_count = {}

-- Size Of: Message Count
nyse_amex_equities_openbook_ultra_v2_1_b.message_count.size = 1

-- Display: Message Count
nyse_amex_equities_openbook_ultra_v2_1_b.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_amex_equities_openbook_ultra_v2_1_b.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.message_count, range, value, display)

  return offset + length, value
end

-- Retransmission Flag
nyse_amex_equities_openbook_ultra_v2_1_b.retransmission_flag = {}

-- Size Of: Retransmission Flag
nyse_amex_equities_openbook_ultra_v2_1_b.retransmission_flag.size = 1

-- Display: Retransmission Flag
nyse_amex_equities_openbook_ultra_v2_1_b.retransmission_flag.display = function(value)
  return "Retransmission Flag: "..value
end

-- Dissect: Retransmission Flag
nyse_amex_equities_openbook_ultra_v2_1_b.retransmission_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.retransmission_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.retransmission_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.retransmission_flag, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_amex_equities_openbook_ultra_v2_1_b.product_id = {}

-- Size Of: Product Id
nyse_amex_equities_openbook_ultra_v2_1_b.product_id.size = 1

-- Display: Product Id
nyse_amex_equities_openbook_ultra_v2_1_b.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_amex_equities_openbook_ultra_v2_1_b.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.product_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.product_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_amex_equities_openbook_ultra_v2_1_b.timestamp = {}

-- Size Of: Timestamp
nyse_amex_equities_openbook_ultra_v2_1_b.timestamp.size = 4

-- Display: Timestamp
nyse_amex_equities_openbook_ultra_v2_1_b.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_amex_equities_openbook_ultra_v2_1_b.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number = {}

-- Size Of: Sequence Number
nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number.size = 4

-- Display: Sequence Number
nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_amex_equities_openbook_ultra_v2_1_b.message_type = {}

-- Size Of: Message Type
nyse_amex_equities_openbook_ultra_v2_1_b.message_type.size = 2

-- Display: Message Type
nyse_amex_equities_openbook_ultra_v2_1_b.message_type.display = function(value)
  if value == 230 then
    return "Message Type: Full Update Message (230)"
  end
  if value == 231 then
    return "Message Type: Delta Update Message (231)"
  end
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Heartbeat Message (2)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_amex_equities_openbook_ultra_v2_1_b.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_amex_equities_openbook_ultra_v2_1_b.packet_size = {}

-- Size Of: Packet Size
nyse_amex_equities_openbook_ultra_v2_1_b.packet_size.size = 2

-- Display: Packet Size
nyse_amex_equities_openbook_ultra_v2_1_b.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_amex_equities_openbook_ultra_v2_1_b.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_equities_openbook_ultra_v2_1_b.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_equities_openbook_ultra_v2_1_b.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_amex_equities_openbook_ultra_v2_1_b.packet_header = {}

-- Size Of: Packet Header
nyse_amex_equities_openbook_ultra_v2_1_b.packet_header.size =
  nyse_amex_equities_openbook_ultra_v2_1_b.packet_size.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.message_type.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.timestamp.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.product_id.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.retransmission_flag.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.message_count.size + 
  nyse_amex_equities_openbook_ultra_v2_1_b.link_flag.size;

-- Display: Packet Header
nyse_amex_equities_openbook_ultra_v2_1_b.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_amex_equities_openbook_ultra_v2_1_b.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_amex_equities_openbook_ultra_v2_1_b.packet_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_type = nyse_amex_equities_openbook_ultra_v2_1_b.message_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_amex_equities_openbook_ultra_v2_1_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_amex_equities_openbook_ultra_v2_1_b.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer Static
  index, product_id = nyse_amex_equities_openbook_ultra_v2_1_b.product_id.dissect(buffer, index, packet, parent)

  -- Retransmission Flag: 1 Byte Unsigned Fixed Width Integer
  index, retransmission_flag = nyse_amex_equities_openbook_ultra_v2_1_b.retransmission_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_amex_equities_openbook_ultra_v2_1_b.message_count.dissect(buffer, index, packet, parent)

  -- Link Flag: 1 Byte Unsigned Fixed Width Integer
  index, link_flag = nyse_amex_equities_openbook_ultra_v2_1_b.link_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_amex_equities_openbook_ultra_v2_1_b.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet_header, buffer(offset, 0))
    local index = nyse_amex_equities_openbook_ultra_v2_1_b.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_equities_openbook_ultra_v2_1_b.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_equities_openbook_ultra_v2_1_b.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_amex_equities_openbook_ultra_v2_1_b.packet = {}

-- Dissect Packet
nyse_amex_equities_openbook_ultra_v2_1_b.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index, packet_header = nyse_amex_equities_openbook_ultra_v2_1_b.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 14, 2):uint()

  -- Payload: Runtime Type with 4 branches
  index = nyse_amex_equities_openbook_ultra_v2_1_b.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_amex_equities_openbook_ultra_v2_1_b.init()
end

-- Dissector for Nyse Amex Equities OpenBook Ultra 2.1.b
function omi_nyse_amex_equities_openbook_ultra_v2_1_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_amex_equities_openbook_ultra_v2_1_b.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_amex_equities_openbook_ultra_v2_1_b, buffer(), omi_nyse_amex_equities_openbook_ultra_v2_1_b.description, "("..buffer:len().." Bytes)")
  return nyse_amex_equities_openbook_ultra_v2_1_b.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_amex_equities_openbook_ultra_v2_1_b)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_amex_equities_openbook_ultra_v2_1_b.packet.requiredsize = function(buffer)

  return true
end

-- Verify Product Id Field
nyse_amex_equities_openbook_ultra_v2_1_b.product_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(12, 1):uint()

  if value == 62 then
    return true
  end

  return false
end

-- Dissector Heuristic for Nyse Amex Equities OpenBook Ultra 2.1.b
local function omi_nyse_amex_equities_openbook_ultra_v2_1_b_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_amex_equities_openbook_ultra_v2_1_b.packet.requiredsize(buffer) then return false end

  -- Verify Product Id
  if not nyse_amex_equities_openbook_ultra_v2_1_b.product_id.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_amex_equities_openbook_ultra_v2_1_b
  omi_nyse_amex_equities_openbook_ultra_v2_1_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Amex Equities OpenBook Ultra 2.1.b
omi_nyse_amex_equities_openbook_ultra_v2_1_b:register_heuristic("udp", omi_nyse_amex_equities_openbook_ultra_v2_1_b_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
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
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
