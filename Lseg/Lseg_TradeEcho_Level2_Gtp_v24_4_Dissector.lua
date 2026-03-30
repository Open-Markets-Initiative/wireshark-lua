-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg TradeEcho Level2 Gtp 24.4 Protocol
local omi_lseg_tradeecho_level2_gtp_v24_4 = Proto("Lseg.TradeEcho.Level2.Gtp.v24.4.Lua", "Lseg TradeEcho Level2 Gtp 24.4")

-- Protocol table
local lseg_tradeecho_level2_gtp_v24_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg TradeEcho Level2 Gtp 24.4 Fields
omi_lseg_tradeecho_level2_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.tradeecho.level2.gtp.v24.4.allowedbooktypes", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.average_daily_turnover = ProtoField.new("Average Daily Turnover", "lseg.tradeecho.level2.gtp.v24.4.averagedailyturnover", ftypes.DOUBLE)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.tradeecho.level2.gtp.v24.4.currency", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.tradeecho.level2.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.tradeecho.level2.gtp.v24.4.eventcode", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.tradeecho.level2.gtp.v24.4.instrument", ftypes.UINT64)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.tradeecho.level2.gtp.v24.4.isin", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.tradeecho.level2.gtp.v24.4.length", ftypes.UINT16)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.tradeecho.level2.gtp.v24.4.marketdatagroup", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.tradeecho.level2.gtp.v24.4.message", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.tradeecho.level2.gtp.v24.4.messagecount", ftypes.UINT8)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.tradeecho.level2.gtp.v24.4.messageheader", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.tradeecho.level2.gtp.v24.4.messagelength", ftypes.UINT8)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.tradeecho.level2.gtp.v24.4.messagetype", ftypes.UINT8)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.tradeecho.level2.gtp.v24.4.newendtime", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.off_book = ProtoField.new("Off Book", "lseg.tradeecho.level2.gtp.v24.4.offbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.tradeecho.level2.gtp.v24.4.orderbooktype", ftypes.UINT8)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.order_id = ProtoField.new("Order Id", "lseg.tradeecho.level2.gtp.v24.4.orderid", ftypes.UINT64)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.tradeecho.level2.gtp.v24.4.packet", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.participant = ProtoField.new("Participant", "lseg.tradeecho.level2.gtp.v24.4.participant", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.previous_price = ProtoField.new("Previous Price", "lseg.tradeecho.level2.gtp.v24.4.previousprice", ftypes.DOUBLE)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.previous_quantity = ProtoField.new("Previous Quantity", "lseg.tradeecho.level2.gtp.v24.4.previousquantity", ftypes.DOUBLE)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.price = ProtoField.new("Price", "lseg.tradeecho.level2.gtp.v24.4.price", ftypes.DOUBLE)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.tradeecho.level2.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.reserved_10 = ProtoField.new("Reserved 10", "lseg.tradeecho.level2.gtp.v24.4.reserved10", ftypes.BYTES)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.tradeecho.level2.gtp.v24.4.reserved23", ftypes.BYTES)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.reserved_25 = ProtoField.new("Reserved 25", "lseg.tradeecho.level2.gtp.v24.4.reserved25", ftypes.BYTES)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.reserved_5 = ProtoField.new("Reserved 5", "lseg.tradeecho.level2.gtp.v24.4.reserved5", ftypes.BYTES)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.tradeecho.level2.gtp.v24.4.segment", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.tradeecho.level2.gtp.v24.4.sequencenumber", ftypes.UINT32)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.tradeecho.level2.gtp.v24.4.sessionchangereason", ftypes.UINT8)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.si_quote_book = ProtoField.new("Si Quote Book", "lseg.tradeecho.level2.gtp.v24.4.siquotebook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.side = ProtoField.new("Side", "lseg.tradeecho.level2.gtp.v24.4.side", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.size = ProtoField.new("Size", "lseg.tradeecho.level2.gtp.v24.4.size", ftypes.DOUBLE)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.tradeecho.level2.gtp.v24.4.sourcevenue", ftypes.UINT16)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.tradeecho.level2.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.tradeecho.level2.gtp.v24.4.tickid", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.tradeecho.level2.gtp.v24.4.timestamp", ftypes.UINT64)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.tradeecho.level2.gtp.v24.4.tradingstatus", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.transaction_time = ProtoField.new("Transaction Time", "lseg.tradeecho.level2.gtp.v24.4.transactiontime", ftypes.UINT64)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.tradeecho.level2.gtp.v24.4.unitheader", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.unused_1 = ProtoField.new("Unused 1", "lseg.tradeecho.level2.gtp.v24.4.unused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.unused_5 = ProtoField.new("Unused 5", "lseg.tradeecho.level2.gtp.v24.4.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.tradeecho.level2.gtp.v24.4.venueinstrumentid", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.venue_of_publication = ProtoField.new("Venue Of Publication", "lseg.tradeecho.level2.gtp.v24.4.venueofpublication", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.yield = ProtoField.new("Yield", "lseg.tradeecho.level2.gtp.v24.4.yield", ftypes.DOUBLE)

-- Lseg TradeEcho Gtp Level2 24.4 Application Messages
omi_lseg_tradeecho_level2_gtp_v24_4.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.tradeecho.level2.gtp.v24.4.instrumentdirectorymessage", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.tradeecho.level2.gtp.v24.4.instrumentstatusmessage", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lseg.tradeecho.level2.gtp.v24.4.orderbookclearmessage", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.order_delete_message = ProtoField.new("Order Delete Message", "lseg.tradeecho.level2.gtp.v24.4.orderdeletemessage", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.system_event_message = ProtoField.new("System Event Message", "lseg.tradeecho.level2.gtp.v24.4.systemeventmessage", ftypes.STRING)
omi_lseg_tradeecho_level2_gtp_v24_4.fields.systematic_internaliser_quotes_message = ProtoField.new("Systematic Internaliser Quotes Message", "lseg.tradeecho.level2.gtp.v24.4.systematicinternaliserquotesmessage", ftypes.STRING)

-- Lseg TradeEcho Level2 Gtp 24.4 generated fields
omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_index = ProtoField.new("Message Index", "lseg.tradeecho.level2.gtp.v24.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg TradeEcho Level2 Gtp 24.4 Element Dissection Options
show.allowed_book_types = true
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.unit_header = true

-- Register Lseg TradeEcho Level2 Gtp 24.4 Show Options
omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")

-- Handle changed preferences
function omi_lseg_tradeecho_level2_gtp_v24_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allowed_book_types ~= omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_allowed_book_types then
    show.allowed_book_types = omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_allowed_book_types
    changed = true
  end
  if show.application_messages ~= omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_application_messages then
    show.application_messages = omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_application_messages
    changed = true
  end
  if show.message ~= omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_message then
    show.message = omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_message_header then
    show.message_header = omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_packet then
    show.packet = omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_packet
    changed = true
  end
  if show.unit_header ~= omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_unit_header then
    show.unit_header = omi_lseg_tradeecho_level2_gtp_v24_4.prefs.show_unit_header
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
-- Lseg TradeEcho Level2 Gtp 24.4 Fields
-----------------------------------------------------------------------

-- Average Daily Turnover
lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover = {}

-- Size: Average Daily Turnover
lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover.size = 8

-- Display: Average Daily Turnover
lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover.display = function(value)
  return "Average Daily Turnover: "..value
end

-- Translate: Average Daily Turnover
lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Average Daily Turnover
lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover.translate(raw)
  local display = lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.average_daily_turnover, range, value, display)

  return offset + length, value
end

-- Currency
lseg_tradeecho_level2_gtp_v24_4.currency = {}

-- Size: Currency
lseg_tradeecho_level2_gtp_v24_4.currency.size = 3

-- Display: Currency
lseg_tradeecho_level2_gtp_v24_4.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_tradeecho_level2_gtp_v24_4.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_level2_gtp_v24_4.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Event Code
lseg_tradeecho_level2_gtp_v24_4.event_code = {}

-- Size: Event Code
lseg_tradeecho_level2_gtp_v24_4.event_code.size = 1

-- Display: Event Code
lseg_tradeecho_level2_gtp_v24_4.event_code.display = function(value)
  if value == "T" then
    return "Event Code: Start Of Open (T)"
  end
  if value == "P" then
    return "Event Code: Start Of Pre Close (P)"
  end
  if value == "11" then
    return "Event Code: Trade Echo (11)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_tradeecho_level2_gtp_v24_4.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_level2_gtp_v24_4.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_tradeecho_level2_gtp_v24_4.instrument = {}

-- Size: Instrument
lseg_tradeecho_level2_gtp_v24_4.instrument.size = 8

-- Display: Instrument
lseg_tradeecho_level2_gtp_v24_4.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_tradeecho_level2_gtp_v24_4.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_level2_gtp_v24_4.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Isin
lseg_tradeecho_level2_gtp_v24_4.isin = {}

-- Size: Isin
lseg_tradeecho_level2_gtp_v24_4.isin.size = 12

-- Display: Isin
lseg_tradeecho_level2_gtp_v24_4.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_tradeecho_level2_gtp_v24_4.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_level2_gtp_v24_4.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Length
lseg_tradeecho_level2_gtp_v24_4.length = {}

-- Size: Length
lseg_tradeecho_level2_gtp_v24_4.length.size = 2

-- Display: Length
lseg_tradeecho_level2_gtp_v24_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_tradeecho_level2_gtp_v24_4.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_level2_gtp_v24_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_tradeecho_level2_gtp_v24_4.market_data_group = {}

-- Size: Market Data Group
lseg_tradeecho_level2_gtp_v24_4.market_data_group.size = 1

-- Display: Market Data Group
lseg_tradeecho_level2_gtp_v24_4.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_tradeecho_level2_gtp_v24_4.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_level2_gtp_v24_4.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_tradeecho_level2_gtp_v24_4.message_count = {}

-- Size: Message Count
lseg_tradeecho_level2_gtp_v24_4.message_count.size = 1

-- Display: Message Count
lseg_tradeecho_level2_gtp_v24_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_tradeecho_level2_gtp_v24_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_level2_gtp_v24_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_tradeecho_level2_gtp_v24_4.message_length = {}

-- Size: Message Length
lseg_tradeecho_level2_gtp_v24_4.message_length.size = 1

-- Display: Message Length
lseg_tradeecho_level2_gtp_v24_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_tradeecho_level2_gtp_v24_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_level2_gtp_v24_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_tradeecho_level2_gtp_v24_4.message_type = {}

-- Size: Message Type
lseg_tradeecho_level2_gtp_v24_4.message_type.size = 1

-- Display: Message Type
lseg_tradeecho_level2_gtp_v24_4.message_type.display = function(value)
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x70 then
    return "Message Type: Instrument Directory Message (0x70)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status Message (0x48)"
  end
  if value == 0x44 then
    return "Message Type: Order Delete Message (0x44)"
  end
  if value == 0x79 then
    return "Message Type: Order Book Clear Message (0x79)"
  end
  if value == 0x47 then
    return "Message Type: Systematic Internaliser Quotes Message (0x47)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_tradeecho_level2_gtp_v24_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_tradeecho_level2_gtp_v24_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_tradeecho_level2_gtp_v24_4.new_end_time = {}

-- Size: New End Time
lseg_tradeecho_level2_gtp_v24_4.new_end_time.size = 6

-- Display: New End Time
lseg_tradeecho_level2_gtp_v24_4.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_tradeecho_level2_gtp_v24_4.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_level2_gtp_v24_4.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Order Book Type
lseg_tradeecho_level2_gtp_v24_4.order_book_type = {}

-- Size: Order Book Type
lseg_tradeecho_level2_gtp_v24_4.order_book_type.size = 1

-- Display: Order Book Type
lseg_tradeecho_level2_gtp_v24_4.order_book_type.display = function(value)
  if value == 1 then
    return "Order Book Type: Si Quote Book (1)"
  end
  if value == 2 then
    return "Order Book Type: Off Book (2)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_tradeecho_level2_gtp_v24_4.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_level2_gtp_v24_4.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Order Id
lseg_tradeecho_level2_gtp_v24_4.order_id = {}

-- Size: Order Id
lseg_tradeecho_level2_gtp_v24_4.order_id.size = 8

-- Display: Order Id
lseg_tradeecho_level2_gtp_v24_4.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_tradeecho_level2_gtp_v24_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_level2_gtp_v24_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Participant
lseg_tradeecho_level2_gtp_v24_4.participant = {}

-- Size: Participant
lseg_tradeecho_level2_gtp_v24_4.participant.size = 11

-- Display: Participant
lseg_tradeecho_level2_gtp_v24_4.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
lseg_tradeecho_level2_gtp_v24_4.participant.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_level2_gtp_v24_4.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.participant, range, value, display)

  return offset + length, value
