-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq BxOptions TopOfMarket Itch 1.2 Protocol
local nasdaq_bxoptions_topofmarket_itch_v1_2 = Proto("Nasdaq.BxOptions.TopOfMarket.Itch.v1.2.Lua", "Nasdaq BxOptions TopOfMarket Itch 1.2")

-- Component Tables
local show = {}
local format = {}
local nasdaq_bxoptions_topofmarket_itch_v1_2_display = {}
local nasdaq_bxoptions_topofmarket_itch_v1_2_dissect = {}
local nasdaq_bxoptions_topofmarket_itch_v1_2_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq BxOptions TopOfMarket Itch 1.2 Fields
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.bxoptions.topofmarket.itch.v1.2.askprice", ftypes.DOUBLE)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.bxoptions.topofmarket.itch.v1.2.askpricelong", ftypes.DOUBLE)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.bxoptions.topofmarket.itch.v1.2.asksize", ftypes.UINT16)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.bxoptions.topofmarket.itch.v1.2.asksizelong", ftypes.UINT32)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.bxoptions.topofmarket.itch.v1.2.bidprice", ftypes.DOUBLE)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.bxoptions.topofmarket.itch.v1.2.bidpricelong", ftypes.DOUBLE)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.bxoptions.topofmarket.itch.v1.2.bidsize", ftypes.UINT16)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.bxoptions.topofmarket.itch.v1.2.bidsizelong", ftypes.UINT32)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.bxoptions.topofmarket.itch.v1.2.crossid", ftypes.UINT32)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.bxoptions.topofmarket.itch.v1.2.currenttradingstate", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.bxoptions.topofmarket.itch.v1.2.eventcode", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.bxoptions.topofmarket.itch.v1.2.expirationday", ftypes.UINT8)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.bxoptions.topofmarket.itch.v1.2.expirationmonth", ftypes.UINT8)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.bxoptions.topofmarket.itch.v1.2.expirationyear", ftypes.UINT8)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message = ProtoField.new("Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.message", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_count = ProtoField.new("Message Count", "nasdaq.bxoptions.topofmarket.itch.v1.2.messagecount", ftypes.UINT16)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_header = ProtoField.new("Message Header", "nasdaq.bxoptions.topofmarket.itch.v1.2.messageheader", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_length = ProtoField.new("Message Length", "nasdaq.bxoptions.topofmarket.itch.v1.2.messagelength", ftypes.UINT16)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_type = ProtoField.new("Message Type", "nasdaq.bxoptions.topofmarket.itch.v1.2.messagetype", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.minimum_price_variation = ProtoField.new("Minimum Price Variation", "nasdaq.bxoptions.topofmarket.itch.v1.2.minimumpricevariation", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.bxoptions.topofmarket.itch.v1.2.nanoseconds", ftypes.UINT32)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.open_state = ProtoField.new("Open State", "nasdaq.bxoptions.topofmarket.itch.v1.2.openstate", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.bxoptions.topofmarket.itch.v1.2.optionclosingtype", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.option_id = ProtoField.new("Option Id", "nasdaq.bxoptions.topofmarket.itch.v1.2.optionid", ftypes.UINT32)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.option_type = ProtoField.new("Option Type", "nasdaq.bxoptions.topofmarket.itch.v1.2.optiontype", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.original_cross_id = ProtoField.new("Original Cross Id", "nasdaq.bxoptions.topofmarket.itch.v1.2.originalcrossid", ftypes.UINT32)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.original_price = ProtoField.new("Original Price", "nasdaq.bxoptions.topofmarket.itch.v1.2.originalprice", ftypes.DOUBLE)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.original_volume = ProtoField.new("Original Volume", "nasdaq.bxoptions.topofmarket.itch.v1.2.originalvolume", ftypes.UINT32)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.packet = ProtoField.new("Packet", "nasdaq.bxoptions.topofmarket.itch.v1.2.packet", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.bxoptions.topofmarket.itch.v1.2.packetheader", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.payload = ProtoField.new("Payload", "nasdaq.bxoptions.topofmarket.itch.v1.2.payload", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.price = ProtoField.new("Price", "nasdaq.bxoptions.topofmarket.itch.v1.2.price", ftypes.DOUBLE)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.price_long = ProtoField.new("Price Long", "nasdaq.bxoptions.topofmarket.itch.v1.2.pricelong", ftypes.DOUBLE)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.bxoptions.topofmarket.itch.v1.2.quotecondition", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.seconds = ProtoField.new("Seconds", "nasdaq.bxoptions.topofmarket.itch.v1.2.seconds", ftypes.UINT32)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.bxoptions.topofmarket.itch.v1.2.securitysymbol", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.bxoptions.topofmarket.itch.v1.2.sequencenumber", ftypes.UINT64)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.session = ProtoField.new("Session", "nasdaq.bxoptions.topofmarket.itch.v1.2.session", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.size = ProtoField.new("Size", "nasdaq.bxoptions.topofmarket.itch.v1.2.size", ftypes.UINT16)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.size_long = ProtoField.new("Size Long", "nasdaq.bxoptions.topofmarket.itch.v1.2.sizelong", ftypes.UINT32)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.source = ProtoField.new("Source", "nasdaq.bxoptions.topofmarket.itch.v1.2.source", ftypes.UINT8)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.bxoptions.topofmarket.itch.v1.2.strikeprice", ftypes.DOUBLE)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.subversion = ProtoField.new("Subversion", "nasdaq.bxoptions.topofmarket.itch.v1.2.subversion", ftypes.UINT8)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.tradable = ProtoField.new("Tradable", "nasdaq.bxoptions.topofmarket.itch.v1.2.tradable", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.bxoptions.topofmarket.itch.v1.2.tradecondition", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.bxoptions.topofmarket.itch.v1.2.underlyingsymbol", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.version = ProtoField.new("Version", "nasdaq.bxoptions.topofmarket.itch.v1.2.version", ftypes.UINT8)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.volume = ProtoField.new("Volume", "nasdaq.bxoptions.topofmarket.itch.v1.2.volume", ftypes.UINT32)

-- Nasdaq BxOptions TopOfMarket Itch 1.2 messages
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_ask_update_long_form_message = ProtoField.new("Best Ask Update Long Form Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.bestaskupdatelongformmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_ask_update_short_form_message = ProtoField.new("Best Ask Update Short Form Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.bestaskupdateshortformmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_long_form_message = ProtoField.new("Best Bid And Ask Update Long Form Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.bestbidandaskupdatelongformmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_short_form_message = ProtoField.new("Best Bid And Ask Update Short Form Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.bestbidandaskupdateshortformmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_bid_update_long_form_message = ProtoField.new("Best Bid Update Long Form Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.bestbidupdatelongformmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_bid_update_short_form_message = ProtoField.new("Best Bid Update Short Form Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.bestbidupdateshortformmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.broken_trade_report_message = ProtoField.new("Broken Trade Report Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.brokentradereportmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.optionsdirectorymessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.securityopenmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.systemeventmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.timestamp_message = ProtoField.new("Timestamp Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.timestampmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.tradereportmessage", ftypes.STRING)
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.bxoptions.topofmarket.itch.v1.2.tradingactionmessage", ftypes.STRING)

-- Nasdaq BxOptions TopOfMarket Itch 1.2 generated fields
nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_index = ProtoField.new("Message Index", "nasdaq.bxoptions.topofmarket.itch.v1.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq BxOptions TopOfMarket Itch 1.2 Element Dissection Options
show.best_ask_update_long_form_message = true
show.best_ask_update_short_form_message = true
show.best_bid_and_ask_update_long_form_message = true
show.best_bid_and_ask_update_short_form_message = true
show.best_bid_update_long_form_message = true
show.best_bid_update_short_form_message = true
show.broken_trade_report_message = true
show.message = true
show.message_header = true
show.options_directory_message = true
show.packet = true
show.packet_header = true
show.security_open_message = true
show.system_event_message = true
show.timestamp_message = true
show.trade_report_message = true
show.trading_action_message = true
show.payload = false

-- Register Nasdaq BxOptions TopOfMarket Itch 1.2 Show Options
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_ask_update_long_form_message = Pref.bool("Show Best Ask Update Long Form Message", show.best_ask_update_long_form_message, "Parse and add Best Ask Update Long Form Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_ask_update_short_form_message = Pref.bool("Show Best Ask Update Short Form Message", show.best_ask_update_short_form_message, "Parse and add Best Ask Update Short Form Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_long_form_message = Pref.bool("Show Best Bid And Ask Update Long Form Message", show.best_bid_and_ask_update_long_form_message, "Parse and add Best Bid And Ask Update Long Form Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_short_form_message = Pref.bool("Show Best Bid And Ask Update Short Form Message", show.best_bid_and_ask_update_short_form_message, "Parse and add Best Bid And Ask Update Short Form Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_update_long_form_message = Pref.bool("Show Best Bid Update Long Form Message", show.best_bid_update_long_form_message, "Parse and add Best Bid Update Long Form Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_update_short_form_message = Pref.bool("Show Best Bid Update Short Form Message", show.best_bid_update_short_form_message, "Parse and add Best Bid Update Short Form Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_broken_trade_report_message = Pref.bool("Show Broken Trade Report Message", show.broken_trade_report_message, "Parse and add Broken Trade Report Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_options_directory_message = Pref.bool("Show Options Directory Message", show.options_directory_message, "Parse and add Options Directory Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_security_open_message = Pref.bool("Show Security Open Message", show.security_open_message, "Parse and add Security Open Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_timestamp_message = Pref.bool("Show Timestamp Message", show.timestamp_message, "Parse and add Timestamp Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_bxoptions_topofmarket_itch_v1_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.best_ask_update_long_form_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_ask_update_long_form_message then
    show.best_ask_update_long_form_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_ask_update_long_form_message
    changed = true
  end
  if show.best_ask_update_short_form_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_ask_update_short_form_message then
    show.best_ask_update_short_form_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_ask_update_short_form_message
    changed = true
  end
  if show.best_bid_and_ask_update_long_form_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_long_form_message then
    show.best_bid_and_ask_update_long_form_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_long_form_message
    changed = true
  end
  if show.best_bid_and_ask_update_short_form_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_short_form_message then
    show.best_bid_and_ask_update_short_form_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_short_form_message
    changed = true
  end
  if show.best_bid_update_long_form_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_update_long_form_message then
    show.best_bid_update_long_form_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_update_long_form_message
    changed = true
  end
  if show.best_bid_update_short_form_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_update_short_form_message then
    show.best_bid_update_short_form_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_best_bid_update_short_form_message
    changed = true
  end
  if show.broken_trade_report_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_broken_trade_report_message then
    show.broken_trade_report_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_broken_trade_report_message
    changed = true
  end
  if show.message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_message then
    show.message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_message_header then
    show.message_header = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_message_header
    changed = true
  end
  if show.options_directory_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_options_directory_message then
    show.options_directory_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_options_directory_message
    changed = true
  end
  if show.packet ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_packet then
    show.packet = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_packet_header then
    show.packet_header = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_packet_header
    changed = true
  end
  if show.security_open_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_security_open_message then
    show.security_open_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_security_open_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_system_event_message then
    show.system_event_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_system_event_message
    changed = true
  end
  if show.timestamp_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_timestamp_message then
    show.timestamp_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_timestamp_message
    changed = true
  end
  if show.trade_report_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_trade_report_message then
    show.trade_report_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_payload then
    show.payload = nasdaq_bxoptions_topofmarket_itch_v1_2.prefs.show_payload
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
-- Dissect Nasdaq BxOptions TopOfMarket Itch 1.2
-----------------------------------------------------------------------

-- Size: Original Volume
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.original_volume = 4

-- Display: Original Volume
nasdaq_bxoptions_topofmarket_itch_v1_2_display.original_volume = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.original_volume = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.original_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.original_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Size: Original Price
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.original_price = 4

-- Display: Original Price
nasdaq_bxoptions_topofmarket_itch_v1_2_display.original_price = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
translate.original_price = function(raw)
  return raw/10000
end

-- Dissect: Original Price
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.original_price = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.original_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.original_price(raw)
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.original_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.original_price, range, value, display)

  return offset + length, value
end

-- Size: Original Cross Id
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.original_cross_id = 4

-- Display: Original Cross Id
nasdaq_bxoptions_topofmarket_itch_v1_2_display.original_cross_id = function(value)
  return "Original Cross Id: "..value
end

-- Dissect: Original Cross Id
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.original_cross_id = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.original_cross_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.original_cross_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.original_cross_id, range, value, display)

  return offset + length, value
end

-- Size: Option Id
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id = 4

-- Display: Option Id
nasdaq_bxoptions_topofmarket_itch_v1_2_display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.option_id, range, value, display)

  return offset + length, value
end

-- Size: Nanoseconds
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds = 4

-- Display: Nanoseconds
nasdaq_bxoptions_topofmarket_itch_v1_2_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Report Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.broken_trade_report_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.original_cross_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.original_price

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.original_volume

  return index
end

-- Display: Broken Trade Report Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.broken_trade_report_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Report Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.broken_trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Original Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, original_cross_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.original_cross_id(buffer, index, packet, parent)

  -- Original Price: 4 Byte Signed Fixed Width Integer
  index, original_price = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.original_price(buffer, index, packet, parent)

  -- Original Volume: 4 Byte Unsigned Fixed Width Integer
  index, original_volume = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.original_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Report Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.broken_trade_report_message = function(buffer, offset, packet, parent)
  if show.broken_trade_report_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.broken_trade_report_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.broken_trade_report_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.broken_trade_report_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.broken_trade_report_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Volume
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.volume = 4

-- Display: Volume
nasdaq_bxoptions_topofmarket_itch_v1_2_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.volume = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price Long
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.price_long = 4

-- Display: Price Long
nasdaq_bxoptions_topofmarket_itch_v1_2_display.price_long = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
translate.price_long = function(raw)
  return raw/10000
end

-- Dissect: Price Long
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.price_long = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.price_long
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.price_long(raw)
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.price_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.price_long, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.trade_condition = 1

-- Display: Trade Condition
nasdaq_bxoptions_topofmarket_itch_v1_2_display.trade_condition = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Cross Id
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.cross_id = 4

-- Display: Cross Id
nasdaq_bxoptions_topofmarket_itch_v1_2_display.cross_id = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.cross_id = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.cross_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.cross_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.trade_report_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.cross_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.trade_condition

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.price_long

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.volume

  return index
end

-- Display: Trade Report Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.trade_report_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.cross_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index, trade_condition = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trade_condition(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.price_long(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trade_report_message = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trade_report_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.trade_report_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trade_report_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Size Long
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.size_long = 4

-- Display: Size Long
nasdaq_bxoptions_topofmarket_itch_v1_2_display.size_long = function(value)
  return "Size Long: "..value
end

-- Dissect: Size Long
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.size_long = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.size_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.size_long, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.quote_condition = 1

-- Display: Quote Condition
nasdaq_bxoptions_topofmarket_itch_v1_2_display.quote_condition = function(value)
  if value == "F" then
    return "Quote Condition: Nonfirm Quote (F)"
  end
  if value == "R" then
    return "Quote Condition: Rotational Quote (R)"
  end
  if value == "X" then
    return "Quote Condition: Bid Side Firm (X)"
  end
  if value == "Y" then
    return "Quote Condition: Ask Side Firm (Y)"
  end
  if value == " " then
    return "Quote Condition: Regular Quote (<whitespace>)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Ask Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_ask_update_long_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.quote_condition

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.price_long

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.size_long

  return index
end

-- Display: Best Ask Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_ask_update_long_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Ask Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.quote_condition(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.price_long(buffer, index, packet, parent)

  -- Size Long: 4 Byte Unsigned Fixed Width Integer
  index, size_long = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.size_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_long_form_message = function(buffer, offset, packet, parent)
  if show.best_ask_update_long_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_ask_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_long_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_ask_update_long_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_long_form_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Best Bid Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_bid_update_long_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.quote_condition

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.price_long

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.size_long

  return index
end

-- Display: Best Bid Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_bid_update_long_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.quote_condition(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.price_long(buffer, index, packet, parent)

  -- Size Long: 4 Byte Unsigned Fixed Width Integer
  index, size_long = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.size_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_long_form_message = function(buffer, offset, packet, parent)
  if show.best_bid_update_long_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_bid_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_long_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_bid_update_long_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_long_form_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Size
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.size = 2

-- Display: Size
nasdaq_bxoptions_topofmarket_itch_v1_2_display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.size = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Price
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.price = 2

-- Display: Price
nasdaq_bxoptions_topofmarket_itch_v1_2_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/100
end

-- Dissect: Price
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.price(raw)
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Ask Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_ask_update_short_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.quote_condition

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.price

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.size

  return index
end

-- Display: Best Ask Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_ask_update_short_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Ask Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.quote_condition(buffer, index, packet, parent)

  -- Price: 2 Byte Signed Fixed Width Integer
  index, price = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_short_form_message = function(buffer, offset, packet, parent)
  if show.best_ask_update_short_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_ask_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_short_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_ask_update_short_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_short_form_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Best Bid Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_bid_update_short_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.quote_condition

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.price

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.size

  return index
end

-- Display: Best Bid Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_bid_update_short_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.quote_condition(buffer, index, packet, parent)

  -- Price: 2 Byte Signed Fixed Width Integer
  index, price = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index, size = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_short_form_message = function(buffer, offset, packet, parent)
  if show.best_bid_update_short_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_bid_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_short_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_bid_update_short_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_short_form_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Ask Size Long
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_size_long = 4

-- Display: Ask Size Long
nasdaq_bxoptions_topofmarket_itch_v1_2_display.ask_size_long = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.ask_size_long = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.ask_size_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Long
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_price_long = 4

-- Display: Ask Price Long
nasdaq_bxoptions_topofmarket_itch_v1_2_display.ask_price_long = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
translate.ask_price_long = function(raw)
  return raw/10000
end

-- Dissect: Ask Price Long
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.ask_price_long = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_price_long
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.ask_price_long(raw)
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.ask_price_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Long
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_size_long = 4

-- Display: Bid Size Long
nasdaq_bxoptions_topofmarket_itch_v1_2_display.bid_size_long = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.bid_size_long = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.bid_size_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Long
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_price_long = 4

-- Display: Bid Price Long
nasdaq_bxoptions_topofmarket_itch_v1_2_display.bid_price_long = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
translate.bid_price_long = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Long
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.bid_price_long = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_price_long
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.bid_price_long(raw)
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.bid_price_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Bid And Ask Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_bid_and_ask_update_long_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.quote_condition

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_price_long

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_size_long

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_price_long

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_size_long

  return index
end

-- Display: Best Bid And Ask Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_bid_and_ask_update_long_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.quote_condition(buffer, index, packet, parent)

  -- Bid Price Long: 4 Byte Signed Fixed Width Integer
  index, bid_price_long = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.bid_price_long(buffer, index, packet, parent)

  -- Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_long = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.bid_size_long(buffer, index, packet, parent)

  -- Ask Price Long: 4 Byte Signed Fixed Width Integer
  index, ask_price_long = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.ask_price_long(buffer, index, packet, parent)

  -- Ask Size Long: 4 Byte Unsigned Fixed Width Integer
  index, ask_size_long = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.ask_size_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Long Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_long_form_message = function(buffer, offset, packet, parent)
  if show.best_bid_and_ask_update_long_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_long_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_bid_and_ask_update_long_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_long_form_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Ask Size
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_size = 2

-- Display: Ask Size
nasdaq_bxoptions_topofmarket_itch_v1_2_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_price = 2

-- Display: Ask Price
nasdaq_bxoptions_topofmarket_itch_v1_2_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
translate.ask_price = function(raw)
  return raw/100
end

-- Dissect: Ask Price
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.ask_price(raw)
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_size = 2

-- Display: Bid Size
nasdaq_bxoptions_topofmarket_itch_v1_2_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_price = 2

-- Display: Bid Price
nasdaq_bxoptions_topofmarket_itch_v1_2_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw/100
end

-- Dissect: Bid Price
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.bid_price(raw)
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Bid And Ask Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_bid_and_ask_update_short_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.quote_condition

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_price

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.bid_size

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_price

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.ask_size

  return index
end

-- Display: Best Bid And Ask Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_bid_and_ask_update_short_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.quote_condition(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Short Form Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_short_form_message = function(buffer, offset, packet, parent)
  if show.best_bid_and_ask_update_short_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_short_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.best_bid_and_ask_update_short_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_short_form_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Open State
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.open_state = 1

-- Display: Open State
nasdaq_bxoptions_topofmarket_itch_v1_2_display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.open_state = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.open_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.open_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Open Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.security_open_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.open_state

  return index
end

-- Display: Security Open Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.security_open_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.security_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.security_open_message = function(buffer, offset, packet, parent)
  if show.security_open_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.security_open_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.security_open_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.security_open_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.security_open_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Current Trading State
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_bxoptions_topofmarket_itch_v1_2_display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halt (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.current_trading_state

  return index
end

-- Display: Trading Action Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.trading_action_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trading_action_message = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trading_action_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.trading_action_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trading_action_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Minimum Price Variation
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.minimum_price_variation = 1

-- Display: Minimum Price Variation
nasdaq_bxoptions_topofmarket_itch_v1_2_display.minimum_price_variation = function(value)
  if value == "E" then
    return "Minimum Price Variation: Penny Everywhere (E)"
  end
  if value == "S" then
    return "Minimum Price Variation: Scaled (S)"
  end
  if value == "P" then
    return "Minimum Price Variation: Penny Pilot (P)"
  end

  return "Minimum Price Variation: Unknown("..value..")"
end

-- Dissect: Minimum Price Variation
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.minimum_price_variation = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.minimum_price_variation
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.minimum_price_variation(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.minimum_price_variation, range, value, display)

  return offset + length, value
end

-- Size: Tradable
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.tradable = 1

-- Display: Tradable
nasdaq_bxoptions_topofmarket_itch_v1_2_display.tradable = function(value)
  if value == "Y" then
    return "Tradable: Yes (Y)"
  end
  if value == "N" then
    return "Tradable: No (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.tradable = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.tradable
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.tradable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.tradable, range, value, display)

  return offset + length, value
end

-- Size: Option Closing Type
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_closing_type = 1

-- Display: Option Closing Type
nasdaq_bxoptions_topofmarket_itch_v1_2_display.option_closing_type = function(value)
  return "Option Closing Type: "..value
end

-- Dissect: Option Closing Type
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_closing_type = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_closing_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.option_closing_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.underlying_symbol = 13

-- Display: Underlying Symbol
nasdaq_bxoptions_topofmarket_itch_v1_2_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Source
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.source = 1

-- Display: Source
nasdaq_bxoptions_topofmarket_itch_v1_2_display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.source = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.source, range, value, display)

  return offset + length, value
end

-- Size: Option Type
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_type = 1

-- Display: Option Type
nasdaq_bxoptions_topofmarket_itch_v1_2_display.option_type = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_type = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.strike_price = 4

-- Display: Strike Price
nasdaq_bxoptions_topofmarket_itch_v1_2_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.strike_price(raw)
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Day
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.expiration_day = 1

-- Display: Expiration Day
nasdaq_bxoptions_topofmarket_itch_v1_2_display.expiration_day = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.expiration_day = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.expiration_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.expiration_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.expiration_month = 1

-- Display: Expiration Month
nasdaq_bxoptions_topofmarket_itch_v1_2_display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.expiration_year = 1

-- Display: Expiration Year
nasdaq_bxoptions_topofmarket_itch_v1_2_display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.security_symbol = 6

-- Display: Security Symbol
nasdaq_bxoptions_topofmarket_itch_v1_2_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.security_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Directory Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.options_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_id

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.security_symbol

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.expiration_year

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.expiration_month

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.expiration_day

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.strike_price

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_type

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.source

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.underlying_symbol

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.option_closing_type

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.tradable

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.minimum_price_variation

  return index
end

-- Display: Options Directory Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.options_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.options_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.expiration_day(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Signed Fixed Width Integer
  index, strike_price = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Option Closing Type: 1 Byte Ascii String
  index, option_closing_type = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.option_closing_type(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.tradable(buffer, index, packet, parent)

  -- Minimum Price Variation: 1 Byte Ascii String Enum with 3 values
  index, minimum_price_variation = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.minimum_price_variation(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.options_directory_message = function(buffer, offset, packet, parent)
  if show.options_directory_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.options_directory_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.options_directory_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.options_directory_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Subversion
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.subversion = 1

-- Display: Subversion
nasdaq_bxoptions_topofmarket_itch_v1_2_display.subversion = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.subversion = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.subversion
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.subversion(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.subversion, range, value, display)

  return offset + length, value
end

-- Size: Version
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.version = 1

-- Display: Version
nasdaq_bxoptions_topofmarket_itch_v1_2_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.version = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.version(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Event Code
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.event_code = 1

-- Display: Event Code
nasdaq_bxoptions_topofmarket_itch_v1_2_display.event_code = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.nanoseconds

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.event_code

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.version

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.subversion

  return index
end

-- Display: System Event Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.nanoseconds(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.event_code(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.version(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index, subversion = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.subversion(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.system_event_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.system_event_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.system_event_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Seconds
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.seconds = 4

-- Display: Seconds
nasdaq_bxoptions_topofmarket_itch_v1_2_display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.seconds = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.seconds(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timestamp Message
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.timestamp_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.seconds

  return index
end

-- Display: Timestamp Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.timestamp_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.timestamp_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.timestamp_message = function(buffer, offset, packet, parent)
  if show.timestamp_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.timestamp_message, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.timestamp_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.timestamp_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.timestamp_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.payload = function(buffer, offset, message_type)
  -- Size of Timestamp Message
  if message_type == "T" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.timestamp_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.system_event_message(buffer, offset)
  end
  -- Size of Options Directory Message
  if message_type == "D" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.options_directory_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.trading_action_message(buffer, offset)
  end
  -- Size of Security Open Message
  if message_type == "O" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.security_open_message(buffer, offset)
  end
  -- Size of Best Bid And Ask Update Short Form Message
  if message_type == "q" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_bid_and_ask_update_short_form_message(buffer, offset)
  end
  -- Size of Best Bid And Ask Update Long Form Message
  if message_type == "Q" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_bid_and_ask_update_long_form_message(buffer, offset)
  end
  -- Size of Best Bid Update Short Form Message
  if message_type == "b" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_bid_update_short_form_message(buffer, offset)
  end
  -- Size of Best Ask Update Short Form Message
  if message_type == "a" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_ask_update_short_form_message(buffer, offset)
  end
  -- Size of Best Bid Update Long Form Message
  if message_type == "B" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_bid_update_long_form_message(buffer, offset)
  end
  -- Size of Best Ask Update Long Form Message
  if message_type == "A" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.best_ask_update_long_form_message(buffer, offset)
  end
  -- Size of Trade Report Message
  if message_type == "R" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.trade_report_message(buffer, offset)
  end
  -- Size of Broken Trade Report Message
  if message_type == "X" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.broken_trade_report_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_bxoptions_topofmarket_itch_v1_2_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Message
  if message_type == "T" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.timestamp_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if message_type == "D" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.options_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if message_type == "O" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.security_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Short Form Message
  if message_type == "q" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Long Form Message
  if message_type == "Q" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_and_ask_update_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Short Form Message
  if message_type == "b" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Short Form Message
  if message_type == "a" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Long Form Message
  if message_type == "B" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_bid_update_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Long Form Message
  if message_type == "A" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.best_ask_update_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "R" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.trade_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Report Message
  if message_type == "X" then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.broken_trade_report_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.payload, range, display)

  return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_type = 1

-- Display: Message Type
nasdaq_bxoptions_topofmarket_itch_v1_2_display.message_type = function(value)
  if value == "T" then
    return "Message Type: Timestamp Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Message Type: Options Directory Message (D)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Security Open Message (O)"
  end
  if value == "q" then
    return "Message Type: Best Bid And Ask Update Short Form Message (q)"
  end
  if value == "Q" then
    return "Message Type: Best Bid And Ask Update Long Form Message (Q)"
  end
  if value == "b" then
    return "Message Type: Best Bid Update Short Form Message (b)"
  end
  if value == "a" then
    return "Message Type: Best Ask Update Short Form Message (a)"
  end
  if value == "B" then
    return "Message Type: Best Bid Update Long Form Message (B)"
  end
  if value == "A" then
    return "Message Type: Best Ask Update Long Form Message (A)"
  end
  if value == "R" then
    return "Message Type: Trade Report Message (R)"
  end
  if value == "X" then
    return "Message Type: Broken Trade Report Message (X)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_length = 2

-- Display: Message Length
nasdaq_bxoptions_topofmarket_itch_v1_2_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_length = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.message_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_length

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_bxoptions_topofmarket_itch_v1_2_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_header, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
nasdaq_bxoptions_topofmarket_itch_v1_2_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message, buffer(offset, 0))
    local current = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Message Count
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_count = 2

-- Display: Message Count
nasdaq_bxoptions_topofmarket_itch_v1_2_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.sequence_number = 8

-- Display: Sequence Number
nasdaq_bxoptions_topofmarket_itch_v1_2_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.session = 10

-- Display: Session
nasdaq_bxoptions_topofmarket_itch_v1_2_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.session
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

  local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.session

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.sequence_number

  index = index + nasdaq_bxoptions_topofmarket_itch_v1_2_size_of.message_count

  return index
end

-- Display: Packet Header
nasdaq_bxoptions_topofmarket_itch_v1_2_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_bxoptions_topofmarket_itch_v1_2_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.message(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_bxoptions_topofmarket_itch_v1_2.init()
end

-- Dissector for Nasdaq BxOptions TopOfMarket Itch 1.2
function nasdaq_bxoptions_topofmarket_itch_v1_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_bxoptions_topofmarket_itch_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_bxoptions_topofmarket_itch_v1_2, buffer(), nasdaq_bxoptions_topofmarket_itch_v1_2.description, "("..buffer:len().." Bytes)")
  return nasdaq_bxoptions_topofmarket_itch_v1_2_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_bxoptions_topofmarket_itch_v1_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_bxoptions_topofmarket_itch_v1_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq BxOptions TopOfMarket Itch 1.2
local function nasdaq_bxoptions_topofmarket_itch_v1_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_bxoptions_topofmarket_itch_v1_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_bxoptions_topofmarket_itch_v1_2
  nasdaq_bxoptions_topofmarket_itch_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq BxOptions TopOfMarket Itch 1.2
nasdaq_bxoptions_topofmarket_itch_v1_2:register_heuristic("udp", nasdaq_bxoptions_topofmarket_itch_v1_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 1.2
--   Date: Thursday, November 2, 2017
--   Specification: BXOptions_TopofMarket.pdf
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
