-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis Equities Smdf Amd 4.0 Protocol
local omi_aquis_equities_smdf_amd_v4_0 = Proto("Aquis.Equities.Smdf.Amd.v4.0.Lua", "Aquis Equities Smdf Amd 4.0")

-- Protocol table
local aquis_equities_smdf_amd_v4_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis Equities Smdf Amd 4.0 Fields
omi_aquis_equities_smdf_amd_v4_0.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "aquis.equities.smdf.amd.v4.0.closingbuyqty", ftypes.UINT32)
omi_aquis_equities_smdf_amd_v4_0.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "aquis.equities.smdf.amd.v4.0.closingsellqty", ftypes.UINT32)
omi_aquis_equities_smdf_amd_v4_0.fields.entries = ProtoField.new("Entries", "aquis.equities.smdf.amd.v4.0.entries", ftypes.UINT16)
omi_aquis_equities_smdf_amd_v4_0.fields.indicative_price = ProtoField.new("Indicative Price", "aquis.equities.smdf.amd.v4.0.indicativeprice", ftypes.UINT64)
omi_aquis_equities_smdf_amd_v4_0.fields.mac_open = ProtoField.new("Mac Open", "aquis.equities.smdf.amd.v4.0.macopen", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_aquis_equities_smdf_amd_v4_0.fields.mac_run = ProtoField.new("Mac Run", "aquis.equities.smdf.amd.v4.0.macrun", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_aquis_equities_smdf_amd_v4_0.fields.market_flags = ProtoField.new("Market Flags", "aquis.equities.smdf.amd.v4.0.marketflags", ftypes.STRING)
omi_aquis_equities_smdf_amd_v4_0.fields.message = ProtoField.new("Message", "aquis.equities.smdf.amd.v4.0.message", ftypes.STRING)
omi_aquis_equities_smdf_amd_v4_0.fields.message_count = ProtoField.new("Message Count", "aquis.equities.smdf.amd.v4.0.messagecount", ftypes.UINT8)
omi_aquis_equities_smdf_amd_v4_0.fields.message_header = ProtoField.new("Message Header", "aquis.equities.smdf.amd.v4.0.messageheader", ftypes.STRING)
omi_aquis_equities_smdf_amd_v4_0.fields.msg_length = ProtoField.new("Msg Length", "aquis.equities.smdf.amd.v4.0.msglength", ftypes.UINT8)
omi_aquis_equities_smdf_amd_v4_0.fields.msg_type = ProtoField.new("Msg Type", "aquis.equities.smdf.amd.v4.0.msgtype", ftypes.UINT8)
omi_aquis_equities_smdf_amd_v4_0.fields.order_ref = ProtoField.new("Order Ref", "aquis.equities.smdf.amd.v4.0.orderref", ftypes.UINT32)
omi_aquis_equities_smdf_amd_v4_0.fields.packet = ProtoField.new("Packet", "aquis.equities.smdf.amd.v4.0.packet", ftypes.STRING)
omi_aquis_equities_smdf_amd_v4_0.fields.payload = ProtoField.new("Payload", "aquis.equities.smdf.amd.v4.0.payload", ftypes.STRING)
omi_aquis_equities_smdf_amd_v4_0.fields.price = ProtoField.new("Price", "aquis.equities.smdf.amd.v4.0.price", ftypes.UINT64)
omi_aquis_equities_smdf_amd_v4_0.fields.quantity = ProtoField.new("Quantity", "aquis.equities.smdf.amd.v4.0.quantity", ftypes.UINT32)
omi_aquis_equities_smdf_amd_v4_0.fields.reserved = ProtoField.new("Reserved", "aquis.equities.smdf.amd.v4.0.reserved", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_aquis_equities_smdf_amd_v4_0.fields.security_count = ProtoField.new("Security Count", "aquis.equities.smdf.amd.v4.0.securitycount", ftypes.UINT16)
omi_aquis_equities_smdf_amd_v4_0.fields.security_id = ProtoField.new("Security Id", "aquis.equities.smdf.amd.v4.0.securityid", ftypes.UINT16)
omi_aquis_equities_smdf_amd_v4_0.fields.seq_no = ProtoField.new("Seq No", "aquis.equities.smdf.amd.v4.0.seqno", ftypes.UINT32)
omi_aquis_equities_smdf_amd_v4_0.fields.side = ProtoField.new("Side", "aquis.equities.smdf.amd.v4.0.side", ftypes.UINT8)
omi_aquis_equities_smdf_amd_v4_0.fields.stream_seq_no = ProtoField.new("Stream Seq No", "aquis.equities.smdf.amd.v4.0.streamseqno", ftypes.UINT32)
omi_aquis_equities_smdf_amd_v4_0.fields.timestamp = ProtoField.new("Timestamp", "aquis.equities.smdf.amd.v4.0.timestamp", ftypes.UINT64)
omi_aquis_equities_smdf_amd_v4_0.fields.trading = ProtoField.new("Trading", "aquis.equities.smdf.amd.v4.0.trading", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_aquis_equities_smdf_amd_v4_0.fields.trading_status = ProtoField.new("Trading Status", "aquis.equities.smdf.amd.v4.0.tradingstatus", ftypes.UINT8)

-- Aquis Equities Amd Smdf 4.0 Application Messages
omi_aquis_equities_smdf_amd_v4_0.fields.book_entry_message = ProtoField.new("Book Entry Message", "aquis.equities.smdf.amd.v4.0.bookentrymessage", ftypes.STRING)
omi_aquis_equities_smdf_amd_v4_0.fields.book_status_message = ProtoField.new("Book Status Message", "aquis.equities.smdf.amd.v4.0.bookstatusmessage", ftypes.STRING)
omi_aquis_equities_smdf_amd_v4_0.fields.ma_c_book_entry_message = ProtoField.new("Ma C Book Entry Message", "aquis.equities.smdf.amd.v4.0.macbookentrymessage", ftypes.STRING)
omi_aquis_equities_smdf_amd_v4_0.fields.snapshot_start_message = ProtoField.new("Snapshot Start Message", "aquis.equities.smdf.amd.v4.0.snapshotstartmessage", ftypes.STRING)

-- Aquis Equities Smdf Amd 4.0 generated fields
omi_aquis_equities_smdf_amd_v4_0.fields.message_index = ProtoField.new("Message Index", "aquis.equities.smdf.amd.v4.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis Equities Smdf Amd 4.0 Element Dissection Options
show.book_entry_message = true
show.book_status_message = true
show.ma_c_book_entry_message = true
show.market_flags = true
show.message = true
show.message_header = true
show.packet = true
show.snapshot_start_message = true
show.payload = false

-- Register Aquis Equities Smdf Amd 4.0 Show Options
omi_aquis_equities_smdf_amd_v4_0.prefs.show_book_entry_message = Pref.bool("Show Book Entry Message", show.book_entry_message, "Parse and add Book Entry Message to protocol tree")
omi_aquis_equities_smdf_amd_v4_0.prefs.show_book_status_message = Pref.bool("Show Book Status Message", show.book_status_message, "Parse and add Book Status Message to protocol tree")
omi_aquis_equities_smdf_amd_v4_0.prefs.show_ma_c_book_entry_message = Pref.bool("Show Ma C Book Entry Message", show.ma_c_book_entry_message, "Parse and add Ma C Book Entry Message to protocol tree")
omi_aquis_equities_smdf_amd_v4_0.prefs.show_market_flags = Pref.bool("Show Market Flags", show.market_flags, "Parse and add Market Flags to protocol tree")
omi_aquis_equities_smdf_amd_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_aquis_equities_smdf_amd_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_aquis_equities_smdf_amd_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_aquis_equities_smdf_amd_v4_0.prefs.show_snapshot_start_message = Pref.bool("Show Snapshot Start Message", show.snapshot_start_message, "Parse and add Snapshot Start Message to protocol tree")
omi_aquis_equities_smdf_amd_v4_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_aquis_equities_smdf_amd_v4_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.book_entry_message ~= omi_aquis_equities_smdf_amd_v4_0.prefs.show_book_entry_message then
    show.book_entry_message = omi_aquis_equities_smdf_amd_v4_0.prefs.show_book_entry_message
    changed = true
  end
  if show.book_status_message ~= omi_aquis_equities_smdf_amd_v4_0.prefs.show_book_status_message then
    show.book_status_message = omi_aquis_equities_smdf_amd_v4_0.prefs.show_book_status_message
    changed = true
  end
  if show.ma_c_book_entry_message ~= omi_aquis_equities_smdf_amd_v4_0.prefs.show_ma_c_book_entry_message then
    show.ma_c_book_entry_message = omi_aquis_equities_smdf_amd_v4_0.prefs.show_ma_c_book_entry_message
    changed = true
  end
  if show.market_flags ~= omi_aquis_equities_smdf_amd_v4_0.prefs.show_market_flags then
    show.market_flags = omi_aquis_equities_smdf_amd_v4_0.prefs.show_market_flags
    changed = true
  end
  if show.message ~= omi_aquis_equities_smdf_amd_v4_0.prefs.show_message then
    show.message = omi_aquis_equities_smdf_amd_v4_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_aquis_equities_smdf_amd_v4_0.prefs.show_message_header then
    show.message_header = omi_aquis_equities_smdf_amd_v4_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_aquis_equities_smdf_amd_v4_0.prefs.show_packet then
    show.packet = omi_aquis_equities_smdf_amd_v4_0.prefs.show_packet
    changed = true
  end
  if show.snapshot_start_message ~= omi_aquis_equities_smdf_amd_v4_0.prefs.show_snapshot_start_message then
    show.snapshot_start_message = omi_aquis_equities_smdf_amd_v4_0.prefs.show_snapshot_start_message
    changed = true
  end
  if show.payload ~= omi_aquis_equities_smdf_amd_v4_0.prefs.show_payload then
    show.payload = omi_aquis_equities_smdf_amd_v4_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Aquis Equities Smdf Amd 4.0
-----------------------------------------------------------------------

-- Order Ref
aquis_equities_smdf_amd_v4_0.order_ref = {}

-- Size: Order Ref
aquis_equities_smdf_amd_v4_0.order_ref.size = 4

-- Display: Order Ref
aquis_equities_smdf_amd_v4_0.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
aquis_equities_smdf_amd_v4_0.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Price
aquis_equities_smdf_amd_v4_0.price = {}

-- Size: Price
aquis_equities_smdf_amd_v4_0.price.size = 8

-- Display: Price
aquis_equities_smdf_amd_v4_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
aquis_equities_smdf_amd_v4_0.price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_smdf_amd_v4_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
aquis_equities_smdf_amd_v4_0.quantity = {}

-- Size: Quantity
aquis_equities_smdf_amd_v4_0.quantity.size = 4

-- Display: Quantity
aquis_equities_smdf_amd_v4_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
aquis_equities_smdf_amd_v4_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Side
aquis_equities_smdf_amd_v4_0.side = {}

-- Size: Side
aquis_equities_smdf_amd_v4_0.side.size = 1

-- Display: Side
aquis_equities_smdf_amd_v4_0.side.display = function(value)
  if value == 1 then
    return "Side: Buy Order (1)"
  end
  if value == 2 then
    return "Side: Sell Order (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
aquis_equities_smdf_amd_v4_0.side.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.side, range, value, display)

  return offset + length, value
end

-- Security Id
aquis_equities_smdf_amd_v4_0.security_id = {}

-- Size: Security Id
aquis_equities_smdf_amd_v4_0.security_id.size = 2

-- Display: Security Id
aquis_equities_smdf_amd_v4_0.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
aquis_equities_smdf_amd_v4_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Ma C Book Entry Message
aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message = {}

-- Size: Ma C Book Entry Message
aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message.size =
  aquis_equities_smdf_amd_v4_0.security_id.size + 
  aquis_equities_smdf_amd_v4_0.side.size + 
  aquis_equities_smdf_amd_v4_0.quantity.size + 
  aquis_equities_smdf_amd_v4_0.price.size + 
  aquis_equities_smdf_amd_v4_0.order_ref.size

-- Display: Ma C Book Entry Message
aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ma C Book Entry Message
aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_smdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_smdf_amd_v4_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_smdf_amd_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_smdf_amd_v4_0.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_equities_smdf_amd_v4_0.order_ref.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ma C Book Entry Message
aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.ma_c_book_entry_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.ma_c_book_entry_message, buffer(offset, 0))
    local index = aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Book Entry Message
aquis_equities_smdf_amd_v4_0.book_entry_message = {}

-- Size: Book Entry Message
aquis_equities_smdf_amd_v4_0.book_entry_message.size =
  aquis_equities_smdf_amd_v4_0.security_id.size + 
  aquis_equities_smdf_amd_v4_0.side.size + 
  aquis_equities_smdf_amd_v4_0.quantity.size + 
  aquis_equities_smdf_amd_v4_0.price.size + 
  aquis_equities_smdf_amd_v4_0.order_ref.size

-- Display: Book Entry Message
aquis_equities_smdf_amd_v4_0.book_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Entry Message
aquis_equities_smdf_amd_v4_0.book_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_smdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_smdf_amd_v4_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_smdf_amd_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_smdf_amd_v4_0.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_equities_smdf_amd_v4_0.order_ref.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Entry Message
aquis_equities_smdf_amd_v4_0.book_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.book_entry_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.book_entry_message, buffer(offset, 0))
    local index = aquis_equities_smdf_amd_v4_0.book_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_smdf_amd_v4_0.book_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_smdf_amd_v4_0.book_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Price
aquis_equities_smdf_amd_v4_0.indicative_price = {}

-- Size: Indicative Price
aquis_equities_smdf_amd_v4_0.indicative_price.size = 8

-- Display: Indicative Price
aquis_equities_smdf_amd_v4_0.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
aquis_equities_smdf_amd_v4_0.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.indicative_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_smdf_amd_v4_0.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Closing Sell Qty
aquis_equities_smdf_amd_v4_0.closing_sell_qty = {}

-- Size: Closing Sell Qty
aquis_equities_smdf_amd_v4_0.closing_sell_qty.size = 4

-- Display: Closing Sell Qty
aquis_equities_smdf_amd_v4_0.closing_sell_qty.display = function(value)
  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
aquis_equities_smdf_amd_v4_0.closing_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.closing_sell_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.closing_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Closing Buy Qty
aquis_equities_smdf_amd_v4_0.closing_buy_qty = {}

-- Size: Closing Buy Qty
aquis_equities_smdf_amd_v4_0.closing_buy_qty.size = 4

-- Display: Closing Buy Qty
aquis_equities_smdf_amd_v4_0.closing_buy_qty.display = function(value)
  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
aquis_equities_smdf_amd_v4_0.closing_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.closing_buy_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.closing_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Entries
aquis_equities_smdf_amd_v4_0.entries = {}

-- Size: Entries
aquis_equities_smdf_amd_v4_0.entries.size = 2

-- Display: Entries
aquis_equities_smdf_amd_v4_0.entries.display = function(value)
  return "Entries: "..value
end

-- Dissect: Entries
aquis_equities_smdf_amd_v4_0.entries.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.entries, range, value, display)

  return offset + length, value
end

-- Market Flags
aquis_equities_smdf_amd_v4_0.market_flags = {}

-- Size: Market Flags
aquis_equities_smdf_amd_v4_0.market_flags.size = 1

-- Display: Market Flags
aquis_equities_smdf_amd_v4_0.market_flags.display = function(range, value, packet, parent)
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
aquis_equities_smdf_amd_v4_0.market_flags.bits = function(range, value, packet, parent)

  -- Trading: 1 Bit
  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.trading, range, value)

  -- Mac Open: 1 Bit
  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.mac_open, range, value)

  -- Mac Run: 1 Bit
  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.mac_run, range, value)

  -- Reserved: 5 Bit
  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.reserved, range, value)
