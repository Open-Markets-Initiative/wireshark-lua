-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Ise TopComboQuoteFeed Itch 1.0 Protocol
local nasdaq_ise_topcomboquotefeed_itch_v1_0 = Proto("Nasdaq.Ise.TopComboQuoteFeed.Itch.v1.0.Lua", "Nasdaq Ise TopComboQuoteFeed Itch 1.0")

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

-- Nasdaq Ise TopComboQuoteFeed Itch 1.0 Fields
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_cust_size = ProtoField.new("Ask Cust Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.askcustsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_market_size = ProtoField.new("Ask Market Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.askmarketsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_ntt_market_size = ProtoField.new("Ask Ntt Market Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.asknttmarketsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_ntt_size = ProtoField.new("Ask Ntt Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.asknttsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.ise.topcomboquotefeed.itch.v1.0.askprice", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_pro_cust_size = ProtoField.new("Ask Pro Cust Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.askprocustsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.asksize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_cust_size = ProtoField.new("Bid Cust Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.bidcustsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_market_size = ProtoField.new("Bid Market Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.bidmarketsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_ntt_market_size = ProtoField.new("Bid Ntt Market Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.bidnttmarketsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_ntt_size = ProtoField.new("Bid Ntt Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.bidnttsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.ise.topcomboquotefeed.itch.v1.0.bidprice", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_pro_cust_size = ProtoField.new("Bid Pro Cust Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.bidprocustsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.bidsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.ise.topcomboquotefeed.itch.v1.0.complexstrategydirectorymessage", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.complex_strategy_ticker_message = ProtoField.new("Complex Strategy Ticker Message", "nasdaq.ise.topcomboquotefeed.itch.v1.0.complexstrategytickermessage", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.count = ProtoField.new("Count", "nasdaq.ise.topcomboquotefeed.itch.v1.0.count", ftypes.UINT16)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.current_day = ProtoField.new("Current Day", "nasdaq.ise.topcomboquotefeed.itch.v1.0.currentday", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.current_month = ProtoField.new("Current Month", "nasdaq.ise.topcomboquotefeed.itch.v1.0.currentmonth", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.ise.topcomboquotefeed.itch.v1.0.currenttradingstate", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.current_year = ProtoField.new("Current Year", "nasdaq.ise.topcomboquotefeed.itch.v1.0.currentyear", ftypes.UINT16)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.cust_size = ProtoField.new("Cust Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.custsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.ise.topcomboquotefeed.itch.v1.0.eventcode", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.ise.topcomboquotefeed.itch.v1.0.expirationday", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.ise.topcomboquotefeed.itch.v1.0.expirationmonth", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.ise.topcomboquotefeed.itch.v1.0.expirationyear", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.ise.topcomboquotefeed.itch.v1.0.explicitstrikeprice", ftypes.UINT64)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.first = ProtoField.new("First", "nasdaq.ise.topcomboquotefeed.itch.v1.0.first", ftypes.UINT64)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.high = ProtoField.new("High", "nasdaq.ise.topcomboquotefeed.itch.v1.0.high", ftypes.UINT64)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.last_price = ProtoField.new("Last Price", "nasdaq.ise.topcomboquotefeed.itch.v1.0.lastprice", ftypes.UINT64)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.leg_id = ProtoField.new("Leg Id", "nasdaq.ise.topcomboquotefeed.itch.v1.0.legid", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.ise.topcomboquotefeed.itch.v1.0.leginformation", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.ise.topcomboquotefeed.itch.v1.0.legratio", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.length = ProtoField.new("Length", "nasdaq.ise.topcomboquotefeed.itch.v1.0.length", ftypes.UINT16)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.low = ProtoField.new("Low", "nasdaq.ise.topcomboquotefeed.itch.v1.0.low", ftypes.UINT64)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.market_size = ProtoField.new("Market Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.marketsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.message = ProtoField.new("Message", "nasdaq.ise.topcomboquotefeed.itch.v1.0.message", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.ise.topcomboquotefeed.itch.v1.0.messageheader", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.ise.topcomboquotefeed.itch.v1.0.messagetype", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ntt_market_size = ProtoField.new("Ntt Market Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.nttmarketsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ntt_size = ProtoField.new("Ntt Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.nttsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.ise.topcomboquotefeed.itch.v1.0.numberoflegs", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.open_state = ProtoField.new("Open State", "nasdaq.ise.topcomboquotefeed.itch.v1.0.openstate", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.option_id = ProtoField.new("Option Id", "nasdaq.ise.topcomboquotefeed.itch.v1.0.optionid", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.option_type = ProtoField.new("Option Type", "nasdaq.ise.topcomboquotefeed.itch.v1.0.optiontype", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.packet = ProtoField.new("Packet", "nasdaq.ise.topcomboquotefeed.itch.v1.0.packet", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.ise.topcomboquotefeed.itch.v1.0.packetheader", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.payload = ProtoField.new("Payload", "nasdaq.ise.topcomboquotefeed.itch.v1.0.payload", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.price = ProtoField.new("Price", "nasdaq.ise.topcomboquotefeed.itch.v1.0.price", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.pro_cust_size = ProtoField.new("Pro Cust Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.procustsize", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.ise.topcomboquotefeed.itch.v1.0.quotecondition", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.ise.topcomboquotefeed.itch.v1.0.securitysymbol", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.sequence = ProtoField.new("Sequence", "nasdaq.ise.topcomboquotefeed.itch.v1.0.sequence", ftypes.UINT64)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.session = ProtoField.new("Session", "nasdaq.ise.topcomboquotefeed.itch.v1.0.session", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.side = ProtoField.new("Side", "nasdaq.ise.topcomboquotefeed.itch.v1.0.side", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.size = ProtoField.new("Size", "nasdaq.ise.topcomboquotefeed.itch.v1.0.size", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.source = ProtoField.new("Source", "nasdaq.ise.topcomboquotefeed.itch.v1.0.source", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_best_ask_update = ProtoField.new("Strategy Best Ask Update", "nasdaq.ise.topcomboquotefeed.itch.v1.0.strategybestaskupdate", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_and_ask_update = ProtoField.new("Strategy Best Bid And Ask Update", "nasdaq.ise.topcomboquotefeed.itch.v1.0.strategybestbidandaskupdate", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_update = ProtoField.new("Strategy Best Bid Update", "nasdaq.ise.topcomboquotefeed.itch.v1.0.strategybestbidupdate", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.ise.topcomboquotefeed.itch.v1.0.strategyid", ftypes.UINT32)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.ise.topcomboquotefeed.itch.v1.0.strategyopenclosedmessage", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.ise.topcomboquotefeed.itch.v1.0.strategytradingactionmessage", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.ise.topcomboquotefeed.itch.v1.0.strategytype", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.subversion = ProtoField.new("Subversion", "nasdaq.ise.topcomboquotefeed.itch.v1.0.subversion", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.ise.topcomboquotefeed.itch.v1.0.systemeventmessage", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.ise.topcomboquotefeed.itch.v1.0.timestamp", ftypes.UINT64)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.ise.topcomboquotefeed.itch.v1.0.tradecondition", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.ise.topcomboquotefeed.itch.v1.0.underlyingsymbol", ftypes.STRING)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.version = ProtoField.new("Version", "nasdaq.ise.topcomboquotefeed.itch.v1.0.version", ftypes.UINT8)
nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.volume = ProtoField.new("Volume", "nasdaq.ise.topcomboquotefeed.itch.v1.0.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Ise TopComboQuoteFeed Itch 1.0 Element Dissection Options
show.complex_strategy_directory_message = true
show.complex_strategy_ticker_message = true
show.leg_information = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.strategy_best_ask_update = true
show.strategy_best_bid_and_ask_update = true
show.strategy_best_bid_update = true
show.strategy_open_closed_message = true
show.strategy_trading_action_message = true
show.system_event_message = true
show.payload = false

-- Register Nasdaq Ise TopComboQuoteFeed Itch 1.0 Show Options
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_directory_message = Pref.bool("Show Complex Strategy Directory Message", show.complex_strategy_directory_message, "Parse and add Complex Strategy Directory Message to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_ticker_message = Pref.bool("Show Complex Strategy Ticker Message", show.complex_strategy_ticker_message, "Parse and add Complex Strategy Ticker Message to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_ask_update = Pref.bool("Show Strategy Best Ask Update", show.strategy_best_ask_update, "Parse and add Strategy Best Ask Update to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_and_ask_update = Pref.bool("Show Strategy Best Bid And Ask Update", show.strategy_best_bid_and_ask_update, "Parse and add Strategy Best Bid And Ask Update to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_update = Pref.bool("Show Strategy Best Bid Update", show.strategy_best_bid_update, "Parse and add Strategy Best Bid Update to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_open_closed_message = Pref.bool("Show Strategy Open Closed Message", show.strategy_open_closed_message, "Parse and add Strategy Open Closed Message to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_trading_action_message = Pref.bool("Show Strategy Trading Action Message", show.strategy_trading_action_message, "Parse and add Strategy Trading Action Message to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.complex_strategy_directory_message ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_directory_message then
    show.complex_strategy_directory_message = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_directory_message
    changed = true
  end
  if show.complex_strategy_ticker_message ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_ticker_message then
    show.complex_strategy_ticker_message = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_ticker_message
    changed = true
  end
  if show.leg_information ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_leg_information then
    show.leg_information = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_leg_information
    changed = true
  end
  if show.message ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_message then
    show.message = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_message_header then
    show.message_header = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_packet then
    show.packet = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_packet_header then
    show.packet_header = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_packet_header
    changed = true
  end
  if show.strategy_best_ask_update ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_ask_update then
    show.strategy_best_ask_update = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_ask_update
    changed = true
  end
  if show.strategy_best_bid_and_ask_update ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_and_ask_update then
    show.strategy_best_bid_and_ask_update = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_and_ask_update
    changed = true
  end
  if show.strategy_best_bid_update ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_update then
    show.strategy_best_bid_update = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_update
    changed = true
  end
  if show.strategy_open_closed_message ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_open_closed_message then
    show.strategy_open_closed_message = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_open_closed_message
    changed = true
  end
  if show.strategy_trading_action_message ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_trading_action_message then
    show.strategy_trading_action_message = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_strategy_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_system_event_message then
    show.system_event_message = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_payload then
    show.payload = nasdaq_ise_topcomboquotefeed_itch_v1_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Ise TopComboQuoteFeed Itch 1.0
-----------------------------------------------------------------------

-- Size: Trade Condition
size_of.trade_condition = 1

-- Display: Trade Condition
display.trade_condition = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_condition)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.trade_condition, range, value, display)

  return offset + size_of.trade_condition
end

-- Size: First
size_of.first = 8

-- Display: First
display.first = function(value)
  return "First: "..value
end

-- Dissect: First
dissect.first = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.first)
  local value = range:uint64()
  local display = display.first(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.first, range, value, display)

  return offset + size_of.first
end

-- Size: Low
size_of.low = 8

-- Display: Low
display.low = function(value)
  return "Low: "..value
end

-- Dissect: Low
dissect.low = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.low)
  local value = range:uint64()
  local display = display.low(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.low, range, value, display)

  return offset + size_of.low
end

-- Size: High
size_of.high = 8

-- Display: High
display.high = function(value)
  return "High: "..value
end

-- Dissect: High
dissect.high = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.high)
  local value = range:uint64()
  local display = display.high(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.high, range, value, display)

  return offset + size_of.high
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volume)
  local value = range:uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.volume, range, value, display)

  return offset + size_of.volume
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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.size, range, value, display)

  return offset + size_of.size
end

-- Size: Last Price
size_of.last_price = 8

-- Display: Last Price
display.last_price = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
dissect.last_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_price)
  local value = range:uint64()
  local display = display.last_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.last_price, range, value, display)

  return offset + size_of.last_price
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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_id, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Display: Complex Strategy Ticker Message
display.complex_strategy_ticker_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Strategy Ticker Message
dissect.complex_strategy_ticker_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- High: 8 Byte Unsigned Fixed Width Integer
  index = dissect.high(buffer, index, packet, parent)

  -- Low: 8 Byte Unsigned Fixed Width Integer
  index = dissect.low(buffer, index, packet, parent)

  -- First: 8 Byte Unsigned Fixed Width Integer
  index = dissect.first(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Ticker Message
dissect.complex_strategy_ticker_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_strategy_ticker_message then
    local range = buffer(offset, 51)
    local display = display.complex_strategy_ticker_message(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.complex_strategy_ticker_message, range, display)
  end

  return dissect.complex_strategy_ticker_message_fields(buffer, offset, packet, parent)
end

-- Size: Ntt Market Size
size_of.ntt_market_size = 4

-- Display: Ntt Market Size
display.ntt_market_size = function(value)
  return "Ntt Market Size: "..value
end

-- Dissect: Ntt Market Size
dissect.ntt_market_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ntt_market_size)
  local value = range:uint()
  local display = display.ntt_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ntt_market_size, range, value, display)

  return offset + size_of.ntt_market_size
end

-- Size: Market Size
size_of.market_size = 4

-- Display: Market Size
display.market_size = function(value)
  return "Market Size: "..value
end

-- Dissect: Market Size
dissect.market_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_size)
  local value = range:uint()
  local display = display.market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.market_size, range, value, display)

  return offset + size_of.market_size
end

-- Size: Ntt Size
size_of.ntt_size = 4

-- Display: Ntt Size
display.ntt_size = function(value)
  return "Ntt Size: "..value
end

-- Dissect: Ntt Size
dissect.ntt_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ntt_size)
  local value = range:uint()
  local display = display.ntt_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ntt_size, range, value, display)

  return offset + size_of.ntt_size
