-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Turquoise Analytics Gtp 24.4 Protocol
local omi_lseg_turquoise_analytics_gtp_v24_4 = Proto("Lseg.Turquoise.Analytics.Gtp.v24.4.Lua", "Lseg Turquoise Analytics Gtp 24.4")

-- Protocol table
local lseg_turquoise_analytics_gtp_v24_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Turquoise Analytics Gtp 24.4 Fields
omi_lseg_turquoise_analytics_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.turquoise.analytics.gtp.v24.4.allowedbooktypes", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.bid_ask_spread = ProtoField.new("Bid Ask Spread", "lseg.turquoise.analytics.gtp.v24.4.bidaskspread", ftypes.DOUBLE)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_limit_order_cancellations = ProtoField.new("Buy Limit Order Cancellations", "lseg.turquoise.analytics.gtp.v24.4.buylimitordercancellations", ftypes.UINT32)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_market_order_cancellations = ProtoField.new("Buy Market Order Cancellations", "lseg.turquoise.analytics.gtp.v24.4.buymarketordercancellations", ftypes.UINT32)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_order_cancellations = ProtoField.new("Buy Order Cancellations", "lseg.turquoise.analytics.gtp.v24.4.buyordercancellations", ftypes.UINT32)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_order_count = ProtoField.new("Buy Order Count", "lseg.turquoise.analytics.gtp.v24.4.buyordercount", ftypes.UINT32)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_order_size = ProtoField.new("Buy Order Size", "lseg.turquoise.analytics.gtp.v24.4.buyordersize", ftypes.DOUBLE)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.turquoise.analytics.gtp.v24.4.currency", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.turquoise.analytics.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.turquoise.analytics.gtp.v24.4.electronicorderbook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.end_time = ProtoField.new("End Time", "lseg.turquoise.analytics.gtp.v24.4.endtime", ftypes.UINT64)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.turquoise.analytics.gtp.v24.4.eventcode", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.turquoise.analytics.gtp.v24.4.instrument", ftypes.UINT64)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.turquoise.analytics.gtp.v24.4.isin", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.turquoise.analytics.gtp.v24.4.length", ftypes.UINT16)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.turquoise.analytics.gtp.v24.4.marketdatagroup", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.turquoise.analytics.gtp.v24.4.message", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.turquoise.analytics.gtp.v24.4.messagecount", ftypes.UINT8)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.turquoise.analytics.gtp.v24.4.messageheader", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.turquoise.analytics.gtp.v24.4.messagelength", ftypes.UINT8)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.turquoise.analytics.gtp.v24.4.messagetype", ftypes.UINT8)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.turquoise.analytics.gtp.v24.4.newendtime", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.turquoise.analytics.gtp.v24.4.orderbooktype", ftypes.UINT8)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.turquoise.analytics.gtp.v24.4.packet", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.payload = ProtoField.new("Payload", "lseg.turquoise.analytics.gtp.v24.4.payload", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.turquoise.analytics.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.turquoise.analytics.gtp.v24.4.reserved23", ftypes.BYTES)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.reserved_38 = ProtoField.new("Reserved 38", "lseg.turquoise.analytics.gtp.v24.4.reserved38", ftypes.BYTES)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.turquoise.analytics.gtp.v24.4.segment", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_limit_order_cancellations = ProtoField.new("Sell Limit Order Cancellations", "lseg.turquoise.analytics.gtp.v24.4.selllimitordercancellations", ftypes.UINT32)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_market_order_cancellations = ProtoField.new("Sell Market Order Cancellations", "lseg.turquoise.analytics.gtp.v24.4.sellmarketordercancellations", ftypes.UINT32)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_order_cancellations = ProtoField.new("Sell Order Cancellations", "lseg.turquoise.analytics.gtp.v24.4.sellordercancellations", ftypes.UINT32)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_order_count = ProtoField.new("Sell Order Count", "lseg.turquoise.analytics.gtp.v24.4.sellordercount", ftypes.UINT32)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_order_size = ProtoField.new("Sell Order Size", "lseg.turquoise.analytics.gtp.v24.4.sellordersize", ftypes.DOUBLE)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.turquoise.analytics.gtp.v24.4.sequencenumber", ftypes.UINT32)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.turquoise.analytics.gtp.v24.4.sessionchangereason", ftypes.UINT8)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.turquoise.analytics.gtp.v24.4.sourcevenue", ftypes.UINT16)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.start_time = ProtoField.new("Start Time", "lseg.turquoise.analytics.gtp.v24.4.starttime", ftypes.UINT64)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.turquoise.analytics.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.turquoise.analytics.gtp.v24.4.tickid", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.turquoise.analytics.gtp.v24.4.timestamp", ftypes.UINT64)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.turquoise.analytics.gtp.v24.4.tradingstatus", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.turquoise.analytics.gtp.v24.4.unitheader", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.unused_2 = ProtoField.new("Unused 2", "lseg.turquoise.analytics.gtp.v24.4.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.unused_5 = ProtoField.new("Unused 5", "lseg.turquoise.analytics.gtp.v24.4.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.turquoise.analytics.gtp.v24.4.venueinstrumentid", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.vwap_buy = ProtoField.new("Vwap Buy", "lseg.turquoise.analytics.gtp.v24.4.vwapbuy", ftypes.DOUBLE)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.vwap_sell = ProtoField.new("Vwap Sell", "lseg.turquoise.analytics.gtp.v24.4.vwapsell", ftypes.DOUBLE)

-- Lseg Turquoise Analytics Gtp 24.4 messages
omi_lseg_turquoise_analytics_gtp_v24_4.fields.add_order_incremental_message = ProtoField.new("Add Order Incremental Message", "lseg.turquoise.analytics.gtp.v24.4.addorderincrementalmessage", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.turquoise.analytics.gtp.v24.4.instrumentdirectorymessage", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.turquoise.analytics.gtp.v24.4.instrumentstatusmessage", ftypes.STRING)
omi_lseg_turquoise_analytics_gtp_v24_4.fields.system_event_message = ProtoField.new("System Event Message", "lseg.turquoise.analytics.gtp.v24.4.systemeventmessage", ftypes.STRING)

-- Lseg Turquoise Analytics Gtp 24.4 generated fields
omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_index = ProtoField.new("Message Index", "lseg.turquoise.analytics.gtp.v24.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Turquoise Analytics Gtp 24.4 Element Dissection Options
show.add_order_incremental_message = true
show.allowed_book_types = true
show.instrument_directory_message = true
show.instrument_status_message = true
show.message = true
show.message_header = true
show.packet = true
show.system_event_message = true
show.unit_header = true
show.payload = false

-- Register Lseg Turquoise Analytics Gtp 24.4 Show Options
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_add_order_incremental_message = Pref.bool("Show Add Order Incremental Message", show.add_order_incremental_message, "Parse and add Add Order Incremental Message to protocol tree")
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_instrument_status_message = Pref.bool("Show Instrument Status Message", show.instrument_status_message, "Parse and add Instrument Status Message to protocol tree")
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")
omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_lseg_turquoise_analytics_gtp_v24_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_incremental_message ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_add_order_incremental_message then
    show.add_order_incremental_message = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_add_order_incremental_message
    changed = true
  end
  if show.allowed_book_types ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_allowed_book_types then
    show.allowed_book_types = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_allowed_book_types
    changed = true
  end
  if show.instrument_directory_message ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_instrument_directory_message
    changed = true
  end
  if show.instrument_status_message ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_instrument_status_message then
    show.instrument_status_message = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_instrument_status_message
    changed = true
  end
  if show.message ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_message then
    show.message = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_message_header then
    show.message_header = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_packet then
    show.packet = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_packet
    changed = true
  end
  if show.system_event_message ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_system_event_message then
    show.system_event_message = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_system_event_message
    changed = true
  end
  if show.unit_header ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_unit_header then
    show.unit_header = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_unit_header
    changed = true
  end
  if show.payload ~= omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_payload then
    show.payload = omi_lseg_turquoise_analytics_gtp_v24_4.prefs.show_payload
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
-- Dissect Lseg Turquoise Analytics Gtp 24.4
-----------------------------------------------------------------------

-- Vwap Sell
lseg_turquoise_analytics_gtp_v24_4.vwap_sell = {}

-- Size: Vwap Sell
lseg_turquoise_analytics_gtp_v24_4.vwap_sell.size = 8

-- Display: Vwap Sell
lseg_turquoise_analytics_gtp_v24_4.vwap_sell.display = function(value)
  return "Vwap Sell: "..value
end

-- Translate: Vwap Sell
lseg_turquoise_analytics_gtp_v24_4.vwap_sell.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwap Sell
lseg_turquoise_analytics_gtp_v24_4.vwap_sell.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.vwap_sell.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_analytics_gtp_v24_4.vwap_sell.translate(raw)
  local display = lseg_turquoise_analytics_gtp_v24_4.vwap_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.vwap_sell, range, value, display)

  return offset + length, value
end

-- Vwap Buy
lseg_turquoise_analytics_gtp_v24_4.vwap_buy = {}

-- Size: Vwap Buy
lseg_turquoise_analytics_gtp_v24_4.vwap_buy.size = 8

-- Display: Vwap Buy
lseg_turquoise_analytics_gtp_v24_4.vwap_buy.display = function(value)
  return "Vwap Buy: "..value
end

-- Translate: Vwap Buy
lseg_turquoise_analytics_gtp_v24_4.vwap_buy.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwap Buy
lseg_turquoise_analytics_gtp_v24_4.vwap_buy.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.vwap_buy.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_analytics_gtp_v24_4.vwap_buy.translate(raw)
  local display = lseg_turquoise_analytics_gtp_v24_4.vwap_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.vwap_buy, range, value, display)

  return offset + length, value
