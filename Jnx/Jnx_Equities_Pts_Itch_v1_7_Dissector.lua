-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jnx Equities Pts Itch 1.7 Protocol
local jnx_equities_pts_itch_v1_7 = Proto("Jnx.Equities.Pts.Itch.v1.7.Lua", "Jnx Equities Pts Itch 1.7")

-- Component Tables
local show = {}
local format = {}
local jnx_equities_pts_itch_v1_7_display = {}
local jnx_equities_pts_itch_v1_7_dissect = {}
local jnx_equities_pts_itch_v1_7_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jnx Equities Pts Itch 1.7 Fields
jnx_equities_pts_itch_v1_7.fields.attribution = ProtoField.new("Attribution", "jnx.equities.pts.itch.v1.7.attribution", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "jnx.equities.pts.itch.v1.7.buysellindicator", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.executed_quantity = ProtoField.new("Executed Quantity", "jnx.equities.pts.itch.v1.7.executedquantity", ftypes.UINT32)
jnx_equities_pts_itch_v1_7.fields.group = ProtoField.new("Group", "jnx.equities.pts.itch.v1.7.group", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "jnx.equities.pts.itch.v1.7.lowerpricelimit", ftypes.DOUBLE)
jnx_equities_pts_itch_v1_7.fields.match_number = ProtoField.new("Match Number", "jnx.equities.pts.itch.v1.7.matchnumber", ftypes.UINT64)
jnx_equities_pts_itch_v1_7.fields.message = ProtoField.new("Message", "jnx.equities.pts.itch.v1.7.message", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.message_count = ProtoField.new("Message Count", "jnx.equities.pts.itch.v1.7.messagecount", ftypes.UINT16)
jnx_equities_pts_itch_v1_7.fields.message_header = ProtoField.new("Message Header", "jnx.equities.pts.itch.v1.7.messageheader", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.message_length = ProtoField.new("Message Length", "jnx.equities.pts.itch.v1.7.messagelength", ftypes.UINT16)
jnx_equities_pts_itch_v1_7.fields.message_type = ProtoField.new("Message Type", "jnx.equities.pts.itch.v1.7.messagetype", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.new_order_number = ProtoField.new("New Order Number", "jnx.equities.pts.itch.v1.7.newordernumber", ftypes.UINT64)
jnx_equities_pts_itch_v1_7.fields.order_number = ProtoField.new("Order Number", "jnx.equities.pts.itch.v1.7.ordernumber", ftypes.UINT64)
jnx_equities_pts_itch_v1_7.fields.order_type = ProtoField.new("Order Type", "jnx.equities.pts.itch.v1.7.ordertype", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.orderbook_code = ProtoField.new("Orderbook Code", "jnx.equities.pts.itch.v1.7.orderbookcode", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.orderbook_id = ProtoField.new("Orderbook Id", "jnx.equities.pts.itch.v1.7.orderbookid", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.original_order_number = ProtoField.new("Original Order Number", "jnx.equities.pts.itch.v1.7.originalordernumber", ftypes.UINT64)
jnx_equities_pts_itch_v1_7.fields.packet = ProtoField.new("Packet", "jnx.equities.pts.itch.v1.7.packet", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.packet_header = ProtoField.new("Packet Header", "jnx.equities.pts.itch.v1.7.packetheader", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.payload = ProtoField.new("Payload", "jnx.equities.pts.itch.v1.7.payload", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.price = ProtoField.new("Price", "jnx.equities.pts.itch.v1.7.price", ftypes.DOUBLE)
jnx_equities_pts_itch_v1_7.fields.price_decimals = ProtoField.new("Price Decimals", "jnx.equities.pts.itch.v1.7.pricedecimals", ftypes.DOUBLE)
jnx_equities_pts_itch_v1_7.fields.price_start = ProtoField.new("Price Start", "jnx.equities.pts.itch.v1.7.pricestart", ftypes.DOUBLE)
jnx_equities_pts_itch_v1_7.fields.price_tick_size = ProtoField.new("Price Tick Size", "jnx.equities.pts.itch.v1.7.priceticksize", ftypes.DOUBLE)
jnx_equities_pts_itch_v1_7.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "jnx.equities.pts.itch.v1.7.priceticksizetableid", ftypes.DOUBLE)
jnx_equities_pts_itch_v1_7.fields.quantity = ProtoField.new("Quantity", "jnx.equities.pts.itch.v1.7.quantity", ftypes.UINT32)
jnx_equities_pts_itch_v1_7.fields.round_lot_size = ProtoField.new("Round Lot Size", "jnx.equities.pts.itch.v1.7.roundlotsize", ftypes.UINT32)
jnx_equities_pts_itch_v1_7.fields.sequence_number = ProtoField.new("Sequence Number", "jnx.equities.pts.itch.v1.7.sequencenumber", ftypes.UINT64)
jnx_equities_pts_itch_v1_7.fields.session = ProtoField.new("Session", "jnx.equities.pts.itch.v1.7.session", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.short_selling_state = ProtoField.new("Short Selling State", "jnx.equities.pts.itch.v1.7.shortsellingstate", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.system_event = ProtoField.new("System Event", "jnx.equities.pts.itch.v1.7.systemevent", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "jnx.equities.pts.itch.v1.7.timestampnanoseconds", ftypes.UINT32)
jnx_equities_pts_itch_v1_7.fields.timestamp_seconds = ProtoField.new("Timestamp Seconds", "jnx.equities.pts.itch.v1.7.timestampseconds", ftypes.UINT32)
jnx_equities_pts_itch_v1_7.fields.trading_state = ProtoField.new("Trading State", "jnx.equities.pts.itch.v1.7.tradingstate", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "jnx.equities.pts.itch.v1.7.upperpricelimit", ftypes.DOUBLE)

-- Jnx Equities Pts Itch 1.7 messages
jnx_equities_pts_itch_v1_7.fields.order_added_with_attributes_message = ProtoField.new("Order Added With Attributes Message", "jnx.equities.pts.itch.v1.7.orderaddedwithattributesmessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.order_added_without_attributes_message = ProtoField.new("Order Added Without Attributes Message", "jnx.equities.pts.itch.v1.7.orderaddedwithoutattributesmessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "jnx.equities.pts.itch.v1.7.orderdeletedmessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.order_executed_message = ProtoField.new("Order Executed Message", "jnx.equities.pts.itch.v1.7.orderexecutedmessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "jnx.equities.pts.itch.v1.7.orderreplacedmessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "jnx.equities.pts.itch.v1.7.orderbookdirectorymessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "jnx.equities.pts.itch.v1.7.priceticksizemessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.short_selling_price_restriction_state_message = ProtoField.new("Short Selling Price Restriction State Message", "jnx.equities.pts.itch.v1.7.shortsellingpricerestrictionstatemessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.system_event_message = ProtoField.new("System Event Message", "jnx.equities.pts.itch.v1.7.systemeventmessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.timestamp_seconds_message = ProtoField.new("Timestamp Seconds Message", "jnx.equities.pts.itch.v1.7.timestampsecondsmessage", ftypes.STRING)
jnx_equities_pts_itch_v1_7.fields.trading_state_message = ProtoField.new("Trading State Message", "jnx.equities.pts.itch.v1.7.tradingstatemessage", ftypes.STRING)

-- Jnx Equities Pts Itch 1.7 generated fields
jnx_equities_pts_itch_v1_7.fields.message_index = ProtoField.new("Message Index", "jnx.equities.pts.itch.v1.7.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Jnx Equities Pts Itch 1.7 Element Dissection Options
show.message = true
show.message_header = true
show.order_added_with_attributes_message = true
show.order_added_without_attributes_message = true
show.order_deleted_message = true
show.order_executed_message = true
show.order_replaced_message = true
show.orderbook_directory_message = true
show.packet = true
show.packet_header = true
show.price_tick_size_message = true
show.short_selling_price_restriction_state_message = true
show.system_event_message = true
show.timestamp_seconds_message = true
show.trading_state_message = true
show.payload = false

-- Register Jnx Equities Pts Itch 1.7 Show Options
jnx_equities_pts_itch_v1_7.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_order_added_with_attributes_message = Pref.bool("Show Order Added With Attributes Message", show.order_added_with_attributes_message, "Parse and add Order Added With Attributes Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_order_added_without_attributes_message = Pref.bool("Show Order Added Without Attributes Message", show.order_added_without_attributes_message, "Parse and add Order Added Without Attributes Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_orderbook_directory_message = Pref.bool("Show Orderbook Directory Message", show.orderbook_directory_message, "Parse and add Orderbook Directory Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_price_tick_size_message = Pref.bool("Show Price Tick Size Message", show.price_tick_size_message, "Parse and add Price Tick Size Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_short_selling_price_restriction_state_message = Pref.bool("Show Short Selling Price Restriction State Message", show.short_selling_price_restriction_state_message, "Parse and add Short Selling Price Restriction State Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_timestamp_seconds_message = Pref.bool("Show Timestamp Seconds Message", show.timestamp_seconds_message, "Parse and add Timestamp Seconds Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_trading_state_message = Pref.bool("Show Trading State Message", show.trading_state_message, "Parse and add Trading State Message to protocol tree")
jnx_equities_pts_itch_v1_7.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function jnx_equities_pts_itch_v1_7.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= jnx_equities_pts_itch_v1_7.prefs.show_message then
    show.message = jnx_equities_pts_itch_v1_7.prefs.show_message
    changed = true
  end
  if show.message_header ~= jnx_equities_pts_itch_v1_7.prefs.show_message_header then
    show.message_header = jnx_equities_pts_itch_v1_7.prefs.show_message_header
    changed = true
  end
  if show.order_added_with_attributes_message ~= jnx_equities_pts_itch_v1_7.prefs.show_order_added_with_attributes_message then
    show.order_added_with_attributes_message = jnx_equities_pts_itch_v1_7.prefs.show_order_added_with_attributes_message
    changed = true
  end
  if show.order_added_without_attributes_message ~= jnx_equities_pts_itch_v1_7.prefs.show_order_added_without_attributes_message then
    show.order_added_without_attributes_message = jnx_equities_pts_itch_v1_7.prefs.show_order_added_without_attributes_message
    changed = true
  end
  if show.order_deleted_message ~= jnx_equities_pts_itch_v1_7.prefs.show_order_deleted_message then
    show.order_deleted_message = jnx_equities_pts_itch_v1_7.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= jnx_equities_pts_itch_v1_7.prefs.show_order_executed_message then
    show.order_executed_message = jnx_equities_pts_itch_v1_7.prefs.show_order_executed_message
    changed = true
  end
  if show.order_replaced_message ~= jnx_equities_pts_itch_v1_7.prefs.show_order_replaced_message then
    show.order_replaced_message = jnx_equities_pts_itch_v1_7.prefs.show_order_replaced_message
    changed = true
  end
  if show.orderbook_directory_message ~= jnx_equities_pts_itch_v1_7.prefs.show_orderbook_directory_message then
    show.orderbook_directory_message = jnx_equities_pts_itch_v1_7.prefs.show_orderbook_directory_message
    changed = true
  end
  if show.packet ~= jnx_equities_pts_itch_v1_7.prefs.show_packet then
    show.packet = jnx_equities_pts_itch_v1_7.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= jnx_equities_pts_itch_v1_7.prefs.show_packet_header then
    show.packet_header = jnx_equities_pts_itch_v1_7.prefs.show_packet_header
    changed = true
  end
  if show.price_tick_size_message ~= jnx_equities_pts_itch_v1_7.prefs.show_price_tick_size_message then
    show.price_tick_size_message = jnx_equities_pts_itch_v1_7.prefs.show_price_tick_size_message
    changed = true
  end
  if show.short_selling_price_restriction_state_message ~= jnx_equities_pts_itch_v1_7.prefs.show_short_selling_price_restriction_state_message then
    show.short_selling_price_restriction_state_message = jnx_equities_pts_itch_v1_7.prefs.show_short_selling_price_restriction_state_message
    changed = true
  end
  if show.system_event_message ~= jnx_equities_pts_itch_v1_7.prefs.show_system_event_message then
    show.system_event_message = jnx_equities_pts_itch_v1_7.prefs.show_system_event_message
    changed = true
  end
  if show.timestamp_seconds_message ~= jnx_equities_pts_itch_v1_7.prefs.show_timestamp_seconds_message then
    show.timestamp_seconds_message = jnx_equities_pts_itch_v1_7.prefs.show_timestamp_seconds_message
    changed = true
  end
  if show.trading_state_message ~= jnx_equities_pts_itch_v1_7.prefs.show_trading_state_message then
    show.trading_state_message = jnx_equities_pts_itch_v1_7.prefs.show_trading_state_message
    changed = true
  end
  if show.payload ~= jnx_equities_pts_itch_v1_7.prefs.show_payload then
    show.payload = jnx_equities_pts_itch_v1_7.prefs.show_payload
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
-- Dissect Jnx Equities Pts Itch 1.7
-----------------------------------------------------------------------

-- Size: Price
jnx_equities_pts_itch_v1_7_size_of.price = 4

-- Display: Price
jnx_equities_pts_itch_v1_7_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/10
end

-- Dissect: Price
jnx_equities_pts_itch_v1_7_dissect.price = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.price(raw)
  local display = jnx_equities_pts_itch_v1_7_display.price(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Quantity
jnx_equities_pts_itch_v1_7_size_of.quantity = 4

-- Display: Quantity
jnx_equities_pts_itch_v1_7_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jnx_equities_pts_itch_v1_7_dissect.quantity = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7_display.quantity(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: New Order Number
jnx_equities_pts_itch_v1_7_size_of.new_order_number = 8

-- Display: New Order Number
jnx_equities_pts_itch_v1_7_display.new_order_number = function(value)
  return "New Order Number: "..value
end

-- Dissect: New Order Number
jnx_equities_pts_itch_v1_7_dissect.new_order_number = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.new_order_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7_display.new_order_number(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.new_order_number, range, value, display)

  return offset + length, value
end

-- Size: Original Order Number
jnx_equities_pts_itch_v1_7_size_of.original_order_number = 8

-- Display: Original Order Number
jnx_equities_pts_itch_v1_7_display.original_order_number = function(value)
  return "Original Order Number: "..value
end

-- Dissect: Original Order Number
jnx_equities_pts_itch_v1_7_dissect.original_order_number = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.original_order_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7_display.original_order_number(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.original_order_number, range, value, display)

  return offset + length, value
end

-- Size: Timestamp Nanoseconds
jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds = 4

-- Display: Timestamp Nanoseconds
jnx_equities_pts_itch_v1_7_display.timestamp_nanoseconds = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7_display.timestamp_nanoseconds(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replaced Message
jnx_equities_pts_itch_v1_7_size_of.order_replaced_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.original_order_number

  index = index + jnx_equities_pts_itch_v1_7_size_of.new_order_number

  index = index + jnx_equities_pts_itch_v1_7_size_of.quantity

  index = index + jnx_equities_pts_itch_v1_7_size_of.price

  return index
end

-- Display: Order Replaced Message
jnx_equities_pts_itch_v1_7_display.order_replaced_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
jnx_equities_pts_itch_v1_7_dissect.order_replaced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Original Order Number: 8 Byte Unsigned Fixed Width Integer
  index, original_order_number = jnx_equities_pts_itch_v1_7_dissect.original_order_number(buffer, index, packet, parent)

  -- New Order Number: 8 Byte Unsigned Fixed Width Integer
  index, new_order_number = jnx_equities_pts_itch_v1_7_dissect.new_order_number(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_equities_pts_itch_v1_7_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = jnx_equities_pts_itch_v1_7_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
jnx_equities_pts_itch_v1_7_dissect.order_replaced_message = function(buffer, offset, packet, parent)
  if show.order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.order_replaced_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.order_replaced_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.order_replaced_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.order_replaced_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Order Number
jnx_equities_pts_itch_v1_7_size_of.order_number = 8

-- Display: Order Number
jnx_equities_pts_itch_v1_7_display.order_number = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
jnx_equities_pts_itch_v1_7_dissect.order_number = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.order_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7_display.order_number(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.order_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Deleted Message
jnx_equities_pts_itch_v1_7_size_of.order_deleted_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.order_number

  return index
end

-- Display: Order Deleted Message
jnx_equities_pts_itch_v1_7_display.order_deleted_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
jnx_equities_pts_itch_v1_7_dissect.order_deleted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = jnx_equities_pts_itch_v1_7_dissect.order_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
jnx_equities_pts_itch_v1_7_dissect.order_deleted_message = function(buffer, offset, packet, parent)
  if show.order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.order_deleted_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.order_deleted_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.order_deleted_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.order_deleted_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Match Number
jnx_equities_pts_itch_v1_7_size_of.match_number = 8

-- Display: Match Number
jnx_equities_pts_itch_v1_7_display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
jnx_equities_pts_itch_v1_7_dissect.match_number = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7_display.match_number(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.match_number, range, value, display)

  return offset + length, value
end

-- Size: Executed Quantity
jnx_equities_pts_itch_v1_7_size_of.executed_quantity = 4

-- Display: Executed Quantity
jnx_equities_pts_itch_v1_7_display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jnx_equities_pts_itch_v1_7_dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7_display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed Message
jnx_equities_pts_itch_v1_7_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.order_number

  index = index + jnx_equities_pts_itch_v1_7_size_of.executed_quantity

  index = index + jnx_equities_pts_itch_v1_7_size_of.match_number

  return index
end

-- Display: Order Executed Message
jnx_equities_pts_itch_v1_7_display.order_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jnx_equities_pts_itch_v1_7_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = jnx_equities_pts_itch_v1_7_dissect.order_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = jnx_equities_pts_itch_v1_7_dissect.executed_quantity(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = jnx_equities_pts_itch_v1_7_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jnx_equities_pts_itch_v1_7_dissect.order_executed_message = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.order_executed_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.order_executed_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.order_executed_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.order_executed_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Order Type
jnx_equities_pts_itch_v1_7_size_of.order_type = 1

-- Display: Order Type
jnx_equities_pts_itch_v1_7_display.order_type = function(value)
  if value == "Q" then
    return "Order Type: Dlp Order (Q)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
jnx_equities_pts_itch_v1_7_dissect.order_type = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.order_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7_display.order_type(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Attribution
jnx_equities_pts_itch_v1_7_size_of.attribution = 4

-- Display: Attribution
jnx_equities_pts_itch_v1_7_display.attribution = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
jnx_equities_pts_itch_v1_7_dissect.attribution = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.attribution
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_itch_v1_7_display.attribution(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.attribution, range, value, display)

  return offset + length, value
end

-- Size: Group
jnx_equities_pts_itch_v1_7_size_of.group = 4

-- Display: Group
jnx_equities_pts_itch_v1_7_display.group = function(value)
  if value == "DAY" then
    return "Group: Daytime Market (DAY)"
  end
  if value == "NGHT" then
    return "Group: Nighttime Market (NGHT)"
  end
  if value == "DAYX" then
    return "Group: X Market (DAYX)"
  end
  if value == "DAYU" then
    return "Group: U Market (DAYU)"
  end

  return "Group: Unknown("..value..")"
end

-- Dissect: Group
jnx_equities_pts_itch_v1_7_dissect.group = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.group
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_itch_v1_7_display.group(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.group, range, value, display)

  return offset + length, value
end

-- Size: Orderbook Id
jnx_equities_pts_itch_v1_7_size_of.orderbook_id = 4

-- Display: Orderbook Id
jnx_equities_pts_itch_v1_7_display.orderbook_id = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
jnx_equities_pts_itch_v1_7_dissect.orderbook_id = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.orderbook_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_itch_v1_7_display.orderbook_id(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Size: Buy Sell Indicator
jnx_equities_pts_itch_v1_7_size_of.buy_sell_indicator = 1

-- Display: Buy Sell Indicator
jnx_equities_pts_itch_v1_7_display.buy_sell_indicator = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
jnx_equities_pts_itch_v1_7_dissect.buy_sell_indicator = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.buy_sell_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7_display.buy_sell_indicator(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Added With Attributes Message
jnx_equities_pts_itch_v1_7_size_of.order_added_with_attributes_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.order_number

  index = index + jnx_equities_pts_itch_v1_7_size_of.buy_sell_indicator

  index = index + jnx_equities_pts_itch_v1_7_size_of.quantity

  index = index + jnx_equities_pts_itch_v1_7_size_of.orderbook_id

  index = index + jnx_equities_pts_itch_v1_7_size_of.group

  index = index + jnx_equities_pts_itch_v1_7_size_of.price

  index = index + jnx_equities_pts_itch_v1_7_size_of.attribution

  index = index + jnx_equities_pts_itch_v1_7_size_of.order_type

  return index
end

-- Display: Order Added With Attributes Message
jnx_equities_pts_itch_v1_7_display.order_added_with_attributes_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added With Attributes Message
jnx_equities_pts_itch_v1_7_dissect.order_added_with_attributes_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = jnx_equities_pts_itch_v1_7_dissect.order_number(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = jnx_equities_pts_itch_v1_7_dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_equities_pts_itch_v1_7_dissect.quantity(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Ascii String
  index, orderbook_id = jnx_equities_pts_itch_v1_7_dissect.orderbook_id(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 4 values
  index, group = jnx_equities_pts_itch_v1_7_dissect.group(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = jnx_equities_pts_itch_v1_7_dissect.price(buffer, index, packet, parent)

  -- Attribution: 4 Byte Ascii String
  index, attribution = jnx_equities_pts_itch_v1_7_dissect.attribution(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 1 values
  index, order_type = jnx_equities_pts_itch_v1_7_dissect.order_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added With Attributes Message
jnx_equities_pts_itch_v1_7_dissect.order_added_with_attributes_message = function(buffer, offset, packet, parent)
  if show.order_added_with_attributes_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.order_added_with_attributes_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.order_added_with_attributes_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.order_added_with_attributes_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.order_added_with_attributes_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Order Added Without Attributes Message
jnx_equities_pts_itch_v1_7_size_of.order_added_without_attributes_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.order_number

  index = index + jnx_equities_pts_itch_v1_7_size_of.buy_sell_indicator

  index = index + jnx_equities_pts_itch_v1_7_size_of.quantity

  index = index + jnx_equities_pts_itch_v1_7_size_of.orderbook_id

  index = index + jnx_equities_pts_itch_v1_7_size_of.group

  index = index + jnx_equities_pts_itch_v1_7_size_of.price

  return index
end

-- Display: Order Added Without Attributes Message
jnx_equities_pts_itch_v1_7_display.order_added_without_attributes_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Without Attributes Message
jnx_equities_pts_itch_v1_7_dissect.order_added_without_attributes_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = jnx_equities_pts_itch_v1_7_dissect.order_number(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = jnx_equities_pts_itch_v1_7_dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_equities_pts_itch_v1_7_dissect.quantity(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Ascii String
  index, orderbook_id = jnx_equities_pts_itch_v1_7_dissect.orderbook_id(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 4 values
  index, group = jnx_equities_pts_itch_v1_7_dissect.group(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = jnx_equities_pts_itch_v1_7_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Without Attributes Message
jnx_equities_pts_itch_v1_7_dissect.order_added_without_attributes_message = function(buffer, offset, packet, parent)
  if show.order_added_without_attributes_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.order_added_without_attributes_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.order_added_without_attributes_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.order_added_without_attributes_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.order_added_without_attributes_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Short Selling State
jnx_equities_pts_itch_v1_7_size_of.short_selling_state = 1

-- Display: Short Selling State
jnx_equities_pts_itch_v1_7_display.short_selling_state = function(value)
  if value == "0" then
    return "Short Selling State: No Price Restriction (0)"
  end
  if value == "1" then
    return "Short Selling State: Price Restriction In Effect (1)"
  end

  return "Short Selling State: Unknown("..value..")"
end

-- Dissect: Short Selling State
jnx_equities_pts_itch_v1_7_dissect.short_selling_state = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.short_selling_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7_display.short_selling_state(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.short_selling_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Short Selling Price Restriction State Message
jnx_equities_pts_itch_v1_7_size_of.short_selling_price_restriction_state_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.orderbook_id

  index = index + jnx_equities_pts_itch_v1_7_size_of.group

  index = index + jnx_equities_pts_itch_v1_7_size_of.short_selling_state

  return index
end

-- Display: Short Selling Price Restriction State Message
jnx_equities_pts_itch_v1_7_display.short_selling_price_restriction_state_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Selling Price Restriction State Message
jnx_equities_pts_itch_v1_7_dissect.short_selling_price_restriction_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Ascii String
  index, orderbook_id = jnx_equities_pts_itch_v1_7_dissect.orderbook_id(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 4 values
  index, group = jnx_equities_pts_itch_v1_7_dissect.group(buffer, index, packet, parent)

  -- Short Selling State: 1 Byte Ascii String Enum with 2 values
  index, short_selling_state = jnx_equities_pts_itch_v1_7_dissect.short_selling_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Selling Price Restriction State Message
jnx_equities_pts_itch_v1_7_dissect.short_selling_price_restriction_state_message = function(buffer, offset, packet, parent)
  if show.short_selling_price_restriction_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.short_selling_price_restriction_state_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.short_selling_price_restriction_state_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.short_selling_price_restriction_state_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.short_selling_price_restriction_state_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trading State
jnx_equities_pts_itch_v1_7_size_of.trading_state = 1

-- Display: Trading State
jnx_equities_pts_itch_v1_7_display.trading_state = function(value)
  if value == "T" then
    return "Trading State: Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
jnx_equities_pts_itch_v1_7_dissect.trading_state = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7_display.trading_state(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading State Message
jnx_equities_pts_itch_v1_7_size_of.trading_state_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.orderbook_id

  index = index + jnx_equities_pts_itch_v1_7_size_of.group

  index = index + jnx_equities_pts_itch_v1_7_size_of.trading_state

  return index
end

-- Display: Trading State Message
jnx_equities_pts_itch_v1_7_display.trading_state_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading State Message
jnx_equities_pts_itch_v1_7_dissect.trading_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Ascii String
  index, orderbook_id = jnx_equities_pts_itch_v1_7_dissect.orderbook_id(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 4 values
  index, group = jnx_equities_pts_itch_v1_7_dissect.group(buffer, index, packet, parent)

  -- Trading State: 1 Byte Ascii String Enum with 2 values
  index, trading_state = jnx_equities_pts_itch_v1_7_dissect.trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading State Message
jnx_equities_pts_itch_v1_7_dissect.trading_state_message = function(buffer, offset, packet, parent)
  if show.trading_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.trading_state_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.trading_state_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.trading_state_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.trading_state_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Lower Price Limit
jnx_equities_pts_itch_v1_7_size_of.lower_price_limit = 4

-- Display: Lower Price Limit
jnx_equities_pts_itch_v1_7_display.lower_price_limit = function(value)
  return "Lower Price Limit: "..value
end

-- Translate: Lower Price Limit
translate.lower_price_limit = function(raw)
  return raw/10
end

-- Dissect: Lower Price Limit
jnx_equities_pts_itch_v1_7_dissect.lower_price_limit = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.lower_price_limit
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.lower_price_limit(raw)
  local display = jnx_equities_pts_itch_v1_7_display.lower_price_limit(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Size: Upper Price Limit
jnx_equities_pts_itch_v1_7_size_of.upper_price_limit = 4

-- Display: Upper Price Limit
jnx_equities_pts_itch_v1_7_display.upper_price_limit = function(value)
  return "Upper Price Limit: "..value
end

-- Translate: Upper Price Limit
translate.upper_price_limit = function(raw)
  return raw/10
end

-- Dissect: Upper Price Limit
jnx_equities_pts_itch_v1_7_dissect.upper_price_limit = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.upper_price_limit
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.upper_price_limit(raw)
  local display = jnx_equities_pts_itch_v1_7_display.upper_price_limit(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.upper_price_limit, range, value, display)

  return offset + length, value
end

-- Size: Price Decimals
jnx_equities_pts_itch_v1_7_size_of.price_decimals = 4

-- Display: Price Decimals
jnx_equities_pts_itch_v1_7_display.price_decimals = function(value)
  return "Price Decimals: "..value
end

-- Translate: Price Decimals
translate.price_decimals = function(raw)
  return raw/10
end

-- Dissect: Price Decimals
jnx_equities_pts_itch_v1_7_dissect.price_decimals = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.price_decimals
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.price_decimals(raw)
  local display = jnx_equities_pts_itch_v1_7_display.price_decimals(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Tick Size Table Id
jnx_equities_pts_itch_v1_7_size_of.price_tick_size_table_id = 4

-- Display: Price Tick Size Table Id
jnx_equities_pts_itch_v1_7_display.price_tick_size_table_id = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Translate: Price Tick Size Table Id
translate.price_tick_size_table_id = function(raw)
  return raw/10
end

-- Dissect: Price Tick Size Table Id
jnx_equities_pts_itch_v1_7_dissect.price_tick_size_table_id = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.price_tick_size_table_id
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.price_tick_size_table_id(raw)
  local display = jnx_equities_pts_itch_v1_7_display.price_tick_size_table_id(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
jnx_equities_pts_itch_v1_7_size_of.round_lot_size = 4

-- Display: Round Lot Size
jnx_equities_pts_itch_v1_7_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
jnx_equities_pts_itch_v1_7_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Orderbook Code
jnx_equities_pts_itch_v1_7_size_of.orderbook_code = 12

-- Display: Orderbook Code
jnx_equities_pts_itch_v1_7_display.orderbook_code = function(value)
  return "Orderbook Code: "..value
end

-- Dissect: Orderbook Code
jnx_equities_pts_itch_v1_7_dissect.orderbook_code = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.orderbook_code
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_itch_v1_7_display.orderbook_code(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.orderbook_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Orderbook Directory Message
jnx_equities_pts_itch_v1_7_size_of.orderbook_directory_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.orderbook_id

  index = index + jnx_equities_pts_itch_v1_7_size_of.orderbook_code

  index = index + jnx_equities_pts_itch_v1_7_size_of.group

  index = index + jnx_equities_pts_itch_v1_7_size_of.round_lot_size

  index = index + jnx_equities_pts_itch_v1_7_size_of.price_tick_size_table_id

  index = index + jnx_equities_pts_itch_v1_7_size_of.price_decimals

  index = index + jnx_equities_pts_itch_v1_7_size_of.upper_price_limit

  index = index + jnx_equities_pts_itch_v1_7_size_of.lower_price_limit

  return index
end

-- Display: Orderbook Directory Message
jnx_equities_pts_itch_v1_7_display.orderbook_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
jnx_equities_pts_itch_v1_7_dissect.orderbook_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Ascii String
  index, orderbook_id = jnx_equities_pts_itch_v1_7_dissect.orderbook_id(buffer, index, packet, parent)

  -- Orderbook Code: 12 Byte Ascii String
  index, orderbook_code = jnx_equities_pts_itch_v1_7_dissect.orderbook_code(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 4 values
  index, group = jnx_equities_pts_itch_v1_7_dissect.group(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = jnx_equities_pts_itch_v1_7_dissect.round_lot_size(buffer, index, packet, parent)

  -- Price Tick Size Table Id: 4 Byte Unsigned Fixed Width Integer
  index, price_tick_size_table_id = jnx_equities_pts_itch_v1_7_dissect.price_tick_size_table_id(buffer, index, packet, parent)

  -- Price Decimals: 4 Byte Unsigned Fixed Width Integer
  index, price_decimals = jnx_equities_pts_itch_v1_7_dissect.price_decimals(buffer, index, packet, parent)

  -- Upper Price Limit: 4 Byte Unsigned Fixed Width Integer
  index, upper_price_limit = jnx_equities_pts_itch_v1_7_dissect.upper_price_limit(buffer, index, packet, parent)

  -- Lower Price Limit: 4 Byte Unsigned Fixed Width Integer
  index, lower_price_limit = jnx_equities_pts_itch_v1_7_dissect.lower_price_limit(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
jnx_equities_pts_itch_v1_7_dissect.orderbook_directory_message = function(buffer, offset, packet, parent)
  if show.orderbook_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.orderbook_directory_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.orderbook_directory_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.orderbook_directory_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.orderbook_directory_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Price Start
jnx_equities_pts_itch_v1_7_size_of.price_start = 4

-- Display: Price Start
jnx_equities_pts_itch_v1_7_display.price_start = function(value)
  return "Price Start: "..value
end

-- Translate: Price Start
translate.price_start = function(raw)
  return raw/10
end

-- Dissect: Price Start
jnx_equities_pts_itch_v1_7_dissect.price_start = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.price_start
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.price_start(raw)
  local display = jnx_equities_pts_itch_v1_7_display.price_start(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.price_start, range, value, display)

  return offset + length, value
end

-- Size: Price Tick Size
jnx_equities_pts_itch_v1_7_size_of.price_tick_size = 4

-- Display: Price Tick Size
jnx_equities_pts_itch_v1_7_display.price_tick_size = function(value)
  return "Price Tick Size: "..value
end

-- Translate: Price Tick Size
translate.price_tick_size = function(raw)
  return raw/10
end

-- Dissect: Price Tick Size
jnx_equities_pts_itch_v1_7_dissect.price_tick_size = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.price_tick_size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.price_tick_size(raw)
  local display = jnx_equities_pts_itch_v1_7_display.price_tick_size(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Price Tick Size Message
jnx_equities_pts_itch_v1_7_size_of.price_tick_size_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.price_tick_size_table_id

  index = index + jnx_equities_pts_itch_v1_7_size_of.price_tick_size

  index = index + jnx_equities_pts_itch_v1_7_size_of.price_start

  return index
end

-- Display: Price Tick Size Message
jnx_equities_pts_itch_v1_7_display.price_tick_size_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
jnx_equities_pts_itch_v1_7_dissect.price_tick_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Price Tick Size Table Id: 4 Byte Unsigned Fixed Width Integer
  index, price_tick_size_table_id = jnx_equities_pts_itch_v1_7_dissect.price_tick_size_table_id(buffer, index, packet, parent)

  -- Price Tick Size: 4 Byte Unsigned Fixed Width Integer
  index, price_tick_size = jnx_equities_pts_itch_v1_7_dissect.price_tick_size(buffer, index, packet, parent)

  -- Price Start: 4 Byte Unsigned Fixed Width Integer
  index, price_start = jnx_equities_pts_itch_v1_7_dissect.price_start(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
jnx_equities_pts_itch_v1_7_dissect.price_tick_size_message = function(buffer, offset, packet, parent)
  if show.price_tick_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.price_tick_size_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.price_tick_size_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.price_tick_size_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.price_tick_size_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: System Event
jnx_equities_pts_itch_v1_7_size_of.system_event = 1

-- Display: System Event
jnx_equities_pts_itch_v1_7_display.system_event = function(value)
  return "System Event: "..value
end

-- Dissect: System Event
jnx_equities_pts_itch_v1_7_dissect.system_event = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.system_event
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7_display.system_event(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.system_event, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
jnx_equities_pts_itch_v1_7_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_nanoseconds

  index = index + jnx_equities_pts_itch_v1_7_size_of.group

  index = index + jnx_equities_pts_itch_v1_7_size_of.system_event

  return index
end

-- Display: System Event Message
jnx_equities_pts_itch_v1_7_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
jnx_equities_pts_itch_v1_7_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 4 values
  index, group = jnx_equities_pts_itch_v1_7_dissect.group(buffer, index, packet, parent)

  -- System Event: 1 Byte Ascii String
  index, system_event = jnx_equities_pts_itch_v1_7_dissect.system_event(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
jnx_equities_pts_itch_v1_7_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.system_event_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.system_event_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.system_event_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.system_event_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Timestamp Seconds
jnx_equities_pts_itch_v1_7_size_of.timestamp_seconds = 4

-- Display: Timestamp Seconds
jnx_equities_pts_itch_v1_7_display.timestamp_seconds = function(value)
  return "Timestamp Seconds: "..value
end

-- Dissect: Timestamp Seconds
jnx_equities_pts_itch_v1_7_dissect.timestamp_seconds = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.timestamp_seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7_display.timestamp_seconds(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.timestamp_seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timestamp Seconds Message
jnx_equities_pts_itch_v1_7_size_of.timestamp_seconds_message = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.timestamp_seconds

  return index
end

-- Display: Timestamp Seconds Message
jnx_equities_pts_itch_v1_7_display.timestamp_seconds_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Seconds Message
jnx_equities_pts_itch_v1_7_dissect.timestamp_seconds_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Seconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_seconds = jnx_equities_pts_itch_v1_7_dissect.timestamp_seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp Seconds Message
jnx_equities_pts_itch_v1_7_dissect.timestamp_seconds_message = function(buffer, offset, packet, parent)
  if show.timestamp_seconds_message then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.timestamp_seconds_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.timestamp_seconds_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.timestamp_seconds_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.timestamp_seconds_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
jnx_equities_pts_itch_v1_7_size_of.payload = function(buffer, offset, message_type)
  -- Size of Timestamp Seconds Message
  if message_type == "T" then
    return jnx_equities_pts_itch_v1_7_size_of.timestamp_seconds_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return jnx_equities_pts_itch_v1_7_size_of.system_event_message(buffer, offset)
  end
  -- Size of Price Tick Size Message
  if message_type == "L" then
    return jnx_equities_pts_itch_v1_7_size_of.price_tick_size_message(buffer, offset)
  end
  -- Size of Orderbook Directory Message
  if message_type == "R" then
    return jnx_equities_pts_itch_v1_7_size_of.orderbook_directory_message(buffer, offset)
  end
  -- Size of Trading State Message
  if message_type == "H" then
    return jnx_equities_pts_itch_v1_7_size_of.trading_state_message(buffer, offset)
  end
  -- Size of Short Selling Price Restriction State Message
  if message_type == "Y" then
    return jnx_equities_pts_itch_v1_7_size_of.short_selling_price_restriction_state_message(buffer, offset)
  end
  -- Size of Order Added Without Attributes Message
  if message_type == "A" then
    return jnx_equities_pts_itch_v1_7_size_of.order_added_without_attributes_message(buffer, offset)
  end
  -- Size of Order Added With Attributes Message
  if message_type == "F" then
    return jnx_equities_pts_itch_v1_7_size_of.order_added_with_attributes_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return jnx_equities_pts_itch_v1_7_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Deleted Message
  if message_type == "D" then
    return jnx_equities_pts_itch_v1_7_size_of.order_deleted_message(buffer, offset)
  end
  -- Size of Order Replaced Message
  if message_type == "U" then
    return jnx_equities_pts_itch_v1_7_size_of.order_replaced_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
jnx_equities_pts_itch_v1_7_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
jnx_equities_pts_itch_v1_7_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Seconds Message
  if message_type == "T" then
    return jnx_equities_pts_itch_v1_7_dissect.timestamp_seconds_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return jnx_equities_pts_itch_v1_7_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if message_type == "L" then
    return jnx_equities_pts_itch_v1_7_dissect.price_tick_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if message_type == "R" then
    return jnx_equities_pts_itch_v1_7_dissect.orderbook_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading State Message
  if message_type == "H" then
    return jnx_equities_pts_itch_v1_7_dissect.trading_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Selling Price Restriction State Message
  if message_type == "Y" then
    return jnx_equities_pts_itch_v1_7_dissect.short_selling_price_restriction_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Without Attributes Message
  if message_type == "A" then
    return jnx_equities_pts_itch_v1_7_dissect.order_added_without_attributes_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Added With Attributes Message
  if message_type == "F" then
    return jnx_equities_pts_itch_v1_7_dissect.order_added_with_attributes_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return jnx_equities_pts_itch_v1_7_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == "D" then
    return jnx_equities_pts_itch_v1_7_dissect.order_deleted_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if message_type == "U" then
    return jnx_equities_pts_itch_v1_7_dissect.order_replaced_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
jnx_equities_pts_itch_v1_7_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return jnx_equities_pts_itch_v1_7_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jnx_equities_pts_itch_v1_7_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jnx_equities_pts_itch_v1_7_display.payload(buffer, packet, parent)
  local element = parent:add(jnx_equities_pts_itch_v1_7.fields.payload, range, display)

  return jnx_equities_pts_itch_v1_7_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
jnx_equities_pts_itch_v1_7_size_of.message_type = 1

-- Display: Message Type
jnx_equities_pts_itch_v1_7_display.message_type = function(value)
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
  if value == "Y" then
    return "Message Type: Short Selling Price Restriction State Message (Y)"
  end
  if value == "A" then
    return "Message Type: Order Added Without Attributes Message (A)"
  end
  if value == "F" then
    return "Message Type: Order Added With Attributes Message (F)"
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
jnx_equities_pts_itch_v1_7_dissect.message_type = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7_display.message_type(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
jnx_equities_pts_itch_v1_7_size_of.message_length = 2

-- Display: Message Length
jnx_equities_pts_itch_v1_7_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jnx_equities_pts_itch_v1_7_dissect.message_length = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7_display.message_length(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
jnx_equities_pts_itch_v1_7_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.message_length

  index = index + jnx_equities_pts_itch_v1_7_size_of.message_type

  return index
end

-- Display: Message Header
jnx_equities_pts_itch_v1_7_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
jnx_equities_pts_itch_v1_7_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = jnx_equities_pts_itch_v1_7_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = jnx_equities_pts_itch_v1_7_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
jnx_equities_pts_itch_v1_7_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.message_header, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
jnx_equities_pts_itch_v1_7_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
jnx_equities_pts_itch_v1_7_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(jnx_equities_pts_itch_v1_7.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = jnx_equities_pts_itch_v1_7_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = jnx_equities_pts_itch_v1_7_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
jnx_equities_pts_itch_v1_7_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.message, buffer(offset, 0))
    local current = jnx_equities_pts_itch_v1_7_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = jnx_equities_pts_itch_v1_7_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_equities_pts_itch_v1_7_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Message Count
jnx_equities_pts_itch_v1_7_size_of.message_count = 2

-- Display: Message Count
jnx_equities_pts_itch_v1_7_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
jnx_equities_pts_itch_v1_7_dissect.message_count = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7_display.message_count(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
jnx_equities_pts_itch_v1_7_size_of.sequence_number = 8

-- Display: Sequence Number
jnx_equities_pts_itch_v1_7_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jnx_equities_pts_itch_v1_7_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
jnx_equities_pts_itch_v1_7_size_of.session = 10

-- Display: Session
jnx_equities_pts_itch_v1_7_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
jnx_equities_pts_itch_v1_7_dissect.session = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7_size_of.session
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

  local display = jnx_equities_pts_itch_v1_7_display.session(value, buffer, offset, packet, parent)

  parent:add(jnx_equities_pts_itch_v1_7.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
jnx_equities_pts_itch_v1_7_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + jnx_equities_pts_itch_v1_7_size_of.session

  index = index + jnx_equities_pts_itch_v1_7_size_of.sequence_number

  index = index + jnx_equities_pts_itch_v1_7_size_of.message_count

  return index
end

-- Display: Packet Header
jnx_equities_pts_itch_v1_7_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
jnx_equities_pts_itch_v1_7_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = jnx_equities_pts_itch_v1_7_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = jnx_equities_pts_itch_v1_7_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = jnx_equities_pts_itch_v1_7_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
jnx_equities_pts_itch_v1_7_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(jnx_equities_pts_itch_v1_7.fields.packet_header, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
jnx_equities_pts_itch_v1_7_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = jnx_equities_pts_itch_v1_7_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = jnx_equities_pts_itch_v1_7_dissect.message(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function jnx_equities_pts_itch_v1_7.init()
end

-- Dissector for Jnx Equities Pts Itch 1.7
function jnx_equities_pts_itch_v1_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = jnx_equities_pts_itch_v1_7.name

  -- Dissect protocol
  local protocol = parent:add(jnx_equities_pts_itch_v1_7, buffer(), jnx_equities_pts_itch_v1_7.description, "("..buffer:len().." Bytes)")
  return jnx_equities_pts_itch_v1_7_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, jnx_equities_pts_itch_v1_7)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.jnx_equities_pts_itch_v1_7_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Jnx Equities Pts Itch 1.7
local function jnx_equities_pts_itch_v1_7_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.jnx_equities_pts_itch_v1_7_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = jnx_equities_pts_itch_v1_7
  jnx_equities_pts_itch_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jnx Equities Pts Itch 1.7
jnx_equities_pts_itch_v1_7:register_heuristic("udp", jnx_equities_pts_itch_v1_7_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Japannext
--   Version: 1.7
--   Date: Wednesday, November 1, 2023
--   Specification: Japannext_PTS_ITCH_Equities_v1.7.pdf
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