end

-- Dissect: Market Flags
aquis_equities_smdf_amd_v4_0.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_smdf_amd_v4_0.market_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.market_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.market_flags, range, display)

  if show.market_flags then
    aquis_equities_smdf_amd_v4_0.market_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trading Status
aquis_equities_smdf_amd_v4_0.trading_status = {}

-- Size: Trading Status
aquis_equities_smdf_amd_v4_0.trading_status.size = 1

-- Display: Trading Status
aquis_equities_smdf_amd_v4_0.trading_status.display = function(value)
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
aquis_equities_smdf_amd_v4_0.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Book Status Message
aquis_equities_smdf_amd_v4_0.book_status_message = {}

-- Size: Book Status Message
aquis_equities_smdf_amd_v4_0.book_status_message.size =
  aquis_equities_smdf_amd_v4_0.security_id.size + 
  aquis_equities_smdf_amd_v4_0.trading_status.size + 
  aquis_equities_smdf_amd_v4_0.market_flags.size + 
  aquis_equities_smdf_amd_v4_0.entries.size + 
  aquis_equities_smdf_amd_v4_0.closing_buy_qty.size + 
  aquis_equities_smdf_amd_v4_0.closing_sell_qty.size + 
  aquis_equities_smdf_amd_v4_0.indicative_price.size

