-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X Equities Snapshot Amd 1.3.2 Protocol
local a2x_equities_snapshot_amd_v1_3_2 = Proto("A2X.Equities.Snapshot.Amd.v1.3.2.Lua", "A2X Equities Snapshot Amd 1.3.2")

-- Component Tables
local show = {}
local format = {}
local a2x_equities_snapshot_amd_v1_3_2_display = {}
local a2x_equities_snapshot_amd_v1_3_2_dissect = {}
local a2x_equities_snapshot_amd_v1_3_2_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X Equities Snapshot Amd 1.3.2 Fields
a2x_equities_snapshot_amd_v1_3_2.fields.book_entry_message = ProtoField.new("Book Entry Message", "a2x.equities.snapshot.amd.v1.3.2.bookentrymessage", ftypes.STRING)
a2x_equities_snapshot_amd_v1_3_2.fields.book_status_message = ProtoField.new("Book Status Message", "a2x.equities.snapshot.amd.v1.3.2.bookstatusmessage", ftypes.STRING)
a2x_equities_snapshot_amd_v1_3_2.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "a2x.equities.snapshot.amd.v1.3.2.closingbuyqty", ftypes.UINT32)
a2x_equities_snapshot_amd_v1_3_2.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "a2x.equities.snapshot.amd.v1.3.2.closingsellqty", ftypes.UINT32)
a2x_equities_snapshot_amd_v1_3_2.fields.entries = ProtoField.new("Entries", "a2x.equities.snapshot.amd.v1.3.2.entries", ftypes.UINT16)
a2x_equities_snapshot_amd_v1_3_2.fields.indicative_price = ProtoField.new("Indicative Price", "a2x.equities.snapshot.amd.v1.3.2.indicativeprice", ftypes.UINT64)
a2x_equities_snapshot_amd_v1_3_2.fields.mac_open = ProtoField.new("Mac Open", "a2x.equities.snapshot.amd.v1.3.2.macopen", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
a2x_equities_snapshot_amd_v1_3_2.fields.mac_run = ProtoField.new("Mac Run", "a2x.equities.snapshot.amd.v1.3.2.macrun", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
a2x_equities_snapshot_amd_v1_3_2.fields.market_at_close_book_entry_message = ProtoField.new("Market At Close Book Entry Message", "a2x.equities.snapshot.amd.v1.3.2.marketatclosebookentrymessage", ftypes.STRING)
a2x_equities_snapshot_amd_v1_3_2.fields.market_flags = ProtoField.new("Market Flags", "a2x.equities.snapshot.amd.v1.3.2.marketflags", ftypes.STRING)
a2x_equities_snapshot_amd_v1_3_2.fields.message = ProtoField.new("Message", "a2x.equities.snapshot.amd.v1.3.2.message", ftypes.STRING)
a2x_equities_snapshot_amd_v1_3_2.fields.message_count = ProtoField.new("Message Count", "a2x.equities.snapshot.amd.v1.3.2.messagecount", ftypes.UINT8)
a2x_equities_snapshot_amd_v1_3_2.fields.message_header = ProtoField.new("Message Header", "a2x.equities.snapshot.amd.v1.3.2.messageheader", ftypes.STRING)
a2x_equities_snapshot_amd_v1_3_2.fields.msg_length = ProtoField.new("Msg Length", "a2x.equities.snapshot.amd.v1.3.2.msglength", ftypes.UINT8)
a2x_equities_snapshot_amd_v1_3_2.fields.msg_type = ProtoField.new("Msg Type", "a2x.equities.snapshot.amd.v1.3.2.msgtype", ftypes.UINT8)
a2x_equities_snapshot_amd_v1_3_2.fields.order_ref = ProtoField.new("Order Ref", "a2x.equities.snapshot.amd.v1.3.2.orderref", ftypes.UINT32)
a2x_equities_snapshot_amd_v1_3_2.fields.packet = ProtoField.new("Packet", "a2x.equities.snapshot.amd.v1.3.2.packet", ftypes.STRING)
a2x_equities_snapshot_amd_v1_3_2.fields.payload = ProtoField.new("Payload", "a2x.equities.snapshot.amd.v1.3.2.payload", ftypes.STRING)
a2x_equities_snapshot_amd_v1_3_2.fields.price = ProtoField.new("Price", "a2x.equities.snapshot.amd.v1.3.2.price", ftypes.UINT64)
a2x_equities_snapshot_amd_v1_3_2.fields.quantity = ProtoField.new("Quantity", "a2x.equities.snapshot.amd.v1.3.2.quantity", ftypes.UINT32)
a2x_equities_snapshot_amd_v1_3_2.fields.security_count = ProtoField.new("Security Count", "a2x.equities.snapshot.amd.v1.3.2.securitycount", ftypes.UINT16)
a2x_equities_snapshot_amd_v1_3_2.fields.security_id = ProtoField.new("Security Id", "a2x.equities.snapshot.amd.v1.3.2.securityid", ftypes.UINT16)
a2x_equities_snapshot_amd_v1_3_2.fields.seq_no = ProtoField.new("Seq No", "a2x.equities.snapshot.amd.v1.3.2.seqno", ftypes.UINT32)
a2x_equities_snapshot_amd_v1_3_2.fields.snapshot_start_message = ProtoField.new("Snapshot Start Message", "a2x.equities.snapshot.amd.v1.3.2.snapshotstartmessage", ftypes.STRING)
a2x_equities_snapshot_amd_v1_3_2.fields.stream_seq_no = ProtoField.new("Stream Seq No", "a2x.equities.snapshot.amd.v1.3.2.streamseqno", ftypes.UINT32)
a2x_equities_snapshot_amd_v1_3_2.fields.timestamp = ProtoField.new("Timestamp", "a2x.equities.snapshot.amd.v1.3.2.timestamp", ftypes.UINT64)
a2x_equities_snapshot_amd_v1_3_2.fields.trading = ProtoField.new("Trading", "a2x.equities.snapshot.amd.v1.3.2.trading", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
a2x_equities_snapshot_amd_v1_3_2.fields.trading_status = ProtoField.new("Trading Status", "a2x.equities.snapshot.amd.v1.3.2.tradingstatus", ftypes.UINT8)
a2x_equities_snapshot_amd_v1_3_2.fields.unused_5 = ProtoField.new("Unused 5", "a2x.equities.snapshot.amd.v1.3.2.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- A2X Equities Snapshot Amd 1.3.2 Element Dissection Options
show.book_entry_message = true
show.book_status_message = true
show.market_at_close_book_entry_message = true
show.market_flags = true
show.message = true
show.message_header = true
show.packet = true
show.snapshot_start_message = true
show.payload = false

-- Register A2X Equities Snapshot Amd 1.3.2 Show Options
a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_entry_message = Pref.bool("Show Book Entry Message", show.book_entry_message, "Parse and add Book Entry Message to protocol tree")
a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_status_message = Pref.bool("Show Book Status Message", show.book_status_message, "Parse and add Book Status Message to protocol tree")
a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_at_close_book_entry_message = Pref.bool("Show Market At Close Book Entry Message", show.market_at_close_book_entry_message, "Parse and add Market At Close Book Entry Message to protocol tree")
a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_flags = Pref.bool("Show Market Flags", show.market_flags, "Parse and add Market Flags to protocol tree")
a2x_equities_snapshot_amd_v1_3_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
a2x_equities_snapshot_amd_v1_3_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
a2x_equities_snapshot_amd_v1_3_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
a2x_equities_snapshot_amd_v1_3_2.prefs.show_snapshot_start_message = Pref.bool("Show Snapshot Start Message", show.snapshot_start_message, "Parse and add Snapshot Start Message to protocol tree")
a2x_equities_snapshot_amd_v1_3_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function a2x_equities_snapshot_amd_v1_3_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.book_entry_message ~= a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_entry_message then
    show.book_entry_message = a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_entry_message
    changed = true
  end
  if show.book_status_message ~= a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_status_message then
    show.book_status_message = a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_status_message
    changed = true
  end
  if show.market_at_close_book_entry_message ~= a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_at_close_book_entry_message then
    show.market_at_close_book_entry_message = a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_at_close_book_entry_message
    changed = true
  end
  if show.market_flags ~= a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_flags then
    show.market_flags = a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_flags
    changed = true
  end
  if show.message ~= a2x_equities_snapshot_amd_v1_3_2.prefs.show_message then
    show.message = a2x_equities_snapshot_amd_v1_3_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= a2x_equities_snapshot_amd_v1_3_2.prefs.show_message_header then
    show.message_header = a2x_equities_snapshot_amd_v1_3_2.prefs.show_message_header
    changed = true
  end
  if show.packet ~= a2x_equities_snapshot_amd_v1_3_2.prefs.show_packet then
    show.packet = a2x_equities_snapshot_amd_v1_3_2.prefs.show_packet
    changed = true
  end
  if show.snapshot_start_message ~= a2x_equities_snapshot_amd_v1_3_2.prefs.show_snapshot_start_message then
    show.snapshot_start_message = a2x_equities_snapshot_amd_v1_3_2.prefs.show_snapshot_start_message
    changed = true
  end
  if show.payload ~= a2x_equities_snapshot_amd_v1_3_2.prefs.show_payload then
    show.payload = a2x_equities_snapshot_amd_v1_3_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect A2X Equities Snapshot Amd 1.3.2
-----------------------------------------------------------------------

-- Size: Order Ref
a2x_equities_snapshot_amd_v1_3_2_size_of.order_ref = 4

-- Display: Order Ref
a2x_equities_snapshot_amd_v1_3_2_display.order_ref = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
a2x_equities_snapshot_amd_v1_3_2_dissect.order_ref = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.order_ref
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.order_ref(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Size: Price
a2x_equities_snapshot_amd_v1_3_2_size_of.price = 8

-- Display: Price
a2x_equities_snapshot_amd_v1_3_2_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
a2x_equities_snapshot_amd_v1_3_2_dissect.price = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.price(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Quantity
a2x_equities_snapshot_amd_v1_3_2_size_of.quantity = 4

-- Display: Quantity
a2x_equities_snapshot_amd_v1_3_2_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
a2x_equities_snapshot_amd_v1_3_2_dissect.quantity = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.quantity(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Security Id
a2x_equities_snapshot_amd_v1_3_2_size_of.security_id = 2

-- Display: Security Id
a2x_equities_snapshot_amd_v1_3_2_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
a2x_equities_snapshot_amd_v1_3_2_dissect.security_id = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.security_id(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market At Close Book Entry Message
a2x_equities_snapshot_amd_v1_3_2_size_of.market_at_close_book_entry_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.quantity

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.price

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.order_ref

  return index
end

-- Display: Market At Close Book Entry Message
a2x_equities_snapshot_amd_v1_3_2_display.market_at_close_book_entry_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market At Close Book Entry Message
a2x_equities_snapshot_amd_v1_3_2_dissect.market_at_close_book_entry_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_snapshot_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_snapshot_amd_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_snapshot_amd_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_snapshot_amd_v1_3_2_dissect.order_ref(buffer, index, packet, parent)

  return index
end

-- Dissect: Market At Close Book Entry Message
a2x_equities_snapshot_amd_v1_3_2_dissect.market_at_close_book_entry_message = function(buffer, offset, packet, parent)
  if show.market_at_close_book_entry_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.market_at_close_book_entry_message, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2_dissect.market_at_close_book_entry_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2_display.market_at_close_book_entry_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2_dissect.market_at_close_book_entry_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Book Entry Message
a2x_equities_snapshot_amd_v1_3_2_size_of.book_entry_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.quantity

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.price

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.order_ref

  return index
end

-- Display: Book Entry Message
a2x_equities_snapshot_amd_v1_3_2_display.book_entry_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Entry Message
a2x_equities_snapshot_amd_v1_3_2_dissect.book_entry_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_snapshot_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_snapshot_amd_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_snapshot_amd_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_snapshot_amd_v1_3_2_dissect.order_ref(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Entry Message
a2x_equities_snapshot_amd_v1_3_2_dissect.book_entry_message = function(buffer, offset, packet, parent)
  if show.book_entry_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.book_entry_message, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2_dissect.book_entry_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2_display.book_entry_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2_dissect.book_entry_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Indicative Price
a2x_equities_snapshot_amd_v1_3_2_size_of.indicative_price = 8

-- Display: Indicative Price
a2x_equities_snapshot_amd_v1_3_2_display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
a2x_equities_snapshot_amd_v1_3_2_dissect.indicative_price = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.indicative_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Size: Closing Sell Qty
a2x_equities_snapshot_amd_v1_3_2_size_of.closing_sell_qty = 4

-- Display: Closing Sell Qty
a2x_equities_snapshot_amd_v1_3_2_display.closing_sell_qty = function(value)
  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
a2x_equities_snapshot_amd_v1_3_2_dissect.closing_sell_qty = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.closing_sell_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.closing_sell_qty(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Size: Closing Buy Qty
a2x_equities_snapshot_amd_v1_3_2_size_of.closing_buy_qty = 4

-- Display: Closing Buy Qty
a2x_equities_snapshot_amd_v1_3_2_display.closing_buy_qty = function(value)
  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
a2x_equities_snapshot_amd_v1_3_2_dissect.closing_buy_qty = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.closing_buy_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.closing_buy_qty(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Size: Entries
a2x_equities_snapshot_amd_v1_3_2_size_of.entries = 2

-- Display: Entries
a2x_equities_snapshot_amd_v1_3_2_display.entries = function(value)
  return "Entries: "..value
end

-- Dissect: Entries
a2x_equities_snapshot_amd_v1_3_2_dissect.entries = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.entries
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.entries(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.entries, range, value, display)

  return offset + length, value
end

-- Size: Market Flags
a2x_equities_snapshot_amd_v1_3_2_size_of.market_flags = 1

-- Display: Market Flags
a2x_equities_snapshot_amd_v1_3_2_display.market_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Mac Run flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Mac Run|"
  end
  -- Is Mac Open flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Mac Open|"
  end
  -- Is Trading flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Trading|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Market Flags
a2x_equities_snapshot_amd_v1_3_2_dissect.market_flags_bits = function(buffer, offset, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.unused_5, buffer(offset, 1))

  -- Mac Run: 1 Bit
  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.mac_run, buffer(offset, 1))

  -- Mac Open: 1 Bit
  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.mac_open, buffer(offset, 1))

  -- Trading: 1 Bit
  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.trading, buffer(offset, 1))
end

-- Dissect: Market Flags
a2x_equities_snapshot_amd_v1_3_2_dissect.market_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = a2x_equities_snapshot_amd_v1_3_2_display.market_flags(range, packet, parent)
  local element = parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.market_flags, range, display)

  if show.market_flags then
    a2x_equities_snapshot_amd_v1_3_2_dissect.market_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Trading Status
a2x_equities_snapshot_amd_v1_3_2_size_of.trading_status = 1

-- Display: Trading Status
a2x_equities_snapshot_amd_v1_3_2_display.trading_status = function(value)
  return "Trading Status: "..value
end

-- Dissect: Trading Status
a2x_equities_snapshot_amd_v1_3_2_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Book Status Message
a2x_equities_snapshot_amd_v1_3_2_size_of.book_status_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.trading_status

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.market_flags

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.entries

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.closing_buy_qty

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.closing_sell_qty

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.indicative_price

  return index
end

-- Display: Book Status Message
a2x_equities_snapshot_amd_v1_3_2_display.book_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Status Message
a2x_equities_snapshot_amd_v1_3_2_dissect.book_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_snapshot_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = a2x_equities_snapshot_amd_v1_3_2_dissect.trading_status(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = a2x_equities_snapshot_amd_v1_3_2_dissect.market_flags(buffer, index, packet, parent)

  -- Entries: u16
  index, entries = a2x_equities_snapshot_amd_v1_3_2_dissect.entries(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = a2x_equities_snapshot_amd_v1_3_2_dissect.closing_buy_qty(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = a2x_equities_snapshot_amd_v1_3_2_dissect.closing_sell_qty(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = a2x_equities_snapshot_amd_v1_3_2_dissect.indicative_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Status Message
a2x_equities_snapshot_amd_v1_3_2_dissect.book_status_message = function(buffer, offset, packet, parent)
  if show.book_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.book_status_message, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2_dissect.book_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2_display.book_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2_dissect.book_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Timestamp
a2x_equities_snapshot_amd_v1_3_2_size_of.timestamp = 8

-- Display: Timestamp
a2x_equities_snapshot_amd_v1_3_2_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
a2x_equities_snapshot_amd_v1_3_2_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Security Count
a2x_equities_snapshot_amd_v1_3_2_size_of.security_count = 2

-- Display: Security Count
a2x_equities_snapshot_amd_v1_3_2_display.security_count = function(value)
  return "Security Count: "..value
end

-- Dissect: Security Count
a2x_equities_snapshot_amd_v1_3_2_dissect.security_count = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.security_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.security_count(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.security_count, range, value, display)

  return offset + length, value
end

-- Size: Stream Seq No
a2x_equities_snapshot_amd_v1_3_2_size_of.stream_seq_no = 4

-- Display: Stream Seq No
a2x_equities_snapshot_amd_v1_3_2_display.stream_seq_no = function(value)
  return "Stream Seq No: "..value
end

-- Dissect: Stream Seq No
a2x_equities_snapshot_amd_v1_3_2_dissect.stream_seq_no = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.stream_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.stream_seq_no(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.stream_seq_no, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Start Message
a2x_equities_snapshot_amd_v1_3_2_size_of.snapshot_start_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.stream_seq_no

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.security_count

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.timestamp

  return index
end

-- Display: Snapshot Start Message
a2x_equities_snapshot_amd_v1_3_2_display.snapshot_start_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Start Message
a2x_equities_snapshot_amd_v1_3_2_dissect.snapshot_start_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Seq No: u32
  index, stream_seq_no = a2x_equities_snapshot_amd_v1_3_2_dissect.stream_seq_no(buffer, index, packet, parent)

  -- Security Count: u16
  index, security_count = a2x_equities_snapshot_amd_v1_3_2_dissect.security_count(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_snapshot_amd_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Start Message
a2x_equities_snapshot_amd_v1_3_2_dissect.snapshot_start_message = function(buffer, offset, packet, parent)
  if show.snapshot_start_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.snapshot_start_message, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2_dissect.snapshot_start_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2_display.snapshot_start_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2_dissect.snapshot_start_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
a2x_equities_snapshot_amd_v1_3_2_size_of.payload = function(buffer, offset, msg_type)
  -- Size of Heartbeat Message
  if msg_type == 1 then
    return 0
  end
  -- Size of Snapshot Start Message
  if msg_type == 10 then
    return a2x_equities_snapshot_amd_v1_3_2_size_of.snapshot_start_message(buffer, offset)
  end
  -- Size of Book Status Message
  if msg_type == 11 then
    return a2x_equities_snapshot_amd_v1_3_2_size_of.book_status_message(buffer, offset)
  end
  -- Size of Book Entry Message
  if msg_type == 12 then
    return a2x_equities_snapshot_amd_v1_3_2_size_of.book_entry_message(buffer, offset)
  end
  -- Size of Market At Close Book Entry Message
  if msg_type == 18 then
    return a2x_equities_snapshot_amd_v1_3_2_size_of.market_at_close_book_entry_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
a2x_equities_snapshot_amd_v1_3_2_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
a2x_equities_snapshot_amd_v1_3_2_dissect.payload_branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Heartbeat Message
  if msg_type == 1 then
  end
  -- Dissect Snapshot Start Message
  if msg_type == 10 then
    return a2x_equities_snapshot_amd_v1_3_2_dissect.snapshot_start_message(buffer, offset, packet, parent)
  end
  -- Dissect Book Status Message
  if msg_type == 11 then
    return a2x_equities_snapshot_amd_v1_3_2_dissect.book_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Book Entry Message
  if msg_type == 12 then
    return a2x_equities_snapshot_amd_v1_3_2_dissect.book_entry_message(buffer, offset, packet, parent)
  end
  -- Dissect Market At Close Book Entry Message
  if msg_type == 18 then
    return a2x_equities_snapshot_amd_v1_3_2_dissect.market_at_close_book_entry_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
a2x_equities_snapshot_amd_v1_3_2_dissect.payload = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return a2x_equities_snapshot_amd_v1_3_2_dissect.payload_branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = a2x_equities_snapshot_amd_v1_3_2_size_of.payload(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = a2x_equities_snapshot_amd_v1_3_2_display.payload(buffer, packet, parent)
  local element = parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.payload, range, display)

  return a2x_equities_snapshot_amd_v1_3_2_dissect.payload_branches(buffer, offset, packet, parent, msg_type)
end

-- Size: Seq No
a2x_equities_snapshot_amd_v1_3_2_size_of.seq_no = 4

-- Display: Seq No
a2x_equities_snapshot_amd_v1_3_2_display.seq_no = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
a2x_equities_snapshot_amd_v1_3_2_dissect.seq_no = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.seq_no
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.seq_no(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Size: Msg Length
a2x_equities_snapshot_amd_v1_3_2_size_of.msg_length = 1

-- Display: Msg Length
a2x_equities_snapshot_amd_v1_3_2_display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
a2x_equities_snapshot_amd_v1_3_2_dissect.msg_length = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.msg_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.msg_length(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Size: Msg Type
a2x_equities_snapshot_amd_v1_3_2_size_of.msg_type = 1

-- Display: Msg Type
a2x_equities_snapshot_amd_v1_3_2_display.msg_type = function(value)
  if value == 1 then
    return "Msg Type: Heartbeat Message (1)"
  end
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
    return "Msg Type: Market At Close Book Entry Message (18)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
a2x_equities_snapshot_amd_v1_3_2_dissect.msg_type = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.msg_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.msg_type(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
a2x_equities_snapshot_amd_v1_3_2_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.msg_type

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.msg_length

  index = index + a2x_equities_snapshot_amd_v1_3_2_size_of.seq_no

  return index
end

-- Display: Message Header
a2x_equities_snapshot_amd_v1_3_2_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
a2x_equities_snapshot_amd_v1_3_2_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, msg_type = a2x_equities_snapshot_amd_v1_3_2_dissect.msg_type(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = a2x_equities_snapshot_amd_v1_3_2_dissect.msg_length(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = a2x_equities_snapshot_amd_v1_3_2_dissect.seq_no(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
a2x_equities_snapshot_amd_v1_3_2_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.message_header, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
a2x_equities_snapshot_amd_v1_3_2_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
a2x_equities_snapshot_amd_v1_3_2_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = a2x_equities_snapshot_amd_v1_3_2_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = a2x_equities_snapshot_amd_v1_3_2_dissect.payload(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
a2x_equities_snapshot_amd_v1_3_2_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = a2x_equities_snapshot_amd_v1_3_2_display.message(buffer, packet, parent)
    parent = parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.message, range, display)
  end

  a2x_equities_snapshot_amd_v1_3_2_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Message Count
a2x_equities_snapshot_amd_v1_3_2_size_of.message_count = 1

-- Display: Message Count
a2x_equities_snapshot_amd_v1_3_2_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
a2x_equities_snapshot_amd_v1_3_2_dissect.message_count = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_snapshot_amd_v1_3_2_display.message_count(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_snapshot_amd_v1_3_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Dissect Packet
a2x_equities_snapshot_amd_v1_3_2_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = a2x_equities_snapshot_amd_v1_3_2_dissect.message_count(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  for i = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Message: Struct of 2 fields
    index = a2x_equities_snapshot_amd_v1_3_2_dissect.message(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function a2x_equities_snapshot_amd_v1_3_2.init()
end

-- Dissector for A2X Equities Snapshot Amd 1.3.2
function a2x_equities_snapshot_amd_v1_3_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = a2x_equities_snapshot_amd_v1_3_2.name

  -- Dissect protocol
  local protocol = parent:add(a2x_equities_snapshot_amd_v1_3_2, buffer(), a2x_equities_snapshot_amd_v1_3_2.description, "("..buffer:len().." Bytes)")
  return a2x_equities_snapshot_amd_v1_3_2_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, a2x_equities_snapshot_amd_v1_3_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.a2x_equities_snapshot_amd_v1_3_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for A2X Equities Snapshot Amd 1.3.2
local function a2x_equities_snapshot_amd_v1_3_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.a2x_equities_snapshot_amd_v1_3_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = a2x_equities_snapshot_amd_v1_3_2
  a2x_equities_snapshot_amd_v1_3_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for A2X Equities Snapshot Amd 1.3.2
a2x_equities_snapshot_amd_v1_3_2:register_heuristic("udp", a2x_equities_snapshot_amd_v1_3_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: A2X Markets
--   Version: 1.3.2
--   Date: Thursday, September 15, 2022
--   Specification: A2X712-Market-Data-Techincal-Specification-v1.3.2.pdf
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