end

-- Size: Pro Cust Size
size_of.pro_cust_size = 4

-- Display: Pro Cust Size
display.pro_cust_size = function(value)
  return "Pro Cust Size: "..value
end

-- Dissect: Pro Cust Size
dissect.pro_cust_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.pro_cust_size)
  local value = range:uint()
  local display = display.pro_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.pro_cust_size, range, value, display)

  return offset + size_of.pro_cust_size
end

-- Size: Cust Size
size_of.cust_size = 4

-- Display: Cust Size
display.cust_size = function(value)
  return "Cust Size: "..value
end

-- Dissect: Cust Size
dissect.cust_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cust_size)
  local value = range:uint()
  local display = display.cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.cust_size, range, value, display)

  return offset + size_of.cust_size
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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Quote Condition
size_of.quote_condition = 1

-- Display: Quote Condition
display.quote_condition = function(value)
  if value == " " then
    return "Quote Condition: Regular Quote (<whitespace>)"
  end
  if value == "X" then
    return "Quote Condition: Halted (X)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
dissect.quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_condition)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.quote_condition, range, value, display)

  return offset + size_of.quote_condition
end

-- Display: Strategy Best Ask Update
display.strategy_best_ask_update = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Best Ask Update
dissect.strategy_best_ask_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  -- Cust Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cust_size(buffer, index, packet, parent)

  -- Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.pro_cust_size(buffer, index, packet, parent)

  -- Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ntt_size(buffer, index, packet, parent)

  -- Market Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.market_size(buffer, index, packet, parent)

  -- Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ntt_market_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Ask Update
