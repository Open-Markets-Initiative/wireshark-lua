-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X Equities Snapshot Amd 1.3.2 Protocol
local omi_a2x_equities_snapshot_amd_v1_3_2 = Proto("A2X.Equities.Snapshot.Amd.v1.3.2.Lua", "A2X Equities Snapshot Amd 1.3.2")

-- Protocol table
local a2x_equities_snapshot_amd_v1_3_2 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X Equities Snapshot Amd 1.3.2 Fields
omi_a2x_equities_snapshot_amd_v1_3_2.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "a2x.equities.snapshot.amd.v1.3.2.closingbuyqty", ftypes.UINT32)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "a2x.equities.snapshot.amd.v1.3.2.closingsellqty", ftypes.UINT32)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.entries = ProtoField.new("Entries", "a2x.equities.snapshot.amd.v1.3.2.entries", ftypes.UINT16)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.indicative_price = ProtoField.new("Indicative Price", "a2x.equities.snapshot.amd.v1.3.2.indicativeprice", ftypes.UINT64)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.mac_open = ProtoField.new("Mac Open", "a2x.equities.snapshot.amd.v1.3.2.macopen", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.mac_run = ProtoField.new("Mac Run", "a2x.equities.snapshot.amd.v1.3.2.macrun", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.market_flags = ProtoField.new("Market Flags", "a2x.equities.snapshot.amd.v1.3.2.marketflags", ftypes.STRING)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.message = ProtoField.new("Message", "a2x.equities.snapshot.amd.v1.3.2.message", ftypes.STRING)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.message_count = ProtoField.new("Message Count", "a2x.equities.snapshot.amd.v1.3.2.messagecount", ftypes.UINT8)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.message_header = ProtoField.new("Message Header", "a2x.equities.snapshot.amd.v1.3.2.messageheader", ftypes.STRING)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.msg_length = ProtoField.new("Msg Length", "a2x.equities.snapshot.amd.v1.3.2.msglength", ftypes.UINT8)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.msg_type = ProtoField.new("Msg Type", "a2x.equities.snapshot.amd.v1.3.2.msgtype", ftypes.UINT8)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.order_ref = ProtoField.new("Order Ref", "a2x.equities.snapshot.amd.v1.3.2.orderref", ftypes.UINT32)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.packet = ProtoField.new("Packet", "a2x.equities.snapshot.amd.v1.3.2.packet", ftypes.STRING)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.payload = ProtoField.new("Payload", "a2x.equities.snapshot.amd.v1.3.2.payload", ftypes.STRING)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.price = ProtoField.new("Price", "a2x.equities.snapshot.amd.v1.3.2.price", ftypes.UINT64)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.quantity = ProtoField.new("Quantity", "a2x.equities.snapshot.amd.v1.3.2.quantity", ftypes.UINT32)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.security_count = ProtoField.new("Security Count", "a2x.equities.snapshot.amd.v1.3.2.securitycount", ftypes.UINT16)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.security_id = ProtoField.new("Security Id", "a2x.equities.snapshot.amd.v1.3.2.securityid", ftypes.UINT16)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.seq_no = ProtoField.new("Seq No", "a2x.equities.snapshot.amd.v1.3.2.seqno", ftypes.UINT32)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.stream_seq_no = ProtoField.new("Stream Seq No", "a2x.equities.snapshot.amd.v1.3.2.streamseqno", ftypes.UINT32)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.timestamp = ProtoField.new("Timestamp", "a2x.equities.snapshot.amd.v1.3.2.timestamp", ftypes.UINT64)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.trading = ProtoField.new("Trading", "a2x.equities.snapshot.amd.v1.3.2.trading", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.trading_status = ProtoField.new("Trading Status", "a2x.equities.snapshot.amd.v1.3.2.tradingstatus", ftypes.UINT8)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.unused_5 = ProtoField.new("Unused 5", "a2x.equities.snapshot.amd.v1.3.2.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)

-- A2X Equities Snapshot Amd 1.3.2 messages
omi_a2x_equities_snapshot_amd_v1_3_2.fields.book_entry_message = ProtoField.new("Book Entry Message", "a2x.equities.snapshot.amd.v1.3.2.bookentrymessage", ftypes.STRING)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.book_status_message = ProtoField.new("Book Status Message", "a2x.equities.snapshot.amd.v1.3.2.bookstatusmessage", ftypes.STRING)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.market_at_close_book_entry_message = ProtoField.new("Market At Close Book Entry Message", "a2x.equities.snapshot.amd.v1.3.2.marketatclosebookentrymessage", ftypes.STRING)
omi_a2x_equities_snapshot_amd_v1_3_2.fields.snapshot_start_message = ProtoField.new("Snapshot Start Message", "a2x.equities.snapshot.amd.v1.3.2.snapshotstartmessage", ftypes.STRING)

-- A2X Equities Snapshot Amd 1.3.2 generated fields
omi_a2x_equities_snapshot_amd_v1_3_2.fields.message_index = ProtoField.new("Message Index", "a2x.equities.snapshot.amd.v1.3.2.messageindex", ftypes.UINT16)

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
omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_entry_message = Pref.bool("Show Book Entry Message", show.book_entry_message, "Parse and add Book Entry Message to protocol tree")
omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_status_message = Pref.bool("Show Book Status Message", show.book_status_message, "Parse and add Book Status Message to protocol tree")
omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_at_close_book_entry_message = Pref.bool("Show Market At Close Book Entry Message", show.market_at_close_book_entry_message, "Parse and add Market At Close Book Entry Message to protocol tree")
omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_flags = Pref.bool("Show Market Flags", show.market_flags, "Parse and add Market Flags to protocol tree")
omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_snapshot_start_message = Pref.bool("Show Snapshot Start Message", show.snapshot_start_message, "Parse and add Snapshot Start Message to protocol tree")
omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_a2x_equities_snapshot_amd_v1_3_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.book_entry_message ~= omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_entry_message then
    show.book_entry_message = omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_entry_message
    changed = true
  end
  if show.book_status_message ~= omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_status_message then
    show.book_status_message = omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_book_status_message
    changed = true
  end
  if show.market_at_close_book_entry_message ~= omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_at_close_book_entry_message then
    show.market_at_close_book_entry_message = omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_at_close_book_entry_message
    changed = true
  end
  if show.market_flags ~= omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_flags then
    show.market_flags = omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_market_flags
    changed = true
  end
  if show.message ~= omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_message then
    show.message = omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_message_header then
    show.message_header = omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_packet then
    show.packet = omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_packet
    changed = true
  end
  if show.snapshot_start_message ~= omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_snapshot_start_message then
    show.snapshot_start_message = omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_snapshot_start_message
    changed = true
  end
  if show.payload ~= omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_payload then
    show.payload = omi_a2x_equities_snapshot_amd_v1_3_2.prefs.show_payload
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

-- Order Ref
a2x_equities_snapshot_amd_v1_3_2.order_ref = {}

-- Size: Order Ref
a2x_equities_snapshot_amd_v1_3_2.order_ref.size = 4

-- Display: Order Ref
a2x_equities_snapshot_amd_v1_3_2.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
a2x_equities_snapshot_amd_v1_3_2.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Price
a2x_equities_snapshot_amd_v1_3_2.price = {}

-- Size: Price
a2x_equities_snapshot_amd_v1_3_2.price.size = 8

-- Display: Price
a2x_equities_snapshot_amd_v1_3_2.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
a2x_equities_snapshot_amd_v1_3_2.price.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_snapshot_amd_v1_3_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
a2x_equities_snapshot_amd_v1_3_2.quantity = {}

-- Size: Quantity
a2x_equities_snapshot_amd_v1_3_2.quantity.size = 4

-- Display: Quantity
a2x_equities_snapshot_amd_v1_3_2.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
a2x_equities_snapshot_amd_v1_3_2.quantity.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Security Id
a2x_equities_snapshot_amd_v1_3_2.security_id = {}

-- Size: Security Id
a2x_equities_snapshot_amd_v1_3_2.security_id.size = 2

-- Display: Security Id
a2x_equities_snapshot_amd_v1_3_2.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
a2x_equities_snapshot_amd_v1_3_2.security_id.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Market At Close Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message = {}

-- Calculate size of: Market At Close Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message.size = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2.security_id.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.quantity.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.price.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.order_ref.size

  return index
end

-- Display: Market At Close Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market At Close Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_snapshot_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_snapshot_amd_v1_3_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_snapshot_amd_v1_3_2.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_snapshot_amd_v1_3_2.order_ref.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market At Close Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.market_at_close_book_entry_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.market_at_close_book_entry_message, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.book_entry_message = {}

-- Calculate size of: Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.book_entry_message.size = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2.security_id.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.quantity.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.price.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.order_ref.size

  return index
end

-- Display: Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.book_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.book_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_snapshot_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_snapshot_amd_v1_3_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_snapshot_amd_v1_3_2.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_snapshot_amd_v1_3_2.order_ref.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Entry Message
a2x_equities_snapshot_amd_v1_3_2.book_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.book_entry_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.book_entry_message, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2.book_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2.book_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2.book_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Price
a2x_equities_snapshot_amd_v1_3_2.indicative_price = {}

-- Size: Indicative Price
a2x_equities_snapshot_amd_v1_3_2.indicative_price.size = 8

-- Display: Indicative Price
a2x_equities_snapshot_amd_v1_3_2.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
a2x_equities_snapshot_amd_v1_3_2.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.indicative_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_snapshot_amd_v1_3_2.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Closing Sell Qty
a2x_equities_snapshot_amd_v1_3_2.closing_sell_qty = {}

-- Size: Closing Sell Qty
a2x_equities_snapshot_amd_v1_3_2.closing_sell_qty.size = 4

-- Display: Closing Sell Qty
a2x_equities_snapshot_amd_v1_3_2.closing_sell_qty.display = function(value)
  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
a2x_equities_snapshot_amd_v1_3_2.closing_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.closing_sell_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.closing_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Closing Buy Qty
a2x_equities_snapshot_amd_v1_3_2.closing_buy_qty = {}

-- Size: Closing Buy Qty
a2x_equities_snapshot_amd_v1_3_2.closing_buy_qty.size = 4

-- Display: Closing Buy Qty
a2x_equities_snapshot_amd_v1_3_2.closing_buy_qty.display = function(value)
  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
a2x_equities_snapshot_amd_v1_3_2.closing_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.closing_buy_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.closing_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Entries
a2x_equities_snapshot_amd_v1_3_2.entries = {}

-- Size: Entries
a2x_equities_snapshot_amd_v1_3_2.entries.size = 2

-- Display: Entries
a2x_equities_snapshot_amd_v1_3_2.entries.display = function(value)
  return "Entries: "..value
end

-- Dissect: Entries
a2x_equities_snapshot_amd_v1_3_2.entries.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.entries, range, value, display)

  return offset + length, value
end

-- Trading
a2x_equities_snapshot_amd_v1_3_2.trading = {}

-- Mac Open
a2x_equities_snapshot_amd_v1_3_2.mac_open = {}

-- Mac Run
a2x_equities_snapshot_amd_v1_3_2.mac_run = {}

-- Unused 5
a2x_equities_snapshot_amd_v1_3_2.unused_5 = {}

-- Market Flags
a2x_equities_snapshot_amd_v1_3_2.market_flags = {}

-- Size: Market Flags
a2x_equities_snapshot_amd_v1_3_2.market_flags.size = 1

-- Display: Market Flags
a2x_equities_snapshot_amd_v1_3_2.market_flags.display = function(buffer, packet, parent)
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
a2x_equities_snapshot_amd_v1_3_2.market_flags.bits = function(buffer, offset, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.unused_5, buffer(offset, 1))

  -- Mac Run: 1 Bit
  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.mac_run, buffer(offset, 1))

  -- Mac Open: 1 Bit
  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.mac_open, buffer(offset, 1))

  -- Trading: 1 Bit
  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.trading, buffer(offset, 1))
