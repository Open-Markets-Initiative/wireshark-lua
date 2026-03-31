-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis Equities Snapshot Amd 4.1 Protocol
local omi_aquis_equities_snapshot_amd_v4_1 = Proto("Aquis.Equities.Snapshot.Amd.v4.1.Lua", "Aquis Equities Snapshot Amd 4.1")

-- Protocol table
local aquis_equities_snapshot_amd_v4_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis Equities Snapshot Amd 4.1 Fields
omi_aquis_equities_snapshot_amd_v4_1.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "aquis.equities.snapshot.amd.v4.1.closingbuyqty", ftypes.UINT32)
omi_aquis_equities_snapshot_amd_v4_1.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "aquis.equities.snapshot.amd.v4.1.closingsellqty", ftypes.UINT32)
omi_aquis_equities_snapshot_amd_v4_1.fields.entries = ProtoField.new("Entries", "aquis.equities.snapshot.amd.v4.1.entries", ftypes.UINT16)
omi_aquis_equities_snapshot_amd_v4_1.fields.indicative_price = ProtoField.new("Indicative Price", "aquis.equities.snapshot.amd.v4.1.indicativeprice", ftypes.UINT64)
omi_aquis_equities_snapshot_amd_v4_1.fields.mac_open = ProtoField.new("Mac Open", "aquis.equities.snapshot.amd.v4.1.macopen", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_aquis_equities_snapshot_amd_v4_1.fields.mac_run = ProtoField.new("Mac Run", "aquis.equities.snapshot.amd.v4.1.macrun", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_aquis_equities_snapshot_amd_v4_1.fields.market_flags = ProtoField.new("Market Flags", "aquis.equities.snapshot.amd.v4.1.marketflags", ftypes.STRING)
omi_aquis_equities_snapshot_amd_v4_1.fields.message = ProtoField.new("Message", "aquis.equities.snapshot.amd.v4.1.message", ftypes.STRING)
omi_aquis_equities_snapshot_amd_v4_1.fields.message_count = ProtoField.new("Message Count", "aquis.equities.snapshot.amd.v4.1.messagecount", ftypes.UINT8)
omi_aquis_equities_snapshot_amd_v4_1.fields.message_header = ProtoField.new("Message Header", "aquis.equities.snapshot.amd.v4.1.messageheader", ftypes.STRING)
omi_aquis_equities_snapshot_amd_v4_1.fields.msg_length = ProtoField.new("Msg Length", "aquis.equities.snapshot.amd.v4.1.msglength", ftypes.UINT8)
omi_aquis_equities_snapshot_amd_v4_1.fields.msg_type = ProtoField.new("Msg Type", "aquis.equities.snapshot.amd.v4.1.msgtype", ftypes.UINT8)
omi_aquis_equities_snapshot_amd_v4_1.fields.order_ref = ProtoField.new("Order Ref", "aquis.equities.snapshot.amd.v4.1.orderref", ftypes.UINT32)
omi_aquis_equities_snapshot_amd_v4_1.fields.packet = ProtoField.new("Packet", "aquis.equities.snapshot.amd.v4.1.packet", ftypes.STRING)
omi_aquis_equities_snapshot_amd_v4_1.fields.packet_header = ProtoField.new("Packet Header", "aquis.equities.snapshot.amd.v4.1.packetheader", ftypes.STRING)
omi_aquis_equities_snapshot_amd_v4_1.fields.price = ProtoField.new("Price", "aquis.equities.snapshot.amd.v4.1.price", ftypes.UINT64)
omi_aquis_equities_snapshot_amd_v4_1.fields.quantity = ProtoField.new("Quantity", "aquis.equities.snapshot.amd.v4.1.quantity", ftypes.UINT32)
omi_aquis_equities_snapshot_amd_v4_1.fields.reserved = ProtoField.new("Reserved", "aquis.equities.snapshot.amd.v4.1.reserved", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_aquis_equities_snapshot_amd_v4_1.fields.security_count = ProtoField.new("Security Count", "aquis.equities.snapshot.amd.v4.1.securitycount", ftypes.UINT16)
omi_aquis_equities_snapshot_amd_v4_1.fields.security_id = ProtoField.new("Security Id", "aquis.equities.snapshot.amd.v4.1.securityid", ftypes.UINT16)
omi_aquis_equities_snapshot_amd_v4_1.fields.seq_no = ProtoField.new("Seq No", "aquis.equities.snapshot.amd.v4.1.seqno", ftypes.UINT32)
omi_aquis_equities_snapshot_amd_v4_1.fields.side = ProtoField.new("Side", "aquis.equities.snapshot.amd.v4.1.side", ftypes.UINT8)
omi_aquis_equities_snapshot_amd_v4_1.fields.stream_seq_no = ProtoField.new("Stream Seq No", "aquis.equities.snapshot.amd.v4.1.streamseqno", ftypes.UINT32)
omi_aquis_equities_snapshot_amd_v4_1.fields.timestamp = ProtoField.new("Timestamp", "aquis.equities.snapshot.amd.v4.1.timestamp", ftypes.UINT64)
omi_aquis_equities_snapshot_amd_v4_1.fields.trading = ProtoField.new("Trading", "aquis.equities.snapshot.amd.v4.1.trading", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_aquis_equities_snapshot_amd_v4_1.fields.trading_status = ProtoField.new("Trading Status", "aquis.equities.snapshot.amd.v4.1.tradingstatus", ftypes.UINT8)

-- Aquis Equities Amd Snapshot 4.1 Application Messages
omi_aquis_equities_snapshot_amd_v4_1.fields.book_entry_message = ProtoField.new("Book Entry Message", "aquis.equities.snapshot.amd.v4.1.bookentrymessage", ftypes.STRING)
omi_aquis_equities_snapshot_amd_v4_1.fields.book_status_message = ProtoField.new("Book Status Message", "aquis.equities.snapshot.amd.v4.1.bookstatusmessage", ftypes.STRING)
omi_aquis_equities_snapshot_amd_v4_1.fields.ma_c_book_entry_message = ProtoField.new("Ma C Book Entry Message", "aquis.equities.snapshot.amd.v4.1.macbookentrymessage", ftypes.STRING)
omi_aquis_equities_snapshot_amd_v4_1.fields.snapshot_start_message = ProtoField.new("Snapshot Start Message", "aquis.equities.snapshot.amd.v4.1.snapshotstartmessage", ftypes.STRING)

-- Aquis Equities Snapshot Amd 4.1 generated fields
omi_aquis_equities_snapshot_amd_v4_1.fields.message_index = ProtoField.new("Message Index", "aquis.equities.snapshot.amd.v4.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis Equities Snapshot Amd 4.1 Element Dissection Options
show.application_messages = true
show.market_flags = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true

-- Register Aquis Equities Snapshot Amd 4.1 Show Options
omi_aquis_equities_snapshot_amd_v4_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_aquis_equities_snapshot_amd_v4_1.prefs.show_market_flags = Pref.bool("Show Market Flags", show.market_flags, "Parse and add Market Flags to protocol tree")
omi_aquis_equities_snapshot_amd_v4_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_aquis_equities_snapshot_amd_v4_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_aquis_equities_snapshot_amd_v4_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_aquis_equities_snapshot_amd_v4_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function omi_aquis_equities_snapshot_amd_v4_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_messages ~= omi_aquis_equities_snapshot_amd_v4_1.prefs.show_application_messages then
    show.application_messages = omi_aquis_equities_snapshot_amd_v4_1.prefs.show_application_messages
    changed = true
  end
  if show.market_flags ~= omi_aquis_equities_snapshot_amd_v4_1.prefs.show_market_flags then
    show.market_flags = omi_aquis_equities_snapshot_amd_v4_1.prefs.show_market_flags
    changed = true
  end
  if show.message ~= omi_aquis_equities_snapshot_amd_v4_1.prefs.show_message then
    show.message = omi_aquis_equities_snapshot_amd_v4_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_aquis_equities_snapshot_amd_v4_1.prefs.show_message_header then
    show.message_header = omi_aquis_equities_snapshot_amd_v4_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_aquis_equities_snapshot_amd_v4_1.prefs.show_packet then
    show.packet = omi_aquis_equities_snapshot_amd_v4_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_aquis_equities_snapshot_amd_v4_1.prefs.show_packet_header then
    show.packet_header = omi_aquis_equities_snapshot_amd_v4_1.prefs.show_packet_header
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Aquis Equities Snapshot Amd 4.1 Fields
-----------------------------------------------------------------------

-- Closing Buy Qty
aquis_equities_snapshot_amd_v4_1.closing_buy_qty = {}

-- Size: Closing Buy Qty
aquis_equities_snapshot_amd_v4_1.closing_buy_qty.size = 4

-- Display: Closing Buy Qty
aquis_equities_snapshot_amd_v4_1.closing_buy_qty.display = function(value)
  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
aquis_equities_snapshot_amd_v4_1.closing_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.closing_buy_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.closing_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Closing Sell Qty
aquis_equities_snapshot_amd_v4_1.closing_sell_qty = {}

-- Size: Closing Sell Qty
aquis_equities_snapshot_amd_v4_1.closing_sell_qty.size = 4

-- Display: Closing Sell Qty
aquis_equities_snapshot_amd_v4_1.closing_sell_qty.display = function(value)
  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
aquis_equities_snapshot_amd_v4_1.closing_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.closing_sell_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.closing_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Entries
aquis_equities_snapshot_amd_v4_1.entries = {}

-- Size: Entries
aquis_equities_snapshot_amd_v4_1.entries.size = 2

-- Display: Entries
aquis_equities_snapshot_amd_v4_1.entries.display = function(value)
  return "Entries: "..value
end

-- Dissect: Entries
aquis_equities_snapshot_amd_v4_1.entries.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.entries, range, value, display)

  return offset + length, value
end

-- Indicative Price
aquis_equities_snapshot_amd_v4_1.indicative_price = {}

-- Size: Indicative Price
aquis_equities_snapshot_amd_v4_1.indicative_price.size = 8

-- Display: Indicative Price
aquis_equities_snapshot_amd_v4_1.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
aquis_equities_snapshot_amd_v4_1.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.indicative_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_snapshot_amd_v4_1.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Message Count
aquis_equities_snapshot_amd_v4_1.message_count = {}

-- Size: Message Count
aquis_equities_snapshot_amd_v4_1.message_count.size = 1

-- Display: Message Count
aquis_equities_snapshot_amd_v4_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
aquis_equities_snapshot_amd_v4_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_snapshot_amd_v4_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_equities_snapshot_amd_v4_1.msg_length = {}

-- Size: Msg Length
aquis_equities_snapshot_amd_v4_1.msg_length.size = 1

-- Display: Msg Length
aquis_equities_snapshot_amd_v4_1.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_equities_snapshot_amd_v4_1.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_snapshot_amd_v4_1.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_equities_snapshot_amd_v4_1.msg_type = {}

-- Size: Msg Type
aquis_equities_snapshot_amd_v4_1.msg_type.size = 1

-- Display: Msg Type
aquis_equities_snapshot_amd_v4_1.msg_type.display = function(value)
  if value == 10 then
    return "Msg Type: Snapshot Start Message (10)"
  end
  if value == 11 then
    return "Msg Type: Book Status Message (11)"
  end
  if value == 12 then
    return "Msg Type: Book Entry Message (12)"
  end
  if value == 18 then
    return "Msg Type: Ma C Book Entry Message (18)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
aquis_equities_snapshot_amd_v4_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_snapshot_amd_v4_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Order Ref
aquis_equities_snapshot_amd_v4_1.order_ref = {}

-- Size: Order Ref
aquis_equities_snapshot_amd_v4_1.order_ref.size = 4

-- Display: Order Ref
aquis_equities_snapshot_amd_v4_1.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
aquis_equities_snapshot_amd_v4_1.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Price
aquis_equities_snapshot_amd_v4_1.price = {}

-- Size: Price
aquis_equities_snapshot_amd_v4_1.price.size = 8

-- Display: Price
aquis_equities_snapshot_amd_v4_1.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
aquis_equities_snapshot_amd_v4_1.price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_snapshot_amd_v4_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
aquis_equities_snapshot_amd_v4_1.quantity = {}

-- Size: Quantity
aquis_equities_snapshot_amd_v4_1.quantity.size = 4

-- Display: Quantity
aquis_equities_snapshot_amd_v4_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
aquis_equities_snapshot_amd_v4_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Security Count
aquis_equities_snapshot_amd_v4_1.security_count = {}

-- Size: Security Count
aquis_equities_snapshot_amd_v4_1.security_count.size = 2

-- Display: Security Count
aquis_equities_snapshot_amd_v4_1.security_count.display = function(value)
  return "Security Count: "..value
end

-- Dissect: Security Count
aquis_equities_snapshot_amd_v4_1.security_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.security_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.security_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.security_count, range, value, display)

  return offset + length, value
end

-- Security Id
aquis_equities_snapshot_amd_v4_1.security_id = {}

-- Size: Security Id
aquis_equities_snapshot_amd_v4_1.security_id.size = 2

-- Display: Security Id
aquis_equities_snapshot_amd_v4_1.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
aquis_equities_snapshot_amd_v4_1.security_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Seq No
aquis_equities_snapshot_amd_v4_1.seq_no = {}

-- Size: Seq No
aquis_equities_snapshot_amd_v4_1.seq_no.size = 4

-- Display: Seq No
aquis_equities_snapshot_amd_v4_1.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_equities_snapshot_amd_v4_1.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_snapshot_amd_v4_1.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Side
aquis_equities_snapshot_amd_v4_1.side = {}

-- Size: Side
aquis_equities_snapshot_amd_v4_1.side.size = 1

-- Display: Side
aquis_equities_snapshot_amd_v4_1.side.display = function(value)
  if value == 1 then
    return "Side: Buy Order (1)"
  end
  if value == 2 then
    return "Side: Sell Order (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
aquis_equities_snapshot_amd_v4_1.side.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.side, range, value, display)

  return offset + length, value
end

-- Stream Seq No
aquis_equities_snapshot_amd_v4_1.stream_seq_no = {}

-- Size: Stream Seq No
aquis_equities_snapshot_amd_v4_1.stream_seq_no.size = 4

-- Display: Stream Seq No
aquis_equities_snapshot_amd_v4_1.stream_seq_no.display = function(value)
  return "Stream Seq No: "..value
end

-- Dissect: Stream Seq No
aquis_equities_snapshot_amd_v4_1.stream_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.stream_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.stream_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.stream_seq_no, range, value, display)

  return offset + length, value
end

-- Timestamp
aquis_equities_snapshot_amd_v4_1.timestamp = {}

-- Size: Timestamp
aquis_equities_snapshot_amd_v4_1.timestamp.size = 8

-- Display: Timestamp
aquis_equities_snapshot_amd_v4_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
aquis_equities_snapshot_amd_v4_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_snapshot_amd_v4_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
aquis_equities_snapshot_amd_v4_1.trading_status = {}

-- Size: Trading Status
aquis_equities_snapshot_amd_v4_1.trading_status.size = 1

-- Display: Trading Status
aquis_equities_snapshot_amd_v4_1.trading_status.display = function(value)
  if value == 1 then
    return "Trading Status: Active (1)"
  end
  if value == 2 then
    return "Trading Status: Halted (2)"
  end
  if value == 3 then
    return "Trading Status: Suspended (3)"
  end
  if value == 8 then
    return "Trading Status: Ao D Start (8)"
  end
  if value == 24 then
    return "Trading Status: Ao D End (24)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
aquis_equities_snapshot_amd_v4_1.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_snapshot_amd_v4_1.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.trading_status, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Aquis Equities Snapshot Amd 4.1
-----------------------------------------------------------------------

-- Ma C Book Entry Message
aquis_equities_snapshot_amd_v4_1.ma_c_book_entry_message = {}

-- Size: Ma C Book Entry Message
aquis_equities_snapshot_amd_v4_1.ma_c_book_entry_message.size =
  aquis_equities_snapshot_amd_v4_1.security_id.size + 
  aquis_equities_snapshot_amd_v4_1.side.size + 
  aquis_equities_snapshot_amd_v4_1.quantity.size + 
  aquis_equities_snapshot_amd_v4_1.price.size + 
  aquis_equities_snapshot_amd_v4_1.order_ref.size

-- Display: Ma C Book Entry Message
aquis_equities_snapshot_amd_v4_1.ma_c_book_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ma C Book Entry Message
aquis_equities_snapshot_amd_v4_1.ma_c_book_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_snapshot_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_snapshot_amd_v4_1.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_snapshot_amd_v4_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_snapshot_amd_v4_1.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_equities_snapshot_amd_v4_1.order_ref.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ma C Book Entry Message
aquis_equities_snapshot_amd_v4_1.ma_c_book_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.ma_c_book_entry_message, buffer(offset, 0))
    local index = aquis_equities_snapshot_amd_v4_1.ma_c_book_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_snapshot_amd_v4_1.ma_c_book_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_snapshot_amd_v4_1.ma_c_book_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Book Entry Message
