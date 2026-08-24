-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Lse Analytics Gtp 26.2 Protocol
local omi_lseg_lse_analytics_gtp_v26_2 = Proto("Omi.Lseg.Lse.Analytics.Gtp.v26.2", "Lseg Lse Analytics Gtp 26.2")

-- Protocol table
local lseg_lse_analytics_gtp_v26_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Lse Analytics Gtp 26.2 Fields
omi_lseg_lse_analytics_gtp_v26_2.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.lse.analytics.gtp.v26.2.allowedbooktypes", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.average_daily_turnover_adt = ProtoField.new("Average Daily Turnover Adt", "lseg.lse.analytics.gtp.v26.2.averagedailyturnoveradt", ftypes.DOUBLE)
omi_lseg_lse_analytics_gtp_v26_2.fields.bid_ask_spread = ProtoField.new("Bid Ask Spread", "lseg.lse.analytics.gtp.v26.2.bidaskspread", ftypes.DOUBLE)
omi_lseg_lse_analytics_gtp_v26_2.fields.buy_limit_order_cancellations = ProtoField.new("Buy Limit Order Cancellations", "lseg.lse.analytics.gtp.v26.2.buylimitordercancellations", ftypes.UINT32)
omi_lseg_lse_analytics_gtp_v26_2.fields.buy_market_order_cancellations = ProtoField.new("Buy Market Order Cancellations", "lseg.lse.analytics.gtp.v26.2.buymarketordercancellations", ftypes.UINT32)
omi_lseg_lse_analytics_gtp_v26_2.fields.buy_order_cancellations = ProtoField.new("Buy Order Cancellations", "lseg.lse.analytics.gtp.v26.2.buyordercancellations", ftypes.UINT32)
omi_lseg_lse_analytics_gtp_v26_2.fields.buy_order_count = ProtoField.new("Buy Order Count", "lseg.lse.analytics.gtp.v26.2.buyordercount", ftypes.UINT32)
omi_lseg_lse_analytics_gtp_v26_2.fields.buy_order_size = ProtoField.new("Buy Order Size", "lseg.lse.analytics.gtp.v26.2.buyordersize", ftypes.DOUBLE)
omi_lseg_lse_analytics_gtp_v26_2.fields.currency = ProtoField.new("Currency", "lseg.lse.analytics.gtp.v26.2.currency", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.lse.analytics.gtp.v26.2.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_lse_analytics_gtp_v26_2.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.lse.analytics.gtp.v26.2.electronicorderbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_lseg_lse_analytics_gtp_v26_2.fields.end_time = ProtoField.new("End Time", "lseg.lse.analytics.gtp.v26.2.endtime", ftypes.UINT64)
omi_lseg_lse_analytics_gtp_v26_2.fields.event_code = ProtoField.new("Event Code", "lseg.lse.analytics.gtp.v26.2.eventcode", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.firm_quote_book = ProtoField.new("Firm Quote Book", "lseg.lse.analytics.gtp.v26.2.firmquotebook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_lse_analytics_gtp_v26_2.fields.fourth_reserved_8 = ProtoField.new("Fourth Reserved 8", "lseg.lse.analytics.gtp.v26.2.fourthreserved8", ftypes.BYTES)
omi_lseg_lse_analytics_gtp_v26_2.fields.instrument = ProtoField.new("Instrument", "lseg.lse.analytics.gtp.v26.2.instrument", ftypes.UINT64)
omi_lseg_lse_analytics_gtp_v26_2.fields.isin = ProtoField.new("Isin", "lseg.lse.analytics.gtp.v26.2.isin", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.length = ProtoField.new("Length", "lseg.lse.analytics.gtp.v26.2.length", ftypes.UINT16)
omi_lseg_lse_analytics_gtp_v26_2.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.lse.analytics.gtp.v26.2.marketdatagroup", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.message_count = ProtoField.new("Message Count", "lseg.lse.analytics.gtp.v26.2.messagecount", ftypes.UINT8)
omi_lseg_lse_analytics_gtp_v26_2.fields.message_length = ProtoField.new("Message Length", "lseg.lse.analytics.gtp.v26.2.messagelength", ftypes.UINT16)
omi_lseg_lse_analytics_gtp_v26_2.fields.message_type = ProtoField.new("Message Type", "lseg.lse.analytics.gtp.v26.2.messagetype", ftypes.UINT8)
omi_lseg_lse_analytics_gtp_v26_2.fields.new_end_time = ProtoField.new("New End Time", "lseg.lse.analytics.gtp.v26.2.newendtime", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.offbook = ProtoField.new("Offbook", "lseg.lse.analytics.gtp.v26.2.offbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_lseg_lse_analytics_gtp_v26_2.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.lse.analytics.gtp.v26.2.orderbooktype", ftypes.UINT8)
omi_lseg_lse_analytics_gtp_v26_2.fields.partition_id = ProtoField.new("Partition Id", "lseg.lse.analytics.gtp.v26.2.partitionid", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.private_rfq = ProtoField.new("Private Rfq", "lseg.lse.analytics.gtp.v26.2.privaterfq", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_0 = ProtoField.new("Reserved 0", "lseg.lse.analytics.gtp.v26.2.reserved0", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_07 = ProtoField.new("Reserved 07", "lseg.lse.analytics.gtp.v26.2.reserved07", ftypes.UINT8, nil, base.DEC, 0xFF)
omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.lse.analytics.gtp.v26.2.reserved1", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_11 = ProtoField.new("Reserved 11", "lseg.lse.analytics.gtp.v26.2.reserved11", ftypes.BYTES)
omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_12 = ProtoField.new("Reserved 12", "lseg.lse.analytics.gtp.v26.2.reserved12", ftypes.BYTES)
omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.lse.analytics.gtp.v26.2.reserved4", ftypes.BYTES)
omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_57 = ProtoField.new("Reserved 57", "lseg.lse.analytics.gtp.v26.2.reserved57", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.lse.analytics.gtp.v26.2.reserved8", ftypes.BYTES)
omi_lseg_lse_analytics_gtp_v26_2.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "lseg.lse.analytics.gtp.v26.2.secondreserved8", ftypes.BYTES)
omi_lseg_lse_analytics_gtp_v26_2.fields.segment = ProtoField.new("Segment", "lseg.lse.analytics.gtp.v26.2.segment", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.sell_limit_order_cancellations = ProtoField.new("Sell Limit Order Cancellations", "lseg.lse.analytics.gtp.v26.2.selllimitordercancellations", ftypes.UINT32)
omi_lseg_lse_analytics_gtp_v26_2.fields.sell_market_order_cancellations = ProtoField.new("Sell Market Order Cancellations", "lseg.lse.analytics.gtp.v26.2.sellmarketordercancellations", ftypes.UINT32)
omi_lseg_lse_analytics_gtp_v26_2.fields.sell_order_cancellations = ProtoField.new("Sell Order Cancellations", "lseg.lse.analytics.gtp.v26.2.sellordercancellations", ftypes.UINT32)
omi_lseg_lse_analytics_gtp_v26_2.fields.sell_order_count = ProtoField.new("Sell Order Count", "lseg.lse.analytics.gtp.v26.2.sellordercount", ftypes.UINT32)
omi_lseg_lse_analytics_gtp_v26_2.fields.sell_order_size = ProtoField.new("Sell Order Size", "lseg.lse.analytics.gtp.v26.2.sellordersize", ftypes.DOUBLE)
omi_lseg_lse_analytics_gtp_v26_2.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.lse.analytics.gtp.v26.2.sequencenumber", ftypes.UINT32)
omi_lseg_lse_analytics_gtp_v26_2.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.lse.analytics.gtp.v26.2.sessionchangereason", ftypes.UINT8)
omi_lseg_lse_analytics_gtp_v26_2.fields.source_venue = ProtoField.new("Source Venue", "lseg.lse.analytics.gtp.v26.2.sourcevenue", ftypes.UINT16)
omi_lseg_lse_analytics_gtp_v26_2.fields.start_time = ProtoField.new("Start Time", "lseg.lse.analytics.gtp.v26.2.starttime", ftypes.UINT64)
omi_lseg_lse_analytics_gtp_v26_2.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.lse.analytics.gtp.v26.2.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_lse_analytics_gtp_v26_2.fields.third_reserved_8 = ProtoField.new("Third Reserved 8", "lseg.lse.analytics.gtp.v26.2.thirdreserved8", ftypes.BYTES)
omi_lseg_lse_analytics_gtp_v26_2.fields.tick_id = ProtoField.new("Tick Id", "lseg.lse.analytics.gtp.v26.2.tickid", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.timestamp = ProtoField.new("Timestamp", "lseg.lse.analytics.gtp.v26.2.timestamp", ftypes.UINT64)
omi_lseg_lse_analytics_gtp_v26_2.fields.trading_status = ProtoField.new("Trading Status", "lseg.lse.analytics.gtp.v26.2.tradingstatus", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.lse.analytics.gtp.v26.2.venueinstrumentid", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.vwap_buy = ProtoField.new("Vwap Buy", "lseg.lse.analytics.gtp.v26.2.vwapbuy", ftypes.DOUBLE)
omi_lseg_lse_analytics_gtp_v26_2.fields.vwap_sell = ProtoField.new("Vwap Sell", "lseg.lse.analytics.gtp.v26.2.vwapsell", ftypes.DOUBLE)

-- Lseg Lse Analytics Gtp 26.2 Headers
omi_lseg_lse_analytics_gtp_v26_2.fields.message = ProtoField.new("Message", "lseg.lse.analytics.gtp.v26.2.message", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.message_header = ProtoField.new("Message Header", "lseg.lse.analytics.gtp.v26.2.messageheader", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.packet = ProtoField.new("Packet", "lseg.lse.analytics.gtp.v26.2.packet", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.unit_header = ProtoField.new("Unit Header", "lseg.lse.analytics.gtp.v26.2.unitheader", ftypes.STRING)

-- Lseg Lse Analytics 26.2 Application Messages
omi_lseg_lse_analytics_gtp_v26_2.fields.analytics_message = ProtoField.new("Analytics Message", "lseg.lse.analytics.gtp.v26.2.analyticsmessage", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.lse.analytics.gtp.v26.2.instrumentdirectorymessage", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.lse.analytics.gtp.v26.2.instrumentstatusmessage", ftypes.STRING)
omi_lseg_lse_analytics_gtp_v26_2.fields.system_event_message = ProtoField.new("System Event Message", "lseg.lse.analytics.gtp.v26.2.systemeventmessage", ftypes.STRING)

-- Lseg Lse Analytics Gtp 26.2 generated fields
omi_lseg_lse_analytics_gtp_v26_2.fields.message_index = ProtoField.new("Message Index", "lseg.lse.analytics.gtp.v26.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Lse Analytics Gtp 26.2 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Lseg Lse Analytics Gtp 26.2 Show Options
omi_lseg_lse_analytics_gtp_v26_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_lse_analytics_gtp_v26_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_lse_analytics_gtp_v26_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lseg_lse_analytics_gtp_v26_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_lseg_lse_analytics_gtp_v26_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_lse_analytics_gtp_v26_2.prefs.show_application_messages then
    show.application_messages = omi_lseg_lse_analytics_gtp_v26_2.prefs.show_application_messages
  end
  if show.headers ~= omi_lseg_lse_analytics_gtp_v26_2.prefs.show_headers then
    show.headers = omi_lseg_lse_analytics_gtp_v26_2.prefs.show_headers
  end
  if show.structs ~= omi_lseg_lse_analytics_gtp_v26_2.prefs.show_structs then
    show.structs = omi_lseg_lse_analytics_gtp_v26_2.prefs.show_structs
  end
  if show.indexes ~= omi_lseg_lse_analytics_gtp_v26_2.prefs.show_indexes then
    show.indexes = omi_lseg_lse_analytics_gtp_v26_2.prefs.show_indexes
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
-- Lseg Lse Analytics Gtp 26.2 Fields
-----------------------------------------------------------------------

-- Average Daily Turnover Adt
lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt = {}

-- Size: Average Daily Turnover Adt
lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt.size = 8

-- Display: Average Daily Turnover Adt
lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt.display = function(value)
  return "Average Daily Turnover Adt: "..value
end

-- Translate: Average Daily Turnover Adt
lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Average Daily Turnover Adt
lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt.translate(raw)
  local display = lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.average_daily_turnover_adt, range, value, display)

  return offset + length, value
end

-- Bid Ask Spread
lseg_lse_analytics_gtp_v26_2.bid_ask_spread = {}

-- Size: Bid Ask Spread
lseg_lse_analytics_gtp_v26_2.bid_ask_spread.size = 8

-- Display: Bid Ask Spread
lseg_lse_analytics_gtp_v26_2.bid_ask_spread.display = function(value)
  return "Bid Ask Spread: "..value
end

-- Translate: Bid Ask Spread
lseg_lse_analytics_gtp_v26_2.bid_ask_spread.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Ask Spread
lseg_lse_analytics_gtp_v26_2.bid_ask_spread.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.bid_ask_spread.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_analytics_gtp_v26_2.bid_ask_spread.translate(raw)
  local display = lseg_lse_analytics_gtp_v26_2.bid_ask_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.bid_ask_spread, range, value, display)

  return offset + length, value
end

-- Buy Limit Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_limit_order_cancellations = {}

-- Size: Buy Limit Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_limit_order_cancellations.size = 4

-- Display: Buy Limit Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_limit_order_cancellations.display = function(value)
  return "Buy Limit Order Cancellations: "..value
end

-- Dissect: Buy Limit Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_limit_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.buy_limit_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.buy_limit_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.buy_limit_order_cancellations, range, value, display)

  return offset + length, value
end

-- Buy Market Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_market_order_cancellations = {}

-- Size: Buy Market Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_market_order_cancellations.size = 4

-- Display: Buy Market Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_market_order_cancellations.display = function(value)
  return "Buy Market Order Cancellations: "..value
end

-- Dissect: Buy Market Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_market_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.buy_market_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.buy_market_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.buy_market_order_cancellations, range, value, display)

  return offset + length, value
end

-- Buy Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_order_cancellations = {}

-- Size: Buy Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_order_cancellations.size = 4

-- Display: Buy Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_order_cancellations.display = function(value)
  return "Buy Order Cancellations: "..value
end

-- Dissect: Buy Order Cancellations
lseg_lse_analytics_gtp_v26_2.buy_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.buy_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.buy_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.buy_order_cancellations, range, value, display)

  return offset + length, value
end

-- Buy Order Count
lseg_lse_analytics_gtp_v26_2.buy_order_count = {}

-- Size: Buy Order Count
lseg_lse_analytics_gtp_v26_2.buy_order_count.size = 4

-- Display: Buy Order Count
lseg_lse_analytics_gtp_v26_2.buy_order_count.display = function(value)
  return "Buy Order Count: "..value
end

-- Dissect: Buy Order Count
lseg_lse_analytics_gtp_v26_2.buy_order_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.buy_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.buy_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.buy_order_count, range, value, display)

  return offset + length, value
end

-- Buy Order Size
lseg_lse_analytics_gtp_v26_2.buy_order_size = {}

-- Size: Buy Order Size
lseg_lse_analytics_gtp_v26_2.buy_order_size.size = 8

-- Display: Buy Order Size
lseg_lse_analytics_gtp_v26_2.buy_order_size.display = function(value)
  return "Buy Order Size: "..value
end

-- Translate: Buy Order Size
lseg_lse_analytics_gtp_v26_2.buy_order_size.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Buy Order Size
lseg_lse_analytics_gtp_v26_2.buy_order_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.buy_order_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_analytics_gtp_v26_2.buy_order_size.translate(raw)
  local display = lseg_lse_analytics_gtp_v26_2.buy_order_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.buy_order_size, range, value, display)

  return offset + length, value
end

-- Currency
lseg_lse_analytics_gtp_v26_2.currency = {}

-- Size: Currency
lseg_lse_analytics_gtp_v26_2.currency.size = 3

-- Display: Currency
lseg_lse_analytics_gtp_v26_2.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_lse_analytics_gtp_v26_2.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_analytics_gtp_v26_2.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- End Time
lseg_lse_analytics_gtp_v26_2.end_time = {}

-- Size: End Time
lseg_lse_analytics_gtp_v26_2.end_time.size = 8

-- Display: End Time
lseg_lse_analytics_gtp_v26_2.end_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "End Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: End Time
lseg_lse_analytics_gtp_v26_2.end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_analytics_gtp_v26_2.end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.end_time, range, value, display)

  return offset + length, value
end

-- Event Code
lseg_lse_analytics_gtp_v26_2.event_code = {}

-- Size: Event Code
lseg_lse_analytics_gtp_v26_2.event_code.size = 1

-- Display: Event Code
lseg_lse_analytics_gtp_v26_2.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_lse_analytics_gtp_v26_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_analytics_gtp_v26_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 8
lseg_lse_analytics_gtp_v26_2.fourth_reserved_8 = {}

-- Size: Fourth Reserved 8
lseg_lse_analytics_gtp_v26_2.fourth_reserved_8.size = 8

-- Display: Fourth Reserved 8
lseg_lse_analytics_gtp_v26_2.fourth_reserved_8.display = function(value)
  return "Fourth Reserved 8: "..value
end

-- Dissect: Fourth Reserved 8
lseg_lse_analytics_gtp_v26_2.fourth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.fourth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_analytics_gtp_v26_2.fourth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.fourth_reserved_8, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_lse_analytics_gtp_v26_2.instrument = {}

-- Size: Instrument
lseg_lse_analytics_gtp_v26_2.instrument.size = 8

-- Display: Instrument
lseg_lse_analytics_gtp_v26_2.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_lse_analytics_gtp_v26_2.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_analytics_gtp_v26_2.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.instrument, range, value, display)

  return offset + length, value
end

-- Isin
lseg_lse_analytics_gtp_v26_2.isin = {}

-- Size: Isin
lseg_lse_analytics_gtp_v26_2.isin.size = 12

-- Display: Isin
lseg_lse_analytics_gtp_v26_2.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_lse_analytics_gtp_v26_2.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_analytics_gtp_v26_2.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.isin, range, value, display)

  return offset + length, value
end

-- Length
lseg_lse_analytics_gtp_v26_2.length = {}

-- Size: Length
lseg_lse_analytics_gtp_v26_2.length.size = 2

-- Display: Length
lseg_lse_analytics_gtp_v26_2.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_lse_analytics_gtp_v26_2.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.length, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_lse_analytics_gtp_v26_2.market_data_group = {}

-- Size: Market Data Group
lseg_lse_analytics_gtp_v26_2.market_data_group.size = 1

-- Display: Market Data Group
lseg_lse_analytics_gtp_v26_2.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_lse_analytics_gtp_v26_2.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_analytics_gtp_v26_2.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_lse_analytics_gtp_v26_2.message_count = {}

-- Size: Message Count
lseg_lse_analytics_gtp_v26_2.message_count.size = 1

-- Display: Message Count
lseg_lse_analytics_gtp_v26_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_lse_analytics_gtp_v26_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_lse_analytics_gtp_v26_2.message_length = {}

-- Size: Message Length
lseg_lse_analytics_gtp_v26_2.message_length.size = 2

-- Display: Message Length
lseg_lse_analytics_gtp_v26_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_lse_analytics_gtp_v26_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_lse_analytics_gtp_v26_2.message_type = {}

-- Size: Message Type
lseg_lse_analytics_gtp_v26_2.message_type.size = 1

-- Display: Message Type
lseg_lse_analytics_gtp_v26_2.message_type.display = function(value)
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
    return "Message Type: Analytics Message (0x61)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_lse_analytics_gtp_v26_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse_analytics_gtp_v26_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_lse_analytics_gtp_v26_2.new_end_time = {}

-- Size: New End Time
lseg_lse_analytics_gtp_v26_2.new_end_time.size = 6

-- Display: New End Time
lseg_lse_analytics_gtp_v26_2.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_lse_analytics_gtp_v26_2.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_analytics_gtp_v26_2.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Order Book Type
lseg_lse_analytics_gtp_v26_2.order_book_type = {}

-- Size: Order Book Type
lseg_lse_analytics_gtp_v26_2.order_book_type.size = 1

-- Display: Order Book Type
lseg_lse_analytics_gtp_v26_2.order_book_type.display = function(value)
  if value == 1 then
    return "Order Book Type: Firm Quote Book (1)"
  end
  if value == 2 then
    return "Order Book Type: Offbook (2)"
  end
  if value == 3 then
    return "Order Book Type: Electronic Order Book (3)"
  end
  if value == 4 then
    return "Order Book Type: Private Rfq (4)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_lse_analytics_gtp_v26_2.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Partition Id
lseg_lse_analytics_gtp_v26_2.partition_id = {}

-- Size: Partition Id
lseg_lse_analytics_gtp_v26_2.partition_id.size = 1

-- Display: Partition Id
lseg_lse_analytics_gtp_v26_2.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
lseg_lse_analytics_gtp_v26_2.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.partition_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_analytics_gtp_v26_2.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Reserved 11
lseg_lse_analytics_gtp_v26_2.reserved_11 = {}

-- Size: Reserved 11
lseg_lse_analytics_gtp_v26_2.reserved_11.size = 11

-- Display: Reserved 11
lseg_lse_analytics_gtp_v26_2.reserved_11.display = function(value)
  return "Reserved 11: "..value
end

-- Dissect: Reserved 11
lseg_lse_analytics_gtp_v26_2.reserved_11.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.reserved_11.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_analytics_gtp_v26_2.reserved_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_11, range, value, display)

  return offset + length, value
end

-- Reserved 12
lseg_lse_analytics_gtp_v26_2.reserved_12 = {}

-- Size: Reserved 12
lseg_lse_analytics_gtp_v26_2.reserved_12.size = 12

-- Display: Reserved 12
lseg_lse_analytics_gtp_v26_2.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
lseg_lse_analytics_gtp_v26_2.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_analytics_gtp_v26_2.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 4
lseg_lse_analytics_gtp_v26_2.reserved_4 = {}

-- Size: Reserved 4
lseg_lse_analytics_gtp_v26_2.reserved_4.size = 4

-- Display: Reserved 4
lseg_lse_analytics_gtp_v26_2.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_lse_analytics_gtp_v26_2.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_analytics_gtp_v26_2.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
lseg_lse_analytics_gtp_v26_2.reserved_8 = {}

-- Size: Reserved 8
lseg_lse_analytics_gtp_v26_2.reserved_8.size = 8

-- Display: Reserved 8
lseg_lse_analytics_gtp_v26_2.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_lse_analytics_gtp_v26_2.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_analytics_gtp_v26_2.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Second Reserved 8
lseg_lse_analytics_gtp_v26_2.second_reserved_8 = {}

-- Size: Second Reserved 8
lseg_lse_analytics_gtp_v26_2.second_reserved_8.size = 8

-- Display: Second Reserved 8
lseg_lse_analytics_gtp_v26_2.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
lseg_lse_analytics_gtp_v26_2.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_analytics_gtp_v26_2.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.second_reserved_8, range, value, display)

  return offset + length, value
end

-- Segment
lseg_lse_analytics_gtp_v26_2.segment = {}

-- Size: Segment
lseg_lse_analytics_gtp_v26_2.segment.size = 6

-- Display: Segment
lseg_lse_analytics_gtp_v26_2.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_lse_analytics_gtp_v26_2.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_analytics_gtp_v26_2.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.segment, range, value, display)

  return offset + length, value
end

-- Sell Limit Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_limit_order_cancellations = {}

-- Size: Sell Limit Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_limit_order_cancellations.size = 4

-- Display: Sell Limit Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_limit_order_cancellations.display = function(value)
  return "Sell Limit Order Cancellations: "..value
end

-- Dissect: Sell Limit Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_limit_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.sell_limit_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.sell_limit_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.sell_limit_order_cancellations, range, value, display)

  return offset + length, value
end

-- Sell Market Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_market_order_cancellations = {}

-- Size: Sell Market Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_market_order_cancellations.size = 4

-- Display: Sell Market Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_market_order_cancellations.display = function(value)
  return "Sell Market Order Cancellations: "..value
end

-- Dissect: Sell Market Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_market_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.sell_market_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.sell_market_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.sell_market_order_cancellations, range, value, display)

  return offset + length, value