-- Display: Book Status Message
aquis_equities_smdf_amd_v4_0.book_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Status Message
aquis_equities_smdf_amd_v4_0.book_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_smdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = aquis_equities_smdf_amd_v4_0.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = aquis_equities_smdf_amd_v4_0.market_flags.dissect(buffer, index, packet, parent)

  -- Entries: u16
  index, entries = aquis_equities_smdf_amd_v4_0.entries.dissect(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = aquis_equities_smdf_amd_v4_0.closing_buy_qty.dissect(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = aquis_equities_smdf_amd_v4_0.closing_sell_qty.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = aquis_equities_smdf_amd_v4_0.indicative_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Status Message
aquis_equities_smdf_amd_v4_0.book_status_message.dissect = function(buffer, offset, packet, parent)
  if show.book_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.book_status_message, buffer(offset, 0))
    local index = aquis_equities_smdf_amd_v4_0.book_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_smdf_amd_v4_0.book_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_smdf_amd_v4_0.book_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp
aquis_equities_smdf_amd_v4_0.timestamp = {}

-- Size: Timestamp
aquis_equities_smdf_amd_v4_0.timestamp.size = 8

-- Display: Timestamp
aquis_equities_smdf_amd_v4_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
aquis_equities_smdf_amd_v4_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_smdf_amd_v4_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Security Count
aquis_equities_smdf_amd_v4_0.security_count = {}

-- Size: Security Count
aquis_equities_smdf_amd_v4_0.security_count.size = 2

-- Display: Security Count
aquis_equities_smdf_amd_v4_0.security_count.display = function(value)
  return "Security Count: "..value
end

-- Dissect: Security Count
aquis_equities_smdf_amd_v4_0.security_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.security_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.security_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.security_count, range, value, display)

  return offset + length, value