aquis_equities_snapshot_amd_v4_1.book_entry_message = {}

-- Size: Book Entry Message
aquis_equities_snapshot_amd_v4_1.book_entry_message.size =
  aquis_equities_snapshot_amd_v4_1.security_id.size + 
  aquis_equities_snapshot_amd_v4_1.side.size + 
  aquis_equities_snapshot_amd_v4_1.quantity.size + 
  aquis_equities_snapshot_amd_v4_1.price.size + 
  aquis_equities_snapshot_amd_v4_1.order_ref.size

-- Display: Book Entry Message
aquis_equities_snapshot_amd_v4_1.book_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Entry Message
aquis_equities_snapshot_amd_v4_1.book_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_snapshot_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_snapshot_amd_v4_1.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_snapshot_amd_v4_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_snapshot_amd_v4_1.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_equities_snapshot_amd_v4_1.order_ref.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Entry Message
aquis_equities_snapshot_amd_v4_1.book_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.book_entry_message, buffer(offset, 0))
    local index = aquis_equities_snapshot_amd_v4_1.book_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_snapshot_amd_v4_1.book_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_snapshot_amd_v4_1.book_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Flags
aquis_equities_snapshot_amd_v4_1.market_flags = {}

-- Size: Market Flags
aquis_equities_snapshot_amd_v4_1.market_flags.size = 1