end

-- Bid Ask Spread
lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread = {}

-- Size: Bid Ask Spread
lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread.size = 8

-- Display: Bid Ask Spread
lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread.display = function(value)
  return "Bid Ask Spread: "..value
end

-- Translate: Bid Ask Spread
lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Ask Spread
lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread.translate(raw)
  local display = lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.bid_ask_spread, range, value, display)

  return offset + length, value
end

-- Sell Market Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_market_order_cancellations = {}

-- Size: Sell Market Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_market_order_cancellations.size = 4

-- Display: Sell Market Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_market_order_cancellations.display = function(value)
  return "Sell Market Order Cancellations: "..value
end

-- Dissect: Sell Market Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_market_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.sell_market_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.sell_market_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_market_order_cancellations, range, value, display)

  return offset + length, value
end

-- Sell Limit Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_limit_order_cancellations = {}

-- Size: Sell Limit Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_limit_order_cancellations.size = 4

-- Display: Sell Limit Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_limit_order_cancellations.display = function(value)
  return "Sell Limit Order Cancellations: "..value
end

-- Dissect: Sell Limit Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_limit_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.sell_limit_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.sell_limit_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_limit_order_cancellations, range, value, display)

  return offset + length, value
end

-- Buy Market Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_market_order_cancellations = {}

-- Size: Buy Market Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_market_order_cancellations.size = 4