end

-- Stream Seq No
aquis_equities_smdf_amd_v4_0.stream_seq_no = {}

-- Size: Stream Seq No
aquis_equities_smdf_amd_v4_0.stream_seq_no.size = 4

-- Display: Stream Seq No
aquis_equities_smdf_amd_v4_0.stream_seq_no.display = function(value)
  return "Stream Seq No: "..value
end

-- Dissect: Stream Seq No
aquis_equities_smdf_amd_v4_0.stream_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.stream_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_smdf_amd_v4_0.stream_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.stream_seq_no, range, value, display)

  return offset + length, value
end

-- Snapshot Start Message
aquis_equities_smdf_amd_v4_0.snapshot_start_message = {}

-- Size: Snapshot Start Message
aquis_equities_smdf_amd_v4_0.snapshot_start_message.size =
  aquis_equities_smdf_amd_v4_0.stream_seq_no.size + 
  aquis_equities_smdf_amd_v4_0.security_count.size + 
  aquis_equities_smdf_amd_v4_0.timestamp.size

-- Display: Snapshot Start Message
aquis_equities_smdf_amd_v4_0.snapshot_start_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Start Message
aquis_equities_smdf_amd_v4_0.snapshot_start_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Seq No: u32
  index, stream_seq_no = aquis_equities_smdf_amd_v4_0.stream_seq_no.dissect(buffer, index, packet, parent)

  -- Security Count: u16
  index, security_count = aquis_equities_smdf_amd_v4_0.security_count.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_smdf_amd_v4_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Start Message
