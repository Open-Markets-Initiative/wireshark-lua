-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jnx Equities Pts Itch 1.7 Protocol
local omi_jnx_equities_pts_itch_v1_7 = Proto("Jnx.Equities.Pts.Itch.v1.7.Lua", "Jnx Equities Pts Itch 1.7")

-- Protocol table
local jnx_equities_pts_itch_v1_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jnx Equities Pts Itch 1.7 Fields
omi_jnx_equities_pts_itch_v1_7.fields.attribution = ProtoField.new("Attribution", "jnx.equities.pts.itch.v1.7.attribution", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "jnx.equities.pts.itch.v1.7.buysellindicator", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.executed_quantity = ProtoField.new("Executed Quantity", "jnx.equities.pts.itch.v1.7.executedquantity", ftypes.UINT32)
omi_jnx_equities_pts_itch_v1_7.fields.group = ProtoField.new("Group", "jnx.equities.pts.itch.v1.7.group", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "jnx.equities.pts.itch.v1.7.lowerpricelimit", ftypes.DOUBLE)
omi_jnx_equities_pts_itch_v1_7.fields.match_number = ProtoField.new("Match Number", "jnx.equities.pts.itch.v1.7.matchnumber", ftypes.UINT64)
omi_jnx_equities_pts_itch_v1_7.fields.message = ProtoField.new("Message", "jnx.equities.pts.itch.v1.7.message", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.message_count = ProtoField.new("Message Count", "jnx.equities.pts.itch.v1.7.messagecount", ftypes.UINT16)
omi_jnx_equities_pts_itch_v1_7.fields.message_header = ProtoField.new("Message Header", "jnx.equities.pts.itch.v1.7.messageheader", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.message_length = ProtoField.new("Message Length", "jnx.equities.pts.itch.v1.7.messagelength", ftypes.UINT16)
omi_jnx_equities_pts_itch_v1_7.fields.message_type = ProtoField.new("Message Type", "jnx.equities.pts.itch.v1.7.messagetype", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.new_order_number = ProtoField.new("New Order Number", "jnx.equities.pts.itch.v1.7.newordernumber", ftypes.UINT64)
omi_jnx_equities_pts_itch_v1_7.fields.order_number = ProtoField.new("Order Number", "jnx.equities.pts.itch.v1.7.ordernumber", ftypes.UINT64)
omi_jnx_equities_pts_itch_v1_7.fields.order_type = ProtoField.new("Order Type", "jnx.equities.pts.itch.v1.7.ordertype", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.orderbook_code = ProtoField.new("Orderbook Code", "jnx.equities.pts.itch.v1.7.orderbookcode", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.orderbook_id = ProtoField.new("Orderbook Id", "jnx.equities.pts.itch.v1.7.orderbookid", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.original_order_number = ProtoField.new("Original Order Number", "jnx.equities.pts.itch.v1.7.originalordernumber", ftypes.UINT64)
omi_jnx_equities_pts_itch_v1_7.fields.packet = ProtoField.new("Packet", "jnx.equities.pts.itch.v1.7.packet", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.packet_header = ProtoField.new("Packet Header", "jnx.equities.pts.itch.v1.7.packetheader", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.payload = ProtoField.new("Payload", "jnx.equities.pts.itch.v1.7.payload", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.price = ProtoField.new("Price", "jnx.equities.pts.itch.v1.7.price", ftypes.DOUBLE)
omi_jnx_equities_pts_itch_v1_7.fields.price_decimals = ProtoField.new("Price Decimals", "jnx.equities.pts.itch.v1.7.pricedecimals", ftypes.DOUBLE)
omi_jnx_equities_pts_itch_v1_7.fields.price_start = ProtoField.new("Price Start", "jnx.equities.pts.itch.v1.7.pricestart", ftypes.DOUBLE)
omi_jnx_equities_pts_itch_v1_7.fields.price_tick_size = ProtoField.new("Price Tick Size", "jnx.equities.pts.itch.v1.7.priceticksize", ftypes.DOUBLE)
omi_jnx_equities_pts_itch_v1_7.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "jnx.equities.pts.itch.v1.7.priceticksizetableid", ftypes.DOUBLE)
omi_jnx_equities_pts_itch_v1_7.fields.quantity = ProtoField.new("Quantity", "jnx.equities.pts.itch.v1.7.quantity", ftypes.UINT32)
omi_jnx_equities_pts_itch_v1_7.fields.round_lot_size = ProtoField.new("Round Lot Size", "jnx.equities.pts.itch.v1.7.roundlotsize", ftypes.UINT32)
omi_jnx_equities_pts_itch_v1_7.fields.sequence_number = ProtoField.new("Sequence Number", "jnx.equities.pts.itch.v1.7.sequencenumber", ftypes.UINT64)
omi_jnx_equities_pts_itch_v1_7.fields.session = ProtoField.new("Session", "jnx.equities.pts.itch.v1.7.session", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.short_selling_state = ProtoField.new("Short Selling State", "jnx.equities.pts.itch.v1.7.shortsellingstate", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.system_event = ProtoField.new("System Event", "jnx.equities.pts.itch.v1.7.systemevent", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "jnx.equities.pts.itch.v1.7.timestampnanoseconds", ftypes.UINT32)
omi_jnx_equities_pts_itch_v1_7.fields.timestamp_seconds = ProtoField.new("Timestamp Seconds", "jnx.equities.pts.itch.v1.7.timestampseconds", ftypes.UINT32)
omi_jnx_equities_pts_itch_v1_7.fields.trading_state = ProtoField.new("Trading State", "jnx.equities.pts.itch.v1.7.tradingstate", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "jnx.equities.pts.itch.v1.7.upperpricelimit", ftypes.DOUBLE)

-- Jnx Equities Itch Pts 1.7 Application Messages
omi_jnx_equities_pts_itch_v1_7.fields.order_added_with_attributes_message = ProtoField.new("Order Added With Attributes Message", "jnx.equities.pts.itch.v1.7.orderaddedwithattributesmessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.order_added_without_attributes_message = ProtoField.new("Order Added Without Attributes Message", "jnx.equities.pts.itch.v1.7.orderaddedwithoutattributesmessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "jnx.equities.pts.itch.v1.7.orderdeletedmessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.order_executed_message = ProtoField.new("Order Executed Message", "jnx.equities.pts.itch.v1.7.orderexecutedmessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "jnx.equities.pts.itch.v1.7.orderreplacedmessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "jnx.equities.pts.itch.v1.7.orderbookdirectorymessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "jnx.equities.pts.itch.v1.7.priceticksizemessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.short_selling_price_restriction_state_message = ProtoField.new("Short Selling Price Restriction State Message", "jnx.equities.pts.itch.v1.7.shortsellingpricerestrictionstatemessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.system_event_message = ProtoField.new("System Event Message", "jnx.equities.pts.itch.v1.7.systemeventmessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.timestamp_seconds_message = ProtoField.new("Timestamp Seconds Message", "jnx.equities.pts.itch.v1.7.timestampsecondsmessage", ftypes.STRING)
omi_jnx_equities_pts_itch_v1_7.fields.trading_state_message = ProtoField.new("Trading State Message", "jnx.equities.pts.itch.v1.7.tradingstatemessage", ftypes.STRING)

-- Jnx Equities Pts Itch 1.7 generated fields
omi_jnx_equities_pts_itch_v1_7.fields.message_index = ProtoField.new("Message Index", "jnx.equities.pts.itch.v1.7.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_jnx_equities_pts_itch_v1_7.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_order_added_with_attributes_message = Pref.bool("Show Order Added With Attributes Message", show.order_added_with_attributes_message, "Parse and add Order Added With Attributes Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_order_added_without_attributes_message = Pref.bool("Show Order Added Without Attributes Message", show.order_added_without_attributes_message, "Parse and add Order Added Without Attributes Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_orderbook_directory_message = Pref.bool("Show Orderbook Directory Message", show.orderbook_directory_message, "Parse and add Orderbook Directory Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_price_tick_size_message = Pref.bool("Show Price Tick Size Message", show.price_tick_size_message, "Parse and add Price Tick Size Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_short_selling_price_restriction_state_message = Pref.bool("Show Short Selling Price Restriction State Message", show.short_selling_price_restriction_state_message, "Parse and add Short Selling Price Restriction State Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_timestamp_seconds_message = Pref.bool("Show Timestamp Seconds Message", show.timestamp_seconds_message, "Parse and add Timestamp Seconds Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_trading_state_message = Pref.bool("Show Trading State Message", show.trading_state_message, "Parse and add Trading State Message to protocol tree")
omi_jnx_equities_pts_itch_v1_7.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_jnx_equities_pts_itch_v1_7.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_message then
    show.message = omi_jnx_equities_pts_itch_v1_7.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_message_header then
    show.message_header = omi_jnx_equities_pts_itch_v1_7.prefs.show_message_header
    changed = true
  end
  if show.order_added_with_attributes_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_order_added_with_attributes_message then
    show.order_added_with_attributes_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_order_added_with_attributes_message
    changed = true
  end
  if show.order_added_without_attributes_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_order_added_without_attributes_message then
    show.order_added_without_attributes_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_order_added_without_attributes_message
    changed = true
  end
  if show.order_deleted_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_order_deleted_message then
    show.order_deleted_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_order_executed_message then
    show.order_executed_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_order_executed_message
    changed = true
  end
  if show.order_replaced_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_order_replaced_message then
    show.order_replaced_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_order_replaced_message
    changed = true
  end
  if show.orderbook_directory_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_orderbook_directory_message then
    show.orderbook_directory_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_orderbook_directory_message
    changed = true
  end
  if show.packet ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_packet then
    show.packet = omi_jnx_equities_pts_itch_v1_7.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_packet_header then
    show.packet_header = omi_jnx_equities_pts_itch_v1_7.prefs.show_packet_header
    changed = true
  end
  if show.price_tick_size_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_price_tick_size_message then
    show.price_tick_size_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_price_tick_size_message
    changed = true
  end
  if show.short_selling_price_restriction_state_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_short_selling_price_restriction_state_message then
    show.short_selling_price_restriction_state_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_short_selling_price_restriction_state_message
    changed = true
  end
  if show.system_event_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_system_event_message then
    show.system_event_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_system_event_message
    changed = true
  end
  if show.timestamp_seconds_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_timestamp_seconds_message then
    show.timestamp_seconds_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_timestamp_seconds_message
    changed = true
  end
  if show.trading_state_message ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_trading_state_message then
    show.trading_state_message = omi_jnx_equities_pts_itch_v1_7.prefs.show_trading_state_message
    changed = true
  end
  if show.payload ~= omi_jnx_equities_pts_itch_v1_7.prefs.show_payload then
    show.payload = omi_jnx_equities_pts_itch_v1_7.prefs.show_payload
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

-- Price
jnx_equities_pts_itch_v1_7.price = {}

-- Size: Price
jnx_equities_pts_itch_v1_7.price.size = 4

-- Display: Price
jnx_equities_pts_itch_v1_7.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
jnx_equities_pts_itch_v1_7.price.translate = function(raw)
  return raw/10
end

-- Dissect: Price
jnx_equities_pts_itch_v1_7.price.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_equities_pts_itch_v1_7.price.translate(raw)
  local display = jnx_equities_pts_itch_v1_7.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
jnx_equities_pts_itch_v1_7.quantity = {}

-- Size: Quantity
jnx_equities_pts_itch_v1_7.quantity.size = 4

-- Display: Quantity
jnx_equities_pts_itch_v1_7.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jnx_equities_pts_itch_v1_7.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.quantity, range, value, display)

  return offset + length, value
end

-- New Order Number
jnx_equities_pts_itch_v1_7.new_order_number = {}

-- Size: New Order Number
jnx_equities_pts_itch_v1_7.new_order_number.size = 8

-- Display: New Order Number
jnx_equities_pts_itch_v1_7.new_order_number.display = function(value)
  return "New Order Number: "..value
end

-- Dissect: New Order Number
jnx_equities_pts_itch_v1_7.new_order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.new_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7.new_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.new_order_number, range, value, display)

  return offset + length, value
end

-- Original Order Number
jnx_equities_pts_itch_v1_7.original_order_number = {}

-- Size: Original Order Number
jnx_equities_pts_itch_v1_7.original_order_number.size = 8

-- Display: Original Order Number
jnx_equities_pts_itch_v1_7.original_order_number.display = function(value)
  return "Original Order Number: "..value
end

-- Dissect: Original Order Number
jnx_equities_pts_itch_v1_7.original_order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.original_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7.original_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.original_order_number, range, value, display)

  return offset + length, value
end

-- Timestamp Nanoseconds
jnx_equities_pts_itch_v1_7.timestamp_nanoseconds = {}

-- Size: Timestamp Nanoseconds
jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size = 4

-- Display: Timestamp Nanoseconds
jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.display = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Order Replaced Message
jnx_equities_pts_itch_v1_7.order_replaced_message = {}

-- Size: Order Replaced Message
jnx_equities_pts_itch_v1_7.order_replaced_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.original_order_number.size + 
  jnx_equities_pts_itch_v1_7.new_order_number.size + 
  jnx_equities_pts_itch_v1_7.quantity.size + 
  jnx_equities_pts_itch_v1_7.price.size

-- Display: Order Replaced Message
jnx_equities_pts_itch_v1_7.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
jnx_equities_pts_itch_v1_7.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Original Order Number: Integer
  index, original_order_number = jnx_equities_pts_itch_v1_7.original_order_number.dissect(buffer, index, packet, parent)

  -- New Order Number: Integer
  index, new_order_number = jnx_equities_pts_itch_v1_7.new_order_number.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_equities_pts_itch_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_equities_pts_itch_v1_7.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
jnx_equities_pts_itch_v1_7.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.order_replaced_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Number
jnx_equities_pts_itch_v1_7.order_number = {}

-- Size: Order Number
jnx_equities_pts_itch_v1_7.order_number.size = 8

-- Display: Order Number
jnx_equities_pts_itch_v1_7.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
jnx_equities_pts_itch_v1_7.order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Deleted Message
jnx_equities_pts_itch_v1_7.order_deleted_message = {}

-- Size: Order Deleted Message
jnx_equities_pts_itch_v1_7.order_deleted_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.order_number.size

-- Display: Order Deleted Message
jnx_equities_pts_itch_v1_7.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
jnx_equities_pts_itch_v1_7.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_equities_pts_itch_v1_7.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
jnx_equities_pts_itch_v1_7.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.order_deleted_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Match Number
jnx_equities_pts_itch_v1_7.match_number = {}

-- Size: Match Number
jnx_equities_pts_itch_v1_7.match_number.size = 8

-- Display: Match Number
jnx_equities_pts_itch_v1_7.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
jnx_equities_pts_itch_v1_7.match_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.match_number, range, value, display)

  return offset + length, value
end

-- Executed Quantity
jnx_equities_pts_itch_v1_7.executed_quantity = {}

-- Size: Executed Quantity
jnx_equities_pts_itch_v1_7.executed_quantity.size = 4

-- Display: Executed Quantity
jnx_equities_pts_itch_v1_7.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jnx_equities_pts_itch_v1_7.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed Message
jnx_equities_pts_itch_v1_7.order_executed_message = {}

-- Size: Order Executed Message
jnx_equities_pts_itch_v1_7.order_executed_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.order_number.size + 
  jnx_equities_pts_itch_v1_7.executed_quantity.size + 
  jnx_equities_pts_itch_v1_7.match_number.size

-- Display: Order Executed Message
jnx_equities_pts_itch_v1_7.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jnx_equities_pts_itch_v1_7.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_equities_pts_itch_v1_7.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = jnx_equities_pts_itch_v1_7.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = jnx_equities_pts_itch_v1_7.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jnx_equities_pts_itch_v1_7.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.order_executed_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Type
jnx_equities_pts_itch_v1_7.order_type = {}

-- Size: Order Type
jnx_equities_pts_itch_v1_7.order_type.size = 1

-- Display: Order Type
jnx_equities_pts_itch_v1_7.order_type.display = function(value)
  if value == "Q" then
    return "Order Type: Dlp Order (Q)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
jnx_equities_pts_itch_v1_7.order_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.order_type, range, value, display)

  return offset + length, value
end

-- Attribution
jnx_equities_pts_itch_v1_7.attribution = {}

-- Size: Attribution
jnx_equities_pts_itch_v1_7.attribution.size = 4

-- Display: Attribution
jnx_equities_pts_itch_v1_7.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
jnx_equities_pts_itch_v1_7.attribution.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_itch_v1_7.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.attribution, range, value, display)

  return offset + length, value
end

-- Group
jnx_equities_pts_itch_v1_7.group = {}

-- Size: Group
jnx_equities_pts_itch_v1_7.group.size = 4

-- Display: Group
jnx_equities_pts_itch_v1_7.group.display = function(value)
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
jnx_equities_pts_itch_v1_7.group.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_itch_v1_7.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.group, range, value, display)

  return offset + length, value
end

-- Orderbook Id
jnx_equities_pts_itch_v1_7.orderbook_id = {}

-- Size: Orderbook Id
jnx_equities_pts_itch_v1_7.orderbook_id.size = 4

-- Display: Orderbook Id
jnx_equities_pts_itch_v1_7.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
jnx_equities_pts_itch_v1_7.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.orderbook_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_itch_v1_7.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
jnx_equities_pts_itch_v1_7.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
jnx_equities_pts_itch_v1_7.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
jnx_equities_pts_itch_v1_7.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
jnx_equities_pts_itch_v1_7.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Order Added With Attributes Message
jnx_equities_pts_itch_v1_7.order_added_with_attributes_message = {}

-- Size: Order Added With Attributes Message
jnx_equities_pts_itch_v1_7.order_added_with_attributes_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.order_number.size + 
  jnx_equities_pts_itch_v1_7.buy_sell_indicator.size + 
  jnx_equities_pts_itch_v1_7.quantity.size + 
  jnx_equities_pts_itch_v1_7.orderbook_id.size + 
  jnx_equities_pts_itch_v1_7.group.size + 
  jnx_equities_pts_itch_v1_7.price.size + 
  jnx_equities_pts_itch_v1_7.attribution.size + 
  jnx_equities_pts_itch_v1_7.order_type.size

-- Display: Order Added With Attributes Message
jnx_equities_pts_itch_v1_7.order_added_with_attributes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added With Attributes Message
jnx_equities_pts_itch_v1_7.order_added_with_attributes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_equities_pts_itch_v1_7.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = jnx_equities_pts_itch_v1_7.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_equities_pts_itch_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_equities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_equities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_equities_pts_itch_v1_7.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = jnx_equities_pts_itch_v1_7.attribution.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = jnx_equities_pts_itch_v1_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added With Attributes Message
jnx_equities_pts_itch_v1_7.order_added_with_attributes_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_with_attributes_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.order_added_with_attributes_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.order_added_with_attributes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.order_added_with_attributes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.order_added_with_attributes_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Without Attributes Message
jnx_equities_pts_itch_v1_7.order_added_without_attributes_message = {}

-- Size: Order Added Without Attributes Message
jnx_equities_pts_itch_v1_7.order_added_without_attributes_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.order_number.size + 
  jnx_equities_pts_itch_v1_7.buy_sell_indicator.size + 
  jnx_equities_pts_itch_v1_7.quantity.size + 
  jnx_equities_pts_itch_v1_7.orderbook_id.size + 
  jnx_equities_pts_itch_v1_7.group.size + 
  jnx_equities_pts_itch_v1_7.price.size

-- Display: Order Added Without Attributes Message
jnx_equities_pts_itch_v1_7.order_added_without_attributes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Without Attributes Message
jnx_equities_pts_itch_v1_7.order_added_without_attributes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_equities_pts_itch_v1_7.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = jnx_equities_pts_itch_v1_7.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_equities_pts_itch_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_equities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_equities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_equities_pts_itch_v1_7.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Without Attributes Message
jnx_equities_pts_itch_v1_7.order_added_without_attributes_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_without_attributes_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.order_added_without_attributes_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.order_added_without_attributes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.order_added_without_attributes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.order_added_without_attributes_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Selling State
jnx_equities_pts_itch_v1_7.short_selling_state = {}

-- Size: Short Selling State
jnx_equities_pts_itch_v1_7.short_selling_state.size = 1

-- Display: Short Selling State
jnx_equities_pts_itch_v1_7.short_selling_state.display = function(value)
  if value == "0" then
    return "Short Selling State: No Price Restriction (0)"
  end
  if value == "1" then
    return "Short Selling State: Price Restriction In Effect (1)"
  end

  return "Short Selling State: Unknown("..value..")"
end

-- Dissect: Short Selling State
jnx_equities_pts_itch_v1_7.short_selling_state.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.short_selling_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7.short_selling_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.short_selling_state, range, value, display)

  return offset + length, value
end

-- Short Selling Price Restriction State Message
jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message = {}

-- Size: Short Selling Price Restriction State Message
jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.orderbook_id.size + 
  jnx_equities_pts_itch_v1_7.group.size + 
  jnx_equities_pts_itch_v1_7.short_selling_state.size

-- Display: Short Selling Price Restriction State Message
jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Selling Price Restriction State Message
jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_equities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_equities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Short Selling State: Alpha
  index, short_selling_state = jnx_equities_pts_itch_v1_7.short_selling_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Selling Price Restriction State Message
jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message.dissect = function(buffer, offset, packet, parent)
  if show.short_selling_price_restriction_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.short_selling_price_restriction_state_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading State
jnx_equities_pts_itch_v1_7.trading_state = {}

-- Size: Trading State
jnx_equities_pts_itch_v1_7.trading_state.size = 1

-- Display: Trading State
jnx_equities_pts_itch_v1_7.trading_state.display = function(value)
  if value == "T" then
    return "Trading State: Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
jnx_equities_pts_itch_v1_7.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Trading State Message
jnx_equities_pts_itch_v1_7.trading_state_message = {}

-- Size: Trading State Message
jnx_equities_pts_itch_v1_7.trading_state_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.orderbook_id.size + 
  jnx_equities_pts_itch_v1_7.group.size + 
  jnx_equities_pts_itch_v1_7.trading_state.size

-- Display: Trading State Message
jnx_equities_pts_itch_v1_7.trading_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading State Message
jnx_equities_pts_itch_v1_7.trading_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_equities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_equities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = jnx_equities_pts_itch_v1_7.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading State Message
jnx_equities_pts_itch_v1_7.trading_state_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.trading_state_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.trading_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.trading_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.trading_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Lower Price Limit
jnx_equities_pts_itch_v1_7.lower_price_limit = {}

-- Size: Lower Price Limit
jnx_equities_pts_itch_v1_7.lower_price_limit.size = 4

-- Display: Lower Price Limit
jnx_equities_pts_itch_v1_7.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Translate: Lower Price Limit
jnx_equities_pts_itch_v1_7.lower_price_limit.translate = function(raw)
  return raw/10
end

-- Dissect: Lower Price Limit
jnx_equities_pts_itch_v1_7.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.lower_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_equities_pts_itch_v1_7.lower_price_limit.translate(raw)
  local display = jnx_equities_pts_itch_v1_7.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
jnx_equities_pts_itch_v1_7.upper_price_limit = {}

-- Size: Upper Price Limit
jnx_equities_pts_itch_v1_7.upper_price_limit.size = 4

-- Display: Upper Price Limit
jnx_equities_pts_itch_v1_7.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Translate: Upper Price Limit
jnx_equities_pts_itch_v1_7.upper_price_limit.translate = function(raw)
  return raw/10
end

-- Dissect: Upper Price Limit
jnx_equities_pts_itch_v1_7.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.upper_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_equities_pts_itch_v1_7.upper_price_limit.translate(raw)
  local display = jnx_equities_pts_itch_v1_7.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.upper_price_limit, range, value, display)

  return offset + length, value
end

-- Price Decimals
jnx_equities_pts_itch_v1_7.price_decimals = {}

-- Size: Price Decimals
jnx_equities_pts_itch_v1_7.price_decimals.size = 4

-- Display: Price Decimals
jnx_equities_pts_itch_v1_7.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Translate: Price Decimals
jnx_equities_pts_itch_v1_7.price_decimals.translate = function(raw)
  return raw/10
end

-- Dissect: Price Decimals
jnx_equities_pts_itch_v1_7.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.price_decimals.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_equities_pts_itch_v1_7.price_decimals.translate(raw)
  local display = jnx_equities_pts_itch_v1_7.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
jnx_equities_pts_itch_v1_7.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
jnx_equities_pts_itch_v1_7.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
jnx_equities_pts_itch_v1_7.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Translate: Price Tick Size Table Id
jnx_equities_pts_itch_v1_7.price_tick_size_table_id.translate = function(raw)
  return raw/10
end

-- Dissect: Price Tick Size Table Id
jnx_equities_pts_itch_v1_7.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_equities_pts_itch_v1_7.price_tick_size_table_id.translate(raw)
  local display = jnx_equities_pts_itch_v1_7.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Round Lot Size
jnx_equities_pts_itch_v1_7.round_lot_size = {}

-- Size: Round Lot Size
jnx_equities_pts_itch_v1_7.round_lot_size.size = 4

-- Display: Round Lot Size
jnx_equities_pts_itch_v1_7.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
jnx_equities_pts_itch_v1_7.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Orderbook Code
jnx_equities_pts_itch_v1_7.orderbook_code = {}

-- Size: Orderbook Code
jnx_equities_pts_itch_v1_7.orderbook_code.size = 12

-- Display: Orderbook Code
jnx_equities_pts_itch_v1_7.orderbook_code.display = function(value)
  return "Orderbook Code: "..value
end

-- Dissect: Orderbook Code
jnx_equities_pts_itch_v1_7.orderbook_code.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.orderbook_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_itch_v1_7.orderbook_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.orderbook_code, range, value, display)

  return offset + length, value
end

-- Orderbook Directory Message
jnx_equities_pts_itch_v1_7.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
jnx_equities_pts_itch_v1_7.orderbook_directory_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.orderbook_id.size + 
  jnx_equities_pts_itch_v1_7.orderbook_code.size + 
  jnx_equities_pts_itch_v1_7.group.size + 
  jnx_equities_pts_itch_v1_7.round_lot_size.size + 
  jnx_equities_pts_itch_v1_7.price_tick_size_table_id.size + 
  jnx_equities_pts_itch_v1_7.price_decimals.size + 
  jnx_equities_pts_itch_v1_7.upper_price_limit.size + 
  jnx_equities_pts_itch_v1_7.lower_price_limit.size

-- Display: Orderbook Directory Message
jnx_equities_pts_itch_v1_7.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
jnx_equities_pts_itch_v1_7.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_equities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Orderbook Code: Alpha
  index, orderbook_code = jnx_equities_pts_itch_v1_7.orderbook_code.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_equities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = jnx_equities_pts_itch_v1_7.round_lot_size.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = jnx_equities_pts_itch_v1_7.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = jnx_equities_pts_itch_v1_7.price_decimals.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: Integer
  index, upper_price_limit = jnx_equities_pts_itch_v1_7.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: Integer
  index, lower_price_limit = jnx_equities_pts_itch_v1_7.lower_price_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
jnx_equities_pts_itch_v1_7.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.orderbook_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.orderbook_directory_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Start
jnx_equities_pts_itch_v1_7.price_start = {}

-- Size: Price Start
jnx_equities_pts_itch_v1_7.price_start.size = 4

-- Display: Price Start
jnx_equities_pts_itch_v1_7.price_start.display = function(value)
  return "Price Start: "..value
end

-- Translate: Price Start
jnx_equities_pts_itch_v1_7.price_start.translate = function(raw)
  return raw/10
end

-- Dissect: Price Start
jnx_equities_pts_itch_v1_7.price_start.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.price_start.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_equities_pts_itch_v1_7.price_start.translate(raw)
  local display = jnx_equities_pts_itch_v1_7.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size
jnx_equities_pts_itch_v1_7.price_tick_size = {}

-- Size: Price Tick Size
jnx_equities_pts_itch_v1_7.price_tick_size.size = 4

-- Display: Price Tick Size
jnx_equities_pts_itch_v1_7.price_tick_size.display = function(value)
  return "Price Tick Size: "..value
end

-- Translate: Price Tick Size
jnx_equities_pts_itch_v1_7.price_tick_size.translate = function(raw)
  return raw/10
end

-- Dissect: Price Tick Size
jnx_equities_pts_itch_v1_7.price_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.price_tick_size.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_equities_pts_itch_v1_7.price_tick_size.translate(raw)
  local display = jnx_equities_pts_itch_v1_7.price_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Price Tick Size Message
jnx_equities_pts_itch_v1_7.price_tick_size_message = {}

-- Size: Price Tick Size Message
jnx_equities_pts_itch_v1_7.price_tick_size_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.price_tick_size_table_id.size + 
  jnx_equities_pts_itch_v1_7.price_tick_size.size + 
  jnx_equities_pts_itch_v1_7.price_start.size

-- Display: Price Tick Size Message
jnx_equities_pts_itch_v1_7.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
jnx_equities_pts_itch_v1_7.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = jnx_equities_pts_itch_v1_7.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size: Integer
  index, price_tick_size = jnx_equities_pts_itch_v1_7.price_tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: Integer
  index, price_start = jnx_equities_pts_itch_v1_7.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
jnx_equities_pts_itch_v1_7.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.price_tick_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.price_tick_size_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event
jnx_equities_pts_itch_v1_7.system_event = {}

-- Size: System Event
jnx_equities_pts_itch_v1_7.system_event.size = 1

-- Display: System Event
jnx_equities_pts_itch_v1_7.system_event.display = function(value)
  return "System Event: "..value
end

-- Dissect: System Event
jnx_equities_pts_itch_v1_7.system_event.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.system_event, range, value, display)

  return offset + length, value
end

-- System Event Message
jnx_equities_pts_itch_v1_7.system_event_message = {}

-- Size: System Event Message
jnx_equities_pts_itch_v1_7.system_event_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_equities_pts_itch_v1_7.group.size + 
  jnx_equities_pts_itch_v1_7.system_event.size

-- Display: System Event Message
jnx_equities_pts_itch_v1_7.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
jnx_equities_pts_itch_v1_7.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_equities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_equities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- System Event: Alpha
  index, system_event = jnx_equities_pts_itch_v1_7.system_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
jnx_equities_pts_itch_v1_7.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.system_event_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Seconds
jnx_equities_pts_itch_v1_7.timestamp_seconds = {}

-- Size: Timestamp Seconds
jnx_equities_pts_itch_v1_7.timestamp_seconds.size = 4

-- Display: Timestamp Seconds
jnx_equities_pts_itch_v1_7.timestamp_seconds.display = function(value)
  return "Timestamp Seconds: "..value
end

-- Dissect: Timestamp Seconds
jnx_equities_pts_itch_v1_7.timestamp_seconds.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.timestamp_seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7.timestamp_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.timestamp_seconds, range, value, display)

  return offset + length, value
end

-- Timestamp Seconds Message
jnx_equities_pts_itch_v1_7.timestamp_seconds_message = {}

-- Size: Timestamp Seconds Message
jnx_equities_pts_itch_v1_7.timestamp_seconds_message.size =
  jnx_equities_pts_itch_v1_7.timestamp_seconds.size

-- Display: Timestamp Seconds Message
jnx_equities_pts_itch_v1_7.timestamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Seconds Message
jnx_equities_pts_itch_v1_7.timestamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Seconds: Integer
  index, timestamp_seconds = jnx_equities_pts_itch_v1_7.timestamp_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp Seconds Message
jnx_equities_pts_itch_v1_7.timestamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_seconds_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.timestamp_seconds_message, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.timestamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.timestamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.timestamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jnx_equities_pts_itch_v1_7.payload = {}

-- Size: Payload
jnx_equities_pts_itch_v1_7.payload.size = function(buffer, offset, message_type)
  -- Size of Timestamp Seconds Message
  if message_type == "T" then
    return jnx_equities_pts_itch_v1_7.timestamp_seconds_message.size
  end
  -- Size of System Event Message
  if message_type == "S" then
    return jnx_equities_pts_itch_v1_7.system_event_message.size
  end
  -- Size of Price Tick Size Message
  if message_type == "L" then
    return jnx_equities_pts_itch_v1_7.price_tick_size_message.size
  end
  -- Size of Orderbook Directory Message
  if message_type == "R" then
    return jnx_equities_pts_itch_v1_7.orderbook_directory_message.size
  end
  -- Size of Trading State Message
  if message_type == "H" then
    return jnx_equities_pts_itch_v1_7.trading_state_message.size
  end
  -- Size of Short Selling Price Restriction State Message
  if message_type == "Y" then
    return jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message.size
  end
  -- Size of Order Added Without Attributes Message
  if message_type == "A" then
    return jnx_equities_pts_itch_v1_7.order_added_without_attributes_message.size
  end
  -- Size of Order Added With Attributes Message
  if message_type == "F" then
    return jnx_equities_pts_itch_v1_7.order_added_with_attributes_message.size
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return jnx_equities_pts_itch_v1_7.order_executed_message.size
  end
  -- Size of Order Deleted Message
  if message_type == "D" then
    return jnx_equities_pts_itch_v1_7.order_deleted_message.size
  end
  -- Size of Order Replaced Message
  if message_type == "U" then
    return jnx_equities_pts_itch_v1_7.order_replaced_message.size
  end

  return 0
end

-- Display: Payload
jnx_equities_pts_itch_v1_7.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
jnx_equities_pts_itch_v1_7.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Seconds Message
  if message_type == "T" then
    return jnx_equities_pts_itch_v1_7.timestamp_seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return jnx_equities_pts_itch_v1_7.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if message_type == "L" then
    return jnx_equities_pts_itch_v1_7.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if message_type == "R" then
    return jnx_equities_pts_itch_v1_7.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading State Message
  if message_type == "H" then
    return jnx_equities_pts_itch_v1_7.trading_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Selling Price Restriction State Message
  if message_type == "Y" then
    return jnx_equities_pts_itch_v1_7.short_selling_price_restriction_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Without Attributes Message
  if message_type == "A" then
    return jnx_equities_pts_itch_v1_7.order_added_without_attributes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added With Attributes Message
  if message_type == "F" then
    return jnx_equities_pts_itch_v1_7.order_added_with_attributes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return jnx_equities_pts_itch_v1_7.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == "D" then
    return jnx_equities_pts_itch_v1_7.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if message_type == "U" then
    return jnx_equities_pts_itch_v1_7.order_replaced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
jnx_equities_pts_itch_v1_7.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return jnx_equities_pts_itch_v1_7.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jnx_equities_pts_itch_v1_7.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jnx_equities_pts_itch_v1_7.payload.display(buffer, packet, parent)
  local element = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.payload, range, display)

  return jnx_equities_pts_itch_v1_7.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
jnx_equities_pts_itch_v1_7.message_type = {}

-- Size: Message Type
jnx_equities_pts_itch_v1_7.message_type.size = 1

-- Display: Message Type
jnx_equities_pts_itch_v1_7.message_type.display = function(value)
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
jnx_equities_pts_itch_v1_7.message_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_itch_v1_7.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
jnx_equities_pts_itch_v1_7.message_length = {}

-- Size: Message Length
jnx_equities_pts_itch_v1_7.message_length.size = 2

-- Display: Message Length
jnx_equities_pts_itch_v1_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jnx_equities_pts_itch_v1_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
jnx_equities_pts_itch_v1_7.message_header = {}

-- Size: Message Header
jnx_equities_pts_itch_v1_7.message_header.size =
  jnx_equities_pts_itch_v1_7.message_length.size + 
  jnx_equities_pts_itch_v1_7.message_type.size

-- Display: Message Header
jnx_equities_pts_itch_v1_7.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
jnx_equities_pts_itch_v1_7.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = jnx_equities_pts_itch_v1_7.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = jnx_equities_pts_itch_v1_7.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
jnx_equities_pts_itch_v1_7.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.message_header, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
jnx_equities_pts_itch_v1_7.message = {}

-- Display: Message
jnx_equities_pts_itch_v1_7.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
jnx_equities_pts_itch_v1_7.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = jnx_equities_pts_itch_v1_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = jnx_equities_pts_itch_v1_7.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
jnx_equities_pts_itch_v1_7.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.message, buffer(offset, 0))
    local current = jnx_equities_pts_itch_v1_7.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = jnx_equities_pts_itch_v1_7.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_equities_pts_itch_v1_7.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
jnx_equities_pts_itch_v1_7.message_count = {}

-- Size: Message Count
jnx_equities_pts_itch_v1_7.message_count.size = 2

-- Display: Message Count
jnx_equities_pts_itch_v1_7.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
jnx_equities_pts_itch_v1_7.message_count.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_itch_v1_7.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
jnx_equities_pts_itch_v1_7.sequence_number = {}

-- Size: Sequence Number
jnx_equities_pts_itch_v1_7.sequence_number.size = 8

-- Display: Sequence Number
jnx_equities_pts_itch_v1_7.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jnx_equities_pts_itch_v1_7.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_itch_v1_7.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
jnx_equities_pts_itch_v1_7.session = {}

-- Size: Session
jnx_equities_pts_itch_v1_7.session.size = 10

-- Display: Session
jnx_equities_pts_itch_v1_7.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
jnx_equities_pts_itch_v1_7.session.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_itch_v1_7.session.size
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

  local display = jnx_equities_pts_itch_v1_7.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_itch_v1_7.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
jnx_equities_pts_itch_v1_7.packet_header = {}

-- Size: Packet Header
jnx_equities_pts_itch_v1_7.packet_header.size =
  jnx_equities_pts_itch_v1_7.session.size + 
  jnx_equities_pts_itch_v1_7.sequence_number.size + 
  jnx_equities_pts_itch_v1_7.message_count.size

-- Display: Packet Header
jnx_equities_pts_itch_v1_7.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
jnx_equities_pts_itch_v1_7.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = jnx_equities_pts_itch_v1_7.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = jnx_equities_pts_itch_v1_7.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = jnx_equities_pts_itch_v1_7.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
jnx_equities_pts_itch_v1_7.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_itch_v1_7.fields.packet_header, buffer(offset, 0))
    local index = jnx_equities_pts_itch_v1_7.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_itch_v1_7.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_itch_v1_7.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
jnx_equities_pts_itch_v1_7.packet = {}

-- Dissect Packet
jnx_equities_pts_itch_v1_7.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = jnx_equities_pts_itch_v1_7.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = jnx_equities_pts_itch_v1_7.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jnx_equities_pts_itch_v1_7.init()
end

-- Dissector for Jnx Equities Pts Itch 1.7
function omi_jnx_equities_pts_itch_v1_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_jnx_equities_pts_itch_v1_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_jnx_equities_pts_itch_v1_7, buffer(), omi_jnx_equities_pts_itch_v1_7.description, "("..buffer:len().." Bytes)")
  return jnx_equities_pts_itch_v1_7.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_jnx_equities_pts_itch_v1_7)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
jnx_equities_pts_itch_v1_7.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Jnx Equities Pts Itch 1.7
local function omi_jnx_equities_pts_itch_v1_7_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jnx_equities_pts_itch_v1_7.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jnx_equities_pts_itch_v1_7
  omi_jnx_equities_pts_itch_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jnx Equities Pts Itch 1.7
omi_jnx_equities_pts_itch_v1_7:register_heuristic("udp", omi_jnx_equities_pts_itch_v1_7_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