-- Display: Buy Market Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_market_order_cancellations.display = function(value)
  return "Buy Market Order Cancellations: "..value
end

-- Dissect: Buy Market Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_market_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.buy_market_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.buy_market_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_market_order_cancellations, range, value, display)

  return offset + length, value
end

-- Buy Limit Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_limit_order_cancellations = {}

-- Size: Buy Limit Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_limit_order_cancellations.size = 4

-- Display: Buy Limit Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_limit_order_cancellations.display = function(value)
  return "Buy Limit Order Cancellations: "..value
end

-- Dissect: Buy Limit Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_limit_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.buy_limit_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.buy_limit_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_limit_order_cancellations, range, value, display)

  return offset + length, value
end

-- Sell Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_order_cancellations = {}

-- Size: Sell Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_order_cancellations.size = 4

-- Display: Sell Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_order_cancellations.display = function(value)
  return "Sell Order Cancellations: "..value
end

-- Dissect: Sell Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.sell_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.sell_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.sell_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_order_cancellations, range, value, display)

  return offset + length, value
end

-- Buy Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_order_cancellations = {}

-- Size: Buy Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_order_cancellations.size = 4

-- Display: Buy Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_order_cancellations.display = function(value)
  return "Buy Order Cancellations: "..value
end

-- Dissect: Buy Order Cancellations
lseg_turquoise_analytics_gtp_v24_4.buy_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.buy_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.buy_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_order_cancellations, range, value, display)

  return offset + length, value
end

-- Sell Order Size
lseg_turquoise_analytics_gtp_v24_4.sell_order_size = {}

-- Size: Sell Order Size
lseg_turquoise_analytics_gtp_v24_4.sell_order_size.size = 8

-- Display: Sell Order Size
lseg_turquoise_analytics_gtp_v24_4.sell_order_size.display = function(value)
  return "Sell Order Size: "..value
end

-- Translate: Sell Order Size
lseg_turquoise_analytics_gtp_v24_4.sell_order_size.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sell Order Size
lseg_turquoise_analytics_gtp_v24_4.sell_order_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.sell_order_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_analytics_gtp_v24_4.sell_order_size.translate(raw)
  local display = lseg_turquoise_analytics_gtp_v24_4.sell_order_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_order_size, range, value, display)

  return offset + length, value
end

-- Buy Order Size
lseg_turquoise_analytics_gtp_v24_4.buy_order_size = {}

-- Size: Buy Order Size
lseg_turquoise_analytics_gtp_v24_4.buy_order_size.size = 8

-- Display: Buy Order Size
lseg_turquoise_analytics_gtp_v24_4.buy_order_size.display = function(value)
  return "Buy Order Size: "..value
end

-- Translate: Buy Order Size
lseg_turquoise_analytics_gtp_v24_4.buy_order_size.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Buy Order Size
lseg_turquoise_analytics_gtp_v24_4.buy_order_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.buy_order_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_analytics_gtp_v24_4.buy_order_size.translate(raw)
  local display = lseg_turquoise_analytics_gtp_v24_4.buy_order_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_order_size, range, value, display)

  return offset + length, value
end

-- Sell Order Count
lseg_turquoise_analytics_gtp_v24_4.sell_order_count = {}

-- Size: Sell Order Count
lseg_turquoise_analytics_gtp_v24_4.sell_order_count.size = 4

-- Display: Sell Order Count
lseg_turquoise_analytics_gtp_v24_4.sell_order_count.display = function(value)
  return "Sell Order Count: "..value
end

-- Dissect: Sell Order Count
lseg_turquoise_analytics_gtp_v24_4.sell_order_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.sell_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.sell_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.sell_order_count, range, value, display)

  return offset + length, value
end

-- Buy Order Count
lseg_turquoise_analytics_gtp_v24_4.buy_order_count = {}

-- Size: Buy Order Count
lseg_turquoise_analytics_gtp_v24_4.buy_order_count.size = 4

-- Display: Buy Order Count
lseg_turquoise_analytics_gtp_v24_4.buy_order_count.display = function(value)
  return "Buy Order Count: "..value
end

-- Dissect: Buy Order Count
lseg_turquoise_analytics_gtp_v24_4.buy_order_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.buy_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.buy_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.buy_order_count, range, value, display)

  return offset + length, value
end

-- End Time
lseg_turquoise_analytics_gtp_v24_4.end_time = {}

-- Size: End Time
lseg_turquoise_analytics_gtp_v24_4.end_time.size = 8

-- Display: End Time
lseg_turquoise_analytics_gtp_v24_4.end_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "End Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: End Time
lseg_turquoise_analytics_gtp_v24_4.end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_analytics_gtp_v24_4.end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.end_time, range, value, display)

  return offset + length, value