end

-- Sell Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_order_cancellations = {}

-- Size: Sell Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_order_cancellations.size = 4

-- Display: Sell Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_order_cancellations.display = function(value)
  return "Sell Order Cancellations: "..value
end

-- Dissect: Sell Order Cancellations
lseg_lse_analytics_gtp_v26_2.sell_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.sell_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.sell_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.sell_order_cancellations, range, value, display)

  return offset + length, value
end

-- Sell Order Count
lseg_lse_analytics_gtp_v26_2.sell_order_count = {}

-- Size: Sell Order Count
lseg_lse_analytics_gtp_v26_2.sell_order_count.size = 4

-- Display: Sell Order Count
lseg_lse_analytics_gtp_v26_2.sell_order_count.display = function(value)
  return "Sell Order Count: "..value
end

-- Dissect: Sell Order Count
lseg_lse_analytics_gtp_v26_2.sell_order_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.sell_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.sell_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.sell_order_count, range, value, display)

  return offset + length, value
end

-- Sell Order Size
lseg_lse_analytics_gtp_v26_2.sell_order_size = {}

-- Size: Sell Order Size
lseg_lse_analytics_gtp_v26_2.sell_order_size.size = 8

-- Display: Sell Order Size
lseg_lse_analytics_gtp_v26_2.sell_order_size.display = function(value)
  return "Sell Order Size: "..value