-- Display: Market Flags
aquis_equities_snapshot_amd_v4_1.market_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trading flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trading"
  end
  -- Is Mac Open flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Mac Open"
  end
  -- Is Mac Run flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Mac Run"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Flags
aquis_equities_snapshot_amd_v4_1.market_flags.bits = function(range, value, packet, parent)

  -- Trading: 1 Bit
  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.trading, range, value)

  -- Mac Open: 1 Bit
  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.mac_open, range, value)

  -- Mac Run: 1 Bit
  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.mac_run, range, value)

  -- Reserved: 5 Bit
  parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.reserved, range, value)
end

-- Dissect: Market Flags
aquis_equities_snapshot_amd_v4_1.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_snapshot_amd_v4_1.market_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_snapshot_amd_v4_1.market_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.market_flags, range, display)

  if show.market_flags then
    aquis_equities_snapshot_amd_v4_1.market_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Book Status Message
aquis_equities_snapshot_amd_v4_1.book_status_message = {}

-- Size: Book Status Message
aquis_equities_snapshot_amd_v4_1.book_status_message.size =
  aquis_equities_snapshot_amd_v4_1.security_id.size + 
  aquis_equities_snapshot_amd_v4_1.trading_status.size + 
  aquis_equities_snapshot_amd_v4_1.market_flags.size + 
  aquis_equities_snapshot_amd_v4_1.entries.size + 
  aquis_equities_snapshot_amd_v4_1.closing_buy_qty.size + 
  aquis_equities_snapshot_amd_v4_1.closing_sell_qty.size + 
  aquis_equities_snapshot_amd_v4_1.indicative_price.size