end

-- Start Time
lseg_turquoise_analytics_gtp_v24_4.start_time = {}

-- Size: Start Time
lseg_turquoise_analytics_gtp_v24_4.start_time.size = 8

-- Display: Start Time
lseg_turquoise_analytics_gtp_v24_4.start_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Start Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Start Time
lseg_turquoise_analytics_gtp_v24_4.start_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_analytics_gtp_v24_4.start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.start_time, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_turquoise_analytics_gtp_v24_4.source_venue = {}

-- Size: Source Venue
lseg_turquoise_analytics_gtp_v24_4.source_venue.size = 2

-- Display: Source Venue
lseg_turquoise_analytics_gtp_v24_4.source_venue.display = function(value)
  if value == 5 then
    return "Source Venue: Turquoise Lit Order Book (5)"
  end
  if value == 6 then
    return "Source Venue: Turquoise Plato Order Book (6)"
  end
  if value == 12 then
    return "Source Venue: Turquoise Plato Lit Auctions Order Book (12)"
  end
  if value == 14 then
    return "Source Venue: Turquoise Lit Order Book (14)"
  end
  if value == 15 then
    return "Source Venue: Turquoise Plato Order Book (15)"
  end
  if value == 16 then
    return "Source Venue: Turquoise Plato Lit Auctions Order Book (16)"
  end

  return "Source Venue: Unknown("..value..")"
end

-- Dissect: Source Venue
lseg_turquoise_analytics_gtp_v24_4.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_turquoise_analytics_gtp_v24_4.instrument = {}

-- Size: Instrument
lseg_turquoise_analytics_gtp_v24_4.instrument.size = 8

-- Display: Instrument
lseg_turquoise_analytics_gtp_v24_4.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_turquoise_analytics_gtp_v24_4.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_analytics_gtp_v24_4.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_turquoise_analytics_gtp_v24_4.timestamp = {}

-- Size: Timestamp
lseg_turquoise_analytics_gtp_v24_4.timestamp.size = 8

-- Display: Timestamp
lseg_turquoise_analytics_gtp_v24_4.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_turquoise_analytics_gtp_v24_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_analytics_gtp_v24_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Add Order Incremental Message
lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message = {}

-- Size: Add Order Incremental Message
lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message.size =
  lseg_turquoise_analytics_gtp_v24_4.timestamp.size + 
  lseg_turquoise_analytics_gtp_v24_4.instrument.size + 
  lseg_turquoise_analytics_gtp_v24_4.source_venue.size + 
  lseg_turquoise_analytics_gtp_v24_4.start_time.size + 
  lseg_turquoise_analytics_gtp_v24_4.end_time.size + 
  lseg_turquoise_analytics_gtp_v24_4.buy_order_count.size + 
  lseg_turquoise_analytics_gtp_v24_4.sell_order_count.size + 
  lseg_turquoise_analytics_gtp_v24_4.buy_order_size.size + 
  lseg_turquoise_analytics_gtp_v24_4.sell_order_size.size + 
  lseg_turquoise_analytics_gtp_v24_4.buy_order_cancellations.size + 
  lseg_turquoise_analytics_gtp_v24_4.sell_order_cancellations.size + 
  lseg_turquoise_analytics_gtp_v24_4.buy_limit_order_cancellations.size + 
  lseg_turquoise_analytics_gtp_v24_4.buy_market_order_cancellations.size + 
  lseg_turquoise_analytics_gtp_v24_4.sell_limit_order_cancellations.size + 
  lseg_turquoise_analytics_gtp_v24_4.sell_market_order_cancellations.size + 
  lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread.size + 
  lseg_turquoise_analytics_gtp_v24_4.vwap_buy.size + 
  lseg_turquoise_analytics_gtp_v24_4.vwap_sell.size