end

-- Translate: Sell Order Size
lseg_lse_analytics_gtp_v26_2.sell_order_size.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sell Order Size
lseg_lse_analytics_gtp_v26_2.sell_order_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.sell_order_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_analytics_gtp_v26_2.sell_order_size.translate(raw)
  local display = lseg_lse_analytics_gtp_v26_2.sell_order_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.sell_order_size, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_lse_analytics_gtp_v26_2.sequence_number = {}

-- Size: Sequence Number
lseg_lse_analytics_gtp_v26_2.sequence_number.size = 4

-- Display: Sequence Number
lseg_lse_analytics_gtp_v26_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_lse_analytics_gtp_v26_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_lse_analytics_gtp_v26_2.session_change_reason = {}

-- Size: Session Change Reason
lseg_lse_analytics_gtp_v26_2.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_lse_analytics_gtp_v26_2.session_change_reason.display = function(value)
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
lseg_lse_analytics_gtp_v26_2.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_lse_analytics_gtp_v26_2.source_venue = {}

-- Size: Source Venue
lseg_lse_analytics_gtp_v26_2.source_venue.size = 2

-- Display: Source Venue
lseg_lse_analytics_gtp_v26_2.source_venue.display = function(value)
  if value == 1 then
    return "Source Venue: London Stock Exchange (1)"
  end

  return "Source Venue: Unknown("..value..")"
