-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Ise OrderComboFeed Itch 1.1 Protocol
local nasdaq_ise_ordercombofeed_itch_v1_1 = Proto("Nasdaq.Ise.OrderComboFeed.Itch.v1.1.Lua", "Nasdaq Ise OrderComboFeed Itch 1.1")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Ise OrderComboFeed Itch 1.1 Fields
nasdaq_ise_ordercombofeed_itch_v1_1.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.ise.ordercombofeed.itch.v1.1.auctionevent", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.ise.ordercombofeed.itch.v1.1.auctionid", ftypes.UINT32)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.auction_response = ProtoField.new("Auction Response", "nasdaq.ise.ordercombofeed.itch.v1.1.auctionresponse", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.ise.ordercombofeed.itch.v1.1.auctiontype", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.cmta = ProtoField.new("Cmta", "nasdaq.ise.ordercombofeed.itch.v1.1.cmta", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.complex_strategy_auction_message = ProtoField.new("Complex Strategy Auction Message", "nasdaq.ise.ordercombofeed.itch.v1.1.complexstrategyauctionmessage", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.ise.ordercombofeed.itch.v1.1.complexstrategydirectorymessage", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.complex_strategy_order_on_book_message = ProtoField.new("Complex Strategy Order On Book Message", "nasdaq.ise.ordercombofeed.itch.v1.1.complexstrategyorderonbookmessage", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.count = ProtoField.new("Count", "nasdaq.ise.ordercombofeed.itch.v1.1.count", ftypes.UINT16)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.current_day = ProtoField.new("Current Day", "nasdaq.ise.ordercombofeed.itch.v1.1.currentday", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.current_month = ProtoField.new("Current Month", "nasdaq.ise.ordercombofeed.itch.v1.1.currentmonth", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.ise.ordercombofeed.itch.v1.1.currenttradingstate", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.current_year = ProtoField.new("Current Year", "nasdaq.ise.ordercombofeed.itch.v1.1.currentyear", ftypes.UINT16)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.ise.ordercombofeed.itch.v1.1.eventcode", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.ise.ordercombofeed.itch.v1.1.execflag", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.ise.ordercombofeed.itch.v1.1.expirationday", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.ise.ordercombofeed.itch.v1.1.expirationmonth", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.ise.ordercombofeed.itch.v1.1.expirationyear", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.ise.ordercombofeed.itch.v1.1.explicitstrikeprice", ftypes.UINT64)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.giveup = ProtoField.new("Giveup", "nasdaq.ise.ordercombofeed.itch.v1.1.giveup", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.leg_id = ProtoField.new("Leg Id", "nasdaq.ise.ordercombofeed.itch.v1.1.legid", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.ise.ordercombofeed.itch.v1.1.leginformation", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.ise.ordercombofeed.itch.v1.1.legratio", ftypes.UINT32)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.length = ProtoField.new("Length", "nasdaq.ise.ordercombofeed.itch.v1.1.length", ftypes.UINT16)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.message = ProtoField.new("Message", "nasdaq.ise.ordercombofeed.itch.v1.1.message", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.ise.ordercombofeed.itch.v1.1.messageheader", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.ise.ordercombofeed.itch.v1.1.messagetype", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.ise.ordercombofeed.itch.v1.1.numberoflegs", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.number_of_responses = ProtoField.new("Number Of Responses", "nasdaq.ise.ordercombofeed.itch.v1.1.numberofresponses", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.open_state = ProtoField.new("Open State", "nasdaq.ise.ordercombofeed.itch.v1.1.openstate", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.option_id = ProtoField.new("Option Id", "nasdaq.ise.ordercombofeed.itch.v1.1.optionid", ftypes.UINT32)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.ise.ordercombofeed.itch.v1.1.optiontype", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.ise.ordercombofeed.itch.v1.1.ordercapacity", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.order_type = ProtoField.new("Order Type", "nasdaq.ise.ordercombofeed.itch.v1.1.ordertype", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.owner_id = ProtoField.new("Owner Id", "nasdaq.ise.ordercombofeed.itch.v1.1.ownerid", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.packet = ProtoField.new("Packet", "nasdaq.ise.ordercombofeed.itch.v1.1.packet", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.ise.ordercombofeed.itch.v1.1.packetheader", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.payload = ProtoField.new("Payload", "nasdaq.ise.ordercombofeed.itch.v1.1.payload", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.price = ProtoField.new("Price", "nasdaq.ise.ordercombofeed.itch.v1.1.price", ftypes.UINT32)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.response_price = ProtoField.new("Response Price", "nasdaq.ise.ordercombofeed.itch.v1.1.responseprice", ftypes.UINT32)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.response_size = ProtoField.new("Response Size", "nasdaq.ise.ordercombofeed.itch.v1.1.responsesize", ftypes.UINT32)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.scope = ProtoField.new("Scope", "nasdaq.ise.ordercombofeed.itch.v1.1.scope", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.ise.ordercombofeed.itch.v1.1.securitysymbol", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.sequence = ProtoField.new("Sequence", "nasdaq.ise.ordercombofeed.itch.v1.1.sequence", ftypes.UINT64)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.session = ProtoField.new("Session", "nasdaq.ise.ordercombofeed.itch.v1.1.session", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.side = ProtoField.new("Side", "nasdaq.ise.ordercombofeed.itch.v1.1.side", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.size = ProtoField.new("Size", "nasdaq.ise.ordercombofeed.itch.v1.1.size", ftypes.UINT32)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.source = ProtoField.new("Source", "nasdaq.ise.ordercombofeed.itch.v1.1.source", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.ise.ordercombofeed.itch.v1.1.strategyid", ftypes.UINT32)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.ise.ordercombofeed.itch.v1.1.strategyopenclosedmessage", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.ise.ordercombofeed.itch.v1.1.strategytradingactionmessage", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.ise.ordercombofeed.itch.v1.1.strategytype", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.subversion = ProtoField.new("Subversion", "nasdaq.ise.ordercombofeed.itch.v1.1.subversion", ftypes.UINT8)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.ise.ordercombofeed.itch.v1.1.systemeventmessage", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.ise.ordercombofeed.itch.v1.1.timestamp", ftypes.UINT64)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.ise.ordercombofeed.itch.v1.1.underlyingsymbol", ftypes.STRING)
nasdaq_ise_ordercombofeed_itch_v1_1.fields.version = ProtoField.new("Version", "nasdaq.ise.ordercombofeed.itch.v1.1.version", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Ise OrderComboFeed Itch 1.1 Element Dissection Options
show.auction_response = true
show.complex_strategy_auction_message = true
show.complex_strategy_directory_message = true
show.complex_strategy_order_on_book_message = true
show.leg_information = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.strategy_open_closed_message = true
show.strategy_trading_action_message = true
show.system_event_message = true
show.payload = false

-- Register Nasdaq Ise OrderComboFeed Itch 1.1 Show Options
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_auction_response = Pref.bool("Show Auction Response", show.auction_response, "Parse and add Auction Response to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_auction_message = Pref.bool("Show Complex Strategy Auction Message", show.complex_strategy_auction_message, "Parse and add Complex Strategy Auction Message to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_directory_message = Pref.bool("Show Complex Strategy Directory Message", show.complex_strategy_directory_message, "Parse and add Complex Strategy Directory Message to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_order_on_book_message = Pref.bool("Show Complex Strategy Order On Book Message", show.complex_strategy_order_on_book_message, "Parse and add Complex Strategy Order On Book Message to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_strategy_open_closed_message = Pref.bool("Show Strategy Open Closed Message", show.strategy_open_closed_message, "Parse and add Strategy Open Closed Message to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_strategy_trading_action_message = Pref.bool("Show Strategy Trading Action Message", show.strategy_trading_action_message, "Parse and add Strategy Trading Action Message to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_ise_ordercombofeed_itch_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_response ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_auction_response then
    show.auction_response = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_auction_response
    changed = true
  end
  if show.complex_strategy_auction_message ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_auction_message then
    show.complex_strategy_auction_message = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_auction_message
    changed = true
  end
  if show.complex_strategy_directory_message ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_directory_message then
    show.complex_strategy_directory_message = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_directory_message
    changed = true
  end
  if show.complex_strategy_order_on_book_message ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_order_on_book_message then
    show.complex_strategy_order_on_book_message = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_order_on_book_message
    changed = true
  end
  if show.leg_information ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_leg_information then
    show.leg_information = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_leg_information
    changed = true
  end
  if show.message ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_message then
    show.message = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_message_header then
    show.message_header = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_packet then
    show.packet = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_packet_header then
    show.packet_header = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_packet_header
    changed = true
  end
  if show.strategy_open_closed_message ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_strategy_open_closed_message then
    show.strategy_open_closed_message = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_strategy_open_closed_message
    changed = true
  end
  if show.strategy_trading_action_message ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_strategy_trading_action_message then
    show.strategy_trading_action_message = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_strategy_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_system_event_message then
    show.system_event_message = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_payload then
    show.payload = nasdaq_ise_ordercombofeed_itch_v1_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Ise OrderComboFeed Itch 1.1
-----------------------------------------------------------------------

-- Size: Response Size
size_of.response_size = 4

-- Display: Response Size
display.response_size = function(value)
  return "Response Size: "..value
end

-- Dissect: Response Size
dissect.response_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.response_size)
  local value = range:uint()
  local display = display.response_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.response_size, range, value, display)

  return offset + size_of.response_size
end

-- Size: Response Price
size_of.response_price = 4

-- Display: Response Price
display.response_price = function(value)
  return "Response Price: "..value
end

-- Dissect: Response Price
dissect.response_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.response_price)
  local value = range:uint()
  local display = display.response_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.response_price, range, value, display)

  return offset + size_of.response_price
end

-- Display: Auction Response
display.auction_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Response
dissect.auction_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.response_price(buffer, index, packet, parent)

  -- Response Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.response_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Response
dissect.auction_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_response then
    local range = buffer(offset, 8)
    local display = display.auction_response(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.auction_response, range, display)
  end

  return dissect.auction_response_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Responses
size_of.number_of_responses = 1

-- Display: Number Of Responses
display.number_of_responses = function(value)
  return "Number Of Responses: "..value
end

-- Dissect: Number Of Responses
dissect.number_of_responses = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.number_of_responses(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.number_of_responses, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
size_of.auction_type = 1

-- Display: Auction Type
display.auction_type = function(value)
  if value == "E" then
    return "Auction Type: Exposure (E)"
  end
  if value == "C" then
    return "Auction Type: Facilitation (C)"
  end
  if value == "S" then
    return "Auction Type: Solicitation (S)"
  end
  if value == "P" then
    return "Auction Type: Pim (P)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
dissect.auction_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_type)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.auction_type, range, value, display)

  return offset + size_of.auction_type
end

-- Size: Auction Event
size_of.auction_event = 1

-- Display: Auction Event
display.auction_event = function(value)
  if value == "S" then
    return "Auction Event: Start (S)"
  end
  if value == "U" then
    return "Auction Event: Auction Update (U)"
  end
  if value == "E" then
    return "Auction Event: End Of Auction (E)"
  end

  return "Auction Event: Unknown("..value..")"
end

-- Dissect: Auction Event
dissect.auction_event = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_event)
  local value = range:string()
  local display = display.auction_event(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.auction_event, range, value, display)

  return offset + size_of.auction_event
end

-- Size: Cmta
size_of.cmta = 6

-- Display: Cmta
display.cmta = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
dissect.cmta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cmta)
  local value = range:string()
  local display = display.cmta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.cmta, range, value, display)

  return offset + size_of.cmta
end

-- Size: Giveup
size_of.giveup = 6

-- Display: Giveup
display.giveup = function(value)
  return "Giveup: "..value
end

-- Dissect: Giveup
dissect.giveup = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.giveup)
  local value = range:string()
  local display = display.giveup(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.giveup, range, value, display)

  return offset + size_of.giveup
end

-- Size: Owner Id
size_of.owner_id = 6

-- Display: Owner Id
display.owner_id = function(value)
  return "Owner Id: "..value
end

-- Dissect: Owner Id
dissect.owner_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.owner_id)
  local value = range:string()
  local display = display.owner_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.owner_id, range, value, display)

  return offset + size_of.owner_id
end

-- Size: Scope
size_of.scope = 1

-- Display: Scope
display.scope = function(value)
  if value == "L" then
    return "Scope: Local (L)"
  end
  if value == "N" then
    return "Scope: National (N)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
dissect.scope = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.scope)
  local value = range:string()
  local display = display.scope(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.scope, range, value, display)

  return offset + size_of.scope
end

-- Size: Order Capacity
size_of.order_capacity = 1

-- Display: Order Capacity
display.order_capacity = function(value)
  if value == "C" then
    return "Order Capacity: Customer (C)"
  end
  if value == "D" then
    return "Order Capacity: Customer Professional (D)"
  end
  if value == "F" then
    return "Order Capacity: Firm (F)"
  end
  if value == "B" then
    return "Order Capacity: Broker Dealer Customer (B)"
  end
  if value == "K" then
    return "Order Capacity: Broker Dealer Firm (K)"
  end
  if value == "E" then
    return "Order Capacity: Proprietary (E)"
  end
  if value == "N" then
    return "Order Capacity: Away Market Maker (N)"
  end
  if value == "M" then
    return "Order Capacity: Market Maker (M)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
dissect.order_capacity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_capacity)
  local value = range:string()
  local display = display.order_capacity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.order_capacity, range, value, display)

  return offset + size_of.order_capacity
end

-- Size: Exec Flag
size_of.exec_flag = 1

-- Display: Exec Flag
display.exec_flag = function(value)
  if value == "N" then
    return "Exec Flag: None (N)"
  end
  if value == "A" then
    return "Exec Flag: Aon (A)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
dissect.exec_flag = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exec_flag)
  local value = range:string()
  local display = display.exec_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.exec_flag, range, value, display)

  return offset + size_of.exec_flag