-- Display: Book Status Message
aquis_equities_snapshot_amd_v4_1.book_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Status Message
aquis_equities_snapshot_amd_v4_1.book_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_snapshot_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = aquis_equities_snapshot_amd_v4_1.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = aquis_equities_snapshot_amd_v4_1.market_flags.dissect(buffer, index, packet, parent)

  -- Entries: u16
  index, entries = aquis_equities_snapshot_amd_v4_1.entries.dissect(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = aquis_equities_snapshot_amd_v4_1.closing_buy_qty.dissect(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = aquis_equities_snapshot_amd_v4_1.closing_sell_qty.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = aquis_equities_snapshot_amd_v4_1.indicative_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Status Message
aquis_equities_snapshot_amd_v4_1.book_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.book_status_message, buffer(offset, 0))
    local index = aquis_equities_snapshot_amd_v4_1.book_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_snapshot_amd_v4_1.book_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_snapshot_amd_v4_1.book_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Start Message
aquis_equities_snapshot_amd_v4_1.snapshot_start_message = {}

-- Size: Snapshot Start Message
aquis_equities_snapshot_amd_v4_1.snapshot_start_message.size =
  aquis_equities_snapshot_amd_v4_1.stream_seq_no.size + 
  aquis_equities_snapshot_amd_v4_1.security_count.size + 
  aquis_equities_snapshot_amd_v4_1.timestamp.size

-- Display: Snapshot Start Message
aquis_equities_snapshot_amd_v4_1.snapshot_start_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Start Message
aquis_equities_snapshot_amd_v4_1.snapshot_start_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Seq No: u32
  index, stream_seq_no = aquis_equities_snapshot_amd_v4_1.stream_seq_no.dissect(buffer, index, packet, parent)

  -- Security Count: u16
  index, security_count = aquis_equities_snapshot_amd_v4_1.security_count.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_snapshot_amd_v4_1.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Start Message
aquis_equities_snapshot_amd_v4_1.snapshot_start_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.snapshot_start_message, buffer(offset, 0))
    local index = aquis_equities_snapshot_amd_v4_1.snapshot_start_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_snapshot_amd_v4_1.snapshot_start_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_snapshot_amd_v4_1.snapshot_start_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
