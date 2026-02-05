-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NomOptions Bono Itch 3.2 Protocol
local omi_nasdaq_nomoptions_bono_itch_v3_2 = Proto("Nasdaq.NomOptions.Bono.Itch.v3.2.Lua", "Nasdaq NomOptions Bono Itch 3.2")

-- Protocol table
local nasdaq_nomoptions_bono_itch_v3_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NomOptions Bono Itch 3.2 Fields
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.ask_price_2 = ProtoField.new("Ask Price 2", "nasdaq.nomoptions.bono.itch.v3.2.askprice2", ftypes.DOUBLE)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.ask_price_4 = ProtoField.new("Ask Price 4", "nasdaq.nomoptions.bono.itch.v3.2.askprice4", ftypes.DOUBLE)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.ask_size_2 = ProtoField.new("Ask Size 2", "nasdaq.nomoptions.bono.itch.v3.2.asksize2", ftypes.UINT16)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.ask_size_4 = ProtoField.new("Ask Size 4", "nasdaq.nomoptions.bono.itch.v3.2.asksize4", ftypes.UINT32)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.bid_price_2 = ProtoField.new("Bid Price 2", "nasdaq.nomoptions.bono.itch.v3.2.bidprice2", ftypes.DOUBLE)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.bid_price_4 = ProtoField.new("Bid Price 4", "nasdaq.nomoptions.bono.itch.v3.2.bidprice4", ftypes.DOUBLE)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.bid_size_2 = ProtoField.new("Bid Size 2", "nasdaq.nomoptions.bono.itch.v3.2.bidsize2", ftypes.UINT16)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.bid_size_4 = ProtoField.new("Bid Size 4", "nasdaq.nomoptions.bono.itch.v3.2.bidsize4", ftypes.UINT32)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.nomoptions.bono.itch.v3.2.crossid", ftypes.UINT32)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nomoptions.bono.itch.v3.2.currenttradingstate", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.nomoptions.bono.itch.v3.2.eventcode", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.nomoptions.bono.itch.v3.2.expirationday", ftypes.UINT8)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.nomoptions.bono.itch.v3.2.expirationmonth", ftypes.UINT8)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.nomoptions.bono.itch.v3.2.expirationyear", ftypes.UINT8)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message = ProtoField.new("Message", "nasdaq.nomoptions.bono.itch.v3.2.message", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_count = ProtoField.new("Message Count", "nasdaq.nomoptions.bono.itch.v3.2.messagecount", ftypes.UINT16)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_header = ProtoField.new("Message Header", "nasdaq.nomoptions.bono.itch.v3.2.messageheader", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_length = ProtoField.new("Message Length", "nasdaq.nomoptions.bono.itch.v3.2.messagelength", ftypes.UINT16)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_type = ProtoField.new("Message Type", "nasdaq.nomoptions.bono.itch.v3.2.messagetype", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.mpv = ProtoField.new("Mpv", "nasdaq.nomoptions.bono.itch.v3.2.mpv", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.nomoptions.bono.itch.v3.2.nanoseconds", ftypes.UINT32)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.open_state = ProtoField.new("Open State", "nasdaq.nomoptions.bono.itch.v3.2.openstate", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.nomoptions.bono.itch.v3.2.optionclosingtype", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.option_id = ProtoField.new("Option Id", "nasdaq.nomoptions.bono.itch.v3.2.optionid", ftypes.UINT32)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.option_type = ProtoField.new("Option Type", "nasdaq.nomoptions.bono.itch.v3.2.optiontype", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.original_cross_id = ProtoField.new("Original Cross Id", "nasdaq.nomoptions.bono.itch.v3.2.originalcrossid", ftypes.UINT32)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.original_price = ProtoField.new("Original Price", "nasdaq.nomoptions.bono.itch.v3.2.originalprice", ftypes.DOUBLE)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.original_volume = ProtoField.new("Original Volume", "nasdaq.nomoptions.bono.itch.v3.2.originalvolume", ftypes.UINT32)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.packet = ProtoField.new("Packet", "nasdaq.nomoptions.bono.itch.v3.2.packet", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nomoptions.bono.itch.v3.2.packetheader", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.payload = ProtoField.new("Payload", "nasdaq.nomoptions.bono.itch.v3.2.payload", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.price_2 = ProtoField.new("Price 2", "nasdaq.nomoptions.bono.itch.v3.2.price2", ftypes.DOUBLE)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.price_4 = ProtoField.new("Price 4", "nasdaq.nomoptions.bono.itch.v3.2.price4", ftypes.DOUBLE)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.nomoptions.bono.itch.v3.2.quotecondition", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.seconds = ProtoField.new("Seconds", "nasdaq.nomoptions.bono.itch.v3.2.seconds", ftypes.UINT32)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.nomoptions.bono.itch.v3.2.securitysymbol", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nomoptions.bono.itch.v3.2.sequencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.session = ProtoField.new("Session", "nasdaq.nomoptions.bono.itch.v3.2.session", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.size_2 = ProtoField.new("Size 2", "nasdaq.nomoptions.bono.itch.v3.2.size2", ftypes.UINT16)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.size_4 = ProtoField.new("Size 4", "nasdaq.nomoptions.bono.itch.v3.2.size4", ftypes.UINT32)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.source = ProtoField.new("Source", "nasdaq.nomoptions.bono.itch.v3.2.source", ftypes.UINT8)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.nomoptions.bono.itch.v3.2.strikeprice", ftypes.DOUBLE)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.subversion = ProtoField.new("Subversion", "nasdaq.nomoptions.bono.itch.v3.2.subversion", ftypes.UINT8)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.tradable = ProtoField.new("Tradable", "nasdaq.nomoptions.bono.itch.v3.2.tradable", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.nomoptions.bono.itch.v3.2.tradecondition", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.nomoptions.bono.itch.v3.2.underlyingsymbol", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.version = ProtoField.new("Version", "nasdaq.nomoptions.bono.itch.v3.2.version", ftypes.UINT8)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.volume = ProtoField.new("Volume", "nasdaq.nomoptions.bono.itch.v3.2.volume", ftypes.UINT32)

-- Nasdaq NomOptions Itch Bono 3.2 Application Messages
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.broken_trade_report_message = ProtoField.new("Broken Trade Report Message", "nasdaq.nomoptions.bono.itch.v3.2.brokentradereportmessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.long_best_ask_update_message = ProtoField.new("Long Best Ask Update Message", "nasdaq.nomoptions.bono.itch.v3.2.longbestaskupdatemessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.long_best_bid_and_ask_update_message = ProtoField.new("Long Best Bid And Ask Update Message", "nasdaq.nomoptions.bono.itch.v3.2.longbestbidandaskupdatemessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.long_best_bid_update_message = ProtoField.new("Long Best Bid Update Message", "nasdaq.nomoptions.bono.itch.v3.2.longbestbidupdatemessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.nomoptions.bono.itch.v3.2.optionsdirectorymessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.security_open_closed_message = ProtoField.new("Security Open Closed Message", "nasdaq.nomoptions.bono.itch.v3.2.securityopenclosedmessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.short_best_ask_update_message = ProtoField.new("Short Best Ask Update Message", "nasdaq.nomoptions.bono.itch.v3.2.shortbestaskupdatemessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.short_best_bid_and_ask_update_message = ProtoField.new("Short Best Bid And Ask Update Message", "nasdaq.nomoptions.bono.itch.v3.2.shortbestbidandaskupdatemessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.short_best_bid_update_message = ProtoField.new("Short Best Bid Update Message", "nasdaq.nomoptions.bono.itch.v3.2.shortbestbidupdatemessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nomoptions.bono.itch.v3.2.systemeventmessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.timestamp_message = ProtoField.new("Timestamp Message", "nasdaq.nomoptions.bono.itch.v3.2.timestampmessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.nomoptions.bono.itch.v3.2.tradereportmessage", ftypes.STRING)
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.nomoptions.bono.itch.v3.2.tradingactionmessage", ftypes.STRING)

-- Nasdaq NomOptions Bono Itch 3.2 generated fields
omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_index = ProtoField.new("Message Index", "nasdaq.nomoptions.bono.itch.v3.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NomOptions Bono Itch 3.2 Element Dissection Options
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

-- Register Nasdaq NomOptions Bono Itch 3.2 Show Options
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_broken_trade_report_message = Pref.bool("Show Broken Trade Report Message", show.broken_trade_report_message, "Parse and add Broken Trade Report Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_long_best_ask_update_message = Pref.bool("Show Long Best Ask Update Message", show.long_best_ask_update_message, "Parse and add Long Best Ask Update Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_long_best_bid_and_ask_update_message = Pref.bool("Show Long Best Bid And Ask Update Message", show.long_best_bid_and_ask_update_message, "Parse and add Long Best Bid And Ask Update Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_long_best_bid_update_message = Pref.bool("Show Long Best Bid Update Message", show.long_best_bid_update_message, "Parse and add Long Best Bid Update Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_options_directory_message = Pref.bool("Show Options Directory Message", show.options_directory_message, "Parse and add Options Directory Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_security_open_closed_message = Pref.bool("Show Security Open Closed Message", show.security_open_closed_message, "Parse and add Security Open Closed Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_short_best_ask_update_message = Pref.bool("Show Short Best Ask Update Message", show.short_best_ask_update_message, "Parse and add Short Best Ask Update Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_short_best_bid_and_ask_update_message = Pref.bool("Show Short Best Bid And Ask Update Message", show.short_best_bid_and_ask_update_message, "Parse and add Short Best Bid And Ask Update Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_short_best_bid_update_message = Pref.bool("Show Short Best Bid Update Message", show.short_best_bid_update_message, "Parse and add Short Best Bid Update Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_timestamp_message = Pref.bool("Show Timestamp Message", show.timestamp_message, "Parse and add Timestamp Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_nomoptions_bono_itch_v3_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.broken_trade_report_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_broken_trade_report_message then
    show.broken_trade_report_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_broken_trade_report_message
    changed = true
  end
  if show.long_best_ask_update_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_long_best_ask_update_message then
    show.long_best_ask_update_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_long_best_ask_update_message
    changed = true
  end
  if show.long_best_bid_and_ask_update_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_long_best_bid_and_ask_update_message then
    show.long_best_bid_and_ask_update_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_long_best_bid_and_ask_update_message
    changed = true
  end
  if show.long_best_bid_update_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_long_best_bid_update_message then
    show.long_best_bid_update_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_long_best_bid_update_message
    changed = true
  end
  if show.message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_message then
    show.message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_message_header then
    show.message_header = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_message_header
    changed = true
  end
  if show.options_directory_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_options_directory_message then
    show.options_directory_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_options_directory_message
    changed = true
  end
  if show.packet ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_packet then
    show.packet = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_packet_header
    changed = true
  end
  if show.security_open_closed_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_security_open_closed_message then
    show.security_open_closed_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_security_open_closed_message
    changed = true
  end
  if show.short_best_ask_update_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_short_best_ask_update_message then
    show.short_best_ask_update_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_short_best_ask_update_message
    changed = true
  end
  if show.short_best_bid_and_ask_update_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_short_best_bid_and_ask_update_message then
    show.short_best_bid_and_ask_update_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_short_best_bid_and_ask_update_message
    changed = true
  end
  if show.short_best_bid_update_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_short_best_bid_update_message then
    show.short_best_bid_update_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_short_best_bid_update_message
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_system_event_message
    changed = true
  end
  if show.timestamp_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_timestamp_message then
    show.timestamp_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_timestamp_message
    changed = true
  end
  if show.trade_report_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_trade_report_message then
    show.trade_report_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_action_message ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_trading_action_message then
    show.trading_action_message = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_payload then
    show.payload = omi_nasdaq_nomoptions_bono_itch_v3_2.prefs.show_payload
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
-- Dissect Nasdaq NomOptions Bono Itch 3.2
-----------------------------------------------------------------------

-- Original Volume
nasdaq_nomoptions_bono_itch_v3_2.original_volume = {}

-- Size: Original Volume
nasdaq_nomoptions_bono_itch_v3_2.original_volume.size = 4

-- Display: Original Volume
nasdaq_nomoptions_bono_itch_v3_2.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nasdaq_nomoptions_bono_itch_v3_2.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.original_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Original Price
nasdaq_nomoptions_bono_itch_v3_2.original_price = {}

-- Size: Original Price
nasdaq_nomoptions_bono_itch_v3_2.original_price.size = 4

-- Display: Original Price
nasdaq_nomoptions_bono_itch_v3_2.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
nasdaq_nomoptions_bono_itch_v3_2.original_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Original Price
nasdaq_nomoptions_bono_itch_v3_2.original_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.original_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_bono_itch_v3_2.original_price.translate(raw)
  local display = nasdaq_nomoptions_bono_itch_v3_2.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Cross Id
nasdaq_nomoptions_bono_itch_v3_2.original_cross_id = {}

-- Size: Original Cross Id
nasdaq_nomoptions_bono_itch_v3_2.original_cross_id.size = 4

-- Display: Original Cross Id
nasdaq_nomoptions_bono_itch_v3_2.original_cross_id.display = function(value)
  return "Original Cross Id: "..value
end

-- Dissect: Original Cross Id
nasdaq_nomoptions_bono_itch_v3_2.original_cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.original_cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.original_cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.original_cross_id, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_nomoptions_bono_itch_v3_2.option_id = {}

-- Size: Option Id
nasdaq_nomoptions_bono_itch_v3_2.option_id.size = 4

-- Display: Option Id
nasdaq_nomoptions_bono_itch_v3_2.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.option_id, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_nomoptions_bono_itch_v3_2.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Broken Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message = {}

-- Size: Broken Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.original_cross_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.original_price.size + 
  nasdaq_nomoptions_bono_itch_v3_2.original_volume.size

-- Display: Broken Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Original Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, original_cross_id = nasdaq_nomoptions_bono_itch_v3_2.original_cross_id.dissect(buffer, index, packet, parent)

  -- Original Price: 4 Byte Signed Fixed Width Integer
  index, original_price = nasdaq_nomoptions_bono_itch_v3_2.original_price.dissect(buffer, index, packet, parent)

  -- Original Volume: 4 Byte Unsigned Fixed Width Integer
  index, original_volume = nasdaq_nomoptions_bono_itch_v3_2.original_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.broken_trade_report_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Volume
nasdaq_nomoptions_bono_itch_v3_2.volume = {}

-- Size: Volume
nasdaq_nomoptions_bono_itch_v3_2.volume.size = 4

-- Display: Volume
nasdaq_nomoptions_bono_itch_v3_2.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_nomoptions_bono_itch_v3_2.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.volume, range, value, display)

  return offset + length, value
end

-- Price 4
nasdaq_nomoptions_bono_itch_v3_2.price_4 = {}

-- Size: Price 4
nasdaq_nomoptions_bono_itch_v3_2.price_4.size = 4

-- Display: Price 4
nasdaq_nomoptions_bono_itch_v3_2.price_4.display = function(value)
  return "Price 4: "..value
end

-- Translate: Price 4
nasdaq_nomoptions_bono_itch_v3_2.price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Price 4
nasdaq_nomoptions_bono_itch_v3_2.price_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.price_4.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_bono_itch_v3_2.price_4.translate(raw)
  local display = nasdaq_nomoptions_bono_itch_v3_2.price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.price_4, range, value, display)

  return offset + length, value
end

-- Trade Condition
nasdaq_nomoptions_bono_itch_v3_2.trade_condition = {}

-- Size: Trade Condition
nasdaq_nomoptions_bono_itch_v3_2.trade_condition.size = 1

-- Display: Trade Condition
nasdaq_nomoptions_bono_itch_v3_2.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_nomoptions_bono_itch_v3_2.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Cross Id
nasdaq_nomoptions_bono_itch_v3_2.cross_id = {}

-- Size: Cross Id
nasdaq_nomoptions_bono_itch_v3_2.cross_id.size = 4

-- Display: Cross Id
nasdaq_nomoptions_bono_itch_v3_2.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nasdaq_nomoptions_bono_itch_v3_2.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.trade_report_message = {}

-- Size: Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.trade_report_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.cross_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.trade_condition.size + 
  nasdaq_nomoptions_bono_itch_v3_2.price_4.size + 
  nasdaq_nomoptions_bono_itch_v3_2.volume.size

-- Display: Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nasdaq_nomoptions_bono_itch_v3_2.cross_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index, trade_condition = nasdaq_nomoptions_bono_itch_v3_2.trade_condition.dissect(buffer, index, packet, parent)

  -- Price 4: 4 Byte Signed Fixed Width Integer
  index, price_4 = nasdaq_nomoptions_bono_itch_v3_2.price_4.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_nomoptions_bono_itch_v3_2.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_nomoptions_bono_itch_v3_2.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Size 4
nasdaq_nomoptions_bono_itch_v3_2.size_4 = {}

-- Size: Size 4
nasdaq_nomoptions_bono_itch_v3_2.size_4.size = 4

-- Display: Size 4
nasdaq_nomoptions_bono_itch_v3_2.size_4.display = function(value)
  return "Size 4: "..value
end

-- Dissect: Size 4
nasdaq_nomoptions_bono_itch_v3_2.size_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.size_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.size_4, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_nomoptions_bono_itch_v3_2.quote_condition = {}

-- Size: Quote Condition
nasdaq_nomoptions_bono_itch_v3_2.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_nomoptions_bono_itch_v3_2.quote_condition.display = function(value)
  if value == "" then
    return "Quote Condition: Regular Quoteautox Eligible (<whitespace>)"
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
nasdaq_nomoptions_bono_itch_v3_2.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Long Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message = {}

-- Size: Long Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.quote_condition.size + 
  nasdaq_nomoptions_bono_itch_v3_2.price_4.size + 
  nasdaq_nomoptions_bono_itch_v3_2.size_4.size

-- Display: Long Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, quote_condition = nasdaq_nomoptions_bono_itch_v3_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Price 4: 4 Byte Signed Fixed Width Integer
  index, price_4 = nasdaq_nomoptions_bono_itch_v3_2.price_4.dissect(buffer, index, packet, parent)

  -- Size 4: 4 Byte Unsigned Fixed Width Integer
  index, size_4 = nasdaq_nomoptions_bono_itch_v3_2.size_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.long_best_bid_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.long_best_bid_update_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message = {}

-- Size: Long Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.quote_condition.size + 
  nasdaq_nomoptions_bono_itch_v3_2.price_4.size + 
  nasdaq_nomoptions_bono_itch_v3_2.size_4.size

-- Display: Long Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, quote_condition = nasdaq_nomoptions_bono_itch_v3_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Price 4: 4 Byte Signed Fixed Width Integer
  index, price_4 = nasdaq_nomoptions_bono_itch_v3_2.price_4.dissect(buffer, index, packet, parent)

  -- Size 4: 4 Byte Unsigned Fixed Width Integer
  index, size_4 = nasdaq_nomoptions_bono_itch_v3_2.size_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.long_best_ask_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.long_best_ask_update_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Size 2
nasdaq_nomoptions_bono_itch_v3_2.size_2 = {}

-- Size: Size 2
nasdaq_nomoptions_bono_itch_v3_2.size_2.size = 2

-- Display: Size 2
nasdaq_nomoptions_bono_itch_v3_2.size_2.display = function(value)
  return "Size 2: "..value
end

-- Dissect: Size 2
nasdaq_nomoptions_bono_itch_v3_2.size_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.size_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.size_2, range, value, display)

  return offset + length, value
end

-- Price 2
nasdaq_nomoptions_bono_itch_v3_2.price_2 = {}

-- Size: Price 2
nasdaq_nomoptions_bono_itch_v3_2.price_2.size = 2

-- Display: Price 2
nasdaq_nomoptions_bono_itch_v3_2.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nasdaq_nomoptions_bono_itch_v3_2.price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price 2
nasdaq_nomoptions_bono_itch_v3_2.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.price_2.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_bono_itch_v3_2.price_2.translate(raw)
  local display = nasdaq_nomoptions_bono_itch_v3_2.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.price_2, range, value, display)

  return offset + length, value
end

-- Short Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message = {}

-- Size: Short Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.quote_condition.size + 
  nasdaq_nomoptions_bono_itch_v3_2.price_2.size + 
  nasdaq_nomoptions_bono_itch_v3_2.size_2.size

-- Display: Short Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, quote_condition = nasdaq_nomoptions_bono_itch_v3_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Price 2: 2 Byte Signed Fixed Width Integer
  index, price_2 = nasdaq_nomoptions_bono_itch_v3_2.price_2.dissect(buffer, index, packet, parent)

  -- Size 2: 2 Byte Unsigned Fixed Width Integer
  index, size_2 = nasdaq_nomoptions_bono_itch_v3_2.size_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Best Bid Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.short_best_bid_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.short_best_bid_update_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message = {}

-- Size: Short Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.quote_condition.size + 
  nasdaq_nomoptions_bono_itch_v3_2.price_2.size + 
  nasdaq_nomoptions_bono_itch_v3_2.size_2.size

-- Display: Short Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, quote_condition = nasdaq_nomoptions_bono_itch_v3_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Price 2: 2 Byte Signed Fixed Width Integer
  index, price_2 = nasdaq_nomoptions_bono_itch_v3_2.price_2.dissect(buffer, index, packet, parent)

  -- Size 2: 2 Byte Unsigned Fixed Width Integer
  index, size_2 = nasdaq_nomoptions_bono_itch_v3_2.size_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Best Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.short_best_ask_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.short_best_ask_update_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Size 4
nasdaq_nomoptions_bono_itch_v3_2.ask_size_4 = {}

-- Size: Ask Size 4
nasdaq_nomoptions_bono_itch_v3_2.ask_size_4.size = 4

-- Display: Ask Size 4
nasdaq_nomoptions_bono_itch_v3_2.ask_size_4.display = function(value)
  return "Ask Size 4: "..value
end

-- Dissect: Ask Size 4
nasdaq_nomoptions_bono_itch_v3_2.ask_size_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.ask_size_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.ask_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.ask_size_4, range, value, display)

  return offset + length, value
end

-- Ask Price 4
nasdaq_nomoptions_bono_itch_v3_2.ask_price_4 = {}

-- Size: Ask Price 4
nasdaq_nomoptions_bono_itch_v3_2.ask_price_4.size = 4

-- Display: Ask Price 4
nasdaq_nomoptions_bono_itch_v3_2.ask_price_4.display = function(value)
  return "Ask Price 4: "..value
end

-- Translate: Ask Price 4
nasdaq_nomoptions_bono_itch_v3_2.ask_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price 4
nasdaq_nomoptions_bono_itch_v3_2.ask_price_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.ask_price_4.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_bono_itch_v3_2.ask_price_4.translate(raw)
  local display = nasdaq_nomoptions_bono_itch_v3_2.ask_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.ask_price_4, range, value, display)

  return offset + length, value
end

-- Bid Size 4
nasdaq_nomoptions_bono_itch_v3_2.bid_size_4 = {}

-- Size: Bid Size 4
nasdaq_nomoptions_bono_itch_v3_2.bid_size_4.size = 4

-- Display: Bid Size 4
nasdaq_nomoptions_bono_itch_v3_2.bid_size_4.display = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
nasdaq_nomoptions_bono_itch_v3_2.bid_size_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.bid_size_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.bid_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Bid Price 4
nasdaq_nomoptions_bono_itch_v3_2.bid_price_4 = {}

-- Size: Bid Price 4
nasdaq_nomoptions_bono_itch_v3_2.bid_price_4.size = 4

-- Display: Bid Price 4
nasdaq_nomoptions_bono_itch_v3_2.bid_price_4.display = function(value)
  return "Bid Price 4: "..value
end

-- Translate: Bid Price 4
nasdaq_nomoptions_bono_itch_v3_2.bid_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price 4
nasdaq_nomoptions_bono_itch_v3_2.bid_price_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.bid_price_4.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_bono_itch_v3_2.bid_price_4.translate(raw)
  local display = nasdaq_nomoptions_bono_itch_v3_2.bid_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.bid_price_4, range, value, display)

  return offset + length, value
end

-- Long Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message = {}

-- Size: Long Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.quote_condition.size + 
  nasdaq_nomoptions_bono_itch_v3_2.bid_price_4.size + 
  nasdaq_nomoptions_bono_itch_v3_2.bid_size_4.size + 
  nasdaq_nomoptions_bono_itch_v3_2.ask_price_4.size + 
  nasdaq_nomoptions_bono_itch_v3_2.ask_size_4.size

-- Display: Long Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, quote_condition = nasdaq_nomoptions_bono_itch_v3_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index, bid_price_4 = nasdaq_nomoptions_bono_itch_v3_2.bid_price_4.dissect(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_4 = nasdaq_nomoptions_bono_itch_v3_2.bid_size_4.dissect(buffer, index, packet, parent)

  -- Ask Price 4: 4 Byte Signed Fixed Width Integer
  index, ask_price_4 = nasdaq_nomoptions_bono_itch_v3_2.ask_price_4.dissect(buffer, index, packet, parent)

  -- Ask Size 4: 4 Byte Unsigned Fixed Width Integer
  index, ask_size_4 = nasdaq_nomoptions_bono_itch_v3_2.ask_size_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.long_best_bid_and_ask_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.long_best_bid_and_ask_update_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Size 2
nasdaq_nomoptions_bono_itch_v3_2.ask_size_2 = {}

-- Size: Ask Size 2
nasdaq_nomoptions_bono_itch_v3_2.ask_size_2.size = 2

-- Display: Ask Size 2
nasdaq_nomoptions_bono_itch_v3_2.ask_size_2.display = function(value)
  return "Ask Size 2: "..value
end

-- Dissect: Ask Size 2
nasdaq_nomoptions_bono_itch_v3_2.ask_size_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.ask_size_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.ask_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.ask_size_2, range, value, display)

  return offset + length, value
end

-- Ask Price 2
nasdaq_nomoptions_bono_itch_v3_2.ask_price_2 = {}

-- Size: Ask Price 2
nasdaq_nomoptions_bono_itch_v3_2.ask_price_2.size = 2

-- Display: Ask Price 2
nasdaq_nomoptions_bono_itch_v3_2.ask_price_2.display = function(value)
  return "Ask Price 2: "..value
end

-- Translate: Ask Price 2
nasdaq_nomoptions_bono_itch_v3_2.ask_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price 2
nasdaq_nomoptions_bono_itch_v3_2.ask_price_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.ask_price_2.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_bono_itch_v3_2.ask_price_2.translate(raw)
  local display = nasdaq_nomoptions_bono_itch_v3_2.ask_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.ask_price_2, range, value, display)

  return offset + length, value
end

-- Bid Size 2
nasdaq_nomoptions_bono_itch_v3_2.bid_size_2 = {}

-- Size: Bid Size 2
nasdaq_nomoptions_bono_itch_v3_2.bid_size_2.size = 2

-- Display: Bid Size 2
nasdaq_nomoptions_bono_itch_v3_2.bid_size_2.display = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
nasdaq_nomoptions_bono_itch_v3_2.bid_size_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.bid_size_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.bid_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Bid Price 2
nasdaq_nomoptions_bono_itch_v3_2.bid_price_2 = {}

-- Size: Bid Price 2
nasdaq_nomoptions_bono_itch_v3_2.bid_price_2.size = 2

-- Display: Bid Price 2
nasdaq_nomoptions_bono_itch_v3_2.bid_price_2.display = function(value)
  return "Bid Price 2: "..value
end

-- Translate: Bid Price 2
nasdaq_nomoptions_bono_itch_v3_2.bid_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price 2
nasdaq_nomoptions_bono_itch_v3_2.bid_price_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.bid_price_2.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_bono_itch_v3_2.bid_price_2.translate(raw)
  local display = nasdaq_nomoptions_bono_itch_v3_2.bid_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.bid_price_2, range, value, display)

  return offset + length, value
end

-- Short Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message = {}

-- Size: Short Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.quote_condition.size + 
  nasdaq_nomoptions_bono_itch_v3_2.bid_price_2.size + 
  nasdaq_nomoptions_bono_itch_v3_2.bid_size_2.size + 
  nasdaq_nomoptions_bono_itch_v3_2.ask_price_2.size + 
  nasdaq_nomoptions_bono_itch_v3_2.ask_size_2.size

-- Display: Short Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, quote_condition = nasdaq_nomoptions_bono_itch_v3_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index, bid_price_2 = nasdaq_nomoptions_bono_itch_v3_2.bid_price_2.dissect(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index, bid_size_2 = nasdaq_nomoptions_bono_itch_v3_2.bid_size_2.dissect(buffer, index, packet, parent)

  -- Ask Price 2: 2 Byte Signed Fixed Width Integer
  index, ask_price_2 = nasdaq_nomoptions_bono_itch_v3_2.ask_price_2.dissect(buffer, index, packet, parent)

  -- Ask Size 2: 2 Byte Unsigned Fixed Width Integer
  index, ask_size_2 = nasdaq_nomoptions_bono_itch_v3_2.ask_size_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Best Bid And Ask Update Message
nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.short_best_bid_and_ask_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.short_best_bid_and_ask_update_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Open State
nasdaq_nomoptions_bono_itch_v3_2.open_state = {}

-- Size: Open State
nasdaq_nomoptions_bono_itch_v3_2.open_state.size = 1

-- Display: Open State
nasdaq_nomoptions_bono_itch_v3_2.open_state.display = function(value)
  if value == "Y" then
    return "Open State: Open For Auto Execution (Y)"
  end
  if value == "N" then
    return "Open State: Closed For Auto Execution (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_nomoptions_bono_itch_v3_2.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.open_state, range, value, display)

  return offset + length, value
end

-- Security Open Closed Message
nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message = {}

-- Size: Security Open Closed Message
nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.open_state.size

-- Display: Security Open Closed Message
nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Closed Message
nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_nomoptions_bono_itch_v3_2.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Closed Message
nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.security_open_closed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.security_open_closed_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Current Trading State
nasdaq_nomoptions_bono_itch_v3_2.current_trading_state = {}

-- Size: Current Trading State
nasdaq_nomoptions_bono_itch_v3_2.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_nomoptions_bono_itch_v3_2.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_nomoptions_bono_itch_v3_2.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Trading Action Message
nasdaq_nomoptions_bono_itch_v3_2.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_nomoptions_bono_itch_v3_2.trading_action_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.current_trading_state.size

-- Display: Trading Action Message
nasdaq_nomoptions_bono_itch_v3_2.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_nomoptions_bono_itch_v3_2.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_nomoptions_bono_itch_v3_2.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_nomoptions_bono_itch_v3_2.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Mpv
nasdaq_nomoptions_bono_itch_v3_2.mpv = {}

-- Size: Mpv
nasdaq_nomoptions_bono_itch_v3_2.mpv.size = 1

-- Display: Mpv
nasdaq_nomoptions_bono_itch_v3_2.mpv.display = function(value)
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
nasdaq_nomoptions_bono_itch_v3_2.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.mpv, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_nomoptions_bono_itch_v3_2.tradable = {}

-- Size: Tradable
nasdaq_nomoptions_bono_itch_v3_2.tradable.size = 1

-- Display: Tradable
nasdaq_nomoptions_bono_itch_v3_2.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_nomoptions_bono_itch_v3_2.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.tradable, range, value, display)

  return offset + length, value
end

-- Option Closing Type
nasdaq_nomoptions_bono_itch_v3_2.option_closing_type = {}

-- Size: Option Closing Type
nasdaq_nomoptions_bono_itch_v3_2.option_closing_type.size = 1

-- Display: Option Closing Type
nasdaq_nomoptions_bono_itch_v3_2.option_closing_type.display = function(value)
  if value == "N" then
    return "Option Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Option Closing Type: Late (L)"
  end

  return "Option Closing Type: Unknown("..value..")"
end

-- Dissect: Option Closing Type
nasdaq_nomoptions_bono_itch_v3_2.option_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.option_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.option_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_nomoptions_bono_itch_v3_2.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_nomoptions_bono_itch_v3_2.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_nomoptions_bono_itch_v3_2.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_nomoptions_bono_itch_v3_2.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_bono_itch_v3_2.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_nomoptions_bono_itch_v3_2.source = {}

-- Size: Source
nasdaq_nomoptions_bono_itch_v3_2.source.size = 1

-- Display: Source
nasdaq_nomoptions_bono_itch_v3_2.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_nomoptions_bono_itch_v3_2.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.source, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_nomoptions_bono_itch_v3_2.option_type = {}

-- Size: Option Type
nasdaq_nomoptions_bono_itch_v3_2.option_type.size = 1

-- Display: Option Type
nasdaq_nomoptions_bono_itch_v3_2.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_nomoptions_bono_itch_v3_2.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.option_type, range, value, display)

  return offset + length, value
end

-- Strike Price
nasdaq_nomoptions_bono_itch_v3_2.strike_price = {}

-- Size: Strike Price
nasdaq_nomoptions_bono_itch_v3_2.strike_price.size = 4

-- Display: Strike Price
nasdaq_nomoptions_bono_itch_v3_2.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nasdaq_nomoptions_bono_itch_v3_2.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
nasdaq_nomoptions_bono_itch_v3_2.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.strike_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_bono_itch_v3_2.strike_price.translate(raw)
  local display = nasdaq_nomoptions_bono_itch_v3_2.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_nomoptions_bono_itch_v3_2.expiration_day = {}

-- Size: Expiration Day
nasdaq_nomoptions_bono_itch_v3_2.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_nomoptions_bono_itch_v3_2.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_nomoptions_bono_itch_v3_2.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_nomoptions_bono_itch_v3_2.expiration_month = {}

-- Size: Expiration Month
nasdaq_nomoptions_bono_itch_v3_2.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_nomoptions_bono_itch_v3_2.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_nomoptions_bono_itch_v3_2.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_nomoptions_bono_itch_v3_2.expiration_year = {}

-- Size: Expiration Year
nasdaq_nomoptions_bono_itch_v3_2.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_nomoptions_bono_itch_v3_2.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_nomoptions_bono_itch_v3_2.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_nomoptions_bono_itch_v3_2.security_symbol = {}

-- Size: Security Symbol
nasdaq_nomoptions_bono_itch_v3_2.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_nomoptions_bono_itch_v3_2.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_nomoptions_bono_itch_v3_2.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_bono_itch_v3_2.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Options Directory Message
nasdaq_nomoptions_bono_itch_v3_2.options_directory_message = {}

-- Size: Options Directory Message
nasdaq_nomoptions_bono_itch_v3_2.options_directory_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_id.size + 
  nasdaq_nomoptions_bono_itch_v3_2.security_symbol.size + 
  nasdaq_nomoptions_bono_itch_v3_2.expiration_year.size + 
  nasdaq_nomoptions_bono_itch_v3_2.expiration_month.size + 
  nasdaq_nomoptions_bono_itch_v3_2.expiration_day.size + 
  nasdaq_nomoptions_bono_itch_v3_2.strike_price.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_type.size + 
  nasdaq_nomoptions_bono_itch_v3_2.source.size + 
  nasdaq_nomoptions_bono_itch_v3_2.underlying_symbol.size + 
  nasdaq_nomoptions_bono_itch_v3_2.option_closing_type.size + 
  nasdaq_nomoptions_bono_itch_v3_2.tradable.size + 
  nasdaq_nomoptions_bono_itch_v3_2.mpv.size

-- Display: Options Directory Message
nasdaq_nomoptions_bono_itch_v3_2.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_nomoptions_bono_itch_v3_2.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_bono_itch_v3_2.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_nomoptions_bono_itch_v3_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_nomoptions_bono_itch_v3_2.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_nomoptions_bono_itch_v3_2.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = nasdaq_nomoptions_bono_itch_v3_2.expiration_day.dissect(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Signed Fixed Width Integer
  index, strike_price = nasdaq_nomoptions_bono_itch_v3_2.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = nasdaq_nomoptions_bono_itch_v3_2.option_type.dissect(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_nomoptions_bono_itch_v3_2.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_nomoptions_bono_itch_v3_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Option Closing Type: 1 Byte Ascii String Enum with 2 values
  index, option_closing_type = nasdaq_nomoptions_bono_itch_v3_2.option_closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = nasdaq_nomoptions_bono_itch_v3_2.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index, mpv = nasdaq_nomoptions_bono_itch_v3_2.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_nomoptions_bono_itch_v3_2.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.options_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.options_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.options_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.options_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Subversion
nasdaq_nomoptions_bono_itch_v3_2.subversion = {}

-- Size: Subversion
nasdaq_nomoptions_bono_itch_v3_2.subversion.size = 1

-- Display: Subversion
nasdaq_nomoptions_bono_itch_v3_2.subversion.display = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_nomoptions_bono_itch_v3_2.subversion.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.subversion.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.subversion.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.subversion, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_nomoptions_bono_itch_v3_2.version = {}

-- Size: Version
nasdaq_nomoptions_bono_itch_v3_2.version.size = 1

-- Display: Version
nasdaq_nomoptions_bono_itch_v3_2.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_nomoptions_bono_itch_v3_2.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.version, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nomoptions_bono_itch_v3_2.event_code = {}

-- Size: Event Code
nasdaq_nomoptions_bono_itch_v3_2.event_code.size = 1

-- Display: Event Code
nasdaq_nomoptions_bono_itch_v3_2.event_code.display = function(value)
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

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nomoptions_bono_itch_v3_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_nomoptions_bono_itch_v3_2.system_event_message = {}

-- Size: System Event Message
nasdaq_nomoptions_bono_itch_v3_2.system_event_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.size + 
  nasdaq_nomoptions_bono_itch_v3_2.event_code.size + 
  nasdaq_nomoptions_bono_itch_v3_2.version.size + 
  nasdaq_nomoptions_bono_itch_v3_2.subversion.size

-- Display: System Event Message
nasdaq_nomoptions_bono_itch_v3_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nomoptions_bono_itch_v3_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_nomoptions_bono_itch_v3_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 7 values
  index, event_code = nasdaq_nomoptions_bono_itch_v3_2.event_code.dissect(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_nomoptions_bono_itch_v3_2.version.dissect(buffer, index, packet, parent)

  -- Subversion: 1 Byte Unsigned Fixed Width Integer
  index, subversion = nasdaq_nomoptions_bono_itch_v3_2.subversion.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nomoptions_bono_itch_v3_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds
nasdaq_nomoptions_bono_itch_v3_2.seconds = {}

-- Size: Seconds
nasdaq_nomoptions_bono_itch_v3_2.seconds.size = 4

-- Display: Seconds
nasdaq_nomoptions_bono_itch_v3_2.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nasdaq_nomoptions_bono_itch_v3_2.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.seconds, range, value, display)

  return offset + length, value
end

-- Timestamp Message
nasdaq_nomoptions_bono_itch_v3_2.timestamp_message = {}

-- Size: Timestamp Message
nasdaq_nomoptions_bono_itch_v3_2.timestamp_message.size =
  nasdaq_nomoptions_bono_itch_v3_2.seconds.size

-- Display: Timestamp Message
nasdaq_nomoptions_bono_itch_v3_2.timestamp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Message
nasdaq_nomoptions_bono_itch_v3_2.timestamp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_nomoptions_bono_itch_v3_2.seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp Message
nasdaq_nomoptions_bono_itch_v3_2.timestamp_message.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.timestamp_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.timestamp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.timestamp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.timestamp_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nomoptions_bono_itch_v3_2.payload = {}

-- Size: Payload
nasdaq_nomoptions_bono_itch_v3_2.payload.size = function(buffer, offset, message_type)
  -- Size of Timestamp Message
  if message_type == "T" then
    return nasdaq_nomoptions_bono_itch_v3_2.timestamp_message.size
  end
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_nomoptions_bono_itch_v3_2.system_event_message.size
  end
  -- Size of Options Directory Message
  if message_type == "D" then
    return nasdaq_nomoptions_bono_itch_v3_2.options_directory_message.size
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_nomoptions_bono_itch_v3_2.trading_action_message.size
  end
  -- Size of Security Open Closed Message
  if message_type == "O" then
    return nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message.size
  end
  -- Size of Short Best Bid And Ask Update Message
  if message_type == "q" then
    return nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message.size
  end
  -- Size of Long Best Bid And Ask Update Message
  if message_type == "Q" then
    return nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message.size
  end
  -- Size of Short Best Ask Update Message
  if message_type == "a" then
    return nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message.size
  end
  -- Size of Short Best Bid Update Message
  if message_type == "b" then
    return nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message.size
  end
  -- Size of Long Best Ask Update Message
  if message_type == "A" then
    return nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message.size
  end
  -- Size of Long Best Bid Update Message
  if message_type == "B" then
    return nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message.size
  end
  -- Size of Trade Report Message
  if message_type == "R" then
    return nasdaq_nomoptions_bono_itch_v3_2.trade_report_message.size
  end
  -- Size of Broken Trade Report Message
  if message_type == "X" then
    return nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message.size
  end

  return 0
end

-- Display: Payload
nasdaq_nomoptions_bono_itch_v3_2.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_nomoptions_bono_itch_v3_2.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Message
  if message_type == "T" then
    return nasdaq_nomoptions_bono_itch_v3_2.timestamp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nomoptions_bono_itch_v3_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if message_type == "D" then
    return nasdaq_nomoptions_bono_itch_v3_2.options_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_nomoptions_bono_itch_v3_2.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Closed Message
  if message_type == "O" then
    return nasdaq_nomoptions_bono_itch_v3_2.security_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Bid And Ask Update Message
  if message_type == "q" then
    return nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_and_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Bid And Ask Update Message
  if message_type == "Q" then
    return nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_and_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Ask Update Message
  if message_type == "a" then
    return nasdaq_nomoptions_bono_itch_v3_2.short_best_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Bid Update Message
  if message_type == "b" then
    return nasdaq_nomoptions_bono_itch_v3_2.short_best_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Ask Update Message
  if message_type == "A" then
    return nasdaq_nomoptions_bono_itch_v3_2.long_best_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Bid Update Message
  if message_type == "B" then
    return nasdaq_nomoptions_bono_itch_v3_2.long_best_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "R" then
    return nasdaq_nomoptions_bono_itch_v3_2.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Report Message
  if message_type == "X" then
    return nasdaq_nomoptions_bono_itch_v3_2.broken_trade_report_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_nomoptions_bono_itch_v3_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_nomoptions_bono_itch_v3_2.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nomoptions_bono_itch_v3_2.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nomoptions_bono_itch_v3_2.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.payload, range, display)

  return nasdaq_nomoptions_bono_itch_v3_2.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nasdaq_nomoptions_bono_itch_v3_2.message_type = {}

-- Size: Message Type
nasdaq_nomoptions_bono_itch_v3_2.message_type.size = 1

-- Display: Message Type
nasdaq_nomoptions_bono_itch_v3_2.message_type.display = function(value)
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
nasdaq_nomoptions_bono_itch_v3_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_bono_itch_v3_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nomoptions_bono_itch_v3_2.message_length = {}

-- Size: Message Length
nasdaq_nomoptions_bono_itch_v3_2.message_length.size = 2

-- Display: Message Length
nasdaq_nomoptions_bono_itch_v3_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nomoptions_bono_itch_v3_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_nomoptions_bono_itch_v3_2.message_header = {}

-- Size: Message Header
nasdaq_nomoptions_bono_itch_v3_2.message_header.size =
  nasdaq_nomoptions_bono_itch_v3_2.message_length.size + 
  nasdaq_nomoptions_bono_itch_v3_2.message_type.size

-- Display: Message Header
nasdaq_nomoptions_bono_itch_v3_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nomoptions_bono_itch_v3_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nomoptions_bono_itch_v3_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = nasdaq_nomoptions_bono_itch_v3_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nomoptions_bono_itch_v3_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nomoptions_bono_itch_v3_2.message = {}

-- Display: Message
nasdaq_nomoptions_bono_itch_v3_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nomoptions_bono_itch_v3_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nomoptions_bono_itch_v3_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = nasdaq_nomoptions_bono_itch_v3_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nomoptions_bono_itch_v3_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message, buffer(offset, 0))
    local current = nasdaq_nomoptions_bono_itch_v3_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nomoptions_bono_itch_v3_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_bono_itch_v3_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
nasdaq_nomoptions_bono_itch_v3_2.message_count = {}

-- Size: Message Count
nasdaq_nomoptions_bono_itch_v3_2.message_count.size = 2

-- Display: Message Count
nasdaq_nomoptions_bono_itch_v3_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nomoptions_bono_itch_v3_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_bono_itch_v3_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nomoptions_bono_itch_v3_2.sequence_number = {}

-- Size: Sequence Number
nasdaq_nomoptions_bono_itch_v3_2.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nomoptions_bono_itch_v3_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nomoptions_bono_itch_v3_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_bono_itch_v3_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nomoptions_bono_itch_v3_2.session = {}

-- Size: Session
nasdaq_nomoptions_bono_itch_v3_2.session.size = 10

-- Display: Session
nasdaq_nomoptions_bono_itch_v3_2.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nomoptions_bono_itch_v3_2.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_bono_itch_v3_2.session.size
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

  local display = nasdaq_nomoptions_bono_itch_v3_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_nomoptions_bono_itch_v3_2.packet_header = {}

-- Size: Packet Header
nasdaq_nomoptions_bono_itch_v3_2.packet_header.size =
  nasdaq_nomoptions_bono_itch_v3_2.session.size + 
  nasdaq_nomoptions_bono_itch_v3_2.sequence_number.size + 
  nasdaq_nomoptions_bono_itch_v3_2.message_count.size

-- Display: Packet Header
nasdaq_nomoptions_bono_itch_v3_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nomoptions_bono_itch_v3_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nomoptions_bono_itch_v3_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nomoptions_bono_itch_v3_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nomoptions_bono_itch_v3_2.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nomoptions_bono_itch_v3_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_bono_itch_v3_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_bono_itch_v3_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_bono_itch_v3_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nomoptions_bono_itch_v3_2.packet = {}

-- Dissect Packet
nasdaq_nomoptions_bono_itch_v3_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nomoptions_bono_itch_v3_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_nomoptions_bono_itch_v3_2.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nomoptions_bono_itch_v3_2.init()
end

-- Dissector for Nasdaq NomOptions Bono Itch 3.2
function omi_nasdaq_nomoptions_bono_itch_v3_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nomoptions_bono_itch_v3_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nomoptions_bono_itch_v3_2, buffer(), omi_nasdaq_nomoptions_bono_itch_v3_2.description, "("..buffer:len().." Bytes)")
  return nasdaq_nomoptions_bono_itch_v3_2.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_nomoptions_bono_itch_v3_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_nomoptions_bono_itch_v3_2.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NomOptions Bono Itch 3.2
local function omi_nasdaq_nomoptions_bono_itch_v3_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nomoptions_bono_itch_v3_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nomoptions_bono_itch_v3_2
  omi_nasdaq_nomoptions_bono_itch_v3_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NomOptions Bono Itch 3.2
omi_nasdaq_nomoptions_bono_itch_v3_2:register_heuristic("udp", omi_nasdaq_nomoptions_bono_itch_v3_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 3.2
--   Date: Thursday, November 2, 2017
--   Specification: http://www.nasdaqtrader.com/content/productsservices/trading/optionsmarket/BONO_spec.pdf
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