-- Display: Add Order Incremental Message
lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Incremental Message
lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_analytics_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_analytics_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_analytics_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Start Time: 8 Byte Unsigned Fixed Width Integer
  index, start_time = lseg_turquoise_analytics_gtp_v24_4.start_time.dissect(buffer, index, packet, parent)

  -- End Time: 8 Byte Unsigned Fixed Width Integer
  index, end_time = lseg_turquoise_analytics_gtp_v24_4.end_time.dissect(buffer, index, packet, parent)

  -- Buy Order Count: 4 Byte Unsigned Fixed Width Integer
  index, buy_order_count = lseg_turquoise_analytics_gtp_v24_4.buy_order_count.dissect(buffer, index, packet, parent)

  -- Sell Order Count: 4 Byte Unsigned Fixed Width Integer
  index, sell_order_count = lseg_turquoise_analytics_gtp_v24_4.sell_order_count.dissect(buffer, index, packet, parent)

  -- Buy Order Size: 8 Byte Unsigned Fixed Width Integer
  index, buy_order_size = lseg_turquoise_analytics_gtp_v24_4.buy_order_size.dissect(buffer, index, packet, parent)

  -- Sell Order Size: 8 Byte Unsigned Fixed Width Integer
  index, sell_order_size = lseg_turquoise_analytics_gtp_v24_4.sell_order_size.dissect(buffer, index, packet, parent)

  -- Buy Order Cancellations: 4 Byte Unsigned Fixed Width Integer
  index, buy_order_cancellations = lseg_turquoise_analytics_gtp_v24_4.buy_order_cancellations.dissect(buffer, index, packet, parent)

  -- Sell Order Cancellations: 4 Byte Unsigned Fixed Width Integer
  index, sell_order_cancellations = lseg_turquoise_analytics_gtp_v24_4.sell_order_cancellations.dissect(buffer, index, packet, parent)

  -- Buy Limit Order Cancellations: 4 Byte Unsigned Fixed Width Integer
  index, buy_limit_order_cancellations = lseg_turquoise_analytics_gtp_v24_4.buy_limit_order_cancellations.dissect(buffer, index, packet, parent)

  -- Buy Market Order Cancellations: 4 Byte Unsigned Fixed Width Integer
  index, buy_market_order_cancellations = lseg_turquoise_analytics_gtp_v24_4.buy_market_order_cancellations.dissect(buffer, index, packet, parent)

  -- Sell Limit Order Cancellations: 4 Byte Unsigned Fixed Width Integer
  index, sell_limit_order_cancellations = lseg_turquoise_analytics_gtp_v24_4.sell_limit_order_cancellations.dissect(buffer, index, packet, parent)

  -- Sell Market Order Cancellations: 4 Byte Unsigned Fixed Width Integer
  index, sell_market_order_cancellations = lseg_turquoise_analytics_gtp_v24_4.sell_market_order_cancellations.dissect(buffer, index, packet, parent)

  -- Bid Ask Spread: 8 Byte Signed Fixed Width Integer
  index, bid_ask_spread = lseg_turquoise_analytics_gtp_v24_4.bid_ask_spread.dissect(buffer, index, packet, parent)

  -- Vwap Buy: 8 Byte Signed Fixed Width Integer
  index, vwap_buy = lseg_turquoise_analytics_gtp_v24_4.vwap_buy.dissect(buffer, index, packet, parent)

  -- Vwap Sell: 8 Byte Signed Fixed Width Integer
  index, vwap_sell = lseg_turquoise_analytics_gtp_v24_4.vwap_sell.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Incremental Message
lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_incremental_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.add_order_incremental_message, buffer(offset, 0))
    local index = lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Type
lseg_turquoise_analytics_gtp_v24_4.order_book_type = {}

-- Size: Order Book Type
lseg_turquoise_analytics_gtp_v24_4.order_book_type.size = 1

-- Display: Order Book Type
lseg_turquoise_analytics_gtp_v24_4.order_book_type.display = function(value)
  if value == 3 then
    return "Order Book Type: Electronic (3)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_turquoise_analytics_gtp_v24_4.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_turquoise_analytics_gtp_v24_4.new_end_time = {}

-- Size: New End Time
lseg_turquoise_analytics_gtp_v24_4.new_end_time.size = 6

-- Display: New End Time
lseg_turquoise_analytics_gtp_v24_4.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_turquoise_analytics_gtp_v24_4.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_analytics_gtp_v24_4.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_turquoise_analytics_gtp_v24_4.session_change_reason = {}

-- Size: Session Change Reason
lseg_turquoise_analytics_gtp_v24_4.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_turquoise_analytics_gtp_v24_4.session_change_reason.display = function(value)
  if value == 0 then
    return "Session Change Reason: Scheduled Transition (0)"
  end
  if value == 1 then
    return "Session Change Reason: Extended By Market Ops (1)"
  end
  if value == 2 then
    return "Session Change Reason: Shortened By Market Ops (2)"
  end
  if value == 3 then
    return "Session Change Reason: Market Order Imbalance (3)"
  end
  if value == 4 then
    return "Session Change Reason: Price Outside Range (4)"
  end
  if value == 5 then
    return "Session Change Reason: Aesp Circuit Breaker Tripped (5)"
  end
  if value == 9 then
    return "Session Change Reason: Unavailable (9)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_turquoise_analytics_gtp_v24_4.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_turquoise_analytics_gtp_v24_4.trading_status = {}

-- Size: Trading Status
lseg_turquoise_analytics_gtp_v24_4.trading_status.size = 1

-- Display: Trading Status
lseg_turquoise_analytics_gtp_v24_4.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "J" then
    return "Trading Status: Halted Matching Partition Suspended (J)"
  end
  if value == "K" then
    return "Trading Status: Halted System Suspended (K)"
  end
  if value == "P" then
    return "Trading Status: Halted Regulatory Halt (P)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading Start Of Trqb Session (T)"
  end
  if value == "t" then
    return "Trading Status: End Of Regular Trading End Of Trqb Session (t)"
  end
  if value == "c" then
    return "Trading Status: Closed (c)"
  end
  if value == "2" then
    return "Trading Status: Suspended (2)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_turquoise_analytics_gtp_v24_4.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_analytics_gtp_v24_4.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Status Message
lseg_turquoise_analytics_gtp_v24_4.instrument_status_message = {}

