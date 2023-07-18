-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Ise OrderFeed Itch 1.1 Protocol
local nasdaq_ise_orderfeed_itch_v1_1 = Proto("Nasdaq.Ise.OrderFeed.Itch.v1.1.Lua", "Nasdaq Ise OrderFeed Itch 1.1")

-- Component Tables
local show = {}
local format = {}
local nasdaq_ise_orderfeed_itch_v1_1_display = {}
local nasdaq_ise_orderfeed_itch_v1_1_dissect = {}
local nasdaq_ise_orderfeed_itch_v1_1_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Ise OrderFeed Itch 1.1 Fields
nasdaq_ise_orderfeed_itch_v1_1.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.ise.orderfeed.itch.v1.1.auctionevent", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.ise.orderfeed.itch.v1.1.auctionid", ftypes.UINT32)
nasdaq_ise_orderfeed_itch_v1_1.fields.auction_message = ProtoField.new("Auction Message", "nasdaq.ise.orderfeed.itch.v1.1.auctionmessage", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.auction_response = ProtoField.new("Auction Response", "nasdaq.ise.orderfeed.itch.v1.1.auctionresponse", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.closing_only = ProtoField.new("Closing Only", "nasdaq.ise.orderfeed.itch.v1.1.closingonly", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.cmta = ProtoField.new("Cmta", "nasdaq.ise.orderfeed.itch.v1.1.cmta", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.contract_size = ProtoField.new("Contract Size", "nasdaq.ise.orderfeed.itch.v1.1.contractsize", ftypes.UINT16)
nasdaq_ise_orderfeed_itch_v1_1.fields.count = ProtoField.new("Count", "nasdaq.ise.orderfeed.itch.v1.1.count", ftypes.UINT16)
nasdaq_ise_orderfeed_itch_v1_1.fields.current_day = ProtoField.new("Current Day", "nasdaq.ise.orderfeed.itch.v1.1.currentday", ftypes.UINT8)
nasdaq_ise_orderfeed_itch_v1_1.fields.current_month = ProtoField.new("Current Month", "nasdaq.ise.orderfeed.itch.v1.1.currentmonth", ftypes.UINT8)
nasdaq_ise_orderfeed_itch_v1_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.ise.orderfeed.itch.v1.1.currenttradingstate", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.current_year = ProtoField.new("Current Year", "nasdaq.ise.orderfeed.itch.v1.1.currentyear", ftypes.UINT16)
nasdaq_ise_orderfeed_itch_v1_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.ise.orderfeed.itch.v1.1.eventcode", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.ise.orderfeed.itch.v1.1.execflag", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.ise.orderfeed.itch.v1.1.expirationday", ftypes.UINT8)
nasdaq_ise_orderfeed_itch_v1_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.ise.orderfeed.itch.v1.1.expirationmonth", ftypes.UINT8)
nasdaq_ise_orderfeed_itch_v1_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.ise.orderfeed.itch.v1.1.expirationyear", ftypes.UINT8)
nasdaq_ise_orderfeed_itch_v1_1.fields.giveup = ProtoField.new("Giveup", "nasdaq.ise.orderfeed.itch.v1.1.giveup", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.ise.orderfeed.itch.v1.1.imbalancedirection", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.ise.orderfeed.itch.v1.1.imbalanceprice", ftypes.UINT32)
nasdaq_ise_orderfeed_itch_v1_1.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.ise.orderfeed.itch.v1.1.imbalancevolume", ftypes.UINT32)
nasdaq_ise_orderfeed_itch_v1_1.fields.length = ProtoField.new("Length", "nasdaq.ise.orderfeed.itch.v1.1.length", ftypes.UINT16)
nasdaq_ise_orderfeed_itch_v1_1.fields.message = ProtoField.new("Message", "nasdaq.ise.orderfeed.itch.v1.1.message", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.ise.orderfeed.itch.v1.1.messageheader", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.ise.orderfeed.itch.v1.1.messagetype", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.mpv = ProtoField.new("Mpv", "nasdaq.ise.orderfeed.itch.v1.1.mpv", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.number_of_responses = ProtoField.new("Number Of Responses", "nasdaq.ise.orderfeed.itch.v1.1.numberofresponses", ftypes.UINT8)
nasdaq_ise_orderfeed_itch_v1_1.fields.open_state = ProtoField.new("Open State", "nasdaq.ise.orderfeed.itch.v1.1.openstate", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.opening_imbalance_message = ProtoField.new("Opening Imbalance Message", "nasdaq.ise.orderfeed.itch.v1.1.openingimbalancemessage", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.ise.orderfeed.itch.v1.1.optionclosingtype", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.option_directory_message = ProtoField.new("Option Directory Message", "nasdaq.ise.orderfeed.itch.v1.1.optiondirectorymessage", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.option_id = ProtoField.new("Option Id", "nasdaq.ise.orderfeed.itch.v1.1.optionid", ftypes.UINT32)
nasdaq_ise_orderfeed_itch_v1_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.ise.orderfeed.itch.v1.1.optiontype", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.ise.orderfeed.itch.v1.1.ordercapacity", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.order_on_book_message = ProtoField.new("Order On Book Message", "nasdaq.ise.orderfeed.itch.v1.1.orderonbookmessage", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.order_type = ProtoField.new("Order Type", "nasdaq.ise.orderfeed.itch.v1.1.ordertype", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.owner_id = ProtoField.new("Owner Id", "nasdaq.ise.orderfeed.itch.v1.1.ownerid", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.packet = ProtoField.new("Packet", "nasdaq.ise.orderfeed.itch.v1.1.packet", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.ise.orderfeed.itch.v1.1.packetheader", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.ise.orderfeed.itch.v1.1.pairedcontracts", ftypes.UINT32)
nasdaq_ise_orderfeed_itch_v1_1.fields.payload = ProtoField.new("Payload", "nasdaq.ise.orderfeed.itch.v1.1.payload", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.price = ProtoField.new("Price", "nasdaq.ise.orderfeed.itch.v1.1.price", ftypes.UINT32)
nasdaq_ise_orderfeed_itch_v1_1.fields.response_price = ProtoField.new("Response Price", "nasdaq.ise.orderfeed.itch.v1.1.responseprice", ftypes.UINT32)
nasdaq_ise_orderfeed_itch_v1_1.fields.response_size = ProtoField.new("Response Size", "nasdaq.ise.orderfeed.itch.v1.1.responsesize", ftypes.UINT32)
nasdaq_ise_orderfeed_itch_v1_1.fields.security_open_closed_message = ProtoField.new("Security Open Closed Message", "nasdaq.ise.orderfeed.itch.v1.1.securityopenclosedmessage", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.ise.orderfeed.itch.v1.1.securitysymbol", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.sequence = ProtoField.new("Sequence", "nasdaq.ise.orderfeed.itch.v1.1.sequence", ftypes.UINT64)
nasdaq_ise_orderfeed_itch_v1_1.fields.session = ProtoField.new("Session", "nasdaq.ise.orderfeed.itch.v1.1.session", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.side = ProtoField.new("Side", "nasdaq.ise.orderfeed.itch.v1.1.side", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.size = ProtoField.new("Size", "nasdaq.ise.orderfeed.itch.v1.1.size", ftypes.UINT32)
nasdaq_ise_orderfeed_itch_v1_1.fields.source = ProtoField.new("Source", "nasdaq.ise.orderfeed.itch.v1.1.source", ftypes.UINT8)
nasdaq_ise_orderfeed_itch_v1_1.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.ise.orderfeed.itch.v1.1.strikeprice", ftypes.UINT64)
nasdaq_ise_orderfeed_itch_v1_1.fields.subversion = ProtoField.new("Subversion", "nasdaq.ise.orderfeed.itch.v1.1.subversion", ftypes.UINT8)
nasdaq_ise_orderfeed_itch_v1_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.ise.orderfeed.itch.v1.1.systemeventmessage", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.ise.orderfeed.itch.v1.1.timestamp", ftypes.UINT64)
nasdaq_ise_orderfeed_itch_v1_1.fields.tradable = ProtoField.new("Tradable", "nasdaq.ise.orderfeed.itch.v1.1.tradable", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.ise.orderfeed.itch.v1.1.tradingactionmessage", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.trading_type = ProtoField.new("Trading Type", "nasdaq.ise.orderfeed.itch.v1.1.tradingtype", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.ise.orderfeed.itch.v1.1.underlyingsymbol", ftypes.STRING)
nasdaq_ise_orderfeed_itch_v1_1.fields.version = ProtoField.new("Version", "nasdaq.ise.orderfeed.itch.v1.1.version", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Ise OrderFeed Itch 1.1 Element Dissection Options
show.auction_message = true
show.auction_response = true
show.message = true
show.message_header = true
show.opening_imbalance_message = true
show.option_directory_message = true
show.order_on_book_message = true
show.packet = true
show.packet_header = true
show.security_open_closed_message = true
show.system_event_message = true
show.trading_action_message = true
show.payload = false

-- Register Nasdaq Ise OrderFeed Itch 1.1 Show Options
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_auction_message = Pref.bool("Show Auction Message", show.auction_message, "Parse and add Auction Message to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_auction_response = Pref.bool("Show Auction Response", show.auction_response, "Parse and add Auction Response to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_opening_imbalance_message = Pref.bool("Show Opening Imbalance Message", show.opening_imbalance_message, "Parse and add Opening Imbalance Message to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_option_directory_message = Pref.bool("Show Option Directory Message", show.option_directory_message, "Parse and add Option Directory Message to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_order_on_book_message = Pref.bool("Show Order On Book Message", show.order_on_book_message, "Parse and add Order On Book Message to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_security_open_closed_message = Pref.bool("Show Security Open Closed Message", show.security_open_closed_message, "Parse and add Security Open Closed Message to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_ise_orderfeed_itch_v1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_ise_orderfeed_itch_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_message ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_auction_message then
    show.auction_message = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_auction_message
    changed = true
  end
  if show.auction_response ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_auction_response then
    show.auction_response = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_auction_response
    changed = true
  end
  if show.message ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_message then
    show.message = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_message_header then
    show.message_header = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_message_header
    changed = true
  end
  if show.opening_imbalance_message ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_opening_imbalance_message then
    show.opening_imbalance_message = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_opening_imbalance_message
    changed = true
  end
  if show.option_directory_message ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_option_directory_message then
    show.option_directory_message = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_option_directory_message
    changed = true
  end
  if show.order_on_book_message ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_order_on_book_message then
    show.order_on_book_message = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_order_on_book_message
    changed = true
  end
  if show.packet ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_packet then
    show.packet = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_packet_header then
    show.packet_header = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_packet_header
    changed = true
  end
  if show.security_open_closed_message ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_security_open_closed_message then
    show.security_open_closed_message = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_security_open_closed_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_system_event_message then
    show.system_event_message = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_system_event_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_ise_orderfeed_itch_v1_1.prefs.show_payload then
    show.payload = nasdaq_ise_orderfeed_itch_v1_1.prefs.show_payload
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
-- Dissect Nasdaq Ise OrderFeed Itch 1.1
-----------------------------------------------------------------------

-- Size: Response Size
nasdaq_ise_orderfeed_itch_v1_1_size_of.response_size = 4

-- Display: Response Size
nasdaq_ise_orderfeed_itch_v1_1_display.response_size = function(value)
  return "Response Size: "..value
end

-- Dissect: Response Size
nasdaq_ise_orderfeed_itch_v1_1_dissect.response_size = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.response_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.response_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.response_size, range, value, display)

  return offset + length, value
end

-- Size: Response Price
nasdaq_ise_orderfeed_itch_v1_1_size_of.response_price = 4

-- Display: Response Price
nasdaq_ise_orderfeed_itch_v1_1_display.response_price = function(value)
  return "Response Price: "..value
end

-- Dissect: Response Price
nasdaq_ise_orderfeed_itch_v1_1_dissect.response_price = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.response_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.response_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.response_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Response
nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_response = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.response_price

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.response_size

  return index
end

-- Display: Auction Response
nasdaq_ise_orderfeed_itch_v1_1_display.auction_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Response
nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Price: 4 Byte Unsigned Fixed Width Integer
  index, response_price = nasdaq_ise_orderfeed_itch_v1_1_dissect.response_price(buffer, index, packet, parent)

  -- Response Size: 4 Byte Unsigned Fixed Width Integer
  index, response_size = nasdaq_ise_orderfeed_itch_v1_1_dissect.response_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Response
nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_response then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_response(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.auction_response(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.auction_response, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_response_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Responses
nasdaq_ise_orderfeed_itch_v1_1_size_of.number_of_responses = 1

-- Display: Number Of Responses
nasdaq_ise_orderfeed_itch_v1_1_display.number_of_responses = function(value)
  return "Number Of Responses: "..value
end

-- Dissect: Number Of Responses
nasdaq_ise_orderfeed_itch_v1_1_dissect.number_of_responses = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.number_of_responses
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.number_of_responses(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.number_of_responses, range, value, display)

  return offset + length, value
end

-- Size: Auction Event
nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_event = 1

-- Display: Auction Event
nasdaq_ise_orderfeed_itch_v1_1_display.auction_event = function(value)
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
nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_event = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_event
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.auction_event(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.auction_event, range, value, display)

  return offset + length, value
end

-- Size: Cmta
nasdaq_ise_orderfeed_itch_v1_1_size_of.cmta = 6

-- Display: Cmta
nasdaq_ise_orderfeed_itch_v1_1_display.cmta = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
nasdaq_ise_orderfeed_itch_v1_1_dissect.cmta = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.cmta
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.cmta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Size: Giveup
nasdaq_ise_orderfeed_itch_v1_1_size_of.giveup = 6

-- Display: Giveup
nasdaq_ise_orderfeed_itch_v1_1_display.giveup = function(value)
  return "Giveup: "..value
end

-- Dissect: Giveup
nasdaq_ise_orderfeed_itch_v1_1_dissect.giveup = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.giveup
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.giveup(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.giveup, range, value, display)

  return offset + length, value
end

-- Size: Owner Id
nasdaq_ise_orderfeed_itch_v1_1_size_of.owner_id = 6

-- Display: Owner Id
nasdaq_ise_orderfeed_itch_v1_1_display.owner_id = function(value)
  return "Owner Id: "..value
end

-- Dissect: Owner Id
nasdaq_ise_orderfeed_itch_v1_1_dissect.owner_id = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.owner_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.owner_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.owner_id, range, value, display)

  return offset + length, value
end

-- Size: Order Capacity
nasdaq_ise_orderfeed_itch_v1_1_size_of.order_capacity = 1

-- Display: Order Capacity
nasdaq_ise_orderfeed_itch_v1_1_display.order_capacity = function(value)
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
nasdaq_ise_orderfeed_itch_v1_1_dissect.order_capacity = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.order_capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.order_capacity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Exec Flag
nasdaq_ise_orderfeed_itch_v1_1_size_of.exec_flag = 1

-- Display: Exec Flag
nasdaq_ise_orderfeed_itch_v1_1_display.exec_flag = function(value)
  if value == "N" then
    return "Exec Flag: None (N)"
  end
  if value == "A" then
    return "Exec Flag: Aon (A)"
  end
  if value == " " then
    return "Exec Flag: Hidden (<whitespace>)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
nasdaq_ise_orderfeed_itch_v1_1_dissect.exec_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.exec_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.exec_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.exec_flag, range, value, display)

  return offset + length, value
end

-- Size: Size
nasdaq_ise_orderfeed_itch_v1_1_size_of.size = 4

-- Display: Size
nasdaq_ise_orderfeed_itch_v1_1_display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_ise_orderfeed_itch_v1_1_dissect.size = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Price
nasdaq_ise_orderfeed_itch_v1_1_size_of.price = 4

-- Display: Price
nasdaq_ise_orderfeed_itch_v1_1_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_ise_orderfeed_itch_v1_1_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Side
nasdaq_ise_orderfeed_itch_v1_1_size_of.side = 1

-- Display: Side
nasdaq_ise_orderfeed_itch_v1_1_display.side = function(value)
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
nasdaq_ise_orderfeed_itch_v1_1_dissect.side = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Order Type
nasdaq_ise_orderfeed_itch_v1_1_size_of.order_type = 1

-- Display: Order Type
nasdaq_ise_orderfeed_itch_v1_1_display.order_type = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_ise_orderfeed_itch_v1_1_dissect.order_type = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.order_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.order_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_id = 4

-- Display: Auction Id
nasdaq_ise_orderfeed_itch_v1_1_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Size: Option Id
nasdaq_ise_orderfeed_itch_v1_1_size_of.option_id = 4

-- Display: Option Id
nasdaq_ise_orderfeed_itch_v1_1_display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_ise_orderfeed_itch_v1_1_dissect.option_id = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.option_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.option_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_ise_orderfeed_itch_v1_1_size_of.timestamp = 6

-- Display: Timestamp
nasdaq_ise_orderfeed_itch_v1_1_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_ise_orderfeed_itch_v1_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Message
nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.option_id

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_id

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.order_type

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.side

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.price

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.size

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.exec_flag

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.order_capacity

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.owner_id

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.giveup

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.cmta

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_event

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.number_of_responses

  -- Calculate field size from count
  local auction_response_count = buffer(offset + index - 1, 1):uint()
  index = index + auction_response_count * 8

  return index
end

-- Display: Auction Message
nasdaq_ise_orderfeed_itch_v1_1_display.auction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ise_orderfeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_ise_orderfeed_itch_v1_1_dissect.option_id(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_id(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 2 values
  index, order_type = nasdaq_ise_orderfeed_itch_v1_1_dissect.order_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_ise_orderfeed_itch_v1_1_dissect.side(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_ise_orderfeed_itch_v1_1_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_ise_orderfeed_itch_v1_1_dissect.size(buffer, index, packet, parent)

  -- Exec Flag: 1 Byte Ascii String Enum with 3 values
  index, exec_flag = nasdaq_ise_orderfeed_itch_v1_1_dissect.exec_flag(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 8 values
  index, order_capacity = nasdaq_ise_orderfeed_itch_v1_1_dissect.order_capacity(buffer, index, packet, parent)

  -- Owner Id: 6 Byte Ascii String
  index, owner_id = nasdaq_ise_orderfeed_itch_v1_1_dissect.owner_id(buffer, index, packet, parent)

  -- Giveup: 6 Byte Ascii String
  index, giveup = nasdaq_ise_orderfeed_itch_v1_1_dissect.giveup(buffer, index, packet, parent)

  -- Cmta: 6 Byte Ascii String
  index, cmta = nasdaq_ise_orderfeed_itch_v1_1_dissect.cmta(buffer, index, packet, parent)

  -- Auction Event: 1 Byte Ascii String Enum with 3 values
  index, auction_event = nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_event(buffer, index, packet, parent)

  -- Number Of Responses: 1 Byte Unsigned Fixed Width Integer
  index, number_of_responses = nasdaq_ise_orderfeed_itch_v1_1_dissect.number_of_responses(buffer, index, packet, parent)

  -- Auction Response: Struct of 2 fields
  for i = 1, number_of_responses do
    index = nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_response(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Auction Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.auction_message then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.auction_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.auction_message, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order On Book Message
nasdaq_ise_orderfeed_itch_v1_1_size_of.order_on_book_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.option_id

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.order_type

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.side

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.price

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.size

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.exec_flag

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.order_capacity

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.owner_id

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.giveup

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.cmta

  return index
end

-- Display: Order On Book Message
nasdaq_ise_orderfeed_itch_v1_1_display.order_on_book_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order On Book Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.order_on_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ise_orderfeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_ise_orderfeed_itch_v1_1_dissect.option_id(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 2 values
  index, order_type = nasdaq_ise_orderfeed_itch_v1_1_dissect.order_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_ise_orderfeed_itch_v1_1_dissect.side(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_ise_orderfeed_itch_v1_1_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_ise_orderfeed_itch_v1_1_dissect.size(buffer, index, packet, parent)

  -- Exec Flag: 1 Byte Ascii String Enum with 3 values
  index, exec_flag = nasdaq_ise_orderfeed_itch_v1_1_dissect.exec_flag(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 8 values
  index, order_capacity = nasdaq_ise_orderfeed_itch_v1_1_dissect.order_capacity(buffer, index, packet, parent)

  -- Owner Id: 6 Byte Ascii String
  index, owner_id = nasdaq_ise_orderfeed_itch_v1_1_dissect.owner_id(buffer, index, packet, parent)

  -- Giveup: 6 Byte Ascii String
  index, giveup = nasdaq_ise_orderfeed_itch_v1_1_dissect.giveup(buffer, index, packet, parent)

  -- Cmta: 6 Byte Ascii String
  index, cmta = nasdaq_ise_orderfeed_itch_v1_1_dissect.cmta(buffer, index, packet, parent)

  return index
end

-- Dissect: Order On Book Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.order_on_book_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_on_book_message then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.order_on_book_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.order_on_book_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.order_on_book_message, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.order_on_book_message_fields(buffer, offset, packet, parent)
end

-- Size: Imbalance Volume
nasdaq_ise_orderfeed_itch_v1_1_size_of.imbalance_volume = 4

-- Display: Imbalance Volume
nasdaq_ise_orderfeed_itch_v1_1_display.imbalance_volume = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_ise_orderfeed_itch_v1_1_dissect.imbalance_volume = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.imbalance_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.imbalance_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Price
nasdaq_ise_orderfeed_itch_v1_1_size_of.imbalance_price = 4

-- Display: Imbalance Price
nasdaq_ise_orderfeed_itch_v1_1_display.imbalance_price = function(value)
  return "Imbalance Price: "..value
end

-- Dissect: Imbalance Price
nasdaq_ise_orderfeed_itch_v1_1_dissect.imbalance_price = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.imbalance_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.imbalance_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.imbalance_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Direction
nasdaq_ise_orderfeed_itch_v1_1_size_of.imbalance_direction = 1

-- Display: Imbalance Direction
nasdaq_ise_orderfeed_itch_v1_1_display.imbalance_direction = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy Imbalance (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell Imbalance (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_ise_orderfeed_itch_v1_1_dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.imbalance_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Size: Paired Contracts
nasdaq_ise_orderfeed_itch_v1_1_size_of.paired_contracts = 4

-- Display: Paired Contracts
nasdaq_ise_orderfeed_itch_v1_1_display.paired_contracts = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
nasdaq_ise_orderfeed_itch_v1_1_dissect.paired_contracts = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.paired_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.paired_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.paired_contracts, range, value, display)

  return offset + length, value
end

-- Calculate size of: Opening Imbalance Message
nasdaq_ise_orderfeed_itch_v1_1_size_of.opening_imbalance_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.option_id

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.paired_contracts

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.imbalance_direction

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.imbalance_price

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.imbalance_volume

  return index
end

-- Display: Opening Imbalance Message
nasdaq_ise_orderfeed_itch_v1_1_display.opening_imbalance_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Opening Imbalance Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.opening_imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ise_orderfeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_ise_orderfeed_itch_v1_1_dissect.option_id(buffer, index, packet, parent)

  -- Paired Contracts: 4 Byte Unsigned Fixed Width Integer
  index, paired_contracts = nasdaq_ise_orderfeed_itch_v1_1_dissect.paired_contracts(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 2 values
  index, imbalance_direction = nasdaq_ise_orderfeed_itch_v1_1_dissect.imbalance_direction(buffer, index, packet, parent)

  -- Imbalance Price: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_price = nasdaq_ise_orderfeed_itch_v1_1_dissect.imbalance_price(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_volume = nasdaq_ise_orderfeed_itch_v1_1_dissect.imbalance_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Imbalance Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.opening_imbalance_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.opening_imbalance_message then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.opening_imbalance_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.opening_imbalance_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.opening_imbalance_message, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.opening_imbalance_message_fields(buffer, offset, packet, parent)
end

-- Size: Open State
nasdaq_ise_orderfeed_itch_v1_1_size_of.open_state = 1

-- Display: Open State
nasdaq_ise_orderfeed_itch_v1_1_display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open For Auto Execution (Y)"
  end
  if value == "N" then
    return "Open State: Closed For Auto Execution (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_ise_orderfeed_itch_v1_1_dissect.open_state = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.open_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.open_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Open Closed Message
nasdaq_ise_orderfeed_itch_v1_1_size_of.security_open_closed_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.option_id

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.open_state

  return index
end

-- Display: Security Open Closed Message
nasdaq_ise_orderfeed_itch_v1_1_display.security_open_closed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Open Closed Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.security_open_closed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ise_orderfeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_ise_orderfeed_itch_v1_1_dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_ise_orderfeed_itch_v1_1_dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Closed Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.security_open_closed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_open_closed_message then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.security_open_closed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.security_open_closed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.security_open_closed_message, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.security_open_closed_message_fields(buffer, offset, packet, parent)
end

-- Size: Current Trading State
nasdaq_ise_orderfeed_itch_v1_1_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_ise_orderfeed_itch_v1_1_display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading On The Options System (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_ise_orderfeed_itch_v1_1_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
nasdaq_ise_orderfeed_itch_v1_1_size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.option_id

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.current_trading_state

  return index
end

-- Display: Trading Action Message
nasdaq_ise_orderfeed_itch_v1_1_display.trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ise_orderfeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_ise_orderfeed_itch_v1_1_dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_ise_orderfeed_itch_v1_1_dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_action_message then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.trading_action_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.trading_action_message, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Closing Only
nasdaq_ise_orderfeed_itch_v1_1_size_of.closing_only = 1

-- Display: Closing Only
nasdaq_ise_orderfeed_itch_v1_1_display.closing_only = function(value)
  if value == "Y" then
    return "Closing Only: Closing Position Only (Y)"
  end
  if value == "N" then
    return "Closing Only: Not Closing Position Only (N)"
  end

  return "Closing Only: Unknown("..value..")"
end

-- Dissect: Closing Only
nasdaq_ise_orderfeed_itch_v1_1_dissect.closing_only = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.closing_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.closing_only(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.closing_only, range, value, display)

  return offset + length, value
end

-- Size: Mpv
nasdaq_ise_orderfeed_itch_v1_1_size_of.mpv = 1

-- Display: Mpv
nasdaq_ise_orderfeed_itch_v1_1_display.mpv = function(value)
  if value == "E" then
    return "Mpv: Penny Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Penny Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_ise_orderfeed_itch_v1_1_dissect.mpv = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.mpv
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.mpv(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Tradable
nasdaq_ise_orderfeed_itch_v1_1_size_of.tradable = 1

-- Display: Tradable
nasdaq_ise_orderfeed_itch_v1_1_display.tradable = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_ise_orderfeed_itch_v1_1_dissect.tradable = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.tradable
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.tradable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.tradable, range, value, display)

  return offset + length, value
end

-- Size: Option Closing Type
nasdaq_ise_orderfeed_itch_v1_1_size_of.option_closing_type = 1

-- Display: Option Closing Type
nasdaq_ise_orderfeed_itch_v1_1_display.option_closing_type = function(value)
  if value == "N" then
    return "Option Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Option Closing Type: Late (L)"
  end

  return "Option Closing Type: Unknown("..value..")"
end

-- Dissect: Option Closing Type
nasdaq_ise_orderfeed_itch_v1_1_dissect.option_closing_type = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.option_closing_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.option_closing_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Size
nasdaq_ise_orderfeed_itch_v1_1_size_of.contract_size = 2

-- Display: Contract Size
nasdaq_ise_orderfeed_itch_v1_1_display.contract_size = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
nasdaq_ise_orderfeed_itch_v1_1_dissect.contract_size = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.contract_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.contract_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Size: Trading Type
nasdaq_ise_orderfeed_itch_v1_1_size_of.trading_type = 1

-- Display: Trading Type
nasdaq_ise_orderfeed_itch_v1_1_display.trading_type = function(value)
  if value == "E" then
    return "Trading Type: Equity (E)"
  end
  if value == "I" then
    return "Trading Type: Index (I)"
  end
  if value == "F" then
    return "Trading Type: Etf (F)"
  end
  if value == "C" then
    return "Trading Type: Currency (C)"
  end

  return "Trading Type: Unknown("..value..")"
end

-- Dissect: Trading Type
nasdaq_ise_orderfeed_itch_v1_1_dissect.trading_type = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.trading_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.trading_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.trading_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
nasdaq_ise_orderfeed_itch_v1_1_size_of.underlying_symbol = 13

-- Display: Underlying Symbol
nasdaq_ise_orderfeed_itch_v1_1_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_ise_orderfeed_itch_v1_1_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Source
nasdaq_ise_orderfeed_itch_v1_1_size_of.source = 1

-- Display: Source
nasdaq_ise_orderfeed_itch_v1_1_display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_ise_orderfeed_itch_v1_1_dissect.source = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.source, range, value, display)

  return offset + length, value
end

-- Size: Option Type
nasdaq_ise_orderfeed_itch_v1_1_size_of.option_type = 1

-- Display: Option Type
nasdaq_ise_orderfeed_itch_v1_1_display.option_type = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_ise_orderfeed_itch_v1_1_dissect.option_type = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
nasdaq_ise_orderfeed_itch_v1_1_size_of.strike_price = 8

-- Display: Strike Price
nasdaq_ise_orderfeed_itch_v1_1_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nasdaq_ise_orderfeed_itch_v1_1_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.strike_price
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Day
nasdaq_ise_orderfeed_itch_v1_1_size_of.expiration_day = 1

-- Display: Expiration Day
nasdaq_ise_orderfeed_itch_v1_1_display.expiration_day = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_ise_orderfeed_itch_v1_1_dissect.expiration_day = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.expiration_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.expiration_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
nasdaq_ise_orderfeed_itch_v1_1_size_of.expiration_month = 1

-- Display: Expiration Month
nasdaq_ise_orderfeed_itch_v1_1_display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_ise_orderfeed_itch_v1_1_dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
nasdaq_ise_orderfeed_itch_v1_1_size_of.expiration_year = 1

-- Display: Expiration Year
nasdaq_ise_orderfeed_itch_v1_1_display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_ise_orderfeed_itch_v1_1_dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
nasdaq_ise_orderfeed_itch_v1_1_size_of.security_symbol = 6

-- Display: Security Symbol
nasdaq_ise_orderfeed_itch_v1_1_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_ise_orderfeed_itch_v1_1_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.security_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Directory Message
nasdaq_ise_orderfeed_itch_v1_1_size_of.option_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.option_id

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.security_symbol

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.expiration_year

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.expiration_month

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.expiration_day

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.strike_price

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.option_type

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.source

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.underlying_symbol

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.trading_type

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.contract_size

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.option_closing_type

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.tradable

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.mpv

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.closing_only

  return index
end

-- Display: Option Directory Message
nasdaq_ise_orderfeed_itch_v1_1_display.option_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Directory Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.option_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ise_orderfeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_ise_orderfeed_itch_v1_1_dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_ise_orderfeed_itch_v1_1_dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_ise_orderfeed_itch_v1_1_dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_ise_orderfeed_itch_v1_1_dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = nasdaq_ise_orderfeed_itch_v1_1_dissect.expiration_day(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Unsigned Fixed Width Integer
  index, strike_price = nasdaq_ise_orderfeed_itch_v1_1_dissect.strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = nasdaq_ise_orderfeed_itch_v1_1_dissect.option_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_ise_orderfeed_itch_v1_1_dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_ise_orderfeed_itch_v1_1_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Trading Type: 1 Byte Ascii String Enum with 4 values
  index, trading_type = nasdaq_ise_orderfeed_itch_v1_1_dissect.trading_type(buffer, index, packet, parent)

  -- Contract Size: 2 Byte Unsigned Fixed Width Integer
  index, contract_size = nasdaq_ise_orderfeed_itch_v1_1_dissect.contract_size(buffer, index, packet, parent)

  -- Option Closing Type: 1 Byte Ascii String Enum with 2 values
  index, option_closing_type = nasdaq_ise_orderfeed_itch_v1_1_dissect.option_closing_type(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = nasdaq_ise_orderfeed_itch_v1_1_dissect.tradable(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index, mpv = nasdaq_ise_orderfeed_itch_v1_1_dissect.mpv(buffer, index, packet, parent)

  -- Closing Only: 1 Byte Ascii String Enum with 2 values
  index, closing_only = nasdaq_ise_orderfeed_itch_v1_1_dissect.closing_only(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Directory Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.option_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_directory_message then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.option_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.option_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.option_directory_message, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.option_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Subversion
nasdaq_ise_orderfeed_itch_v1_1_size_of.subversion = 1

-- Display: Subversion
nasdaq_ise_orderfeed_itch_v1_1_display.subversion = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_ise_orderfeed_itch_v1_1_dissect.subversion = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.subversion
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.subversion(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.subversion, range, value, display)

  return offset + length, value
end

-- Size: Version
nasdaq_ise_orderfeed_itch_v1_1_size_of.version = 1

-- Display: Version
nasdaq_ise_orderfeed_itch_v1_1_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_ise_orderfeed_itch_v1_1_dissect.version = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.version(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Current Day
nasdaq_ise_orderfeed_itch_v1_1_size_of.current_day = 1

-- Display: Current Day
nasdaq_ise_orderfeed_itch_v1_1_display.current_day = function(value)
  return "Current Day: "..value
end

-- Dissect: Current Day
nasdaq_ise_orderfeed_itch_v1_1_dissect.current_day = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.current_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.current_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.current_day, range, value, display)

  return offset + length, value
end

-- Size: Current Month
nasdaq_ise_orderfeed_itch_v1_1_size_of.current_month = 1

-- Display: Current Month
nasdaq_ise_orderfeed_itch_v1_1_display.current_month = function(value)
  return "Current Month: "..value
end

-- Dissect: Current Month
nasdaq_ise_orderfeed_itch_v1_1_dissect.current_month = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.current_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.current_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.current_month, range, value, display)

  return offset + length, value
end

-- Size: Current Year
nasdaq_ise_orderfeed_itch_v1_1_size_of.current_year = 2

-- Display: Current Year
nasdaq_ise_orderfeed_itch_v1_1_display.current_year = function(value)
  return "Current Year: "..value
end

-- Dissect: Current Year
nasdaq_ise_orderfeed_itch_v1_1_dissect.current_year = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.current_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.current_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.current_year, range, value, display)

  return offset + length, value
end

-- Size: Event Code
nasdaq_ise_orderfeed_itch_v1_1_size_of.event_code = 1

-- Display: Event Code
nasdaq_ise_orderfeed_itch_v1_1_display.event_code = function(value)
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
nasdaq_ise_orderfeed_itch_v1_1_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_ise_orderfeed_itch_v1_1_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.event_code

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.current_year

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.current_month

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.current_day

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.version

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.subversion

  return index
end

-- Display: System Event Message
nasdaq_ise_orderfeed_itch_v1_1_display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ise_orderfeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 8 values
  index, event_code = nasdaq_ise_orderfeed_itch_v1_1_dissect.event_code(buffer, index, packet, parent)

  -- Current Year: 2 Byte Unsigned Fixed Width Integer
  index, current_year = nasdaq_ise_orderfeed_itch_v1_1_dissect.current_year(buffer, index, packet, parent)

  -- Current Month: 1 Byte Unsigned Fixed Width Integer
  index, current_month = nasdaq_ise_orderfeed_itch_v1_1_dissect.current_month(buffer, index, packet, parent)

  -- Current Day: 1 Byte Unsigned Fixed Width Integer
  index, current_day = nasdaq_ise_orderfeed_itch_v1_1_dissect.current_day(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_ise_orderfeed_itch_v1_1_dissect.version(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index, subversion = nasdaq_ise_orderfeed_itch_v1_1_dissect.subversion(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.system_event_message, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
nasdaq_ise_orderfeed_itch_v1_1_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_ise_orderfeed_itch_v1_1_size_of.system_event_message(buffer, offset)
  end
  -- Size of Option Directory Message
  if message_type == "D" then
    return nasdaq_ise_orderfeed_itch_v1_1_size_of.option_directory_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_ise_orderfeed_itch_v1_1_size_of.trading_action_message(buffer, offset)
  end
  -- Size of Security Open Closed Message
  if message_type == "O" then
    return nasdaq_ise_orderfeed_itch_v1_1_size_of.security_open_closed_message(buffer, offset)
  end
  -- Size of Opening Imbalance Message
  if message_type == "N" then
    return nasdaq_ise_orderfeed_itch_v1_1_size_of.opening_imbalance_message(buffer, offset)
  end
  -- Size of Order On Book Message
  if message_type == "B" then
    return nasdaq_ise_orderfeed_itch_v1_1_size_of.order_on_book_message(buffer, offset)
  end
  -- Size of Auction Message
  if message_type == "A" then
    return nasdaq_ise_orderfeed_itch_v1_1_size_of.auction_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_ise_orderfeed_itch_v1_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_ise_orderfeed_itch_v1_1_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_ise_orderfeed_itch_v1_1_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Directory Message
  if message_type == "D" then
    return nasdaq_ise_orderfeed_itch_v1_1_dissect.option_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_ise_orderfeed_itch_v1_1_dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Closed Message
  if message_type == "O" then
    return nasdaq_ise_orderfeed_itch_v1_1_dissect.security_open_closed_message(buffer, offset, packet, parent)
  end
  -- Dissect Opening Imbalance Message
  if message_type == "N" then
    return nasdaq_ise_orderfeed_itch_v1_1_dissect.opening_imbalance_message(buffer, offset, packet, parent)
  end
  -- Dissect Order On Book Message
  if message_type == "B" then
    return nasdaq_ise_orderfeed_itch_v1_1_dissect.order_on_book_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Message
  if message_type == "A" then
    return nasdaq_ise_orderfeed_itch_v1_1_dissect.auction_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_ise_orderfeed_itch_v1_1_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_ise_orderfeed_itch_v1_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_ise_orderfeed_itch_v1_1_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.payload, range, display)

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_ise_orderfeed_itch_v1_1_size_of.message_type = 1

-- Display: Message Type
nasdaq_ise_orderfeed_itch_v1_1_display.message_type = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Message Type: Option Directory Message (D)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Security Open Closed Message (O)"
  end
  if value == "N" then
    return "Message Type: Opening Imbalance Message (N)"
  end
  if value == "B" then
    return "Message Type: Order On Book Message (B)"
  end
  if value == "A" then
    return "Message Type: Auction Message (A)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_ise_orderfeed_itch_v1_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_ise_orderfeed_itch_v1_1_size_of.length = 2

-- Display: Length
nasdaq_ise_orderfeed_itch_v1_1_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_ise_orderfeed_itch_v1_1_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_ise_orderfeed_itch_v1_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.length

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_ise_orderfeed_itch_v1_1_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_ise_orderfeed_itch_v1_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_ise_orderfeed_itch_v1_1_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 7 values
  index, message_type = nasdaq_ise_orderfeed_itch_v1_1_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_ise_orderfeed_itch_v1_1_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.message_header, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
nasdaq_ise_orderfeed_itch_v1_1_size_of.message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nasdaq_ise_orderfeed_itch_v1_1_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_ise_orderfeed_itch_v1_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 7 branches
  index = nasdaq_ise_orderfeed_itch_v1_1_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_ise_orderfeed_itch_v1_1_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.message, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
nasdaq_ise_orderfeed_itch_v1_1_size_of.count = 2

-- Display: Count
nasdaq_ise_orderfeed_itch_v1_1_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_ise_orderfeed_itch_v1_1_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_ise_orderfeed_itch_v1_1_size_of.sequence = 8

-- Display: Sequence
nasdaq_ise_orderfeed_itch_v1_1_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_ise_orderfeed_itch_v1_1_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_ise_orderfeed_itch_v1_1_size_of.session = 10

-- Display: Session
nasdaq_ise_orderfeed_itch_v1_1_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_ise_orderfeed_itch_v1_1_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ise_orderfeed_itch_v1_1_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_ise_orderfeed_itch_v1_1_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.session

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.sequence

  index = index + nasdaq_ise_orderfeed_itch_v1_1_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_ise_orderfeed_itch_v1_1_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_ise_orderfeed_itch_v1_1_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_ise_orderfeed_itch_v1_1_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_ise_orderfeed_itch_v1_1_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_ise_orderfeed_itch_v1_1_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_ise_orderfeed_itch_v1_1_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = nasdaq_ise_orderfeed_itch_v1_1_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_ise_orderfeed_itch_v1_1_display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_orderfeed_itch_v1_1.fields.packet_header, range, display)
  end

  return nasdaq_ise_orderfeed_itch_v1_1_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
nasdaq_ise_orderfeed_itch_v1_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_ise_orderfeed_itch_v1_1_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = nasdaq_ise_orderfeed_itch_v1_1_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_ise_orderfeed_itch_v1_1.init()
end

-- Dissector for Nasdaq Ise OrderFeed Itch 1.1
function nasdaq_ise_orderfeed_itch_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_ise_orderfeed_itch_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_ise_orderfeed_itch_v1_1, buffer(), nasdaq_ise_orderfeed_itch_v1_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_ise_orderfeed_itch_v1_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_ise_orderfeed_itch_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_ise_orderfeed_itch_v1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Ise OrderFeed Itch 1.1
local function nasdaq_ise_orderfeed_itch_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_ise_orderfeed_itch_v1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_ise_orderfeed_itch_v1_1
  nasdaq_ise_orderfeed_itch_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Ise OrderFeed Itch 1.1
nasdaq_ise_orderfeed_itch_v1_1:register_heuristic("udp", nasdaq_ise_orderfeed_itch_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 1.1
--   Date: Wednesday, August 23, 2017
--   Specification: ISEOrderComboFeedSpecification_tcm5044-41354.pdf
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
