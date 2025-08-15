-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq IseOptions TopComboQuoteFeed Itch 1.0 Protocol
local nasdaq_iseoptions_topcomboquotefeed_itch_v1_0 = Proto("Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.Lua", "Nasdaq IseOptions TopComboQuoteFeed Itch 1.0")

-- Component Tables
local show = {}
local format = {}
local nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display = {}
local nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect = {}
local nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq IseOptions TopComboQuoteFeed Itch 1.0 Fields
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_cust_size = ProtoField.new("Ask Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askcustsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_market_size = ProtoField.new("Ask Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askmarketsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_ntt_market_size = ProtoField.new("Ask Ntt Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asknttmarketsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_ntt_size = ProtoField.new("Ask Ntt Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asknttsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askprice", ftypes.DOUBLE)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_pro_cust_size = ProtoField.new("Ask Pro Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askprocustsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asksize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_cust_size = ProtoField.new("Bid Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidcustsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_market_size = ProtoField.new("Bid Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidmarketsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_ntt_market_size = ProtoField.new("Bid Ntt Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidnttmarketsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_ntt_size = ProtoField.new("Bid Ntt Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidnttsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidprice", ftypes.DOUBLE)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_pro_cust_size = ProtoField.new("Bid Pro Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidprocustsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.count = ProtoField.new("Count", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.count", ftypes.UINT16)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_day = ProtoField.new("Current Day", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currentday", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_month = ProtoField.new("Current Month", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currentmonth", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currenttradingstate", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_year = ProtoField.new("Current Year", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currentyear", ftypes.UINT16)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.cust_size = ProtoField.new("Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.custsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.eventcode", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.expirationday", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.expirationmonth", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.expirationyear", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.explicitstrikeprice", ftypes.DOUBLE)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.first = ProtoField.new("First", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.first", ftypes.UINT64)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.high = ProtoField.new("High", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.high", ftypes.UINT64)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.last_price = ProtoField.new("Last Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lastprice", ftypes.DOUBLE)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_id = ProtoField.new("Leg Id", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.legid", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.leginformation", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.legratio", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.length = ProtoField.new("Length", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.length", ftypes.UINT16)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.low = ProtoField.new("Low", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.low", ftypes.UINT64)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.market_size = ProtoField.new("Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.marketsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message = ProtoField.new("Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.message", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.messageheader", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.messagetype", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ntt_market_size = ProtoField.new("Ntt Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttmarketsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ntt_size = ProtoField.new("Ntt Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.numberoflegs", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.open_state = ProtoField.new("Open State", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.openstate", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.option_id = ProtoField.new("Option Id", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.optionid", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.option_type = ProtoField.new("Option Type", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.optiontype", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.packet = ProtoField.new("Packet", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.packet", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.packetheader", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.payload = ProtoField.new("Payload", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.payload", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.price = ProtoField.new("Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.price", ftypes.DOUBLE)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.pro_cust_size = ProtoField.new("Pro Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.procustsize", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.quotecondition", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.securitysymbol", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.sequence = ProtoField.new("Sequence", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.sequence", ftypes.UINT64)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.session = ProtoField.new("Session", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.session", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.side = ProtoField.new("Side", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.side", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.size = ProtoField.new("Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.source = ProtoField.new("Source", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.source", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid", ftypes.UINT32)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategytype", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.subversion = ProtoField.new("Subversion", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.subversion", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp", ftypes.UINT64)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.tradecondition", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.underlyingsymbol", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.version = ProtoField.new("Version", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.version", ftypes.UINT8)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.volume = ProtoField.new("Volume", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.volume", ftypes.UINT32)

-- Nasdaq IseOptions TopComboQuoteFeed Itch 1.0 messages
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.complexstrategydirectorymessage", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.complex_strategy_ticker_message = ProtoField.new("Complex Strategy Ticker Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.complexstrategytickermessage", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_ask_update = ProtoField.new("Strategy Best Ask Update", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategybestaskupdate", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_and_ask_update = ProtoField.new("Strategy Best Bid And Ask Update", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategybestbidandaskupdate", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_update = ProtoField.new("Strategy Best Bid Update", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategybestbidupdate", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyopenclosedmessage", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategytradingactionmessage", ftypes.STRING)
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.systemeventmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq IseOptions TopComboQuoteFeed Itch 1.0 Element Dissection Options
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

-- Register Nasdaq IseOptions TopComboQuoteFeed Itch 1.0 Show Options
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_directory_message = Pref.bool("Show Complex Strategy Directory Message", show.complex_strategy_directory_message, "Parse and add Complex Strategy Directory Message to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_ticker_message = Pref.bool("Show Complex Strategy Ticker Message", show.complex_strategy_ticker_message, "Parse and add Complex Strategy Ticker Message to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_ask_update = Pref.bool("Show Strategy Best Ask Update", show.strategy_best_ask_update, "Parse and add Strategy Best Ask Update to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_and_ask_update = Pref.bool("Show Strategy Best Bid And Ask Update", show.strategy_best_bid_and_ask_update, "Parse and add Strategy Best Bid And Ask Update to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_update = Pref.bool("Show Strategy Best Bid Update", show.strategy_best_bid_update, "Parse and add Strategy Best Bid Update to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_open_closed_message = Pref.bool("Show Strategy Open Closed Message", show.strategy_open_closed_message, "Parse and add Strategy Open Closed Message to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_trading_action_message = Pref.bool("Show Strategy Trading Action Message", show.strategy_trading_action_message, "Parse and add Strategy Trading Action Message to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.complex_strategy_directory_message ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_directory_message then
    show.complex_strategy_directory_message = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_directory_message
    changed = true
  end
  if show.complex_strategy_ticker_message ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_ticker_message then
    show.complex_strategy_ticker_message = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_ticker_message
    changed = true
  end
  if show.leg_information ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_leg_information then
    show.leg_information = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_leg_information
    changed = true
  end
  if show.message ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message then
    show.message = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message_header then
    show.message_header = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet then
    show.packet = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet_header then
    show.packet_header = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet_header
    changed = true
  end
  if show.strategy_best_ask_update ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_ask_update then
    show.strategy_best_ask_update = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_ask_update
    changed = true
  end
  if show.strategy_best_bid_and_ask_update ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_and_ask_update then
    show.strategy_best_bid_and_ask_update = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_and_ask_update
    changed = true
  end
  if show.strategy_best_bid_update ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_update then
    show.strategy_best_bid_update = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_update
    changed = true
  end
  if show.strategy_open_closed_message ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_open_closed_message then
    show.strategy_open_closed_message = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_open_closed_message
    changed = true
  end
  if show.strategy_trading_action_message ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_trading_action_message then
    show.strategy_trading_action_message = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_system_event_message then
    show.system_event_message = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_payload then
    show.payload = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_payload
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
-- Dissect Nasdaq IseOptions TopComboQuoteFeed Itch 1.0
-----------------------------------------------------------------------

-- Size: Trade Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.trade_condition = 1

-- Display: Trade Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.trade_condition = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: First
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.first = 8

-- Display: First
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.first = function(value)
  return "First: "..value
end

-- Dissect: First
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.first = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.first
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.first(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.first, range, value, display)

  return offset + length, value
end

-- Size: Low
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.low = 8

-- Display: Low
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.low = function(value)
  return "Low: "..value
end

-- Dissect: Low
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.low = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.low
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.low(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.low, range, value, display)

  return offset + length, value
end

-- Size: High
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.high = 8

-- Display: High
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.high = function(value)
  return "High: "..value
end

-- Dissect: High
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.high = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.high
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.high(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.high, range, value, display)

  return offset + length, value
end

-- Size: Volume
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.volume = 4

-- Display: Volume
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.volume = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.size = 4

-- Display: Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Last Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.last_price = 8

-- Display: Last Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.last_price = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
translate.last_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.last_price = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.last_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.last_price(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.last_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Strategy Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_id = 4

-- Display: Strategy Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_id = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_id = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp = 6

-- Display: Timestamp
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Strategy Ticker Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.complex_strategy_ticker_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_id

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.last_price

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.volume

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.high

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.low

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.first

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.trade_condition

  return index
end

-- Display: Complex Strategy Ticker Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.complex_strategy_ticker_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Ticker Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.complex_strategy_ticker_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_id(buffer, index, packet, parent)

  -- Last Price: 8 Byte Signed Fixed Width Integer
  index, last_price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.last_price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.size(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.volume(buffer, index, packet, parent)

  -- High: 8 Byte Unsigned Fixed Width Integer
  index, high = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.high(buffer, index, packet, parent)

  -- Low: 8 Byte Unsigned Fixed Width Integer
  index, low = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.low(buffer, index, packet, parent)

  -- First: 8 Byte Unsigned Fixed Width Integer
  index, first = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.first(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index, trade_condition = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Ticker Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.complex_strategy_ticker_message = function(buffer, offset, packet, parent)
  if show.complex_strategy_ticker_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.complex_strategy_ticker_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.complex_strategy_ticker_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.complex_strategy_ticker_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.complex_strategy_ticker_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ntt_market_size = 4

-- Display: Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ntt_market_size = function(value)
  return "Ntt Market Size: "..value
end

-- Dissect: Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ntt_market_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ntt_market_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ntt_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ntt_market_size, range, value, display)

  return offset + length, value
end

-- Size: Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.market_size = 4

-- Display: Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.market_size = function(value)
  return "Market Size: "..value
end

-- Dissect: Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.market_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.market_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.market_size, range, value, display)

  return offset + length, value
end

-- Size: Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ntt_size = 4

-- Display: Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ntt_size = function(value)
  return "Ntt Size: "..value
end

-- Dissect: Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ntt_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ntt_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ntt_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ntt_size, range, value, display)

  return offset + length, value
end

-- Size: Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.pro_cust_size = 4

-- Display: Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.pro_cust_size = function(value)
  return "Pro Cust Size: "..value
end

-- Dissect: Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.pro_cust_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.pro_cust_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.pro_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.pro_cust_size, range, value, display)

  return offset + length, value
end

-- Size: Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.cust_size = 4

-- Display: Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.cust_size = function(value)
  return "Cust Size: "..value
end

-- Dissect: Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.cust_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.cust_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.cust_size, range, value, display)

  return offset + length, value
end

-- Size: Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.price = 4

-- Display: Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.price(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.quote_condition = 1

-- Display: Quote Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.quote_condition = function(value)
  if value == " " then
    return "Quote Condition: Regular Quote (<whitespace>)"
  end
  if value == "X" then
    return "Quote Condition: Halted (X)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Best Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_best_ask_update = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_id

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.quote_condition

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.price

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.cust_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.pro_cust_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ntt_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.market_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ntt_market_size

  return index
end

-- Display: Strategy Best Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_best_ask_update = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Best Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_ask_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.quote_condition(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.size(buffer, index, packet, parent)

  -- Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.cust_size(buffer, index, packet, parent)

  -- Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, pro_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.pro_cust_size(buffer, index, packet, parent)

  -- Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index, ntt_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ntt_size(buffer, index, packet, parent)

  -- Market Size: 4 Byte Unsigned Fixed Width Integer
  index, market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.market_size(buffer, index, packet, parent)

  -- Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index, ntt_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ntt_market_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_ask_update = function(buffer, offset, packet, parent)
  if show.strategy_best_ask_update then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_ask_update, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_ask_update_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_best_ask_update(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_ask_update_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Strategy Best Bid Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_best_bid_update = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_id

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.quote_condition

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.price

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.cust_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.pro_cust_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ntt_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.market_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ntt_market_size

  return index
end

-- Display: Strategy Best Bid Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_best_bid_update = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Best Bid Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.quote_condition(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.size(buffer, index, packet, parent)

  -- Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.cust_size(buffer, index, packet, parent)

  -- Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, pro_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.pro_cust_size(buffer, index, packet, parent)

  -- Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index, ntt_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ntt_size(buffer, index, packet, parent)

  -- Market Size: 4 Byte Unsigned Fixed Width Integer
  index, market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.market_size(buffer, index, packet, parent)

  -- Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index, ntt_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ntt_market_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Bid Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_update = function(buffer, offset, packet, parent)
  if show.strategy_best_bid_update then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_update, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_update_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_best_bid_update(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_update_fields(buffer, offset, packet, parent)
  end
end

-- Size: Ask Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_ntt_market_size = 4

-- Display: Ask Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_ntt_market_size = function(value)
  return "Ask Ntt Market Size: "..value
end

-- Dissect: Ask Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_ntt_market_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_ntt_market_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_ntt_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_ntt_market_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_market_size = 4

-- Display: Ask Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_market_size = function(value)
  return "Ask Market Size: "..value
end

-- Dissect: Ask Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_market_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_market_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_market_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_ntt_size = 4

-- Display: Ask Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_ntt_size = function(value)
  return "Ask Ntt Size: "..value
end

-- Dissect: Ask Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_ntt_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_ntt_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_ntt_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_ntt_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_pro_cust_size = 4

-- Display: Ask Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_pro_cust_size = function(value)
  return "Ask Pro Cust Size: "..value
end

-- Dissect: Ask Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_pro_cust_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_pro_cust_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_pro_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_pro_cust_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_cust_size = 4

-- Display: Ask Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_cust_size = function(value)
  return "Ask Cust Size: "..value
end

-- Dissect: Ask Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_cust_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_cust_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_cust_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_size = 4

-- Display: Ask Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_price = 4

-- Display: Ask Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
translate.ask_price = function(raw)
  return raw/10000
end

-- Dissect: Ask Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.ask_price(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_ntt_market_size = 4

-- Display: Bid Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_ntt_market_size = function(value)
  return "Bid Ntt Market Size: "..value
end

-- Dissect: Bid Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_ntt_market_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_ntt_market_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_ntt_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_ntt_market_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_market_size = 4

-- Display: Bid Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_market_size = function(value)
  return "Bid Market Size: "..value
end

-- Dissect: Bid Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_market_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_market_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_market_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_market_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_ntt_size = 4

-- Display: Bid Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_ntt_size = function(value)
  return "Bid Ntt Size: "..value
end

-- Dissect: Bid Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_ntt_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_ntt_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_ntt_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_ntt_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_pro_cust_size = 4

-- Display: Bid Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_pro_cust_size = function(value)
  return "Bid Pro Cust Size: "..value
end

-- Dissect: Bid Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_pro_cust_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_pro_cust_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_pro_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_pro_cust_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_cust_size = 4

-- Display: Bid Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_cust_size = function(value)
  return "Bid Cust Size: "..value
end

-- Dissect: Bid Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_cust_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_cust_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_cust_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_cust_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_size = 4

-- Display: Bid Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_price = 4

-- Display: Bid Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw/10000
end

-- Dissect: Bid Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.bid_price(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Best Bid And Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_best_bid_and_ask_update = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_id

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.quote_condition

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_price

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_cust_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_pro_cust_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_ntt_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_market_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.bid_ntt_market_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_price

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_cust_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_pro_cust_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_ntt_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_market_size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.ask_ntt_market_size

  return index
end

-- Display: Strategy Best Bid And Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_best_bid_and_ask_update = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Best Bid And Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_and_ask_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.quote_condition(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_size(buffer, index, packet, parent)

  -- Bid Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_cust_size(buffer, index, packet, parent)

  -- Bid Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_pro_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_pro_cust_size(buffer, index, packet, parent)

  -- Bid Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_ntt_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_ntt_size(buffer, index, packet, parent)

  -- Bid Market Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_market_size(buffer, index, packet, parent)

  -- Bid Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_ntt_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.bid_ntt_market_size(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_size(buffer, index, packet, parent)

  -- Ask Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_cust_size(buffer, index, packet, parent)

  -- Ask Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_pro_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_pro_cust_size(buffer, index, packet, parent)

  -- Ask Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_ntt_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_ntt_size(buffer, index, packet, parent)

  -- Ask Market Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_market_size(buffer, index, packet, parent)

  -- Ask Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_ntt_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.ask_ntt_market_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Bid And Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_and_ask_update = function(buffer, offset, packet, parent)
  if show.strategy_best_bid_and_ask_update then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_and_ask_update, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_and_ask_update_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_best_bid_and_ask_update(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_and_ask_update_fields(buffer, offset, packet, parent)
  end
end

-- Size: Current Trading State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Trading Action Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_id

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_trading_state

  return index
end

-- Display: Strategy Trading Action Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_trading_action_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_trading_action_message = function(buffer, offset, packet, parent)
  if show.strategy_trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_trading_action_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_trading_action_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_trading_action_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_trading_action_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Open State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.open_state = 1

-- Display: Open State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.open_state = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.open_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.open_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Open Closed Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_open_closed_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_id

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.open_state

  return index
end

-- Display: Strategy Open Closed Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_open_closed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Open Closed Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_open_closed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Open Closed Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_open_closed_message = function(buffer, offset, packet, parent)
  if show.strategy_open_closed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_open_closed_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_open_closed_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_open_closed_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_open_closed_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Leg Ratio
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.leg_ratio = 4

-- Display: Leg Ratio
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Side
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.side = 1

-- Display: Side
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == " " then
    return "Side: Hidden (<whitespace>)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.side = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Option Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.option_type = 1

-- Display: Option Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.option_type = function(value)
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
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.option_type = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Explicit Strike Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.explicit_strike_price = 8

-- Display: Explicit Strike Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.explicit_strike_price = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
translate.explicit_strike_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Explicit Strike Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.explicit_strike_price = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.explicit_strike_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.explicit_strike_price(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.explicit_strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.expiration_day = 1

-- Display: Expiration Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.expiration_day = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.expiration_day = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.expiration_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.expiration_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.expiration_month = 1

-- Display: Expiration Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.expiration_year = 1

-- Display: Expiration Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Leg Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.leg_id = 1

-- Display: Leg Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.leg_id = function(value)
  return "Leg Id: "..value
end

-- Dissect: Leg Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.leg_id = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.leg_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.leg_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_id, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.security_symbol = 6

-- Display: Security Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.security_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Option Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.option_id = 4

-- Display: Option Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.option_id = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.option_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.option_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Leg Information
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.leg_information = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.option_id

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.security_symbol

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.leg_id

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.expiration_year

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.expiration_month

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.expiration_day

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.explicit_strike_price

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.option_type

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.side

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.leg_ratio

  return index
end

-- Display: Leg Information
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.leg_information = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Information
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.leg_information_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.security_symbol(buffer, index, packet, parent)

  -- Leg Id: 1 Byte Unsigned Fixed Width Integer
  index, leg_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.leg_id(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.expiration_day(buffer, index, packet, parent)

  -- Explicit Strike Price: 8 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.explicit_strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.option_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.side(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.leg_ratio(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.leg_information = function(buffer, offset, packet, parent)
  if show.leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_information, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.leg_information_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.leg_information(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.leg_information_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Legs
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.number_of_legs = 1

-- Display: Number Of Legs
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.number_of_legs
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.underlying_symbol = 13

-- Display: Underlying Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Source
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.source = 1

-- Display: Source
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.source = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.source, range, value, display)

  return offset + length, value
end

-- Size: Strategy Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_type = 1

-- Display: Strategy Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_type = function(value)
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
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_type = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.strategy_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Strategy Directory Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.complex_strategy_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_id

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_type

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.source

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.underlying_symbol

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.number_of_legs

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 28

  return index
end

-- Display: Complex Strategy Directory Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.complex_strategy_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.complex_strategy_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_id(buffer, index, packet, parent)

  -- Strategy Type: 1 Byte Ascii String Enum with 9 values
  index, strategy_type = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Number Of Legs: 1 Byte Unsigned Fixed Width Integer
  index, number_of_legs = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.number_of_legs(buffer, index, packet, parent)

  -- Leg Information: Struct of 10 fields
  for i = 1, number_of_legs do
    index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.leg_information(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.complex_strategy_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_strategy_directory_message then
    local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.complex_strategy_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.complex_strategy_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.complex_strategy_directory_message, range, display)
  end

  return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.complex_strategy_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Subversion
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.subversion = 1

-- Display: Subversion
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.subversion = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.subversion = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.subversion
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.subversion(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.subversion, range, value, display)

  return offset + length, value
end

-- Size: Version
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.version = 1

-- Display: Version
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.version = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.version(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Current Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_day = 1

-- Display: Current Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.current_day = function(value)
  return "Current Day: "..value
end

-- Dissect: Current Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.current_day = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.current_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_day, range, value, display)

  return offset + length, value
end

-- Size: Current Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_month = 1

-- Display: Current Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.current_month = function(value)
  return "Current Month: "..value
end

-- Dissect: Current Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.current_month = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.current_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_month, range, value, display)

  return offset + length, value
end

-- Size: Current Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_year = 2

-- Display: Current Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.current_year = function(value)
  return "Current Year: "..value
end

-- Dissect: Current Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.current_year = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.current_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_year, range, value, display)

  return offset + length, value
end

-- Size: Event Code
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.event_code = 1

-- Display: Event Code
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.event_code = function(value)
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
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.timestamp

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.event_code

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_year

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_month

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.current_day

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.version

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.subversion

  return index
end

-- Display: System Event Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 8 values
  index, event_code = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.event_code(buffer, index, packet, parent)

  -- Current Year: 2 Byte Unsigned Fixed Width Integer
  index, current_year = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.current_year(buffer, index, packet, parent)

  -- Current Month: 1 Byte Unsigned Fixed Width Integer
  index, current_month = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.current_month(buffer, index, packet, parent)

  -- Current Day: 1 Byte Unsigned Fixed Width Integer
  index, current_day = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.current_day(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.version(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index, subversion = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.subversion(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.system_event_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.system_event_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.system_event_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.system_event_message(buffer, offset)
  end
  -- Size of Complex Strategy Directory Message
  if message_type == "R" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.complex_strategy_directory_message(buffer, offset)
  end
  -- Size of Strategy Open Closed Message
  if message_type == "O" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_open_closed_message(buffer, offset)
  end
  -- Size of Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_trading_action_message(buffer, offset)
  end
  -- Size of Strategy Best Bid And Ask Update
  if message_type == "C" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_best_bid_and_ask_update(buffer, offset)
  end
  -- Size of Strategy Best Bid Update
  if message_type == "D" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_best_bid_update(buffer, offset)
  end
  -- Size of Strategy Best Ask Update
  if message_type == "E" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.strategy_best_ask_update(buffer, offset)
  end
  -- Size of Complex Strategy Ticker Message
  if message_type == "t" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.complex_strategy_ticker_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if message_type == "R" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.complex_strategy_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Open Closed Message
  if message_type == "O" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_open_closed_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Bid And Ask Update
  if message_type == "C" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_and_ask_update(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Bid Update
  if message_type == "D" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_bid_update(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Ask Update
  if message_type == "E" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.strategy_best_ask_update(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Ticker Message
  if message_type == "t" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.complex_strategy_ticker_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.payload, range, display)

  return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.message_type = 1

-- Display: Message Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.message_type = function(value)
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
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.length = 2

-- Display: Length
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.length

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 8 branches
  index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message, range, display)
  end

  nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Count
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.count = 2

-- Display: Count
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.sequence = 8

-- Display: Sequence
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.session = 10

-- Display: Session
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.session
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

  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.session

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.sequence

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Length
    local length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.message(buffer, index, packet, parent, size_of_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.init()
end

-- Dissector for Nasdaq IseOptions TopComboQuoteFeed Itch 1.0
function nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_iseoptions_topcomboquotefeed_itch_v1_0, buffer(), nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_iseoptions_topcomboquotefeed_itch_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq IseOptions TopComboQuoteFeed Itch 1.0
local function nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0
  nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq IseOptions TopComboQuoteFeed Itch 1.0
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0:register_heuristic("udp", nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 1.0
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
