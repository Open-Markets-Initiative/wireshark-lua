-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq IseOptions TopComboQuoteFeed Itch 1.0 Protocol
local omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0 = Proto("Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.Lua", "Nasdaq IseOptions TopComboQuoteFeed Itch 1.0")

-- Protocol table
local nasdaq_iseoptions_topcomboquotefeed_itch_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq IseOptions TopComboQuoteFeed Itch 1.0 Fields
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_cust_size = ProtoField.new("Ask Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askcustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_market_size = ProtoField.new("Ask Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_ntt_market_size = ProtoField.new("Ask Ntt Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asknttmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_ntt_size = ProtoField.new("Ask Ntt Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asknttsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_pro_cust_size = ProtoField.new("Ask Pro Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askprocustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asksize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_cust_size = ProtoField.new("Bid Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidcustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_market_size = ProtoField.new("Bid Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_ntt_market_size = ProtoField.new("Bid Ntt Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidnttmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_ntt_size = ProtoField.new("Bid Ntt Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidnttsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_pro_cust_size = ProtoField.new("Bid Pro Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidprocustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_day = ProtoField.new("Current Day", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currentday", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_month = ProtoField.new("Current Month", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currentmonth", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currenttradingstate", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_year = ProtoField.new("Current Year", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currentyear", ftypes.UINT16)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.cust_size = ProtoField.new("Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.custsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.eventcode", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.expirationday", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.expirationmonth", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.expirationyear", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.explicitstrikeprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.first = ProtoField.new("First", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.first", ftypes.UINT64)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.high = ProtoField.new("High", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.high", ftypes.UINT64)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.last_price = ProtoField.new("Last Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lastprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_id = ProtoField.new("Leg Id", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.legid", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.leginformation", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.legratio", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.low = ProtoField.new("Low", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.low", ftypes.UINT64)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.market_size = ProtoField.new("Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.marketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message = ProtoField.new("Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.message", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.messagecount", ftypes.UINT16)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.messageheader", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.messagelength", ftypes.UINT16)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.messagetype", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ntt_market_size = ProtoField.new("Ntt Market Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ntt_size = ProtoField.new("Ntt Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.numberoflegs", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.open_state = ProtoField.new("Open State", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.openstate", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.option_id = ProtoField.new("Option Id", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.optionid", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.option_type = ProtoField.new("Option Type", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.optiontype", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.packet = ProtoField.new("Packet", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.packet", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.packetheader", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.payload = ProtoField.new("Payload", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.payload", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.price = ProtoField.new("Price", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.price", ftypes.DOUBLE)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.pro_cust_size = ProtoField.new("Pro Cust Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.procustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.quotecondition", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.securitysymbol", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.sequencenumber", ftypes.UINT64)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.session = ProtoField.new("Session", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.session", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.side = ProtoField.new("Side", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.side", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.size = ProtoField.new("Size", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.source = ProtoField.new("Source", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.source", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid", ftypes.UINT32)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategytype", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.subversion = ProtoField.new("Subversion", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.subversion", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp", ftypes.UINT64)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.tradecondition", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.underlyingsymbol", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.version = ProtoField.new("Version", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.version", ftypes.UINT8)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.volume = ProtoField.new("Volume", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.volume", ftypes.UINT32)

-- Nasdaq IseOptions TopComboQuoteFeed Itch 1.0 messages
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.complexstrategydirectorymessage", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.complex_strategy_ticker_message = ProtoField.new("Complex Strategy Ticker Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.complexstrategytickermessage", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_ask_update = ProtoField.new("Strategy Best Ask Update", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategybestaskupdate", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_and_ask_update = ProtoField.new("Strategy Best Bid And Ask Update", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategybestbidandaskupdate", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_update = ProtoField.new("Strategy Best Bid Update", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategybestbidupdate", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyopenclosedmessage", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategytradingactionmessage", ftypes.STRING)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.systemeventmessage", ftypes.STRING)

-- Nasdaq IseOptions TopComboQuoteFeed Itch 1.0 generated fields
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_information_index = ProtoField.new("Leg Information Index", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.leginformationindex", ftypes.UINT16)
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_directory_message = Pref.bool("Show Complex Strategy Directory Message", show.complex_strategy_directory_message, "Parse and add Complex Strategy Directory Message to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_ticker_message = Pref.bool("Show Complex Strategy Ticker Message", show.complex_strategy_ticker_message, "Parse and add Complex Strategy Ticker Message to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_ask_update = Pref.bool("Show Strategy Best Ask Update", show.strategy_best_ask_update, "Parse and add Strategy Best Ask Update to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_and_ask_update = Pref.bool("Show Strategy Best Bid And Ask Update", show.strategy_best_bid_and_ask_update, "Parse and add Strategy Best Bid And Ask Update to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_update = Pref.bool("Show Strategy Best Bid Update", show.strategy_best_bid_update, "Parse and add Strategy Best Bid Update to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_open_closed_message = Pref.bool("Show Strategy Open Closed Message", show.strategy_open_closed_message, "Parse and add Strategy Open Closed Message to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_trading_action_message = Pref.bool("Show Strategy Trading Action Message", show.strategy_trading_action_message, "Parse and add Strategy Trading Action Message to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.complex_strategy_directory_message ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_directory_message then
    show.complex_strategy_directory_message = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_directory_message
    changed = true
  end
  if show.complex_strategy_ticker_message ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_ticker_message then
    show.complex_strategy_ticker_message = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_complex_strategy_ticker_message
    changed = true
  end
  if show.leg_information ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_leg_information then
    show.leg_information = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_leg_information
    changed = true
  end
  if show.message ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message then
    show.message = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message_header then
    show.message_header = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet then
    show.packet = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_packet_header
    changed = true
  end
  if show.strategy_best_ask_update ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_ask_update then
    show.strategy_best_ask_update = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_ask_update
    changed = true
  end
  if show.strategy_best_bid_and_ask_update ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_and_ask_update then
    show.strategy_best_bid_and_ask_update = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_and_ask_update
    changed = true
  end
  if show.strategy_best_bid_update ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_update then
    show.strategy_best_bid_update = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_best_bid_update
    changed = true
  end
  if show.strategy_open_closed_message ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_open_closed_message then
    show.strategy_open_closed_message = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_open_closed_message
    changed = true
  end
  if show.strategy_trading_action_message ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_trading_action_message then
    show.strategy_trading_action_message = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_strategy_trading_action_message
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_payload then
    show.payload = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.prefs.show_payload
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

-- Trade Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.trade_condition = {}

-- Size: Trade Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.trade_condition.size = 1

-- Display: Trade Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- First
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.first = {}

-- Size: First
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.first.size = 8

-- Display: First
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.first.display = function(value)
  return "First: "..value
end

-- Dissect: First
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.first.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.first.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.first.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.first, range, value, display)

  return offset + length, value
end

-- Low
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.low = {}

-- Size: Low
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.low.size = 8

-- Display: Low
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.low.display = function(value)
  return "Low: "..value
end

-- Dissect: Low
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.low.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.low.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.low, range, value, display)

  return offset + length, value
end

-- High
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.high = {}

-- Size: High
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.high.size = 8

-- Display: High
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.high.display = function(value)
  return "High: "..value
end

-- Dissect: High
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.high.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.high.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.high, range, value, display)

  return offset + length, value
end

-- Volume
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.volume = {}

-- Size: Volume
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.volume.size = 4

-- Display: Volume
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.volume, range, value, display)

  return offset + length, value
end

-- Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size = {}

-- Size: Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.size = 4

-- Display: Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.size, range, value, display)

  return offset + length, value
end

-- Last Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price = {}

-- Size: Last Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price.size = 8

-- Display: Last Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price.translate(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.last_price, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id = {}

-- Size: Strategy Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp = {}

-- Size: Timestamp
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size = 6

-- Display: Timestamp
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Complex Strategy Ticker Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message = {}

-- Calculate size of: Complex Strategy Ticker Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.volume.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.high.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.low.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.first.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.trade_condition.size

  return index
end

-- Display: Complex Strategy Ticker Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Ticker Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Last Price: 8 Byte Signed Fixed Width Integer
  index, last_price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.last_price.dissect(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.volume.dissect(buffer, index, packet, parent)

  -- High: 8 Byte Unsigned Fixed Width Integer
  index, high = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.high.dissect(buffer, index, packet, parent)

  -- Low: 8 Byte Unsigned Fixed Width Integer
  index, low = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.low.dissect(buffer, index, packet, parent)

  -- First: 8 Byte Unsigned Fixed Width Integer
  index, first = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.first.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index, trade_condition = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Ticker Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_strategy_ticker_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.complex_strategy_ticker_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message.fields(buffer, offset, packet, parent)
  end
end

-- Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size = {}

-- Size: Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size.size = 4

-- Display: Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size.display = function(value)
  return "Ntt Market Size: "..value
end

-- Dissect: Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ntt_market_size, range, value, display)

  return offset + length, value
end

-- Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size = {}

-- Size: Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size.size = 4

-- Display: Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size.display = function(value)
  return "Market Size: "..value
end

-- Dissect: Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.market_size, range, value, display)

  return offset + length, value
end

-- Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size = {}

-- Size: Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size.size = 4

-- Display: Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size.display = function(value)
  return "Ntt Size: "..value
end

-- Dissect: Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ntt_size, range, value, display)

  return offset + length, value
end

-- Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size = {}

-- Size: Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size.size = 4

-- Display: Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size.display = function(value)
  return "Pro Cust Size: "..value
end

-- Dissect: Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.pro_cust_size, range, value, display)

  return offset + length, value
end

-- Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size = {}

-- Size: Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size.size = 4

-- Display: Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size.display = function(value)
  return "Cust Size: "..value
end

-- Dissect: Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.cust_size, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price = {}

-- Size: Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.size = 4

-- Display: Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.translate(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition = {}

-- Size: Quote Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.display = function(value)
  if value == " " then
    return "Quote Condition: Regular Quote (<whitespace>)"
  end
  if value == "X" then
    return "Quote Condition: Halted (X)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Strategy Best Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update = {}

-- Calculate size of: Strategy Best Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size.size

  return index
end

-- Display: Strategy Best Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Best Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.dissect(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.dissect(buffer, index, packet, parent)

  -- Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size.dissect(buffer, index, packet, parent)

  -- Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, pro_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size.dissect(buffer, index, packet, parent)

  -- Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index, ntt_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size.dissect(buffer, index, packet, parent)

  -- Market Size: 4 Byte Unsigned Fixed Width Integer
  index, market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size.dissect(buffer, index, packet, parent)

  -- Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index, ntt_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update.dissect = function(buffer, offset, packet, parent)
  if show.strategy_best_ask_update then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_ask_update, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Best Bid Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update = {}

-- Calculate size of: Strategy Best Bid Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size.size

  return index
end

-- Display: Strategy Best Bid Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Best Bid Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.price.dissect(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.size.dissect(buffer, index, packet, parent)

  -- Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.cust_size.dissect(buffer, index, packet, parent)

  -- Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, pro_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.pro_cust_size.dissect(buffer, index, packet, parent)

  -- Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index, ntt_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_size.dissect(buffer, index, packet, parent)

  -- Market Size: 4 Byte Unsigned Fixed Width Integer
  index, market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.market_size.dissect(buffer, index, packet, parent)

  -- Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index, ntt_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ntt_market_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Bid Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update.dissect = function(buffer, offset, packet, parent)
  if show.strategy_best_bid_update then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_update, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update.fields(buffer, offset, packet, parent)
  end
end

-- Ask Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_market_size = {}

-- Size: Ask Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_market_size.size = 4

-- Display: Ask Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_market_size.display = function(value)
  return "Ask Ntt Market Size: "..value
end

-- Dissect: Ask Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_ntt_market_size, range, value, display)

  return offset + length, value
end

-- Ask Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_market_size = {}

-- Size: Ask Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_market_size.size = 4

-- Display: Ask Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_market_size.display = function(value)
  return "Ask Market Size: "..value
end

-- Dissect: Ask Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_market_size, range, value, display)

  return offset + length, value
end

-- Ask Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_size = {}

-- Size: Ask Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_size.size = 4

-- Display: Ask Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_size.display = function(value)
  return "Ask Ntt Size: "..value
end

-- Dissect: Ask Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_ntt_size, range, value, display)

  return offset + length, value
end

-- Ask Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_pro_cust_size = {}

-- Size: Ask Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_pro_cust_size.size = 4

-- Display: Ask Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_pro_cust_size.display = function(value)
  return "Ask Pro Cust Size: "..value
end

-- Dissect: Ask Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_pro_cust_size, range, value, display)

  return offset + length, value
end

-- Ask Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_cust_size = {}

-- Size: Ask Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_cust_size.size = 4

-- Display: Ask Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_cust_size.display = function(value)
  return "Ask Cust Size: "..value
end

-- Dissect: Ask Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_cust_size, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_size = {}

-- Size: Ask Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_size.size = 4

-- Display: Ask Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price = {}

-- Size: Ask Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price.size = 4

-- Display: Ask Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price.translate(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Bid Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_market_size = {}

-- Size: Bid Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_market_size.size = 4

-- Display: Bid Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_market_size.display = function(value)
  return "Bid Ntt Market Size: "..value
end

-- Dissect: Bid Ntt Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_ntt_market_size, range, value, display)

  return offset + length, value
end

-- Bid Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_market_size = {}

-- Size: Bid Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_market_size.size = 4

-- Display: Bid Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_market_size.display = function(value)
  return "Bid Market Size: "..value
end

-- Dissect: Bid Market Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_market_size, range, value, display)

  return offset + length, value
end

-- Bid Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_size = {}

-- Size: Bid Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_size.size = 4

-- Display: Bid Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_size.display = function(value)
  return "Bid Ntt Size: "..value
end

-- Dissect: Bid Ntt Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_ntt_size, range, value, display)

  return offset + length, value
end

-- Bid Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_pro_cust_size = {}

-- Size: Bid Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_pro_cust_size.size = 4

-- Display: Bid Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_pro_cust_size.display = function(value)
  return "Bid Pro Cust Size: "..value
end

-- Dissect: Bid Pro Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_pro_cust_size, range, value, display)

  return offset + length, value
end

-- Bid Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_cust_size = {}

-- Size: Bid Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_cust_size.size = 4

-- Display: Bid Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_cust_size.display = function(value)
  return "Bid Cust Size: "..value
end

-- Dissect: Bid Cust Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_cust_size, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_size = {}

-- Size: Bid Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_size.size = 4

-- Display: Bid Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price = {}

-- Size: Bid Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price.size = 4

-- Display: Bid Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price.translate(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Strategy Best Bid And Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update = {}

-- Calculate size of: Strategy Best Bid And Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_cust_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_pro_cust_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_market_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_market_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_cust_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_pro_cust_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_market_size.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_market_size.size

  return index
end

-- Display: Strategy Best Bid And Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Best Bid And Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_cust_size.dissect(buffer, index, packet, parent)

  -- Bid Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_pro_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_pro_cust_size.dissect(buffer, index, packet, parent)

  -- Bid Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_ntt_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_size.dissect(buffer, index, packet, parent)

  -- Bid Market Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_market_size.dissect(buffer, index, packet, parent)

  -- Bid Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_ntt_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.bid_ntt_market_size.dissect(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_cust_size.dissect(buffer, index, packet, parent)

  -- Ask Pro Cust Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_pro_cust_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_pro_cust_size.dissect(buffer, index, packet, parent)

  -- Ask Ntt Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_ntt_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_size.dissect(buffer, index, packet, parent)

  -- Ask Market Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_market_size.dissect(buffer, index, packet, parent)

  -- Ask Ntt Market Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_ntt_market_size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.ask_ntt_market_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Bid And Ask Update
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update.dissect = function(buffer, offset, packet, parent)
  if show.strategy_best_bid_and_ask_update then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_best_bid_and_ask_update, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update.fields(buffer, offset, packet, parent)
  end
end

-- Current Trading State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_trading_state = {}

-- Size: Current Trading State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Strategy Trading Action Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message = {}

-- Calculate size of: Strategy Trading Action Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_trading_state.size

  return index
end

-- Display: Strategy Trading Action Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_trading_action_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Open State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.open_state = {}

-- Size: Open State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.open_state.size = 1

-- Display: Open State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.open_state.display = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.open_state, range, value, display)

  return offset + length, value
end

-- Strategy Open Closed Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message = {}

-- Calculate size of: Strategy Open Closed Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.open_state.size

  return index
end

-- Display: Strategy Open Closed Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Open Closed Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Open Closed Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_open_closed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_open_closed_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Ratio
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.side = {}

-- Size: Side
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.side.size = 1

-- Display: Side
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.side.display = function(value)
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
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_type = {}

-- Size: Option Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_type.size = 1

-- Display: Option Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_type.display = function(value)
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
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price.size = 8

-- Display: Explicit Strike Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Explicit Strike Price
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price.translate(raw)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_day = {}

-- Size: Expiration Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_month = {}

-- Size: Expiration Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_year = {}

-- Size: Expiration Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Leg Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_id = {}

-- Size: Leg Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_id.size = 1

-- Display: Leg Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_id.display = function(value)
  return "Leg Id: "..value
end

-- Dissect: Leg Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_id, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.security_symbol = {}

-- Size: Security Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_id = {}

-- Size: Option Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_id.size = 4

-- Display: Option Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.option_id, range, value, display)

  return offset + length, value
end

-- Leg Information
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_information = {}

-- Calculate size of: Leg Information
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_information.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_id.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.security_symbol.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_id.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_year.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_month.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_day.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_type.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.side.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_ratio.size

  return index
end

-- Display: Leg Information
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Information
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_information.fields = function(buffer, offset, packet, parent, leg_information_index)
  local index = offset

  -- Implicit Leg Information Index
  if leg_information_index ~= nil then
    local iteration = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_information_index, leg_information_index)
    iteration:set_generated()
  end

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Leg Id: 1 Byte Unsigned Fixed Width Integer
  index, leg_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_id.dissect(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 8 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.option_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_information.dissect = function(buffer, offset, packet, parent, leg_information_index)
  if show.leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.leg_information, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
  end
end

-- Number Of Legs
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.source = {}

-- Size: Source
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.source.size = 1

-- Display: Source
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.source, range, value, display)

  return offset + length, value
end

-- Strategy Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_type = {}

-- Size: Strategy Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_type.size = 1

-- Display: Strategy Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_type.display = function(value)
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
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Complex Strategy Directory Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message = {}

-- Calculate size of: Complex Strategy Directory Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_type.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.source.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.underlying_symbol.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.number_of_legs.size

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 28

  return index
end

-- Display: Complex Strategy Directory Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Strategy Type: 1 Byte Ascii String Enum with 9 values
  index, strategy_type = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_type.dissect(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Number Of Legs: 1 Byte Unsigned Fixed Width Integer
  index, number_of_legs = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Information
  for leg_information_index = 1, number_of_legs do
    index, leg_information = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.leg_information.dissect(buffer, index, packet, parent, leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_strategy_directory_message then
    local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.complex_strategy_directory_message, range, display)
  end

  return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
end

-- Subversion
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.subversion = {}

-- Size: Subversion
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.subversion.size = 1

-- Display: Subversion
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.subversion.display = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.subversion.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.subversion.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.subversion.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.subversion, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.version = {}

-- Size: Version
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.version.size = 1

-- Display: Version
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.version, range, value, display)

  return offset + length, value
end

-- Current Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_day = {}

-- Size: Current Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_day.size = 1

-- Display: Current Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_day.display = function(value)
  return "Current Day: "..value
end

-- Dissect: Current Day
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_day, range, value, display)

  return offset + length, value
end

-- Current Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_month = {}

-- Size: Current Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_month.size = 1

-- Display: Current Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_month.display = function(value)
  return "Current Month: "..value
end

-- Dissect: Current Month
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_month, range, value, display)

  return offset + length, value
end

-- Current Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_year = {}

-- Size: Current Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_year.size = 2

-- Display: Current Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_year.display = function(value)
  return "Current Year: "..value
end

-- Dissect: Current Year
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.current_year, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.event_code = {}

-- Size: Event Code
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.event_code.size = 1

-- Display: Event Code
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.event_code.display = function(value)
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
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message = {}

-- Calculate size of: System Event Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.event_code.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_year.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_month.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_day.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.version.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.subversion.size

  return index
end

-- Display: System Event Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 8 values
  index, event_code = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.event_code.dissect(buffer, index, packet, parent)

  -- Current Year: 2 Byte Unsigned Fixed Width Integer
  index, current_year = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_year.dissect(buffer, index, packet, parent)

  -- Current Month: 1 Byte Unsigned Fixed Width Integer
  index, current_month = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_month.dissect(buffer, index, packet, parent)

  -- Current Day: 1 Byte Unsigned Fixed Width Integer
  index, current_day = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.current_day.dissect(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.version.dissect(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index, subversion = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.subversion.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload = {}

-- Calculate runtime size of: Payload
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message.size(buffer, offset)
  end
  -- Size of Complex Strategy Directory Message
  if message_type == "R" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message.size(buffer, offset)
  end
  -- Size of Strategy Open Closed Message
  if message_type == "O" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message.size(buffer, offset)
  end
  -- Size of Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message.size(buffer, offset)
  end
  -- Size of Strategy Best Bid And Ask Update
  if message_type == "C" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update.size(buffer, offset)
  end
  -- Size of Strategy Best Bid Update
  if message_type == "D" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update.size(buffer, offset)
  end
  -- Size of Strategy Best Ask Update
  if message_type == "E" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update.size(buffer, offset)
  end
  -- Size of Complex Strategy Ticker Message
  if message_type == "t" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if message_type == "R" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Open Closed Message
  if message_type == "O" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Bid And Ask Update
  if message_type == "C" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_and_ask_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Bid Update
  if message_type == "D" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_bid_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Ask Update
  if message_type == "E" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.strategy_best_ask_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Ticker Message
  if message_type == "t" then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.complex_strategy_ticker_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.payload, range, display)

  return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_type = {}

-- Size: Message Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_type.size = 1

-- Display: Message Type
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_type.display = function(value)
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
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_length = {}

-- Size: Message Length
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_length.size = 2

-- Display: Message Length
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_header = {}

-- Calculate size of: Message Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_length.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_type.size

  return index
end

-- Display: Message Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message = {}

-- Display: Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 8 branches
  index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message, buffer(offset, 0))
    local current = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_count = {}

-- Size: Message Count
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_count.size = 2

-- Display: Message Count
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.session = {}

-- Size: Session
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.session.size = 10

-- Display: Session
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.session.size
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

  local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet_header = {}

-- Calculate size of: Packet Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.session.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.sequence_number.size

  index = index + nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_count.size

  return index
end

-- Display: Packet Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet = {}

-- Dissect Packet
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.init()
end

-- Dissector for Nasdaq IseOptions TopComboQuoteFeed Itch 1.0
function omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0, buffer(), omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq IseOptions TopComboQuoteFeed Itch 1.0
local function omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0
  omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq IseOptions TopComboQuoteFeed Itch 1.0
omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0:register_heuristic("udp", omi_nasdaq_iseoptions_topcomboquotefeed_itch_v1_0_heuristic)

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