end

-- Dissect: Source Venue
lseg_lse_analytics_gtp_v26_2.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Start Time
lseg_lse_analytics_gtp_v26_2.start_time = {}

-- Size: Start Time
lseg_lse_analytics_gtp_v26_2.start_time.size = 8

-- Display: Start Time
lseg_lse_analytics_gtp_v26_2.start_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Start Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Start Time
lseg_lse_analytics_gtp_v26_2.start_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_analytics_gtp_v26_2.start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.start_time, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Third Reserved 8
lseg_lse_analytics_gtp_v26_2.third_reserved_8 = {}

-- Size: Third Reserved 8
lseg_lse_analytics_gtp_v26_2.third_reserved_8.size = 8

-- Display: Third Reserved 8
lseg_lse_analytics_gtp_v26_2.third_reserved_8.display = function(value)
  return "Third Reserved 8: "..value
end

-- Dissect: Third Reserved 8
lseg_lse_analytics_gtp_v26_2.third_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.third_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_analytics_gtp_v26_2.third_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.third_reserved_8, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_lse_analytics_gtp_v26_2.tick_id = {}

-- Size: Tick Id
lseg_lse_analytics_gtp_v26_2.tick_id.size = 2

-- Display: Tick Id
lseg_lse_analytics_gtp_v26_2.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_lse_analytics_gtp_v26_2.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_analytics_gtp_v26_2.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_lse_analytics_gtp_v26_2.timestamp = {}

