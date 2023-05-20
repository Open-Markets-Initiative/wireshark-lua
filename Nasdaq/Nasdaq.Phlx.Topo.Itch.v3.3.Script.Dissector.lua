-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Phlx Topo Itch 3.3 Protocol
local nasdaq_phlx_topo_itch_v3_3 = Proto("Nasdaq.Phlx.Topo.Itch.v3.3.Lua", "Nasdaq Phlx Topo Itch 3.3")

-- Component Tables
local show = {}
local format = {}
local nasdaq_phlx_topo_itch_v3_3_display = {}
local nasdaq_phlx_topo_itch_v3_3_dissect = {}
local nasdaq_phlx_topo_itch_v3_3_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Phlx Topo Itch 3.3 Fields
nasdaq_phlx_topo_itch_v3_3.fields.ask_price_2 = ProtoField.new("Ask Price 2", "nasdaq.phlx.topo.itch.v3.3.askprice2", ftypes.UINT16)
nasdaq_phlx_topo_itch_v3_3.fields.ask_price_4 = ProtoField.new("Ask Price 4", "nasdaq.phlx.topo.itch.v3.3.askprice4", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.ask_size_2 = ProtoField.new("Ask Size 2", "nasdaq.phlx.topo.itch.v3.3.asksize2", ftypes.UINT16)
nasdaq_phlx_topo_itch_v3_3.fields.ask_size_4 = ProtoField.new("Ask Size 4", "nasdaq.phlx.topo.itch.v3.3.asksize4", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.bid_price_2 = ProtoField.new("Bid Price 2", "nasdaq.phlx.topo.itch.v3.3.bidprice2", ftypes.UINT16)
nasdaq_phlx_topo_itch_v3_3.fields.bid_price_4 = ProtoField.new("Bid Price 4", "nasdaq.phlx.topo.itch.v3.3.bidprice4", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.bid_size_2 = ProtoField.new("Bid Size 2", "nasdaq.phlx.topo.itch.v3.3.bidsize2", ftypes.UINT16)
nasdaq_phlx_topo_itch_v3_3.fields.bid_size_4 = ProtoField.new("Bid Size 4", "nasdaq.phlx.topo.itch.v3.3.bidsize4", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.broken_trade_report_message = ProtoField.new("Broken Trade Report Message", "nasdaq.phlx.topo.itch.v3.3.brokentradereportmessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.count = ProtoField.new("Count", "nasdaq.phlx.topo.itch.v3.3.count", ftypes.UINT16)
nasdaq_phlx_topo_itch_v3_3.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.phlx.topo.itch.v3.3.crossid", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlx.topo.itch.v3.3.currenttradingstate", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlx.topo.itch.v3.3.eventcode", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.phlx.topo.itch.v3.3.expirationday", ftypes.UINT8)
nasdaq_phlx_topo_itch_v3_3.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.phlx.topo.itch.v3.3.expirationmonth", ftypes.UINT8)
nasdaq_phlx_topo_itch_v3_3.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.phlx.topo.itch.v3.3.expirationyear", ftypes.UINT8)
nasdaq_phlx_topo_itch_v3_3.fields.length = ProtoField.new("Length", "nasdaq.phlx.topo.itch.v3.3.length", ftypes.UINT16)
nasdaq_phlx_topo_itch_v3_3.fields.long_best_ask_update_message = ProtoField.new("Long Best Ask Update Message", "nasdaq.phlx.topo.itch.v3.3.longbestaskupdatemessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.long_best_bid_and_ask_update_message = ProtoField.new("Long Best Bid And Ask Update Message", "nasdaq.phlx.topo.itch.v3.3.longbestbidandaskupdatemessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.long_best_bid_update_message = ProtoField.new("Long Best Bid Update Message", "nasdaq.phlx.topo.itch.v3.3.longbestbidupdatemessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.message = ProtoField.new("Message", "nasdaq.phlx.topo.itch.v3.3.message", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlx.topo.itch.v3.3.messageheader", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlx.topo.itch.v3.3.messagetype", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.mpv = ProtoField.new("Mpv", "nasdaq.phlx.topo.itch.v3.3.mpv", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.phlx.topo.itch.v3.3.nanoseconds", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.open_state = ProtoField.new("Open State", "nasdaq.phlx.topo.itch.v3.3.openstate", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.phlx.topo.itch.v3.3.optionclosingtype", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlx.topo.itch.v3.3.optionid", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlx.topo.itch.v3.3.optiontype", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.phlx.topo.itch.v3.3.optionsdirectorymessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.original_cross_id = ProtoField.new("Original Cross Id", "nasdaq.phlx.topo.itch.v3.3.originalcrossid", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.original_price = ProtoField.new("Original Price", "nasdaq.phlx.topo.itch.v3.3.originalprice", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.original_volume = ProtoField.new("Original Volume", "nasdaq.phlx.topo.itch.v3.3.originalvolume", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.packet = ProtoField.new("Packet", "nasdaq.phlx.topo.itch.v3.3.packet", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlx.topo.itch.v3.3.packetheader", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.payload = ProtoField.new("Payload", "nasdaq.phlx.topo.itch.v3.3.payload", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.price_2 = ProtoField.new("Price 2", "nasdaq.phlx.topo.itch.v3.3.price2", ftypes.UINT16)
nasdaq_phlx_topo_itch_v3_3.fields.price_4 = ProtoField.new("Price 4", "nasdaq.phlx.topo.itch.v3.3.price4", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.phlx.topo.itch.v3.3.quotecondition", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.second = ProtoField.new("Second", "nasdaq.phlx.topo.itch.v3.3.second", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.security_open_closed_message = ProtoField.new("Security Open Closed Message", "nasdaq.phlx.topo.itch.v3.3.securityopenclosedmessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlx.topo.itch.v3.3.securitysymbol", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.sequence = ProtoField.new("Sequence", "nasdaq.phlx.topo.itch.v3.3.sequence", ftypes.UINT64)
nasdaq_phlx_topo_itch_v3_3.fields.session = ProtoField.new("Session", "nasdaq.phlx.topo.itch.v3.3.session", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.short_best_ask_update_message = ProtoField.new("Short Best Ask Update Message", "nasdaq.phlx.topo.itch.v3.3.shortbestaskupdatemessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.short_best_bid_and_ask_update_message = ProtoField.new("Short Best Bid And Ask Update Message", "nasdaq.phlx.topo.itch.v3.3.shortbestbidandaskupdatemessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.short_best_bid_update_message = ProtoField.new("Short Best Bid Update Message", "nasdaq.phlx.topo.itch.v3.3.shortbestbidupdatemessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.size_2 = ProtoField.new("Size 2", "nasdaq.phlx.topo.itch.v3.3.size2", ftypes.UINT16)
nasdaq_phlx_topo_itch_v3_3.fields.size_4 = ProtoField.new("Size 4", "nasdaq.phlx.topo.itch.v3.3.size4", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.source = ProtoField.new("Source", "nasdaq.phlx.topo.itch.v3.3.source", ftypes.UINT8)
nasdaq_phlx_topo_itch_v3_3.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.phlx.topo.itch.v3.3.strikeprice", ftypes.UINT32)
nasdaq_phlx_topo_itch_v3_3.fields.subversion = ProtoField.new("Subversion", "nasdaq.phlx.topo.itch.v3.3.subversion", ftypes.UINT8)
nasdaq_phlx_topo_itch_v3_3.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlx.topo.itch.v3.3.systemeventmessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.timestamp_message = ProtoField.new("Timestamp Message", "nasdaq.phlx.topo.itch.v3.3.timestampmessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.tradable = ProtoField.new("Tradable", "nasdaq.phlx.topo.itch.v3.3.tradable", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.phlx.topo.itch.v3.3.tradecondition", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.phlx.topo.itch.v3.3.tradereportmessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.phlx.topo.itch.v3.3.tradingactionmessage", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlx.topo.itch.v3.3.underlyingsymbol", ftypes.STRING)
nasdaq_phlx_topo_itch_v3_3.fields.version = ProtoField.new("Version", "nasdaq.phlx.topo.itch.v3.3.version", ftypes.UINT8)
nasdaq_phlx_topo_itch_v3_3.fields.volume = ProtoField.new("Volume", "nasdaq.phlx.topo.itch.v3.3.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Phlx Topo Itch 3.3 Element Dissection Options
show.broken_trade_report_message = true
show.long_best_ask_update_message = true
show.long_best_bid_and_ask_update_message = true
show.long_best_bid_update_message = true
show.message = true
show.message_header = true
show.options_directory_message = true
show.packet = true
show.packet_header = true
show.security_open_closed_message = true
show.short_best_ask_update_message = true
show.short_best_bid_and_ask_update_message = true
show.short_best_bid_update_message = true
show.system_event_message = true
show.timestamp_message = true
show.trade_report_message = true
show.trading_action_message = true
show.payload = false

-- Register Nasdaq Phlx Topo Itch 3.3 Show Options
nasdaq_phlx_topo_itch_v3_3.prefs.show_broken_trade_report_message = Pref.bool("Show Broken Trade Report Message", show.broken_trade_report_message, "Parse and add Broken Trade Report Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_long_best_ask_update_message = Pref.bool("Show Long Best Ask Update Message", show.long_best_ask_update_message, "Parse and add Long Best Ask Update Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_long_best_bid_and_ask_update_message = Pref.bool("Show Long Best Bid And Ask Update Message", show.long_best_bid_and_ask_update_message, "Parse and add Long Best Bid And Ask Update Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_long_best_bid_update_message = Pref.bool("Show Long Best Bid Update Message", show.long_best_bid_update_message, "Parse and add Long Best Bid Update Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_options_directory_message = Pref.bool("Show Options Directory Message", show.options_directory_message, "Parse and add Options Directory Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_security_open_closed_message = Pref.bool("Show Security Open Closed Message", show.security_open_closed_message, "Parse and add Security Open Closed Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_short_best_ask_update_message = Pref.bool("Show Short Best Ask Update Message", show.short_best_ask_update_message, "Parse and add Short Best Ask Update Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_short_best_bid_and_ask_update_message = Pref.bool("Show Short Best Bid And Ask Update Message", show.short_best_bid_and_ask_update_message, "Parse and add Short Best Bid And Ask Update Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_short_best_bid_update_message = Pref.bool("Show Short Best Bid Update Message", show.short_best_bid_update_message, "Parse and add Short Best Bid Update Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_timestamp_message = Pref.bool("Show Timestamp Message", show.timestamp_message, "Parse and add Timestamp Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_phlx_topo_itch_v3_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_phlx_topo_itch_v3_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.broken_trade_report_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_broken_trade_report_message then
    show.broken_trade_report_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_broken_trade_report_message
    changed = true
  end
  if show.long_best_ask_update_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_long_best_ask_update_message then
    show.long_best_ask_update_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_long_best_ask_update_message
    changed = true
  end
  if show.long_best_bid_and_ask_update_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_long_best_bid_and_ask_update_message then
    show.long_best_bid_and_ask_update_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_long_best_bid_and_ask_update_message
    changed = true
  end
  if show.long_best_bid_update_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_long_best_bid_update_message then
    show.long_best_bid_update_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_long_best_bid_update_message
    changed = true
  end
  if show.message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_message then
    show.message = nasdaq_phlx_topo_itch_v3_3.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_message_header then
    show.message_header = nasdaq_phlx_topo_itch_v3_3.prefs.show_message_header
    changed = true
  end
  if show.options_directory_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_options_directory_message then
    show.options_directory_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_options_directory_message
    changed = true
  end
  if show.packet ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_packet then
    show.packet = nasdaq_phlx_topo_itch_v3_3.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_packet_header then
    show.packet_header = nasdaq_phlx_topo_itch_v3_3.prefs.show_packet_header
    changed = true
  end
  if show.security_open_closed_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_security_open_closed_message then
    show.security_open_closed_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_security_open_closed_message
    changed = true
  end
  if show.short_best_ask_update_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_short_best_ask_update_message then
    show.short_best_ask_update_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_short_best_ask_update_message
    changed = true
  end
  if show.short_best_bid_and_ask_update_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_short_best_bid_and_ask_update_message then
    show.short_best_bid_and_ask_update_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_short_best_bid_and_ask_update_message
    changed = true
  end
  if show.short_best_bid_update_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_short_best_bid_update_message then
    show.short_best_bid_update_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_short_best_bid_update_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_system_event_message then
    show.system_event_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_system_event_message
    changed = true
  end
  if show.timestamp_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_timestamp_message then
    show.timestamp_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_timestamp_message
    changed = true
  end
  if show.trade_report_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_trade_report_message then
    show.trade_report_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_phlx_topo_itch_v3_3.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_phlx_topo_itch_v3_3.prefs.show_payload then
    show.payload = nasdaq_phlx_topo_itch_v3_3.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Phlx Topo Itch 3.3
-----------------------------------------------------------------------

-- Size: Original Volume
nasdaq_phlx_topo_itch_v3_3_size_of.original_volume = 4

-- Display: Original Volume
nasdaq_phlx_topo_itch_v3_3_display.original_volume = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nasdaq_phlx_topo_itch_v3_3_dissect.original_volume = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.original_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.original_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Size: Original Price
nasdaq_phlx_topo_itch_v3_3_size_of.original_price = 4

-- Display: Original Price
nasdaq_phlx_topo_itch_v3_3_display.original_price = function(value)
  return "Original Price: "..value
end

-- Dissect: Original Price
nasdaq_phlx_topo_itch_v3_3_dissect.original_price = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.original_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.original_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.original_price, range, value, display)

  return offset + length, value
end

-- Size: Original Cross Id
nasdaq_phlx_topo_itch_v3_3_size_of.original_cross_id = 4

-- Display: Original Cross Id
nasdaq_phlx_topo_itch_v3_3_display.original_cross_id = function(value)
  return "Original Cross Id: "..value
end

-- Dissect: Original Cross Id
nasdaq_phlx_topo_itch_v3_3_dissect.original_cross_id = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.original_cross_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.original_cross_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.original_cross_id, range, value, display)

  return offset + length, value
end

-- Size: Option Id
nasdaq_phlx_topo_itch_v3_3_size_of.option_id = 4

-- Display: Option Id
nasdaq_phlx_topo_itch_v3_3_display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_phlx_topo_itch_v3_3_dissect.option_id = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.option_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.option_id, range, value, display)

  return offset + length, value
end

-- Size: Nanoseconds
nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds = 4

-- Display: Nanoseconds
nasdaq_phlx_topo_itch_v3_3_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Report Message
nasdaq_phlx_topo_itch_v3_3_size_of.broken_trade_report_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.original_cross_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.original_price

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.original_volume

  return index
end

-- Display: Broken Trade Report Message
nasdaq_phlx_topo_itch_v3_3_display.broken_trade_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Report Message
nasdaq_phlx_topo_itch_v3_3_dissect.broken_trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Original Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, original_cross_id = nasdaq_phlx_topo_itch_v3_3_dissect.original_cross_id(buffer, index, packet, parent)

  -- Original Price: 4 Byte Unsigned Fixed Width Integer
  index, original_price = nasdaq_phlx_topo_itch_v3_3_dissect.original_price(buffer, index, packet, parent)

  -- Original Volume: 4 Byte Unsigned Fixed Width Integer
  index, original_volume = nasdaq_phlx_topo_itch_v3_3_dissect.original_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Report Message
nasdaq_phlx_topo_itch_v3_3_dissect.broken_trade_report_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_report_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.broken_trade_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.broken_trade_report_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.broken_trade_report_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.broken_trade_report_message_fields(buffer, offset, packet, parent)
end

-- Size: Volume
nasdaq_phlx_topo_itch_v3_3_size_of.volume = 4

-- Display: Volume
nasdaq_phlx_topo_itch_v3_3_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_phlx_topo_itch_v3_3_dissect.volume = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price 4
nasdaq_phlx_topo_itch_v3_3_size_of.price_4 = 4

-- Display: Price 4
nasdaq_phlx_topo_itch_v3_3_display.price_4 = function(value)
  return "Price 4: "..value
end

-- Dissect: Price 4
nasdaq_phlx_topo_itch_v3_3_dissect.price_4 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.price_4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.price_4(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.price_4, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition
nasdaq_phlx_topo_itch_v3_3_size_of.trade_condition = 1

-- Display: Trade Condition
nasdaq_phlx_topo_itch_v3_3_display.trade_condition = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_phlx_topo_itch_v3_3_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Cross Id
nasdaq_phlx_topo_itch_v3_3_size_of.cross_id = 4

-- Display: Cross Id
nasdaq_phlx_topo_itch_v3_3_display.cross_id = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nasdaq_phlx_topo_itch_v3_3_dissect.cross_id = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.cross_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.cross_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report Message
nasdaq_phlx_topo_itch_v3_3_size_of.trade_report_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.cross_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.trade_condition

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.price_4

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.volume

  return index
end

-- Display: Trade Report Message
nasdaq_phlx_topo_itch_v3_3_display.trade_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_phlx_topo_itch_v3_3_dissect.trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nasdaq_phlx_topo_itch_v3_3_dissect.cross_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index, trade_condition = nasdaq_phlx_topo_itch_v3_3_dissect.trade_condition(buffer, index, packet, parent)

  -- Price 4: 4 Byte Unsigned Fixed Width Integer
  index, price_4 = nasdaq_phlx_topo_itch_v3_3_dissect.price_4(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlx_topo_itch_v3_3_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_phlx_topo_itch_v3_3_dissect.trade_report_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.trade_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.trade_report_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.trade_report_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.trade_report_message_fields(buffer, offset, packet, parent)
end

-- Size: Size 4
nasdaq_phlx_topo_itch_v3_3_size_of.size_4 = 4

-- Display: Size 4
nasdaq_phlx_topo_itch_v3_3_display.size_4 = function(value)
  return "Size 4: "..value
end

-- Dissect: Size 4
nasdaq_phlx_topo_itch_v3_3_dissect.size_4 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.size_4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.size_4(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.size_4, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
nasdaq_phlx_topo_itch_v3_3_size_of.quote_condition = 1

-- Display: Quote Condition
nasdaq_phlx_topo_itch_v3_3_display.quote_condition = function(value)
  if value == "" then
    return "Quote Condition: Regular Quoteautox Eligible (<whitespace>)"
  end
  if value == "F" then
    return "Quote Condition: Non Firm Quote (F)"
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

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_phlx_topo_itch_v3_3_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Calculate size of: Long Best Bid Update Message
nasdaq_phlx_topo_itch_v3_3_size_of.long_best_bid_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.quote_condition

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.price_4

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.size_4

  return index
end

-- Display: Long Best Bid Update Message
nasdaq_phlx_topo_itch_v3_3_display.long_best_bid_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Best Bid Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.long_best_bid_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_phlx_topo_itch_v3_3_dissect.quote_condition(buffer, index, packet, parent)

  -- Price 4: 4 Byte Unsigned Fixed Width Integer
  index, price_4 = nasdaq_phlx_topo_itch_v3_3_dissect.price_4(buffer, index, packet, parent)

  -- Size 4: 4 Byte Unsigned Fixed Width Integer
  index, size_4 = nasdaq_phlx_topo_itch_v3_3_dissect.size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Best Bid Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.long_best_bid_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_best_bid_update_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.long_best_bid_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.long_best_bid_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.long_best_bid_update_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.long_best_bid_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Long Best Ask Update Message
nasdaq_phlx_topo_itch_v3_3_size_of.long_best_ask_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.quote_condition

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.price_4

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.size_4

  return index
end

-- Display: Long Best Ask Update Message
nasdaq_phlx_topo_itch_v3_3_display.long_best_ask_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Best Ask Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.long_best_ask_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_phlx_topo_itch_v3_3_dissect.quote_condition(buffer, index, packet, parent)

  -- Price 4: 4 Byte Unsigned Fixed Width Integer
  index, price_4 = nasdaq_phlx_topo_itch_v3_3_dissect.price_4(buffer, index, packet, parent)

  -- Size 4: 4 Byte Unsigned Fixed Width Integer
  index, size_4 = nasdaq_phlx_topo_itch_v3_3_dissect.size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Best Ask Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.long_best_ask_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_best_ask_update_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.long_best_ask_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.long_best_ask_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.long_best_ask_update_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.long_best_ask_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Size 2
nasdaq_phlx_topo_itch_v3_3_size_of.size_2 = 2

-- Display: Size 2
nasdaq_phlx_topo_itch_v3_3_display.size_2 = function(value)
  return "Size 2: "..value
end

-- Dissect: Size 2
nasdaq_phlx_topo_itch_v3_3_dissect.size_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.size_2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.size_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.size_2, range, value, display)

  return offset + length, value
end

-- Size: Price 2
nasdaq_phlx_topo_itch_v3_3_size_of.price_2 = 2

-- Display: Price 2
nasdaq_phlx_topo_itch_v3_3_display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nasdaq_phlx_topo_itch_v3_3_dissect.price_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.price_2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.price_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.price_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Short Best Bid Update Message
nasdaq_phlx_topo_itch_v3_3_size_of.short_best_bid_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.quote_condition

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.price_2

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.size_2

  return index
end

-- Display: Short Best Bid Update Message
nasdaq_phlx_topo_itch_v3_3_display.short_best_bid_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Best Bid Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.short_best_bid_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_phlx_topo_itch_v3_3_dissect.quote_condition(buffer, index, packet, parent)

  -- Price 2: 2 Byte Unsigned Fixed Width Integer
  index, price_2 = nasdaq_phlx_topo_itch_v3_3_dissect.price_2(buffer, index, packet, parent)

  -- Size 2: 2 Byte Unsigned Fixed Width Integer
  index, size_2 = nasdaq_phlx_topo_itch_v3_3_dissect.size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Best Bid Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.short_best_bid_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_best_bid_update_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.short_best_bid_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.short_best_bid_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.short_best_bid_update_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.short_best_bid_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Short Best Ask Update Message
nasdaq_phlx_topo_itch_v3_3_size_of.short_best_ask_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.quote_condition

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.price_2

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.size_2

  return index
end

-- Display: Short Best Ask Update Message
nasdaq_phlx_topo_itch_v3_3_display.short_best_ask_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Best Ask Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.short_best_ask_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_phlx_topo_itch_v3_3_dissect.quote_condition(buffer, index, packet, parent)

  -- Price 2: 2 Byte Unsigned Fixed Width Integer
  index, price_2 = nasdaq_phlx_topo_itch_v3_3_dissect.price_2(buffer, index, packet, parent)

  -- Size 2: 2 Byte Unsigned Fixed Width Integer
  index, size_2 = nasdaq_phlx_topo_itch_v3_3_dissect.size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Best Ask Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.short_best_ask_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_best_ask_update_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.short_best_ask_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.short_best_ask_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.short_best_ask_update_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.short_best_ask_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Size 4
nasdaq_phlx_topo_itch_v3_3_size_of.ask_size_4 = 4

-- Display: Ask Size 4
nasdaq_phlx_topo_itch_v3_3_display.ask_size_4 = function(value)
  return "Ask Size 4: "..value
end

-- Dissect: Ask Size 4
nasdaq_phlx_topo_itch_v3_3_dissect.ask_size_4 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.ask_size_4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.ask_size_4(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.ask_size_4, range, value, display)

  return offset + length, value
end

-- Size: Ask Price 4
nasdaq_phlx_topo_itch_v3_3_size_of.ask_price_4 = 4

-- Display: Ask Price 4
nasdaq_phlx_topo_itch_v3_3_display.ask_price_4 = function(value)
  return "Ask Price 4: "..value
end

-- Dissect: Ask Price 4
nasdaq_phlx_topo_itch_v3_3_dissect.ask_price_4 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.ask_price_4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.ask_price_4(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.ask_price_4, range, value, display)

  return offset + length, value
end

-- Size: Bid Size 4
nasdaq_phlx_topo_itch_v3_3_size_of.bid_size_4 = 4

-- Display: Bid Size 4
nasdaq_phlx_topo_itch_v3_3_display.bid_size_4 = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
nasdaq_phlx_topo_itch_v3_3_dissect.bid_size_4 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.bid_size_4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.bid_size_4(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Size: Bid Price 4
nasdaq_phlx_topo_itch_v3_3_size_of.bid_price_4 = 4

-- Display: Bid Price 4
nasdaq_phlx_topo_itch_v3_3_display.bid_price_4 = function(value)
  return "Bid Price 4: "..value
end

-- Dissect: Bid Price 4
nasdaq_phlx_topo_itch_v3_3_dissect.bid_price_4 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.bid_price_4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.bid_price_4(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.bid_price_4, range, value, display)

  return offset + length, value
end

-- Calculate size of: Long Best Bid And Ask Update Message
nasdaq_phlx_topo_itch_v3_3_size_of.long_best_bid_and_ask_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.quote_condition

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.bid_price_4

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.bid_size_4

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.ask_price_4

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.ask_size_4

  return index
end

-- Display: Long Best Bid And Ask Update Message
nasdaq_phlx_topo_itch_v3_3_display.long_best_bid_and_ask_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Best Bid And Ask Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.long_best_bid_and_ask_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_phlx_topo_itch_v3_3_dissect.quote_condition(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Unsigned Fixed Width Integer
  index, bid_price_4 = nasdaq_phlx_topo_itch_v3_3_dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_4 = nasdaq_phlx_topo_itch_v3_3_dissect.bid_size_4(buffer, index, packet, parent)

  -- Ask Price 4: 4 Byte Unsigned Fixed Width Integer
  index, ask_price_4 = nasdaq_phlx_topo_itch_v3_3_dissect.ask_price_4(buffer, index, packet, parent)

  -- Ask Size 4: 4 Byte Unsigned Fixed Width Integer
  index, ask_size_4 = nasdaq_phlx_topo_itch_v3_3_dissect.ask_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Best Bid And Ask Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.long_best_bid_and_ask_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_best_bid_and_ask_update_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.long_best_bid_and_ask_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.long_best_bid_and_ask_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.long_best_bid_and_ask_update_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.long_best_bid_and_ask_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Size 2
nasdaq_phlx_topo_itch_v3_3_size_of.ask_size_2 = 2

-- Display: Ask Size 2
nasdaq_phlx_topo_itch_v3_3_display.ask_size_2 = function(value)
  return "Ask Size 2: "..value
end

-- Dissect: Ask Size 2
nasdaq_phlx_topo_itch_v3_3_dissect.ask_size_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.ask_size_2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.ask_size_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.ask_size_2, range, value, display)

  return offset + length, value
end

-- Size: Ask Price 2
nasdaq_phlx_topo_itch_v3_3_size_of.ask_price_2 = 2

-- Display: Ask Price 2
nasdaq_phlx_topo_itch_v3_3_display.ask_price_2 = function(value)
  return "Ask Price 2: "..value
end

-- Dissect: Ask Price 2
nasdaq_phlx_topo_itch_v3_3_dissect.ask_price_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.ask_price_2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.ask_price_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.ask_price_2, range, value, display)

  return offset + length, value
end

-- Size: Bid Size 2
nasdaq_phlx_topo_itch_v3_3_size_of.bid_size_2 = 2

-- Display: Bid Size 2
nasdaq_phlx_topo_itch_v3_3_display.bid_size_2 = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
nasdaq_phlx_topo_itch_v3_3_dissect.bid_size_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.bid_size_2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.bid_size_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Size: Bid Price 2
nasdaq_phlx_topo_itch_v3_3_size_of.bid_price_2 = 2

-- Display: Bid Price 2
nasdaq_phlx_topo_itch_v3_3_display.bid_price_2 = function(value)
  return "Bid Price 2: "..value
end

-- Dissect: Bid Price 2
nasdaq_phlx_topo_itch_v3_3_dissect.bid_price_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.bid_price_2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.bid_price_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.bid_price_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Short Best Bid And Ask Update Message
nasdaq_phlx_topo_itch_v3_3_size_of.short_best_bid_and_ask_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.quote_condition

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.bid_price_2

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.bid_size_2

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.ask_price_2

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.ask_size_2

  return index
end

-- Display: Short Best Bid And Ask Update Message
nasdaq_phlx_topo_itch_v3_3_display.short_best_bid_and_ask_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Best Bid And Ask Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.short_best_bid_and_ask_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nasdaq_phlx_topo_itch_v3_3_dissect.quote_condition(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Unsigned Fixed Width Integer
  index, bid_price_2 = nasdaq_phlx_topo_itch_v3_3_dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index, bid_size_2 = nasdaq_phlx_topo_itch_v3_3_dissect.bid_size_2(buffer, index, packet, parent)

  -- Ask Price 2: 2 Byte Unsigned Fixed Width Integer
  index, ask_price_2 = nasdaq_phlx_topo_itch_v3_3_dissect.ask_price_2(buffer, index, packet, parent)

  -- Ask Size 2: 2 Byte Unsigned Fixed Width Integer
  index, ask_size_2 = nasdaq_phlx_topo_itch_v3_3_dissect.ask_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Best Bid And Ask Update Message
nasdaq_phlx_topo_itch_v3_3_dissect.short_best_bid_and_ask_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_best_bid_and_ask_update_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.short_best_bid_and_ask_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.short_best_bid_and_ask_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.short_best_bid_and_ask_update_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.short_best_bid_and_ask_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Open State
nasdaq_phlx_topo_itch_v3_3_size_of.open_state = 1

-- Display: Open State
nasdaq_phlx_topo_itch_v3_3_display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open For Auto Execution (Y)"
  end
  if value == "N" then
    return "Open State: Closed For Auto Execution (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_phlx_topo_itch_v3_3_dissect.open_state = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.open_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.open_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Open Closed Message
nasdaq_phlx_topo_itch_v3_3_size_of.security_open_closed_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.open_state

  return index
end

-- Display: Security Open Closed Message
nasdaq_phlx_topo_itch_v3_3_display.security_open_closed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Open Closed Message
nasdaq_phlx_topo_itch_v3_3_dissect.security_open_closed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_phlx_topo_itch_v3_3_dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Closed Message
nasdaq_phlx_topo_itch_v3_3_dissect.security_open_closed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_open_closed_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.security_open_closed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.security_open_closed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.security_open_closed_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.security_open_closed_message_fields(buffer, offset, packet, parent)
end

-- Size: Current Trading State
nasdaq_phlx_topo_itch_v3_3_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_phlx_topo_itch_v3_3_display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_phlx_topo_itch_v3_3_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
nasdaq_phlx_topo_itch_v3_3_size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.current_trading_state

  return index
end

-- Display: Trading Action Message
nasdaq_phlx_topo_itch_v3_3_display.trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_phlx_topo_itch_v3_3_dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_phlx_topo_itch_v3_3_dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_phlx_topo_itch_v3_3_dissect.trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_action_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.trading_action_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.trading_action_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Mpv
nasdaq_phlx_topo_itch_v3_3_size_of.mpv = 1

-- Display: Mpv
nasdaq_phlx_topo_itch_v3_3_display.mpv = function(value)
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
nasdaq_phlx_topo_itch_v3_3_dissect.mpv = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.mpv
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.mpv(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Tradable
nasdaq_phlx_topo_itch_v3_3_size_of.tradable = 1

-- Display: Tradable
nasdaq_phlx_topo_itch_v3_3_display.tradable = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_phlx_topo_itch_v3_3_dissect.tradable = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.tradable
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.tradable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.tradable, range, value, display)

  return offset + length, value
end

-- Size: Option Closing Type
nasdaq_phlx_topo_itch_v3_3_size_of.option_closing_type = 1

-- Display: Option Closing Type
nasdaq_phlx_topo_itch_v3_3_display.option_closing_type = function(value)
  if value == "N" then
    return "Option Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Option Closing Type: Late (L)"
  end
  if value == "W" then
    return "Option Closing Type: Wco Early Closing (W)"
  end

  return "Option Closing Type: Unknown("..value..")"
end

-- Dissect: Option Closing Type
nasdaq_phlx_topo_itch_v3_3_dissect.option_closing_type = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.option_closing_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.option_closing_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
nasdaq_phlx_topo_itch_v3_3_size_of.underlying_symbol = 13

-- Display: Underlying Symbol
nasdaq_phlx_topo_itch_v3_3_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlx_topo_itch_v3_3_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Source
nasdaq_phlx_topo_itch_v3_3_size_of.source = 1

-- Display: Source
nasdaq_phlx_topo_itch_v3_3_display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_phlx_topo_itch_v3_3_dissect.source = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.source, range, value, display)

  return offset + length, value
end

-- Size: Option Type
nasdaq_phlx_topo_itch_v3_3_size_of.option_type = 1

-- Display: Option Type
nasdaq_phlx_topo_itch_v3_3_display.option_type = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlx_topo_itch_v3_3_dissect.option_type = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
nasdaq_phlx_topo_itch_v3_3_size_of.strike_price = 4

-- Display: Strike Price
nasdaq_phlx_topo_itch_v3_3_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nasdaq_phlx_topo_itch_v3_3_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.strike_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Day
nasdaq_phlx_topo_itch_v3_3_size_of.expiration_day = 1

-- Display: Expiration Day
nasdaq_phlx_topo_itch_v3_3_display.expiration_day = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_phlx_topo_itch_v3_3_dissect.expiration_day = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.expiration_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.expiration_day(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
nasdaq_phlx_topo_itch_v3_3_size_of.expiration_month = 1

-- Display: Expiration Month
nasdaq_phlx_topo_itch_v3_3_display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_phlx_topo_itch_v3_3_dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
nasdaq_phlx_topo_itch_v3_3_size_of.expiration_year = 1

-- Display: Expiration Year
nasdaq_phlx_topo_itch_v3_3_display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_phlx_topo_itch_v3_3_dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
nasdaq_phlx_topo_itch_v3_3_size_of.security_symbol = 6

-- Display: Security Symbol
nasdaq_phlx_topo_itch_v3_3_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlx_topo_itch_v3_3_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.security_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Directory Message
nasdaq_phlx_topo_itch_v3_3_size_of.options_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_id

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.security_symbol

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.expiration_year

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.expiration_month

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.expiration_day

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.strike_price

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_type

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.source

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.underlying_symbol

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.option_closing_type

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.tradable

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.mpv

  return index
end

-- Display: Options Directory Message
nasdaq_phlx_topo_itch_v3_3_display.options_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_phlx_topo_itch_v3_3_dissect.options_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlx_topo_itch_v3_3_dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_phlx_topo_itch_v3_3_dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_phlx_topo_itch_v3_3_dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_phlx_topo_itch_v3_3_dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = nasdaq_phlx_topo_itch_v3_3_dissect.expiration_day(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = nasdaq_phlx_topo_itch_v3_3_dissect.strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = nasdaq_phlx_topo_itch_v3_3_dissect.option_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_phlx_topo_itch_v3_3_dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_phlx_topo_itch_v3_3_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Option Closing Type: 1 Byte Ascii String Enum with 3 values
  index, option_closing_type = nasdaq_phlx_topo_itch_v3_3_dissect.option_closing_type(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = nasdaq_phlx_topo_itch_v3_3_dissect.tradable(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index, mpv = nasdaq_phlx_topo_itch_v3_3_dissect.mpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_phlx_topo_itch_v3_3_dissect.options_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.options_directory_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.options_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.options_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.options_directory_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.options_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Subversion
nasdaq_phlx_topo_itch_v3_3_size_of.subversion = 1

-- Display: Subversion
nasdaq_phlx_topo_itch_v3_3_display.subversion = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_phlx_topo_itch_v3_3_dissect.subversion = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.subversion
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.subversion(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.subversion, range, value, display)

  return offset + length, value
end

-- Size: Version
nasdaq_phlx_topo_itch_v3_3_size_of.version = 1

-- Display: Version
nasdaq_phlx_topo_itch_v3_3_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_phlx_topo_itch_v3_3_dissect.version = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.version(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Event Code
nasdaq_phlx_topo_itch_v3_3_size_of.event_code = 1

-- Display: Event Code
nasdaq_phlx_topo_itch_v3_3_display.event_code = function(value)
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
nasdaq_phlx_topo_itch_v3_3_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_phlx_topo_itch_v3_3_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.nanoseconds

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.event_code

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.version

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.subversion

  return index
end

-- Display: System Event Message
nasdaq_phlx_topo_itch_v3_3_display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlx_topo_itch_v3_3_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlx_topo_itch_v3_3_dissect.nanoseconds(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 8 values
  index, event_code = nasdaq_phlx_topo_itch_v3_3_dissect.event_code(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_phlx_topo_itch_v3_3_dissect.version(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index, subversion = nasdaq_phlx_topo_itch_v3_3_dissect.subversion(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlx_topo_itch_v3_3_dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.system_event_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Size: Second
nasdaq_phlx_topo_itch_v3_3_size_of.second = 4

-- Display: Second
nasdaq_phlx_topo_itch_v3_3_display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_phlx_topo_itch_v3_3_dissect.second = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.second
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.second(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.second, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timestamp Message
nasdaq_phlx_topo_itch_v3_3_size_of.timestamp_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.second

  return index
end

-- Display: Timestamp Message
nasdaq_phlx_topo_itch_v3_3_display.timestamp_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Timestamp Message
nasdaq_phlx_topo_itch_v3_3_dissect.timestamp_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index, second = nasdaq_phlx_topo_itch_v3_3_dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp Message
nasdaq_phlx_topo_itch_v3_3_dissect.timestamp_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.timestamp_message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.timestamp_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.timestamp_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.timestamp_message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.timestamp_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
nasdaq_phlx_topo_itch_v3_3_size_of.payload = function(buffer, offset, message_type)
  -- Size of Timestamp Message
  if message_type == "T" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.timestamp_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.system_event_message(buffer, offset)
  end
  -- Size of Options Directory Message
  if message_type == "D" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.options_directory_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.trading_action_message(buffer, offset)
  end
  -- Size of Security Open Closed Message
  if message_type == "O" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.security_open_closed_message(buffer, offset)
  end
  -- Size of Short Best Bid And Ask Update Message
  if message_type == "q" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.short_best_bid_and_ask_update_message(buffer, offset)
  end
  -- Size of Long Best Bid And Ask Update Message
  if message_type == "Q" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.long_best_bid_and_ask_update_message(buffer, offset)
  end
  -- Size of Short Best Ask Update Message
  if message_type == "a" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.short_best_ask_update_message(buffer, offset)
  end
  -- Size of Short Best Bid Update Message
  if message_type == "b" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.short_best_bid_update_message(buffer, offset)
  end
  -- Size of Long Best Ask Update Message
  if message_type == "A" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.long_best_ask_update_message(buffer, offset)
  end
  -- Size of Long Best Bid Update Message
  if message_type == "B" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.long_best_bid_update_message(buffer, offset)
  end
  -- Size of Trade Report Message
  if message_type == "R" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.trade_report_message(buffer, offset)
  end
  -- Size of Broken Trade Report Message
  if message_type == "X" then
    return nasdaq_phlx_topo_itch_v3_3_size_of.broken_trade_report_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_phlx_topo_itch_v3_3_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_phlx_topo_itch_v3_3_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Message
  if message_type == "T" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.timestamp_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if message_type == "D" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.options_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Closed Message
  if message_type == "O" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.security_open_closed_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Bid And Ask Update Message
  if message_type == "q" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.short_best_bid_and_ask_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Bid And Ask Update Message
  if message_type == "Q" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.long_best_bid_and_ask_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Ask Update Message
  if message_type == "a" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.short_best_ask_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Bid Update Message
  if message_type == "b" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.short_best_bid_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Ask Update Message
  if message_type == "A" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.long_best_ask_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Bid Update Message
  if message_type == "B" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.long_best_bid_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "R" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.trade_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Report Message
  if message_type == "X" then
    return nasdaq_phlx_topo_itch_v3_3_dissect.broken_trade_report_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_phlx_topo_itch_v3_3_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_phlx_topo_itch_v3_3_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_phlx_topo_itch_v3_3_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_phlx_topo_itch_v3_3_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.payload, range, display)

  return nasdaq_phlx_topo_itch_v3_3_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_phlx_topo_itch_v3_3_size_of.message_type = 1

-- Display: Message Type
nasdaq_phlx_topo_itch_v3_3_display.message_type = function(value)
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
    return "Message Type: Security Open Closed Message (O)"
  end
  if value == "q" then
    return "Message Type: Short Best Bid And Ask Update Message (q)"
  end
  if value == "Q" then
    return "Message Type: Long Best Bid And Ask Update Message (Q)"
  end
  if value == "a" then
    return "Message Type: Short Best Ask Update Message (a)"
  end
  if value == "b" then
    return "Message Type: Short Best Bid Update Message (b)"
  end
  if value == "A" then
    return "Message Type: Long Best Ask Update Message (A)"
  end
  if value == "B" then
    return "Message Type: Long Best Bid Update Message (B)"
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
nasdaq_phlx_topo_itch_v3_3_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_phlx_topo_itch_v3_3_size_of.length = 2

-- Display: Length
nasdaq_phlx_topo_itch_v3_3_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_phlx_topo_itch_v3_3_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_phlx_topo_itch_v3_3_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.length

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_phlx_topo_itch_v3_3_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_phlx_topo_itch_v3_3_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_phlx_topo_itch_v3_3_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = nasdaq_phlx_topo_itch_v3_3_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_phlx_topo_itch_v3_3_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.message_header, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
nasdaq_phlx_topo_itch_v3_3_size_of.message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nasdaq_phlx_topo_itch_v3_3_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nasdaq_phlx_topo_itch_v3_3_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_phlx_topo_itch_v3_3_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = nasdaq_phlx_topo_itch_v3_3_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_phlx_topo_itch_v3_3_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.message, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
nasdaq_phlx_topo_itch_v3_3_size_of.count = 2

-- Display: Count
nasdaq_phlx_topo_itch_v3_3_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_phlx_topo_itch_v3_3_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlx_topo_itch_v3_3_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_phlx_topo_itch_v3_3_size_of.sequence = 8

-- Display: Sequence
nasdaq_phlx_topo_itch_v3_3_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_phlx_topo_itch_v3_3_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlx_topo_itch_v3_3_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_phlx_topo_itch_v3_3_size_of.session = 10

-- Display: Session
nasdaq_phlx_topo_itch_v3_3_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_phlx_topo_itch_v3_3_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_phlx_topo_itch_v3_3_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlx_topo_itch_v3_3_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_topo_itch_v3_3.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_phlx_topo_itch_v3_3_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.session

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.sequence

  index = index + nasdaq_phlx_topo_itch_v3_3_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_phlx_topo_itch_v3_3_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_phlx_topo_itch_v3_3_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_phlx_topo_itch_v3_3_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_phlx_topo_itch_v3_3_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_phlx_topo_itch_v3_3_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_phlx_topo_itch_v3_3_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = nasdaq_phlx_topo_itch_v3_3_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlx_topo_itch_v3_3_display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_topo_itch_v3_3.fields.packet_header, range, display)
  end

  return nasdaq_phlx_topo_itch_v3_3_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
nasdaq_phlx_topo_itch_v3_3_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_phlx_topo_itch_v3_3_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = nasdaq_phlx_topo_itch_v3_3_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_phlx_topo_itch_v3_3.init()
end

-- Dissector for Nasdaq Phlx Topo Itch 3.3
function nasdaq_phlx_topo_itch_v3_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_phlx_topo_itch_v3_3.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_phlx_topo_itch_v3_3, buffer(), nasdaq_phlx_topo_itch_v3_3.description, "("..buffer:len().." Bytes)")
  return nasdaq_phlx_topo_itch_v3_3_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_phlx_topo_itch_v3_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_phlx_topo_itch_v3_3_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Phlx Topo Itch 3.3
local function nasdaq_phlx_topo_itch_v3_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_phlx_topo_itch_v3_3_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_phlx_topo_itch_v3_3
  nasdaq_phlx_topo_itch_v3_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Phlx Topo Itch 3.3
nasdaq_phlx_topo_itch_v3_3:register_heuristic("udp", nasdaq_phlx_topo_itch_v3_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 3.3
--   Date: Thursday, November 2, 2017
--   Specification: topofphlx.pdf
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