dissect.strategy_best_ask_update = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_best_ask_update then
    local range = buffer(offset, 39)
    local display = display.strategy_best_ask_update(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_best_ask_update, range, display)
  end

  return dissect.strategy_best_ask_update_fields(buffer, offset, packet, parent)
end

-- Display: Strategy Best Bid Update
display.strategy_best_bid_update = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Best Bid Update
dissect.strategy_best_bid_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  -- Cust Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cust_size(buffer, index, packet, parent)

  -- Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.pro_cust_size(buffer, index, packet, parent)

  -- Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ntt_size(buffer, index, packet, parent)

  -- Market Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.market_size(buffer, index, packet, parent)

  -- Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ntt_market_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Bid Update
dissect.strategy_best_bid_update = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_best_bid_update then
    local range = buffer(offset, 39)
    local display = display.strategy_best_bid_update(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_update, range, display)
  end

  return dissect.strategy_best_bid_update_fields(buffer, offset, packet, parent)
end

-- Size: Ask Ntt Market Size
size_of.ask_ntt_market_size = 4

-- Display: Ask Ntt Market Size
display.ask_ntt_market_size = function(value)
  return "Ask Ntt Market Size: "..value
end

-- Dissect: Ask Ntt Market Size
dissect.ask_ntt_market_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_ntt_market_size)
  local value = range:uint()
  local display = display.ask_ntt_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_ntt_market_size, range, value, display)

  return offset + size_of.ask_ntt_market_size