aquis_equities_smdf_amd_v4_0.snapshot_start_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_start_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.snapshot_start_message, buffer(offset, 0))
    local index = aquis_equities_smdf_amd_v4_0.snapshot_start_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_smdf_amd_v4_0.snapshot_start_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_smdf_amd_v4_0.snapshot_start_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
aquis_equities_smdf_amd_v4_0.payload = {}

-- Size: Payload
aquis_equities_smdf_amd_v4_0.payload.size = function(buffer, offset, msg_type)
  -- Size of Snapshot Start Message
  if msg_type == 10 then
    return aquis_equities_smdf_amd_v4_0.snapshot_start_message.size
  end
  -- Size of Book Status Message
  if msg_type == 11 then
    return aquis_equities_smdf_amd_v4_0.book_status_message.size
  end
  -- Size of Book Entry Message
  if msg_type == 12 then
    return aquis_equities_smdf_amd_v4_0.book_entry_message.size
  end
  -- Size of Ma C Book Entry Message
  if msg_type == 18 then
    return aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message.size
  end

  return 0
end

-- Display: Payload
aquis_equities_smdf_amd_v4_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
aquis_equities_smdf_amd_v4_0.payload.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Snapshot Start Message
  if msg_type == 10 then
    return aquis_equities_smdf_amd_v4_0.snapshot_start_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Book Status Message
  if msg_type == 11 then
    return aquis_equities_smdf_amd_v4_0.book_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Book Entry Message
  if msg_type == 12 then
    return aquis_equities_smdf_amd_v4_0.book_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ma C Book Entry Message
  if msg_type == 18 then
    return aquis_equities_smdf_amd_v4_0.ma_c_book_entry_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