-- Size: Timestamp
lseg_lse_analytics_gtp_v26_2.timestamp.size = 8

-- Display: Timestamp
lseg_lse_analytics_gtp_v26_2.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_lse_analytics_gtp_v26_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_analytics_gtp_v26_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_lse_analytics_gtp_v26_2.trading_status = {}

-- Size: Trading Status
lseg_lse_analytics_gtp_v26_2.trading_status.size = 1

-- Display: Trading Status
lseg_lse_analytics_gtp_v26_2.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halt (H)"
  end
  if value == "J" then
    return "Trading Status: Halt Matching Partition Suspended (J)"
  end
  if value == "K" then
    return "Trading Status: Halt System Suspended (K)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading Start Trade Reporting (T)"
  end
  if value == "P" then
    return "Trading Status: Halt Regulatory (P)"
  end
  if value == "t" then
    return "Trading Status: End Trade Reporting (t)"
  end
  if value == "a" then
    return "Trading Status: Opening Auction Call (a)"
  end
  if value == "b" then
    return "Trading Status: Post Close (b)"
  end
  if value == "c" then
    return "Trading Status: Closed (c)"
  end
  if value == "d" then
    return "Trading Status: Closing Auction Call (d)"
  end
  if value == "e" then
    return "Trading Status: Aesp Auction Call (e)"
  end
  if value == "f" then
    return "Trading Status: Resume Auction (f)"
  end
  if value == "m" then
    return "Trading Status: Pre Mandatory (m)"
  end
  if value == "n" then
    return "Trading Status: Mandatory (n)"
  end
  if value == "o" then
    return "Trading Status: Post Mandatory (o)"
  end
  if value == "q" then
    return "Trading Status: Edsp Auction Call (q)"
  end
  if value == "r" then
    return "Trading Status: Periodic Auction Call (r)"
  end
  if value == "1" then
    return "Trading Status: Inactive (1)"
  end
  if value == "2" then
    return "Trading Status: Suspended (2)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end
  if value == "x" then
    return "Trading Status: End Of Post Close (x)"
  end
  if value == "u" then
    return "Trading Status: Closing Price Crossing Session (u)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_lse_analytics_gtp_v26_2.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_analytics_gtp_v26_2.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_lse_analytics_gtp_v26_2.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_lse_analytics_gtp_v26_2.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_lse_analytics_gtp_v26_2.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_lse_analytics_gtp_v26_2.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_analytics_gtp_v26_2.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Vwap Buy