end

-- Previous Price
lseg_tradeecho_level2_gtp_v24_4.previous_price = {}

-- Size: Previous Price
lseg_tradeecho_level2_gtp_v24_4.previous_price.size = 8

-- Display: Previous Price
lseg_tradeecho_level2_gtp_v24_4.previous_price.display = function(value)
  return "Previous Price: "..value
end

-- Translate: Previous Price
lseg_tradeecho_level2_gtp_v24_4.previous_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Price
lseg_tradeecho_level2_gtp_v24_4.previous_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.previous_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_level2_gtp_v24_4.previous_price.translate(raw)
  local display = lseg_tradeecho_level2_gtp_v24_4.previous_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Previous Quantity
lseg_tradeecho_level2_gtp_v24_4.previous_quantity = {}

-- Size: Previous Quantity
lseg_tradeecho_level2_gtp_v24_4.previous_quantity.size = 8

-- Display: Previous Quantity
lseg_tradeecho_level2_gtp_v24_4.previous_quantity.display = function(value)
  return "Previous Quantity: "..value
end

-- Translate: Previous Quantity
lseg_tradeecho_level2_gtp_v24_4.previous_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Quantity
lseg_tradeecho_level2_gtp_v24_4.previous_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.previous_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_level2_gtp_v24_4.previous_quantity.translate(raw)
  local display = lseg_tradeecho_level2_gtp_v24_4.previous_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.previous_quantity, range, value, display)

  return offset + length, value