end

-- Size: Size
size_of.size = 4

-- Display: Size
display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
dissect.size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.size)
  local value = range:uint()
  local display = display.size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.size, range, value, display)

  return offset + size_of.size
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: Bid (B)"
  end
  if value == "A" then
    return "Side: Offer Ask (A)"
  end
  if value == " " then
    return "Side: Hidden (<whitespace>)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.side, range, value, display)

  return offset + size_of.side
end

-- Size: Order Type
size_of.order_type = 1

-- Display: Order Type
display.order_type = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
dissect.order_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_type)
  local value = range:string()
  local display = display.order_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.order_type, range, value, display)

  return offset + size_of.order_type
end

-- Size: Auction Id
size_of.auction_id = 4

-- Display: Auction Id
display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
dissect.auction_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_id)
  local value = range:uint()
  local display = display.auction_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.auction_id, range, value, display)

  return offset + size_of.auction_id
end

-- Size: Strategy Id
size_of.strategy_id = 4

-- Display: Strategy Id
display.strategy_id = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
dissect.strategy_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strategy_id)
  local value = range:uint()
  local display = display.strategy_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.strategy_id, range, value, display)

  return offset + size_of.strategy_id
end

-- Size: Timestamp
size_of.timestamp = 6

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.timestamp)
  local value = range:uint64()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Calculate runtime size: Complex Strategy Auction Message