end

-- Dissect: Market Flags
a2x_equities_snapshot_amd_v1_3_2.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = a2x_equities_snapshot_amd_v1_3_2.market_flags.display(range, packet, parent)
  local element = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.market_flags, range, display)

  if show.market_flags then
    a2x_equities_snapshot_amd_v1_3_2.market_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Trading Status
a2x_equities_snapshot_amd_v1_3_2.trading_status = {}

-- Size: Trading Status
a2x_equities_snapshot_amd_v1_3_2.trading_status.size = 1

-- Display: Trading Status
a2x_equities_snapshot_amd_v1_3_2.trading_status.display = function(value)
  return "Trading Status: "..value
end

-- Dissect: Trading Status
a2x_equities_snapshot_amd_v1_3_2.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Book Status Message
a2x_equities_snapshot_amd_v1_3_2.book_status_message = {}

-- Calculate size of: Book Status Message
a2x_equities_snapshot_amd_v1_3_2.book_status_message.size = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2.security_id.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.trading_status.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.market_flags.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.entries.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.closing_buy_qty.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.closing_sell_qty.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.indicative_price.size

  return index
end

-- Display: Book Status Message
a2x_equities_snapshot_amd_v1_3_2.book_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Status Message
a2x_equities_snapshot_amd_v1_3_2.book_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_snapshot_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = a2x_equities_snapshot_amd_v1_3_2.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = a2x_equities_snapshot_amd_v1_3_2.market_flags.dissect(buffer, index, packet, parent)

  -- Entries: u16
  index, entries = a2x_equities_snapshot_amd_v1_3_2.entries.dissect(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = a2x_equities_snapshot_amd_v1_3_2.closing_buy_qty.dissect(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = a2x_equities_snapshot_amd_v1_3_2.closing_sell_qty.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = a2x_equities_snapshot_amd_v1_3_2.indicative_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Status Message
a2x_equities_snapshot_amd_v1_3_2.book_status_message.dissect = function(buffer, offset, packet, parent)
  if show.book_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.book_status_message, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2.book_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2.book_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2.book_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp
a2x_equities_snapshot_amd_v1_3_2.timestamp = {}

-- Size: Timestamp
a2x_equities_snapshot_amd_v1_3_2.timestamp.size = 8

-- Display: Timestamp
a2x_equities_snapshot_amd_v1_3_2.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
a2x_equities_snapshot_amd_v1_3_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_snapshot_amd_v1_3_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Security Count
a2x_equities_snapshot_amd_v1_3_2.security_count = {}

-- Size: Security Count
a2x_equities_snapshot_amd_v1_3_2.security_count.size = 2

-- Display: Security Count
a2x_equities_snapshot_amd_v1_3_2.security_count.display = function(value)
  return "Security Count: "..value
end

-- Dissect: Security Count
a2x_equities_snapshot_amd_v1_3_2.security_count.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.security_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.security_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.security_count, range, value, display)

  return offset + length, value
end

-- Stream Seq No
a2x_equities_snapshot_amd_v1_3_2.stream_seq_no = {}

-- Size: Stream Seq No
a2x_equities_snapshot_amd_v1_3_2.stream_seq_no.size = 4

-- Display: Stream Seq No
a2x_equities_snapshot_amd_v1_3_2.stream_seq_no.display = function(value)
  return "Stream Seq No: "..value
end

-- Dissect: Stream Seq No
a2x_equities_snapshot_amd_v1_3_2.stream_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.stream_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.stream_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.stream_seq_no, range, value, display)

  return offset + length, value