aquis_equities_smdf_amd_v4_0.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return aquis_equities_smdf_amd_v4_0.payload.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = aquis_equities_smdf_amd_v4_0.payload.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = aquis_equities_smdf_amd_v4_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.payload, range, display)

  return aquis_equities_smdf_amd_v4_0.payload.branches(buffer, offset, packet, parent, msg_type)
end

-- Seq No
aquis_equities_smdf_amd_v4_0.seq_no = {}

-- Size: Seq No
aquis_equities_smdf_amd_v4_0.seq_no.size = 4

-- Display: Seq No
aquis_equities_smdf_amd_v4_0.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_equities_smdf_amd_v4_0.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_smdf_amd_v4_0.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_equities_smdf_amd_v4_0.msg_length = {}

-- Size: Msg Length
aquis_equities_smdf_amd_v4_0.msg_length.size = 1

-- Display: Msg Length
aquis_equities_smdf_amd_v4_0.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_equities_smdf_amd_v4_0.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_smdf_amd_v4_0.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_equities_smdf_amd_v4_0.msg_type = {}

-- Size: Msg Type
aquis_equities_smdf_amd_v4_0.msg_type.size = 1

-- Display: Msg Type
aquis_equities_smdf_amd_v4_0.msg_type.display = function(value)
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
aquis_equities_smdf_amd_v4_0.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_smdf_amd_v4_0.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Message Header
aquis_equities_smdf_amd_v4_0.message_header = {}

-- Size: Message Header
aquis_equities_smdf_amd_v4_0.message_header.size =
  aquis_equities_smdf_amd_v4_0.msg_type.size + 
  aquis_equities_smdf_amd_v4_0.msg_length.size + 
  aquis_equities_smdf_amd_v4_0.seq_no.size

-- Display: Message Header
aquis_equities_smdf_amd_v4_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_equities_smdf_amd_v4_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, msg_type = aquis_equities_smdf_amd_v4_0.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = aquis_equities_smdf_amd_v4_0.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = aquis_equities_smdf_amd_v4_0.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_equities_smdf_amd_v4_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.message_header, buffer(offset, 0))
    local index = aquis_equities_smdf_amd_v4_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_smdf_amd_v4_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_smdf_amd_v4_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_equities_smdf_amd_v4_0.message = {}

-- Display: Message
aquis_equities_smdf_amd_v4_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_equities_smdf_amd_v4_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_equities_smdf_amd_v4_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 4 branches
  index = aquis_equities_smdf_amd_v4_0.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_equities_smdf_amd_v4_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.message, buffer(offset, 0))
    local current = aquis_equities_smdf_amd_v4_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = aquis_equities_smdf_amd_v4_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_equities_smdf_amd_v4_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
aquis_equities_smdf_amd_v4_0.message_count = {}

-- Size: Message Count
aquis_equities_smdf_amd_v4_0.message_count.size = 1

-- Display: Message Count
aquis_equities_smdf_amd_v4_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
aquis_equities_smdf_amd_v4_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_smdf_amd_v4_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_smdf_amd_v4_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_smdf_amd_v4_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Packet
aquis_equities_smdf_amd_v4_0.packet = {}

-- Dissect Packet
aquis_equities_smdf_amd_v4_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = aquis_equities_smdf_amd_v4_0.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = aquis_equities_smdf_amd_v4_0.message.dissect(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_aquis_equities_smdf_amd_v4_0.init()
end

-- Dissector for Aquis Equities Smdf Amd 4.0
function omi_aquis_equities_smdf_amd_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_aquis_equities_smdf_amd_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_equities_smdf_amd_v4_0, buffer(), omi_aquis_equities_smdf_amd_v4_0.description, "("..buffer:len().." Bytes)")
  return aquis_equities_smdf_amd_v4_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_aquis_equities_smdf_amd_v4_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
aquis_equities_smdf_amd_v4_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Aquis Equities Smdf Amd 4.0
local function omi_aquis_equities_smdf_amd_v4_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_equities_smdf_amd_v4_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_equities_smdf_amd_v4_0
  omi_aquis_equities_smdf_amd_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis Equities Smdf Amd 4.0
omi_aquis_equities_smdf_amd_v4_0:register_heuristic("udp", omi_aquis_equities_smdf_amd_v4_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 4.0
--   Date: Friday, August 1, 2025
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
