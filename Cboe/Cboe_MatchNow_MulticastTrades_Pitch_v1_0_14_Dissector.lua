-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe MatchNow MulticastTrades Pitch 1.0.14 Protocol
local omi_cboe_matchnow_multicasttrades_pitch_v1_0_14 = Proto("Omi.Cboe.MatchNow.MulticastTrades.Pitch.v1.0.14", "Cboe MatchNow MulticastTrades Pitch 1.0.14")

-- Protocol table
local cboe_matchnow_multicasttrades_pitch_v1_0_14 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe MatchNow MulticastTrades Pitch 1.0.14 Fields
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.buy_broker_number = ProtoField.new("Buy Broker Number", "cboe.matchnow.multicasttrades.pitch.v1.0.14.buybrokernumber", ftypes.UINT16)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.conditional = ProtoField.new("Conditional", "cboe.matchnow.multicasttrades.pitch.v1.0.14.conditional", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.count = ProtoField.new("Count", "cboe.matchnow.multicasttrades.pitch.v1.0.14.count", ftypes.UINT8)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.execution_id = ProtoField.new("Execution Id", "cboe.matchnow.multicasttrades.pitch.v1.0.14.executionid", ftypes.UINT64)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.length = ProtoField.new("Length", "cboe.matchnow.multicasttrades.pitch.v1.0.14.length", ftypes.UINT16)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.listing_exchange = ProtoField.new("Listing Exchange", "cboe.matchnow.multicasttrades.pitch.v1.0.14.listingexchange", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message = ProtoField.new("Message", "cboe.matchnow.multicasttrades.pitch.v1.0.14.message", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message_header = ProtoField.new("Message Header", "cboe.matchnow.multicasttrades.pitch.v1.0.14.messageheader", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message_length = ProtoField.new("Message Length", "cboe.matchnow.multicasttrades.pitch.v1.0.14.messagelength", ftypes.UINT8)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message_type = ProtoField.new("Message Type", "cboe.matchnow.multicasttrades.pitch.v1.0.14.messagetype", ftypes.UINT8)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.odd_lot = ProtoField.new("Odd Lot", "cboe.matchnow.multicasttrades.pitch.v1.0.14.oddlot", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.packet = ProtoField.new("Packet", "cboe.matchnow.multicasttrades.pitch.v1.0.14.packet", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.packet_header = ProtoField.new("Packet Header", "cboe.matchnow.multicasttrades.pitch.v1.0.14.packetheader", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.price = ProtoField.new("Price", "cboe.matchnow.multicasttrades.pitch.v1.0.14.price", ftypes.DOUBLE)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.quantity = ProtoField.new("Quantity", "cboe.matchnow.multicasttrades.pitch.v1.0.14.quantity", ftypes.UINT32)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.matchnow.multicasttrades.pitch.v1.0.14.reserved2", ftypes.UINT16)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.matchnow.multicasttrades.pitch.v1.0.14.reserved3", ftypes.BYTES)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.reserved_4 = ProtoField.new("Reserved 4", "cboe.matchnow.multicasttrades.pitch.v1.0.14.reserved4", ftypes.UINT32)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.sell_broker_number = ProtoField.new("Sell Broker Number", "cboe.matchnow.multicasttrades.pitch.v1.0.14.sellbrokernumber", ftypes.UINT16)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.sequence = ProtoField.new("Sequence", "cboe.matchnow.multicasttrades.pitch.v1.0.14.sequence", ftypes.UINT32)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.symbol = ProtoField.new("Symbol", "cboe.matchnow.multicasttrades.pitch.v1.0.14.symbol", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.timestamp = ProtoField.new("Timestamp", "cboe.matchnow.multicasttrades.pitch.v1.0.14.timestamp", ftypes.UINT64)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.total_volume = ProtoField.new("Total Volume", "cboe.matchnow.multicasttrades.pitch.v1.0.14.totalvolume", ftypes.UINT32)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.matchnow.multicasttrades.pitch.v1.0.14.tradecondition", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.matchnow.multicasttrades.pitch.v1.0.14.tradeflags", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trading_status = ProtoField.new("Trading Status", "cboe.matchnow.multicasttrades.pitch.v1.0.14.tradingstatus", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.unit = ProtoField.new("Unit", "cboe.matchnow.multicasttrades.pitch.v1.0.14.unit", ftypes.UINT8)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.unused_6 = ProtoField.new("Unused 6", "cboe.matchnow.multicasttrades.pitch.v1.0.14.unused6", ftypes.UINT8, nil, base.DEC, 0xFC)

-- Cboe MatchNow Pitch MulticastTrades 1.0.14 Application Messages
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.matchnow.multicasttrades.pitch.v1.0.14.endofsessionmessage", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trade_message = ProtoField.new("Trade Message", "cboe.matchnow.multicasttrades.pitch.v1.0.14.trademessage", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.matchnow.multicasttrades.pitch.v1.0.14.tradingstatusmessage", ftypes.STRING)
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.matchnow.multicasttrades.pitch.v1.0.14.unitclearmessage", ftypes.STRING)

-- Cboe MatchNow MulticastTrades Pitch 1.0.14 generated fields
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message_index = ProtoField.new("Message Index", "cboe.matchnow.multicasttrades.pitch.v1.0.14.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe MatchNow MulticastTrades Pitch 1.0.14 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.trade_flags = true
show.message_index = true

-- Register Cboe MatchNow MulticastTrades Pitch 1.0.14 Show Options
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_application_messages then
    show.application_messages = omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_message then
    show.message = omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_message
  end
  if show.message_header ~= omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_message_header then
    show.message_header = omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_packet then
    show.packet = omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_packet_header then
    show.packet_header = omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_packet_header
  end
  if show.trade_flags ~= omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_trade_flags then
    show.trade_flags = omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_trade_flags
  end
  if show.message_index ~= omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_message_index then
    show.message_index = omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.prefs.show_message_index
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
-- Cboe MatchNow MulticastTrades Pitch 1.0.14 Fields
-----------------------------------------------------------------------

-- Buy Broker Number
cboe_matchnow_multicasttrades_pitch_v1_0_14.buy_broker_number = {}

-- Size: Buy Broker Number
cboe_matchnow_multicasttrades_pitch_v1_0_14.buy_broker_number.size = 2

-- Display: Buy Broker Number
cboe_matchnow_multicasttrades_pitch_v1_0_14.buy_broker_number.display = function(value)
  return "Buy Broker Number: "..value
end

-- Dissect: Buy Broker Number
cboe_matchnow_multicasttrades_pitch_v1_0_14.buy_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.buy_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.buy_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.buy_broker_number, range, value, display)

  return offset + length, value
end

-- Count
cboe_matchnow_multicasttrades_pitch_v1_0_14.count = {}

-- Size: Count
cboe_matchnow_multicasttrades_pitch_v1_0_14.count.size = 1

-- Display: Count
cboe_matchnow_multicasttrades_pitch_v1_0_14.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_matchnow_multicasttrades_pitch_v1_0_14.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.count, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_matchnow_multicasttrades_pitch_v1_0_14.execution_id = {}

-- Size: Execution Id
cboe_matchnow_multicasttrades_pitch_v1_0_14.execution_id.size = 8

-- Display: Execution Id
cboe_matchnow_multicasttrades_pitch_v1_0_14.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_matchnow_multicasttrades_pitch_v1_0_14.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Length
cboe_matchnow_multicasttrades_pitch_v1_0_14.length = {}

-- Size: Length
cboe_matchnow_multicasttrades_pitch_v1_0_14.length.size = 2

-- Display: Length
cboe_matchnow_multicasttrades_pitch_v1_0_14.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_matchnow_multicasttrades_pitch_v1_0_14.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.length, range, value, display)

  return offset + length, value
end

-- Listing Exchange
cboe_matchnow_multicasttrades_pitch_v1_0_14.listing_exchange = {}

-- Size: Listing Exchange
cboe_matchnow_multicasttrades_pitch_v1_0_14.listing_exchange.size = 4

-- Display: Listing Exchange
cboe_matchnow_multicasttrades_pitch_v1_0_14.listing_exchange.display = function(value)
  if value == "TSX" then
    return "Listing Exchange: Toronto Stock Exchange (TSX)"
  end
  if value == "TSXV" then
    return "Listing Exchange: Tsx Venture Exchange (TSXV)"
  end
  if value == "CSE" then
    return "Listing Exchange: Canadian Securities Exchange (CSE)"
  end
  if value == "NEOL" then
    return "Listing Exchange: Cboe Canada Neol (NEOL)"
  end

  return "Listing Exchange: Unknown("..value..")"
end

-- Dissect: Listing Exchange
cboe_matchnow_multicasttrades_pitch_v1_0_14.listing_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.listing_exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.listing_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.listing_exchange, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_length = {}

-- Size: Message Length
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_length.size = 1

-- Display: Message Length
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_type = {}

-- Size: Message Type
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_type.size = 1

-- Display: Message Type
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_type.display = function(value)
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x43 then
    return "Message Type: Trading Status Message (0x43)"
  end
  if value == 0x42 then
    return "Message Type: Trade Message (0x42)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message_type, range, value, display)

  return offset + length, value
end

-- Price
cboe_matchnow_multicasttrades_pitch_v1_0_14.price = {}

-- Size: Price
cboe_matchnow_multicasttrades_pitch_v1_0_14.price.size = 8

-- Display: Price
cboe_matchnow_multicasttrades_pitch_v1_0_14.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_matchnow_multicasttrades_pitch_v1_0_14.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_matchnow_multicasttrades_pitch_v1_0_14.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_matchnow_multicasttrades_pitch_v1_0_14.price.translate(raw)
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_matchnow_multicasttrades_pitch_v1_0_14.quantity = {}

-- Size: Quantity
cboe_matchnow_multicasttrades_pitch_v1_0_14.quantity.size = 4

-- Display: Quantity
cboe_matchnow_multicasttrades_pitch_v1_0_14.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_matchnow_multicasttrades_pitch_v1_0_14.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_2 = {}

-- Size: Reserved 2
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_2.size = 2

-- Display: Reserved 2
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_3 = {}

-- Size: Reserved 3
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_3.size = 3

-- Display: Reserved 3
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 4
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4 = {}

-- Size: Reserved 4
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4.size = 4

-- Display: Reserved 4
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Sell Broker Number
cboe_matchnow_multicasttrades_pitch_v1_0_14.sell_broker_number = {}

-- Size: Sell Broker Number
cboe_matchnow_multicasttrades_pitch_v1_0_14.sell_broker_number.size = 2

-- Display: Sell Broker Number
cboe_matchnow_multicasttrades_pitch_v1_0_14.sell_broker_number.display = function(value)
  return "Sell Broker Number: "..value
end

-- Dissect: Sell Broker Number
cboe_matchnow_multicasttrades_pitch_v1_0_14.sell_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.sell_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.sell_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.sell_broker_number, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_matchnow_multicasttrades_pitch_v1_0_14.sequence = {}

-- Size: Sequence
cboe_matchnow_multicasttrades_pitch_v1_0_14.sequence.size = 4

-- Display: Sequence
cboe_matchnow_multicasttrades_pitch_v1_0_14.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_matchnow_multicasttrades_pitch_v1_0_14.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.sequence, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol = {}

-- Size: Symbol
cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol.size = 14

-- Display: Symbol
cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp = {}

-- Size: Timestamp
cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp.size = 8

-- Display: Timestamp
cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_matchnow_multicasttrades_pitch_v1_0_14.total_volume = {}

-- Size: Total Volume
cboe_matchnow_multicasttrades_pitch_v1_0_14.total_volume.size = 4

-- Display: Total Volume
cboe_matchnow_multicasttrades_pitch_v1_0_14.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_matchnow_multicasttrades_pitch_v1_0_14.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_condition = {}

-- Size: Trade Condition
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_condition.size = 1

-- Display: Trade Condition
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_condition.display = function(value)
  if value == " " then
    return "Trade Condition: Regular Trade (<whitespace>)"
  end
  if value == "X" then
    return "Trade Condition: Trade Break (X)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status = {}

-- Size: Trading Status
cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status.size = 1

-- Display: Trading Status
cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status.display = function(value)
  if value == "A" then
    return "Trading Status: Accepting (A)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "S" then
    return "Trading Status: Trading Suspended (S)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_matchnow_multicasttrades_pitch_v1_0_14.unit = {}

-- Size: Unit
cboe_matchnow_multicasttrades_pitch_v1_0_14.unit.size = 1

-- Display: Unit
cboe_matchnow_multicasttrades_pitch_v1_0_14.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_matchnow_multicasttrades_pitch_v1_0_14.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_matchnow_multicasttrades_pitch_v1_0_14.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe MatchNow MulticastTrades Pitch 1.0.14
-----------------------------------------------------------------------

-- End Of Session Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.end_of_session_message = {}

-- Size: End Of Session Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.end_of_session_message.size =
  cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4.size

-- Display: End Of Session Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 4: Binary
  index, reserved_4 = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_matchnow_multicasttrades_pitch_v1_0_14.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags = {}

-- Size: Trade Flags
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags.size = 1

-- Display: Trade Flags
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Conditional flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Conditional"
  end
  -- Is Odd Lot flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Odd Lot"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags.bits = function(range, value, packet, parent)

  -- Conditional: 1 Bit
  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.conditional, range, value)

  -- Odd Lot: 1 Bit
  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.odd_lot, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.unused_6, range, value)
end

-- Dissect: Trade Flags
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trade_flags, range, display)

  if show.trade_flags then
    cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_message = {}

-- Size: Trade Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_message.size =
  cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.quantity.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.price.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.execution_id.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.buy_broker_number.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.sell_broker_number.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.total_volume.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_condition.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_2.size

-- Display: Trade Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_matchnow_multicasttrades_pitch_v1_0_14.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Price
  index, price = cboe_matchnow_multicasttrades_pitch_v1_0_14.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_matchnow_multicasttrades_pitch_v1_0_14.execution_id.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: Binary
  index, buy_broker_number = cboe_matchnow_multicasttrades_pitch_v1_0_14.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: Binary
  index, sell_broker_number = cboe_matchnow_multicasttrades_pitch_v1_0_14.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_matchnow_multicasttrades_pitch_v1_0_14.total_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_condition.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_flags.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trade_message, buffer(offset, 0))
    local index = cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status_message = {}

-- Size: Trading Status Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status_message.size =
  cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.listing_exchange.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_3.size

-- Display: Trading Status Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_matchnow_multicasttrades_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_matchnow_multicasttrades_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Listing Exchange: Alphanumeric
  index, listing_exchange = cboe_matchnow_multicasttrades_pitch_v1_0_14.listing_exchange.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary
  index, reserved_3 = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.unit_clear_message.size =
  cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4.size

-- Display: Unit Clear Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 4: Binary
  index, reserved_4 = cboe_matchnow_multicasttrades_pitch_v1_0_14.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_matchnow_multicasttrades_pitch_v1_0_14.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_matchnow_multicasttrades_pitch_v1_0_14.payload = {}

-- Dissect: Payload
cboe_matchnow_multicasttrades_pitch_v1_0_14.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x43 then
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x42 then
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_header = {}

-- Size: Message Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_header.size =
  cboe_matchnow_multicasttrades_pitch_v1_0_14.message_length.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.message_type.size

-- Display: Message Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_matchnow_multicasttrades_pitch_v1_0_14.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_type = cboe_matchnow_multicasttrades_pitch_v1_0_14.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message_header, buffer(offset, 0))
    local index = cboe_matchnow_multicasttrades_pitch_v1_0_14.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.message = {}

-- Read runtime size of: Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_matchnow_multicasttrades_pitch_v1_0_14.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = cboe_matchnow_multicasttrades_pitch_v1_0_14.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_matchnow_multicasttrades_pitch_v1_0_14.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_matchnow_multicasttrades_pitch_v1_0_14.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.message, buffer(offset, 0))
    local current = cboe_matchnow_multicasttrades_pitch_v1_0_14.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_matchnow_multicasttrades_pitch_v1_0_14.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_matchnow_multicasttrades_pitch_v1_0_14.messages = {}