end

-- Price
lseg_tradeecho_level2_gtp_v24_4.price = {}

-- Size: Price
lseg_tradeecho_level2_gtp_v24_4.price.size = 8

-- Display: Price
lseg_tradeecho_level2_gtp_v24_4.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
lseg_tradeecho_level2_gtp_v24_4.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
lseg_tradeecho_level2_gtp_v24_4.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_level2_gtp_v24_4.price.translate(raw)
  local display = lseg_tradeecho_level2_gtp_v24_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.price, range, value, display)

  return offset + length, value
end

-- Price Band Tolerances
lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances = {}

-- Size: Price Band Tolerances
lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances.size = 8

-- Display: Price Band Tolerances
lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances.display = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances.translate(raw)
  local display = lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Reserved 10
lseg_tradeecho_level2_gtp_v24_4.reserved_10 = {}

-- Size: Reserved 10
lseg_tradeecho_level2_gtp_v24_4.reserved_10.size = 10

-- Display: Reserved 10
lseg_tradeecho_level2_gtp_v24_4.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
lseg_tradeecho_level2_gtp_v24_4.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_level2_gtp_v24_4.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved 23
lseg_tradeecho_level2_gtp_v24_4.reserved_23 = {}

-- Size: Reserved 23
lseg_tradeecho_level2_gtp_v24_4.reserved_23.size = 23