size_of.complex_strategy_auction_message = function(buffer, offset)
  local index = 0

  index = index + 48

  -- Calculate field size from count
  local auction_response_count = buffer(offset + index - 1, 1):uint()
  index = index + auction_response_count * 8

  return index
end

-- Display: Complex Strategy Auction Message
display.complex_strategy_auction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Strategy Auction Message
dissect.complex_strategy_auction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.auction_id(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.order_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index = dissect.side(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  -- Exec Flag: 1 Byte Ascii String Enum with 2 values
  index = dissect.exec_flag(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 8 values
  index = dissect.order_capacity(buffer, index, packet, parent)

  -- Scope: 1 Byte Ascii String Enum with 2 values
  index = dissect.scope(buffer, index, packet, parent)

  -- Owner Id: 6 Byte Ascii String
  index = dissect.owner_id(buffer, index, packet, parent)

  -- Giveup: 6 Byte Ascii String
  index = dissect.giveup(buffer, index, packet, parent)

  -- Cmta: 6 Byte Ascii String
  index = dissect.cmta(buffer, index, packet, parent)

  -- Auction Event: 1 Byte Ascii String Enum with 3 values
  index = dissect.auction_event(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index = dissect.auction_type(buffer, index, packet, parent)

  -- Number Of Responses: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_responses(buffer, index, packet, parent)

  -- Auction Response: Struct of 2 fields
  local auction_response_count = buffer(index - 1, 1):uint()
  for i = 1, auction_response_count do
    index = dissect.auction_response(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Complex Strategy Auction Message
dissect.complex_strategy_auction_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_strategy_auction_message then
    local length = size_of.complex_strategy_auction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_strategy_auction_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.complex_strategy_auction_message, range, display)
  end

  return dissect.complex_strategy_auction_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Strategy Order On Book Message
display.complex_strategy_order_on_book_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Strategy Order On Book Message
dissect.complex_strategy_order_on_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.order_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index = dissect.side(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  -- Exec Flag: 1 Byte Ascii String Enum with 2 values
  index = dissect.exec_flag(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 8 values
  index = dissect.order_capacity(buffer, index, packet, parent)

  -- Scope: 1 Byte Ascii String Enum with 2 values
  index = dissect.scope(buffer, index, packet, parent)

  -- Owner Id: 6 Byte Ascii String
  index = dissect.owner_id(buffer, index, packet, parent)

  -- Giveup: 6 Byte Ascii String
  index = dissect.giveup(buffer, index, packet, parent)

  -- Cmta: 6 Byte Ascii String
  index = dissect.cmta(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Order On Book Message
dissect.complex_strategy_order_on_book_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_strategy_order_on_book_message then
    local range = buffer(offset, 41)
    local display = display.complex_strategy_order_on_book_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.complex_strategy_order_on_book_message, range, display)
  end

  return dissect.complex_strategy_order_on_book_message_fields(buffer, offset, packet, parent)
end

-- Size: Open State
size_of.open_state = 1

-- Display: Open State
display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open For Auto Execution (Y)"
  end
  if value == "N" then
    return "Open State: Closed For Auto Execution (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
dissect.open_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_state)
  local value = range:string()
  local display = display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.open_state, range, value, display)

  return offset + size_of.open_state
end

-- Display: Strategy Open Closed Message
display.strategy_open_closed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Open Closed Message
dissect.strategy_open_closed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index = dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Open Closed Message
dissect.strategy_open_closed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_open_closed_message then
    local range = buffer(offset, 11)
    local display = display.strategy_open_closed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.strategy_open_closed_message, range, display)
  end

  return dissect.strategy_open_closed_message_fields(buffer, offset, packet, parent)
end

-- Size: Current Trading State
size_of.current_trading_state = 1

-- Display: Current Trading State
display.current_trading_state = function(value)
  if value == H then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == T then
    return "Current Trading State: Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
dissect.current_trading_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.current_trading_state)
  local value = range:uint()
  local display = display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.current_trading_state, range, value, display)

  return offset + size_of.current_trading_state
end

-- Display: Strategy Trading Action Message
display.strategy_trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
dissect.strategy_trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
dissect.strategy_trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_trading_action_message then
    local range = buffer(offset, 11)
    local display = display.strategy_trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.strategy_trading_action_message, range, display)
  end

  return dissect.strategy_trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Ratio