-- Size: Instrument Status Message
lseg_turquoise_analytics_gtp_v24_4.instrument_status_message.size =
  lseg_turquoise_analytics_gtp_v24_4.timestamp.size + 
  lseg_turquoise_analytics_gtp_v24_4.instrument.size + 
  lseg_turquoise_analytics_gtp_v24_4.source_venue.size + 
  lseg_turquoise_analytics_gtp_v24_4.trading_status.size + 
  lseg_turquoise_analytics_gtp_v24_4.session_change_reason.size + 
  lseg_turquoise_analytics_gtp_v24_4.new_end_time.size + 
  lseg_turquoise_analytics_gtp_v24_4.order_book_type.size

-- Display: Instrument Status Message
lseg_turquoise_analytics_gtp_v24_4.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_turquoise_analytics_gtp_v24_4.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_analytics_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_analytics_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_analytics_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 9 values
  index, trading_status = lseg_turquoise_analytics_gtp_v24_4.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, session_change_reason = lseg_turquoise_analytics_gtp_v24_4.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: 6 Byte Ascii String
  index, new_end_time = lseg_turquoise_analytics_gtp_v24_4.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_analytics_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_turquoise_analytics_gtp_v24_4.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_turquoise_analytics_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_analytics_gtp_v24_4.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_analytics_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 38
lseg_turquoise_analytics_gtp_v24_4.reserved_38 = {}

-- Size: Reserved 38
lseg_turquoise_analytics_gtp_v24_4.reserved_38.size = 38

-- Display: Reserved 38
lseg_turquoise_analytics_gtp_v24_4.reserved_38.display = function(value)
  return "Reserved 38: "..value
end

-- Dissect: Reserved 38
lseg_turquoise_analytics_gtp_v24_4.reserved_38.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.reserved_38.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_analytics_gtp_v24_4.reserved_38.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.reserved_38, range, value, display)

  return offset + length, value
end

-- Currency
lseg_turquoise_analytics_gtp_v24_4.currency = {}

-- Size: Currency
lseg_turquoise_analytics_gtp_v24_4.currency.size = 3

-- Display: Currency
lseg_turquoise_analytics_gtp_v24_4.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_turquoise_analytics_gtp_v24_4.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_analytics_gtp_v24_4.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Reserved 23
lseg_turquoise_analytics_gtp_v24_4.reserved_23 = {}

-- Size: Reserved 23
lseg_turquoise_analytics_gtp_v24_4.reserved_23.size = 23

-- Display: Reserved 23
lseg_turquoise_analytics_gtp_v24_4.reserved_23.display = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_turquoise_analytics_gtp_v24_4.reserved_23.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.reserved_23.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_analytics_gtp_v24_4.reserved_23.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Segment
lseg_turquoise_analytics_gtp_v24_4.segment = {}

-- Size: Segment
lseg_turquoise_analytics_gtp_v24_4.segment.size = 6

-- Display: Segment
lseg_turquoise_analytics_gtp_v24_4.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_turquoise_analytics_gtp_v24_4.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_analytics_gtp_v24_4.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Price Band Tolerances
lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances = {}

-- Size: Price Band Tolerances
lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances.size = 8

-- Display: Price Band Tolerances
lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances.display = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances.translate(raw)
  local display = lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_turquoise_analytics_gtp_v24_4.tick_id = {}

-- Size: Tick Id
lseg_turquoise_analytics_gtp_v24_4.tick_id.size = 2

-- Display: Tick Id
lseg_turquoise_analytics_gtp_v24_4.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_turquoise_analytics_gtp_v24_4.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_analytics_gtp_v24_4.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_turquoise_analytics_gtp_v24_4.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_turquoise_analytics_gtp_v24_4.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_turquoise_analytics_gtp_v24_4.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_turquoise_analytics_gtp_v24_4.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_analytics_gtp_v24_4.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Allowed Book Types
lseg_turquoise_analytics_gtp_v24_4.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_turquoise_analytics_gtp_v24_4.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_turquoise_analytics_gtp_v24_4.allowed_book_types.display = function(buffer, packet, parent)
  local display = ""

  -- Is Electronic Order Book flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Electronic Order Book|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Allowed Book Types
lseg_turquoise_analytics_gtp_v24_4.allowed_book_types.bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.unused_2, buffer(offset, 1))

  -- Electronic Order Book: 1 Bit
  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.electronic_order_book, buffer(offset, 1))

  -- Unused 5: 5 Bit
  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.unused_5, buffer(offset, 1))
end

-- Dissect: Allowed Book Types
lseg_turquoise_analytics_gtp_v24_4.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_turquoise_analytics_gtp_v24_4.allowed_book_types.display(range, packet, parent)
  local element = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    lseg_turquoise_analytics_gtp_v24_4.allowed_book_types.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Isin
lseg_turquoise_analytics_gtp_v24_4.isin = {}

-- Size: Isin
lseg_turquoise_analytics_gtp_v24_4.isin.size = 12

-- Display: Isin
lseg_turquoise_analytics_gtp_v24_4.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_turquoise_analytics_gtp_v24_4.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_analytics_gtp_v24_4.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message = {}