-- Display: Reserved 23
lseg_tradeecho_level2_gtp_v24_4.reserved_23.display = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_tradeecho_level2_gtp_v24_4.reserved_23.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.reserved_23.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_level2_gtp_v24_4.reserved_23.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Reserved 25
lseg_tradeecho_level2_gtp_v24_4.reserved_25 = {}

-- Size: Reserved 25
lseg_tradeecho_level2_gtp_v24_4.reserved_25.size = 25

-- Display: Reserved 25
lseg_tradeecho_level2_gtp_v24_4.reserved_25.display = function(value)
  return "Reserved 25: "..value
end

-- Dissect: Reserved 25
lseg_tradeecho_level2_gtp_v24_4.reserved_25.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.reserved_25.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_level2_gtp_v24_4.reserved_25.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.reserved_25, range, value, display)

  return offset + length, value
end

-- Reserved 5
lseg_tradeecho_level2_gtp_v24_4.reserved_5 = {}

-- Size: Reserved 5
lseg_tradeecho_level2_gtp_v24_4.reserved_5.size = 5

-- Display: Reserved 5
lseg_tradeecho_level2_gtp_v24_4.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
lseg_tradeecho_level2_gtp_v24_4.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_level2_gtp_v24_4.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Segment
lseg_tradeecho_level2_gtp_v24_4.segment = {}

-- Size: Segment
lseg_tradeecho_level2_gtp_v24_4.segment.size = 6

-- Display: Segment
lseg_tradeecho_level2_gtp_v24_4.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_tradeecho_level2_gtp_v24_4.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_level2_gtp_v24_4.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_tradeecho_level2_gtp_v24_4.sequence_number = {}

-- Size: Sequence Number
lseg_tradeecho_level2_gtp_v24_4.sequence_number.size = 4

-- Display: Sequence Number
lseg_tradeecho_level2_gtp_v24_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_tradeecho_level2_gtp_v24_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_level2_gtp_v24_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_tradeecho_level2_gtp_v24_4.session_change_reason = {}

-- Size: Session Change Reason
lseg_tradeecho_level2_gtp_v24_4.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_tradeecho_level2_gtp_v24_4.session_change_reason.display = function(value)
  if value == 0 then
    return "Session Change Reason: Scheduled Transition (0)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_tradeecho_level2_gtp_v24_4.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_level2_gtp_v24_4.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Side
lseg_tradeecho_level2_gtp_v24_4.side = {}

-- Size: Side
lseg_tradeecho_level2_gtp_v24_4.side.size = 1

-- Display: Side
lseg_tradeecho_level2_gtp_v24_4.side.display = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
lseg_tradeecho_level2_gtp_v24_4.side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_level2_gtp_v24_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.side, range, value, display)

  return offset + length, value
end

-- Size
lseg_tradeecho_level2_gtp_v24_4.size = {}

-- Size: Size
lseg_tradeecho_level2_gtp_v24_4.size.size = 8

-- Display: Size
lseg_tradeecho_level2_gtp_v24_4.size.display = function(value)
  return "Size: "..value
end

-- Translate: Size
lseg_tradeecho_level2_gtp_v24_4.size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Size
lseg_tradeecho_level2_gtp_v24_4.size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_level2_gtp_v24_4.size.translate(raw)
  local display = lseg_tradeecho_level2_gtp_v24_4.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.size, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_tradeecho_level2_gtp_v24_4.source_venue = {}

-- Size: Source Venue
lseg_tradeecho_level2_gtp_v24_4.source_venue.size = 2

-- Display: Source Venue
lseg_tradeecho_level2_gtp_v24_4.source_venue.display = function(value)
  return "Source Venue: "..value