end

-- Snapshot Start Message
a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message = {}

-- Calculate size of: Snapshot Start Message
a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message.size = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2.stream_seq_no.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.security_count.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.timestamp.size

  return index
end

-- Display: Snapshot Start Message
a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Start Message
a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Seq No: u32
  index, stream_seq_no = a2x_equities_snapshot_amd_v1_3_2.stream_seq_no.dissect(buffer, index, packet, parent)

  -- Security Count: u16
  index, security_count = a2x_equities_snapshot_amd_v1_3_2.security_count.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_snapshot_amd_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Start Message
a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_start_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.snapshot_start_message, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
a2x_equities_snapshot_amd_v1_3_2.heartbeat_message = {}

-- Payload
a2x_equities_snapshot_amd_v1_3_2.payload = {}

-- Calculate runtime size of: Payload
a2x_equities_snapshot_amd_v1_3_2.payload.size = function(buffer, offset, msg_type)
  -- Size of Heartbeat Message
  if msg_type == 1 then
    return 0
  end
  -- Size of Snapshot Start Message
  if msg_type == 10 then
    return a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message.size(buffer, offset)
  end
  -- Size of Book Status Message
  if msg_type == 11 then
    return a2x_equities_snapshot_amd_v1_3_2.book_status_message.size(buffer, offset)
  end
  -- Size of Book Entry Message
  if msg_type == 12 then
    return a2x_equities_snapshot_amd_v1_3_2.book_entry_message.size(buffer, offset)
  end
  -- Size of Market At Close Book Entry Message
  if msg_type == 18 then
    return a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
