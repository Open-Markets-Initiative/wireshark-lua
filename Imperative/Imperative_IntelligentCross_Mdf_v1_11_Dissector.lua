-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Imperative IntelligentCross Mdf 1.11 Protocol
local imperative_intelligentcross_mdf_v1_11 = Proto("Imperative.IntelligentCross.Mdf.v1.11.Lua", "Imperative IntelligentCross Mdf 1.11")

-- Component Tables
local show = {}
local format = {}
local imperative_intelligentcross_mdf_v1_11_display = {}
local imperative_intelligentcross_mdf_v1_11_dissect = {}
local imperative_intelligentcross_mdf_v1_11_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Imperative IntelligentCross Mdf 1.11 Fields
imperative_intelligentcross_mdf_v1_11.fields.count = ProtoField.new("Count", "imperative.intelligentcross.mdf.v1.11.count", ftypes.UINT16)
imperative_intelligentcross_mdf_v1_11.fields.event = ProtoField.new("Event", "imperative.intelligentcross.mdf.v1.11.event", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.execution_id = ProtoField.new("Execution Id", "imperative.intelligentcross.mdf.v1.11.executionid", ftypes.UINT64)
imperative_intelligentcross_mdf_v1_11.fields.feed_identifier = ProtoField.new("Feed Identifier", "imperative.intelligentcross.mdf.v1.11.feedidentifier", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.info = ProtoField.new("Info", "imperative.intelligentcross.mdf.v1.11.info", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.length = ProtoField.new("Length", "imperative.intelligentcross.mdf.v1.11.length", ftypes.UINT16)
imperative_intelligentcross_mdf_v1_11.fields.listing_market = ProtoField.new("Listing Market", "imperative.intelligentcross.mdf.v1.11.listingmarket", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.market_day_identifier = ProtoField.new("Market Day Identifier", "imperative.intelligentcross.mdf.v1.11.marketdayidentifier", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.message = ProtoField.new("Message", "imperative.intelligentcross.mdf.v1.11.message", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.message_header = ProtoField.new("Message Header", "imperative.intelligentcross.mdf.v1.11.messageheader", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.message_type = ProtoField.new("Message Type", "imperative.intelligentcross.mdf.v1.11.messagetype", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.order_id = ProtoField.new("Order Id", "imperative.intelligentcross.mdf.v1.11.orderid", ftypes.UINT64)
imperative_intelligentcross_mdf_v1_11.fields.packet = ProtoField.new("Packet", "imperative.intelligentcross.mdf.v1.11.packet", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.packet_header = ProtoField.new("Packet Header", "imperative.intelligentcross.mdf.v1.11.packetheader", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.payload = ProtoField.new("Payload", "imperative.intelligentcross.mdf.v1.11.payload", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.price = ProtoField.new("Price", "imperative.intelligentcross.mdf.v1.11.price", ftypes.DOUBLE)
imperative_intelligentcross_mdf_v1_11.fields.reserved_1 = ProtoField.new("Reserved 1", "imperative.intelligentcross.mdf.v1.11.reserved1", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.reserved_2 = ProtoField.new("Reserved 2", "imperative.intelligentcross.mdf.v1.11.reserved2", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.reserved_4 = ProtoField.new("Reserved 4", "imperative.intelligentcross.mdf.v1.11.reserved4", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.reserved_8 = ProtoField.new("Reserved 8", "imperative.intelligentcross.mdf.v1.11.reserved8", ftypes.UINT64)
imperative_intelligentcross_mdf_v1_11.fields.round_lot_size = ProtoField.new("Round Lot Size", "imperative.intelligentcross.mdf.v1.11.roundlotsize", ftypes.UINT32)
imperative_intelligentcross_mdf_v1_11.fields.sequence = ProtoField.new("Sequence", "imperative.intelligentcross.mdf.v1.11.sequence", ftypes.UINT64)
imperative_intelligentcross_mdf_v1_11.fields.shares = ProtoField.new("Shares", "imperative.intelligentcross.mdf.v1.11.shares", ftypes.UINT32)
imperative_intelligentcross_mdf_v1_11.fields.shares_canceled = ProtoField.new("Shares Canceled", "imperative.intelligentcross.mdf.v1.11.sharescanceled", ftypes.UINT32)
imperative_intelligentcross_mdf_v1_11.fields.side = ProtoField.new("Side", "imperative.intelligentcross.mdf.v1.11.side", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.state = ProtoField.new("State", "imperative.intelligentcross.mdf.v1.11.state", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.symbol = ProtoField.new("Symbol", "imperative.intelligentcross.mdf.v1.11.symbol", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.symbol_id = ProtoField.new("Symbol Id", "imperative.intelligentcross.mdf.v1.11.symbolid", ftypes.UINT16)
imperative_intelligentcross_mdf_v1_11.fields.timestamp = ProtoField.new("Timestamp", "imperative.intelligentcross.mdf.v1.11.timestamp", ftypes.UINT64)

-- Imperative IntelligentCross Mdf 1.11 messages
imperative_intelligentcross_mdf_v1_11.fields.market_event_message = ProtoField.new("Market Event Message", "imperative.intelligentcross.mdf.v1.11.marketeventmessage", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.new_order_add_message = ProtoField.new("New Order Add Message", "imperative.intelligentcross.mdf.v1.11.neworderaddmessage", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.order_cancel_all_message = ProtoField.new("Order Cancel All Message", "imperative.intelligentcross.mdf.v1.11.ordercancelallmessage", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.order_executed_message = ProtoField.new("Order Executed Message", "imperative.intelligentcross.mdf.v1.11.orderexecutedmessage", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.order_partial_cancel_message = ProtoField.new("Order Partial Cancel Message", "imperative.intelligentcross.mdf.v1.11.orderpartialcancelmessage", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.order_updated_message = ProtoField.new("Order Updated Message", "imperative.intelligentcross.mdf.v1.11.orderupdatedmessage", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.symbol_information_message = ProtoField.new("Symbol Information Message", "imperative.intelligentcross.mdf.v1.11.symbolinformationmessage", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.symbol_state_message = ProtoField.new("Symbol State Message", "imperative.intelligentcross.mdf.v1.11.symbolstatemessage", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.trade_break_message = ProtoField.new("Trade Break Message", "imperative.intelligentcross.mdf.v1.11.tradebreakmessage", ftypes.STRING)
imperative_intelligentcross_mdf_v1_11.fields.trade_message = ProtoField.new("Trade Message", "imperative.intelligentcross.mdf.v1.11.trademessage", ftypes.STRING)

-- Imperative IntelligentCross Mdf 1.11 generated fields
imperative_intelligentcross_mdf_v1_11.fields.message_index = ProtoField.new("Message Index", "imperative.intelligentcross.mdf.v1.11.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Imperative IntelligentCross Mdf 1.11 Element Dissection Options
show.market_event_message = true
show.message = true
show.message_header = true
show.new_order_add_message = true
show.order_cancel_all_message = true
show.order_executed_message = true
show.order_partial_cancel_message = true
show.order_updated_message = true
show.packet = true
show.packet_header = true
show.symbol_information_message = true
show.symbol_state_message = true
show.trade_break_message = true
show.trade_message = true
show.payload = false

-- Register Imperative IntelligentCross Mdf 1.11 Show Options
imperative_intelligentcross_mdf_v1_11.prefs.show_market_event_message = Pref.bool("Show Market Event Message", show.market_event_message, "Parse and add Market Event Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_new_order_add_message = Pref.bool("Show New Order Add Message", show.new_order_add_message, "Parse and add New Order Add Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_order_cancel_all_message = Pref.bool("Show Order Cancel All Message", show.order_cancel_all_message, "Parse and add Order Cancel All Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_order_partial_cancel_message = Pref.bool("Show Order Partial Cancel Message", show.order_partial_cancel_message, "Parse and add Order Partial Cancel Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_order_updated_message = Pref.bool("Show Order Updated Message", show.order_updated_message, "Parse and add Order Updated Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_information_message = Pref.bool("Show Symbol Information Message", show.symbol_information_message, "Parse and add Symbol Information Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_state_message = Pref.bool("Show Symbol State Message", show.symbol_state_message, "Parse and add Symbol State Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
imperative_intelligentcross_mdf_v1_11.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function imperative_intelligentcross_mdf_v1_11.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.market_event_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_market_event_message then
    show.market_event_message = imperative_intelligentcross_mdf_v1_11.prefs.show_market_event_message
    changed = true
  end
  if show.message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_message then
    show.message = imperative_intelligentcross_mdf_v1_11.prefs.show_message
    changed = true
  end
  if show.message_header ~= imperative_intelligentcross_mdf_v1_11.prefs.show_message_header then
    show.message_header = imperative_intelligentcross_mdf_v1_11.prefs.show_message_header
    changed = true
  end
  if show.new_order_add_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_new_order_add_message then
    show.new_order_add_message = imperative_intelligentcross_mdf_v1_11.prefs.show_new_order_add_message
    changed = true
  end
  if show.order_cancel_all_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_order_cancel_all_message then
    show.order_cancel_all_message = imperative_intelligentcross_mdf_v1_11.prefs.show_order_cancel_all_message
    changed = true
  end
  if show.order_executed_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_order_executed_message then
    show.order_executed_message = imperative_intelligentcross_mdf_v1_11.prefs.show_order_executed_message
    changed = true
  end
  if show.order_partial_cancel_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_order_partial_cancel_message then
    show.order_partial_cancel_message = imperative_intelligentcross_mdf_v1_11.prefs.show_order_partial_cancel_message
    changed = true
  end
  if show.order_updated_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_order_updated_message then
    show.order_updated_message = imperative_intelligentcross_mdf_v1_11.prefs.show_order_updated_message
    changed = true
  end
  if show.packet ~= imperative_intelligentcross_mdf_v1_11.prefs.show_packet then
    show.packet = imperative_intelligentcross_mdf_v1_11.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= imperative_intelligentcross_mdf_v1_11.prefs.show_packet_header then
    show.packet_header = imperative_intelligentcross_mdf_v1_11.prefs.show_packet_header
    changed = true
  end
  if show.symbol_information_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_information_message then
    show.symbol_information_message = imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_information_message
    changed = true
  end
  if show.symbol_state_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_state_message then
    show.symbol_state_message = imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_state_message
    changed = true
  end
  if show.trade_break_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_trade_break_message then
    show.trade_break_message = imperative_intelligentcross_mdf_v1_11.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_message ~= imperative_intelligentcross_mdf_v1_11.prefs.show_trade_message then
    show.trade_message = imperative_intelligentcross_mdf_v1_11.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= imperative_intelligentcross_mdf_v1_11.prefs.show_payload then
    show.payload = imperative_intelligentcross_mdf_v1_11.prefs.show_payload
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
-- Dissect Imperative IntelligentCross Mdf 1.11
-----------------------------------------------------------------------

-- Size: Execution Id
imperative_intelligentcross_mdf_v1_11_size_of.execution_id = 8

-- Display: Execution Id
imperative_intelligentcross_mdf_v1_11_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
imperative_intelligentcross_mdf_v1_11_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
imperative_intelligentcross_mdf_v1_11_size_of.timestamp = 8

-- Display: Timestamp
imperative_intelligentcross_mdf_v1_11_display.timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
imperative_intelligentcross_mdf_v1_11_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Symbol Id
imperative_intelligentcross_mdf_v1_11_size_of.symbol_id = 2

-- Display: Symbol Id
imperative_intelligentcross_mdf_v1_11_display.symbol_id = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
imperative_intelligentcross_mdf_v1_11_dissect.symbol_id = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.symbol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11_display.symbol_id(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Break Message
imperative_intelligentcross_mdf_v1_11_size_of.trade_break_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.execution_id

  return index
end

-- Display: Trade Break Message
imperative_intelligentcross_mdf_v1_11_display.trade_break_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
imperative_intelligentcross_mdf_v1_11_dissect.trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11_dissect.symbol_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = imperative_intelligentcross_mdf_v1_11_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
imperative_intelligentcross_mdf_v1_11_dissect.trade_break_message = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.trade_break_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.trade_break_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.trade_break_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.trade_break_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Price
imperative_intelligentcross_mdf_v1_11_size_of.price = 8

-- Display: Price
imperative_intelligentcross_mdf_v1_11_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
imperative_intelligentcross_mdf_v1_11_dissect.price = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = imperative_intelligentcross_mdf_v1_11_display.price(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Symbol
imperative_intelligentcross_mdf_v1_11_size_of.symbol = 11

-- Display: Symbol
imperative_intelligentcross_mdf_v1_11_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
imperative_intelligentcross_mdf_v1_11_dissect.symbol = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_mdf_v1_11_display.symbol(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Shares
imperative_intelligentcross_mdf_v1_11_size_of.shares = 4

-- Display: Shares
imperative_intelligentcross_mdf_v1_11_display.shares = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
imperative_intelligentcross_mdf_v1_11_dissect.shares = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11_display.shares(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.shares, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
imperative_intelligentcross_mdf_v1_11_size_of.reserved_1 = 1

-- Display: Reserved 1
imperative_intelligentcross_mdf_v1_11_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
imperative_intelligentcross_mdf_v1_11_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Reserved 8
imperative_intelligentcross_mdf_v1_11_size_of.reserved_8 = 8

-- Display: Reserved 8
imperative_intelligentcross_mdf_v1_11_display.reserved_8 = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
imperative_intelligentcross_mdf_v1_11_dissect.reserved_8 = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.reserved_8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11_display.reserved_8(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
imperative_intelligentcross_mdf_v1_11_size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.reserved_8

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.reserved_1

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.shares

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.price

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.execution_id

  return index
end

-- Display: Trade Message
imperative_intelligentcross_mdf_v1_11_display.trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
imperative_intelligentcross_mdf_v1_11_dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11_dissect.symbol_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte Unsigned Fixed Width Integer
  index, reserved_8 = imperative_intelligentcross_mdf_v1_11_dissect.reserved_8(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = imperative_intelligentcross_mdf_v1_11_dissect.reserved_1(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = imperative_intelligentcross_mdf_v1_11_dissect.shares(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = imperative_intelligentcross_mdf_v1_11_dissect.symbol(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = imperative_intelligentcross_mdf_v1_11_dissect.price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = imperative_intelligentcross_mdf_v1_11_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
imperative_intelligentcross_mdf_v1_11_dissect.trade_message = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.trade_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.trade_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Order Id
imperative_intelligentcross_mdf_v1_11_size_of.order_id = 8

-- Display: Order Id
imperative_intelligentcross_mdf_v1_11_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
imperative_intelligentcross_mdf_v1_11_dissect.order_id = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11_display.order_id(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed Message
imperative_intelligentcross_mdf_v1_11_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.order_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.shares

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.execution_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.reserved_1

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.price

  return index
end

-- Display: Order Executed Message
imperative_intelligentcross_mdf_v1_11_display.order_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
imperative_intelligentcross_mdf_v1_11_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11_dissect.symbol_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = imperative_intelligentcross_mdf_v1_11_dissect.shares(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = imperative_intelligentcross_mdf_v1_11_dissect.execution_id(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = imperative_intelligentcross_mdf_v1_11_dissect.reserved_1(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = imperative_intelligentcross_mdf_v1_11_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
imperative_intelligentcross_mdf_v1_11_dissect.order_executed_message = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.order_executed_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.order_executed_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.order_executed_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.order_executed_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Order Updated Message
imperative_intelligentcross_mdf_v1_11_size_of.order_updated_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.order_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.shares

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.price

  return index
end

-- Display: Order Updated Message
imperative_intelligentcross_mdf_v1_11_display.order_updated_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Updated Message
imperative_intelligentcross_mdf_v1_11_dissect.order_updated_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11_dissect.symbol_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = imperative_intelligentcross_mdf_v1_11_dissect.shares(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = imperative_intelligentcross_mdf_v1_11_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Updated Message
imperative_intelligentcross_mdf_v1_11_dissect.order_updated_message = function(buffer, offset, packet, parent)
  if show.order_updated_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.order_updated_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.order_updated_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.order_updated_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.order_updated_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Order Cancel All Message
imperative_intelligentcross_mdf_v1_11_size_of.order_cancel_all_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.order_id

  return index
end

-- Display: Order Cancel All Message
imperative_intelligentcross_mdf_v1_11_display.order_cancel_all_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel All Message
imperative_intelligentcross_mdf_v1_11_dissect.order_cancel_all_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11_dissect.symbol_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel All Message
imperative_intelligentcross_mdf_v1_11_dissect.order_cancel_all_message = function(buffer, offset, packet, parent)
  if show.order_cancel_all_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.order_cancel_all_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.order_cancel_all_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.order_cancel_all_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.order_cancel_all_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Shares Canceled
imperative_intelligentcross_mdf_v1_11_size_of.shares_canceled = 4

-- Display: Shares Canceled
imperative_intelligentcross_mdf_v1_11_display.shares_canceled = function(value)
  return "Shares Canceled: "..value
end

-- Dissect: Shares Canceled
imperative_intelligentcross_mdf_v1_11_dissect.shares_canceled = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.shares_canceled
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11_display.shares_canceled(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.shares_canceled, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Partial Cancel Message
imperative_intelligentcross_mdf_v1_11_size_of.order_partial_cancel_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.order_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.shares_canceled

  return index
end

-- Display: Order Partial Cancel Message
imperative_intelligentcross_mdf_v1_11_display.order_partial_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Partial Cancel Message
imperative_intelligentcross_mdf_v1_11_dissect.order_partial_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11_dissect.symbol_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Shares Canceled: 4 Byte Unsigned Fixed Width Integer
  index, shares_canceled = imperative_intelligentcross_mdf_v1_11_dissect.shares_canceled(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Partial Cancel Message
imperative_intelligentcross_mdf_v1_11_dissect.order_partial_cancel_message = function(buffer, offset, packet, parent)
  if show.order_partial_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.order_partial_cancel_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.order_partial_cancel_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.order_partial_cancel_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.order_partial_cancel_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 4
imperative_intelligentcross_mdf_v1_11_size_of.reserved_4 = 4

-- Display: Reserved 4
imperative_intelligentcross_mdf_v1_11_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
imperative_intelligentcross_mdf_v1_11_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.reserved_4
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_mdf_v1_11_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Side
imperative_intelligentcross_mdf_v1_11_size_of.side = 1

-- Display: Side
imperative_intelligentcross_mdf_v1_11_display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "C" then
    return "Side: End Of Session (C)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
imperative_intelligentcross_mdf_v1_11_dissect.side = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11_display.side(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Add Message
imperative_intelligentcross_mdf_v1_11_size_of.new_order_add_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.order_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.side

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.shares

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.price

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.reserved_4

  return index
end

-- Display: New Order Add Message
imperative_intelligentcross_mdf_v1_11_display.new_order_add_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Add Message
imperative_intelligentcross_mdf_v1_11_dissect.new_order_add_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11_dissect.symbol_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = imperative_intelligentcross_mdf_v1_11_dissect.side(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = imperative_intelligentcross_mdf_v1_11_dissect.shares(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = imperative_intelligentcross_mdf_v1_11_dissect.symbol(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = imperative_intelligentcross_mdf_v1_11_dissect.price(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte Ascii String
  index, reserved_4 = imperative_intelligentcross_mdf_v1_11_dissect.reserved_4(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Add Message
imperative_intelligentcross_mdf_v1_11_dissect.new_order_add_message = function(buffer, offset, packet, parent)
  if show.new_order_add_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.new_order_add_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.new_order_add_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.new_order_add_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.new_order_add_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Info
imperative_intelligentcross_mdf_v1_11_size_of.info = 4

-- Display: Info
imperative_intelligentcross_mdf_v1_11_display.info = function(value)
  return "Info: "..value
end

-- Dissect: Info
imperative_intelligentcross_mdf_v1_11_dissect.info = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.info
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_mdf_v1_11_display.info(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.info, range, value, display)

  return offset + length, value
end

-- Size: State
imperative_intelligentcross_mdf_v1_11_size_of.state = 1

-- Display: State
imperative_intelligentcross_mdf_v1_11_display.state = function(value)
  if value == "I" then
    return "State: Inactive (I)"
  end
  if value == "A" then
    return "State: Active (A)"
  end
  if value == "D" then
    return "State: Disabled (D)"
  end
  if value == "E" then
    return "State: Enabled (E)"
  end

  return "State: Unknown("..value..")"
end

-- Dissect: State
imperative_intelligentcross_mdf_v1_11_dissect.state = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.state
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11_display.state(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol State Message
imperative_intelligentcross_mdf_v1_11_size_of.symbol_state_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.state

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.reserved_1

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.info

  return index
end

-- Display: Symbol State Message
imperative_intelligentcross_mdf_v1_11_display.symbol_state_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol State Message
imperative_intelligentcross_mdf_v1_11_dissect.symbol_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11_dissect.symbol_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = imperative_intelligentcross_mdf_v1_11_dissect.symbol(buffer, index, packet, parent)

  -- State: 1 Byte Ascii String Enum with 4 values
  index, state = imperative_intelligentcross_mdf_v1_11_dissect.state(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = imperative_intelligentcross_mdf_v1_11_dissect.reserved_1(buffer, index, packet, parent)

  -- Info: 4 Byte Ascii String
  index, info = imperative_intelligentcross_mdf_v1_11_dissect.info(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol State Message
imperative_intelligentcross_mdf_v1_11_dissect.symbol_state_message = function(buffer, offset, packet, parent)
  if show.symbol_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.symbol_state_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.symbol_state_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.symbol_state_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.symbol_state_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Round Lot Size
imperative_intelligentcross_mdf_v1_11_size_of.round_lot_size = 4

-- Display: Round Lot Size
imperative_intelligentcross_mdf_v1_11_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
imperative_intelligentcross_mdf_v1_11_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Listing Market
imperative_intelligentcross_mdf_v1_11_size_of.listing_market = 1

-- Display: Listing Market
imperative_intelligentcross_mdf_v1_11_display.listing_market = function(value)
  if value == "N" then
    return "Listing Market: Nyse (N)"
  end
  if value == "Q" then
    return "Listing Market: Nasdaq (Q)"
  end
  if value == "P" then
    return "Listing Market: Arca (P)"
  end
  if value == "Z" then
    return "Listing Market: Bats (Z)"
  end
  if value == "A" then
    return "Listing Market: Amex (A)"
  end
  if value == "V" then
    return "Listing Market: Iex (V)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
imperative_intelligentcross_mdf_v1_11_dissect.listing_market = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.listing_market
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11_display.listing_market(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Information Message
imperative_intelligentcross_mdf_v1_11_size_of.symbol_information_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol_id

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.symbol

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.listing_market

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.reserved_1

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.round_lot_size

  return index
end

-- Display: Symbol Information Message
imperative_intelligentcross_mdf_v1_11_display.symbol_information_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Information Message
imperative_intelligentcross_mdf_v1_11_dissect.symbol_information_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11_dissect.symbol_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = imperative_intelligentcross_mdf_v1_11_dissect.symbol(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 6 values
  index, listing_market = imperative_intelligentcross_mdf_v1_11_dissect.listing_market(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = imperative_intelligentcross_mdf_v1_11_dissect.reserved_1(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = imperative_intelligentcross_mdf_v1_11_dissect.round_lot_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Information Message
imperative_intelligentcross_mdf_v1_11_dissect.symbol_information_message = function(buffer, offset, packet, parent)
  if show.symbol_information_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.symbol_information_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.symbol_information_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.symbol_information_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.symbol_information_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Event
imperative_intelligentcross_mdf_v1_11_size_of.event = 1

-- Display: Event
imperative_intelligentcross_mdf_v1_11_display.event = function(value)
  if value == "O" then
    return "Event: Start Of Session (O)"
  end
  if value == "S" then
    return "Event: Market Accepting Orders (S)"
  end
  if value == "Q" then
    return "Event: Market Open For Trading (Q)"
  end
  if value == "E" then
    return "Event: Market Trading Ended For Day (E)"
  end
  if value == "C" then
    return "Event: End Of Session (C)"
  end

  return "Event: Unknown("..value..")"
end

-- Dissect: Event
imperative_intelligentcross_mdf_v1_11_dissect.event = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.event
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11_display.event(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.event, range, value, display)

  return offset + length, value
end

-- Size: Reserved 2
imperative_intelligentcross_mdf_v1_11_size_of.reserved_2 = 2

-- Display: Reserved 2
imperative_intelligentcross_mdf_v1_11_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
imperative_intelligentcross_mdf_v1_11_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.reserved_2
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_mdf_v1_11_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Event Message
imperative_intelligentcross_mdf_v1_11_size_of.market_event_message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.reserved_2

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.timestamp

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.event

  return index
end

-- Display: Market Event Message
imperative_intelligentcross_mdf_v1_11_display.market_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Event Message
imperative_intelligentcross_mdf_v1_11_dissect.market_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: 2 Byte Ascii String
  index, reserved_2 = imperative_intelligentcross_mdf_v1_11_dissect.reserved_2(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11_dissect.timestamp(buffer, index, packet, parent)

  -- Event: 1 Byte Ascii String Enum with 5 values
  index, event = imperative_intelligentcross_mdf_v1_11_dissect.event(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Event Message
imperative_intelligentcross_mdf_v1_11_dissect.market_event_message = function(buffer, offset, packet, parent)
  if show.market_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.market_event_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.market_event_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.market_event_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.market_event_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
imperative_intelligentcross_mdf_v1_11_size_of.payload = function(buffer, offset, message_type)
  -- Size of Market Event Message
  if message_type == "A" then
    return imperative_intelligentcross_mdf_v1_11_size_of.market_event_message(buffer, offset)
  end
  -- Size of Symbol Information Message
  if message_type == "B" then
    return imperative_intelligentcross_mdf_v1_11_size_of.symbol_information_message(buffer, offset)
  end
  -- Size of Symbol State Message
  if message_type == "C" then
    return imperative_intelligentcross_mdf_v1_11_size_of.symbol_state_message(buffer, offset)
  end
  -- Size of New Order Add Message
  if message_type == "D" then
    return imperative_intelligentcross_mdf_v1_11_size_of.new_order_add_message(buffer, offset)
  end
  -- Size of Order Partial Cancel Message
  if message_type == "F" then
    return imperative_intelligentcross_mdf_v1_11_size_of.order_partial_cancel_message(buffer, offset)
  end
  -- Size of Order Cancel All Message
  if message_type == "G" then
    return imperative_intelligentcross_mdf_v1_11_size_of.order_cancel_all_message(buffer, offset)
  end
  -- Size of Order Updated Message
  if message_type == "G" then
    return imperative_intelligentcross_mdf_v1_11_size_of.order_updated_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "J" then
    return imperative_intelligentcross_mdf_v1_11_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "K" then
    return imperative_intelligentcross_mdf_v1_11_size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == "M" then
    return imperative_intelligentcross_mdf_v1_11_size_of.trade_break_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
imperative_intelligentcross_mdf_v1_11_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
imperative_intelligentcross_mdf_v1_11_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Market Event Message
  if message_type == "A" then
    return imperative_intelligentcross_mdf_v1_11_dissect.market_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Information Message
  if message_type == "B" then
    return imperative_intelligentcross_mdf_v1_11_dissect.symbol_information_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol State Message
  if message_type == "C" then
    return imperative_intelligentcross_mdf_v1_11_dissect.symbol_state_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Add Message
  if message_type == "D" then
    return imperative_intelligentcross_mdf_v1_11_dissect.new_order_add_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Partial Cancel Message
  if message_type == "F" then
    return imperative_intelligentcross_mdf_v1_11_dissect.order_partial_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel All Message
  if message_type == "G" then
    return imperative_intelligentcross_mdf_v1_11_dissect.order_cancel_all_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Updated Message
  if message_type == "G" then
    return imperative_intelligentcross_mdf_v1_11_dissect.order_updated_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "J" then
    return imperative_intelligentcross_mdf_v1_11_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "K" then
    return imperative_intelligentcross_mdf_v1_11_dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == "M" then
    return imperative_intelligentcross_mdf_v1_11_dissect.trade_break_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
imperative_intelligentcross_mdf_v1_11_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return imperative_intelligentcross_mdf_v1_11_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = imperative_intelligentcross_mdf_v1_11_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = imperative_intelligentcross_mdf_v1_11_display.payload(buffer, packet, parent)
  local element = parent:add(imperative_intelligentcross_mdf_v1_11.fields.payload, range, display)

  return imperative_intelligentcross_mdf_v1_11_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
imperative_intelligentcross_mdf_v1_11_size_of.message_type = 1

-- Display: Message Type
imperative_intelligentcross_mdf_v1_11_display.message_type = function(value)
  if value == "A" then
    return "Message Type: Market Event Message (A)"
  end
  if value == "B" then
    return "Message Type: Symbol Information Message (B)"
  end
  if value == "C" then
    return "Message Type: Symbol State Message (C)"
  end
  if value == "D" then
    return "Message Type: New Order Add Message (D)"
  end
  if value == "F" then
    return "Message Type: Order Partial Cancel Message (F)"
  end
  if value == "G" then
    return "Message Type: Order Cancel All Message (G)"
  end
  if value == "G" then
    return "Message Type: Order Updated Message (G)"
  end
  if value == "J" then
    return "Message Type: Order Executed Message (J)"
  end
  if value == "K" then
    return "Message Type: Trade Message (K)"
  end
  if value == "M" then
    return "Message Type: Trade Break Message (M)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
imperative_intelligentcross_mdf_v1_11_dissect.message_type = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11_display.message_type(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
imperative_intelligentcross_mdf_v1_11_size_of.length = 2

-- Display: Length
imperative_intelligentcross_mdf_v1_11_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
imperative_intelligentcross_mdf_v1_11_dissect.length = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11_display.length(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
imperative_intelligentcross_mdf_v1_11_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.length

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.message_type

  return index
end

-- Display: Message Header
imperative_intelligentcross_mdf_v1_11_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
imperative_intelligentcross_mdf_v1_11_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = imperative_intelligentcross_mdf_v1_11_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = imperative_intelligentcross_mdf_v1_11_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
imperative_intelligentcross_mdf_v1_11_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.message_header, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Message
imperative_intelligentcross_mdf_v1_11_size_of.message = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + imperative_intelligentcross_mdf_v1_11_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
imperative_intelligentcross_mdf_v1_11_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
imperative_intelligentcross_mdf_v1_11_dissect.message_fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(imperative_intelligentcross_mdf_v1_11.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = imperative_intelligentcross_mdf_v1_11_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 10 branches
  index = imperative_intelligentcross_mdf_v1_11_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
imperative_intelligentcross_mdf_v1_11_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = imperative_intelligentcross_mdf_v1_11_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = imperative_intelligentcross_mdf_v1_11_display.message(buffer, packet, parent)
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.message, range, display)
  end

  return imperative_intelligentcross_mdf_v1_11_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
imperative_intelligentcross_mdf_v1_11_size_of.count = 2

-- Display: Count
imperative_intelligentcross_mdf_v1_11_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
imperative_intelligentcross_mdf_v1_11_dissect.count = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11_display.count(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
imperative_intelligentcross_mdf_v1_11_size_of.sequence = 8

-- Display: Sequence
imperative_intelligentcross_mdf_v1_11_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
imperative_intelligentcross_mdf_v1_11_dissect.sequence = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11_display.sequence(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Feed Identifier
imperative_intelligentcross_mdf_v1_11_size_of.feed_identifier = 1

-- Display: Feed Identifier
imperative_intelligentcross_mdf_v1_11_display.feed_identifier = function(value)
  return "Feed Identifier: "..value
end

-- Dissect: Feed Identifier
imperative_intelligentcross_mdf_v1_11_dissect.feed_identifier = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.feed_identifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11_display.feed_identifier(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.feed_identifier, range, value, display)

  return offset + length, value
end

-- Size: Market Day Identifier
imperative_intelligentcross_mdf_v1_11_size_of.market_day_identifier = 9

-- Display: Market Day Identifier
imperative_intelligentcross_mdf_v1_11_display.market_day_identifier = function(value)
  return "Market Day Identifier: "..value
end

-- Dissect: Market Day Identifier
imperative_intelligentcross_mdf_v1_11_dissect.market_day_identifier = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11_size_of.market_day_identifier
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = imperative_intelligentcross_mdf_v1_11_display.market_day_identifier(value, buffer, offset, packet, parent)

  parent:add(imperative_intelligentcross_mdf_v1_11.fields.market_day_identifier, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
imperative_intelligentcross_mdf_v1_11_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.market_day_identifier

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.feed_identifier

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.sequence

  index = index + imperative_intelligentcross_mdf_v1_11_size_of.count

  return index
end

-- Display: Packet Header
imperative_intelligentcross_mdf_v1_11_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
imperative_intelligentcross_mdf_v1_11_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Day Identifier: 9 Byte Ascii String
  index, market_day_identifier = imperative_intelligentcross_mdf_v1_11_dissect.market_day_identifier(buffer, index, packet, parent)

  -- Feed Identifier: 1 Byte Ascii String
  index, feed_identifier = imperative_intelligentcross_mdf_v1_11_dissect.feed_identifier(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = imperative_intelligentcross_mdf_v1_11_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = imperative_intelligentcross_mdf_v1_11_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
imperative_intelligentcross_mdf_v1_11_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(imperative_intelligentcross_mdf_v1_11.fields.packet_header, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
imperative_intelligentcross_mdf_v1_11_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = imperative_intelligentcross_mdf_v1_11_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = imperative_intelligentcross_mdf_v1_11_dissect.message(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function imperative_intelligentcross_mdf_v1_11.init()
end

-- Dissector for Imperative IntelligentCross Mdf 1.11
function imperative_intelligentcross_mdf_v1_11.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = imperative_intelligentcross_mdf_v1_11.name

  -- Dissect protocol
  local protocol = parent:add(imperative_intelligentcross_mdf_v1_11, buffer(), imperative_intelligentcross_mdf_v1_11.description, "("..buffer:len().." Bytes)")
  return imperative_intelligentcross_mdf_v1_11_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, imperative_intelligentcross_mdf_v1_11)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.imperative_intelligentcross_mdf_v1_11_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Imperative IntelligentCross Mdf 1.11
local function imperative_intelligentcross_mdf_v1_11_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.imperative_intelligentcross_mdf_v1_11_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = imperative_intelligentcross_mdf_v1_11
  imperative_intelligentcross_mdf_v1_11.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Imperative IntelligentCross Mdf 1.11
imperative_intelligentcross_mdf_v1_11:register_heuristic("udp", imperative_intelligentcross_mdf_v1_11_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Imperative Execution
--   Version: 1.11
--   Date: Thursday, July 30, 2020
--   Specification: IntelligentCrossMarketDataFeedSpec.v.1.11.pdf
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