size_of.leg_ratio = 4

-- Display: Leg Ratio
display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
dissect.leg_ratio = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_ratio)
  local value = range:uint()
  local display = display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.leg_ratio, range, value, display)

  return offset + size_of.leg_ratio
end

-- Size: Option Type
size_of.option_type = 1

-- Display: Option Type
display.option_type = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == " " then
    return "Option Type: Stock (<whitespace>)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_type)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.option_type, range, value, display)

  return offset + size_of.option_type
end

-- Size: Explicit Strike Price
size_of.explicit_strike_price = 8

-- Display: Explicit Strike Price
display.explicit_strike_price = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
dissect.explicit_strike_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.explicit_strike_price)
  local value = range:uint64()
  local display = display.explicit_strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.explicit_strike_price, range, value, display)

  return offset + size_of.explicit_strike_price
end

-- Size: Expiration Day
size_of.expiration_day = 1

-- Display: Expiration Day
display.expiration_day = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
dissect.expiration_day = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_day)
  local value = range:uint()
  local display = display.expiration_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.expiration_day, range, value, display)

  return offset + size_of.expiration_day
end

-- Size: Expiration Month
size_of.expiration_month = 1

-- Display: Expiration Month
display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
dissect.expiration_month = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_month)
  local value = range:uint()
  local display = display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.expiration_month, range, value, display)

  return offset + size_of.expiration_month