end

-- Size: Ask Market Size
size_of.ask_market_size = 4

-- Display: Ask Market Size
display.ask_market_size = function(value)
  return "Ask Market Size: "..value
end

-- Dissect: Ask Market Size
dissect.ask_market_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_market_size)
  local value = range:uint()
  local display = display.ask_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_market_size, range, value, display)

  return offset + size_of.ask_market_size
end

-- Size: Ask Ntt Size
size_of.ask_ntt_size = 4

-- Display: Ask Ntt Size
display.ask_ntt_size = function(value)
  return "Ask Ntt Size: "..value
end

-- Dissect: Ask Ntt Size
dissect.ask_ntt_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_ntt_size)
  local value = range:uint()
  local display = display.ask_ntt_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_ntt_size, range, value, display)

  return offset + size_of.ask_ntt_size
end

-- Size: Ask Pro Cust Size
size_of.ask_pro_cust_size = 4

-- Display: Ask Pro Cust Size
display.ask_pro_cust_size = function(value)
  return "Ask Pro Cust Size: "..value
end

-- Dissect: Ask Pro Cust Size
dissect.ask_pro_cust_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_pro_cust_size)
  local value = range:uint()
  local display = display.ask_pro_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_pro_cust_size, range, value, display)

  return offset + size_of.ask_pro_cust_size