end

-- Dissect: Source Venue
lseg_tradeecho_level2_gtp_v24_4.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_level2_gtp_v24_4.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_tradeecho_level2_gtp_v24_4.tick_id = {}

-- Size: Tick Id
lseg_tradeecho_level2_gtp_v24_4.tick_id.size = 2

-- Display: Tick Id
lseg_tradeecho_level2_gtp_v24_4.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_tradeecho_level2_gtp_v24_4.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_level2_gtp_v24_4.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_tradeecho_level2_gtp_v24_4.timestamp = {}

-- Size: Timestamp
lseg_tradeecho_level2_gtp_v24_4.timestamp.size = 8

-- Display: Timestamp
lseg_tradeecho_level2_gtp_v24_4.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_tradeecho_level2_gtp_v24_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_level2_gtp_v24_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_tradeecho_level2_gtp_v24_4.trading_status = {}

-- Size: Trading Status
lseg_tradeecho_level2_gtp_v24_4.trading_status.size = 1

-- Display: Trading Status
lseg_tradeecho_level2_gtp_v24_4.trading_status.display = function(value)
  if value == "1" then
    return "Trading Status: Inactive Or Underlying Suspended (1)"
  end
  if value == "2" then
    return "Trading Status: Suspended (2)"
  end
  if value == "3" then
    return "Trading Status: Active (3)"
  end
  if value == "P" then
    return "Trading Status: Regulatory Halt (P)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_tradeecho_level2_gtp_v24_4.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_level2_gtp_v24_4.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Time
lseg_tradeecho_level2_gtp_v24_4.transaction_time = {}

-- Size: Transaction Time
lseg_tradeecho_level2_gtp_v24_4.transaction_time.size = 8

-- Display: Transaction Time
lseg_tradeecho_level2_gtp_v24_4.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
lseg_tradeecho_level2_gtp_v24_4.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_level2_gtp_v24_4.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_tradeecho_level2_gtp_v24_4.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_tradeecho_level2_gtp_v24_4.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_tradeecho_level2_gtp_v24_4.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_tradeecho_level2_gtp_v24_4.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_level2_gtp_v24_4.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Venue Of Publication
lseg_tradeecho_level2_gtp_v24_4.venue_of_publication = {}

-- Size: Venue Of Publication
lseg_tradeecho_level2_gtp_v24_4.venue_of_publication.size = 4

-- Display: Venue Of Publication
lseg_tradeecho_level2_gtp_v24_4.venue_of_publication.display = function(value)
  if value == "ECHO" then
    return "Venue Of Publication: Published Under Uk Regulation (ECHO)"
  end
  if value == "ECEU" then
    return "Venue Of Publication: Published Under Eu Regulation (ECEU)"
  end

  return "Venue Of Publication: Unknown("..value..")"
end

-- Dissect: Venue Of Publication
lseg_tradeecho_level2_gtp_v24_4.venue_of_publication.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.venue_of_publication.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_level2_gtp_v24_4.venue_of_publication.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.venue_of_publication, range, value, display)

  return offset + length, value
end

-- Yield
lseg_tradeecho_level2_gtp_v24_4.yield = {}

-- Size: Yield
lseg_tradeecho_level2_gtp_v24_4.yield.size = 8

-- Display: Yield
lseg_tradeecho_level2_gtp_v24_4.yield.display = function(value)
  return "Yield: "..value
end

-- Translate: Yield
lseg_tradeecho_level2_gtp_v24_4.yield.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Yield
lseg_tradeecho_level2_gtp_v24_4.yield.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_level2_gtp_v24_4.yield.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_level2_gtp_v24_4.yield.translate(raw)
  local display = lseg_tradeecho_level2_gtp_v24_4.yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.yield, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg TradeEcho Level2 Gtp 24.4
-----------------------------------------------------------------------

-- Systematic Internaliser Quotes Message
lseg_tradeecho_level2_gtp_v24_4.systematic_internaliser_quotes_message = {}

-- Size: Systematic Internaliser Quotes Message
lseg_tradeecho_level2_gtp_v24_4.systematic_internaliser_quotes_message.size =
  lseg_tradeecho_level2_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_level2_gtp_v24_4.order_id.size + 
  lseg_tradeecho_level2_gtp_v24_4.side.size + 
  lseg_tradeecho_level2_gtp_v24_4.size.size + 
  lseg_tradeecho_level2_gtp_v24_4.instrument.size + 
  lseg_tradeecho_level2_gtp_v24_4.price.size + 
  lseg_tradeecho_level2_gtp_v24_4.yield.size + 
  lseg_tradeecho_level2_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_level2_gtp_v24_4.order_book_type.size + 
  lseg_tradeecho_level2_gtp_v24_4.participant.size + 
  lseg_tradeecho_level2_gtp_v24_4.order_book_type.size + 
  lseg_tradeecho_level2_gtp_v24_4.reserved_10.size + 
  lseg_tradeecho_level2_gtp_v24_4.currency.size + 
  lseg_tradeecho_level2_gtp_v24_4.venue_of_publication.size