lseg_lse_analytics_gtp_v26_2.vwap_buy = {}

-- Size: Vwap Buy
lseg_lse_analytics_gtp_v26_2.vwap_buy.size = 8

-- Display: Vwap Buy
lseg_lse_analytics_gtp_v26_2.vwap_buy.display = function(value)
  return "Vwap Buy: "..value
end

-- Translate: Vwap Buy
lseg_lse_analytics_gtp_v26_2.vwap_buy.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwap Buy
lseg_lse_analytics_gtp_v26_2.vwap_buy.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.vwap_buy.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_analytics_gtp_v26_2.vwap_buy.translate(raw)
  local display = lseg_lse_analytics_gtp_v26_2.vwap_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.vwap_buy, range, value, display)

  return offset + length, value
end

-- Vwap Sell
lseg_lse_analytics_gtp_v26_2.vwap_sell = {}

-- Size: Vwap Sell
lseg_lse_analytics_gtp_v26_2.vwap_sell.size = 8

-- Display: Vwap Sell
lseg_lse_analytics_gtp_v26_2.vwap_sell.display = function(value)
  return "Vwap Sell: "..value
end

-- Translate: Vwap Sell
lseg_lse_analytics_gtp_v26_2.vwap_sell.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwap Sell
lseg_lse_analytics_gtp_v26_2.vwap_sell.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_analytics_gtp_v26_2.vwap_sell.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_analytics_gtp_v26_2.vwap_sell.translate(raw)
  local display = lseg_lse_analytics_gtp_v26_2.vwap_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.vwap_sell, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Lse Analytics Gtp 26.2
-----------------------------------------------------------------------

-- Analytics Message
lseg_lse_analytics_gtp_v26_2.analytics_message = {}

-- Size: Analytics Message
lseg_lse_analytics_gtp_v26_2.analytics_message.size =
  lseg_lse_analytics_gtp_v26_2.timestamp.size + 
  lseg_lse_analytics_gtp_v26_2.instrument.size + 
  lseg_lse_analytics_gtp_v26_2.source_venue.size + 
  lseg_lse_analytics_gtp_v26_2.start_time.size + 
  lseg_lse_analytics_gtp_v26_2.end_time.size + 
  lseg_lse_analytics_gtp_v26_2.buy_order_count.size + 
  lseg_lse_analytics_gtp_v26_2.sell_order_count.size + 
  lseg_lse_analytics_gtp_v26_2.buy_order_size.size + 
  lseg_lse_analytics_gtp_v26_2.sell_order_size.size + 
  lseg_lse_analytics_gtp_v26_2.buy_order_cancellations.size + 
  lseg_lse_analytics_gtp_v26_2.sell_order_cancellations.size + 
  lseg_lse_analytics_gtp_v26_2.buy_limit_order_cancellations.size + 
  lseg_lse_analytics_gtp_v26_2.buy_market_order_cancellations.size + 
  lseg_lse_analytics_gtp_v26_2.sell_limit_order_cancellations.size + 
  lseg_lse_analytics_gtp_v26_2.sell_market_order_cancellations.size + 
  lseg_lse_analytics_gtp_v26_2.bid_ask_spread.size + 
  lseg_lse_analytics_gtp_v26_2.vwap_buy.size + 
  lseg_lse_analytics_gtp_v26_2.vwap_sell.size

-- Display: Analytics Message
lseg_lse_analytics_gtp_v26_2.analytics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Analytics Message
lseg_lse_analytics_gtp_v26_2.analytics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_analytics_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_analytics_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_analytics_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Start Time: UDT
  index, start_time = lseg_lse_analytics_gtp_v26_2.start_time.dissect(buffer, index, packet, parent)

  -- End Time: UDT
  index, end_time = lseg_lse_analytics_gtp_v26_2.end_time.dissect(buffer, index, packet, parent)

  -- Buy Order Count: UInt32
  index, buy_order_count = lseg_lse_analytics_gtp_v26_2.buy_order_count.dissect(buffer, index, packet, parent)

  -- Sell Order Count: UInt32
  index, sell_order_count = lseg_lse_analytics_gtp_v26_2.sell_order_count.dissect(buffer, index, packet, parent)

  -- Buy Order Size: Size4
  index, buy_order_size = lseg_lse_analytics_gtp_v26_2.buy_order_size.dissect(buffer, index, packet, parent)

  -- Sell Order Size: Size4
  index, sell_order_size = lseg_lse_analytics_gtp_v26_2.sell_order_size.dissect(buffer, index, packet, parent)

  -- Buy Order Cancellations: UInt32
  index, buy_order_cancellations = lseg_lse_analytics_gtp_v26_2.buy_order_cancellations.dissect(buffer, index, packet, parent)

  -- Sell Order Cancellations: UInt32
  index, sell_order_cancellations = lseg_lse_analytics_gtp_v26_2.sell_order_cancellations.dissect(buffer, index, packet, parent)

  -- Buy Limit Order Cancellations: UInt32
  index, buy_limit_order_cancellations = lseg_lse_analytics_gtp_v26_2.buy_limit_order_cancellations.dissect(buffer, index, packet, parent)

  -- Buy Market Order Cancellations: UInt32
  index, buy_market_order_cancellations = lseg_lse_analytics_gtp_v26_2.buy_market_order_cancellations.dissect(buffer, index, packet, parent)

  -- Sell Limit Order Cancellations: UInt32
  index, sell_limit_order_cancellations = lseg_lse_analytics_gtp_v26_2.sell_limit_order_cancellations.dissect(buffer, index, packet, parent)

  -- Sell Market Order Cancellations: UInt32
  index, sell_market_order_cancellations = lseg_lse_analytics_gtp_v26_2.sell_market_order_cancellations.dissect(buffer, index, packet, parent)

  -- Bid Ask Spread: Price
  index, bid_ask_spread = lseg_lse_analytics_gtp_v26_2.bid_ask_spread.dissect(buffer, index, packet, parent)

  -- Vwap Buy: Price
  index, vwap_buy = lseg_lse_analytics_gtp_v26_2.vwap_buy.dissect(buffer, index, packet, parent)

  -- Vwap Sell: Price
  index, vwap_sell = lseg_lse_analytics_gtp_v26_2.vwap_sell.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Analytics Message
