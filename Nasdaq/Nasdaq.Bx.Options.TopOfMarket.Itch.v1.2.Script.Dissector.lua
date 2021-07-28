-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Bx Options TopOfMarket Itch 1.2 Protocol
local nasdaq_bx_options_topofmarket_itch_v1_2 = Proto("Nasdaq.Bx.Options.TopOfMarket.Itch.v1.2.Lua", "Nasdaq Bx Options TopOfMarket Itch 1.2")

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

-- Nasdaq Bx Options TopOfMarket Itch 1.2 Fields
nasdaq_bx_options_topofmarket_itch_v1_2.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.bx.options.topofmarket.itch.v1.2.askprice", ftypes.UINT16)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.bx.options.topofmarket.itch.v1.2.askpricelong", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.bx.options.topofmarket.itch.v1.2.asksize", ftypes.UINT16)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.bx.options.topofmarket.itch.v1.2.asksizelong", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_ask_update_long_form_message = ProtoField.new("Best Ask Update Long Form Message", "nasdaq.bx.options.topofmarket.itch.v1.2.bestaskupdatelongformmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_ask_update_short_form_message = ProtoField.new("Best Ask Update Short Form Message", "nasdaq.bx.options.topofmarket.itch.v1.2.bestaskupdateshortformmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_long_form_message = ProtoField.new("Best Bid And Ask Update Long Form Message", "nasdaq.bx.options.topofmarket.itch.v1.2.bestbidandaskupdatelongformmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_short_form_message = ProtoField.new("Best Bid And Ask Update Short Form Message", "nasdaq.bx.options.topofmarket.itch.v1.2.bestbidandaskupdateshortformmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_bid_update_long_form_message = ProtoField.new("Best Bid Update Long Form Message", "nasdaq.bx.options.topofmarket.itch.v1.2.bestbidupdatelongformmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_bid_update_short_form_message = ProtoField.new("Best Bid Update Short Form Message", "nasdaq.bx.options.topofmarket.itch.v1.2.bestbidupdateshortformmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.bx.options.topofmarket.itch.v1.2.bidprice", ftypes.UINT16)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.bx.options.topofmarket.itch.v1.2.bidpricelong", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.bx.options.topofmarket.itch.v1.2.bidsize", ftypes.UINT16)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.bx.options.topofmarket.itch.v1.2.bidsizelong", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.broken_trade_report_message = ProtoField.new("Broken Trade Report Message", "nasdaq.bx.options.topofmarket.itch.v1.2.brokentradereportmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.count = ProtoField.new("Count", "nasdaq.bx.options.topofmarket.itch.v1.2.count", ftypes.UINT16)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.bx.options.topofmarket.itch.v1.2.crossid", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.bx.options.topofmarket.itch.v1.2.currenttradingstate", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.bx.options.topofmarket.itch.v1.2.eventcode", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.bx.options.topofmarket.itch.v1.2.expirationday", ftypes.UINT8)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.bx.options.topofmarket.itch.v1.2.expirationmonth", ftypes.UINT8)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.bx.options.topofmarket.itch.v1.2.expirationyear", ftypes.UINT8)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.length = ProtoField.new("Length", "nasdaq.bx.options.topofmarket.itch.v1.2.length", ftypes.UINT16)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.message = ProtoField.new("Message", "nasdaq.bx.options.topofmarket.itch.v1.2.message", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.message_header = ProtoField.new("Message Header", "nasdaq.bx.options.topofmarket.itch.v1.2.messageheader", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.message_type = ProtoField.new("Message Type", "nasdaq.bx.options.topofmarket.itch.v1.2.messagetype", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.minimum_price_variation = ProtoField.new("Minimum Price Variation", "nasdaq.bx.options.topofmarket.itch.v1.2.minimumpricevariation", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.bx.options.topofmarket.itch.v1.2.nanoseconds", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.open_state = ProtoField.new("Open State", "nasdaq.bx.options.topofmarket.itch.v1.2.openstate", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.bx.options.topofmarket.itch.v1.2.optionclosingtype", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.option_id = ProtoField.new("Option Id", "nasdaq.bx.options.topofmarket.itch.v1.2.optionid", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.option_type = ProtoField.new("Option Type", "nasdaq.bx.options.topofmarket.itch.v1.2.optiontype", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.bx.options.topofmarket.itch.v1.2.optionsdirectorymessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.original_cross_id = ProtoField.new("Original Cross Id", "nasdaq.bx.options.topofmarket.itch.v1.2.originalcrossid", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.original_price = ProtoField.new("Original Price", "nasdaq.bx.options.topofmarket.itch.v1.2.originalprice", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.original_volume = ProtoField.new("Original Volume", "nasdaq.bx.options.topofmarket.itch.v1.2.originalvolume", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.packet = ProtoField.new("Packet", "nasdaq.bx.options.topofmarket.itch.v1.2.packet", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.bx.options.topofmarket.itch.v1.2.packetheader", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.payload = ProtoField.new("Payload", "nasdaq.bx.options.topofmarket.itch.v1.2.payload", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.price = ProtoField.new("Price", "nasdaq.bx.options.topofmarket.itch.v1.2.price", ftypes.UINT16)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.price_long = ProtoField.new("Price Long", "nasdaq.bx.options.topofmarket.itch.v1.2.pricelong", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.bx.options.topofmarket.itch.v1.2.quotecondition", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.seconds = ProtoField.new("Seconds", "nasdaq.bx.options.topofmarket.itch.v1.2.seconds", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.bx.options.topofmarket.itch.v1.2.securityopenmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.bx.options.topofmarket.itch.v1.2.securitysymbol", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.sequence = ProtoField.new("Sequence", "nasdaq.bx.options.topofmarket.itch.v1.2.sequence", ftypes.UINT64)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.session = ProtoField.new("Session", "nasdaq.bx.options.topofmarket.itch.v1.2.session", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.size = ProtoField.new("Size", "nasdaq.bx.options.topofmarket.itch.v1.2.size", ftypes.UINT16)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.size_long = ProtoField.new("Size Long", "nasdaq.bx.options.topofmarket.itch.v1.2.sizelong", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.source = ProtoField.new("Source", "nasdaq.bx.options.topofmarket.itch.v1.2.source", ftypes.UINT8)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.bx.options.topofmarket.itch.v1.2.strikeprice", ftypes.UINT32)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.subversion = ProtoField.new("Subversion", "nasdaq.bx.options.topofmarket.itch.v1.2.subversion", ftypes.UINT8)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.bx.options.topofmarket.itch.v1.2.systemeventmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.timestamp_message = ProtoField.new("Timestamp Message", "nasdaq.bx.options.topofmarket.itch.v1.2.timestampmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.tradable = ProtoField.new("Tradable", "nasdaq.bx.options.topofmarket.itch.v1.2.tradable", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.bx.options.topofmarket.itch.v1.2.tradecondition", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.bx.options.topofmarket.itch.v1.2.tradereportmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.bx.options.topofmarket.itch.v1.2.tradingactionmessage", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.bx.options.topofmarket.itch.v1.2.underlyingsymbol", ftypes.STRING)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.version = ProtoField.new("Version", "nasdaq.bx.options.topofmarket.itch.v1.2.version", ftypes.UINT8)
nasdaq_bx_options_topofmarket_itch_v1_2.fields.volume = ProtoField.new("Volume", "nasdaq.bx.options.topofmarket.itch.v1.2.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Bx Options TopOfMarket Itch 1.2 Element Dissection Options
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

-- Register Nasdaq Bx Options TopOfMarket Itch 1.2 Show Options
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_ask_update_long_form_message = Pref.bool("Show Best Ask Update Long Form Message", show.best_ask_update_long_form_message, "Parse and add Best Ask Update Long Form Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_ask_update_short_form_message = Pref.bool("Show Best Ask Update Short Form Message", show.best_ask_update_short_form_message, "Parse and add Best Ask Update Short Form Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_long_form_message = Pref.bool("Show Best Bid And Ask Update Long Form Message", show.best_bid_and_ask_update_long_form_message, "Parse and add Best Bid And Ask Update Long Form Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_short_form_message = Pref.bool("Show Best Bid And Ask Update Short Form Message", show.best_bid_and_ask_update_short_form_message, "Parse and add Best Bid And Ask Update Short Form Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_update_long_form_message = Pref.bool("Show Best Bid Update Long Form Message", show.best_bid_update_long_form_message, "Parse and add Best Bid Update Long Form Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_update_short_form_message = Pref.bool("Show Best Bid Update Short Form Message", show.best_bid_update_short_form_message, "Parse and add Best Bid Update Short Form Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_broken_trade_report_message = Pref.bool("Show Broken Trade Report Message", show.broken_trade_report_message, "Parse and add Broken Trade Report Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_options_directory_message = Pref.bool("Show Options Directory Message", show.options_directory_message, "Parse and add Options Directory Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_security_open_message = Pref.bool("Show Security Open Message", show.security_open_message, "Parse and add Security Open Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_timestamp_message = Pref.bool("Show Timestamp Message", show.timestamp_message, "Parse and add Timestamp Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_bx_options_topofmarket_itch_v1_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.best_ask_update_long_form_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_ask_update_long_form_message then
    show.best_ask_update_long_form_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_ask_update_long_form_message
    changed = true
  end
  if show.best_ask_update_short_form_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_ask_update_short_form_message then
    show.best_ask_update_short_form_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_ask_update_short_form_message
    changed = true
  end
  if show.best_bid_and_ask_update_long_form_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_long_form_message then
    show.best_bid_and_ask_update_long_form_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_long_form_message
    changed = true
  end
  if show.best_bid_and_ask_update_short_form_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_short_form_message then
    show.best_bid_and_ask_update_short_form_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_and_ask_update_short_form_message
    changed = true
  end
  if show.best_bid_update_long_form_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_update_long_form_message then
    show.best_bid_update_long_form_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_update_long_form_message
    changed = true
  end
  if show.best_bid_update_short_form_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_update_short_form_message then
    show.best_bid_update_short_form_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_best_bid_update_short_form_message
    changed = true
  end
  if show.broken_trade_report_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_broken_trade_report_message then
    show.broken_trade_report_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_broken_trade_report_message
    changed = true
  end
  if show.message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_message then
    show.message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_message_header then
    show.message_header = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_message_header
    changed = true
  end
  if show.options_directory_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_options_directory_message then
    show.options_directory_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_options_directory_message
    changed = true
  end
  if show.packet ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_packet then
    show.packet = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_packet_header then
    show.packet_header = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_packet_header
    changed = true
  end
  if show.security_open_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_security_open_message then
    show.security_open_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_security_open_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_system_event_message then
    show.system_event_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_system_event_message
    changed = true
  end
  if show.timestamp_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_timestamp_message then
    show.timestamp_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_timestamp_message
    changed = true
  end
  if show.trade_report_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_trade_report_message then
    show.trade_report_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_payload then
    show.payload = nasdaq_bx_options_topofmarket_itch_v1_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Bx Options TopOfMarket Itch 1.2
-----------------------------------------------------------------------

-- Size: Original Volume
size_of.original_volume = 4

-- Display: Original Volume
display.original_volume = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
dissect.original_volume = function(buffer, offset, packet, parent)
  local length = size_of.original_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.original_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Size: Original Price
size_of.original_price = 4

-- Display: Original Price
display.original_price = function(value)
  return "Original Price: "..value
end

-- Dissect: Original Price
dissect.original_price = function(buffer, offset, packet, parent)
  local length = size_of.original_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.original_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.original_price, range, value, display)

  return offset + length, value
end

-- Size: Original Cross Id
size_of.original_cross_id = 4

-- Display: Original Cross Id
display.original_cross_id = function(value)
  return "Original Cross Id: "..value
end

-- Dissect: Original Cross Id
dissect.original_cross_id = function(buffer, offset, packet, parent)
  local length = size_of.original_cross_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.original_cross_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.original_cross_id, range, value, display)

  return offset + length, value
end

-- Size: Option Id
size_of.option_id = 4

-- Display: Option Id
display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
dissect.option_id = function(buffer, offset, packet, parent)
  local length = size_of.option_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.option_id, range, value, display)

  return offset + length, value
end

-- Size: Nanoseconds
size_of.nanoseconds = 4

-- Display: Nanoseconds
display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Report Message
size_of.broken_trade_report_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.original_cross_id

  index = index + size_of.original_price

  index = index + size_of.original_volume

  return index
end

-- Display: Broken Trade Report Message
display.broken_trade_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Report Message
dissect.broken_trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Original Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, original_cross_id = dissect.original_cross_id(buffer, index, packet, parent)

  -- Original Price: 4 Byte Unsigned Fixed Width Integer
  index, original_price = dissect.original_price(buffer, index, packet, parent)

  -- Original Volume: 4 Byte Unsigned Fixed Width Integer
  index, original_volume = dissect.original_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Report Message
dissect.broken_trade_report_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_report_message then
    local length = size_of.broken_trade_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.broken_trade_report_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.broken_trade_report_message, range, display)
  end

  return dissect.broken_trade_report_message_fields(buffer, offset, packet, parent)
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local length = size_of.volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price Long
size_of.price_long = 4

-- Display: Price Long
display.price_long = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
dissect.price_long = function(buffer, offset, packet, parent)
  local length = size_of.price_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.price_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.price_long, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition
size_of.trade_condition = 1

-- Display: Trade Condition
display.trade_condition = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Cross Id
size_of.cross_id = 4

-- Display: Cross Id
display.cross_id = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
dissect.cross_id = function(buffer, offset, packet, parent)
  local length = size_of.cross_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cross_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report Message
size_of.trade_report_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.cross_id

  index = index + size_of.trade_condition

  index = index + size_of.price_long

  index = index + size_of.volume

  return index
end

-- Display: Trade Report Message
display.trade_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Message
dissect.trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = dissect.cross_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index, trade_condition = dissect.trade_condition(buffer, index, packet, parent)

  -- Price Long: 4 Byte Unsigned Fixed Width Integer
  index, price_long = dissect.price_long(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
dissect.trade_report_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_message then
    local length = size_of.trade_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_report_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.trade_report_message, range, display)
  end

  return dissect.trade_report_message_fields(buffer, offset, packet, parent)
end

-- Size: Size Long
size_of.size_long = 4

-- Display: Size Long
display.size_long = function(value)
  return "Size Long: "..value
end

-- Dissect: Size Long
dissect.size_long = function(buffer, offset, packet, parent)
  local length = size_of.size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.size_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.size_long, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
size_of.quote_condition = 1

-- Display: Quote Condition
display.quote_condition = function(value)
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
dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Ask Update Long Form Message
size_of.best_ask_update_long_form_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.quote_condition

  index = index + size_of.price_long

  index = index + size_of.size_long

  return index
end

-- Display: Best Ask Update Long Form Message
display.best_ask_update_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Ask Update Long Form Message
dissect.best_ask_update_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = dissect.quote_condition(buffer, index, packet, parent)

  -- Price Long: 4 Byte Unsigned Fixed Width Integer
  index, price_long = dissect.price_long(buffer, index, packet, parent)

  -- Size Long: 4 Byte Unsigned Fixed Width Integer
  index, size_long = dissect.size_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Long Form Message
dissect.best_ask_update_long_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_ask_update_long_form_message then
    local length = size_of.best_ask_update_long_form_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_ask_update_long_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_ask_update_long_form_message, range, display)
  end

  return dissect.best_ask_update_long_form_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Best Bid Update Long Form Message
size_of.best_bid_update_long_form_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.quote_condition

  index = index + size_of.price_long

  index = index + size_of.size_long

  return index
end

-- Display: Best Bid Update Long Form Message
display.best_bid_update_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Bid Update Long Form Message
dissect.best_bid_update_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = dissect.quote_condition(buffer, index, packet, parent)

  -- Price Long: 4 Byte Unsigned Fixed Width Integer
  index, price_long = dissect.price_long(buffer, index, packet, parent)

  -- Size Long: 4 Byte Unsigned Fixed Width Integer
  index, size_long = dissect.size_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Long Form Message
dissect.best_bid_update_long_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_bid_update_long_form_message then
    local length = size_of.best_bid_update_long_form_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_bid_update_long_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_bid_update_long_form_message, range, display)
  end

  return dissect.best_bid_update_long_form_message_fields(buffer, offset, packet, parent)
end

-- Size: Size
size_of.size = 2

-- Display: Size
display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
dissect.size = function(buffer, offset, packet, parent)
  local length = size_of.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 2

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Ask Update Short Form Message
size_of.best_ask_update_short_form_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.quote_condition

  index = index + size_of.price

  index = index + size_of.size

  return index
end

-- Display: Best Ask Update Short Form Message
display.best_ask_update_short_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Ask Update Short Form Message
dissect.best_ask_update_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = dissect.quote_condition(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Short Form Message
dissect.best_ask_update_short_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_ask_update_short_form_message then
    local length = size_of.best_ask_update_short_form_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_ask_update_short_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_ask_update_short_form_message, range, display)
  end

  return dissect.best_ask_update_short_form_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Best Bid Update Short Form Message
size_of.best_bid_update_short_form_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.quote_condition

  index = index + size_of.price

  index = index + size_of.size

  return index
end

-- Display: Best Bid Update Short Form Message
display.best_bid_update_short_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Bid Update Short Form Message
dissect.best_bid_update_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = dissect.quote_condition(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Short Form Message
dissect.best_bid_update_short_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_bid_update_short_form_message then
    local length = size_of.best_bid_update_short_form_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_bid_update_short_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_bid_update_short_form_message, range, display)
  end

  return dissect.best_bid_update_short_form_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Size Long
size_of.ask_size_long = 4

-- Display: Ask Size Long
display.ask_size_long = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
dissect.ask_size_long = function(buffer, offset, packet, parent)
  local length = size_of.ask_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ask_size_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Long
size_of.ask_price_long = 4

-- Display: Ask Price Long
display.ask_price_long = function(value)
  return "Ask Price Long: "..value
end

-- Dissect: Ask Price Long
dissect.ask_price_long = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ask_price_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Long
size_of.bid_size_long = 4

-- Display: Bid Size Long
display.bid_size_long = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
dissect.bid_size_long = function(buffer, offset, packet, parent)
  local length = size_of.bid_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_size_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Long
size_of.bid_price_long = 4

-- Display: Bid Price Long
display.bid_price_long = function(value)
  return "Bid Price Long: "..value
end

-- Dissect: Bid Price Long
dissect.bid_price_long = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_price_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Bid And Ask Update Long Form Message
size_of.best_bid_and_ask_update_long_form_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.quote_condition

  index = index + size_of.bid_price_long

  index = index + size_of.bid_size_long

  index = index + size_of.ask_price_long

  index = index + size_of.ask_size_long

  return index
end

-- Display: Best Bid And Ask Update Long Form Message
display.best_bid_and_ask_update_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Long Form Message
dissect.best_bid_and_ask_update_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = dissect.quote_condition(buffer, index, packet, parent)

  -- Bid Price Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_price_long = dissect.bid_price_long(buffer, index, packet, parent)

  -- Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_long = dissect.bid_size_long(buffer, index, packet, parent)

  -- Ask Price Long: 4 Byte Unsigned Fixed Width Integer
  index, ask_price_long = dissect.ask_price_long(buffer, index, packet, parent)

  -- Ask Size Long: 4 Byte Unsigned Fixed Width Integer
  index, ask_size_long = dissect.ask_size_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Long Form Message
dissect.best_bid_and_ask_update_long_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_bid_and_ask_update_long_form_message then
    local length = size_of.best_bid_and_ask_update_long_form_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_bid_and_ask_update_long_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_long_form_message, range, display)
  end

  return dissect.best_bid_and_ask_update_long_form_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Size
size_of.ask_size = 2

-- Display: Ask Size
display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
dissect.ask_size = function(buffer, offset, packet, parent)
  local length = size_of.ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
size_of.ask_price = 2

-- Display: Ask Price
display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
dissect.ask_price = function(buffer, offset, packet, parent)
  local length = size_of.ask_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 2

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
size_of.bid_price = 2

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local length = size_of.bid_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Bid And Ask Update Short Form Message
size_of.best_bid_and_ask_update_short_form_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.quote_condition

  index = index + size_of.bid_price

  index = index + size_of.bid_size

  index = index + size_of.ask_price

  index = index + size_of.ask_size

  return index
end

-- Display: Best Bid And Ask Update Short Form Message
display.best_bid_and_ask_update_short_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Short Form Message
dissect.best_bid_and_ask_update_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = dissect.quote_condition(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Unsigned Fixed Width Integer
  index, ask_price = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Short Form Message
dissect.best_bid_and_ask_update_short_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_bid_and_ask_update_short_form_message then
    local length = size_of.best_bid_and_ask_update_short_form_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_bid_and_ask_update_short_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_short_form_message, range, display)
  end

  return dissect.best_bid_and_ask_update_short_form_message_fields(buffer, offset, packet, parent)
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
  local length = size_of.open_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.open_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Open Message
size_of.security_open_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.open_state

  return index
end

-- Display: Security Open Message
display.security_open_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Open Message
dissect.security_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
dissect.security_open_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_open_message then
    local length = size_of.security_open_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_open_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.security_open_message, range, display)
  end

  return dissect.security_open_message_fields(buffer, offset, packet, parent)
end

-- Size: Current Trading State
size_of.current_trading_state = 1

-- Display: Current Trading State
display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halt (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.current_trading_state

  return index
end

-- Display: Trading Action Message
display.trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Action Message
dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
dissect.trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_action_message then
    local length = size_of.trading_action_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.trading_action_message, range, display)
  end

  return dissect.trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Minimum Price Variation
size_of.minimum_price_variation = 1

-- Display: Minimum Price Variation
display.minimum_price_variation = function(value)
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
dissect.minimum_price_variation = function(buffer, offset, packet, parent)
  local length = size_of.minimum_price_variation
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.minimum_price_variation(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.minimum_price_variation, range, value, display)

  return offset + length, value
end

-- Size: Tradable
size_of.tradable = 1

-- Display: Tradable
display.tradable = function(value)
  if value == "Y" then
    return "Tradable: Yes (Y)"
  end
  if value == "N" then
    return "Tradable: No (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
dissect.tradable = function(buffer, offset, packet, parent)
  local length = size_of.tradable
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tradable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.tradable, range, value, display)

  return offset + length, value
end

-- Size: Option Closing Type
size_of.option_closing_type = 1

-- Display: Option Closing Type
display.option_closing_type = function(value)
  return "Option Closing Type: "..value
end

-- Dissect: Option Closing Type
dissect.option_closing_type = function(buffer, offset, packet, parent)
  local length = size_of.option_closing_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.option_closing_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.option_closing_type, range, value, display)

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
  local length = size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Source
size_of.source = 1

-- Display: Source
display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
dissect.source = function(buffer, offset, packet, parent)
  local length = size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.source, range, value, display)

  return offset + length, value
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

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local length = size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
size_of.strike_price = 4

-- Display: Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local length = size_of.strike_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Day
size_of.expiration_day = 1

-- Display: Expiration Day
display.expiration_day = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
dissect.expiration_day = function(buffer, offset, packet, parent)
  local length = size_of.expiration_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.expiration_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
size_of.expiration_month = 1

-- Display: Expiration Month
display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
size_of.expiration_year = 1

-- Display: Expiration Year
display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
size_of.security_symbol = 6

-- Display: Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = size_of.security_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Directory Message
size_of.options_directory_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.option_id

  index = index + size_of.security_symbol

  index = index + size_of.expiration_year

  index = index + size_of.expiration_month

  index = index + size_of.expiration_day

  index = index + size_of.strike_price

  index = index + size_of.option_type

  index = index + size_of.source

  index = index + size_of.underlying_symbol

  index = index + size_of.option_closing_type

  index = index + size_of.tradable

  index = index + size_of.minimum_price_variation

  return index
end

-- Display: Options Directory Message
display.options_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Directory Message
dissect.options_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = dissect.expiration_day(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Option Closing Type: 1 Byte Ascii String
  index, option_closing_type = dissect.option_closing_type(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = dissect.tradable(buffer, index, packet, parent)

  -- Minimum Price Variation: 1 Byte Ascii String Enum with 3 values
  index, minimum_price_variation = dissect.minimum_price_variation(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
dissect.options_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.options_directory_message then
    local length = size_of.options_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.options_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.options_directory_message, range, display)
  end

  return dissect.options_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Subversion
size_of.subversion = 1

-- Display: Subversion
display.subversion = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
dissect.subversion = function(buffer, offset, packet, parent)
  local length = size_of.subversion
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.subversion(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.subversion, range, value, display)

  return offset + length, value
end

-- Size: Version
size_of.version = 1

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.version, range, value, display)

  return offset + length, value
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
dissect.event_code = function(buffer, offset, packet, parent)
  local length = size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanoseconds

  index = index + size_of.event_code

  index = index + size_of.version

  index = index + size_of.subversion

  return index
end

-- Display: System Event Message
display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = dissect.event_code(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = dissect.version(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index, subversion = dissect.subversion(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Size: Seconds
size_of.seconds = 4

-- Display: Seconds
display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
dissect.seconds = function(buffer, offset, packet, parent)
  local length = size_of.seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.seconds(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timestamp Message
size_of.timestamp_message = function(buffer, offset)
  local index = 0

  index = index + size_of.seconds

  return index
end

-- Display: Timestamp Message
display.timestamp_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Timestamp Message
dissect.timestamp_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp Message
dissect.timestamp_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.timestamp_message then
    local length = size_of.timestamp_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.timestamp_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.timestamp_message, range, display)
  end

  return dissect.timestamp_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_type)
  -- Size of Timestamp Message
  if message_type == "T" then
    return size_of.timestamp_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return size_of.system_event_message(buffer, offset)
  end
  -- Size of Options Directory Message
  if message_type == "D" then
    return size_of.options_directory_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return size_of.trading_action_message(buffer, offset)
  end
  -- Size of Security Open Message
  if message_type == "O" then
    return size_of.security_open_message(buffer, offset)
  end
  -- Size of Best Bid And Ask Update Short Form Message
  if message_type == "q" then
    return size_of.best_bid_and_ask_update_short_form_message(buffer, offset)
  end
  -- Size of Best Bid And Ask Update Long Form Message
  if message_type == "Q" then
    return size_of.best_bid_and_ask_update_long_form_message(buffer, offset)
  end
  -- Size of Best Bid Update Short Form Message
  if message_type == "b" then
    return size_of.best_bid_update_short_form_message(buffer, offset)
  end
  -- Size of Best Ask Update Short Form Message
  if message_type == "a" then
    return size_of.best_ask_update_short_form_message(buffer, offset)
  end
  -- Size of Best Bid Update Long Form Message
  if message_type == "B" then
    return size_of.best_bid_update_long_form_message(buffer, offset)
  end
  -- Size of Best Ask Update Long Form Message
  if message_type == "A" then
    return size_of.best_ask_update_long_form_message(buffer, offset)
  end
  -- Size of Trade Report Message
  if message_type == "R" then
    return size_of.trade_report_message(buffer, offset)
  end
  -- Size of Broken Trade Report Message
  if message_type == "X" then
    return size_of.broken_trade_report_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Message
  if message_type == "T" then
    return dissect.timestamp_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if message_type == "D" then
    return dissect.options_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if message_type == "O" then
    return dissect.security_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Short Form Message
  if message_type == "q" then
    return dissect.best_bid_and_ask_update_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Long Form Message
  if message_type == "Q" then
    return dissect.best_bid_and_ask_update_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Short Form Message
  if message_type == "b" then
    return dissect.best_bid_update_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Short Form Message
  if message_type == "a" then
    return dissect.best_ask_update_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Long Form Message
  if message_type == "B" then
    return dissect.best_bid_update_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Long Form Message
  if message_type == "A" then
    return dissect.best_ask_update_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "R" then
    return dissect.trade_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Report Message
  if message_type == "X" then
    return dissect.broken_trade_report_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.message_type, range, value, display)

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
  local length = size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.length

  index = index + size_of.message_type

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header(buffer, offset + index)

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
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.message, range, display)
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
  local length = size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.count, range, value, display)

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
  local length = size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
size_of.session = 10

-- Display: Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local length = size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.session

  index = index + size_of.sequence

  index = index + size_of.count

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_bx_options_topofmarket_itch_v1_2.init()
end

-- Dissector for Nasdaq Bx Options TopOfMarket Itch 1.2
function nasdaq_bx_options_topofmarket_itch_v1_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_bx_options_topofmarket_itch_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_bx_options_topofmarket_itch_v1_2, buffer(), nasdaq_bx_options_topofmarket_itch_v1_2.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_bx_options_topofmarket_itch_v1_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_bx_options_topofmarket_itch_v1_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Bx Options TopOfMarket Itch 1.2
local function nasdaq_bx_options_topofmarket_itch_v1_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_bx_options_topofmarket_itch_v1_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_bx_options_topofmarket_itch_v1_2
  nasdaq_bx_options_topofmarket_itch_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Bx Options TopOfMarket Itch 1.2
nasdaq_bx_options_topofmarket_itch_v1_2:register_heuristic("udp", nasdaq_bx_options_topofmarket_itch_v1_2_heuristic)

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