aquis_equities_snapshot_amd_v4_1.payload = {}

-- Dissect: Payload
aquis_equities_snapshot_amd_v4_1.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Snapshot Start Message
  if msg_type == 10 then
    return aquis_equities_snapshot_amd_v4_1.snapshot_start_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Book Status Message
  if msg_type == 11 then
    return aquis_equities_snapshot_amd_v4_1.book_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Book Entry Message
  if msg_type == 12 then
    return aquis_equities_snapshot_amd_v4_1.book_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ma C Book Entry Message
  if msg_type == 18 then
    return aquis_equities_snapshot_amd_v4_1.ma_c_book_entry_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
aquis_equities_snapshot_amd_v4_1.message_header = {}

-- Size: Message Header
aquis_equities_snapshot_amd_v4_1.message_header.size =
  aquis_equities_snapshot_amd_v4_1.msg_type.size + 
  aquis_equities_snapshot_amd_v4_1.msg_length.size + 
  aquis_equities_snapshot_amd_v4_1.seq_no.size

-- Display: Message Header
aquis_equities_snapshot_amd_v4_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_equities_snapshot_amd_v4_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: u8
  index, msg_type = aquis_equities_snapshot_amd_v4_1.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: u8
  index, msg_length = aquis_equities_snapshot_amd_v4_1.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: u32
  index, seq_no = aquis_equities_snapshot_amd_v4_1.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_equities_snapshot_amd_v4_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.message_header, buffer(offset, 0))
    local index = aquis_equities_snapshot_amd_v4_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_snapshot_amd_v4_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_snapshot_amd_v4_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_equities_snapshot_amd_v4_1.message = {}