lseg_lse_analytics_gtp_v26_2.analytics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.analytics_message, buffer(offset, 0))
    local index = lseg_lse_analytics_gtp_v26_2.analytics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_analytics_gtp_v26_2.analytics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_analytics_gtp_v26_2.analytics_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Message
lseg_lse_analytics_gtp_v26_2.instrument_status_message = {}

-- Size: Instrument Status Message
lseg_lse_analytics_gtp_v26_2.instrument_status_message.size =
  lseg_lse_analytics_gtp_v26_2.timestamp.size + 
  lseg_lse_analytics_gtp_v26_2.instrument.size + 
  lseg_lse_analytics_gtp_v26_2.source_venue.size + 
  lseg_lse_analytics_gtp_v26_2.trading_status.size + 
  lseg_lse_analytics_gtp_v26_2.session_change_reason.size + 
  lseg_lse_analytics_gtp_v26_2.new_end_time.size + 
  lseg_lse_analytics_gtp_v26_2.order_book_type.size

-- Display: Instrument Status Message
lseg_lse_analytics_gtp_v26_2.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_lse_analytics_gtp_v26_2.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_analytics_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_analytics_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_analytics_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_lse_analytics_gtp_v26_2.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_lse_analytics_gtp_v26_2.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_lse_analytics_gtp_v26_2.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse_analytics_gtp_v26_2.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_lse_analytics_gtp_v26_2.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_lse_analytics_gtp_v26_2.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_analytics_gtp_v26_2.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_analytics_gtp_v26_2.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 1
lseg_lse_analytics_gtp_v26_2.reserved_1 = {}

-- Size: Reserved 1
lseg_lse_analytics_gtp_v26_2.reserved_1.size = 1

-- Display: Reserved 1
lseg_lse_analytics_gtp_v26_2.reserved_1.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Reserved 1
lseg_lse_analytics_gtp_v26_2.reserved_1.bits = function(range, value, packet, parent)

  -- Reserved 07: 8 Bit
  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_07, range, value)
end

-- Dissect: Reserved 1
lseg_lse_analytics_gtp_v26_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_analytics_gtp_v26_2.reserved_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.reserved_1.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_1, range, display)

  if show.structs then
    lseg_lse_analytics_gtp_v26_2.reserved_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Allowed Book Types
lseg_lse_analytics_gtp_v26_2.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_lse_analytics_gtp_v26_2.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_lse_analytics_gtp_v26_2.allowed_book_types.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Reserved 0 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Reserved 0"
  end
  -- Is Firm Quote Book flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Firm Quote Book"
  end
  -- Is Offbook flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Offbook"
  end
  -- Is Electronic Order Book flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Electronic Order Book"
  end
  -- Is Private Rfq flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Private Rfq"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Allowed Book Types
lseg_lse_analytics_gtp_v26_2.allowed_book_types.bits = function(range, value, packet, parent)

  -- Reserved 0: 1 Bit
  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_0, range, value)

  -- Firm Quote Book: 1 Bit
  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.firm_quote_book, range, value)

  -- Offbook: 1 Bit
  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.offbook, range, value)

  -- Electronic Order Book: 1 Bit
  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.electronic_order_book, range, value)

  -- Private Rfq: 1 Bit
  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.private_rfq, range, value)

  -- Reserved 57: 3 Bit
  parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.reserved_57, range, value)
end

-- Dissect: Allowed Book Types
lseg_lse_analytics_gtp_v26_2.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_analytics_gtp_v26_2.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_analytics_gtp_v26_2.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.allowed_book_types, range, display)

  if show.structs then
    lseg_lse_analytics_gtp_v26_2.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Message
lseg_lse_analytics_gtp_v26_2.instrument_directory_message = {}

-- Size: Instrument Directory Message
lseg_lse_analytics_gtp_v26_2.instrument_directory_message.size =
  lseg_lse_analytics_gtp_v26_2.timestamp.size + 
  lseg_lse_analytics_gtp_v26_2.instrument.size + 
  lseg_lse_analytics_gtp_v26_2.isin.size + 
  lseg_lse_analytics_gtp_v26_2.allowed_book_types.size + 
  lseg_lse_analytics_gtp_v26_2.source_venue.size + 
  lseg_lse_analytics_gtp_v26_2.venue_instrument_id.size + 
  lseg_lse_analytics_gtp_v26_2.tick_id.size + 
  lseg_lse_analytics_gtp_v26_2.reserved_8.size + 
  lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances.size + 
  lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances.size + 
  lseg_lse_analytics_gtp_v26_2.segment.size + 
  lseg_lse_analytics_gtp_v26_2.reserved_12.size + 
  lseg_lse_analytics_gtp_v26_2.reserved_11.size + 
  lseg_lse_analytics_gtp_v26_2.currency.size + 
  lseg_lse_analytics_gtp_v26_2.partition_id.size + 
  lseg_lse_analytics_gtp_v26_2.reserved_4.size + 
  lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt.size + 
  lseg_lse_analytics_gtp_v26_2.second_reserved_8.size + 
  lseg_lse_analytics_gtp_v26_2.reserved_1.size + 
  lseg_lse_analytics_gtp_v26_2.third_reserved_8.size + 
  lseg_lse_analytics_gtp_v26_2.fourth_reserved_8.size

