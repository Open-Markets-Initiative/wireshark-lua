-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Amex Equities OpenBook Ultra 2.1.b Protocol
local nyse_amex_equities_openbook_ultra_v2_1_b = Proto("Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.Lua", "Nyse Amex Equities OpenBook Ultra 2.1.b")

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

-- Nyse Amex Equities OpenBook Ultra 2.1.b Fields
nyse_amex_equities_openbook_ultra_v2_1_b.fields.chg_qty = ProtoField.new("Chg Qty", "nyse.amex.equities.openbook.ultra.v2.1.b.chgqty", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_price_point = ProtoField.new("Delta Price Point", "nyse.amex.equities.openbook.ultra.v2.1.b.deltapricepoint", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_size = ProtoField.new("Delta Size", "nyse.amex.equities.openbook.ultra.v2.1.b.deltasize", ftypes.INT16)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_update_message = ProtoField.new("Delta Update Message", "nyse.amex.equities.openbook.ultra.v2.1.b.deltaupdatemessage", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_update_messages = ProtoField.new("Delta Update Messages", "nyse.amex.equities.openbook.ultra.v2.1.b.deltaupdatemessages", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_price_point = ProtoField.new("Full Price Point", "nyse.amex.equities.openbook.ultra.v2.1.b.fullpricepoint", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_update_message = ProtoField.new("Full Update Message", "nyse.amex.equities.openbook.ultra.v2.1.b.fullupdatemessage", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_update_messages = ProtoField.new("Full Update Messages", "nyse.amex.equities.openbook.ultra.v2.1.b.fullupdatemessages", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_flag = ProtoField.new("Link Flag", "nyse.amex.equities.openbook.ultra.v2.1.b.linkflag", ftypes.UINT8)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_1 = ProtoField.new("Link Id 1", "nyse.amex.equities.openbook.ultra.v2.1.b.linkid1", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_2 = ProtoField.new("Link Id 2", "nyse.amex.equities.openbook.ultra.v2.1.b.linkid2", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_3 = ProtoField.new("Link Id 3", "nyse.amex.equities.openbook.ultra.v2.1.b.linkid3", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.message_count = ProtoField.new("Message Count", "nyse.amex.equities.openbook.ultra.v2.1.b.messagecount", ftypes.UINT8)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.message_type = ProtoField.new("Message Type", "nyse.amex.equities.openbook.ultra.v2.1.b.messagetype", ftypes.UINT16)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.mpv = ProtoField.new("Mpv", "nyse.amex.equities.openbook.ultra.v2.1.b.mpv", ftypes.INT16)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "nyse.amex.equities.openbook.ultra.v2.1.b.nextsequencenumber", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.num_orders = ProtoField.new("Num Orders", "nyse.amex.equities.openbook.ultra.v2.1.b.numorders", ftypes.INT16)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet = ProtoField.new("Packet", "nyse.amex.equities.openbook.ultra.v2.1.b.packet", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet_header = ProtoField.new("Packet Header", "nyse.amex.equities.openbook.ultra.v2.1.b.packetheader", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet_size = ProtoField.new("Packet Size", "nyse.amex.equities.openbook.ultra.v2.1.b.packetsize", ftypes.UINT16)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.payload = ProtoField.new("Payload", "nyse.amex.equities.openbook.ultra.v2.1.b.payload", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.price_numerator = ProtoField.new("Price Numerator", "nyse.amex.equities.openbook.ultra.v2.1.b.pricenumerator", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.amex.equities.openbook.ultra.v2.1.b.pricescalecode", ftypes.INT8)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.product_id = ProtoField.new("Product Id", "nyse.amex.equities.openbook.ultra.v2.1.b.productid", ftypes.UINT8)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.amex.equities.openbook.ultra.v2.1.b.quotecondition", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.reason_code = ProtoField.new("Reason Code", "nyse.amex.equities.openbook.ultra.v2.1.b.reasoncode", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.amex.equities.openbook.ultra.v2.1.b.reserved1", ftypes.BYTES)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.retransmission_flag = ProtoField.new("Retransmission Flag", "nyse.amex.equities.openbook.ultra.v2.1.b.retransmissionflag", ftypes.UINT8)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.amex.equities.openbook.ultra.v2.1.b.sequencenumber", ftypes.UINT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.amex.equities.openbook.ultra.v2.1.b.sequencenumberresetmessage", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.side = ProtoField.new("Side", "nyse.amex.equities.openbook.ultra.v2.1.b.side", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_seq_num = ProtoField.new("Source Seq Num", "nyse.amex.equities.openbook.ultra.v2.1.b.sourceseqnum", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_session_id = ProtoField.new("Source Session Id", "nyse.amex.equities.openbook.ultra.v2.1.b.sourcesessionid", ftypes.INT8)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_time = ProtoField.new("Source Time", "nyse.amex.equities.openbook.ultra.v2.1.b.sourcetime", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "nyse.amex.equities.openbook.ultra.v2.1.b.sourcetimemicrosecs", ftypes.INT16)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol = ProtoField.new("Symbol", "nyse.amex.equities.openbook.ultra.v2.1.b.symbol", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.amex.equities.openbook.ultra.v2.1.b.symbolindex", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.amex.equities.openbook.ultra.v2.1.b.symbolseqnum", ftypes.INT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.timestamp = ProtoField.new("Timestamp", "nyse.amex.equities.openbook.ultra.v2.1.b.timestamp", ftypes.UINT32)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.trading_status = ProtoField.new("Trading Status", "nyse.amex.equities.openbook.ultra.v2.1.b.tradingstatus", ftypes.STRING)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.update_size = ProtoField.new("Update Size", "nyse.amex.equities.openbook.ultra.v2.1.b.updatesize", ftypes.INT16)
nyse_amex_equities_openbook_ultra_v2_1_b.fields.volume = ProtoField.new("Volume", "nyse.amex.equities.openbook.ultra.v2.1.b.volume", ftypes.INT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

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
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_price_point = Pref.bool("Show Delta Price Point", show.delta_price_point, "Parse and add Delta Price Point to protocol tree")
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_message = Pref.bool("Show Delta Update Message", show.delta_update_message, "Parse and add Delta Update Message to protocol tree")
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_messages = Pref.bool("Show Delta Update Messages", show.delta_update_messages, "Parse and add Delta Update Messages to protocol tree")
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_price_point = Pref.bool("Show Full Price Point", show.full_price_point, "Parse and add Full Price Point to protocol tree")
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_message = Pref.bool("Show Full Update Message", show.full_update_message, "Parse and add Full Update Message to protocol tree")
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_messages = Pref.bool("Show Full Update Messages", show.full_update_messages, "Parse and add Full Update Messages to protocol tree")
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_amex_equities_openbook_ultra_v2_1_b.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.delta_price_point ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_price_point then
    show.delta_price_point = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_price_point
    changed = true
  end
  if show.delta_update_message ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_message then
    show.delta_update_message = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_message
    changed = true
  end
  if show.delta_update_messages ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_messages then
    show.delta_update_messages = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_delta_update_messages
    changed = true
  end
  if show.full_price_point ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_price_point then
    show.full_price_point = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_price_point
    changed = true
  end
  if show.full_update_message ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_message then
    show.full_update_message = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_message
    changed = true
  end
  if show.full_update_messages ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_messages then
    show.full_update_messages = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_full_update_messages
    changed = true
  end
  if show.packet ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet then
    show.packet = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet_header then
    show.packet_header = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_packet_header
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.payload ~= nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_payload then
    show.payload = nyse_amex_equities_openbook_ultra_v2_1_b.prefs.show_payload
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

-- Size: Next Sequence Number
size_of.next_sequence_number = 4

-- Display: Next Sequence Number
display.next_sequence_number = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
dissect.next_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.next_sequence_number
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.next_sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sequence Number Reset Message
size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + size_of.next_sequence_number

  return index
end

-- Display: Sequence Number Reset Message
display.sequence_number_reset_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 4 Byte Signed Fixed Width Integer
  index, next_sequence_number = dissect.next_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequence_number_reset_message then
    local length = size_of.sequence_number_reset_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sequence_number_reset_message(buffer, packet, parent)
    parent = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.sequence_number_reset_message, range, display)
  end

  return dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
end

-- Size: Link Id 3
size_of.link_id_3 = 4

-- Display: Link Id 3
display.link_id_3 = function(value)
  return "Link Id 3: "..value
end

-- Dissect: Link Id 3
dissect.link_id_3 = function(buffer, offset, packet, parent)
  local length = size_of.link_id_3
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.link_id_3(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_3, range, value, display)

  return offset + length, value
end

-- Size: Link Id 2
size_of.link_id_2 = 4

-- Display: Link Id 2
display.link_id_2 = function(value)
  return "Link Id 2: "..value
end

-- Dissect: Link Id 2
dissect.link_id_2 = function(buffer, offset, packet, parent)
  local length = size_of.link_id_2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.link_id_2(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_2, range, value, display)

  return offset + length, value
end

-- Size: Link Id 1
size_of.link_id_1 = 4

-- Display: Link Id 1
display.link_id_1 = function(value)
  return "Link Id 1: "..value
end

-- Dissect: Link Id 1
dissect.link_id_1 = function(buffer, offset, packet, parent)
  local length = size_of.link_id_1
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.link_id_1(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_id_1, range, value, display)

  return offset + length, value
end

-- Size: Reason Code
size_of.reason_code = 1

-- Display: Reason Code
display.reason_code = function(value)
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
dissect.reason_code = function(buffer, offset, packet, parent)
  local length = size_of.reason_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reason_code(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Num Orders
size_of.num_orders = 2

-- Display: Num Orders
display.num_orders = function(value)
  return "Num Orders: "..value
end

-- Dissect: Num Orders
dissect.num_orders = function(buffer, offset, packet, parent)
  local length = size_of.num_orders
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.num_orders(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.num_orders, range, value, display)

  return offset + length, value
end

-- Size: Chg Qty
size_of.chg_qty = 4

-- Display: Chg Qty
display.chg_qty = function(value)
  return "Chg Qty: "..value
end

-- Dissect: Chg Qty
dissect.chg_qty = function(buffer, offset, packet, parent)
  local length = size_of.chg_qty
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.chg_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.chg_qty, range, value, display)

  return offset + length, value
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local length = size_of.volume
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price Numerator
size_of.price_numerator = 4

-- Display: Price Numerator
display.price_numerator = function(value)
  return "Price Numerator: "..value
end

-- Dissect: Price Numerator
dissect.price_numerator = function(buffer, offset, packet, parent)
  local length = size_of.price_numerator
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.price_numerator(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.price_numerator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Delta Price Point
size_of.delta_price_point = function(buffer, offset)
  local index = 0

  index = index + size_of.price_numerator

  index = index + size_of.volume

  index = index + size_of.chg_qty

  index = index + size_of.num_orders

  index = index + size_of.side

  index = index + size_of.reason_code

  index = index + size_of.link_id_1

  index = index + size_of.link_id_2

  index = index + size_of.link_id_3

  return index
end

-- Display: Delta Price Point
display.delta_price_point = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delta Price Point
dissect.delta_price_point_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Numerator: 4 Byte Signed Fixed Width Integer
  index, price_numerator = dissect.price_numerator(buffer, index, packet, parent)

  -- Volume: 4 Byte Signed Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Chg Qty: 4 Byte Signed Fixed Width Integer
  index, chg_qty = dissect.chg_qty(buffer, index, packet, parent)

  -- Num Orders: 2 Byte Signed Fixed Width Integer
  index, num_orders = dissect.num_orders(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Reason Code: 1 Byte Ascii String Enum with 4 values
  index, reason_code = dissect.reason_code(buffer, index, packet, parent)

  -- Link Id 1: 4 Byte Signed Fixed Width Integer
  index, link_id_1 = dissect.link_id_1(buffer, index, packet, parent)

  -- Link Id 2: 4 Byte Signed Fixed Width Integer
  index, link_id_2 = dissect.link_id_2(buffer, index, packet, parent)

  -- Link Id 3: 4 Byte Signed Fixed Width Integer
  index, link_id_3 = dissect.link_id_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Delta Price Point
dissect.delta_price_point = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delta_price_point then
    local length = size_of.delta_price_point(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delta_price_point(buffer, packet, parent)
    parent = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_price_point, range, display)
  end

  return dissect.delta_price_point_fields(buffer, offset, packet, parent)
end

-- Size: Price Scale Code
size_of.price_scale_code = 1

-- Display: Price Scale Code
display.price_scale_code = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
dissect.price_scale_code = function(buffer, offset, packet, parent)
  local length = size_of.price_scale_code
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
size_of.trading_status = 1

-- Display: Trading Status
display.trading_status = function(value)
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
dissect.trading_status = function(buffer, offset, packet, parent)
  local length = size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
size_of.quote_condition = 1

-- Display: Quote Condition
display.quote_condition = function(value)
  if value == " " then
    return "Quote Condition: No Special Quote Condition (<whitespace>)"
  end
  if value == "W" then
    return "Quote Condition: Slow Quote (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Source Session Id
size_of.source_session_id = 1

-- Display: Source Session Id
display.source_session_id = function(value)
  return "Source Session Id: "..value
end

-- Dissect: Source Session Id
dissect.source_session_id = function(buffer, offset, packet, parent)
  local length = size_of.source_session_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.source_session_id(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_session_id, range, value, display)

  return offset + length, value
end

-- Size: Source Seq Num
size_of.source_seq_num = 4

-- Display: Source Seq Num
display.source_seq_num = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
dissect.source_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.source_seq_num
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.source_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Source Time Micro Secs
size_of.source_time_micro_secs = 2

-- Display: Source Time Micro Secs
display.source_time_micro_secs = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
dissect.source_time_micro_secs = function(buffer, offset, packet, parent)
  local length = size_of.source_time_micro_secs
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.source_time_micro_secs(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Size: Source Time
size_of.source_time = 4

-- Display: Source Time
display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
dissect.source_time = function(buffer, offset, packet, parent)
  local length = size_of.source_time
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.source_time(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.source_time, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
size_of.symbol_index = 4

-- Display: Symbol Index
display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Delta Size
size_of.delta_size = 2

-- Display: Delta Size
display.delta_size = function(value)
  return "Delta Size: "..value
end

-- Dissect: Delta Size
dissect.delta_size = function(buffer, offset, packet, parent)
  local length = size_of.delta_size
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.delta_size(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_size, range, value, display)

  return offset + length, value
end

-- Display: Delta Update Message
display.delta_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delta Update Message
dissect.delta_update_message_fields = function(buffer, offset, packet, parent, size_of_delta_update_message)
  local index = offset

  -- Delta Size: 2 Byte Signed Fixed Width Integer
  index, delta_size = dissect.delta_size(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Signed Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Source Time: 4 Byte Signed Fixed Width Integer
  index, source_time = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Micro Secs: 2 Byte Signed Fixed Width Integer
  index, source_time_micro_secs = dissect.source_time_micro_secs(buffer, index, packet, parent)

  -- Source Seq Num: 4 Byte Signed Fixed Width Integer
  index, source_seq_num = dissect.source_seq_num(buffer, index, packet, parent)

  -- Source Session Id: 1 Byte Signed Fixed Width Integer
  index, source_session_id = dissect.source_session_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = dissect.quote_condition(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 6 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Signed Fixed Width Integer
  index, price_scale_code = dissect.price_scale_code(buffer, index, packet, parent)

  -- Delta Price Point: Struct of 9 fields
  local end_of_payload = offset + delta_size - (index - offset)

  -- Delta Price Point: Struct of 9 fields
  while index < end_of_payload do
    index = dissect.delta_price_point(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delta Update Message
dissect.delta_update_message = function(buffer, offset, packet, parent, size_of_delta_update_message)
  -- Optionally add struct element to protocol tree
  if show.delta_update_message then
    local range = buffer(offset, size_of_delta_update_message)
    local display = display.delta_update_message(buffer, packet, parent)
    parent = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_update_message, range, display)
  end

  dissect.delta_update_message_fields(buffer, offset, packet, parent, size_of_delta_update_message)

  return offset + size_of_delta_update_message
end

-- Size Of: Delta Update Messages
size_of.delta_update_messages = function(buffer, offset)
  return buffer:len() - offset
end

-- Display: Delta Update Messages
display.delta_update_messages = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delta Update Messages
dissect.delta_update_messages_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Delta Update Message: Struct of 10 fields
  local end_of_payload = buffer:len()

  -- Delta Update Message: Struct of 10 fields
  while index < end_of_payload do

    -- Dependency element: Delta Size
    local delta_size = buffer(index - 0, 2):int()

    -- Delta Update Message: Struct of 10 fields
    index = dissect.delta_update_message(buffer, index, packet, parent, delta_size)
  end

  return index
end

-- Dissect: Delta Update Messages
dissect.delta_update_messages = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.delta_update_messages then
    local length = size_of.delta_update_messages(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delta_update_messages(buffer, packet, parent)
    parent = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.delta_update_messages, range, display)
  end

  return dissect.delta_update_messages_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 1
size_of.reserved_1 = 1

-- Display: Reserved 1
display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Full Price Point
size_of.full_price_point = function(buffer, offset)
  local index = 0

  index = index + size_of.price_numerator

  index = index + size_of.volume

  index = index + size_of.num_orders

  index = index + size_of.side

  index = index + size_of.reserved_1

  return index
end

-- Display: Full Price Point
display.full_price_point = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Full Price Point
dissect.full_price_point_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Numerator: 4 Byte Signed Fixed Width Integer
  index, price_numerator = dissect.price_numerator(buffer, index, packet, parent)

  -- Volume: 4 Byte Signed Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Num Orders: 2 Byte Signed Fixed Width Integer
  index, num_orders = dissect.num_orders(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Price Point
dissect.full_price_point = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.full_price_point then
    local length = size_of.full_price_point(buffer, offset)
    local range = buffer(offset, length)
    local display = display.full_price_point(buffer, packet, parent)
    parent = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_price_point, range, display)
  end

  return dissect.full_price_point_fields(buffer, offset, packet, parent)
end

-- Size: Mpv
size_of.mpv = 2

-- Display: Mpv
display.mpv = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
dissect.mpv = function(buffer, offset, packet, parent)
  local length = size_of.mpv
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.mpv(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 11

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

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Symbol Seq Num
size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.symbol_seq_num
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Update Size
size_of.update_size = 2

-- Display: Update Size
display.update_size = function(value)
  return "Update Size: "..value
end

-- Dissect: Update Size
dissect.update_size = function(buffer, offset, packet, parent)
  local length = size_of.update_size
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.update_size(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.update_size, range, value, display)

  return offset + length, value
end

-- Display: Full Update Message
display.full_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Full Update Message
dissect.full_update_message_fields = function(buffer, offset, packet, parent, size_of_full_update_message)
  local index = offset

  -- Update Size: 2 Byte Signed Fixed Width Integer
  index, update_size = dissect.update_size(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Signed Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Source Time: 4 Byte Signed Fixed Width Integer
  index, source_time = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Micro Secs: 2 Byte Signed Fixed Width Integer
  index, source_time_micro_secs = dissect.source_time_micro_secs(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Signed Fixed Width Integer
  index, symbol_seq_num = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Source Session Id: 1 Byte Signed Fixed Width Integer
  index, source_session_id = dissect.source_session_id(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Signed Fixed Width Integer
  index, price_scale_code = dissect.price_scale_code(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = dissect.quote_condition(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 6 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Mpv: 2 Byte Signed Fixed Width Integer
  index, mpv = dissect.mpv(buffer, index, packet, parent)

  -- Full Price Point: Struct of 5 fields
  local end_of_payload = offset + update_size - (index - offset)

  -- Full Price Point: Struct of 5 fields
  while index < end_of_payload do
    index = dissect.full_price_point(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Full Update Message
dissect.full_update_message = function(buffer, offset, packet, parent, size_of_full_update_message)
  -- Optionally add struct element to protocol tree
  if show.full_update_message then
    local range = buffer(offset, size_of_full_update_message)
    local display = display.full_update_message(buffer, packet, parent)
    parent = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_update_message, range, display)
  end

  dissect.full_update_message_fields(buffer, offset, packet, parent, size_of_full_update_message)

  return offset + size_of_full_update_message
end

-- Size Of: Full Update Messages
size_of.full_update_messages = function(buffer, offset)
  return buffer:len() - offset
end

-- Display: Full Update Messages
display.full_update_messages = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Full Update Messages
dissect.full_update_messages_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Full Update Message: Struct of 13 fields
  local end_of_payload = buffer:len()

  -- Full Update Message: Struct of 13 fields
  while index < end_of_payload do

    -- Dependency element: Update Size
    local update_size = buffer(index - 0, 2):int()

    -- Full Update Message: Struct of 13 fields
    index = dissect.full_update_message(buffer, index, packet, parent, update_size)
  end

  return index
end

-- Dissect: Full Update Messages
dissect.full_update_messages = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.full_update_messages then
    local length = size_of.full_update_messages(buffer, offset)
    local range = buffer(offset, length)
    local display = display.full_update_messages(buffer, packet, parent)
    parent = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.full_update_messages, range, display)
  end

  return dissect.full_update_messages_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_type)
  -- Size of Full Update Messages
  if message_type == 230 then
    return size_of.full_update_messages(buffer, offset)
  end
  -- Size of Delta Update Messages
  if message_type == 231 then
    return size_of.delta_update_messages(buffer, offset)
  end
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return size_of.sequence_number_reset_message(buffer, offset)
  end
  -- Size of Heartbeat Message
  if message_type == 2 then
    return 0
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Full Update Messages
  if message_type == 230 then
    return dissect.full_update_messages(buffer, offset, packet, parent)
  end
  -- Dissect Delta Update Messages
  if message_type == 231 then
    return dissect.delta_update_messages(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 2 then
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
  local element = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Link Flag
size_of.link_flag = 1

-- Display: Link Flag
display.link_flag = function(value)
  return "Link Flag: "..value
end

-- Dissect: Link Flag
dissect.link_flag = function(buffer, offset, packet, parent)
  local length = size_of.link_flag
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.link_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.link_flag, range, value, display)

  return offset + length, value
end

-- Size: Message Count
size_of.message_count = 1

-- Display: Message Count
display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
dissect.message_count = function(buffer, offset, packet, parent)
  local length = size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Flag
size_of.retransmission_flag = 1

-- Display: Retransmission Flag
display.retransmission_flag = function(value)
  return "Retransmission Flag: "..value
end

-- Dissect: Retransmission Flag
dissect.retransmission_flag = function(buffer, offset, packet, parent)
  local length = size_of.retransmission_flag
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.retransmission_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.retransmission_flag, range, value, display)

  return offset + length, value
end

-- Size: Product Id
size_of.product_id = 1

-- Display: Product Id
display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
dissect.product_id = function(buffer, offset, packet, parent)
  local length = size_of.product_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
size_of.sequence_number = 4

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Type
size_of.message_type = 2

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.message_type, range, value, display)

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

  parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.packet_size

  index = index + size_of.message_type

  index = index + size_of.sequence_number

  index = index + size_of.timestamp

  index = index + size_of.product_id

  index = index + size_of.retransmission_flag

  index = index + size_of.message_count

  index = index + size_of.link_flag

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

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer Static
  index, product_id = dissect.product_id(buffer, index, packet, parent)

  -- Retransmission Flag: 1 Byte Unsigned Fixed Width Integer
  index, retransmission_flag = dissect.retransmission_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = dissect.message_count(buffer, index, packet, parent)

  -- Link Flag: 1 Byte Unsigned Fixed Width Integer
  index, link_flag = dissect.link_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 14, 2):uint()

  -- Payload: Runtime Type with 4 branches
  index = dissect.payload(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_amex_equities_openbook_ultra_v2_1_b.init()
end

-- Dissector for Nyse Amex Equities OpenBook Ultra 2.1.b
function nyse_amex_equities_openbook_ultra_v2_1_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_amex_equities_openbook_ultra_v2_1_b.name

  -- Dissect protocol
  local protocol = parent:add(nyse_amex_equities_openbook_ultra_v2_1_b, buffer(), nyse_amex_equities_openbook_ultra_v2_1_b.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_amex_equities_openbook_ultra_v2_1_b)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_amex_equities_openbook_ultra_v2_1_b_packet_size = function(buffer)

  return true
end

-- Verify Product Id Field
verify.product_id = function(buffer)
  if 62 == buffer(12, 1):uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Nyse Amex Equities OpenBook Ultra 2.1.b
local function nyse_amex_equities_openbook_ultra_v2_1_b_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_amex_equities_openbook_ultra_v2_1_b_packet_size(buffer) then return false end

  -- Verify Product Id
  if not verify.product_id(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_amex_equities_openbook_ultra_v2_1_b
  nyse_amex_equities_openbook_ultra_v2_1_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Amex Equities OpenBook Ultra 2.1.b
nyse_amex_equities_openbook_ultra_v2_1_b:register_heuristic("udp", nyse_amex_equities_openbook_ultra_v2_1_b_heuristic)

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
