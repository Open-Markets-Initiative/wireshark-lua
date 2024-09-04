-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg TradeEcho SiQuoting Gtp 24.4 Protocol
local lseg_tradeecho_siquoting_gtp_v24_4 = Proto("Lseg.TradeEcho.SiQuoting.Gtp.v24.4.Lua", "Lseg TradeEcho SiQuoting Gtp 24.4")

-- Component Tables
local show = {}
local format = {}
local lseg_tradeecho_siquoting_gtp_v24_4_display = {}
local lseg_tradeecho_siquoting_gtp_v24_4_dissect = {}
local lseg_tradeecho_siquoting_gtp_v24_4_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg TradeEcho SiQuoting Gtp 24.4 Fields
lseg_tradeecho_siquoting_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.tradeecho.siquoting.gtp.v24.4.allowedbooktypes", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.average_daily_turnover = ProtoField.new("Average Daily Turnover", "lseg.tradeecho.siquoting.gtp.v24.4.averagedailyturnover", ftypes.DOUBLE)
lseg_tradeecho_siquoting_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.tradeecho.siquoting.gtp.v24.4.currency", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.tradeecho.siquoting.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
lseg_tradeecho_siquoting_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.tradeecho.siquoting.gtp.v24.4.eventcode", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.tradeecho.siquoting.gtp.v24.4.instrument", ftypes.UINT64)
lseg_tradeecho_siquoting_gtp_v24_4.fields.instrument_directory = ProtoField.new("Instrument Directory", "lseg.tradeecho.siquoting.gtp.v24.4.instrumentdirectory", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.instrument_status = ProtoField.new("Instrument Status", "lseg.tradeecho.siquoting.gtp.v24.4.instrumentstatus", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.tradeecho.siquoting.gtp.v24.4.isin", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.tradeecho.siquoting.gtp.v24.4.length", ftypes.UINT16)
lseg_tradeecho_siquoting_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.tradeecho.siquoting.gtp.v24.4.marketdatagroup", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.tradeecho.siquoting.gtp.v24.4.message", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.tradeecho.siquoting.gtp.v24.4.messagecount", ftypes.UINT8)
lseg_tradeecho_siquoting_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.tradeecho.siquoting.gtp.v24.4.messageheader", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.tradeecho.siquoting.gtp.v24.4.messagelength", ftypes.UINT8)
lseg_tradeecho_siquoting_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.tradeecho.siquoting.gtp.v24.4.messagetype", ftypes.UINT8)
lseg_tradeecho_siquoting_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.tradeecho.siquoting.gtp.v24.4.newendtime", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.off_book = ProtoField.new("Off Book", "lseg.tradeecho.siquoting.gtp.v24.4.offbook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
lseg_tradeecho_siquoting_gtp_v24_4.fields.order_book_clear = ProtoField.new("Order Book Clear", "lseg.tradeecho.siquoting.gtp.v24.4.orderbookclear", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.tradeecho.siquoting.gtp.v24.4.orderbooktype", ftypes.UINT8)
lseg_tradeecho_siquoting_gtp_v24_4.fields.order_delete = ProtoField.new("Order Delete", "lseg.tradeecho.siquoting.gtp.v24.4.orderdelete", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.order_id = ProtoField.new("Order Id", "lseg.tradeecho.siquoting.gtp.v24.4.orderid", ftypes.UINT64)
lseg_tradeecho_siquoting_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.tradeecho.siquoting.gtp.v24.4.packet", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.participant = ProtoField.new("Participant", "lseg.tradeecho.siquoting.gtp.v24.4.participant", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.payload = ProtoField.new("Payload", "lseg.tradeecho.siquoting.gtp.v24.4.payload", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.previous_price = ProtoField.new("Previous Price", "lseg.tradeecho.siquoting.gtp.v24.4.previousprice", ftypes.DOUBLE)
lseg_tradeecho_siquoting_gtp_v24_4.fields.previous_quantity = ProtoField.new("Previous Quantity", "lseg.tradeecho.siquoting.gtp.v24.4.previousquantity", ftypes.DOUBLE)
lseg_tradeecho_siquoting_gtp_v24_4.fields.price = ProtoField.new("Price", "lseg.tradeecho.siquoting.gtp.v24.4.price", ftypes.DOUBLE)
lseg_tradeecho_siquoting_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.tradeecho.siquoting.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
lseg_tradeecho_siquoting_gtp_v24_4.fields.reserved_alpha = ProtoField.new("Reserved Alpha", "lseg.tradeecho.siquoting.gtp.v24.4.reservedalpha", ftypes.BYTES)
lseg_tradeecho_siquoting_gtp_v24_4.fields.reserved_field_alpha_23 = ProtoField.new("Reserved Field Alpha 23", "lseg.tradeecho.siquoting.gtp.v24.4.reservedfieldalpha23", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.reserved_field_alpha_25 = ProtoField.new("Reserved Field Alpha 25", "lseg.tradeecho.siquoting.gtp.v24.4.reservedfieldalpha25", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.reserved_field_alpha_5 = ProtoField.new("Reserved Field Alpha 5", "lseg.tradeecho.siquoting.gtp.v24.4.reservedfieldalpha5", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.tradeecho.siquoting.gtp.v24.4.segment", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.tradeecho.siquoting.gtp.v24.4.sequencenumber", ftypes.UINT32)
lseg_tradeecho_siquoting_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.tradeecho.siquoting.gtp.v24.4.sessionchangereason", ftypes.UINT8)
lseg_tradeecho_siquoting_gtp_v24_4.fields.si_quote_book = ProtoField.new("Si Quote Book", "lseg.tradeecho.siquoting.gtp.v24.4.siquotebook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
lseg_tradeecho_siquoting_gtp_v24_4.fields.side = ProtoField.new("Side", "lseg.tradeecho.siquoting.gtp.v24.4.side", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.size = ProtoField.new("Size", "lseg.tradeecho.siquoting.gtp.v24.4.size", ftypes.DOUBLE)
lseg_tradeecho_siquoting_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.tradeecho.siquoting.gtp.v24.4.sourcevenue", ftypes.UINT16)
lseg_tradeecho_siquoting_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.tradeecho.siquoting.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
lseg_tradeecho_siquoting_gtp_v24_4.fields.system_event = ProtoField.new("System Event", "lseg.tradeecho.siquoting.gtp.v24.4.systemevent", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.systematic_internaliser_quotes = ProtoField.new("Systematic Internaliser Quotes", "lseg.tradeecho.siquoting.gtp.v24.4.systematicinternaliserquotes", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.tradeecho.siquoting.gtp.v24.4.tickid", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.tradeecho.siquoting.gtp.v24.4.timestamp", ftypes.UINT64)
lseg_tradeecho_siquoting_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.tradeecho.siquoting.gtp.v24.4.tradingstatus", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.transaction_time = ProtoField.new("Transaction Time", "lseg.tradeecho.siquoting.gtp.v24.4.transactiontime", ftypes.UINT64)
lseg_tradeecho_siquoting_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.tradeecho.siquoting.gtp.v24.4.unitheader", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.unused_6 = ProtoField.new("Unused 6", "lseg.tradeecho.siquoting.gtp.v24.4.unused6", ftypes.UINT8, nil, base.DEC, 0x3F)
lseg_tradeecho_siquoting_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.tradeecho.siquoting.gtp.v24.4.venueinstrumentid", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.venue_of_publication = ProtoField.new("Venue Of Publication", "lseg.tradeecho.siquoting.gtp.v24.4.venueofpublication", ftypes.STRING)
lseg_tradeecho_siquoting_gtp_v24_4.fields.yield = ProtoField.new("Yield", "lseg.tradeecho.siquoting.gtp.v24.4.yield", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Lseg TradeEcho SiQuoting Gtp 24.4 Element Dissection Options
show.allowed_book_types = true
show.instrument_directory = true
show.instrument_status = true
show.message = true
show.message_header = true
show.order_book_clear = true
show.order_delete = true
show.packet = true
show.system_event = true
show.systematic_internaliser_quotes = true
show.unit_header = true
show.payload = false

-- Register Lseg TradeEcho SiQuoting Gtp 24.4 Show Options
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_instrument_directory = Pref.bool("Show Instrument Directory", show.instrument_directory, "Parse and add Instrument Directory to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_instrument_status = Pref.bool("Show Instrument Status", show.instrument_status, "Parse and add Instrument Status to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_order_book_clear = Pref.bool("Show Order Book Clear", show.order_book_clear, "Parse and add Order Book Clear to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_order_delete = Pref.bool("Show Order Delete", show.order_delete, "Parse and add Order Delete to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_system_event = Pref.bool("Show System Event", show.system_event, "Parse and add System Event to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_systematic_internaliser_quotes = Pref.bool("Show Systematic Internaliser Quotes", show.systematic_internaliser_quotes, "Parse and add Systematic Internaliser Quotes to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")
lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function lseg_tradeecho_siquoting_gtp_v24_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allowed_book_types ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_allowed_book_types then
    show.allowed_book_types = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_allowed_book_types
    changed = true
  end
  if show.instrument_directory ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_instrument_directory then
    show.instrument_directory = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_instrument_directory
    changed = true
  end
  if show.instrument_status ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_instrument_status then
    show.instrument_status = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_instrument_status
    changed = true
  end
  if show.message ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_message then
    show.message = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_message_header then
    show.message_header = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_message_header
    changed = true
  end
  if show.order_book_clear ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_order_book_clear then
    show.order_book_clear = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_order_book_clear
    changed = true
  end
  if show.order_delete ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_order_delete then
    show.order_delete = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_order_delete
    changed = true
  end
  if show.packet ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_packet then
    show.packet = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_packet
    changed = true
  end
  if show.system_event ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_system_event then
    show.system_event = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_system_event
    changed = true
  end
  if show.systematic_internaliser_quotes ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_systematic_internaliser_quotes then
    show.systematic_internaliser_quotes = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_systematic_internaliser_quotes
    changed = true
  end
  if show.unit_header ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_unit_header then
    show.unit_header = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_unit_header
    changed = true
  end
  if show.payload ~= lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_payload then
    show.payload = lseg_tradeecho_siquoting_gtp_v24_4.prefs.show_payload
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
-- Dissect Lseg TradeEcho SiQuoting Gtp 24.4
-----------------------------------------------------------------------

-- Size: Venue Of Publication
lseg_tradeecho_siquoting_gtp_v24_4_size_of.venue_of_publication = 4

-- Display: Venue Of Publication
lseg_tradeecho_siquoting_gtp_v24_4_display.venue_of_publication = function(value)
  return "Venue Of Publication: "..value
end

-- Dissect: Venue Of Publication
lseg_tradeecho_siquoting_gtp_v24_4_dissect.venue_of_publication = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.venue_of_publication
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.venue_of_publication(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.venue_of_publication, range, value, display)

  return offset + length, value
end

-- Size: Currency
lseg_tradeecho_siquoting_gtp_v24_4_size_of.currency = 3

-- Display: Currency
lseg_tradeecho_siquoting_gtp_v24_4_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_tradeecho_siquoting_gtp_v24_4_dissect.currency = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.currency(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Reserved Alpha
lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_alpha = 10

-- Display: Reserved Alpha
lseg_tradeecho_siquoting_gtp_v24_4_display.reserved_alpha = function(value)
  return "Reserved Alpha: "..value
end

-- Dissect: Reserved Alpha
lseg_tradeecho_siquoting_gtp_v24_4_dissect.reserved_alpha = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_alpha
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.reserved_alpha(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.reserved_alpha, range, value, display)

  return offset + length, value
end

-- Size: Order Book Type
lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_type = 1

-- Display: Order Book Type
lseg_tradeecho_siquoting_gtp_v24_4_display.order_book_type = function(value)
  return "Order Book Type: "..value
end

-- Dissect: Order Book Type
lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_type = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.order_book_type(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Size: Participant
lseg_tradeecho_siquoting_gtp_v24_4_size_of.participant = 11

-- Display: Participant
lseg_tradeecho_siquoting_gtp_v24_4_display.participant = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
lseg_tradeecho_siquoting_gtp_v24_4_dissect.participant = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.participant
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.participant(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.participant, range, value, display)

  return offset + length, value
end

-- Size: Source Venue
lseg_tradeecho_siquoting_gtp_v24_4_size_of.source_venue = 2

-- Display: Source Venue
lseg_tradeecho_siquoting_gtp_v24_4_display.source_venue = function(value)
  return "Source Venue: "..value
end

-- Dissect: Source Venue
lseg_tradeecho_siquoting_gtp_v24_4_dissect.source_venue = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.source_venue
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.source_venue(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Size: Yield
lseg_tradeecho_siquoting_gtp_v24_4_size_of.yield = 8

-- Display: Yield
lseg_tradeecho_siquoting_gtp_v24_4_display.yield = function(value)
  return "Yield: "..value
end

-- Translate: Yield
translate.yield = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Yield
lseg_tradeecho_siquoting_gtp_v24_4_dissect.yield = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.yield
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.yield(raw)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.yield(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.yield, range, value, display)

  return offset + length, value
end

-- Size: Price
lseg_tradeecho_siquoting_gtp_v24_4_size_of.price = 8

-- Display: Price
lseg_tradeecho_siquoting_gtp_v24_4_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
lseg_tradeecho_siquoting_gtp_v24_4_dissect.price = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.price(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Instrument
lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument = 8

-- Display: Instrument
lseg_tradeecho_siquoting_gtp_v24_4_display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.instrument(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Size
lseg_tradeecho_siquoting_gtp_v24_4_size_of.size = 8

-- Display: Size
lseg_tradeecho_siquoting_gtp_v24_4_display.size = function(value)
  return "Size: "..value
end

-- Translate: Size
translate.size = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Size
lseg_tradeecho_siquoting_gtp_v24_4_dissect.size = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.size(raw)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.size(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Side
lseg_tradeecho_siquoting_gtp_v24_4_size_of.side = 1

-- Display: Side
lseg_tradeecho_siquoting_gtp_v24_4_display.side = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
lseg_tradeecho_siquoting_gtp_v24_4_dissect.side = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.side(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Order Id
lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_id = 8

-- Display: Order Id
lseg_tradeecho_siquoting_gtp_v24_4_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_id = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.order_id(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
lseg_tradeecho_siquoting_gtp_v24_4_size_of.timestamp = 8

-- Display: Timestamp
lseg_tradeecho_siquoting_gtp_v24_4_display.timestamp = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_tradeecho_siquoting_gtp_v24_4_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Systematic Internaliser Quotes
lseg_tradeecho_siquoting_gtp_v24_4_size_of.systematic_internaliser_quotes = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_id

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.side

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.size

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.price

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.yield

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.source_venue

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_type

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.participant

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_type

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_alpha

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.currency

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.venue_of_publication

  return index
end

-- Display: Systematic Internaliser Quotes
lseg_tradeecho_siquoting_gtp_v24_4_display.systematic_internaliser_quotes = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Systematic Internaliser Quotes
lseg_tradeecho_siquoting_gtp_v24_4_dissect.systematic_internaliser_quotes_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_siquoting_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = lseg_tradeecho_siquoting_gtp_v24_4_dissect.side(buffer, index, packet, parent)

  -- Size: 8 Byte Unsigned Fixed Width Integer
  index, size = lseg_tradeecho_siquoting_gtp_v24_4_dissect.size(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = lseg_tradeecho_siquoting_gtp_v24_4_dissect.price(buffer, index, packet, parent)

  -- Yield: 8 Byte Signed Fixed Width Integer
  index, yield = lseg_tradeecho_siquoting_gtp_v24_4_dissect.yield(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_siquoting_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer
  index, order_book_type = lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  -- Participant: 11 Byte Ascii String
  index, participant = lseg_tradeecho_siquoting_gtp_v24_4_dissect.participant(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer
  index, order_book_type = lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  -- Reserved Alpha: 10 Byte
  index, reserved_alpha = lseg_tradeecho_siquoting_gtp_v24_4_dissect.reserved_alpha(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = lseg_tradeecho_siquoting_gtp_v24_4_dissect.currency(buffer, index, packet, parent)

  -- Venue Of Publication: 4 Byte Ascii String
  index, venue_of_publication = lseg_tradeecho_siquoting_gtp_v24_4_dissect.venue_of_publication(buffer, index, packet, parent)

  return index
end

-- Dissect: Systematic Internaliser Quotes
lseg_tradeecho_siquoting_gtp_v24_4_dissect.systematic_internaliser_quotes = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.systematic_internaliser_quotes then
    local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.systematic_internaliser_quotes(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_siquoting_gtp_v24_4_display.systematic_internaliser_quotes(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.systematic_internaliser_quotes, range, display)
  end

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.systematic_internaliser_quotes_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Book Clear
lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_clear = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.source_venue

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_type

  return index
end

-- Display: Order Book Clear
lseg_tradeecho_siquoting_gtp_v24_4_display.order_book_clear = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Clear
lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_clear_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_siquoting_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_siquoting_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer
  index, order_book_type = lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear
lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_clear = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_clear then
    local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_clear(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_siquoting_gtp_v24_4_display.order_book_clear(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.order_book_clear, range, display)
  end

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_clear_fields(buffer, offset, packet, parent)
end

-- Size: Transaction Time
lseg_tradeecho_siquoting_gtp_v24_4_size_of.transaction_time = 8

-- Display: Transaction Time
lseg_tradeecho_siquoting_gtp_v24_4_display.transaction_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Transaction Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
lseg_tradeecho_siquoting_gtp_v24_4_dissect.transaction_time = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.transaction_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.transaction_time(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Size: Previous Quantity
lseg_tradeecho_siquoting_gtp_v24_4_size_of.previous_quantity = 8

-- Display: Previous Quantity
lseg_tradeecho_siquoting_gtp_v24_4_display.previous_quantity = function(value)
  return "Previous Quantity: "..value
end

-- Translate: Previous Quantity
translate.previous_quantity = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Quantity
lseg_tradeecho_siquoting_gtp_v24_4_dissect.previous_quantity = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.previous_quantity
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.previous_quantity(raw)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.previous_quantity(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.previous_quantity, range, value, display)

  return offset + length, value
end

-- Size: Previous Price
lseg_tradeecho_siquoting_gtp_v24_4_size_of.previous_price = 8

-- Display: Previous Price
lseg_tradeecho_siquoting_gtp_v24_4_display.previous_price = function(value)
  return "Previous Price: "..value
end

-- Translate: Previous Price
translate.previous_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Price
lseg_tradeecho_siquoting_gtp_v24_4_dissect.previous_price = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.previous_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.previous_price(raw)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.previous_price(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Delete
lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_delete = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_id

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.side

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_type

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.source_venue

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.previous_price

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.previous_quantity

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.transaction_time

  return index
end

-- Display: Order Delete
lseg_tradeecho_siquoting_gtp_v24_4_display.order_delete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Delete
lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_delete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_siquoting_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_id(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = lseg_tradeecho_siquoting_gtp_v24_4_dissect.side(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer
  index, order_book_type = lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_siquoting_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Previous Price: 8 Byte Signed Fixed Width Integer
  index, previous_price = lseg_tradeecho_siquoting_gtp_v24_4_dissect.previous_price(buffer, index, packet, parent)

  -- Previous Quantity: 8 Byte Unsigned Fixed Width Integer
  index, previous_quantity = lseg_tradeecho_siquoting_gtp_v24_4_dissect.previous_quantity(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_tradeecho_siquoting_gtp_v24_4_dissect.transaction_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete
lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_delete = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_delete then
    local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_delete(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_siquoting_gtp_v24_4_display.order_delete(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.order_delete, range, display)
  end

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_delete_fields(buffer, offset, packet, parent)
end

-- Size: New End Time
lseg_tradeecho_siquoting_gtp_v24_4_size_of.new_end_time = 6

-- Display: New End Time
lseg_tradeecho_siquoting_gtp_v24_4_display.new_end_time = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_tradeecho_siquoting_gtp_v24_4_dissect.new_end_time = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.new_end_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.new_end_time(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Size: Session Change Reason
lseg_tradeecho_siquoting_gtp_v24_4_size_of.session_change_reason = 1

-- Display: Session Change Reason
lseg_tradeecho_siquoting_gtp_v24_4_display.session_change_reason = function(value)
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
  if value == 9 then
    return "Session Change Reason: Unavailable Recovery Service Only (9)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_tradeecho_siquoting_gtp_v24_4_dissect.session_change_reason = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.session_change_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.session_change_reason(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
lseg_tradeecho_siquoting_gtp_v24_4_size_of.trading_status = 1

-- Display: Trading Status
lseg_tradeecho_siquoting_gtp_v24_4_display.trading_status = function(value)
  if value == " " then
    return "Trading Status: Active (<whitespace>)"
  end
  if value == "Value" then
    return "Trading Status: Meaning (Value)"
  end
  if value == "H" then
    return "Trading Status: Halt (H)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading Start Of Trade Reporting (T)"
  end
  if value == "a" then
    return "Trading Status: Opening First Auction Call (a)"
  end
  if value == "b" then
    return "Trading Status: Post Close (b)"
  end
  if value == "c" then
    return "Trading Status: Market Close System Shutdown (c)"
  end
  if value == "d" then
    return "Trading Status: Closing Auction Call (d)"
  end
  if value == "e" then
    return "Trading Status: Aesp Auction Call (e)"
  end
  if value == "f" then
    return "Trading Status: Resume Auction Call (f)"
  end
  if value == "l" then
    return "Trading Status: Pause (l)"
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
  if value == "t" then
    return "Trading Status: End Trade Reporting (t)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end
  if value == "x" then
    return "Trading Status: End Of Post Close (x)"
  end
  if value == "u" then
    return "Trading Status: Closing Price Crossing (u)"
  end
  if value == "G" then
    return "Trading Status: Scheduled Level 1 Only Auction (G)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_tradeecho_siquoting_gtp_v24_4_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Status
lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument_status = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.source_venue

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.trading_status

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.session_change_reason

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.new_end_time

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_type

  return index
end

-- Display: Instrument Status
lseg_tradeecho_siquoting_gtp_v24_4_display.instrument_status = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Status
lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument_status_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_siquoting_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_siquoting_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 21 values
  index, trading_status = lseg_tradeecho_siquoting_gtp_v24_4_dissect.trading_status(buffer, index, packet, parent)

  -- Session Change Reason: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, session_change_reason = lseg_tradeecho_siquoting_gtp_v24_4_dissect.session_change_reason(buffer, index, packet, parent)

  -- New End Time: 6 Byte Ascii String
  index, new_end_time = lseg_tradeecho_siquoting_gtp_v24_4_dissect.new_end_time(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer
  index, order_book_type = lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status
lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument_status = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_status then
    local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument_status(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_siquoting_gtp_v24_4_display.instrument_status(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.instrument_status, range, display)
  end

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument_status_fields(buffer, offset, packet, parent)
end

-- Size: Reserved Field Alpha 25
lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_field_alpha_25 = 25

-- Display: Reserved Field Alpha 25
lseg_tradeecho_siquoting_gtp_v24_4_display.reserved_field_alpha_25 = function(value)
  return "Reserved Field Alpha 25: "..value
end

-- Dissect: Reserved Field Alpha 25
lseg_tradeecho_siquoting_gtp_v24_4_dissect.reserved_field_alpha_25 = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_field_alpha_25
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.reserved_field_alpha_25(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.reserved_field_alpha_25, range, value, display)

  return offset + length, value
end

-- Size: Average Daily Turnover
lseg_tradeecho_siquoting_gtp_v24_4_size_of.average_daily_turnover = 8

-- Display: Average Daily Turnover
lseg_tradeecho_siquoting_gtp_v24_4_display.average_daily_turnover = function(value)
  return "Average Daily Turnover: "..value
end

-- Translate: Average Daily Turnover
translate.average_daily_turnover = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Average Daily Turnover
lseg_tradeecho_siquoting_gtp_v24_4_dissect.average_daily_turnover = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.average_daily_turnover
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.average_daily_turnover(raw)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.average_daily_turnover(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.average_daily_turnover, range, value, display)

  return offset + length, value
end

-- Size: Reserved Field Alpha 5
lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_field_alpha_5 = 5

-- Display: Reserved Field Alpha 5
lseg_tradeecho_siquoting_gtp_v24_4_display.reserved_field_alpha_5 = function(value)
  return "Reserved Field Alpha 5: "..value
end

-- Dissect: Reserved Field Alpha 5
lseg_tradeecho_siquoting_gtp_v24_4_dissect.reserved_field_alpha_5 = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_field_alpha_5
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.reserved_field_alpha_5(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.reserved_field_alpha_5, range, value, display)

  return offset + length, value
end

-- Size: Reserved Field Alpha 23
lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_field_alpha_23 = 23

-- Display: Reserved Field Alpha 23
lseg_tradeecho_siquoting_gtp_v24_4_display.reserved_field_alpha_23 = function(value)
  return "Reserved Field Alpha 23: "..value
end

-- Dissect: Reserved Field Alpha 23
lseg_tradeecho_siquoting_gtp_v24_4_dissect.reserved_field_alpha_23 = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_field_alpha_23
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.reserved_field_alpha_23(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.reserved_field_alpha_23, range, value, display)

  return offset + length, value
end

-- Size: Segment
lseg_tradeecho_siquoting_gtp_v24_4_size_of.segment = 6

-- Display: Segment
lseg_tradeecho_siquoting_gtp_v24_4_display.segment = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_tradeecho_siquoting_gtp_v24_4_dissect.segment = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.segment
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.segment(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Size: Static Circuit Breaker Tolerances
lseg_tradeecho_siquoting_gtp_v24_4_size_of.static_circuit_breaker_tolerances = 8

-- Display: Static Circuit Breaker Tolerances
lseg_tradeecho_siquoting_gtp_v24_4_display.static_circuit_breaker_tolerances = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
translate.static_circuit_breaker_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_tradeecho_siquoting_gtp_v24_4_dissect.static_circuit_breaker_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.static_circuit_breaker_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.static_circuit_breaker_tolerances(raw)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.static_circuit_breaker_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_siquoting_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_siquoting_gtp_v24_4_display.dynamic_circuit_breaker_tolerances = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
translate.dynamic_circuit_breaker_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_siquoting_gtp_v24_4_dissect.dynamic_circuit_breaker_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.dynamic_circuit_breaker_tolerances(raw)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.dynamic_circuit_breaker_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Price Band Tolerances
lseg_tradeecho_siquoting_gtp_v24_4_size_of.price_band_tolerances = 8

-- Display: Price Band Tolerances
lseg_tradeecho_siquoting_gtp_v24_4_display.price_band_tolerances = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
translate.price_band_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_tradeecho_siquoting_gtp_v24_4_dissect.price_band_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.price_band_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_band_tolerances(raw)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.price_band_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Tick Id
lseg_tradeecho_siquoting_gtp_v24_4_size_of.tick_id = 2

-- Display: Tick Id
lseg_tradeecho_siquoting_gtp_v24_4_display.tick_id = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_tradeecho_siquoting_gtp_v24_4_dissect.tick_id = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.tick_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.tick_id(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Size: Venue Instrument Id
lseg_tradeecho_siquoting_gtp_v24_4_size_of.venue_instrument_id = 11

-- Display: Venue Instrument Id
lseg_tradeecho_siquoting_gtp_v24_4_display.venue_instrument_id = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_tradeecho_siquoting_gtp_v24_4_dissect.venue_instrument_id = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.venue_instrument_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.venue_instrument_id(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Allowed Book Types
lseg_tradeecho_siquoting_gtp_v24_4_size_of.allowed_book_types = 1

-- Display: Allowed Book Types
lseg_tradeecho_siquoting_gtp_v24_4_display.allowed_book_types = function(buffer, packet, parent)
  local display = ""

  -- Is Si Quote Book flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Si Quote Book|"
  end
  -- Is Off Book flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Off Book|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Allowed Book Types
lseg_tradeecho_siquoting_gtp_v24_4_dissect.allowed_book_types_bits = function(buffer, offset, packet, parent)

  -- Si Quote Book: 1 Bit
  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.si_quote_book, buffer(offset, 1))

  -- Off Book: 1 Bit
  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.off_book, buffer(offset, 1))

  -- Unused 6: 6 Bit
  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.unused_6, buffer(offset, 1))
end

-- Dissect: Allowed Book Types
lseg_tradeecho_siquoting_gtp_v24_4_dissect.allowed_book_types = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.allowed_book_types(range, packet, parent)
  local element = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    lseg_tradeecho_siquoting_gtp_v24_4_dissect.allowed_book_types_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Isin
lseg_tradeecho_siquoting_gtp_v24_4_size_of.isin = 12

-- Display: Isin
lseg_tradeecho_siquoting_gtp_v24_4_display.isin = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_tradeecho_siquoting_gtp_v24_4_dissect.isin = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.isin
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.isin(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Directory
lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument_directory = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.isin

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.allowed_book_types

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.source_venue

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.venue_instrument_id

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.tick_id

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.price_band_tolerances

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.static_circuit_breaker_tolerances

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.segment

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_field_alpha_23

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.currency

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_field_alpha_5

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.average_daily_turnover

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.reserved_field_alpha_25

  return index
end

-- Display: Instrument Directory
lseg_tradeecho_siquoting_gtp_v24_4_display.instrument_directory = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Directory
lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument_directory_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_siquoting_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = lseg_tradeecho_siquoting_gtp_v24_4_dissect.isin(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_tradeecho_siquoting_gtp_v24_4_dissect.allowed_book_types(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_siquoting_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Venue Instrument Id: 11 Byte Ascii String
  index, venue_instrument_id = lseg_tradeecho_siquoting_gtp_v24_4_dissect.venue_instrument_id(buffer, index, packet, parent)

  -- Tick Id: 2 Byte Ascii String
  index, tick_id = lseg_tradeecho_siquoting_gtp_v24_4_dissect.tick_id(buffer, index, packet, parent)

  -- Price Band Tolerances: 8 Byte Signed Fixed Width Integer
  index, price_band_tolerances = lseg_tradeecho_siquoting_gtp_v24_4_dissect.price_band_tolerances(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, dynamic_circuit_breaker_tolerances = lseg_tradeecho_siquoting_gtp_v24_4_dissect.dynamic_circuit_breaker_tolerances(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, static_circuit_breaker_tolerances = lseg_tradeecho_siquoting_gtp_v24_4_dissect.static_circuit_breaker_tolerances(buffer, index, packet, parent)

  -- Segment: 6 Byte Ascii String
  index, segment = lseg_tradeecho_siquoting_gtp_v24_4_dissect.segment(buffer, index, packet, parent)

  -- Reserved Field Alpha 23: 23 Byte Ascii String
  index, reserved_field_alpha_23 = lseg_tradeecho_siquoting_gtp_v24_4_dissect.reserved_field_alpha_23(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = lseg_tradeecho_siquoting_gtp_v24_4_dissect.currency(buffer, index, packet, parent)

  -- Reserved Field Alpha 5: 5 Byte Ascii String
  index, reserved_field_alpha_5 = lseg_tradeecho_siquoting_gtp_v24_4_dissect.reserved_field_alpha_5(buffer, index, packet, parent)

  -- Average Daily Turnover: 8 Byte Signed Fixed Width Integer
  index, average_daily_turnover = lseg_tradeecho_siquoting_gtp_v24_4_dissect.average_daily_turnover(buffer, index, packet, parent)

  -- Reserved Field Alpha 25: 25 Byte Ascii String
  index, reserved_field_alpha_25 = lseg_tradeecho_siquoting_gtp_v24_4_dissect.reserved_field_alpha_25(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory
lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument_directory = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_directory then
    local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument_directory(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_siquoting_gtp_v24_4_display.instrument_directory(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.instrument_directory, range, display)
  end

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument_directory_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
lseg_tradeecho_siquoting_gtp_v24_4_size_of.event_code = 1

-- Display: Event Code
lseg_tradeecho_siquoting_gtp_v24_4_display.event_code = function(value)
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
lseg_tradeecho_siquoting_gtp_v24_4_dissect.event_code = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.event_code(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event
lseg_tradeecho_siquoting_gtp_v24_4_size_of.system_event = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.event_code

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.source_venue

  return index
end

-- Display: System Event
lseg_tradeecho_siquoting_gtp_v24_4_display.system_event = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event
lseg_tradeecho_siquoting_gtp_v24_4_dissect.system_event_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_siquoting_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 3 values
  index, event_code = lseg_tradeecho_siquoting_gtp_v24_4_dissect.event_code(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_siquoting_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event
lseg_tradeecho_siquoting_gtp_v24_4_dissect.system_event = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event then
    local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.system_event(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_siquoting_gtp_v24_4_display.system_event(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.system_event, range, display)
  end

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.system_event_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
lseg_tradeecho_siquoting_gtp_v24_4_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event
  if message_type == 0x53 then
    return lseg_tradeecho_siquoting_gtp_v24_4_size_of.system_event(buffer, offset)
  end
  -- Size of Instrument Directory
  if message_type == 0x70 then
    return lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument_directory(buffer, offset)
  end
  -- Size of Instrument Status
  if message_type == 0x48 then
    return lseg_tradeecho_siquoting_gtp_v24_4_size_of.instrument_status(buffer, offset)
  end
  -- Size of Order Delete
  if message_type == 0x44 then
    return lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_delete(buffer, offset)
  end
  -- Size of Order Book Clear
  if message_type == 0x79 then
    return lseg_tradeecho_siquoting_gtp_v24_4_size_of.order_book_clear(buffer, offset)
  end
  -- Size of Systematic Internaliser Quotes
  if message_type == 0x47 then
    return lseg_tradeecho_siquoting_gtp_v24_4_size_of.systematic_internaliser_quotes(buffer, offset)
  end

  return 0
end

-- Display: Payload
lseg_tradeecho_siquoting_gtp_v24_4_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
lseg_tradeecho_siquoting_gtp_v24_4_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event
  if message_type == 0x53 then
    return lseg_tradeecho_siquoting_gtp_v24_4_dissect.system_event(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory
  if message_type == 0x70 then
    return lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument_directory(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status
  if message_type == 0x48 then
    return lseg_tradeecho_siquoting_gtp_v24_4_dissect.instrument_status(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete
  if message_type == 0x44 then
    return lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_delete(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear
  if message_type == 0x79 then
    return lseg_tradeecho_siquoting_gtp_v24_4_dissect.order_book_clear(buffer, offset, packet, parent)
  end
  -- Dissect Systematic Internaliser Quotes
  if message_type == 0x47 then
    return lseg_tradeecho_siquoting_gtp_v24_4_dissect.systematic_internaliser_quotes(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
lseg_tradeecho_siquoting_gtp_v24_4_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return lseg_tradeecho_siquoting_gtp_v24_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = lseg_tradeecho_siquoting_gtp_v24_4_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.payload(buffer, packet, parent)
  local element = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.payload, range, display)

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_type = 1

-- Display: Message Type
lseg_tradeecho_siquoting_gtp_v24_4_display.message_type = function(value)
  if value == 0x53 then
    return "Message Type: System Event (0x53)"
  end
  if value == 0x70 then
    return "Message Type: Instrument Directory (0x70)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status (0x48)"
  end
  if value == 0x44 then
    return "Message Type: Order Delete (0x44)"
  end
  if value == 0x79 then
    return "Message Type: Order Book Clear (0x79)"
  end
  if value == 0x47 then
    return "Message Type: Systematic Internaliser Quotes (0x47)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_type = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.message_type(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_length = 1

-- Display: Message Length
lseg_tradeecho_siquoting_gtp_v24_4_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_length = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.message_length(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_length

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_type

  return index
end

-- Display: Message Header
lseg_tradeecho_siquoting_gtp_v24_4_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, message_type = lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_siquoting_gtp_v24_4_display.message_header(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.message_header, range, display)
  end

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
lseg_tradeecho_siquoting_gtp_v24_4_size_of.message = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_tradeecho_siquoting_gtp_v24_4_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 6 branches
  index = lseg_tradeecho_siquoting_gtp_v24_4_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_tradeecho_siquoting_gtp_v24_4_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_siquoting_gtp_v24_4_display.message(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.message, range, display)
  end

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
lseg_tradeecho_siquoting_gtp_v24_4_size_of.sequence_number = 4

-- Display: Sequence Number
lseg_tradeecho_siquoting_gtp_v24_4_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_tradeecho_siquoting_gtp_v24_4_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Market Data Group
lseg_tradeecho_siquoting_gtp_v24_4_size_of.market_data_group = 1

-- Display: Market Data Group
lseg_tradeecho_siquoting_gtp_v24_4_display.market_data_group = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_tradeecho_siquoting_gtp_v24_4_dissect.market_data_group = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.market_data_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.market_data_group(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Size: Message Count
lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_count = 1

-- Display: Message Count
lseg_tradeecho_siquoting_gtp_v24_4_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_count = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.message_count(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Length
lseg_tradeecho_siquoting_gtp_v24_4_size_of.length = 2

-- Display: Length
lseg_tradeecho_siquoting_gtp_v24_4_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_tradeecho_siquoting_gtp_v24_4_dissect.length = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_siquoting_gtp_v24_4_display.length(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Header
lseg_tradeecho_siquoting_gtp_v24_4_size_of.unit_header = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.length

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.message_count

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.market_data_group

  index = index + lseg_tradeecho_siquoting_gtp_v24_4_size_of.sequence_number

  return index
end

-- Display: Unit Header
lseg_tradeecho_siquoting_gtp_v24_4_display.unit_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Header
lseg_tradeecho_siquoting_gtp_v24_4_dissect.unit_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_tradeecho_siquoting_gtp_v24_4_dissect.length(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_tradeecho_siquoting_gtp_v24_4_dissect.message_count(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_tradeecho_siquoting_gtp_v24_4_dissect.market_data_group(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_tradeecho_siquoting_gtp_v24_4_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_tradeecho_siquoting_gtp_v24_4_dissect.unit_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_header then
    local length = lseg_tradeecho_siquoting_gtp_v24_4_size_of.unit_header(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_siquoting_gtp_v24_4_display.unit_header(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_siquoting_gtp_v24_4.fields.unit_header, range, display)
  end

  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.unit_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
lseg_tradeecho_siquoting_gtp_v24_4_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_tradeecho_siquoting_gtp_v24_4_dissect.unit_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = lseg_tradeecho_siquoting_gtp_v24_4_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function lseg_tradeecho_siquoting_gtp_v24_4.init()
end

-- Dissector for Lseg TradeEcho SiQuoting Gtp 24.4
function lseg_tradeecho_siquoting_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = lseg_tradeecho_siquoting_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(lseg_tradeecho_siquoting_gtp_v24_4, buffer(), lseg_tradeecho_siquoting_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_tradeecho_siquoting_gtp_v24_4_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, lseg_tradeecho_siquoting_gtp_v24_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.lseg_tradeecho_siquoting_gtp_v24_4_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg TradeEcho SiQuoting Gtp 24.4
local function lseg_tradeecho_siquoting_gtp_v24_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.lseg_tradeecho_siquoting_gtp_v24_4_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = lseg_tradeecho_siquoting_gtp_v24_4
  lseg_tradeecho_siquoting_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg TradeEcho SiQuoting Gtp 24.4
lseg_tradeecho_siquoting_gtp_v24_4:register_heuristic("udp", lseg_tradeecho_siquoting_gtp_v24_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
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
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