-- Size: Instrument Directory Message
lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message.size =
  lseg_turquoise_analytics_gtp_v24_4.timestamp.size + 
  lseg_turquoise_analytics_gtp_v24_4.instrument.size + 
  lseg_turquoise_analytics_gtp_v24_4.isin.size + 
  lseg_turquoise_analytics_gtp_v24_4.allowed_book_types.size + 
  lseg_turquoise_analytics_gtp_v24_4.source_venue.size + 
  lseg_turquoise_analytics_gtp_v24_4.venue_instrument_id.size + 
  lseg_turquoise_analytics_gtp_v24_4.tick_id.size + 
  lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances.size + 
  lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances.size + 
  lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances.size + 
  lseg_turquoise_analytics_gtp_v24_4.segment.size + 
  lseg_turquoise_analytics_gtp_v24_4.reserved_23.size + 
  lseg_turquoise_analytics_gtp_v24_4.currency.size + 
  lseg_turquoise_analytics_gtp_v24_4.reserved_38.size

-- Display: Instrument Directory Message
lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_analytics_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_analytics_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = lseg_turquoise_analytics_gtp_v24_4.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_turquoise_analytics_gtp_v24_4.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_analytics_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: 11 Byte Ascii String
  index, venue_instrument_id = lseg_turquoise_analytics_gtp_v24_4.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: 2 Byte Ascii String
  index, tick_id = lseg_turquoise_analytics_gtp_v24_4.tick_id.dissect(buffer, index, packet, parent)

  -- Price Band Tolerances: 8 Byte Signed Fixed Width Integer
  index, price_band_tolerances = lseg_turquoise_analytics_gtp_v24_4.price_band_tolerances.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, dynamic_circuit_breaker_tolerances = lseg_turquoise_analytics_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, static_circuit_breaker_tolerances = lseg_turquoise_analytics_gtp_v24_4.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: 6 Byte Ascii String
  index, segment = lseg_turquoise_analytics_gtp_v24_4.segment.dissect(buffer, index, packet, parent)

  -- Reserved 23: 23 Byte
  index, reserved_23 = lseg_turquoise_analytics_gtp_v24_4.reserved_23.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = lseg_turquoise_analytics_gtp_v24_4.currency.dissect(buffer, index, packet, parent)

  -- Reserved 38: 38 Byte
  index, reserved_38 = lseg_turquoise_analytics_gtp_v24_4.reserved_38.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
lseg_turquoise_analytics_gtp_v24_4.event_code = {}

-- Size: Event Code
lseg_turquoise_analytics_gtp_v24_4.event_code.size = 1

-- Display: Event Code
lseg_turquoise_analytics_gtp_v24_4.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_turquoise_analytics_gtp_v24_4.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_analytics_gtp_v24_4.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
lseg_turquoise_analytics_gtp_v24_4.system_event_message = {}

-- Size: System Event Message
lseg_turquoise_analytics_gtp_v24_4.system_event_message.size =
  lseg_turquoise_analytics_gtp_v24_4.timestamp.size + 
  lseg_turquoise_analytics_gtp_v24_4.event_code.size + 
  lseg_turquoise_analytics_gtp_v24_4.source_venue.size

-- Display: System Event Message
lseg_turquoise_analytics_gtp_v24_4.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_turquoise_analytics_gtp_v24_4.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_analytics_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = lseg_turquoise_analytics_gtp_v24_4.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_analytics_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_turquoise_analytics_gtp_v24_4.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.system_event_message, buffer(offset, 0))
    local index = lseg_turquoise_analytics_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_analytics_gtp_v24_4.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_analytics_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_turquoise_analytics_gtp_v24_4.payload = {}

-- Size: Payload
lseg_turquoise_analytics_gtp_v24_4.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_analytics_gtp_v24_4.system_event_message.size
  end
  -- Size of Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message.size
  end
  -- Size of Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_analytics_gtp_v24_4.instrument_status_message.size
  end
  -- Size of Add Order Incremental Message
  if message_type == 0x61 then
    return lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message.size
  end

  return 0
end

-- Display: Payload
lseg_turquoise_analytics_gtp_v24_4.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
lseg_turquoise_analytics_gtp_v24_4.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_analytics_gtp_v24_4.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_analytics_gtp_v24_4.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_analytics_gtp_v24_4.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Incremental Message
  if message_type == 0x61 then
    return lseg_turquoise_analytics_gtp_v24_4.add_order_incremental_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
lseg_turquoise_analytics_gtp_v24_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return lseg_turquoise_analytics_gtp_v24_4.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = lseg_turquoise_analytics_gtp_v24_4.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = lseg_turquoise_analytics_gtp_v24_4.payload.display(buffer, packet, parent)
  local element = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.payload, range, display)

  return lseg_turquoise_analytics_gtp_v24_4.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
lseg_turquoise_analytics_gtp_v24_4.message_type = {}

-- Size: Message Type
lseg_turquoise_analytics_gtp_v24_4.message_type.size = 1

-- Display: Message Type
lseg_turquoise_analytics_gtp_v24_4.message_type.display = function(value)
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x70 then
    return "Message Type: Instrument Directory Message (0x70)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status Message (0x48)"
  end
  if value == 0x61 then
    return "Message Type: Add Order Incremental Message (0x61)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_turquoise_analytics_gtp_v24_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_turquoise_analytics_gtp_v24_4.message_length = {}

-- Size: Message Length
lseg_turquoise_analytics_gtp_v24_4.message_length.size = 1

-- Display: Message Length
lseg_turquoise_analytics_gtp_v24_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_turquoise_analytics_gtp_v24_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
lseg_turquoise_analytics_gtp_v24_4.message_header = {}

