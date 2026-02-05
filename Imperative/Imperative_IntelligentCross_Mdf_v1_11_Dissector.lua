-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Imperative IntelligentCross Mdf 1.11 Protocol
local omi_imperative_intelligentcross_mdf_v1_11 = Proto("Imperative.IntelligentCross.Mdf.v1.11.Lua", "Imperative IntelligentCross Mdf 1.11")

-- Protocol table
local imperative_intelligentcross_mdf_v1_11 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Imperative IntelligentCross Mdf 1.11 Fields
omi_imperative_intelligentcross_mdf_v1_11.fields.count = ProtoField.new("Count", "imperative.intelligentcross.mdf.v1.11.count", ftypes.UINT16)
omi_imperative_intelligentcross_mdf_v1_11.fields.event = ProtoField.new("Event", "imperative.intelligentcross.mdf.v1.11.event", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.execution_id = ProtoField.new("Execution Id", "imperative.intelligentcross.mdf.v1.11.executionid", ftypes.UINT64)
omi_imperative_intelligentcross_mdf_v1_11.fields.feed_identifier = ProtoField.new("Feed Identifier", "imperative.intelligentcross.mdf.v1.11.feedidentifier", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.info = ProtoField.new("Info", "imperative.intelligentcross.mdf.v1.11.info", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.length = ProtoField.new("Length", "imperative.intelligentcross.mdf.v1.11.length", ftypes.UINT16)
omi_imperative_intelligentcross_mdf_v1_11.fields.listing_market = ProtoField.new("Listing Market", "imperative.intelligentcross.mdf.v1.11.listingmarket", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.market_day_identifier = ProtoField.new("Market Day Identifier", "imperative.intelligentcross.mdf.v1.11.marketdayidentifier", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.message = ProtoField.new("Message", "imperative.intelligentcross.mdf.v1.11.message", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.message_header = ProtoField.new("Message Header", "imperative.intelligentcross.mdf.v1.11.messageheader", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.message_type = ProtoField.new("Message Type", "imperative.intelligentcross.mdf.v1.11.messagetype", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.order_id = ProtoField.new("Order Id", "imperative.intelligentcross.mdf.v1.11.orderid", ftypes.UINT64)
omi_imperative_intelligentcross_mdf_v1_11.fields.packet = ProtoField.new("Packet", "imperative.intelligentcross.mdf.v1.11.packet", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.packet_header = ProtoField.new("Packet Header", "imperative.intelligentcross.mdf.v1.11.packetheader", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.payload = ProtoField.new("Payload", "imperative.intelligentcross.mdf.v1.11.payload", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.price = ProtoField.new("Price", "imperative.intelligentcross.mdf.v1.11.price", ftypes.DOUBLE)
omi_imperative_intelligentcross_mdf_v1_11.fields.reserved_1 = ProtoField.new("Reserved 1", "imperative.intelligentcross.mdf.v1.11.reserved1", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.reserved_2 = ProtoField.new("Reserved 2", "imperative.intelligentcross.mdf.v1.11.reserved2", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.reserved_4 = ProtoField.new("Reserved 4", "imperative.intelligentcross.mdf.v1.11.reserved4", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.reserved_8 = ProtoField.new("Reserved 8", "imperative.intelligentcross.mdf.v1.11.reserved8", ftypes.UINT64)
omi_imperative_intelligentcross_mdf_v1_11.fields.round_lot_size = ProtoField.new("Round Lot Size", "imperative.intelligentcross.mdf.v1.11.roundlotsize", ftypes.UINT32)
omi_imperative_intelligentcross_mdf_v1_11.fields.sequence = ProtoField.new("Sequence", "imperative.intelligentcross.mdf.v1.11.sequence", ftypes.UINT64)
omi_imperative_intelligentcross_mdf_v1_11.fields.shares = ProtoField.new("Shares", "imperative.intelligentcross.mdf.v1.11.shares", ftypes.UINT32)
omi_imperative_intelligentcross_mdf_v1_11.fields.shares_canceled = ProtoField.new("Shares Canceled", "imperative.intelligentcross.mdf.v1.11.sharescanceled", ftypes.UINT32)
omi_imperative_intelligentcross_mdf_v1_11.fields.side = ProtoField.new("Side", "imperative.intelligentcross.mdf.v1.11.side", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.state = ProtoField.new("State", "imperative.intelligentcross.mdf.v1.11.state", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.symbol = ProtoField.new("Symbol", "imperative.intelligentcross.mdf.v1.11.symbol", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.symbol_id = ProtoField.new("Symbol Id", "imperative.intelligentcross.mdf.v1.11.symbolid", ftypes.UINT16)
omi_imperative_intelligentcross_mdf_v1_11.fields.timestamp = ProtoField.new("Timestamp", "imperative.intelligentcross.mdf.v1.11.timestamp", ftypes.UINT64)

-- Imperative Mdf IntelligentCross 1.11 Application Messages
omi_imperative_intelligentcross_mdf_v1_11.fields.market_event_message = ProtoField.new("Market Event Message", "imperative.intelligentcross.mdf.v1.11.marketeventmessage", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.new_order_add_message = ProtoField.new("New Order Add Message", "imperative.intelligentcross.mdf.v1.11.neworderaddmessage", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.order_cancel_all_message = ProtoField.new("Order Cancel All Message", "imperative.intelligentcross.mdf.v1.11.ordercancelallmessage", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.order_executed_message = ProtoField.new("Order Executed Message", "imperative.intelligentcross.mdf.v1.11.orderexecutedmessage", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.order_partial_cancel_message = ProtoField.new("Order Partial Cancel Message", "imperative.intelligentcross.mdf.v1.11.orderpartialcancelmessage", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.order_updated_message = ProtoField.new("Order Updated Message", "imperative.intelligentcross.mdf.v1.11.orderupdatedmessage", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.symbol_information_message = ProtoField.new("Symbol Information Message", "imperative.intelligentcross.mdf.v1.11.symbolinformationmessage", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.symbol_state_message = ProtoField.new("Symbol State Message", "imperative.intelligentcross.mdf.v1.11.symbolstatemessage", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.trade_break_message = ProtoField.new("Trade Break Message", "imperative.intelligentcross.mdf.v1.11.tradebreakmessage", ftypes.STRING)
omi_imperative_intelligentcross_mdf_v1_11.fields.trade_message = ProtoField.new("Trade Message", "imperative.intelligentcross.mdf.v1.11.trademessage", ftypes.STRING)

-- Imperative IntelligentCross Mdf 1.11 generated fields
omi_imperative_intelligentcross_mdf_v1_11.fields.message_index = ProtoField.new("Message Index", "imperative.intelligentcross.mdf.v1.11.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_market_event_message = Pref.bool("Show Market Event Message", show.market_event_message, "Parse and add Market Event Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_new_order_add_message = Pref.bool("Show New Order Add Message", show.new_order_add_message, "Parse and add New Order Add Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_cancel_all_message = Pref.bool("Show Order Cancel All Message", show.order_cancel_all_message, "Parse and add Order Cancel All Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_partial_cancel_message = Pref.bool("Show Order Partial Cancel Message", show.order_partial_cancel_message, "Parse and add Order Partial Cancel Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_updated_message = Pref.bool("Show Order Updated Message", show.order_updated_message, "Parse and add Order Updated Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_information_message = Pref.bool("Show Symbol Information Message", show.symbol_information_message, "Parse and add Symbol Information Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_state_message = Pref.bool("Show Symbol State Message", show.symbol_state_message, "Parse and add Symbol State Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_imperative_intelligentcross_mdf_v1_11.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_imperative_intelligentcross_mdf_v1_11.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.market_event_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_market_event_message then
    show.market_event_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_market_event_message
    changed = true
  end
  if show.message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_message then
    show.message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_message_header then
    show.message_header = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_message_header
    changed = true
  end
  if show.new_order_add_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_new_order_add_message then
    show.new_order_add_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_new_order_add_message
    changed = true
  end
  if show.order_cancel_all_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_cancel_all_message then
    show.order_cancel_all_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_cancel_all_message
    changed = true
  end
  if show.order_executed_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_executed_message then
    show.order_executed_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_executed_message
    changed = true
  end
  if show.order_partial_cancel_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_partial_cancel_message then
    show.order_partial_cancel_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_partial_cancel_message
    changed = true
  end
  if show.order_updated_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_updated_message then
    show.order_updated_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_order_updated_message
    changed = true
  end
  if show.packet ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_packet then
    show.packet = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_packet_header then
    show.packet_header = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_packet_header
    changed = true
  end
  if show.symbol_information_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_information_message then
    show.symbol_information_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_information_message
    changed = true
  end
  if show.symbol_state_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_state_message then
    show.symbol_state_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_symbol_state_message
    changed = true
  end
  if show.trade_break_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_trade_break_message then
    show.trade_break_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_message ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_trade_message then
    show.trade_message = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= omi_imperative_intelligentcross_mdf_v1_11.prefs.show_payload then
    show.payload = omi_imperative_intelligentcross_mdf_v1_11.prefs.show_payload
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

-- Execution Id
imperative_intelligentcross_mdf_v1_11.execution_id = {}

-- Size: Execution Id
imperative_intelligentcross_mdf_v1_11.execution_id.size = 8

-- Display: Execution Id
imperative_intelligentcross_mdf_v1_11.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
imperative_intelligentcross_mdf_v1_11.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Timestamp
imperative_intelligentcross_mdf_v1_11.timestamp = {}

-- Size: Timestamp
imperative_intelligentcross_mdf_v1_11.timestamp.size = 8

-- Display: Timestamp
imperative_intelligentcross_mdf_v1_11.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
imperative_intelligentcross_mdf_v1_11.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Symbol Id
imperative_intelligentcross_mdf_v1_11.symbol_id = {}

-- Size: Symbol Id
imperative_intelligentcross_mdf_v1_11.symbol_id.size = 2

-- Display: Symbol Id
imperative_intelligentcross_mdf_v1_11.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
imperative_intelligentcross_mdf_v1_11.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Trade Break Message
imperative_intelligentcross_mdf_v1_11.trade_break_message = {}

-- Size: Trade Break Message
imperative_intelligentcross_mdf_v1_11.trade_break_message.size =
  imperative_intelligentcross_mdf_v1_11.symbol_id.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.execution_id.size

-- Display: Trade Break Message
imperative_intelligentcross_mdf_v1_11.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
imperative_intelligentcross_mdf_v1_11.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = imperative_intelligentcross_mdf_v1_11.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
imperative_intelligentcross_mdf_v1_11.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.trade_break_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
imperative_intelligentcross_mdf_v1_11.price = {}

-- Size: Price
imperative_intelligentcross_mdf_v1_11.price.size = 8

-- Display: Price
imperative_intelligentcross_mdf_v1_11.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
imperative_intelligentcross_mdf_v1_11.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
imperative_intelligentcross_mdf_v1_11.price.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = imperative_intelligentcross_mdf_v1_11.price.translate(raw)
  local display = imperative_intelligentcross_mdf_v1_11.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.price, range, value, display)

  return offset + length, value
end

-- Symbol
imperative_intelligentcross_mdf_v1_11.symbol = {}

-- Size: Symbol
imperative_intelligentcross_mdf_v1_11.symbol.size = 11

-- Display: Symbol
imperative_intelligentcross_mdf_v1_11.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
imperative_intelligentcross_mdf_v1_11.symbol.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_mdf_v1_11.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.symbol, range, value, display)

  return offset + length, value
end

-- Shares
imperative_intelligentcross_mdf_v1_11.shares = {}

-- Size: Shares
imperative_intelligentcross_mdf_v1_11.shares.size = 4

-- Display: Shares
imperative_intelligentcross_mdf_v1_11.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
imperative_intelligentcross_mdf_v1_11.shares.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.shares, range, value, display)

  return offset + length, value
end

-- Reserved 1
imperative_intelligentcross_mdf_v1_11.reserved_1 = {}

-- Size: Reserved 1
imperative_intelligentcross_mdf_v1_11.reserved_1.size = 1

-- Display: Reserved 1
imperative_intelligentcross_mdf_v1_11.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
imperative_intelligentcross_mdf_v1_11.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 8
imperative_intelligentcross_mdf_v1_11.reserved_8 = {}

-- Size: Reserved 8
imperative_intelligentcross_mdf_v1_11.reserved_8.size = 8

-- Display: Reserved 8
imperative_intelligentcross_mdf_v1_11.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
imperative_intelligentcross_mdf_v1_11.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Trade Message
imperative_intelligentcross_mdf_v1_11.trade_message = {}

-- Size: Trade Message
imperative_intelligentcross_mdf_v1_11.trade_message.size =
  imperative_intelligentcross_mdf_v1_11.symbol_id.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.reserved_8.size + 
  imperative_intelligentcross_mdf_v1_11.reserved_1.size + 
  imperative_intelligentcross_mdf_v1_11.shares.size + 
  imperative_intelligentcross_mdf_v1_11.symbol.size + 
  imperative_intelligentcross_mdf_v1_11.price.size + 
  imperative_intelligentcross_mdf_v1_11.execution_id.size

-- Display: Trade Message
imperative_intelligentcross_mdf_v1_11.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
imperative_intelligentcross_mdf_v1_11.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte Unsigned Fixed Width Integer
  index, reserved_8 = imperative_intelligentcross_mdf_v1_11.reserved_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = imperative_intelligentcross_mdf_v1_11.reserved_1.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = imperative_intelligentcross_mdf_v1_11.shares.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = imperative_intelligentcross_mdf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = imperative_intelligentcross_mdf_v1_11.price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = imperative_intelligentcross_mdf_v1_11.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
imperative_intelligentcross_mdf_v1_11.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.trade_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
imperative_intelligentcross_mdf_v1_11.order_id = {}

-- Size: Order Id
imperative_intelligentcross_mdf_v1_11.order_id.size = 8

-- Display: Order Id
imperative_intelligentcross_mdf_v1_11.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
imperative_intelligentcross_mdf_v1_11.order_id.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Executed Message
imperative_intelligentcross_mdf_v1_11.order_executed_message = {}

-- Size: Order Executed Message
imperative_intelligentcross_mdf_v1_11.order_executed_message.size =
  imperative_intelligentcross_mdf_v1_11.symbol_id.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.order_id.size + 
  imperative_intelligentcross_mdf_v1_11.shares.size + 
  imperative_intelligentcross_mdf_v1_11.execution_id.size + 
  imperative_intelligentcross_mdf_v1_11.reserved_1.size + 
  imperative_intelligentcross_mdf_v1_11.price.size

-- Display: Order Executed Message
imperative_intelligentcross_mdf_v1_11.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
imperative_intelligentcross_mdf_v1_11.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = imperative_intelligentcross_mdf_v1_11.shares.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = imperative_intelligentcross_mdf_v1_11.execution_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = imperative_intelligentcross_mdf_v1_11.reserved_1.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = imperative_intelligentcross_mdf_v1_11.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
imperative_intelligentcross_mdf_v1_11.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.order_executed_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Updated Message
imperative_intelligentcross_mdf_v1_11.order_updated_message = {}

-- Size: Order Updated Message
imperative_intelligentcross_mdf_v1_11.order_updated_message.size =
  imperative_intelligentcross_mdf_v1_11.symbol_id.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.order_id.size + 
  imperative_intelligentcross_mdf_v1_11.shares.size + 
  imperative_intelligentcross_mdf_v1_11.price.size

-- Display: Order Updated Message
imperative_intelligentcross_mdf_v1_11.order_updated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Updated Message
imperative_intelligentcross_mdf_v1_11.order_updated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = imperative_intelligentcross_mdf_v1_11.shares.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = imperative_intelligentcross_mdf_v1_11.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Updated Message
imperative_intelligentcross_mdf_v1_11.order_updated_message.dissect = function(buffer, offset, packet, parent)
  if show.order_updated_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.order_updated_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.order_updated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.order_updated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.order_updated_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel All Message
imperative_intelligentcross_mdf_v1_11.order_cancel_all_message = {}

-- Size: Order Cancel All Message
imperative_intelligentcross_mdf_v1_11.order_cancel_all_message.size =
  imperative_intelligentcross_mdf_v1_11.symbol_id.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.order_id.size

-- Display: Order Cancel All Message
imperative_intelligentcross_mdf_v1_11.order_cancel_all_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel All Message
imperative_intelligentcross_mdf_v1_11.order_cancel_all_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel All Message
imperative_intelligentcross_mdf_v1_11.order_cancel_all_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_all_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.order_cancel_all_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.order_cancel_all_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.order_cancel_all_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.order_cancel_all_message.fields(buffer, offset, packet, parent)
  end
end

-- Shares Canceled
imperative_intelligentcross_mdf_v1_11.shares_canceled = {}

-- Size: Shares Canceled
imperative_intelligentcross_mdf_v1_11.shares_canceled.size = 4

-- Display: Shares Canceled
imperative_intelligentcross_mdf_v1_11.shares_canceled.display = function(value)
  return "Shares Canceled: "..value
end

-- Dissect: Shares Canceled
imperative_intelligentcross_mdf_v1_11.shares_canceled.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.shares_canceled.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11.shares_canceled.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.shares_canceled, range, value, display)

  return offset + length, value
end

-- Order Partial Cancel Message
imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message = {}

-- Size: Order Partial Cancel Message
imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message.size =
  imperative_intelligentcross_mdf_v1_11.symbol_id.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.order_id.size + 
  imperative_intelligentcross_mdf_v1_11.shares_canceled.size

-- Display: Order Partial Cancel Message
imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Partial Cancel Message
imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Shares Canceled: 4 Byte Unsigned Fixed Width Integer
  index, shares_canceled = imperative_intelligentcross_mdf_v1_11.shares_canceled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Partial Cancel Message
imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.order_partial_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.order_partial_cancel_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 4
imperative_intelligentcross_mdf_v1_11.reserved_4 = {}

-- Size: Reserved 4
imperative_intelligentcross_mdf_v1_11.reserved_4.size = 4

-- Display: Reserved 4
imperative_intelligentcross_mdf_v1_11.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
imperative_intelligentcross_mdf_v1_11.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.reserved_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_mdf_v1_11.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Side
imperative_intelligentcross_mdf_v1_11.side = {}

-- Size: Side
imperative_intelligentcross_mdf_v1_11.side.size = 1

-- Display: Side
imperative_intelligentcross_mdf_v1_11.side.display = function(value)
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
imperative_intelligentcross_mdf_v1_11.side.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.side, range, value, display)

  return offset + length, value
end

-- New Order Add Message
imperative_intelligentcross_mdf_v1_11.new_order_add_message = {}

-- Size: New Order Add Message
imperative_intelligentcross_mdf_v1_11.new_order_add_message.size =
  imperative_intelligentcross_mdf_v1_11.symbol_id.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.order_id.size + 
  imperative_intelligentcross_mdf_v1_11.side.size + 
  imperative_intelligentcross_mdf_v1_11.shares.size + 
  imperative_intelligentcross_mdf_v1_11.symbol.size + 
  imperative_intelligentcross_mdf_v1_11.price.size + 
  imperative_intelligentcross_mdf_v1_11.reserved_4.size

-- Display: New Order Add Message
imperative_intelligentcross_mdf_v1_11.new_order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Add Message
imperative_intelligentcross_mdf_v1_11.new_order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = imperative_intelligentcross_mdf_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = imperative_intelligentcross_mdf_v1_11.side.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = imperative_intelligentcross_mdf_v1_11.shares.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = imperative_intelligentcross_mdf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = imperative_intelligentcross_mdf_v1_11.price.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte Ascii String
  index, reserved_4 = imperative_intelligentcross_mdf_v1_11.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Add Message
imperative_intelligentcross_mdf_v1_11.new_order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.new_order_add_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.new_order_add_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.new_order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.new_order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.new_order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Info
imperative_intelligentcross_mdf_v1_11.info = {}

-- Size: Info
imperative_intelligentcross_mdf_v1_11.info.size = 4

-- Display: Info
imperative_intelligentcross_mdf_v1_11.info.display = function(value)
  return "Info: "..value
end

-- Dissect: Info
imperative_intelligentcross_mdf_v1_11.info.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_mdf_v1_11.info.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.info, range, value, display)

  return offset + length, value
end

-- State
imperative_intelligentcross_mdf_v1_11.state = {}

-- Size: State
imperative_intelligentcross_mdf_v1_11.state.size = 1

-- Display: State
imperative_intelligentcross_mdf_v1_11.state.display = function(value)
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
imperative_intelligentcross_mdf_v1_11.state.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.state, range, value, display)

  return offset + length, value
end

-- Symbol State Message
imperative_intelligentcross_mdf_v1_11.symbol_state_message = {}

-- Size: Symbol State Message
imperative_intelligentcross_mdf_v1_11.symbol_state_message.size =
  imperative_intelligentcross_mdf_v1_11.symbol_id.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.symbol.size + 
  imperative_intelligentcross_mdf_v1_11.state.size + 
  imperative_intelligentcross_mdf_v1_11.reserved_1.size + 
  imperative_intelligentcross_mdf_v1_11.info.size

-- Display: Symbol State Message
imperative_intelligentcross_mdf_v1_11.symbol_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol State Message
imperative_intelligentcross_mdf_v1_11.symbol_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = imperative_intelligentcross_mdf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- State: 1 Byte Ascii String Enum with 4 values
  index, state = imperative_intelligentcross_mdf_v1_11.state.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = imperative_intelligentcross_mdf_v1_11.reserved_1.dissect(buffer, index, packet, parent)

  -- Info: 4 Byte Ascii String
  index, info = imperative_intelligentcross_mdf_v1_11.info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol State Message
imperative_intelligentcross_mdf_v1_11.symbol_state_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.symbol_state_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.symbol_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.symbol_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.symbol_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Round Lot Size
imperative_intelligentcross_mdf_v1_11.round_lot_size = {}

-- Size: Round Lot Size
imperative_intelligentcross_mdf_v1_11.round_lot_size.size = 4

-- Display: Round Lot Size
imperative_intelligentcross_mdf_v1_11.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
imperative_intelligentcross_mdf_v1_11.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Listing Market
imperative_intelligentcross_mdf_v1_11.listing_market = {}

-- Size: Listing Market
imperative_intelligentcross_mdf_v1_11.listing_market.size = 1

-- Display: Listing Market
imperative_intelligentcross_mdf_v1_11.listing_market.display = function(value)
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
imperative_intelligentcross_mdf_v1_11.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Symbol Information Message
imperative_intelligentcross_mdf_v1_11.symbol_information_message = {}

-- Size: Symbol Information Message
imperative_intelligentcross_mdf_v1_11.symbol_information_message.size =
  imperative_intelligentcross_mdf_v1_11.symbol_id.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.symbol.size + 
  imperative_intelligentcross_mdf_v1_11.listing_market.size + 
  imperative_intelligentcross_mdf_v1_11.reserved_1.size + 
  imperative_intelligentcross_mdf_v1_11.round_lot_size.size

-- Display: Symbol Information Message
imperative_intelligentcross_mdf_v1_11.symbol_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Information Message
imperative_intelligentcross_mdf_v1_11.symbol_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: 2 Byte Unsigned Fixed Width Integer
  index, symbol_id = imperative_intelligentcross_mdf_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = imperative_intelligentcross_mdf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 6 values
  index, listing_market = imperative_intelligentcross_mdf_v1_11.listing_market.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = imperative_intelligentcross_mdf_v1_11.reserved_1.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = imperative_intelligentcross_mdf_v1_11.round_lot_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Information Message
imperative_intelligentcross_mdf_v1_11.symbol_information_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_information_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.symbol_information_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.symbol_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.symbol_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.symbol_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Event
imperative_intelligentcross_mdf_v1_11.event = {}

-- Size: Event
imperative_intelligentcross_mdf_v1_11.event.size = 1

-- Display: Event
imperative_intelligentcross_mdf_v1_11.event.display = function(value)
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
imperative_intelligentcross_mdf_v1_11.event.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11.event.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.event, range, value, display)

  return offset + length, value
end

-- Reserved 2
imperative_intelligentcross_mdf_v1_11.reserved_2 = {}

-- Size: Reserved 2
imperative_intelligentcross_mdf_v1_11.reserved_2.size = 2

-- Display: Reserved 2
imperative_intelligentcross_mdf_v1_11.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
imperative_intelligentcross_mdf_v1_11.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_mdf_v1_11.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Market Event Message
imperative_intelligentcross_mdf_v1_11.market_event_message = {}

-- Size: Market Event Message
imperative_intelligentcross_mdf_v1_11.market_event_message.size =
  imperative_intelligentcross_mdf_v1_11.reserved_2.size + 
  imperative_intelligentcross_mdf_v1_11.timestamp.size + 
  imperative_intelligentcross_mdf_v1_11.event.size

-- Display: Market Event Message
imperative_intelligentcross_mdf_v1_11.market_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Event Message
imperative_intelligentcross_mdf_v1_11.market_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: 2 Byte Ascii String
  index, reserved_2 = imperative_intelligentcross_mdf_v1_11.reserved_2.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = imperative_intelligentcross_mdf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Event: 1 Byte Ascii String Enum with 5 values
  index, event = imperative_intelligentcross_mdf_v1_11.event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Event Message
imperative_intelligentcross_mdf_v1_11.market_event_message.dissect = function(buffer, offset, packet, parent)
  if show.market_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.market_event_message, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.market_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.market_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.market_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
imperative_intelligentcross_mdf_v1_11.payload = {}

-- Size: Payload
imperative_intelligentcross_mdf_v1_11.payload.size = function(buffer, offset, message_type)
  -- Size of Market Event Message
  if message_type == "A" then
    return imperative_intelligentcross_mdf_v1_11.market_event_message.size
  end
  -- Size of Symbol Information Message
  if message_type == "B" then
    return imperative_intelligentcross_mdf_v1_11.symbol_information_message.size
  end
  -- Size of Symbol State Message
  if message_type == "C" then
    return imperative_intelligentcross_mdf_v1_11.symbol_state_message.size
  end
  -- Size of New Order Add Message
  if message_type == "D" then
    return imperative_intelligentcross_mdf_v1_11.new_order_add_message.size
  end
  -- Size of Order Partial Cancel Message
  if message_type == "F" then
    return imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message.size
  end
  -- Size of Order Cancel All Message
  if message_type == "G" then
    return imperative_intelligentcross_mdf_v1_11.order_cancel_all_message.size
  end
  -- Size of Order Updated Message
  if message_type == "G" then
    return imperative_intelligentcross_mdf_v1_11.order_updated_message.size
  end
  -- Size of Order Executed Message
  if message_type == "J" then
    return imperative_intelligentcross_mdf_v1_11.order_executed_message.size
  end
  -- Size of Trade Message
  if message_type == "K" then
    return imperative_intelligentcross_mdf_v1_11.trade_message.size
  end
  -- Size of Trade Break Message
  if message_type == "M" then
    return imperative_intelligentcross_mdf_v1_11.trade_break_message.size
  end

  return 0
end

-- Display: Payload
imperative_intelligentcross_mdf_v1_11.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
imperative_intelligentcross_mdf_v1_11.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Market Event Message
  if message_type == "A" then
    return imperative_intelligentcross_mdf_v1_11.market_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Information Message
  if message_type == "B" then
    return imperative_intelligentcross_mdf_v1_11.symbol_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol State Message
  if message_type == "C" then
    return imperative_intelligentcross_mdf_v1_11.symbol_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Add Message
  if message_type == "D" then
    return imperative_intelligentcross_mdf_v1_11.new_order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Partial Cancel Message
  if message_type == "F" then
    return imperative_intelligentcross_mdf_v1_11.order_partial_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel All Message
  if message_type == "G" then
    return imperative_intelligentcross_mdf_v1_11.order_cancel_all_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Updated Message
  if message_type == "G" then
    return imperative_intelligentcross_mdf_v1_11.order_updated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "J" then
    return imperative_intelligentcross_mdf_v1_11.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "K" then
    return imperative_intelligentcross_mdf_v1_11.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == "M" then
    return imperative_intelligentcross_mdf_v1_11.trade_break_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
imperative_intelligentcross_mdf_v1_11.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return imperative_intelligentcross_mdf_v1_11.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = imperative_intelligentcross_mdf_v1_11.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = imperative_intelligentcross_mdf_v1_11.payload.display(buffer, packet, parent)
  local element = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.payload, range, display)

  return imperative_intelligentcross_mdf_v1_11.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
imperative_intelligentcross_mdf_v1_11.message_type = {}

-- Size: Message Type
imperative_intelligentcross_mdf_v1_11.message_type.size = 1

-- Display: Message Type
imperative_intelligentcross_mdf_v1_11.message_type.display = function(value)
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
imperative_intelligentcross_mdf_v1_11.message_type.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.message_type, range, value, display)

  return offset + length, value
end

-- Length
imperative_intelligentcross_mdf_v1_11.length = {}

-- Size: Length
imperative_intelligentcross_mdf_v1_11.length.size = 2

-- Display: Length
imperative_intelligentcross_mdf_v1_11.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
imperative_intelligentcross_mdf_v1_11.length.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.length, range, value, display)

  return offset + length, value
end

-- Message Header
imperative_intelligentcross_mdf_v1_11.message_header = {}

-- Size: Message Header
imperative_intelligentcross_mdf_v1_11.message_header.size =
  imperative_intelligentcross_mdf_v1_11.length.size + 
  imperative_intelligentcross_mdf_v1_11.message_type.size

-- Display: Message Header
imperative_intelligentcross_mdf_v1_11.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
imperative_intelligentcross_mdf_v1_11.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = imperative_intelligentcross_mdf_v1_11.length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = imperative_intelligentcross_mdf_v1_11.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
imperative_intelligentcross_mdf_v1_11.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.message_header, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
imperative_intelligentcross_mdf_v1_11.message = {}

-- Calculate size of: Message
imperative_intelligentcross_mdf_v1_11.message.size = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_mdf_v1_11.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + imperative_intelligentcross_mdf_v1_11.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
imperative_intelligentcross_mdf_v1_11.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
imperative_intelligentcross_mdf_v1_11.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = imperative_intelligentcross_mdf_v1_11.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 10 branches
  index = imperative_intelligentcross_mdf_v1_11.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
imperative_intelligentcross_mdf_v1_11.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = imperative_intelligentcross_mdf_v1_11.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = imperative_intelligentcross_mdf_v1_11.message.display(buffer, packet, parent)
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.message, range, display)
  end

  return imperative_intelligentcross_mdf_v1_11.message.fields(buffer, offset, packet, parent)
end

-- Count
imperative_intelligentcross_mdf_v1_11.count = {}

-- Size: Count
imperative_intelligentcross_mdf_v1_11.count.size = 2

-- Display: Count
imperative_intelligentcross_mdf_v1_11.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
imperative_intelligentcross_mdf_v1_11.count.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_mdf_v1_11.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.count, range, value, display)

  return offset + length, value
end

-- Sequence
imperative_intelligentcross_mdf_v1_11.sequence = {}

-- Size: Sequence
imperative_intelligentcross_mdf_v1_11.sequence.size = 8

-- Display: Sequence
imperative_intelligentcross_mdf_v1_11.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
imperative_intelligentcross_mdf_v1_11.sequence.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_mdf_v1_11.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.sequence, range, value, display)

  return offset + length, value
end

-- Feed Identifier
imperative_intelligentcross_mdf_v1_11.feed_identifier = {}

-- Size: Feed Identifier
imperative_intelligentcross_mdf_v1_11.feed_identifier.size = 1

-- Display: Feed Identifier
imperative_intelligentcross_mdf_v1_11.feed_identifier.display = function(value)
  return "Feed Identifier: "..value
end

-- Dissect: Feed Identifier
imperative_intelligentcross_mdf_v1_11.feed_identifier.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.feed_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_mdf_v1_11.feed_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.feed_identifier, range, value, display)

  return offset + length, value
end

-- Market Day Identifier
imperative_intelligentcross_mdf_v1_11.market_day_identifier = {}

-- Size: Market Day Identifier
imperative_intelligentcross_mdf_v1_11.market_day_identifier.size = 9

-- Display: Market Day Identifier
imperative_intelligentcross_mdf_v1_11.market_day_identifier.display = function(value)
  return "Market Day Identifier: "..value
end

-- Dissect: Market Day Identifier
imperative_intelligentcross_mdf_v1_11.market_day_identifier.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_mdf_v1_11.market_day_identifier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = imperative_intelligentcross_mdf_v1_11.market_day_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.market_day_identifier, range, value, display)

  return offset + length, value
end

-- Packet Header
imperative_intelligentcross_mdf_v1_11.packet_header = {}

-- Size: Packet Header
imperative_intelligentcross_mdf_v1_11.packet_header.size =
  imperative_intelligentcross_mdf_v1_11.market_day_identifier.size + 
  imperative_intelligentcross_mdf_v1_11.feed_identifier.size + 
  imperative_intelligentcross_mdf_v1_11.sequence.size + 
  imperative_intelligentcross_mdf_v1_11.count.size

-- Display: Packet Header
imperative_intelligentcross_mdf_v1_11.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
imperative_intelligentcross_mdf_v1_11.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Day Identifier: 9 Byte Ascii String
  index, market_day_identifier = imperative_intelligentcross_mdf_v1_11.market_day_identifier.dissect(buffer, index, packet, parent)

  -- Feed Identifier: 1 Byte Ascii String
  index, feed_identifier = imperative_intelligentcross_mdf_v1_11.feed_identifier.dissect(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = imperative_intelligentcross_mdf_v1_11.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = imperative_intelligentcross_mdf_v1_11.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
imperative_intelligentcross_mdf_v1_11.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_mdf_v1_11.fields.packet_header, buffer(offset, 0))
    local index = imperative_intelligentcross_mdf_v1_11.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_mdf_v1_11.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_mdf_v1_11.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
imperative_intelligentcross_mdf_v1_11.packet = {}

-- Dissect Packet
imperative_intelligentcross_mdf_v1_11.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = imperative_intelligentcross_mdf_v1_11.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = imperative_intelligentcross_mdf_v1_11.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_imperative_intelligentcross_mdf_v1_11.init()
end

-- Dissector for Imperative IntelligentCross Mdf 1.11
function omi_imperative_intelligentcross_mdf_v1_11.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_imperative_intelligentcross_mdf_v1_11.name

  -- Dissect protocol
  local protocol = parent:add(omi_imperative_intelligentcross_mdf_v1_11, buffer(), omi_imperative_intelligentcross_mdf_v1_11.description, "("..buffer:len().." Bytes)")
  return imperative_intelligentcross_mdf_v1_11.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_imperative_intelligentcross_mdf_v1_11)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
imperative_intelligentcross_mdf_v1_11.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Imperative IntelligentCross Mdf 1.11
local function omi_imperative_intelligentcross_mdf_v1_11_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not imperative_intelligentcross_mdf_v1_11.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_imperative_intelligentcross_mdf_v1_11
  omi_imperative_intelligentcross_mdf_v1_11.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Imperative IntelligentCross Mdf 1.11
omi_imperative_intelligentcross_mdf_v1_11:register_heuristic("udp", omi_imperative_intelligentcross_mdf_v1_11_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