end

-- Size: Expiration Year
size_of.expiration_year = 1

-- Display: Expiration Year
display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
dissect.expiration_year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_year)
  local value = range:uint()
  local display = display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.expiration_year, range, value, display)

  return offset + size_of.expiration_year
end

-- Size: Leg Id
size_of.leg_id = 1

-- Display: Leg Id
display.leg_id = function(value)
  return "Leg Id: "..value
end

-- Dissect: Leg Id
dissect.leg_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_id)
  local value = range:uint()
  local display = display.leg_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.leg_id, range, value, display)

  return offset + size_of.leg_id
end

-- Size: Security Symbol
size_of.security_symbol = 6

-- Display: Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
dissect.security_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_symbol)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.security_symbol, range, value, display)

  return offset + size_of.security_symbol
end

-- Size: Option Id
size_of.option_id = 4

-- Display: Option Id
display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
dissect.option_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_id)
  local value = range:uint()
  local display = display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.option_id, range, value, display)

  return offset + size_of.option_id
end

-- Display: Leg Information
display.leg_information = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Information
dissect.leg_information_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index = dissect.security_symbol(buffer, index, packet, parent)

  -- Leg Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.leg_id(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Explicit Strike Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.explicit_strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index = dissect.option_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index = dissect.side(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leg_ratio(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
dissect.leg_information = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_information then
    local range = buffer(offset, 28)
    local display = display.leg_information(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.leg_information, range, display)
  end

  return dissect.leg_information_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Legs
size_of.number_of_legs = 1

-- Display: Number Of Legs
display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 13

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_symbol)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.underlying_symbol, range, value, display)

  return offset + size_of.underlying_symbol
end

-- Size: Source
size_of.source = 1

-- Display: Source
display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
dissect.source = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source)
  local value = range:uint()
  local display = display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.source, range, value, display)

  return offset + size_of.source