-- Display: Instrument Directory Message
lseg_lse_analytics_gtp_v26_2.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_lse_analytics_gtp_v26_2.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_analytics_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_analytics_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_lse_analytics_gtp_v26_2.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 6 fields
  index, allowed_book_types = lseg_lse_analytics_gtp_v26_2.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_analytics_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: Alpha
  index, venue_instrument_id = lseg_lse_analytics_gtp_v26_2.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: Alpha
  index, tick_id = lseg_lse_analytics_gtp_v26_2.tick_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_lse_analytics_gtp_v26_2.reserved_8.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: Price
  index, dynamic_circuit_breaker_tolerances = lseg_lse_analytics_gtp_v26_2.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: Price
  index, static_circuit_breaker_tolerances = lseg_lse_analytics_gtp_v26_2.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_lse_analytics_gtp_v26_2.segment.dissect(buffer, index, packet, parent)

  -- Reserved 12: Alpha
  index, reserved_12 = lseg_lse_analytics_gtp_v26_2.reserved_12.dissect(buffer, index, packet, parent)

  -- Reserved 11: Alpha
  index, reserved_11 = lseg_lse_analytics_gtp_v26_2.reserved_11.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_lse_analytics_gtp_v26_2.currency.dissect(buffer, index, packet, parent)

  -- Partition Id: Byte
  index, partition_id = lseg_lse_analytics_gtp_v26_2.partition_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = lseg_lse_analytics_gtp_v26_2.reserved_4.dissect(buffer, index, packet, parent)

  -- Average Daily Turnover Adt: Price4
  index, average_daily_turnover_adt = lseg_lse_analytics_gtp_v26_2.average_daily_turnover_adt.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: Price
  index, second_reserved_8 = lseg_lse_analytics_gtp_v26_2.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: Struct of 1 fields
  index, reserved_1 = lseg_lse_analytics_gtp_v26_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Third Reserved 8: Price
  index, third_reserved_8 = lseg_lse_analytics_gtp_v26_2.third_reserved_8.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 8: Price
  index, fourth_reserved_8 = lseg_lse_analytics_gtp_v26_2.fourth_reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_lse_analytics_gtp_v26_2.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_lse_analytics_gtp_v26_2.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_analytics_gtp_v26_2.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_analytics_gtp_v26_2.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
lseg_lse_analytics_gtp_v26_2.system_event_message = {}

-- Size: System Event Message
lseg_lse_analytics_gtp_v26_2.system_event_message.size =
  lseg_lse_analytics_gtp_v26_2.timestamp.size + 
  lseg_lse_analytics_gtp_v26_2.event_code.size + 
  lseg_lse_analytics_gtp_v26_2.source_venue.size

-- Display: System Event Message
lseg_lse_analytics_gtp_v26_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_lse_analytics_gtp_v26_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_analytics_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = lseg_lse_analytics_gtp_v26_2.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_analytics_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_lse_analytics_gtp_v26_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.system_event_message, buffer(offset, 0))
    local index = lseg_lse_analytics_gtp_v26_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_analytics_gtp_v26_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_analytics_gtp_v26_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_lse_analytics_gtp_v26_2.payload = {}

-- Dissect: Payload
lseg_lse_analytics_gtp_v26_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_lse_analytics_gtp_v26_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_lse_analytics_gtp_v26_2.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_lse_analytics_gtp_v26_2.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Analytics Message
  if message_type == 0x61 then
    return lseg_lse_analytics_gtp_v26_2.analytics_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_lse_analytics_gtp_v26_2.message_header = {}

-- Size: Message Header
lseg_lse_analytics_gtp_v26_2.message_header.size =
  lseg_lse_analytics_gtp_v26_2.message_length.size + 
  lseg_lse_analytics_gtp_v26_2.message_type.size

-- Display: Message Header
lseg_lse_analytics_gtp_v26_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_lse_analytics_gtp_v26_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_lse_analytics_gtp_v26_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_type = lseg_lse_analytics_gtp_v26_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_lse_analytics_gtp_v26_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.message_header, buffer(offset, 0))
    local index = lseg_lse_analytics_gtp_v26_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_analytics_gtp_v26_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_analytics_gtp_v26_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_lse_analytics_gtp_v26_2.message = {}

-- Display: Message
lseg_lse_analytics_gtp_v26_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_lse_analytics_gtp_v26_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_lse_analytics_gtp_v26_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 4 branches
  index = lseg_lse_analytics_gtp_v26_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_lse_analytics_gtp_v26_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.message, buffer(offset, 0))
    local current = lseg_lse_analytics_gtp_v26_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = lseg_lse_analytics_gtp_v26_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_lse_analytics_gtp_v26_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
lseg_lse_analytics_gtp_v26_2.unit_header = {}

-- Size: Unit Header
lseg_lse_analytics_gtp_v26_2.unit_header.size =
  lseg_lse_analytics_gtp_v26_2.length.size + 
  lseg_lse_analytics_gtp_v26_2.message_count.size + 
  lseg_lse_analytics_gtp_v26_2.market_data_group.size + 
  lseg_lse_analytics_gtp_v26_2.sequence_number.size

-- Display: Unit Header
lseg_lse_analytics_gtp_v26_2.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_lse_analytics_gtp_v26_2.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_lse_analytics_gtp_v26_2.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_lse_analytics_gtp_v26_2.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_lse_analytics_gtp_v26_2.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_lse_analytics_gtp_v26_2.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_lse_analytics_gtp_v26_2.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_analytics_gtp_v26_2.fields.unit_header, buffer(offset, 0))
    local index = lseg_lse_analytics_gtp_v26_2.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_analytics_gtp_v26_2.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_analytics_gtp_v26_2.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_lse_analytics_gtp_v26_2.packet = {}

-- Verify required size of Udp packet
lseg_lse_analytics_gtp_v26_2.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_lse_analytics_gtp_v26_2.unit_header.size
end

-- Dissect Packet
lseg_lse_analytics_gtp_v26_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_lse_analytics_gtp_v26_2.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = lseg_lse_analytics_gtp_v26_2.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_lse_analytics_gtp_v26_2.init()
end

-- Dissector for Lseg Lse Analytics Gtp 26.2
function omi_lseg_lse_analytics_gtp_v26_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_lse_analytics_gtp_v26_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_lse_analytics_gtp_v26_2, buffer(), omi_lseg_lse_analytics_gtp_v26_2.description, "("..buffer:len().." Bytes)")
  return lseg_lse_analytics_gtp_v26_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Lse Analytics Gtp 26.2 (Udp)
local function omi_lseg_lse_analytics_gtp_v26_2_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_lse_analytics_gtp_v26_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_lse_analytics_gtp_v26_2
  omi_lseg_lse_analytics_gtp_v26_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Lse Analytics Gtp 26.2
omi_lseg_lse_analytics_gtp_v26_2:register_heuristic("udp", omi_lseg_lse_analytics_gtp_v26_2_udp_heuristic)

-- Register Lseg Lse Analytics Gtp 26.2 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lseg_lse_analytics_gtp_v26_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 26.2
--   Date: Wednesday, October 15, 2025
--   Specification: gtp-002-technical-guide-london-stock-exchange-issue-26.2.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
