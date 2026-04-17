-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Odx OdxSecurityToken Pts Itch 2.2 Protocol
local omi_odx_odxsecuritytoken_pts_itch_v2_2 = Proto("Odx.OdxSecurityToken.Pts.Itch.v2.2.Lua", "Odx OdxSecurityToken Pts Itch 2.2")

-- Protocol table
local odx_odxsecuritytoken_pts_itch_v2_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Odx OdxSecurityToken Pts Itch 2.2 Fields
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "odx.odxsecuritytoken.pts.itch.v2.2.buysellindicator", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.executed_quantity = ProtoField.new("Executed Quantity", "odx.odxsecuritytoken.pts.itch.v2.2.executedquantity", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.group = ProtoField.new("Group", "odx.odxsecuritytoken.pts.itch.v2.2.group", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "odx.odxsecuritytoken.pts.itch.v2.2.lowerpricelimit", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.match_number = ProtoField.new("Match Number", "odx.odxsecuritytoken.pts.itch.v2.2.matchnumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message = ProtoField.new("Message", "odx.odxsecuritytoken.pts.itch.v2.2.message", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_count = ProtoField.new("Message Count", "odx.odxsecuritytoken.pts.itch.v2.2.messagecount", ftypes.UINT16)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_header = ProtoField.new("Message Header", "odx.odxsecuritytoken.pts.itch.v2.2.messageheader", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_length = ProtoField.new("Message Length", "odx.odxsecuritytoken.pts.itch.v2.2.messagelength", ftypes.UINT16)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_type = ProtoField.new("Message Type", "odx.odxsecuritytoken.pts.itch.v2.2.messagetype", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "odx.odxsecuritytoken.pts.itch.v2.2.nanoseconds", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.new_order_number = ProtoField.new("New Order Number", "odx.odxsecuritytoken.pts.itch.v2.2.newordernumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_number = ProtoField.new("Order Number", "odx.odxsecuritytoken.pts.itch.v2.2.ordernumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.orderbook_code = ProtoField.new("Orderbook Code", "odx.odxsecuritytoken.pts.itch.v2.2.orderbookcode", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.orderbook_id = ProtoField.new("Orderbook Id", "odx.odxsecuritytoken.pts.itch.v2.2.orderbookid", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.original_order_number = ProtoField.new("Original Order Number", "odx.odxsecuritytoken.pts.itch.v2.2.originalordernumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.packet = ProtoField.new("Packet", "odx.odxsecuritytoken.pts.itch.v2.2.packet", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.packet_header = ProtoField.new("Packet Header", "odx.odxsecuritytoken.pts.itch.v2.2.packetheader", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price = ProtoField.new("Price", "odx.odxsecuritytoken.pts.itch.v2.2.price", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_decimals = ProtoField.new("Price Decimals", "odx.odxsecuritytoken.pts.itch.v2.2.pricedecimals", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_start = ProtoField.new("Price Start", "odx.odxsecuritytoken.pts.itch.v2.2.pricestart", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_tick_size = ProtoField.new("Price Tick Size", "odx.odxsecuritytoken.pts.itch.v2.2.priceticksize", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "odx.odxsecuritytoken.pts.itch.v2.2.priceticksizetableid", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.quantity = ProtoField.new("Quantity", "odx.odxsecuritytoken.pts.itch.v2.2.quantity", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.round_lot_size = ProtoField.new("Round Lot Size", "odx.odxsecuritytoken.pts.itch.v2.2.roundlotsize", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.second = ProtoField.new("Second", "odx.odxsecuritytoken.pts.itch.v2.2.second", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.sequence_number = ProtoField.new("Sequence Number", "odx.odxsecuritytoken.pts.itch.v2.2.sequencenumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.session = ProtoField.new("Session", "odx.odxsecuritytoken.pts.itch.v2.2.session", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.short_selling_state = ProtoField.new("Short Selling State", "odx.odxsecuritytoken.pts.itch.v2.2.shortsellingstate", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.system_event = ProtoField.new("System Event", "odx.odxsecuritytoken.pts.itch.v2.2.systemevent", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.trading_state = ProtoField.new("Trading State", "odx.odxsecuritytoken.pts.itch.v2.2.tradingstate", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "odx.odxsecuritytoken.pts.itch.v2.2.upperpricelimit", ftypes.DOUBLE)

-- Odx OdxSecurityToken Itch Pts 2.2 Application Messages
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_added_message = ProtoField.new("Order Added Message", "odx.odxsecuritytoken.pts.itch.v2.2.orderaddedmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "odx.odxsecuritytoken.pts.itch.v2.2.orderdeletedmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_executed_message = ProtoField.new("Order Executed Message", "odx.odxsecuritytoken.pts.itch.v2.2.orderexecutedmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "odx.odxsecuritytoken.pts.itch.v2.2.orderreplacedmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "odx.odxsecuritytoken.pts.itch.v2.2.orderbookdirectorymessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "odx.odxsecuritytoken.pts.itch.v2.2.priceticksizemessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.short_selling_price_restriction_state_message = ProtoField.new("Short Selling Price Restriction State Message", "odx.odxsecuritytoken.pts.itch.v2.2.shortsellingpricerestrictionstatemessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.system_event_message = ProtoField.new("System Event Message", "odx.odxsecuritytoken.pts.itch.v2.2.systemeventmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.timestamp_seconds_message = ProtoField.new("Timestamp Seconds Message", "odx.odxsecuritytoken.pts.itch.v2.2.timestampsecondsmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.trading_state_message = ProtoField.new("Trading State Message", "odx.odxsecuritytoken.pts.itch.v2.2.tradingstatemessage", ftypes.STRING)

-- Odx OdxSecurityToken Pts Itch 2.2 generated fields
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_index = ProtoField.new("Message Index", "odx.odxsecuritytoken.pts.itch.v2.2.messageindex", ftypes.UINT16)
omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.timestamp = ProtoField.new("Timestamp", "odx.odxsecuritytoken.pts.itch.v2.2.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Odx OdxSecurityToken Pts Itch 2.2 Element Dissection Options
show.message = true
show.message_header = true
show.application_messages = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Odx OdxSecurityToken Pts Itch 2.2 Show Options
omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Nanoseconds Display Preferences
odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
odx_odxsecuritytoken_pts_itch_v2_2.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local nanoseconds_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.nanoseconds_format = Pref.enum("Nanoseconds Format", 2, "Nanoseconds display format", nanoseconds_format_enum, false)
omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_application_messages then
    show.application_messages = omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_application_messages
  end
  if show.message ~= omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_message then
    show.message = omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_message
  end
  if show.message_header ~= omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_message_header then
    show.message_header = omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_message_header
  end
  if show.packet ~= omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_packet then
    show.packet = omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_packet
  end
  if show.packet_header ~= omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_packet_header then
    show.packet_header = omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_packet_header
  end
  if show.message_index ~= omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_message_index then
    show.message_index = omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.show_message_index
  end

  -- Check Nanoseconds preferences
  if odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds_format ~= omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.nanoseconds_format then
    odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds_format = omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.nanoseconds_format
  end
  if odx_odxsecuritytoken_pts_itch_v2_2.utc_offset_hours ~= omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.utc_offset_hours then
    odx_odxsecuritytoken_pts_itch_v2_2.utc_offset_hours = omi_odx_odxsecuritytoken_pts_itch_v2_2.prefs.utc_offset_hours
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
-- Odx OdxSecurityToken Pts Itch 2.2 Fields
-----------------------------------------------------------------------

-- Buy Sell Indicator
odx_odxsecuritytoken_pts_itch_v2_2.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
odx_odxsecuritytoken_pts_itch_v2_2.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
odx_odxsecuritytoken_pts_itch_v2_2.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
odx_odxsecuritytoken_pts_itch_v2_2.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Executed Quantity
odx_odxsecuritytoken_pts_itch_v2_2.executed_quantity = {}

-- Size: Executed Quantity
odx_odxsecuritytoken_pts_itch_v2_2.executed_quantity.size = 4

-- Display: Executed Quantity
odx_odxsecuritytoken_pts_itch_v2_2.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
odx_odxsecuritytoken_pts_itch_v2_2.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Group
odx_odxsecuritytoken_pts_itch_v2_2.group = {}

-- Size: Group
odx_odxsecuritytoken_pts_itch_v2_2.group.size = 4

-- Display: Group
odx_odxsecuritytoken_pts_itch_v2_2.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
odx_odxsecuritytoken_pts_itch_v2_2.group.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxsecuritytoken_pts_itch_v2_2.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.group, range, value, display)

  return offset + length, value
end

-- Lower Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit = {}

-- Size: Lower Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit.size = 4

-- Display: Lower Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Translate: Lower Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit.translate = function(raw)
  return raw/10
end

-- Dissect: Lower Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Match Number
odx_odxsecuritytoken_pts_itch_v2_2.match_number = {}

-- Size: Match Number
odx_odxsecuritytoken_pts_itch_v2_2.match_number.size = 8

-- Display: Match Number
odx_odxsecuritytoken_pts_itch_v2_2.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
odx_odxsecuritytoken_pts_itch_v2_2.match_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
odx_odxsecuritytoken_pts_itch_v2_2.message_count = {}

-- Size: Message Count
odx_odxsecuritytoken_pts_itch_v2_2.message_count.size = 2

-- Display: Message Count
odx_odxsecuritytoken_pts_itch_v2_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
odx_odxsecuritytoken_pts_itch_v2_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
odx_odxsecuritytoken_pts_itch_v2_2.message_length = {}

-- Size: Message Length
odx_odxsecuritytoken_pts_itch_v2_2.message_length.size = 2

-- Display: Message Length
odx_odxsecuritytoken_pts_itch_v2_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
odx_odxsecuritytoken_pts_itch_v2_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
odx_odxsecuritytoken_pts_itch_v2_2.message_type = {}

-- Size: Message Type
odx_odxsecuritytoken_pts_itch_v2_2.message_type.size = 1

-- Display: Message Type
odx_odxsecuritytoken_pts_itch_v2_2.message_type.display = function(value)
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
odx_odxsecuritytoken_pts_itch_v2_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds = {}

-- Size: Nanoseconds
odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size = 4

-- Display: Nanoseconds
odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Order Number
odx_odxsecuritytoken_pts_itch_v2_2.new_order_number = {}

-- Size: New Order Number
odx_odxsecuritytoken_pts_itch_v2_2.new_order_number.size = 8

-- Display: New Order Number
odx_odxsecuritytoken_pts_itch_v2_2.new_order_number.display = function(value)
  return "New Order Number: "..value
end

-- Dissect: New Order Number
odx_odxsecuritytoken_pts_itch_v2_2.new_order_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.new_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.new_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.new_order_number, range, value, display)

  return offset + length, value
end

-- Order Number
odx_odxsecuritytoken_pts_itch_v2_2.order_number = {}

-- Size: Order Number
odx_odxsecuritytoken_pts_itch_v2_2.order_number.size = 8

-- Display: Order Number
odx_odxsecuritytoken_pts_itch_v2_2.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
odx_odxsecuritytoken_pts_itch_v2_2.order_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_number, range, value, display)

  return offset + length, value
end

-- Orderbook Code
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_code = {}

-- Size: Orderbook Code
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_code.size = 12

-- Display: Orderbook Code
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_code.display = function(value)
  return "Orderbook Code: "..value
end

-- Dissect: Orderbook Code
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_code.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.orderbook_code, range, value, display)

  return offset + length, value
end

-- Orderbook Id
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id = {}

-- Size: Orderbook Id
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.size = 4

-- Display: Orderbook Id
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Original Order Number
odx_odxsecuritytoken_pts_itch_v2_2.original_order_number = {}

-- Size: Original Order Number
odx_odxsecuritytoken_pts_itch_v2_2.original_order_number.size = 8

-- Display: Original Order Number
odx_odxsecuritytoken_pts_itch_v2_2.original_order_number.display = function(value)
  return "Original Order Number: "..value
end

-- Dissect: Original Order Number
odx_odxsecuritytoken_pts_itch_v2_2.original_order_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.original_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.original_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.original_order_number, range, value, display)

  return offset + length, value
end

-- Price
odx_odxsecuritytoken_pts_itch_v2_2.price = {}

-- Size: Price
odx_odxsecuritytoken_pts_itch_v2_2.price.size = 4

-- Display: Price
odx_odxsecuritytoken_pts_itch_v2_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
odx_odxsecuritytoken_pts_itch_v2_2.price.translate = function(raw)
  return raw/10
end

-- Dissect: Price
odx_odxsecuritytoken_pts_itch_v2_2.price.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v2_2.price.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v2_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price, range, value, display)

  return offset + length, value
end

-- Price Decimals
odx_odxsecuritytoken_pts_itch_v2_2.price_decimals = {}

-- Size: Price Decimals
odx_odxsecuritytoken_pts_itch_v2_2.price_decimals.size = 4

-- Display: Price Decimals
odx_odxsecuritytoken_pts_itch_v2_2.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
odx_odxsecuritytoken_pts_itch_v2_2.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Start
odx_odxsecuritytoken_pts_itch_v2_2.price_start = {}

-- Size: Price Start
odx_odxsecuritytoken_pts_itch_v2_2.price_start.size = 4

-- Display: Price Start
odx_odxsecuritytoken_pts_itch_v2_2.price_start.display = function(value)
  return "Price Start: "..value
end

-- Translate: Price Start
odx_odxsecuritytoken_pts_itch_v2_2.price_start.translate = function(raw)
  return raw/10
end

-- Dissect: Price Start
odx_odxsecuritytoken_pts_itch_v2_2.price_start.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.price_start.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v2_2.price_start.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v2_2.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size = {}

-- Size: Price Tick Size
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size.size = 4

-- Display: Price Tick Size
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size.display = function(value)
  return "Price Tick Size: "..value
end

-- Translate: Price Tick Size
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size.translate = function(raw)
  return raw/10
end

-- Dissect: Price Tick Size
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Dissect: Price Tick Size Table Id
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Quantity
odx_odxsecuritytoken_pts_itch_v2_2.quantity = {}

-- Size: Quantity
odx_odxsecuritytoken_pts_itch_v2_2.quantity.size = 4

-- Display: Quantity
odx_odxsecuritytoken_pts_itch_v2_2.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
odx_odxsecuritytoken_pts_itch_v2_2.quantity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Round Lot Size
odx_odxsecuritytoken_pts_itch_v2_2.round_lot_size = {}

-- Size: Round Lot Size
odx_odxsecuritytoken_pts_itch_v2_2.round_lot_size.size = 4

-- Display: Round Lot Size
odx_odxsecuritytoken_pts_itch_v2_2.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
odx_odxsecuritytoken_pts_itch_v2_2.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
odx_odxsecuritytoken_pts_itch_v2_2.second = {}

-- Size: Second
odx_odxsecuritytoken_pts_itch_v2_2.second.size = 4

-- Store: Second
odx_odxsecuritytoken_pts_itch_v2_2.second.store = nil

-- Generated: Second
odx_odxsecuritytoken_pts_itch_v2_2.second.generated = function(value, range, packet, parent)
  local display = odx_odxsecuritytoken_pts_itch_v2_2.second.display(value)
  local second = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
odx_odxsecuritytoken_pts_itch_v2_2.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
odx_odxsecuritytoken_pts_itch_v2_2.second.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
odx_odxsecuritytoken_pts_itch_v2_2.sequence_number = {}

-- Size: Sequence Number
odx_odxsecuritytoken_pts_itch_v2_2.sequence_number.size = 8

-- Display: Sequence Number
odx_odxsecuritytoken_pts_itch_v2_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
odx_odxsecuritytoken_pts_itch_v2_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
odx_odxsecuritytoken_pts_itch_v2_2.session = {}

-- Size: Session
odx_odxsecuritytoken_pts_itch_v2_2.session.size = 10

-- Display: Session
odx_odxsecuritytoken_pts_itch_v2_2.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
odx_odxsecuritytoken_pts_itch_v2_2.session.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.session.size
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

  local display = odx_odxsecuritytoken_pts_itch_v2_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.session, range, value, display)

  return offset + length, value
end

-- Short Selling State
odx_odxsecuritytoken_pts_itch_v2_2.short_selling_state = {}

-- Size: Short Selling State
odx_odxsecuritytoken_pts_itch_v2_2.short_selling_state.size = 1

-- Display: Short Selling State
odx_odxsecuritytoken_pts_itch_v2_2.short_selling_state.display = function(value)
  if value == "0" then
    return "Short Selling State: No Price Restriction (0)"
  end
  if value == "1" then
    return "Short Selling State: Price Restriction In Effect (1)"
  end

  return "Short Selling State: Unknown("..value..")"
end

-- Dissect: Short Selling State
odx_odxsecuritytoken_pts_itch_v2_2.short_selling_state.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.short_selling_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.short_selling_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.short_selling_state, range, value, display)

  return offset + length, value
end

-- System Event
odx_odxsecuritytoken_pts_itch_v2_2.system_event = {}

-- Size: System Event
odx_odxsecuritytoken_pts_itch_v2_2.system_event.size = 1

-- Display: System Event
odx_odxsecuritytoken_pts_itch_v2_2.system_event.display = function(value)
  if value == "O" then
    return "System Event: Start Of Messages (O)"
  end
  if value == "S" then
    return "System Event: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "System Event: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "System Event: End Of Market Hours (M)"
  end
  if value == "E" then
    return "System Event: End Of System Hours (E)"
  end
  if value == "C" then
    return "System Event: End Of Messages (C)"
  end

  return "System Event: Unknown("..value..")"
end

-- Dissect: System Event
odx_odxsecuritytoken_pts_itch_v2_2.system_event.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.system_event, range, value, display)

  return offset + length, value
end

-- Trading State
odx_odxsecuritytoken_pts_itch_v2_2.trading_state = {}

-- Size: Trading State
odx_odxsecuritytoken_pts_itch_v2_2.trading_state.size = 1

-- Display: Trading State
odx_odxsecuritytoken_pts_itch_v2_2.trading_state.display = function(value)
  if value == "T" then
    return "Trading State: Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
odx_odxsecuritytoken_pts_itch_v2_2.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v2_2.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit = {}

-- Size: Upper Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit.size = 4

-- Display: Upper Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Translate: Upper Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit.translate = function(raw)
  return raw/10
end

-- Dissect: Upper Price Limit
odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.upper_price_limit, range, value, display)

  return offset + length, value
end

-- Timestamp
odx_odxsecuritytoken_pts_itch_v2_2.timestamp = {}

-- Translate: Timestamp
odx_odxsecuritytoken_pts_itch_v2_2.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
odx_odxsecuritytoken_pts_itch_v2_2.timestamp.display = function(nanoseconds, stored_second, packet)
  -- Raw display mode
  if odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds_format == 0 then
    return "Timestamp: "..(stored_second * 1000000000 + nanoseconds)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = odx_odxsecuritytoken_pts_itch_v2_2.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + stored_second

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
odx_odxsecuritytoken_pts_itch_v2_2.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.translate(nanoseconds, stored_second)
  local display = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.display(nanoseconds, stored_second)
  parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.timestamp, range, value, display)

  odx_odxsecuritytoken_pts_itch_v2_2.second.generated(stored_second, range, packet, parent)

  display = odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.display(nanoseconds)
  parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_second = odx_odxsecuritytoken_pts_itch_v2_2.second.store

  if stored_second ~= nil then
    return odx_odxsecuritytoken_pts_itch_v2_2.timestamp.composite(buffer, offset, stored_second, packet, parent)
  end

  return odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Odx OdxSecurityToken Pts Itch 2.2
-----------------------------------------------------------------------

-- Order Replaced Message
odx_odxsecuritytoken_pts_itch_v2_2.order_replaced_message = {}

-- Size: Order Replaced Message
odx_odxsecuritytoken_pts_itch_v2_2.order_replaced_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.original_order_number.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.new_order_number.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.quantity.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.price.size

-- Display: Order Replaced Message
odx_odxsecuritytoken_pts_itch_v2_2.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
odx_odxsecuritytoken_pts_itch_v2_2.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Number: Integer
  index, original_order_number = odx_odxsecuritytoken_pts_itch_v2_2.original_order_number.dissect(buffer, index, packet, parent)

  -- New Order Number: Integer
  index, new_order_number = odx_odxsecuritytoken_pts_itch_v2_2.new_order_number.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = odx_odxsecuritytoken_pts_itch_v2_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = odx_odxsecuritytoken_pts_itch_v2_2.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
odx_odxsecuritytoken_pts_itch_v2_2.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_replaced_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
odx_odxsecuritytoken_pts_itch_v2_2.order_deleted_message = {}

-- Size: Order Deleted Message
odx_odxsecuritytoken_pts_itch_v2_2.order_deleted_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.order_number.size

-- Display: Order Deleted Message
odx_odxsecuritytoken_pts_itch_v2_2.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
odx_odxsecuritytoken_pts_itch_v2_2.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxsecuritytoken_pts_itch_v2_2.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
odx_odxsecuritytoken_pts_itch_v2_2.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_deleted_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
odx_odxsecuritytoken_pts_itch_v2_2.order_executed_message = {}

-- Size: Order Executed Message
odx_odxsecuritytoken_pts_itch_v2_2.order_executed_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.order_number.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.executed_quantity.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.match_number.size

-- Display: Order Executed Message
odx_odxsecuritytoken_pts_itch_v2_2.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
odx_odxsecuritytoken_pts_itch_v2_2.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxsecuritytoken_pts_itch_v2_2.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Quantity
  index, executed_quantity = odx_odxsecuritytoken_pts_itch_v2_2.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = odx_odxsecuritytoken_pts_itch_v2_2.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
odx_odxsecuritytoken_pts_itch_v2_2.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_executed_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Message
odx_odxsecuritytoken_pts_itch_v2_2.order_added_message = {}

-- Size: Order Added Message
odx_odxsecuritytoken_pts_itch_v2_2.order_added_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.order_number.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.buy_sell_indicator.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.quantity.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.group.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.price.size

-- Display: Order Added Message
odx_odxsecuritytoken_pts_itch_v2_2.order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Message
odx_odxsecuritytoken_pts_itch_v2_2.order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxsecuritytoken_pts_itch_v2_2.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = odx_odxsecuritytoken_pts_itch_v2_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = odx_odxsecuritytoken_pts_itch_v2_2.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxsecuritytoken_pts_itch_v2_2.group.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = odx_odxsecuritytoken_pts_itch_v2_2.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Message
odx_odxsecuritytoken_pts_itch_v2_2.order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.order_added_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Selling Price Restriction State Message
odx_odxsecuritytoken_pts_itch_v2_2.short_selling_price_restriction_state_message = {}

-- Size: Short Selling Price Restriction State Message
odx_odxsecuritytoken_pts_itch_v2_2.short_selling_price_restriction_state_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.group.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.short_selling_state.size

-- Display: Short Selling Price Restriction State Message
odx_odxsecuritytoken_pts_itch_v2_2.short_selling_price_restriction_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Selling Price Restriction State Message
odx_odxsecuritytoken_pts_itch_v2_2.short_selling_price_restriction_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxsecuritytoken_pts_itch_v2_2.group.dissect(buffer, index, packet, parent)

  -- Short Selling State: Alpha
  index, short_selling_state = odx_odxsecuritytoken_pts_itch_v2_2.short_selling_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Selling Price Restriction State Message
odx_odxsecuritytoken_pts_itch_v2_2.short_selling_price_restriction_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.short_selling_price_restriction_state_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.short_selling_price_restriction_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.short_selling_price_restriction_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.short_selling_price_restriction_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading State Message
odx_odxsecuritytoken_pts_itch_v2_2.trading_state_message = {}

-- Size: Trading State Message
odx_odxsecuritytoken_pts_itch_v2_2.trading_state_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.group.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.trading_state.size

-- Display: Trading State Message
odx_odxsecuritytoken_pts_itch_v2_2.trading_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading State Message
odx_odxsecuritytoken_pts_itch_v2_2.trading_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxsecuritytoken_pts_itch_v2_2.group.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = odx_odxsecuritytoken_pts_itch_v2_2.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading State Message
odx_odxsecuritytoken_pts_itch_v2_2.trading_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.trading_state_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.trading_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.trading_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.trading_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_directory_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.orderbook_code.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.group.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.round_lot_size.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.price_decimals.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit.size

-- Display: Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Orderbook Code: Alpha
  index, orderbook_code = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_code.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxsecuritytoken_pts_itch_v2_2.group.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Quantity
  index, round_lot_size = odx_odxsecuritytoken_pts_itch_v2_2.round_lot_size.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = odx_odxsecuritytoken_pts_itch_v2_2.price_decimals.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: Price
  index, upper_price_limit = odx_odxsecuritytoken_pts_itch_v2_2.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: Price
  index, lower_price_limit = odx_odxsecuritytoken_pts_itch_v2_2.lower_price_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v2_2.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.orderbook_directory_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_message = {}

-- Size: Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.price_start.size

-- Display: Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size: Price
  index, price_tick_size = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: Price
  index, price_start = odx_odxsecuritytoken_pts_itch_v2_2.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.price_tick_size_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
odx_odxsecuritytoken_pts_itch_v2_2.system_event_message = {}

-- Size: System Event Message
odx_odxsecuritytoken_pts_itch_v2_2.system_event_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.group.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.system_event.size

-- Display: System Event Message
odx_odxsecuritytoken_pts_itch_v2_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
odx_odxsecuritytoken_pts_itch_v2_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxsecuritytoken_pts_itch_v2_2.group.dissect(buffer, index, packet, parent)

  -- System Event: Alpha
  index, system_event = odx_odxsecuritytoken_pts_itch_v2_2.system_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
odx_odxsecuritytoken_pts_itch_v2_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.system_event_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Seconds Message
odx_odxsecuritytoken_pts_itch_v2_2.timestamp_seconds_message = {}

-- Size: Timestamp Seconds Message
odx_odxsecuritytoken_pts_itch_v2_2.timestamp_seconds_message.size =
  odx_odxsecuritytoken_pts_itch_v2_2.second.size

-- Display: Timestamp Seconds Message
odx_odxsecuritytoken_pts_itch_v2_2.timestamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Seconds Message
odx_odxsecuritytoken_pts_itch_v2_2.timestamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = odx_odxsecuritytoken_pts_itch_v2_2.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  odx_odxsecuritytoken_pts_itch_v2_2.second.store = second

  return index
end

-- Dissect: Timestamp Seconds Message
odx_odxsecuritytoken_pts_itch_v2_2.timestamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.timestamp_seconds_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.timestamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.timestamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.timestamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
odx_odxsecuritytoken_pts_itch_v2_2.payload = {}

-- Dissect: Payload
odx_odxsecuritytoken_pts_itch_v2_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Seconds Message
  if message_type == "T" then
    return odx_odxsecuritytoken_pts_itch_v2_2.timestamp_seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return odx_odxsecuritytoken_pts_itch_v2_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if message_type == "L" then
    return odx_odxsecuritytoken_pts_itch_v2_2.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if message_type == "R" then
    return odx_odxsecuritytoken_pts_itch_v2_2.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading State Message
  if message_type == "H" then
    return odx_odxsecuritytoken_pts_itch_v2_2.trading_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Selling Price Restriction State Message
  if message_type == "Y" then
    return odx_odxsecuritytoken_pts_itch_v2_2.short_selling_price_restriction_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Message
  if message_type == "A" then
    return odx_odxsecuritytoken_pts_itch_v2_2.order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return odx_odxsecuritytoken_pts_itch_v2_2.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == "D" then
    return odx_odxsecuritytoken_pts_itch_v2_2.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if message_type == "U" then
    return odx_odxsecuritytoken_pts_itch_v2_2.order_replaced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
odx_odxsecuritytoken_pts_itch_v2_2.message_header = {}

-- Size: Message Header
odx_odxsecuritytoken_pts_itch_v2_2.message_header.size =
  odx_odxsecuritytoken_pts_itch_v2_2.message_length.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.message_type.size

-- Display: Message Header
odx_odxsecuritytoken_pts_itch_v2_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
odx_odxsecuritytoken_pts_itch_v2_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = odx_odxsecuritytoken_pts_itch_v2_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = odx_odxsecuritytoken_pts_itch_v2_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
odx_odxsecuritytoken_pts_itch_v2_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_header, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
odx_odxsecuritytoken_pts_itch_v2_2.message = {}

-- Read runtime size of: Message
odx_odxsecuritytoken_pts_itch_v2_2.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
odx_odxsecuritytoken_pts_itch_v2_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
odx_odxsecuritytoken_pts_itch_v2_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = odx_odxsecuritytoken_pts_itch_v2_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 10 branches
  index = odx_odxsecuritytoken_pts_itch_v2_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
odx_odxsecuritytoken_pts_itch_v2_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = odx_odxsecuritytoken_pts_itch_v2_2.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.message, buffer(offset, 0))
    local current = odx_odxsecuritytoken_pts_itch_v2_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxsecuritytoken_pts_itch_v2_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
odx_odxsecuritytoken_pts_itch_v2_2.messages = {}

-- Dissect: Messages
odx_odxsecuritytoken_pts_itch_v2_2.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return offset
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = odx_odxsecuritytoken_pts_itch_v2_2.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
odx_odxsecuritytoken_pts_itch_v2_2.packet_header = {}

-- Size: Packet Header
odx_odxsecuritytoken_pts_itch_v2_2.packet_header.size =
  odx_odxsecuritytoken_pts_itch_v2_2.session.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.sequence_number.size + 
  odx_odxsecuritytoken_pts_itch_v2_2.message_count.size

-- Display: Packet Header
odx_odxsecuritytoken_pts_itch_v2_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
odx_odxsecuritytoken_pts_itch_v2_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = odx_odxsecuritytoken_pts_itch_v2_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = odx_odxsecuritytoken_pts_itch_v2_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = odx_odxsecuritytoken_pts_itch_v2_2.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
odx_odxsecuritytoken_pts_itch_v2_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2.fields.packet_header, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v2_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v2_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v2_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
odx_odxsecuritytoken_pts_itch_v2_2.packet = {}

-- Dissect Packet
odx_odxsecuritytoken_pts_itch_v2_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = odx_odxsecuritytoken_pts_itch_v2_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = odx_odxsecuritytoken_pts_itch_v2_2.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_odx_odxsecuritytoken_pts_itch_v2_2.init()
end

-- Dissector for Odx OdxSecurityToken Pts Itch 2.2
function omi_odx_odxsecuritytoken_pts_itch_v2_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_odx_odxsecuritytoken_pts_itch_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_odx_odxsecuritytoken_pts_itch_v2_2, buffer(), omi_odx_odxsecuritytoken_pts_itch_v2_2.description, "("..buffer:len().." Bytes)")
  return odx_odxsecuritytoken_pts_itch_v2_2.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_odx_odxsecuritytoken_pts_itch_v2_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
odx_odxsecuritytoken_pts_itch_v2_2.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Odx OdxSecurityToken Pts Itch 2.2
local function omi_odx_odxsecuritytoken_pts_itch_v2_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not odx_odxsecuritytoken_pts_itch_v2_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_odx_odxsecuritytoken_pts_itch_v2_2
  omi_odx_odxsecuritytoken_pts_itch_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Odx OdxSecurityToken Pts Itch 2.2
omi_odx_odxsecuritytoken_pts_itch_v2_2:register_heuristic("udp", omi_odx_odxsecuritytoken_pts_itch_v2_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Osaka Digital Exchange
--   Version: 2.2
--   Date: Monday, April 6, 2026
--   Specification: ODX_PTS_ITCH_Equities_v2.2.pdf
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