-- Display: Systematic Internaliser Quotes Message
lseg_tradeecho_level2_gtp_v24_4.systematic_internaliser_quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Systematic Internaliser Quotes Message
lseg_tradeecho_level2_gtp_v24_4.systematic_internaliser_quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_tradeecho_level2_gtp_v24_4.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_tradeecho_level2_gtp_v24_4.side.dissect(buffer, index, packet, parent)

  -- Size: Size
  index, size = lseg_tradeecho_level2_gtp_v24_4.size.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_tradeecho_level2_gtp_v24_4.price.dissect(buffer, index, packet, parent)

  -- Yield: Price
  index, yield = lseg_tradeecho_level2_gtp_v24_4.yield.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_tradeecho_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  -- Participant: Alpha
  index, participant = lseg_tradeecho_level2_gtp_v24_4.participant.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_tradeecho_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  -- Reserved 10: Alpha
  index, reserved_10 = lseg_tradeecho_level2_gtp_v24_4.reserved_10.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_tradeecho_level2_gtp_v24_4.currency.dissect(buffer, index, packet, parent)

  -- Venue Of Publication: Alpha
  index, venue_of_publication = lseg_tradeecho_level2_gtp_v24_4.venue_of_publication.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Systematic Internaliser Quotes Message
lseg_tradeecho_level2_gtp_v24_4.systematic_internaliser_quotes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.systematic_internaliser_quotes_message, buffer(offset, 0))
    local index = lseg_tradeecho_level2_gtp_v24_4.systematic_internaliser_quotes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_level2_gtp_v24_4.systematic_internaliser_quotes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_level2_gtp_v24_4.systematic_internaliser_quotes_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
lseg_tradeecho_level2_gtp_v24_4.order_book_clear_message = {}

-- Size: Order Book Clear Message
lseg_tradeecho_level2_gtp_v24_4.order_book_clear_message.size =
  lseg_tradeecho_level2_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_level2_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_level2_gtp_v24_4.instrument.size + 
  lseg_tradeecho_level2_gtp_v24_4.order_book_type.size

-- Display: Order Book Clear Message
lseg_tradeecho_level2_gtp_v24_4.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lseg_tradeecho_level2_gtp_v24_4.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_tradeecho_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lseg_tradeecho_level2_gtp_v24_4.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.order_book_clear_message, buffer(offset, 0))
    local index = lseg_tradeecho_level2_gtp_v24_4.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_level2_gtp_v24_4.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_level2_gtp_v24_4.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
lseg_tradeecho_level2_gtp_v24_4.order_delete_message = {}

-- Size: Order Delete Message
lseg_tradeecho_level2_gtp_v24_4.order_delete_message.size =
  lseg_tradeecho_level2_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_level2_gtp_v24_4.order_id.size + 
  lseg_tradeecho_level2_gtp_v24_4.instrument.size + 
  lseg_tradeecho_level2_gtp_v24_4.side.size + 
  lseg_tradeecho_level2_gtp_v24_4.order_book_type.size + 
  lseg_tradeecho_level2_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_level2_gtp_v24_4.previous_price.size + 
  lseg_tradeecho_level2_gtp_v24_4.previous_quantity.size + 
  lseg_tradeecho_level2_gtp_v24_4.transaction_time.size

-- Display: Order Delete Message
lseg_tradeecho_level2_gtp_v24_4.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
lseg_tradeecho_level2_gtp_v24_4.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_tradeecho_level2_gtp_v24_4.order_id.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_tradeecho_level2_gtp_v24_4.side.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_tradeecho_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Previous Price: Price
  index, previous_price = lseg_tradeecho_level2_gtp_v24_4.previous_price.dissect(buffer, index, packet, parent)

  -- Previous Quantity: Size
  index, previous_quantity = lseg_tradeecho_level2_gtp_v24_4.previous_quantity.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_tradeecho_level2_gtp_v24_4.transaction_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
lseg_tradeecho_level2_gtp_v24_4.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.order_delete_message, buffer(offset, 0))
    local index = lseg_tradeecho_level2_gtp_v24_4.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_level2_gtp_v24_4.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_level2_gtp_v24_4.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Message
lseg_tradeecho_level2_gtp_v24_4.instrument_status_message = {}

-- Size: Instrument Status Message
lseg_tradeecho_level2_gtp_v24_4.instrument_status_message.size =
  lseg_tradeecho_level2_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_level2_gtp_v24_4.instrument.size + 
  lseg_tradeecho_level2_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_level2_gtp_v24_4.trading_status.size + 
  lseg_tradeecho_level2_gtp_v24_4.session_change_reason.size + 
  lseg_tradeecho_level2_gtp_v24_4.new_end_time.size + 
  lseg_tradeecho_level2_gtp_v24_4.order_book_type.size