-- Display: Message
aquis_equities_snapshot_amd_v4_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_equities_snapshot_amd_v4_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_equities_snapshot_amd_v4_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 4 branches
  index = aquis_equities_snapshot_amd_v4_1.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_equities_snapshot_amd_v4_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.message, buffer(offset, 0))
    local current = aquis_equities_snapshot_amd_v4_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = aquis_equities_snapshot_amd_v4_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_equities_snapshot_amd_v4_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
aquis_equities_snapshot_amd_v4_1.packet_header = {}

-- Size: Packet Header
aquis_equities_snapshot_amd_v4_1.packet_header.size =
  aquis_equities_snapshot_amd_v4_1.message_count.size

-- Display: Packet Header
aquis_equities_snapshot_amd_v4_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
aquis_equities_snapshot_amd_v4_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: u8
  index, message_count = aquis_equities_snapshot_amd_v4_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
aquis_equities_snapshot_amd_v4_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_snapshot_amd_v4_1.fields.packet_header, buffer(offset, 0))
    local index = aquis_equities_snapshot_amd_v4_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_snapshot_amd_v4_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_snapshot_amd_v4_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
aquis_equities_snapshot_amd_v4_1.packet = {}

-- Dissect Packet
aquis_equities_snapshot_amd_v4_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 1 fields
  index, packet_header = aquis_equities_snapshot_amd_v4_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 1, 1):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = aquis_equities_snapshot_amd_v4_1.message.dissect(buffer, index, packet, parent, msg_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_aquis_equities_snapshot_amd_v4_1.init()
end

-- Dissector for Aquis Equities Snapshot Amd 4.1
function omi_aquis_equities_snapshot_amd_v4_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_aquis_equities_snapshot_amd_v4_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_equities_snapshot_amd_v4_1, buffer(), omi_aquis_equities_snapshot_amd_v4_1.description, "("..buffer:len().." Bytes)")
  return aquis_equities_snapshot_amd_v4_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_aquis_equities_snapshot_amd_v4_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
aquis_equities_snapshot_amd_v4_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Aquis Equities Snapshot Amd 4.1
local function omi_aquis_equities_snapshot_amd_v4_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_equities_snapshot_amd_v4_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_equities_snapshot_amd_v4_1
  omi_aquis_equities_snapshot_amd_v4_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis Equities Snapshot Amd 4.1
omi_aquis_equities_snapshot_amd_v4_1:register_heuristic("udp", omi_aquis_equities_snapshot_amd_v4_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 4.1
--   Date: Thursday, January 1, 2026
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
