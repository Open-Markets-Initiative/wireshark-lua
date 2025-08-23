-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq IseOptions OrderComboFeed Itch 1.1 Protocol
local nasdaq_iseoptions_ordercombofeed_itch_v1_1 = Proto("Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.Lua", "Nasdaq IseOptions OrderComboFeed Itch 1.1")

-- Component Tables
local show = {}
local format = {}
local nasdaq_iseoptions_ordercombofeed_itch_v1_1_display = {}
local nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect = {}
local nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq IseOptions OrderComboFeed Itch 1.1 Fields
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionevent", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionid", ftypes.UINT32)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_response = ProtoField.new("Auction Response", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionresponse", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctiontype", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.cmta = ProtoField.new("Cmta", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.cmta", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_day = ProtoField.new("Current Day", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currentday", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_month = ProtoField.new("Current Month", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currentmonth", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currenttradingstate", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_year = ProtoField.new("Current Year", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currentyear", ftypes.UINT16)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.eventcode", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.execflag", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.expirationday", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.expirationmonth", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.expirationyear", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.explicitstrikeprice", ftypes.DOUBLE)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.giveup = ProtoField.new("Giveup", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.giveup", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_id = ProtoField.new("Leg Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.legid", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.leginformation", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.legratio", ftypes.UINT32)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_side = ProtoField.new("Leg Side", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.legside", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message = ProtoField.new("Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.message", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messagecount", ftypes.UINT16)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messageheader", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messagelength", ftypes.UINT16)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messagetype", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.numberoflegs", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.number_of_responses = ProtoField.new("Number Of Responses", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.numberofresponses", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.open_state = ProtoField.new("Open State", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.openstate", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.option_id = ProtoField.new("Option Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.optionid", ftypes.UINT32)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.optiontype", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordercapacity", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.order_type = ProtoField.new("Order Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordertype", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.owner_id = ProtoField.new("Owner Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ownerid", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.packet = ProtoField.new("Packet", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.packet", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.packetheader", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.payload = ProtoField.new("Payload", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.payload", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.price = ProtoField.new("Price", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.price", ftypes.DOUBLE)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.response_price = ProtoField.new("Response Price", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.responseprice", ftypes.DOUBLE)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.response_size = ProtoField.new("Response Size", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.responsesize", ftypes.UINT32)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.scope = ProtoField.new("Scope", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.scope", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.securitysymbol", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.sequencenumber", ftypes.UINT64)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.session = ProtoField.new("Session", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.session", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.side = ProtoField.new("Side", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.side", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.size = ProtoField.new("Size", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.size", ftypes.UINT32)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.source = ProtoField.new("Source", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.source", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid", ftypes.UINT32)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategytype", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.subversion = ProtoField.new("Subversion", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.subversion", ftypes.UINT8)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp", ftypes.UINT64)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.underlyingsymbol", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.version = ProtoField.new("Version", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.version", ftypes.UINT8)

-- Nasdaq IseOptions OrderComboFeed Itch 1.1 messages
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_auction_message = ProtoField.new("Complex Strategy Auction Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.complexstrategyauctionmessage", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.complexstrategydirectorymessage", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_order_on_book_message = ProtoField.new("Complex Strategy Order On Book Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.complexstrategyorderonbookmessage", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyopenclosedmessage", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategytradingactionmessage", ftypes.STRING)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.systemeventmessage", ftypes.STRING)

-- Nasdaq IseOptions OrderComboFeed Itch 1.1 generated fields
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_response_index = ProtoField.new("Auction Response Index", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionresponseindex", ftypes.UINT16)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_information_index = ProtoField.new("Leg Information Index", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.leginformationindex", ftypes.UINT16)
nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq IseOptions OrderComboFeed Itch 1.1 Element Dissection Options
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

-- Register Nasdaq IseOptions OrderComboFeed Itch 1.1 Show Options
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_auction_response = Pref.bool("Show Auction Response", show.auction_response, "Parse and add Auction Response to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_auction_message = Pref.bool("Show Complex Strategy Auction Message", show.complex_strategy_auction_message, "Parse and add Complex Strategy Auction Message to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_directory_message = Pref.bool("Show Complex Strategy Directory Message", show.complex_strategy_directory_message, "Parse and add Complex Strategy Directory Message to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_order_on_book_message = Pref.bool("Show Complex Strategy Order On Book Message", show.complex_strategy_order_on_book_message, "Parse and add Complex Strategy Order On Book Message to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_open_closed_message = Pref.bool("Show Strategy Open Closed Message", show.strategy_open_closed_message, "Parse and add Strategy Open Closed Message to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_trading_action_message = Pref.bool("Show Strategy Trading Action Message", show.strategy_trading_action_message, "Parse and add Strategy Trading Action Message to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_response ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_auction_response then
    show.auction_response = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_auction_response
    changed = true
  end
  if show.complex_strategy_auction_message ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_auction_message then
    show.complex_strategy_auction_message = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_auction_message
    changed = true
  end
  if show.complex_strategy_directory_message ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_directory_message then
    show.complex_strategy_directory_message = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_directory_message
    changed = true
  end
  if show.complex_strategy_order_on_book_message ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_order_on_book_message then
    show.complex_strategy_order_on_book_message = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_order_on_book_message
    changed = true
  end
  if show.leg_information ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_leg_information then
    show.leg_information = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_leg_information
    changed = true
  end
  if show.message ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message then
    show.message = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message_header then
    show.message_header = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet then
    show.packet = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet_header then
    show.packet_header = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet_header
    changed = true
  end
  if show.strategy_open_closed_message ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_open_closed_message then
    show.strategy_open_closed_message = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_open_closed_message
    changed = true
  end
  if show.strategy_trading_action_message ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_trading_action_message then
    show.strategy_trading_action_message = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_system_event_message then
    show.system_event_message = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_payload then
    show.payload = nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_payload
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
-- Dissect Nasdaq IseOptions OrderComboFeed Itch 1.1
-----------------------------------------------------------------------

-- Size: Response Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.response_size = 4

-- Display: Response Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.response_size = function(value)
  return "Response Size: "..value
end

-- Dissect: Response Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.response_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.response_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.response_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.response_size, range, value, display)

  return offset + length, value
end

-- Size: Response Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.response_price = 4

-- Display: Response Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.response_price = function(value)
  return "Response Price: "..value
end

-- Translate: Response Price
translate.response_price = function(raw)
  return raw/10000
end

-- Dissect: Response Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.response_price = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.response_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.response_price(raw)
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.response_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.response_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Response
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_response = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.response_price

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.response_size

  return index
end

-- Display: Auction Response
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.auction_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Response
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_response_fields = function(buffer, offset, packet, parent, auction_response_index)
  local index = offset

  -- Implicit Auction Response Index
  if auction_response_index ~= nil then
    local iteration = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_response_index, auction_response_index)
    iteration:set_generated()
  end

  -- Response Price: 4 Byte Signed Fixed Width Integer
  index, response_price = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.response_price(buffer, index, packet, parent)

  -- Response Size: 4 Byte Unsigned Fixed Width Integer
  index, response_size = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.response_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Response
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_response = function(buffer, offset, packet, parent, auction_response_index)
  if show.auction_response then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_response, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_response_fields(buffer, offset, packet, parent, auction_response_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.auction_response(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_response_fields(buffer, offset, packet, parent, auction_response_index)
  end
end

-- Size: Number Of Responses
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.number_of_responses = 1

-- Display: Number Of Responses
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.number_of_responses = function(value)
  return "Number Of Responses: "..value
end

-- Dissect: Number Of Responses
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.number_of_responses = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.number_of_responses
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.number_of_responses(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.number_of_responses, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_type = 1

-- Display: Auction Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.auction_type = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Auction Event
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_event = 1

-- Display: Auction Event
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.auction_event = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_event = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_event
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.auction_event(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_event, range, value, display)

  return offset + length, value
end

-- Size: Cmta
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.cmta = 6

-- Display: Cmta
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.cmta = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.cmta = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.cmta
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.cmta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Size: Giveup
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.giveup = 6

-- Display: Giveup
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.giveup = function(value)
  return "Giveup: "..value
end

-- Dissect: Giveup
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.giveup = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.giveup
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.giveup(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.giveup, range, value, display)

  return offset + length, value
end

-- Size: Owner Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.owner_id = 6

-- Display: Owner Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.owner_id = function(value)
  return "Owner Id: "..value
end

-- Dissect: Owner Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.owner_id = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.owner_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.owner_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.owner_id, range, value, display)

  return offset + length, value
end

-- Size: Scope
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.scope = 1

-- Display: Scope
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.scope = function(value)
  if value == "L" then
    return "Scope: Local (L)"
  end
  if value == "N" then
    return "Scope: National (N)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.scope = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.scope
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.scope(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.scope, range, value, display)

  return offset + length, value
end

-- Size: Order Capacity
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.order_capacity = 1

-- Display: Order Capacity
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.order_capacity = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.order_capacity = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.order_capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.order_capacity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Exec Flag
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.exec_flag = 1

-- Display: Exec Flag
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.exec_flag = function(value)
  if value == "N" then
    return "Exec Flag: None (N)"
  end
  if value == "A" then
    return "Exec Flag: Aon (A)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.exec_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.exec_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.exec_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.exec_flag, range, value, display)

  return offset + length, value
end

-- Size: Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.size = 4

-- Display: Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.price = 4

-- Display: Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.price(raw)
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.side = 1

-- Display: Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.side = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.side = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Order Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.order_type = 1

-- Display: Order Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.order_type = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.order_type = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.order_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.order_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_id = 4

-- Display: Auction Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Size: Strategy Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_id = 4

-- Display: Strategy Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.strategy_id = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_id = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.strategy_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.timestamp = 6

-- Display: Timestamp
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Strategy Auction Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.complex_strategy_auction_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.order_type

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.side

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.price

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.exec_flag

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.order_capacity

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.scope

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.owner_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.giveup

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.cmta

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_event

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.auction_type

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.number_of_responses

  -- Calculate field size from count
  local auction_response_count = buffer(offset + index - 1, 1):uint()
  index = index + auction_response_count * 8

  return index
end

-- Display: Complex Strategy Auction Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.complex_strategy_auction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Auction Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_auction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_id(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 2 values
  index, order_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.order_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.side(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.size(buffer, index, packet, parent)

  -- Exec Flag: 1 Byte Ascii String Enum with 2 values
  index, exec_flag = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.exec_flag(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 8 values
  index, order_capacity = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.order_capacity(buffer, index, packet, parent)

  -- Scope: 1 Byte Ascii String Enum with 2 values
  index, scope = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.scope(buffer, index, packet, parent)

  -- Owner Id: 6 Byte Ascii String
  index, owner_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.owner_id(buffer, index, packet, parent)

  -- Giveup: 6 Byte Ascii String
  index, giveup = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.giveup(buffer, index, packet, parent)

  -- Cmta: 6 Byte Ascii String
  index, cmta = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.cmta(buffer, index, packet, parent)

  -- Auction Event: 1 Byte Ascii String Enum with 3 values
  index, auction_event = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_event(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_type(buffer, index, packet, parent)

  -- Number Of Responses: 1 Byte Unsigned Fixed Width Integer
  index, number_of_responses = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.number_of_responses(buffer, index, packet, parent)

  -- Repeating: Auction Response
  for auction_response_index = 1, number_of_responses do
    index, auction_response = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.auction_response(buffer, index, packet, parent, auction_response_index)
  end

  return index
end

-- Dissect: Complex Strategy Auction Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_auction_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_strategy_auction_message then
    local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.complex_strategy_auction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.complex_strategy_auction_message(buffer, packet, parent)
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_auction_message, range, display)
  end

  return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_auction_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Complex Strategy Order On Book Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.complex_strategy_order_on_book_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.order_type

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.side

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.price

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.exec_flag

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.order_capacity

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.scope

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.owner_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.giveup

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.cmta

  return index
end

-- Display: Complex Strategy Order On Book Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.complex_strategy_order_on_book_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Order On Book Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_order_on_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 2 values
  index, order_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.order_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.side(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.size(buffer, index, packet, parent)

  -- Exec Flag: 1 Byte Ascii String Enum with 2 values
  index, exec_flag = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.exec_flag(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 8 values
  index, order_capacity = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.order_capacity(buffer, index, packet, parent)

  -- Scope: 1 Byte Ascii String Enum with 2 values
  index, scope = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.scope(buffer, index, packet, parent)

  -- Owner Id: 6 Byte Ascii String
  index, owner_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.owner_id(buffer, index, packet, parent)

  -- Giveup: 6 Byte Ascii String
  index, giveup = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.giveup(buffer, index, packet, parent)

  -- Cmta: 6 Byte Ascii String
  index, cmta = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.cmta(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Order On Book Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_order_on_book_message = function(buffer, offset, packet, parent)
  if show.complex_strategy_order_on_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_order_on_book_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_order_on_book_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.complex_strategy_order_on_book_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_order_on_book_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Open State
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.open_state = 1

-- Display: Open State
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open For Auto Execution (Y)"
  end
  if value == "N" then
    return "Open State: Closed For Auto Execution (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.open_state = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.open_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.open_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Open Closed Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_open_closed_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.open_state

  return index
end

-- Display: Strategy Open Closed Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.strategy_open_closed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Open Closed Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_open_closed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Open Closed Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_open_closed_message = function(buffer, offset, packet, parent)
  if show.strategy_open_closed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_open_closed_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_open_closed_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.strategy_open_closed_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_open_closed_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Current Trading State
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Trading Action Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_trading_state

  return index
end

-- Display: Strategy Trading Action Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.strategy_trading_action_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_trading_action_message = function(buffer, offset, packet, parent)
  if show.strategy_trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_trading_action_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_trading_action_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.strategy_trading_action_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_trading_action_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Leg Ratio
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_ratio = 4

-- Display: Leg Ratio
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_side = 1

-- Display: Leg Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.leg_side = function(value)
  if value == "B" then
    return "Leg Side: Buy (B)"
  end
  if value == "S" then
    return "Leg Side: Sell (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Option Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.option_type = 1

-- Display: Option Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.option_type = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.option_type = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Explicit Strike Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.explicit_strike_price = 8

-- Display: Explicit Strike Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.explicit_strike_price = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
translate.explicit_strike_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Explicit Strike Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.explicit_strike_price = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.explicit_strike_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.explicit_strike_price(raw)
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.explicit_strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.expiration_day = 1

-- Display: Expiration Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.expiration_day = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.expiration_day = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.expiration_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.expiration_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.expiration_month = 1

-- Display: Expiration Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.expiration_year = 1

-- Display: Expiration Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Leg Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_id = 1

-- Display: Leg Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.leg_id = function(value)
  return "Leg Id: "..value
end

-- Dissect: Leg Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_id = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.leg_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_id, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.security_symbol = 6

-- Display: Security Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.security_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Option Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.option_id = 4

-- Display: Option Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.option_id = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.option_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.option_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Leg Information
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_information = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.option_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.security_symbol

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.expiration_year

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.expiration_month

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.expiration_day

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.explicit_strike_price

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.option_type

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_side

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.leg_ratio

  return index
end

-- Display: Leg Information
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.leg_information = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Information
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_information_fields = function(buffer, offset, packet, parent, leg_information_index)
  local index = offset

  -- Implicit Leg Information Index
  if leg_information_index ~= nil then
    local iteration = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_information_index, leg_information_index)
    iteration:set_generated()
  end

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.security_symbol(buffer, index, packet, parent)

  -- Leg Id: 1 Byte Unsigned Fixed Width Integer
  index, leg_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_id(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.expiration_day(buffer, index, packet, parent)

  -- Explicit Strike Price: 8 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.explicit_strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.option_type(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 2 values
  index, leg_side = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_side(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_ratio(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_information = function(buffer, offset, packet, parent, leg_information_index)
  if show.leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_information, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_information_fields(buffer, offset, packet, parent, leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.leg_information(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_information_fields(buffer, offset, packet, parent, leg_information_index)
  end
end

-- Size: Number Of Legs
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.number_of_legs = 1

-- Display: Number Of Legs
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.number_of_legs
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.underlying_symbol = 13

-- Display: Underlying Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Source
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.source = 1

-- Display: Source
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.source = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.source, range, value, display)

  return offset + length, value
end

-- Size: Strategy Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_type = 1

-- Display: Strategy Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.strategy_type = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_type = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.strategy_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Strategy Directory Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.complex_strategy_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_id

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_type

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.source

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.underlying_symbol

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.number_of_legs

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 28

  return index
end

-- Display: Complex Strategy Directory Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.complex_strategy_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Strategy Type: 1 Byte Ascii String Enum with 9 values
  index, strategy_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Number Of Legs: 1 Byte Unsigned Fixed Width Integer
  index, number_of_legs = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.number_of_legs(buffer, index, packet, parent)

  -- Repeating: Leg Information
  for leg_information_index = 1, number_of_legs do
    index, leg_information = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.leg_information(buffer, index, packet, parent, leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_strategy_directory_message then
    local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.complex_strategy_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.complex_strategy_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_directory_message, range, display)
  end

  return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Subversion
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.subversion = 1

-- Display: Subversion
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.subversion = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.subversion = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.subversion
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.subversion(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.subversion, range, value, display)

  return offset + length, value
end

-- Size: Version
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.version = 1

-- Display: Version
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.version = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.version(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Current Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_day = 1

-- Display: Current Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.current_day = function(value)
  return "Current Day: "..value
end

-- Dissect: Current Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.current_day = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.current_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_day, range, value, display)

  return offset + length, value
end

-- Size: Current Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_month = 1

-- Display: Current Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.current_month = function(value)
  return "Current Month: "..value
end

-- Dissect: Current Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.current_month = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.current_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_month, range, value, display)

  return offset + length, value
end

-- Size: Current Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_year = 2

-- Display: Current Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.current_year = function(value)
  return "Current Year: "..value
end

-- Dissect: Current Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.current_year = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.current_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_year, range, value, display)

  return offset + length, value
end

-- Size: Event Code
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.event_code = 1

-- Display: Event Code
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.event_code = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.timestamp

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.event_code

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_year

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_month

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.current_day

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.version

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.subversion

  return index
end

-- Display: System Event Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 8 values
  index, event_code = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.event_code(buffer, index, packet, parent)

  -- Current Year: 2 Byte Unsigned Fixed Width Integer
  index, current_year = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.current_year(buffer, index, packet, parent)

  -- Current Month: 1 Byte Unsigned Fixed Width Integer
  index, current_month = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.current_month(buffer, index, packet, parent)

  -- Current Day: 1 Byte Unsigned Fixed Width Integer
  index, current_day = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.current_day(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.version(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index, subversion = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.subversion(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.system_event_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.system_event_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.system_event_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.system_event_message(buffer, offset)
  end
  -- Size of Complex Strategy Directory Message
  if message_type == "R" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.complex_strategy_directory_message(buffer, offset)
  end
  -- Size of Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_trading_action_message(buffer, offset)
  end
  -- Size of Strategy Open Closed Message
  if message_type == "O" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.strategy_open_closed_message(buffer, offset)
  end
  -- Size of Complex Strategy Order On Book Message
  if message_type == "L" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.complex_strategy_order_on_book_message(buffer, offset)
  end
  -- Size of Complex Strategy Auction Message
  if message_type == "J" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.complex_strategy_auction_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if message_type == "R" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Open Closed Message
  if message_type == "O" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.strategy_open_closed_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Order On Book Message
  if message_type == "L" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_order_on_book_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Auction Message
  if message_type == "J" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.complex_strategy_auction_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.payload, range, display)

  return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_type = 1

-- Display: Message Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message_type = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_length = 2

-- Display: Message Length
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_length = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_length

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 6 values
  index, message_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message, buffer(offset, 0))
    local current = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Message Count
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_count = 2

-- Display: Message Count
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.sequence_number = 8

-- Display: Sequence Number
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.session = 10

-- Display: Session
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.session
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

  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.session

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.sequence_number

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1_size_of.message_count

  return index
end

-- Display: Packet Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.message(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_iseoptions_ordercombofeed_itch_v1_1.init()
end

-- Dissector for Nasdaq IseOptions OrderComboFeed Itch 1.1
function nasdaq_iseoptions_ordercombofeed_itch_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_iseoptions_ordercombofeed_itch_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_iseoptions_ordercombofeed_itch_v1_1, buffer(), nasdaq_iseoptions_ordercombofeed_itch_v1_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_iseoptions_ordercombofeed_itch_v1_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_iseoptions_ordercombofeed_itch_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_iseoptions_ordercombofeed_itch_v1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq IseOptions OrderComboFeed Itch 1.1
local function nasdaq_iseoptions_ordercombofeed_itch_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_iseoptions_ordercombofeed_itch_v1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_iseoptions_ordercombofeed_itch_v1_1
  nasdaq_iseoptions_ordercombofeed_itch_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq IseOptions OrderComboFeed Itch 1.1
nasdaq_iseoptions_ordercombofeed_itch_v1_1:register_heuristic("udp", nasdaq_iseoptions_ordercombofeed_itch_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 1.1
--   Date: Tuesday, June 13, 2017
--   Specification: ISE-GEMX-MRX-Order-Feed-Specification_tcm5044-42717.pdf
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