-- Display: Instrument Status Message
lseg_tradeecho_level2_gtp_v24_4.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_tradeecho_level2_gtp_v24_4.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_tradeecho_level2_gtp_v24_4.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_tradeecho_level2_gtp_v24_4.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_tradeecho_level2_gtp_v24_4.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_tradeecho_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_tradeecho_level2_gtp_v24_4.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_tradeecho_level2_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_level2_gtp_v24_4.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_level2_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Allowed Book Types
lseg_tradeecho_level2_gtp_v24_4.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_tradeecho_level2_gtp_v24_4.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_tradeecho_level2_gtp_v24_4.allowed_book_types.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unused 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end
  -- Is Si Quote Book flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Si Quote Book"
  end
  -- Is Off Book flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Off Book"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Allowed Book Types
lseg_tradeecho_level2_gtp_v24_4.allowed_book_types.bits = function(range, value, packet, parent)

  -- Unused 1: 1 Bit
  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.unused_1, range, value)

  -- Si Quote Book: 1 Bit
  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.si_quote_book, range, value)

  -- Off Book: 1 Bit
  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.off_book, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.unused_5, range, value)
end

-- Dissect: Allowed Book Types
lseg_tradeecho_level2_gtp_v24_4.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = lseg_tradeecho_level2_gtp_v24_4.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_tradeecho_level2_gtp_v24_4.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    lseg_tradeecho_level2_gtp_v24_4.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Message
lseg_tradeecho_level2_gtp_v24_4.instrument_directory_message = {}

-- Size: Instrument Directory Message
lseg_tradeecho_level2_gtp_v24_4.instrument_directory_message.size =
  lseg_tradeecho_level2_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_level2_gtp_v24_4.instrument.size + 
  lseg_tradeecho_level2_gtp_v24_4.isin.size + 
  lseg_tradeecho_level2_gtp_v24_4.allowed_book_types.size + 
  lseg_tradeecho_level2_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_level2_gtp_v24_4.venue_instrument_id.size + 
  lseg_tradeecho_level2_gtp_v24_4.tick_id.size + 
  lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances.size + 
  lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.size + 
  lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances.size + 
  lseg_tradeecho_level2_gtp_v24_4.segment.size + 
  lseg_tradeecho_level2_gtp_v24_4.reserved_23.size + 
  lseg_tradeecho_level2_gtp_v24_4.currency.size + 
  lseg_tradeecho_level2_gtp_v24_4.reserved_5.size + 
  lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover.size + 
  lseg_tradeecho_level2_gtp_v24_4.reserved_25.size

-- Display: Instrument Directory Message
lseg_tradeecho_level2_gtp_v24_4.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_tradeecho_level2_gtp_v24_4.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_tradeecho_level2_gtp_v24_4.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 4 fields
  index, allowed_book_types = lseg_tradeecho_level2_gtp_v24_4.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: Alpha
  index, venue_instrument_id = lseg_tradeecho_level2_gtp_v24_4.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: Alpha
  index, tick_id = lseg_tradeecho_level2_gtp_v24_4.tick_id.dissect(buffer, index, packet, parent)

  -- Price Band Tolerances: Price
  index, price_band_tolerances = lseg_tradeecho_level2_gtp_v24_4.price_band_tolerances.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: Price
  index, dynamic_circuit_breaker_tolerances = lseg_tradeecho_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: Price
  index, static_circuit_breaker_tolerances = lseg_tradeecho_level2_gtp_v24_4.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_tradeecho_level2_gtp_v24_4.segment.dissect(buffer, index, packet, parent)

  -- Reserved 23: Alpha
  index, reserved_23 = lseg_tradeecho_level2_gtp_v24_4.reserved_23.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_tradeecho_level2_gtp_v24_4.currency.dissect(buffer, index, packet, parent)

  -- Reserved 5: Alpha
  index, reserved_5 = lseg_tradeecho_level2_gtp_v24_4.reserved_5.dissect(buffer, index, packet, parent)

  -- Average Daily Turnover: Price4
  index, average_daily_turnover = lseg_tradeecho_level2_gtp_v24_4.average_daily_turnover.dissect(buffer, index, packet, parent)

  -- Reserved 25: Alpha
  index, reserved_25 = lseg_tradeecho_level2_gtp_v24_4.reserved_25.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_tradeecho_level2_gtp_v24_4.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_tradeecho_level2_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_level2_gtp_v24_4.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_level2_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
lseg_tradeecho_level2_gtp_v24_4.system_event_message = {}

-- Size: System Event Message
lseg_tradeecho_level2_gtp_v24_4.system_event_message.size =
  lseg_tradeecho_level2_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_level2_gtp_v24_4.event_code.size + 
  lseg_tradeecho_level2_gtp_v24_4.source_venue.size