end

-- Size: Strategy Type
size_of.strategy_type = 1

-- Display: Strategy Type
display.strategy_type = function(value)
  if value == "V" then
    return "Strategy Type: Vertical Spread (V)"
  end
  if value == "T" then
    return "Strategy Type: Time Spread (T)"
  end
  if value == "D" then
    return "Strategy Type: Diagonal Spread (D)"
  end
  if value == "S" then
    return "Strategy Type: Straddle (S)"
  end
  if value == "G" then
    return "Strategy Type: Strangle (G)"
  end
  if value == "C" then
    return "Strategy Type: Combo (C)"
  end
  if value == "R" then
    return "Strategy Type: Risk Reversal (R)"
  end
  if value == "A" then
    return "Strategy Type: Ratio Spread (A)"
  end
  if value == "U" then
    return "Strategy Type: Custom (U)"
  end

  return "Strategy Type: Unknown("..value..")"
end

-- Dissect: Strategy Type
dissect.strategy_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strategy_type)
  local value = range:string()
  local display = display.strategy_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.strategy_type, range, value, display)

  return offset + size_of.strategy_type
end

-- Calculate runtime size: Complex Strategy Directory Message
size_of.complex_strategy_directory_message = function(buffer, offset)
  local index = 0

  index = index + 26

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 28

  return index
end

-- Display: Complex Strategy Directory Message
display.complex_strategy_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
dissect.complex_strategy_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Strategy Type: 1 Byte Ascii String Enum with 9 values
  index = dissect.strategy_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index = dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Number Of Legs: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_legs(buffer, index, packet, parent)

  -- Leg Information: Struct of 10 fields
  local leg_information_count = buffer(index - 1, 1):uint()
  for i = 1, leg_information_count do
    index = dissect.leg_information(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
dissect.complex_strategy_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_strategy_directory_message then
    local length = size_of.complex_strategy_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_strategy_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.complex_strategy_directory_message, range, display)
  end

  return dissect.complex_strategy_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Subversion
size_of.subversion = 1

-- Display: Subversion
display.subversion = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
dissect.subversion = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.subversion)
  local value = range:uint()
  local display = display.subversion(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.subversion, range, value, display)

  return offset + size_of.subversion
end

-- Size: Version
size_of.version = 1

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.version)
  local value = range:uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.version, range, value, display)

  return offset + size_of.version
end

-- Size: Current Day
size_of.current_day = 1

-- Display: Current Day
display.current_day = function(value)
  return "Current Day: "..value
end

-- Dissect: Current Day
dissect.current_day = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.current_day)
  local value = range:uint()
  local display = display.current_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.current_day, range, value, display)

  return offset + size_of.current_day
end

