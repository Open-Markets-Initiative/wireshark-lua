-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq IseOptions OrderComboFeed Itch 1.1 Protocol
local omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1 = Proto("Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.Lua", "Nasdaq IseOptions OrderComboFeed Itch 1.1")

-- Protocol table
local nasdaq_iseoptions_ordercombofeed_itch_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq IseOptions OrderComboFeed Itch 1.1 Fields
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionevent", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionid", ftypes.UINT32)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_response = ProtoField.new("Auction Response", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionresponse", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctiontype", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.cmta = ProtoField.new("Cmta", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.cmta", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_day = ProtoField.new("Current Day", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currentday", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_month = ProtoField.new("Current Month", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currentmonth", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_year = ProtoField.new("Current Year", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currentyear", ftypes.UINT16)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.eventcode", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.execflag", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.expirationday", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.expirationyear", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.explicitstrikeprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.giveup = ProtoField.new("Giveup", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.giveup", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_id = ProtoField.new("Leg Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.legid", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.leginformation", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.legratio", ftypes.UINT32)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_side = ProtoField.new("Leg Side", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.legside", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message = ProtoField.new("Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.message", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messagecount", ftypes.UINT16)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messageheader", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messagelength", ftypes.UINT16)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messagetype", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.numberoflegs", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.number_of_responses = ProtoField.new("Number Of Responses", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.numberofresponses", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.open_state = ProtoField.new("Open State", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.openstate", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.option_id = ProtoField.new("Option Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.optionid", ftypes.UINT32)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.optiontype", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordercapacity", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.order_type = ProtoField.new("Order Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordertype", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.owner_id = ProtoField.new("Owner Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ownerid", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.packet = ProtoField.new("Packet", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.packet", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.packetheader", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.payload = ProtoField.new("Payload", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.payload", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.price = ProtoField.new("Price", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.price", ftypes.DOUBLE)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.response_price = ProtoField.new("Response Price", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.responseprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.response_size = ProtoField.new("Response Size", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.responsesize", ftypes.UINT32)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.scope = ProtoField.new("Scope", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.scope", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.securitysymbol", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.session = ProtoField.new("Session", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.session", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.side = ProtoField.new("Side", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.side", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.size = ProtoField.new("Size", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.size", ftypes.UINT32)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.source = ProtoField.new("Source", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.source", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid", ftypes.UINT32)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategytype", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.subversion = ProtoField.new("Subversion", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.subversion", ftypes.UINT8)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp", ftypes.UINT64)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.underlyingsymbol", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.version = ProtoField.new("Version", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.version", ftypes.UINT8)

-- Nasdaq IseOptions OrderComboFeed Itch 1.1 messages
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_auction_message = ProtoField.new("Complex Strategy Auction Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.complexstrategyauctionmessage", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.complexstrategydirectorymessage", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_order_on_book_message = ProtoField.new("Complex Strategy Order On Book Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.complexstrategyorderonbookmessage", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyopenclosedmessage", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategytradingactionmessage", ftypes.STRING)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.systemeventmessage", ftypes.STRING)

-- Nasdaq IseOptions OrderComboFeed Itch 1.1 generated fields
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_response_index = ProtoField.new("Auction Response Index", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionresponseindex", ftypes.UINT16)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_information_index = ProtoField.new("Leg Information Index", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.leginformationindex", ftypes.UINT16)
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.iseoptions.ordercombofeed.itch.v1.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_auction_response = Pref.bool("Show Auction Response", show.auction_response, "Parse and add Auction Response to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_auction_message = Pref.bool("Show Complex Strategy Auction Message", show.complex_strategy_auction_message, "Parse and add Complex Strategy Auction Message to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_directory_message = Pref.bool("Show Complex Strategy Directory Message", show.complex_strategy_directory_message, "Parse and add Complex Strategy Directory Message to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_order_on_book_message = Pref.bool("Show Complex Strategy Order On Book Message", show.complex_strategy_order_on_book_message, "Parse and add Complex Strategy Order On Book Message to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_open_closed_message = Pref.bool("Show Strategy Open Closed Message", show.strategy_open_closed_message, "Parse and add Strategy Open Closed Message to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_trading_action_message = Pref.bool("Show Strategy Trading Action Message", show.strategy_trading_action_message, "Parse and add Strategy Trading Action Message to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_response ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_auction_response then
    show.auction_response = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_auction_response
    changed = true
  end
  if show.complex_strategy_auction_message ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_auction_message then
    show.complex_strategy_auction_message = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_auction_message
    changed = true
  end
  if show.complex_strategy_directory_message ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_directory_message then
    show.complex_strategy_directory_message = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_directory_message
    changed = true
  end
  if show.complex_strategy_order_on_book_message ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_order_on_book_message then
    show.complex_strategy_order_on_book_message = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_complex_strategy_order_on_book_message
    changed = true
  end
  if show.leg_information ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_leg_information then
    show.leg_information = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_leg_information
    changed = true
  end
  if show.message ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message then
    show.message = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet then
    show.packet = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_packet_header
    changed = true
  end
  if show.strategy_open_closed_message ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_open_closed_message then
    show.strategy_open_closed_message = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_open_closed_message
    changed = true
  end
  if show.strategy_trading_action_message ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_trading_action_message then
    show.strategy_trading_action_message = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_strategy_trading_action_message
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_payload then
    show.payload = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.prefs.show_payload
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

-- Response Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_size = {}

-- Size: Response Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_size.size = 4

-- Display: Response Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_size.display = function(value)
  return "Response Size: "..value
end

-- Dissect: Response Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.response_size, range, value, display)

  return offset + length, value
end

-- Response Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price = {}

-- Size: Response Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price.size = 4

-- Display: Response Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price.display = function(value)
  return "Response Price: "..value
end

-- Translate: Response Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Response Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price.translate(raw)
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.response_price, range, value, display)

  return offset + length, value
end

-- Auction Response
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_response = {}

-- Calculate size of: Auction Response
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_response.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_size.size

  return index
end

-- Display: Auction Response
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Response
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_response.fields = function(buffer, offset, packet, parent, auction_response_index)
  local index = offset

  -- Implicit Auction Response Index
  if auction_response_index ~= nil then
    local iteration = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_response_index, auction_response_index)
    iteration:set_generated()
  end

  -- Response Price: 4 Byte Signed Fixed Width Integer
  index, response_price = nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_price.dissect(buffer, index, packet, parent)

  -- Response Size: 4 Byte Unsigned Fixed Width Integer
  index, response_size = nasdaq_iseoptions_ordercombofeed_itch_v1_1.response_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Response
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_response.dissect = function(buffer, offset, packet, parent, auction_response_index)
  if show.auction_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_response, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_response.fields(buffer, offset, packet, parent, auction_response_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_response.fields(buffer, offset, packet, parent, auction_response_index)
  end
end

-- Number Of Responses
nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_responses = {}

-- Size: Number Of Responses
nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_responses.size = 1

-- Display: Number Of Responses
nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_responses.display = function(value)
  return "Number Of Responses: "..value
end

-- Dissect: Number Of Responses
nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_responses.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_responses.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_responses.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.number_of_responses, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_type = {}

-- Size: Auction Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_type.size = 1

-- Display: Auction Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_type.display = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Auction Event
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_event = {}

-- Size: Auction Event
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_event.size = 1

-- Display: Auction Event
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_event.display = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_event.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_event, range, value, display)

  return offset + length, value
end

-- Cmta
nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta = {}

-- Size: Cmta
nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta.size = 6

-- Display: Cmta
nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Giveup
nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup = {}

-- Size: Giveup
nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup.size = 6

-- Display: Giveup
nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup.display = function(value)
  return "Giveup: "..value
end

-- Dissect: Giveup
nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.giveup, range, value, display)

  return offset + length, value
end

-- Owner Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id = {}

-- Size: Owner Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id.size = 6

-- Display: Owner Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id.display = function(value)
  return "Owner Id: "..value
end

-- Dissect: Owner Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.owner_id, range, value, display)

  return offset + length, value
end

-- Scope
nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope = {}

-- Size: Scope
nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope.size = 1

-- Display: Scope
nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope.display = function(value)
  if value == "L" then
    return "Scope: Local (L)"
  end
  if value == "N" then
    return "Scope: National (N)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.scope, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity = {}

-- Size: Order Capacity
nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity.display = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Exec Flag
nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag = {}

-- Size: Exec Flag
nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag.size = 1

-- Display: Exec Flag
nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag.display = function(value)
  if value == "N" then
    return "Exec Flag: None (N)"
  end
  if value == "A" then
    return "Exec Flag: Aon (A)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.exec_flag, range, value, display)

  return offset + length, value
end

-- Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1.size = {}

-- Size: Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1.size.size = 4

-- Display: Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_iseoptions_ordercombofeed_itch_v1_1.size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.size, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.price = {}

-- Size: Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.size = 4

-- Display: Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.translate(raw)
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1.side = {}

-- Size: Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1.side.size = 1

-- Display: Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1.side.display = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type = {}

-- Size: Order Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type.size = 1

-- Display: Order Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type.display = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.order_type, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_id = {}

-- Size: Auction Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_id.size = 4

-- Display: Auction Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id = {}

-- Size: Strategy Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp = {}

-- Size: Timestamp
nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.size = 6

-- Display: Timestamp
nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Complex Strategy Auction Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message = {}

-- Calculate size of: Complex Strategy Auction Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.side.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.size.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_event.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_type.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_responses.size

  -- Calculate field size from count
  local auction_response_count = buffer(offset + index - 1, 1):uint()
  index = index + auction_response_count * 8

  return index
end

-- Display: Complex Strategy Auction Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Auction Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_id.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 2 values
  index, order_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_iseoptions_ordercombofeed_itch_v1_1.side.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.dissect(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_ordercombofeed_itch_v1_1.size.dissect(buffer, index, packet, parent)

  -- Exec Flag: 1 Byte Ascii String Enum with 2 values
  index, exec_flag = nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag.dissect(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 8 values
  index, order_capacity = nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Scope: 1 Byte Ascii String Enum with 2 values
  index, scope = nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope.dissect(buffer, index, packet, parent)

  -- Owner Id: 6 Byte Ascii String
  index, owner_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id.dissect(buffer, index, packet, parent)

  -- Giveup: 6 Byte Ascii String
  index, giveup = nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup.dissect(buffer, index, packet, parent)

  -- Cmta: 6 Byte Ascii String
  index, cmta = nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta.dissect(buffer, index, packet, parent)

  -- Auction Event: 1 Byte Ascii String Enum with 3 values
  index, auction_event = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_event.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_type.dissect(buffer, index, packet, parent)

  -- Number Of Responses: 1 Byte Unsigned Fixed Width Integer
  index, number_of_responses = nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_responses.dissect(buffer, index, packet, parent)

  -- Repeating: Auction Response
  for auction_response_index = 1, number_of_responses do
    index, auction_response = nasdaq_iseoptions_ordercombofeed_itch_v1_1.auction_response.dissect(buffer, index, packet, parent, auction_response_index)
  end

  return index
end

-- Dissect: Complex Strategy Auction Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_strategy_auction_message then
    local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_auction_message, range, display)
  end

  return nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message.fields(buffer, offset, packet, parent)
end

-- Complex Strategy Order On Book Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message = {}

-- Calculate size of: Complex Strategy Order On Book Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.side.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.size.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta.size

  return index
end

-- Display: Complex Strategy Order On Book Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Order On Book Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 2 values
  index, order_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_iseoptions_ordercombofeed_itch_v1_1.side.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_iseoptions_ordercombofeed_itch_v1_1.price.dissect(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_ordercombofeed_itch_v1_1.size.dissect(buffer, index, packet, parent)

  -- Exec Flag: 1 Byte Ascii String Enum with 2 values
  index, exec_flag = nasdaq_iseoptions_ordercombofeed_itch_v1_1.exec_flag.dissect(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 8 values
  index, order_capacity = nasdaq_iseoptions_ordercombofeed_itch_v1_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Scope: 1 Byte Ascii String Enum with 2 values
  index, scope = nasdaq_iseoptions_ordercombofeed_itch_v1_1.scope.dissect(buffer, index, packet, parent)

  -- Owner Id: 6 Byte Ascii String
  index, owner_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.owner_id.dissect(buffer, index, packet, parent)

  -- Giveup: 6 Byte Ascii String
  index, giveup = nasdaq_iseoptions_ordercombofeed_itch_v1_1.giveup.dissect(buffer, index, packet, parent)

  -- Cmta: 6 Byte Ascii String
  index, cmta = nasdaq_iseoptions_ordercombofeed_itch_v1_1.cmta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Order On Book Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_strategy_order_on_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_order_on_book_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Open State
nasdaq_iseoptions_ordercombofeed_itch_v1_1.open_state = {}

-- Size: Open State
nasdaq_iseoptions_ordercombofeed_itch_v1_1.open_state.size = 1

-- Display: Open State
nasdaq_iseoptions_ordercombofeed_itch_v1_1.open_state.display = function(value)
  if value == "Y" then
    return "Open State: Open For Auto Execution (Y)"
  end
  if value == "N" then
    return "Open State: Closed For Auto Execution (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_iseoptions_ordercombofeed_itch_v1_1.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.open_state, range, value, display)

  return offset + length, value
end

-- Strategy Open Closed Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message = {}

-- Calculate size of: Strategy Open Closed Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.open_state.size

  return index
end

-- Display: Strategy Open Closed Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Open Closed Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_iseoptions_ordercombofeed_itch_v1_1.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Open Closed Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_open_closed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_open_closed_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Current Trading State
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Strategy Trading Action Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message = {}

-- Calculate size of: Strategy Trading Action Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_trading_state.size

  return index
end

-- Display: Strategy Trading Action Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_trading_action_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Ratio
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_side = {}

-- Size: Leg Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_side.size = 1

-- Display: Leg Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: Buy (B)"
  end
  if value == "S" then
    return "Leg Side: Sell (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_type = {}

-- Size: Option Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_type.size = 1

-- Display: Option Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_type.display = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price.size = 8

-- Display: Explicit Strike Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Explicit Strike Price
nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price.translate(raw)
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Leg Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_id = {}

-- Size: Leg Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_id.size = 1

-- Display: Leg Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_id.display = function(value)
  return "Leg Id: "..value
end

-- Dissect: Leg Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_id, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_id = {}

-- Size: Option Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_id.size = 4

-- Display: Option Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.option_id, range, value, display)

  return offset + length, value
end

-- Leg Information
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_information = {}

-- Calculate size of: Leg Information
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_information.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.security_symbol.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_year.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_month.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_day.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_type.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_side.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_ratio.size

  return index
end

-- Display: Leg Information
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Information
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_information.fields = function(buffer, offset, packet, parent, leg_information_index)
  local index = offset

  -- Implicit Leg Information Index
  if leg_information_index ~= nil then
    local iteration = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_information_index, leg_information_index)
    iteration:set_generated()
  end

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_iseoptions_ordercombofeed_itch_v1_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Leg Id: 1 Byte Unsigned Fixed Width Integer
  index, leg_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_id.dissect(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = nasdaq_iseoptions_ordercombofeed_itch_v1_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 8 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_iseoptions_ordercombofeed_itch_v1_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1.option_type.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 2 values
  index, leg_side = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_information.dissect = function(buffer, offset, packet, parent, leg_information_index)
  if show.leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.leg_information, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
  end
end

-- Number Of Legs
nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_iseoptions_ordercombofeed_itch_v1_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_iseoptions_ordercombofeed_itch_v1_1.source = {}

-- Size: Source
nasdaq_iseoptions_ordercombofeed_itch_v1_1.source.size = 1

-- Display: Source
nasdaq_iseoptions_ordercombofeed_itch_v1_1.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_iseoptions_ordercombofeed_itch_v1_1.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.source, range, value, display)

  return offset + length, value
end

-- Strategy Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_type = {}

-- Size: Strategy Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_type.size = 1

-- Display: Strategy Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_type.display = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Complex Strategy Directory Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message = {}

-- Calculate size of: Complex Strategy Directory Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_type.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.source.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.underlying_symbol.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_legs.size

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 28

  return index
end

-- Display: Complex Strategy Directory Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Strategy Type: 1 Byte Ascii String Enum with 9 values
  index, strategy_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_type.dissect(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_iseoptions_ordercombofeed_itch_v1_1.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_iseoptions_ordercombofeed_itch_v1_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Number Of Legs: 1 Byte Unsigned Fixed Width Integer
  index, number_of_legs = nasdaq_iseoptions_ordercombofeed_itch_v1_1.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Information
  for leg_information_index = 1, number_of_legs do
    index, leg_information = nasdaq_iseoptions_ordercombofeed_itch_v1_1.leg_information.dissect(buffer, index, packet, parent, leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_strategy_directory_message then
    local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.complex_strategy_directory_message, range, display)
  end

  return nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
end

-- Subversion
nasdaq_iseoptions_ordercombofeed_itch_v1_1.subversion = {}

-- Size: Subversion
nasdaq_iseoptions_ordercombofeed_itch_v1_1.subversion.size = 1

-- Display: Subversion
nasdaq_iseoptions_ordercombofeed_itch_v1_1.subversion.display = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_iseoptions_ordercombofeed_itch_v1_1.subversion.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.subversion.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.subversion.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.subversion, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_iseoptions_ordercombofeed_itch_v1_1.version = {}

-- Size: Version
nasdaq_iseoptions_ordercombofeed_itch_v1_1.version.size = 1

-- Display: Version
nasdaq_iseoptions_ordercombofeed_itch_v1_1.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_iseoptions_ordercombofeed_itch_v1_1.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.version, range, value, display)

  return offset + length, value
end

-- Current Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_day = {}

-- Size: Current Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_day.size = 1

-- Display: Current Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_day.display = function(value)
  return "Current Day: "..value
end

-- Dissect: Current Day
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_day, range, value, display)

  return offset + length, value
end

-- Current Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_month = {}

-- Size: Current Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_month.size = 1

-- Display: Current Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_month.display = function(value)
  return "Current Month: "..value
end

-- Dissect: Current Month
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_month, range, value, display)

  return offset + length, value
end

-- Current Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_year = {}

-- Size: Current Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_year.size = 2

-- Display: Current Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_year.display = function(value)
  return "Current Year: "..value
end

-- Dissect: Current Year
nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.current_year, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_iseoptions_ordercombofeed_itch_v1_1.event_code = {}

-- Size: Event Code
nasdaq_iseoptions_ordercombofeed_itch_v1_1.event_code.size = 1

-- Display: Event Code
nasdaq_iseoptions_ordercombofeed_itch_v1_1.event_code.display = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message = {}

-- Calculate size of: System Event Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.event_code.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_year.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_month.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_day.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.version.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.subversion.size

  return index
end

-- Display: System Event Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_ordercombofeed_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 8 values
  index, event_code = nasdaq_iseoptions_ordercombofeed_itch_v1_1.event_code.dissect(buffer, index, packet, parent)

  -- Current Year: 2 Byte Unsigned Fixed Width Integer
  index, current_year = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_year.dissect(buffer, index, packet, parent)

  -- Current Month: 1 Byte Unsigned Fixed Width Integer
  index, current_month = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_month.dissect(buffer, index, packet, parent)

  -- Current Day: 1 Byte Unsigned Fixed Width Integer
  index, current_day = nasdaq_iseoptions_ordercombofeed_itch_v1_1.current_day.dissect(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_iseoptions_ordercombofeed_itch_v1_1.version.dissect(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index, subversion = nasdaq_iseoptions_ordercombofeed_itch_v1_1.subversion.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload = {}

-- Calculate runtime size of: Payload
nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message.size(buffer, offset)
  end
  -- Size of Complex Strategy Directory Message
  if message_type == "R" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message.size(buffer, offset)
  end
  -- Size of Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message.size(buffer, offset)
  end
  -- Size of Strategy Open Closed Message
  if message_type == "O" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message.size(buffer, offset)
  end
  -- Size of Complex Strategy Order On Book Message
  if message_type == "L" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message.size(buffer, offset)
  end
  -- Size of Complex Strategy Auction Message
  if message_type == "J" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if message_type == "R" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Open Closed Message
  if message_type == "O" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.strategy_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Order On Book Message
  if message_type == "L" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_order_on_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Auction Message
  if message_type == "J" then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.complex_strategy_auction_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.payload, range, display)

  return nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_type = {}

-- Size: Message Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_type.size = 1

-- Display: Message Type
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_type.display = function(value)
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
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_length = {}

-- Size: Message Length
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_length.size = 2

-- Display: Message Length
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_header = {}

-- Calculate size of: Message Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_length.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_type.size

  return index
end

-- Display: Message Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 6 values
  index, message_type = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message = {}

-- Display: Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_iseoptions_ordercombofeed_itch_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message, buffer(offset, 0))
    local current = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_ordercombofeed_itch_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_count = {}

-- Size: Message Count
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_count.size = 2

-- Display: Message Count
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_iseoptions_ordercombofeed_itch_v1_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_iseoptions_ordercombofeed_itch_v1_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_iseoptions_ordercombofeed_itch_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_iseoptions_ordercombofeed_itch_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_iseoptions_ordercombofeed_itch_v1_1.session = {}

-- Size: Session
nasdaq_iseoptions_ordercombofeed_itch_v1_1.session.size = 10

-- Display: Session
nasdaq_iseoptions_ordercombofeed_itch_v1_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_iseoptions_ordercombofeed_itch_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_ordercombofeed_itch_v1_1.session.size
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

  local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet_header = {}

-- Calculate size of: Packet Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.session.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.sequence_number.size

  index = index + nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_count.size

  return index
end

-- Display: Packet Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_iseoptions_ordercombofeed_itch_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_iseoptions_ordercombofeed_itch_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet = {}

-- Dissect Packet
nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_iseoptions_ordercombofeed_itch_v1_1.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.init()
end

-- Dissector for Nasdaq IseOptions OrderComboFeed Itch 1.1
function omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1, buffer(), omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq IseOptions OrderComboFeed Itch 1.1
local function omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_iseoptions_ordercombofeed_itch_v1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1
  omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq IseOptions OrderComboFeed Itch 1.1
omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1:register_heuristic("udp", omi_nasdaq_iseoptions_ordercombofeed_itch_v1_1_heuristic)

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