a2x_equities_snapshot_amd_v1_3_2.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
a2x_equities_snapshot_amd_v1_3_2.payload.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Heartbeat Message
  if msg_type == 1 then
  end
  -- Dissect Snapshot Start Message
  if msg_type == 10 then
    return a2x_equities_snapshot_amd_v1_3_2.snapshot_start_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Book Status Message
  if msg_type == 11 then
    return a2x_equities_snapshot_amd_v1_3_2.book_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Book Entry Message
  if msg_type == 12 then
    return a2x_equities_snapshot_amd_v1_3_2.book_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market At Close Book Entry Message
  if msg_type == 18 then
    return a2x_equities_snapshot_amd_v1_3_2.market_at_close_book_entry_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
a2x_equities_snapshot_amd_v1_3_2.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return a2x_equities_snapshot_amd_v1_3_2.payload.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = a2x_equities_snapshot_amd_v1_3_2.payload.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = a2x_equities_snapshot_amd_v1_3_2.payload.display(buffer, packet, parent)
  local element = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.payload, range, display)

  return a2x_equities_snapshot_amd_v1_3_2.payload.branches(buffer, offset, packet, parent, msg_type)
end

-- Seq No
a2x_equities_snapshot_amd_v1_3_2.seq_no = {}

-- Size: Seq No
a2x_equities_snapshot_amd_v1_3_2.seq_no.size = 4