-- Size: Current Month
size_of.current_month = 1

-- Display: Current Month
display.current_month = function(value)
  return "Current Month: "..value
end

-- Dissect: Current Month
dissect.current_month = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.current_month)
  local value = range:uint()
  local display = display.current_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.current_month, range, value, display)

  return offset + size_of.current_month
end

-- Size: Current Year
size_of.current_year = 2

-- Display: Current Year
display.current_year = function(value)
  return "Current Year: "..value
end

-- Dissect: Current Year
dissect.current_year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.current_year)
  local value = range:uint()
  local display = display.current_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.current_year, range, value, display)

  return offset + size_of.current_year
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
  end
  if value == "N" then
    return "Event Code: Start Of Normal Hours Closing Process (N)"
  end
  if value == "L" then
    return "Event Code: Start Of Late Hours Closing Process (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_code)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.event_code, range, value, display)

  return offset + size_of.event_code
end

-- Display: System Event Message
display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 8 values
  index = dissect.event_code(buffer, index, packet, parent)

  -- Current Year: 2 Byte Unsigned Fixed Width Integer
  index = dissect.current_year(buffer, index, packet, parent)

  -- Current Month: 1 Byte Unsigned Fixed Width Integer
  index = dissect.current_month(buffer, index, packet, parent)

  -- Current Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.current_day(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index = dissect.version(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index = dissect.subversion(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local range = buffer(offset, 13)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of System Event Message
  if code == "S" then
    return 13
  end
  -- Size of Complex Strategy Directory Message
  if code == "R" then
    return size_of.complex_strategy_directory_message(buffer, offset)
  end
  -- Size of Strategy Trading Action Message
  if code == "H" then
    return 11
  end
  -- Size of Strategy Open Closed Message
  if code == "O" then
    return 11
  end
  -- Size of Complex Strategy Order On Book Message
  if code == "L" then
    return 41
  end
  -- Size of Complex Strategy Auction Message
  if code == "J" then
    return size_of.complex_strategy_auction_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(buffer, offset, packet, parent, code)
  -- Dissect System Event Message
  if code == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if code == "R" then
    return dissect.complex_strategy_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if code == "H" then
    return dissect.strategy_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Open Closed Message
  if code == "O" then
    return dissect.strategy_open_closed_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Order On Book Message
  if code == "L" then
    return dissect.complex_strategy_order_on_book_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Auction Message
  if code == "J" then
    return dissect.complex_strategy_auction_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, code)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Complex Strategy Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Strategy Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Strategy Open Closed Message (O)"
  end
  if value == "L" then
    return "Message Type: Complex Strategy Order On Book Message (L)"
  end
  if value == "J" then
    return "Message Type: Complex Strategy Auction Message (J)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
size_of.length = 2

-- Display: Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.length, range, value, display)

  return offset + size_of.length
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 6 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 3)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 6 branches
  local code = buffer(index - 1, 1):string()
  index = dissect.payload(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
size_of.count = 2

-- Display: Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
size_of.sequence = 8

-- Display: Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence)
  local value = range:uint64()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.sequence, range, value, display)

  return offset + size_of.sequence
end

-- Size: Session
size_of.session = 10

-- Display: Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.session, range, value, display)

  return offset + size_of.session
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index = dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index = dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 20)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end


  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_ise_ordercombofeed_itch_v1_1.init()
end

-- Dissector for Nasdaq Ise OrderComboFeed Itch 1.1
function nasdaq_ise_ordercombofeed_itch_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_ise_ordercombofeed_itch_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_ise_ordercombofeed_itch_v1_1, buffer(), nasdaq_ise_ordercombofeed_itch_v1_1.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_ise_ordercombofeed_itch_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_ise_ordercombofeed_itch_v1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Ise OrderComboFeed Itch 1.1
local function nasdaq_ise_ordercombofeed_itch_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_ise_ordercombofeed_itch_v1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_ise_ordercombofeed_itch_v1_1
  nasdaq_ise_ordercombofeed_itch_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Nasdaq Ise OrderComboFeed Itch 1.1 Heuristic
nasdaq_ise_ordercombofeed_itch_v1_1:register_heuristic("udp", nasdaq_ise_ordercombofeed_itch_v1_1_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 1.1
-- Date: Tuesday, June 13, 2017
-- Script:
-- Source Version: 1.5.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