end

-- Size: Ask Cust Size
size_of.ask_cust_size = 4

-- Display: Ask Cust Size
display.ask_cust_size = function(value)
  return "Ask Cust Size: "..value
end

-- Dissect: Ask Cust Size
dissect.ask_cust_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_cust_size)
  local value = range:uint()
  local display = display.ask_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_cust_size, range, value, display)

  return offset + size_of.ask_cust_size
end

-- Size: Ask Size
size_of.ask_size = 4

-- Display: Ask Size
display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
dissect.ask_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_size)
  local value = range:uint()
  local display = display.ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_size, range, value, display)

  return offset + size_of.ask_size
end

-- Size: Ask Price
size_of.ask_price = 4

-- Display: Ask Price
display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
dissect.ask_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_price)
  local value = range:uint()
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.ask_price, range, value, display)

  return offset + size_of.ask_price
end

-- Size: Bid Ntt Market Size
size_of.bid_ntt_market_size = 4

-- Display: Bid Ntt Market Size
display.bid_ntt_market_size = function(value)
  return "Bid Ntt Market Size: "..value
end

-- Dissect: Bid Ntt Market Size
dissect.bid_ntt_market_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_ntt_market_size)
  local value = range:uint()
  local display = display.bid_ntt_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_ntt_market_size, range, value, display)

  return offset + size_of.bid_ntt_market_size