-- Dissect: Messages
cboe_matchnow_multicasttrades_pitch_v1_0_14.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_matchnow_multicasttrades_pitch_v1_0_14.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header = {}

-- Size: Packet Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header.size =
  cboe_matchnow_multicasttrades_pitch_v1_0_14.length.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.count.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.unit.size + 
  cboe_matchnow_multicasttrades_pitch_v1_0_14.sequence.size

-- Display: Packet Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_matchnow_multicasttrades_pitch_v1_0_14.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_matchnow_multicasttrades_pitch_v1_0_14.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_matchnow_multicasttrades_pitch_v1_0_14.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_matchnow_multicasttrades_pitch_v1_0_14.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.fields.packet_header, buffer(offset, 0))
    local index = cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_matchnow_multicasttrades_pitch_v1_0_14.packet = {}

-- Verify required size of Udp packet
cboe_matchnow_multicasttrades_pitch_v1_0_14.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header.size
end

-- Dissect Packet
cboe_matchnow_multicasttrades_pitch_v1_0_14.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_matchnow_multicasttrades_pitch_v1_0_14.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_matchnow_multicasttrades_pitch_v1_0_14.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.init()
end

-- Dissector for Cboe MatchNow MulticastTrades Pitch 1.0.14
function omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_matchnow_multicasttrades_pitch_v1_0_14, buffer(), omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.description, "("..buffer:len().." Bytes)")
  return cboe_matchnow_multicasttrades_pitch_v1_0_14.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe MatchNow MulticastTrades Pitch 1.0.14 (Udp)
local function omi_cboe_matchnow_multicasttrades_pitch_v1_0_14_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_matchnow_multicasttrades_pitch_v1_0_14.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_matchnow_multicasttrades_pitch_v1_0_14
  omi_cboe_matchnow_multicasttrades_pitch_v1_0_14.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe MatchNow MulticastTrades Pitch 1.0.14
omi_cboe_matchnow_multicasttrades_pitch_v1_0_14:register_heuristic("udp", omi_cboe_matchnow_multicasttrades_pitch_v1_0_14_udp_heuristic)

-- Register Cboe MatchNow MulticastTrades Pitch 1.0.14 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_matchnow_multicasttrades_pitch_v1_0_14)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.14
--   Date: Monday, February 9, 2026
--   Specification: Cboe Canada Equities Multicast PITCH Specification (2026-05-28).pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