-- Display: System Event Message
lseg_tradeecho_level2_gtp_v24_4.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_tradeecho_level2_gtp_v24_4.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = lseg_tradeecho_level2_gtp_v24_4.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_tradeecho_level2_gtp_v24_4.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.system_event_message, buffer(offset, 0))
    local index = lseg_tradeecho_level2_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_level2_gtp_v24_4.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_level2_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_tradeecho_level2_gtp_v24_4.payload = {}

-- Dissect: Payload
lseg_tradeecho_level2_gtp_v24_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_tradeecho_level2_gtp_v24_4.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_tradeecho_level2_gtp_v24_4.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_tradeecho_level2_gtp_v24_4.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == 0x44 then
    return lseg_tradeecho_level2_gtp_v24_4.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return lseg_tradeecho_level2_gtp_v24_4.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Systematic Internaliser Quotes Message
  if message_type == 0x47 then
    return lseg_tradeecho_level2_gtp_v24_4.systematic_internaliser_quotes_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_tradeecho_level2_gtp_v24_4.message_header = {}

-- Size: Message Header
lseg_tradeecho_level2_gtp_v24_4.message_header.size =
  lseg_tradeecho_level2_gtp_v24_4.message_length.size + 
  lseg_tradeecho_level2_gtp_v24_4.message_type.size

-- Display: Message Header
lseg_tradeecho_level2_gtp_v24_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_tradeecho_level2_gtp_v24_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_tradeecho_level2_gtp_v24_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, message_type = lseg_tradeecho_level2_gtp_v24_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_tradeecho_level2_gtp_v24_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_header, buffer(offset, 0))
    local index = lseg_tradeecho_level2_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_level2_gtp_v24_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_level2_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_tradeecho_level2_gtp_v24_4.message = {}

-- Calculate size of: Message
lseg_tradeecho_level2_gtp_v24_4.message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_level2_gtp_v24_4.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_tradeecho_level2_gtp_v24_4.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_tradeecho_level2_gtp_v24_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_tradeecho_level2_gtp_v24_4.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_tradeecho_level2_gtp_v24_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 6 branches
  index = lseg_tradeecho_level2_gtp_v24_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_tradeecho_level2_gtp_v24_4.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.message, buffer(offset, 0))
    local index = lseg_tradeecho_level2_gtp_v24_4.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_level2_gtp_v24_4.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_level2_gtp_v24_4.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Unit Header
lseg_tradeecho_level2_gtp_v24_4.unit_header = {}

-- Size: Unit Header
lseg_tradeecho_level2_gtp_v24_4.unit_header.size =
  lseg_tradeecho_level2_gtp_v24_4.length.size + 
  lseg_tradeecho_level2_gtp_v24_4.message_count.size + 
  lseg_tradeecho_level2_gtp_v24_4.market_data_group.size + 
  lseg_tradeecho_level2_gtp_v24_4.sequence_number.size

-- Display: Unit Header
lseg_tradeecho_level2_gtp_v24_4.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_tradeecho_level2_gtp_v24_4.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_tradeecho_level2_gtp_v24_4.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_tradeecho_level2_gtp_v24_4.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_tradeecho_level2_gtp_v24_4.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_tradeecho_level2_gtp_v24_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_tradeecho_level2_gtp_v24_4.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4.fields.unit_header, buffer(offset, 0))
    local index = lseg_tradeecho_level2_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_level2_gtp_v24_4.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_level2_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_tradeecho_level2_gtp_v24_4.packet = {}

-- Dissect Packet
lseg_tradeecho_level2_gtp_v24_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_tradeecho_level2_gtp_v24_4.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = lseg_tradeecho_level2_gtp_v24_4.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_tradeecho_level2_gtp_v24_4.init()
end

-- Dissector for Lseg TradeEcho Level2 Gtp 24.4
function omi_lseg_tradeecho_level2_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_tradeecho_level2_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_tradeecho_level2_gtp_v24_4, buffer(), omi_lseg_tradeecho_level2_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_tradeecho_level2_gtp_v24_4.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_lseg_tradeecho_level2_gtp_v24_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
lseg_tradeecho_level2_gtp_v24_4.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg TradeEcho Level2 Gtp 24.4
local function omi_lseg_tradeecho_level2_gtp_v24_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_tradeecho_level2_gtp_v24_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_tradeecho_level2_gtp_v24_4
  omi_lseg_tradeecho_level2_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg TradeEcho Level2 Gtp 24.4
omi_lseg_tradeecho_level2_gtp_v24_4:register_heuristic("udp", omi_lseg_tradeecho_level2_gtp_v24_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: London Stock Exchange Group
--   Version: 24.4
--   Date: Wednesday, April 24, 2024
--   Specification: gtp-002-technical-guide-tradecho-issue-24-4.pdf
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
