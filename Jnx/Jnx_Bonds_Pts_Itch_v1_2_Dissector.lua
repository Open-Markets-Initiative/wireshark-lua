-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jnx Bonds Pts Itch 1.2 Protocol
local omi_jnx_bonds_pts_itch_v1_2 = Proto("Jnx.Bonds.Pts.Itch.v1.2.Lua", "Jnx Bonds Pts Itch 1.2")

-- Protocol table
local jnx_bonds_pts_itch_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jnx Bonds Pts Itch 1.2 Fields
omi_jnx_bonds_pts_itch_v1_2.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "jnx.bonds.pts.itch.v1.2.buysellindicator", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.executed_quantity = ProtoField.new("Executed Quantity", "jnx.bonds.pts.itch.v1.2.executedquantity", ftypes.UINT32)
omi_jnx_bonds_pts_itch_v1_2.fields.group = ProtoField.new("Group", "jnx.bonds.pts.itch.v1.2.group", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "jnx.bonds.pts.itch.v1.2.lowerpricelimit", ftypes.DOUBLE)
omi_jnx_bonds_pts_itch_v1_2.fields.match_number = ProtoField.new("Match Number", "jnx.bonds.pts.itch.v1.2.matchnumber", ftypes.UINT64)
omi_jnx_bonds_pts_itch_v1_2.fields.message = ProtoField.new("Message", "jnx.bonds.pts.itch.v1.2.message", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.message_count = ProtoField.new("Message Count", "jnx.bonds.pts.itch.v1.2.messagecount", ftypes.UINT16)
omi_jnx_bonds_pts_itch_v1_2.fields.message_header = ProtoField.new("Message Header", "jnx.bonds.pts.itch.v1.2.messageheader", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.message_length = ProtoField.new("Message Length", "jnx.bonds.pts.itch.v1.2.messagelength", ftypes.UINT16)
omi_jnx_bonds_pts_itch_v1_2.fields.message_type = ProtoField.new("Message Type", "jnx.bonds.pts.itch.v1.2.messagetype", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.new_order_number = ProtoField.new("New Order Number", "jnx.bonds.pts.itch.v1.2.newordernumber", ftypes.UINT64)
omi_jnx_bonds_pts_itch_v1_2.fields.order_number = ProtoField.new("Order Number", "jnx.bonds.pts.itch.v1.2.ordernumber", ftypes.UINT64)
omi_jnx_bonds_pts_itch_v1_2.fields.orderbook_code = ProtoField.new("Orderbook Code", "jnx.bonds.pts.itch.v1.2.orderbookcode", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.orderbook_id = ProtoField.new("Orderbook Id", "jnx.bonds.pts.itch.v1.2.orderbookid", ftypes.UINT32)
omi_jnx_bonds_pts_itch_v1_2.fields.original_order_number = ProtoField.new("Original Order Number", "jnx.bonds.pts.itch.v1.2.originalordernumber", ftypes.UINT64)
omi_jnx_bonds_pts_itch_v1_2.fields.packet = ProtoField.new("Packet", "jnx.bonds.pts.itch.v1.2.packet", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.packet_header = ProtoField.new("Packet Header", "jnx.bonds.pts.itch.v1.2.packetheader", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.payload = ProtoField.new("Payload", "jnx.bonds.pts.itch.v1.2.payload", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.price = ProtoField.new("Price", "jnx.bonds.pts.itch.v1.2.price", ftypes.DOUBLE)
omi_jnx_bonds_pts_itch_v1_2.fields.price_decimals = ProtoField.new("Price Decimals", "jnx.bonds.pts.itch.v1.2.pricedecimals", ftypes.UINT32)
omi_jnx_bonds_pts_itch_v1_2.fields.price_start = ProtoField.new("Price Start", "jnx.bonds.pts.itch.v1.2.pricestart", ftypes.DOUBLE)
omi_jnx_bonds_pts_itch_v1_2.fields.price_tick_size = ProtoField.new("Price Tick Size", "jnx.bonds.pts.itch.v1.2.priceticksize", ftypes.UINT32)
omi_jnx_bonds_pts_itch_v1_2.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "jnx.bonds.pts.itch.v1.2.priceticksizetableid", ftypes.UINT32)
omi_jnx_bonds_pts_itch_v1_2.fields.quantity = ProtoField.new("Quantity", "jnx.bonds.pts.itch.v1.2.quantity", ftypes.UINT32)
omi_jnx_bonds_pts_itch_v1_2.fields.round_lot_size = ProtoField.new("Round Lot Size", "jnx.bonds.pts.itch.v1.2.roundlotsize", ftypes.UINT32)
omi_jnx_bonds_pts_itch_v1_2.fields.sequence_number = ProtoField.new("Sequence Number", "jnx.bonds.pts.itch.v1.2.sequencenumber", ftypes.UINT64)
omi_jnx_bonds_pts_itch_v1_2.fields.session = ProtoField.new("Session", "jnx.bonds.pts.itch.v1.2.session", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.system_event = ProtoField.new("System Event", "jnx.bonds.pts.itch.v1.2.systemevent", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "jnx.bonds.pts.itch.v1.2.timestampnanoseconds", ftypes.UINT32)
omi_jnx_bonds_pts_itch_v1_2.fields.timestamp_seconds = ProtoField.new("Timestamp Seconds", "jnx.bonds.pts.itch.v1.2.timestampseconds", ftypes.UINT32)
omi_jnx_bonds_pts_itch_v1_2.fields.trading_state = ProtoField.new("Trading State", "jnx.bonds.pts.itch.v1.2.tradingstate", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "jnx.bonds.pts.itch.v1.2.upperpricelimit", ftypes.DOUBLE)

-- Jnx Bonds Pts Itch 1.2 messages
omi_jnx_bonds_pts_itch_v1_2.fields.order_added_message = ProtoField.new("Order Added Message", "jnx.bonds.pts.itch.v1.2.orderaddedmessage", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "jnx.bonds.pts.itch.v1.2.orderdeletedmessage", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.order_executed_message = ProtoField.new("Order Executed Message", "jnx.bonds.pts.itch.v1.2.orderexecutedmessage", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "jnx.bonds.pts.itch.v1.2.orderreplacedmessage", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "jnx.bonds.pts.itch.v1.2.orderbookdirectorymessage", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "jnx.bonds.pts.itch.v1.2.priceticksizemessage", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.system_event_message = ProtoField.new("System Event Message", "jnx.bonds.pts.itch.v1.2.systemeventmessage", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.timestamp_seconds_message = ProtoField.new("Timestamp Seconds Message", "jnx.bonds.pts.itch.v1.2.timestampsecondsmessage", ftypes.STRING)
omi_jnx_bonds_pts_itch_v1_2.fields.trading_state_message = ProtoField.new("Trading State Message", "jnx.bonds.pts.itch.v1.2.tradingstatemessage", ftypes.STRING)

-- Jnx Bonds Pts Itch 1.2 generated fields
omi_jnx_bonds_pts_itch_v1_2.fields.message_index = ProtoField.new("Message Index", "jnx.bonds.pts.itch.v1.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jnx Bonds Pts Itch 1.2 Element Dissection Options
show.message = true
show.message_header = true
show.order_added_message = true
show.order_deleted_message = true
show.order_executed_message = true
show.order_replaced_message = true
show.orderbook_directory_message = true
show.packet = true
show.packet_header = true
show.price_tick_size_message = true
show.system_event_message = true
show.timestamp_seconds_message = true
show.trading_state_message = true
show.payload = false

-- Register Jnx Bonds Pts Itch 1.2 Show Options
omi_jnx_bonds_pts_itch_v1_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_added_message = Pref.bool("Show Order Added Message", show.order_added_message, "Parse and add Order Added Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_orderbook_directory_message = Pref.bool("Show Orderbook Directory Message", show.orderbook_directory_message, "Parse and add Orderbook Directory Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_price_tick_size_message = Pref.bool("Show Price Tick Size Message", show.price_tick_size_message, "Parse and add Price Tick Size Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_timestamp_seconds_message = Pref.bool("Show Timestamp Seconds Message", show.timestamp_seconds_message, "Parse and add Timestamp Seconds Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_trading_state_message = Pref.bool("Show Trading State Message", show.trading_state_message, "Parse and add Trading State Message to protocol tree")
omi_jnx_bonds_pts_itch_v1_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_jnx_bonds_pts_itch_v1_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_message then
    show.message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_message_header then
    show.message_header = omi_jnx_bonds_pts_itch_v1_2.prefs.show_message_header
    changed = true
  end
  if show.order_added_message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_added_message then
    show.order_added_message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_added_message
    changed = true
  end
  if show.order_deleted_message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_deleted_message then
    show.order_deleted_message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_executed_message then
    show.order_executed_message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_executed_message
    changed = true
  end
  if show.order_replaced_message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_replaced_message then
    show.order_replaced_message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_order_replaced_message
    changed = true
  end
  if show.orderbook_directory_message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_orderbook_directory_message then
    show.orderbook_directory_message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_orderbook_directory_message
    changed = true
  end
  if show.packet ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_packet then
    show.packet = omi_jnx_bonds_pts_itch_v1_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_packet_header then
    show.packet_header = omi_jnx_bonds_pts_itch_v1_2.prefs.show_packet_header
    changed = true
  end
  if show.price_tick_size_message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_price_tick_size_message then
    show.price_tick_size_message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_price_tick_size_message
    changed = true
  end
  if show.system_event_message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_system_event_message then
    show.system_event_message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_system_event_message
    changed = true
  end
  if show.timestamp_seconds_message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_timestamp_seconds_message then
    show.timestamp_seconds_message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_timestamp_seconds_message
    changed = true
  end
  if show.trading_state_message ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_trading_state_message then
    show.trading_state_message = omi_jnx_bonds_pts_itch_v1_2.prefs.show_trading_state_message
    changed = true
  end
  if show.payload ~= omi_jnx_bonds_pts_itch_v1_2.prefs.show_payload then
    show.payload = omi_jnx_bonds_pts_itch_v1_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Dissect Jnx Bonds Pts Itch 1.2
-----------------------------------------------------------------------

-- Price
jnx_bonds_pts_itch_v1_2.price = {}

-- Size: Price
jnx_bonds_pts_itch_v1_2.price.size = 4

-- Display: Price
jnx_bonds_pts_itch_v1_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
jnx_bonds_pts_itch_v1_2.price.translate = function(raw)
  return raw/1000
end

-- Dissect: Price
jnx_bonds_pts_itch_v1_2.price.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = jnx_bonds_pts_itch_v1_2.price.translate(raw)
  local display = jnx_bonds_pts_itch_v1_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
jnx_bonds_pts_itch_v1_2.quantity = {}

-- Size: Quantity
jnx_bonds_pts_itch_v1_2.quantity.size = 4

-- Display: Quantity
jnx_bonds_pts_itch_v1_2.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jnx_bonds_pts_itch_v1_2.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- New Order Number
jnx_bonds_pts_itch_v1_2.new_order_number = {}

-- Size: New Order Number
jnx_bonds_pts_itch_v1_2.new_order_number.size = 8

-- Display: New Order Number
jnx_bonds_pts_itch_v1_2.new_order_number.display = function(value)
  return "New Order Number: "..value
end

-- Dissect: New Order Number
jnx_bonds_pts_itch_v1_2.new_order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.new_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_bonds_pts_itch_v1_2.new_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.new_order_number, range, value, display)

  return offset + length, value
end

-- Original Order Number
jnx_bonds_pts_itch_v1_2.original_order_number = {}

-- Size: Original Order Number
jnx_bonds_pts_itch_v1_2.original_order_number.size = 8

-- Display: Original Order Number
jnx_bonds_pts_itch_v1_2.original_order_number.display = function(value)
  return "Original Order Number: "..value
end

-- Dissect: Original Order Number
jnx_bonds_pts_itch_v1_2.original_order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.original_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_bonds_pts_itch_v1_2.original_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.original_order_number, range, value, display)

  return offset + length, value
end

-- Timestamp Nanoseconds
jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds = {}

-- Size: Timestamp Nanoseconds
jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size = 4

-- Display: Timestamp Nanoseconds
jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.display = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Order Replaced Message
jnx_bonds_pts_itch_v1_2.order_replaced_message = {}

-- Size: Order Replaced Message
jnx_bonds_pts_itch_v1_2.order_replaced_message.size =
  jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size + 
  jnx_bonds_pts_itch_v1_2.original_order_number.size + 
  jnx_bonds_pts_itch_v1_2.new_order_number.size + 
  jnx_bonds_pts_itch_v1_2.quantity.size + 
  jnx_bonds_pts_itch_v1_2.price.size

-- Display: Order Replaced Message
jnx_bonds_pts_itch_v1_2.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
jnx_bonds_pts_itch_v1_2.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Original Order Number: 8 Byte Unsigned Fixed Width Integer
  index, original_order_number = jnx_bonds_pts_itch_v1_2.original_order_number.dissect(buffer, index, packet, parent)

  -- New Order Number: 8 Byte Unsigned Fixed Width Integer
  index, new_order_number = jnx_bonds_pts_itch_v1_2.new_order_number.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_bonds_pts_itch_v1_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = jnx_bonds_pts_itch_v1_2.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
jnx_bonds_pts_itch_v1_2.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.order_replaced_message, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Number
jnx_bonds_pts_itch_v1_2.order_number = {}

-- Size: Order Number
jnx_bonds_pts_itch_v1_2.order_number.size = 8

-- Display: Order Number
jnx_bonds_pts_itch_v1_2.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
jnx_bonds_pts_itch_v1_2.order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_bonds_pts_itch_v1_2.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Deleted Message
jnx_bonds_pts_itch_v1_2.order_deleted_message = {}

-- Size: Order Deleted Message
jnx_bonds_pts_itch_v1_2.order_deleted_message.size =
  jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size + 
  jnx_bonds_pts_itch_v1_2.order_number.size

-- Display: Order Deleted Message
jnx_bonds_pts_itch_v1_2.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
jnx_bonds_pts_itch_v1_2.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = jnx_bonds_pts_itch_v1_2.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
jnx_bonds_pts_itch_v1_2.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.order_deleted_message, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Match Number
jnx_bonds_pts_itch_v1_2.match_number = {}

-- Size: Match Number
jnx_bonds_pts_itch_v1_2.match_number.size = 8

-- Display: Match Number
jnx_bonds_pts_itch_v1_2.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
jnx_bonds_pts_itch_v1_2.match_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_bonds_pts_itch_v1_2.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.match_number, range, value, display)

  return offset + length, value
end

-- Executed Quantity
jnx_bonds_pts_itch_v1_2.executed_quantity = {}

-- Size: Executed Quantity
jnx_bonds_pts_itch_v1_2.executed_quantity.size = 4

-- Display: Executed Quantity
jnx_bonds_pts_itch_v1_2.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jnx_bonds_pts_itch_v1_2.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed Message
jnx_bonds_pts_itch_v1_2.order_executed_message = {}

-- Size: Order Executed Message
jnx_bonds_pts_itch_v1_2.order_executed_message.size =
  jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size + 
  jnx_bonds_pts_itch_v1_2.order_number.size + 
  jnx_bonds_pts_itch_v1_2.executed_quantity.size + 
  jnx_bonds_pts_itch_v1_2.match_number.size

-- Display: Order Executed Message
jnx_bonds_pts_itch_v1_2.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jnx_bonds_pts_itch_v1_2.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = jnx_bonds_pts_itch_v1_2.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = jnx_bonds_pts_itch_v1_2.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = jnx_bonds_pts_itch_v1_2.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jnx_bonds_pts_itch_v1_2.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.order_executed_message, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Group
jnx_bonds_pts_itch_v1_2.group = {}

-- Size: Group
jnx_bonds_pts_itch_v1_2.group.size = 4

-- Display: Group
jnx_bonds_pts_itch_v1_2.group.display = function(value)
  if value == "DJGB" then
    return "Group: Jgb Market (DJGB)"
  end

  return "Group: Unknown("..value..")"
end

-- Dissect: Group
jnx_bonds_pts_itch_v1_2.group.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_bonds_pts_itch_v1_2.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.group, range, value, display)

  return offset + length, value
end

-- Orderbook Id
jnx_bonds_pts_itch_v1_2.orderbook_id = {}

-- Size: Orderbook Id
jnx_bonds_pts_itch_v1_2.orderbook_id.size = 4

-- Display: Orderbook Id
jnx_bonds_pts_itch_v1_2.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
jnx_bonds_pts_itch_v1_2.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.orderbook_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
jnx_bonds_pts_itch_v1_2.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
jnx_bonds_pts_itch_v1_2.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
jnx_bonds_pts_itch_v1_2.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
jnx_bonds_pts_itch_v1_2.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_bonds_pts_itch_v1_2.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Order Added Message
jnx_bonds_pts_itch_v1_2.order_added_message = {}

-- Size: Order Added Message
jnx_bonds_pts_itch_v1_2.order_added_message.size =
  jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size + 
  jnx_bonds_pts_itch_v1_2.order_number.size + 
  jnx_bonds_pts_itch_v1_2.buy_sell_indicator.size + 
  jnx_bonds_pts_itch_v1_2.quantity.size + 
  jnx_bonds_pts_itch_v1_2.orderbook_id.size + 
  jnx_bonds_pts_itch_v1_2.group.size + 
  jnx_bonds_pts_itch_v1_2.price.size

-- Display: Order Added Message
jnx_bonds_pts_itch_v1_2.order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Message
jnx_bonds_pts_itch_v1_2.order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = jnx_bonds_pts_itch_v1_2.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = jnx_bonds_pts_itch_v1_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_bonds_pts_itch_v1_2.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Unsigned Fixed Width Integer
  index, orderbook_id = jnx_bonds_pts_itch_v1_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 1 values
  index, group = jnx_bonds_pts_itch_v1_2.group.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = jnx_bonds_pts_itch_v1_2.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Message
jnx_bonds_pts_itch_v1_2.order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.order_added_message, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading State
jnx_bonds_pts_itch_v1_2.trading_state = {}

-- Size: Trading State
jnx_bonds_pts_itch_v1_2.trading_state.size = 1

-- Display: Trading State
jnx_bonds_pts_itch_v1_2.trading_state.display = function(value)
  if value == "T" then
    return "Trading State: Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
jnx_bonds_pts_itch_v1_2.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_bonds_pts_itch_v1_2.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Trading State Message
jnx_bonds_pts_itch_v1_2.trading_state_message = {}

-- Size: Trading State Message
jnx_bonds_pts_itch_v1_2.trading_state_message.size =
  jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size + 
  jnx_bonds_pts_itch_v1_2.orderbook_id.size + 
  jnx_bonds_pts_itch_v1_2.group.size + 
  jnx_bonds_pts_itch_v1_2.trading_state.size

-- Display: Trading State Message
jnx_bonds_pts_itch_v1_2.trading_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading State Message
jnx_bonds_pts_itch_v1_2.trading_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Unsigned Fixed Width Integer
  index, orderbook_id = jnx_bonds_pts_itch_v1_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 1 values
  index, group = jnx_bonds_pts_itch_v1_2.group.dissect(buffer, index, packet, parent)

  -- Trading State: 1 Byte Ascii String Enum with 2 values
  index, trading_state = jnx_bonds_pts_itch_v1_2.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading State Message
jnx_bonds_pts_itch_v1_2.trading_state_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.trading_state_message, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.trading_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.trading_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.trading_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Lower Price Limit
jnx_bonds_pts_itch_v1_2.lower_price_limit = {}

-- Size: Lower Price Limit
jnx_bonds_pts_itch_v1_2.lower_price_limit.size = 4

-- Display: Lower Price Limit
jnx_bonds_pts_itch_v1_2.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Translate: Lower Price Limit
jnx_bonds_pts_itch_v1_2.lower_price_limit.translate = function(raw)
  return raw/1000
end

-- Dissect: Lower Price Limit
jnx_bonds_pts_itch_v1_2.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.lower_price_limit.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = jnx_bonds_pts_itch_v1_2.lower_price_limit.translate(raw)
  local display = jnx_bonds_pts_itch_v1_2.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
jnx_bonds_pts_itch_v1_2.upper_price_limit = {}

-- Size: Upper Price Limit
jnx_bonds_pts_itch_v1_2.upper_price_limit.size = 4

-- Display: Upper Price Limit
jnx_bonds_pts_itch_v1_2.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Translate: Upper Price Limit
jnx_bonds_pts_itch_v1_2.upper_price_limit.translate = function(raw)
  return raw/1000
end

-- Dissect: Upper Price Limit
jnx_bonds_pts_itch_v1_2.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.upper_price_limit.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = jnx_bonds_pts_itch_v1_2.upper_price_limit.translate(raw)
  local display = jnx_bonds_pts_itch_v1_2.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.upper_price_limit, range, value, display)

  return offset + length, value
end

-- Price Decimals
jnx_bonds_pts_itch_v1_2.price_decimals = {}

-- Size: Price Decimals
jnx_bonds_pts_itch_v1_2.price_decimals.size = 4

-- Display: Price Decimals
jnx_bonds_pts_itch_v1_2.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
jnx_bonds_pts_itch_v1_2.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
jnx_bonds_pts_itch_v1_2.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
jnx_bonds_pts_itch_v1_2.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
jnx_bonds_pts_itch_v1_2.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Dissect: Price Tick Size Table Id
jnx_bonds_pts_itch_v1_2.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Round Lot Size
jnx_bonds_pts_itch_v1_2.round_lot_size = {}

-- Size: Round Lot Size
jnx_bonds_pts_itch_v1_2.round_lot_size.size = 4

-- Display: Round Lot Size
jnx_bonds_pts_itch_v1_2.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
jnx_bonds_pts_itch_v1_2.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Orderbook Code
jnx_bonds_pts_itch_v1_2.orderbook_code = {}

-- Size: Orderbook Code
jnx_bonds_pts_itch_v1_2.orderbook_code.size = 12

-- Display: Orderbook Code
jnx_bonds_pts_itch_v1_2.orderbook_code.display = function(value)
  return "Orderbook Code: "..value
end

-- Dissect: Orderbook Code
jnx_bonds_pts_itch_v1_2.orderbook_code.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.orderbook_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_bonds_pts_itch_v1_2.orderbook_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.orderbook_code, range, value, display)

  return offset + length, value
end

-- Orderbook Directory Message
jnx_bonds_pts_itch_v1_2.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
jnx_bonds_pts_itch_v1_2.orderbook_directory_message.size =
  jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size + 
  jnx_bonds_pts_itch_v1_2.orderbook_id.size + 
  jnx_bonds_pts_itch_v1_2.orderbook_code.size + 
  jnx_bonds_pts_itch_v1_2.group.size + 
  jnx_bonds_pts_itch_v1_2.round_lot_size.size + 
  jnx_bonds_pts_itch_v1_2.price_tick_size_table_id.size + 
  jnx_bonds_pts_itch_v1_2.price_decimals.size + 
  jnx_bonds_pts_itch_v1_2.upper_price_limit.size + 
  jnx_bonds_pts_itch_v1_2.lower_price_limit.size

-- Display: Orderbook Directory Message
jnx_bonds_pts_itch_v1_2.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
jnx_bonds_pts_itch_v1_2.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Unsigned Fixed Width Integer
  index, orderbook_id = jnx_bonds_pts_itch_v1_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Orderbook Code: 12 Byte Ascii String
  index, orderbook_code = jnx_bonds_pts_itch_v1_2.orderbook_code.dissect(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 1 values
  index, group = jnx_bonds_pts_itch_v1_2.group.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = jnx_bonds_pts_itch_v1_2.round_lot_size.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: 4 Byte Unsigned Fixed Width Integer
  index, price_tick_size_table_id = jnx_bonds_pts_itch_v1_2.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: 4 Byte Unsigned Fixed Width Integer
  index, price_decimals = jnx_bonds_pts_itch_v1_2.price_decimals.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: 4 Byte Signed Fixed Width Integer
  index, upper_price_limit = jnx_bonds_pts_itch_v1_2.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: 4 Byte Signed Fixed Width Integer
  index, lower_price_limit = jnx_bonds_pts_itch_v1_2.lower_price_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
jnx_bonds_pts_itch_v1_2.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.orderbook_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.orderbook_directory_message, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Start
jnx_bonds_pts_itch_v1_2.price_start = {}

-- Size: Price Start
jnx_bonds_pts_itch_v1_2.price_start.size = 4

-- Display: Price Start
jnx_bonds_pts_itch_v1_2.price_start.display = function(value)
  return "Price Start: "..value
end

-- Translate: Price Start
jnx_bonds_pts_itch_v1_2.price_start.translate = function(raw)
  return raw/1000
end

-- Dissect: Price Start
jnx_bonds_pts_itch_v1_2.price_start.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.price_start.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = jnx_bonds_pts_itch_v1_2.price_start.translate(raw)
  local display = jnx_bonds_pts_itch_v1_2.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size
jnx_bonds_pts_itch_v1_2.price_tick_size = {}

-- Size: Price Tick Size
jnx_bonds_pts_itch_v1_2.price_tick_size.size = 4

-- Display: Price Tick Size
jnx_bonds_pts_itch_v1_2.price_tick_size.display = function(value)
  return "Price Tick Size: "..value
end

-- Dissect: Price Tick Size
jnx_bonds_pts_itch_v1_2.price_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.price_tick_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.price_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Price Tick Size Message
jnx_bonds_pts_itch_v1_2.price_tick_size_message = {}

-- Size: Price Tick Size Message
jnx_bonds_pts_itch_v1_2.price_tick_size_message.size =
  jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size + 
  jnx_bonds_pts_itch_v1_2.price_tick_size_table_id.size + 
  jnx_bonds_pts_itch_v1_2.price_tick_size.size + 
  jnx_bonds_pts_itch_v1_2.price_start.size

-- Display: Price Tick Size Message
jnx_bonds_pts_itch_v1_2.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
jnx_bonds_pts_itch_v1_2.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: 4 Byte Unsigned Fixed Width Integer
  index, price_tick_size_table_id = jnx_bonds_pts_itch_v1_2.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size: 4 Byte Unsigned Fixed Width Integer
  index, price_tick_size = jnx_bonds_pts_itch_v1_2.price_tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: 4 Byte Signed Fixed Width Integer
  index, price_start = jnx_bonds_pts_itch_v1_2.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
jnx_bonds_pts_itch_v1_2.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.price_tick_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.price_tick_size_message, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event
jnx_bonds_pts_itch_v1_2.system_event = {}

-- Size: System Event
jnx_bonds_pts_itch_v1_2.system_event.size = 1

-- Display: System Event
jnx_bonds_pts_itch_v1_2.system_event.display = function(value)
  return "System Event: "..value
end

-- Dissect: System Event
jnx_bonds_pts_itch_v1_2.system_event.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_bonds_pts_itch_v1_2.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.system_event, range, value, display)

  return offset + length, value
end

-- System Event Message
jnx_bonds_pts_itch_v1_2.system_event_message = {}

-- Size: System Event Message
jnx_bonds_pts_itch_v1_2.system_event_message.size =
  jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.size + 
  jnx_bonds_pts_itch_v1_2.group.size + 
  jnx_bonds_pts_itch_v1_2.system_event.size

-- Display: System Event Message
jnx_bonds_pts_itch_v1_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
jnx_bonds_pts_itch_v1_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_bonds_pts_itch_v1_2.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 1 values
  index, group = jnx_bonds_pts_itch_v1_2.group.dissect(buffer, index, packet, parent)

  -- System Event: 1 Byte Ascii String
  index, system_event = jnx_bonds_pts_itch_v1_2.system_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
jnx_bonds_pts_itch_v1_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.system_event_message, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Seconds
jnx_bonds_pts_itch_v1_2.timestamp_seconds = {}

-- Size: Timestamp Seconds
jnx_bonds_pts_itch_v1_2.timestamp_seconds.size = 4

-- Display: Timestamp Seconds
jnx_bonds_pts_itch_v1_2.timestamp_seconds.display = function(value)
  return "Timestamp Seconds: "..value
end

-- Dissect: Timestamp Seconds
jnx_bonds_pts_itch_v1_2.timestamp_seconds.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.timestamp_seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.timestamp_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.timestamp_seconds, range, value, display)

  return offset + length, value
end

-- Timestamp Seconds Message
jnx_bonds_pts_itch_v1_2.timestamp_seconds_message = {}

-- Size: Timestamp Seconds Message
jnx_bonds_pts_itch_v1_2.timestamp_seconds_message.size =
  jnx_bonds_pts_itch_v1_2.timestamp_seconds.size

-- Display: Timestamp Seconds Message
jnx_bonds_pts_itch_v1_2.timestamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Seconds Message
jnx_bonds_pts_itch_v1_2.timestamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Seconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_seconds = jnx_bonds_pts_itch_v1_2.timestamp_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp Seconds Message
jnx_bonds_pts_itch_v1_2.timestamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_seconds_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.timestamp_seconds_message, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.timestamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.timestamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.timestamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jnx_bonds_pts_itch_v1_2.payload = {}

-- Calculate runtime size of: Payload
jnx_bonds_pts_itch_v1_2.payload.size = function(buffer, offset, message_type)
  -- Size of Timestamp Seconds Message
  if message_type == "T" then
    return jnx_bonds_pts_itch_v1_2.timestamp_seconds_message.size(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return jnx_bonds_pts_itch_v1_2.system_event_message.size(buffer, offset)
  end
  -- Size of Price Tick Size Message
  if message_type == "L" then
    return jnx_bonds_pts_itch_v1_2.price_tick_size_message.size(buffer, offset)
  end
  -- Size of Orderbook Directory Message
  if message_type == "R" then
    return jnx_bonds_pts_itch_v1_2.orderbook_directory_message.size(buffer, offset)
  end
  -- Size of Trading State Message
  if message_type == "H" then
    return jnx_bonds_pts_itch_v1_2.trading_state_message.size(buffer, offset)
  end
  -- Size of Order Added Message
  if message_type == "A" then
    return jnx_bonds_pts_itch_v1_2.order_added_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return jnx_bonds_pts_itch_v1_2.order_executed_message.size(buffer, offset)
  end
  -- Size of Order Deleted Message
  if message_type == "D" then
    return jnx_bonds_pts_itch_v1_2.order_deleted_message.size(buffer, offset)
  end
  -- Size of Order Replaced Message
  if message_type == "U" then
    return jnx_bonds_pts_itch_v1_2.order_replaced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
jnx_bonds_pts_itch_v1_2.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
jnx_bonds_pts_itch_v1_2.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Seconds Message
  if message_type == "T" then
    return jnx_bonds_pts_itch_v1_2.timestamp_seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return jnx_bonds_pts_itch_v1_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if message_type == "L" then
    return jnx_bonds_pts_itch_v1_2.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if message_type == "R" then
    return jnx_bonds_pts_itch_v1_2.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading State Message
  if message_type == "H" then
    return jnx_bonds_pts_itch_v1_2.trading_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Message
  if message_type == "A" then
    return jnx_bonds_pts_itch_v1_2.order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return jnx_bonds_pts_itch_v1_2.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == "D" then
    return jnx_bonds_pts_itch_v1_2.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if message_type == "U" then
    return jnx_bonds_pts_itch_v1_2.order_replaced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
jnx_bonds_pts_itch_v1_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return jnx_bonds_pts_itch_v1_2.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jnx_bonds_pts_itch_v1_2.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jnx_bonds_pts_itch_v1_2.payload.display(buffer, packet, parent)
  local element = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.payload, range, display)

  return jnx_bonds_pts_itch_v1_2.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
jnx_bonds_pts_itch_v1_2.message_type = {}

-- Size: Message Type
jnx_bonds_pts_itch_v1_2.message_type.size = 1

-- Display: Message Type
jnx_bonds_pts_itch_v1_2.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Timestamp Seconds Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "L" then
    return "Message Type: Price Tick Size Message (L)"
  end
  if value == "R" then
    return "Message Type: Orderbook Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Trading State Message (H)"
  end
  if value == "A" then
    return "Message Type: Order Added Message (A)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "D" then
    return "Message Type: Order Deleted Message (D)"
  end
  if value == "U" then
    return "Message Type: Order Replaced Message (U)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
jnx_bonds_pts_itch_v1_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_bonds_pts_itch_v1_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
jnx_bonds_pts_itch_v1_2.message_length = {}

-- Size: Message Length
jnx_bonds_pts_itch_v1_2.message_length.size = 2

-- Display: Message Length
jnx_bonds_pts_itch_v1_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jnx_bonds_pts_itch_v1_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
jnx_bonds_pts_itch_v1_2.message_header = {}

-- Size: Message Header
jnx_bonds_pts_itch_v1_2.message_header.size =
  jnx_bonds_pts_itch_v1_2.message_length.size + 
  jnx_bonds_pts_itch_v1_2.message_type.size

-- Display: Message Header
jnx_bonds_pts_itch_v1_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
jnx_bonds_pts_itch_v1_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = jnx_bonds_pts_itch_v1_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 9 values
  index, message_type = jnx_bonds_pts_itch_v1_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
jnx_bonds_pts_itch_v1_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.message_header, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
jnx_bonds_pts_itch_v1_2.message = {}

-- Display: Message
jnx_bonds_pts_itch_v1_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
jnx_bonds_pts_itch_v1_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = jnx_bonds_pts_itch_v1_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 9 branches
  index = jnx_bonds_pts_itch_v1_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
jnx_bonds_pts_itch_v1_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.message, buffer(offset, 0))
    local current = jnx_bonds_pts_itch_v1_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = jnx_bonds_pts_itch_v1_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_bonds_pts_itch_v1_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
jnx_bonds_pts_itch_v1_2.message_count = {}

-- Size: Message Count
jnx_bonds_pts_itch_v1_2.message_count.size = 2

-- Display: Message Count
jnx_bonds_pts_itch_v1_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
jnx_bonds_pts_itch_v1_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_bonds_pts_itch_v1_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
jnx_bonds_pts_itch_v1_2.sequence_number = {}

-- Size: Sequence Number
jnx_bonds_pts_itch_v1_2.sequence_number.size = 8

-- Display: Sequence Number
jnx_bonds_pts_itch_v1_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jnx_bonds_pts_itch_v1_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_bonds_pts_itch_v1_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
jnx_bonds_pts_itch_v1_2.session = {}

-- Size: Session
jnx_bonds_pts_itch_v1_2.session.size = 10

-- Display: Session
jnx_bonds_pts_itch_v1_2.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
jnx_bonds_pts_itch_v1_2.session.dissect = function(buffer, offset, packet, parent)
  local length = jnx_bonds_pts_itch_v1_2.session.size
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

  local display = jnx_bonds_pts_itch_v1_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
jnx_bonds_pts_itch_v1_2.packet_header = {}

-- Size: Packet Header
jnx_bonds_pts_itch_v1_2.packet_header.size =
  jnx_bonds_pts_itch_v1_2.session.size + 
  jnx_bonds_pts_itch_v1_2.sequence_number.size + 
  jnx_bonds_pts_itch_v1_2.message_count.size

-- Display: Packet Header
jnx_bonds_pts_itch_v1_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
jnx_bonds_pts_itch_v1_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = jnx_bonds_pts_itch_v1_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = jnx_bonds_pts_itch_v1_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = jnx_bonds_pts_itch_v1_2.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
jnx_bonds_pts_itch_v1_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_bonds_pts_itch_v1_2.fields.packet_header, buffer(offset, 0))
    local index = jnx_bonds_pts_itch_v1_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_bonds_pts_itch_v1_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_bonds_pts_itch_v1_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
jnx_bonds_pts_itch_v1_2.packet = {}

-- Dissect Packet
jnx_bonds_pts_itch_v1_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = jnx_bonds_pts_itch_v1_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = jnx_bonds_pts_itch_v1_2.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jnx_bonds_pts_itch_v1_2.init()
end

-- Dissector for Jnx Bonds Pts Itch 1.2
function omi_jnx_bonds_pts_itch_v1_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_jnx_bonds_pts_itch_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_jnx_bonds_pts_itch_v1_2, buffer(), omi_jnx_bonds_pts_itch_v1_2.description, "("..buffer:len().." Bytes)")
  return jnx_bonds_pts_itch_v1_2.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_jnx_bonds_pts_itch_v1_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
jnx_bonds_pts_itch_v1_2.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Jnx Bonds Pts Itch 1.2
local function omi_jnx_bonds_pts_itch_v1_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jnx_bonds_pts_itch_v1_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jnx_bonds_pts_itch_v1_2
  omi_jnx_bonds_pts_itch_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jnx Bonds Pts Itch 1.2
omi_jnx_bonds_pts_itch_v1_2:register_heuristic("udp", omi_jnx_bonds_pts_itch_v1_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Japannext
--   Version: 1.2
--   Date: Wednesday, April 1, 2020
--   Specification: Japannext_PTS_ITCH_Bonds_v1.2.pdf
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