end

-- Size: Bid Market Size
size_of.bid_market_size = 4

-- Display: Bid Market Size
display.bid_market_size = function(value)
  return "Bid Market Size: "..value
end

-- Dissect: Bid Market Size
dissect.bid_market_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_market_size)
  local value = range:uint()
  local display = display.bid_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_market_size, range, value, display)

  return offset + size_of.bid_market_size
end

-- Size: Bid Ntt Size
size_of.bid_ntt_size = 4

-- Display: Bid Ntt Size
display.bid_ntt_size = function(value)
  return "Bid Ntt Size: "..value
end

-- Dissect: Bid Ntt Size
dissect.bid_ntt_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_ntt_size)
  local value = range:uint()
  local display = display.bid_ntt_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_ntt_size, range, value, display)

  return offset + size_of.bid_ntt_size
end

-- Size: Bid Pro Cust Size
size_of.bid_pro_cust_size = 4

-- Display: Bid Pro Cust Size
display.bid_pro_cust_size = function(value)
  return "Bid Pro Cust Size: "..value
end

-- Dissect: Bid Pro Cust Size
dissect.bid_pro_cust_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_pro_cust_size)
  local value = range:uint()
  local display = display.bid_pro_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_pro_cust_size, range, value, display)

  return offset + size_of.bid_pro_cust_size
end

-- Size: Bid Cust Size
size_of.bid_cust_size = 4

-- Display: Bid Cust Size
display.bid_cust_size = function(value)
  return "Bid Cust Size: "..value
end

-- Dissect: Bid Cust Size
dissect.bid_cust_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_cust_size)
  local value = range:uint()
  local display = display.bid_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_cust_size, range, value, display)

  return offset + size_of.bid_cust_size
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_size)
  local value = range:uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_size, range, value, display)

  return offset + size_of.bid_size
end

-- Size: Bid Price
size_of.bid_price = 4

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price)
  local value = range:uint()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.bid_price, range, value, display)

  return offset + size_of.bid_price
end

-- Display: Strategy Best Bid And Ask Update
display.strategy_best_bid_and_ask_update = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Best Bid And Ask Update
dissect.strategy_best_bid_and_ask_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Cust Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_cust_size(buffer, index, packet, parent)

  -- Bid Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_pro_cust_size(buffer, index, packet, parent)

  -- Bid Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_ntt_size(buffer, index, packet, parent)

  -- Bid Market Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_market_size(buffer, index, packet, parent)

  -- Bid Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_ntt_market_size(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_size(buffer, index, packet, parent)

  -- Ask Cust Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_cust_size(buffer, index, packet, parent)

  -- Ask Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_pro_cust_size(buffer, index, packet, parent)

  -- Ask Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_ntt_size(buffer, index, packet, parent)

  -- Ask Market Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_market_size(buffer, index, packet, parent)

  -- Ask Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_ntt_market_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Bid And Ask Update
dissect.strategy_best_bid_and_ask_update = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_best_bid_and_ask_update then
    local range = buffer(offset, 67)
    local display = display.strategy_best_bid_and_ask_update(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_and_ask_update, range, display)
  end

  return dissect.strategy_best_bid_and_ask_update_fields(buffer, offset, packet, parent)
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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.current_trading_state, range, value, display)

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
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_trading_action_message, range, display)
  end

  return dissect.strategy_trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Open State
size_of.open_state = 1