-- Display: Seq No
a2x_equities_snapshot_amd_v1_3_2.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
a2x_equities_snapshot_amd_v1_3_2.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Msg Length
a2x_equities_snapshot_amd_v1_3_2.msg_length = {}

-- Size: Msg Length
a2x_equities_snapshot_amd_v1_3_2.msg_length.size = 1

-- Display: Msg Length
a2x_equities_snapshot_amd_v1_3_2.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
a2x_equities_snapshot_amd_v1_3_2.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
a2x_equities_snapshot_amd_v1_3_2.msg_type = {}

-- Size: Msg Type
a2x_equities_snapshot_amd_v1_3_2.msg_type.size = 1

-- Display: Msg Type
a2x_equities_snapshot_amd_v1_3_2.msg_type.display = function(value)
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
a2x_equities_snapshot_amd_v1_3_2.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Message Header
a2x_equities_snapshot_amd_v1_3_2.message_header = {}

-- Calculate size of: Message Header
a2x_equities_snapshot_amd_v1_3_2.message_header.size = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_snapshot_amd_v1_3_2.msg_type.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.msg_length.size

  index = index + a2x_equities_snapshot_amd_v1_3_2.seq_no.size

  return index
end

-- Display: Message Header
a2x_equities_snapshot_amd_v1_3_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
a2x_equities_snapshot_amd_v1_3_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, msg_type = a2x_equities_snapshot_amd_v1_3_2.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = a2x_equities_snapshot_amd_v1_3_2.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = a2x_equities_snapshot_amd_v1_3_2.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
a2x_equities_snapshot_amd_v1_3_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.message_header, buffer(offset, 0))
    local index = a2x_equities_snapshot_amd_v1_3_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_snapshot_amd_v1_3_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_snapshot_amd_v1_3_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
a2x_equities_snapshot_amd_v1_3_2.message = {}

-- Display: Message
a2x_equities_snapshot_amd_v1_3_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
a2x_equities_snapshot_amd_v1_3_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = a2x_equities_snapshot_amd_v1_3_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = a2x_equities_snapshot_amd_v1_3_2.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
a2x_equities_snapshot_amd_v1_3_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.message, buffer(offset, 0))
    local current = a2x_equities_snapshot_amd_v1_3_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = a2x_equities_snapshot_amd_v1_3_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    a2x_equities_snapshot_amd_v1_3_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
a2x_equities_snapshot_amd_v1_3_2.message_count = {}

-- Size: Message Count
a2x_equities_snapshot_amd_v1_3_2.message_count.size = 1

-- Display: Message Count
a2x_equities_snapshot_amd_v1_3_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
a2x_equities_snapshot_amd_v1_3_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_snapshot_amd_v1_3_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_snapshot_amd_v1_3_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_snapshot_amd_v1_3_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Packet
a2x_equities_snapshot_amd_v1_3_2.packet = {}

-- Dissect Packet
a2x_equities_snapshot_amd_v1_3_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = a2x_equities_snapshot_amd_v1_3_2.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = a2x_equities_snapshot_amd_v1_3_2.message.dissect(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_a2x_equities_snapshot_amd_v1_3_2.init()
end

-- Dissector for A2X Equities Snapshot Amd 1.3.2
function omi_a2x_equities_snapshot_amd_v1_3_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_a2x_equities_snapshot_amd_v1_3_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_a2x_equities_snapshot_amd_v1_3_2, buffer(), omi_a2x_equities_snapshot_amd_v1_3_2.description, "("..buffer:len().." Bytes)")
  return a2x_equities_snapshot_amd_v1_3_2.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_a2x_equities_snapshot_amd_v1_3_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
a2x_equities_snapshot_amd_v1_3_2.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for A2X Equities Snapshot Amd 1.3.2
local function omi_a2x_equities_snapshot_amd_v1_3_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not a2x_equities_snapshot_amd_v1_3_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_a2x_equities_snapshot_amd_v1_3_2
  omi_a2x_equities_snapshot_amd_v1_3_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for A2X Equities Snapshot Amd 1.3.2
omi_a2x_equities_snapshot_amd_v1_3_2:register_heuristic("udp", omi_a2x_equities_snapshot_amd_v1_3_2_heuristic)

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