-- Size: Message Header
lseg_turquoise_analytics_gtp_v24_4.message_header.size =
  lseg_turquoise_analytics_gtp_v24_4.message_length.size + 
  lseg_turquoise_analytics_gtp_v24_4.message_type.size

-- Display: Message Header
lseg_turquoise_analytics_gtp_v24_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_turquoise_analytics_gtp_v24_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_turquoise_analytics_gtp_v24_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_type = lseg_turquoise_analytics_gtp_v24_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_turquoise_analytics_gtp_v24_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_header, buffer(offset, 0))
    local index = lseg_turquoise_analytics_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_analytics_gtp_v24_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_analytics_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_turquoise_analytics_gtp_v24_4.message = {}

-- Calculate size of: Message
lseg_turquoise_analytics_gtp_v24_4.message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_analytics_gtp_v24_4.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_turquoise_analytics_gtp_v24_4.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_turquoise_analytics_gtp_v24_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_turquoise_analytics_gtp_v24_4.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_turquoise_analytics_gtp_v24_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 4 branches
  index = lseg_turquoise_analytics_gtp_v24_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_turquoise_analytics_gtp_v24_4.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = lseg_turquoise_analytics_gtp_v24_4.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_analytics_gtp_v24_4.message.display(buffer, packet, parent)
    parent = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.message, range, display)
  end

  return lseg_turquoise_analytics_gtp_v24_4.message.fields(buffer, offset, packet, parent)
end

-- Sequence Number
lseg_turquoise_analytics_gtp_v24_4.sequence_number = {}

-- Size: Sequence Number
lseg_turquoise_analytics_gtp_v24_4.sequence_number.size = 4

-- Display: Sequence Number
lseg_turquoise_analytics_gtp_v24_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_turquoise_analytics_gtp_v24_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_turquoise_analytics_gtp_v24_4.market_data_group = {}

-- Size: Market Data Group
lseg_turquoise_analytics_gtp_v24_4.market_data_group.size = 1

-- Display: Market Data Group
lseg_turquoise_analytics_gtp_v24_4.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_turquoise_analytics_gtp_v24_4.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_analytics_gtp_v24_4.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_turquoise_analytics_gtp_v24_4.message_count = {}

-- Size: Message Count
lseg_turquoise_analytics_gtp_v24_4.message_count.size = 1

-- Display: Message Count
lseg_turquoise_analytics_gtp_v24_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_turquoise_analytics_gtp_v24_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Length
lseg_turquoise_analytics_gtp_v24_4.length = {}

-- Size: Length
lseg_turquoise_analytics_gtp_v24_4.length.size = 2

-- Display: Length
lseg_turquoise_analytics_gtp_v24_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_turquoise_analytics_gtp_v24_4.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_analytics_gtp_v24_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_analytics_gtp_v24_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Unit Header
lseg_turquoise_analytics_gtp_v24_4.unit_header = {}

-- Size: Unit Header
lseg_turquoise_analytics_gtp_v24_4.unit_header.size =
  lseg_turquoise_analytics_gtp_v24_4.length.size + 
  lseg_turquoise_analytics_gtp_v24_4.message_count.size + 
  lseg_turquoise_analytics_gtp_v24_4.market_data_group.size + 
  lseg_turquoise_analytics_gtp_v24_4.sequence_number.size

-- Display: Unit Header
lseg_turquoise_analytics_gtp_v24_4.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_turquoise_analytics_gtp_v24_4.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_turquoise_analytics_gtp_v24_4.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_turquoise_analytics_gtp_v24_4.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_turquoise_analytics_gtp_v24_4.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_turquoise_analytics_gtp_v24_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_turquoise_analytics_gtp_v24_4.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4.fields.unit_header, buffer(offset, 0))
    local index = lseg_turquoise_analytics_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_analytics_gtp_v24_4.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_analytics_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_turquoise_analytics_gtp_v24_4.packet = {}

-- Dissect Packet
lseg_turquoise_analytics_gtp_v24_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_turquoise_analytics_gtp_v24_4.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = lseg_turquoise_analytics_gtp_v24_4.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_turquoise_analytics_gtp_v24_4.init()
end

-- Dissector for Lseg Turquoise Analytics Gtp 24.4
function omi_lseg_turquoise_analytics_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_turquoise_analytics_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_turquoise_analytics_gtp_v24_4, buffer(), omi_lseg_turquoise_analytics_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_turquoise_analytics_gtp_v24_4.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_lseg_turquoise_analytics_gtp_v24_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
lseg_turquoise_analytics_gtp_v24_4.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg Turquoise Analytics Gtp 24.4
local function omi_lseg_turquoise_analytics_gtp_v24_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_turquoise_analytics_gtp_v24_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_turquoise_analytics_gtp_v24_4
  omi_lseg_turquoise_analytics_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Turquoise Analytics Gtp 24.4
omi_lseg_turquoise_analytics_gtp_v24_4:register_heuristic("udp", omi_lseg_turquoise_analytics_gtp_v24_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: London Stock Exchange Group
--   Version: 24.4
--   Date: Wednesday, April 24, 2024
--   Specification: gtp-002-technical-guide-turquoise-issue-24-4.pdf
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