-- Display: Open State
display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
dissect.open_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_state)
  local value = range:string()
  local display = display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.open_state, range, value, display)

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
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_open_closed_message, range, display)
  end

  return dissect.strategy_open_closed_message_fields(buffer, offset, packet, parent)
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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.leg_ratio, range, value, display)

  return offset + size_of.leg_ratio
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "" then
    return "Side: Hidden (<whitespace>)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.side, range, value, display)

  return offset + size_of.side
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
    return "Option Type: Na (<whitespace>)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_type)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.option_type, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.explicit_strike_price, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.expiration_day, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.expiration_month, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.expiration_year, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.leg_id, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.security_symbol, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.option_id, range, value, display)

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
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.leg_information, range, display)
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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.number_of_legs, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.underlying_symbol, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.source, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.strategy_type, range, value, display)

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
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.complex_strategy_directory_message, range, display)
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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.subversion, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.version, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.current_day, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.current_month, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.current_year, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.event_code, range, value, display)

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
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.system_event_message, range, display)
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
  -- Size of Strategy Open Closed Message
  if code == "O" then
    return 11
  end
  -- Size of Strategy Trading Action Message
  if code == "H" then
    return 11
  end
  -- Size of Strategy Best Bid And Ask Update
  if code == "C" then
    return 67
  end
  -- Size of Strategy Best Bid Update
  if code == "D" then
    return 39
  end
  -- Size of Strategy Best Ask Update
  if code == "E" then
    return 39
  end
  -- Size of Complex Strategy Ticker Message
  if code == "t" then
    return 51
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
  -- Dissect Strategy Open Closed Message
  if code == "O" then
    return dissect.strategy_open_closed_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if code == "H" then
    return dissect.strategy_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Bid And Ask Update
  if code == "C" then
    return dissect.strategy_best_bid_and_ask_update(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Bid Update
  if code == "D" then
    return dissect.strategy_best_bid_update(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Ask Update
  if code == "E" then
    return dissect.strategy_best_ask_update(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Ticker Message
  if code == "t" then
    return dissect.complex_strategy_ticker_message(buffer, offset, packet, parent)
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
  local element = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.payload, range, display)

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
  if value == "O" then
    return "Message Type: Strategy Open Closed Message (O)"
  end
  if value == "H" then
    return "Message Type: Strategy Trading Action Message (H)"
  end
  if value == "C" then
    return "Message Type: Strategy Best Bid And Ask Update (C)"
  end
  if value == "D" then
    return "Message Type: Strategy Best Bid Update (D)"
  end
  if value == "E" then
    return "Message Type: Strategy Best Ask Update (E)"
  end
  if value == "t" then
    return "Message Type: Complex Strategy Ticker Message (t)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.message_type, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.length, range, value, display)

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

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 3)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 8 branches
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
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.message, range, display)
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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.count, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.sequence, range, value, display)

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

  parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.session, range, value, display)

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
    parent = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0.fields.packet_header, range, display)
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
function nasdaq_ise_topcomboquotefeed_itch_v1_0.init()
end

-- Dissector for Nasdaq Ise TopComboQuoteFeed Itch 1.0
function nasdaq_ise_topcomboquotefeed_itch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_ise_topcomboquotefeed_itch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_ise_topcomboquotefeed_itch_v1_0, buffer(), nasdaq_ise_topcomboquotefeed_itch_v1_0.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_ise_topcomboquotefeed_itch_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_ise_topcomboquotefeed_itch_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Ise TopComboQuoteFeed Itch 1.0
local function nasdaq_ise_topcomboquotefeed_itch_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_ise_topcomboquotefeed_itch_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_ise_topcomboquotefeed_itch_v1_0
  nasdaq_ise_topcomboquotefeed_itch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Nasdaq Ise TopComboQuoteFeed Itch 1.0 Heuristic
nasdaq_ise_topcomboquotefeed_itch_v1_0:register_heuristic("udp", nasdaq_ise_topcomboquotefeed_itch_v1_0_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 1.0
-- Date: Wednesday, August 23, 2017
-- Script:
-- Source Version: 1.5.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
