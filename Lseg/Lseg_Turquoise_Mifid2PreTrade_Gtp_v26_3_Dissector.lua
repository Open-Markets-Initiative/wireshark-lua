-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Turquoise Mifid2PreTrade Gtp 26.3 Protocol
local omi_lseg_turquoise_mifid2pretrade_gtp_v26_3 = Proto("Omi.Lseg.Turquoise.Mifid2PreTrade.Gtp.v26.3", "Lseg Turquoise Mifid2PreTrade Gtp 26.3")

-- Protocol table
local lseg_turquoise_mifid2pretrade_gtp_v26_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Turquoise Mifid2PreTrade Gtp 26.3 Fields
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.aggregated_no_of_orders_and_quotes = ProtoField.new("Aggregated No Of Orders And Quotes", "lseg.turquoise.mifid2pretrade.gtp.v26.3.aggregatednoofordersandquotes", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.turquoise.mifid2pretrade.gtp.v26.3.allowedbooktypes", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.clearing_type = ProtoField.new("Clearing Type", "lseg.turquoise.mifid2pretrade.gtp.v26.3.clearingtype", ftypes.UINT8)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.country_of_register = ProtoField.new("Country Of Register", "lseg.turquoise.mifid2pretrade.gtp.v26.3.countryofregister", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.currency = ProtoField.new("Currency", "lseg.turquoise.mifid2pretrade.gtp.v26.3.currency", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.description = ProtoField.new("Description", "lseg.turquoise.mifid2pretrade.gtp.v26.3.description", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.turquoise.mifid2pretrade.gtp.v26.3.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.turquoise.mifid2pretrade.gtp.v26.3.electronicorderbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.event_code = ProtoField.new("Event Code", "lseg.turquoise.mifid2pretrade.gtp.v26.3.eventcode", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.ex_marker_code = ProtoField.new("Ex Marker Code", "lseg.turquoise.mifid2pretrade.gtp.v26.3.exmarkercode", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.exchange_market_size = ProtoField.new("Exchange Market Size", "lseg.turquoise.mifid2pretrade.gtp.v26.3.exchangemarketsize", ftypes.UINT64)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.expiration_date = ProtoField.new("Expiration Date", "lseg.turquoise.mifid2pretrade.gtp.v26.3.expirationdate", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.fifth_reserved_1 = ProtoField.new("Fifth Reserved 1", "lseg.turquoise.mifid2pretrade.gtp.v26.3.fifthreserved1", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.fifth_reserved_8 = ProtoField.new("Fifth Reserved 8", "lseg.turquoise.mifid2pretrade.gtp.v26.3.fifthreserved8", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.fourth_reserved_1 = ProtoField.new("Fourth Reserved 1", "lseg.turquoise.mifid2pretrade.gtp.v26.3.fourthreserved1", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.fourth_reserved_8 = ProtoField.new("Fourth Reserved 8", "lseg.turquoise.mifid2pretrade.gtp.v26.3.fourthreserved8", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument = ProtoField.new("Instrument", "lseg.turquoise.mifid2pretrade.gtp.v26.3.instrument", ftypes.UINT64)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument_identification_code = ProtoField.new("Instrument Identification Code", "lseg.turquoise.mifid2pretrade.gtp.v26.3.instrumentidentificationcode", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.isin = ProtoField.new("Isin", "lseg.turquoise.mifid2pretrade.gtp.v26.3.isin", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.last_price_in_preceding_session = ProtoField.new("Last Price In Preceding Session", "lseg.turquoise.mifid2pretrade.gtp.v26.3.lastpriceinprecedingsession", ftypes.DOUBLE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.last_price_in_preceding_session_date = ProtoField.new("Last Price In Preceding Session Date", "lseg.turquoise.mifid2pretrade.gtp.v26.3.lastpriceinprecedingsessiondate", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.last_price_level = ProtoField.new("Last Price Level", "lseg.turquoise.mifid2pretrade.gtp.v26.3.lastpricelevel", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.length = ProtoField.new("Length", "lseg.turquoise.mifid2pretrade.gtp.v26.3.length", ftypes.UINT16)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.level_identifier = ProtoField.new("Level Identifier", "lseg.turquoise.mifid2pretrade.gtp.v26.3.levelidentifier", ftypes.UINT8)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.listing_end_date = ProtoField.new("Listing End Date", "lseg.turquoise.mifid2pretrade.gtp.v26.3.listingenddate", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.listing_start_date = ProtoField.new("Listing Start Date", "lseg.turquoise.mifid2pretrade.gtp.v26.3.listingstartdate", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.turquoise.mifid2pretrade.gtp.v26.3.marketdatagroup", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message = ProtoField.new("Message", "lseg.turquoise.mifid2pretrade.gtp.v26.3.message", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_count = ProtoField.new("Message Count", "lseg.turquoise.mifid2pretrade.gtp.v26.3.messagecount", ftypes.UINT8)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_header = ProtoField.new("Message Header", "lseg.turquoise.mifid2pretrade.gtp.v26.3.messageheader", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_length = ProtoField.new("Message Length", "lseg.turquoise.mifid2pretrade.gtp.v26.3.messagelength", ftypes.UINT16)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_type = ProtoField.new("Message Type", "lseg.turquoise.mifid2pretrade.gtp.v26.3.messagetype", ftypes.UINT8)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.minimum_lot_minimum_execution_size = ProtoField.new("Minimum Lot Minimum Execution Size", "lseg.turquoise.mifid2pretrade.gtp.v26.3.minimumlotminimumexecutionsize", ftypes.DOUBLE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.minimum_peak_size_multiplier = ProtoField.new("Minimum Peak Size Multiplier", "lseg.turquoise.mifid2pretrade.gtp.v26.3.minimumpeaksizemultiplier", ftypes.DOUBLE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.new_end_time = ProtoField.new("New End Time", "lseg.turquoise.mifid2pretrade.gtp.v26.3.newendtime", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.order_book_side = ProtoField.new("Order Book Side", "lseg.turquoise.mifid2pretrade.gtp.v26.3.orderbookside", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.turquoise.mifid2pretrade.gtp.v26.3.orderbooktype", ftypes.UINT8)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.order_book_update = ProtoField.new("Order Book Update", "lseg.turquoise.mifid2pretrade.gtp.v26.3.orderbookupdate", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.packet = ProtoField.new("Packet", "lseg.turquoise.mifid2pretrade.gtp.v26.3.packet", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.previous_days_closing_price = ProtoField.new("Previous Days Closing Price", "lseg.turquoise.mifid2pretrade.gtp.v26.3.previousdaysclosingprice", ftypes.DOUBLE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.price = ProtoField.new("Price", "lseg.turquoise.mifid2pretrade.gtp.v26.3.price", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.turquoise.mifid2pretrade.gtp.v26.3.pricebandtolerances", ftypes.DOUBLE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.price_currency = ProtoField.new("Price Currency", "lseg.turquoise.mifid2pretrade.gtp.v26.3.pricecurrency", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.price_notation = ProtoField.new("Price Notation", "lseg.turquoise.mifid2pretrade.gtp.v26.3.pricenotation", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.publication_date_and_time = ProtoField.new("Publication Date And Time", "lseg.turquoise.mifid2pretrade.gtp.v26.3.publicationdateandtime", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.quantity = ProtoField.new("Quantity", "lseg.turquoise.mifid2pretrade.gtp.v26.3.quantity", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.turquoise.mifid2pretrade.gtp.v26.3.reserved1", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_12 = ProtoField.new("Reserved 12", "lseg.turquoise.mifid2pretrade.gtp.v26.3.reserved12", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_17 = ProtoField.new("Reserved 17", "lseg.turquoise.mifid2pretrade.gtp.v26.3.reserved17", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_2 = ProtoField.new("Reserved 2", "lseg.turquoise.mifid2pretrade.gtp.v26.3.reserved2", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.turquoise.mifid2pretrade.gtp.v26.3.reserved23", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_38 = ProtoField.new("Reserved 38", "lseg.turquoise.mifid2pretrade.gtp.v26.3.reserved38", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.turquoise.mifid2pretrade.gtp.v26.3.reserved4", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.turquoise.mifid2pretrade.gtp.v26.3.reserved8", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "lseg.turquoise.mifid2pretrade.gtp.v26.3.secondreserved1", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "lseg.turquoise.mifid2pretrade.gtp.v26.3.secondreserved8", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.security_exchange = ProtoField.new("Security Exchange", "lseg.turquoise.mifid2pretrade.gtp.v26.3.securityexchange", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.security_maximum_spread = ProtoField.new("Security Maximum Spread", "lseg.turquoise.mifid2pretrade.gtp.v26.3.securitymaximumspread", ftypes.DOUBLE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.security_type = ProtoField.new("Security Type", "lseg.turquoise.mifid2pretrade.gtp.v26.3.securitytype", ftypes.UINT8)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.sedol = ProtoField.new("Sedol", "lseg.turquoise.mifid2pretrade.gtp.v26.3.sedol", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.segment = ProtoField.new("Segment", "lseg.turquoise.mifid2pretrade.gtp.v26.3.segment", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.turquoise.mifid2pretrade.gtp.v26.3.sequencenumber", ftypes.UINT32)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.turquoise.mifid2pretrade.gtp.v26.3.sessionchangereason", ftypes.UINT8)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.seventh_reserved_8 = ProtoField.new("Seventh Reserved 8", "lseg.turquoise.mifid2pretrade.gtp.v26.3.seventhreserved8", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.sixth_reserved_8 = ProtoField.new("Sixth Reserved 8", "lseg.turquoise.mifid2pretrade.gtp.v26.3.sixthreserved8", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.source_venue = ProtoField.new("Source Venue", "lseg.turquoise.mifid2pretrade.gtp.v26.3.sourcevenue", ftypes.UINT16)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.turquoise.mifid2pretrade.gtp.v26.3.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.strike_price = ProtoField.new("Strike Price", "lseg.turquoise.mifid2pretrade.gtp.v26.3.strikeprice", ftypes.DOUBLE)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.symbol = ProtoField.new("Symbol", "lseg.turquoise.mifid2pretrade.gtp.v26.3.symbol", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.third_reserved_1 = ProtoField.new("Third Reserved 1", "lseg.turquoise.mifid2pretrade.gtp.v26.3.thirdreserved1", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.third_reserved_8 = ProtoField.new("Third Reserved 8", "lseg.turquoise.mifid2pretrade.gtp.v26.3.thirdreserved8", ftypes.BYTES)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.tick_id = ProtoField.new("Tick Id", "lseg.turquoise.mifid2pretrade.gtp.v26.3.tickid", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.timestamp = ProtoField.new("Timestamp", "lseg.turquoise.mifid2pretrade.gtp.v26.3.timestamp", ftypes.UINT64)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.trading_status = ProtoField.new("Trading Status", "lseg.turquoise.mifid2pretrade.gtp.v26.3.tradingstatus", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.trading_system = ProtoField.new("Trading System", "lseg.turquoise.mifid2pretrade.gtp.v26.3.tradingsystem", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.trading_system_phase = ProtoField.new("Trading System Phase", "lseg.turquoise.mifid2pretrade.gtp.v26.3.tradingsystemphase", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.unit_header = ProtoField.new("Unit Header", "lseg.turquoise.mifid2pretrade.gtp.v26.3.unitheader", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.unused_3 = ProtoField.new("Unused 3", "lseg.turquoise.mifid2pretrade.gtp.v26.3.unused3", ftypes.UINT8, nil, base.DEC, 0x07)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.unused_4 = ProtoField.new("Unused 4", "lseg.turquoise.mifid2pretrade.gtp.v26.3.unused4", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.update_date_and_time = ProtoField.new("Update Date And Time", "lseg.turquoise.mifid2pretrade.gtp.v26.3.updatedateandtime", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.venue = ProtoField.new("Venue", "lseg.turquoise.mifid2pretrade.gtp.v26.3.venue", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.turquoise.mifid2pretrade.gtp.v26.3.venueinstrumentid", ftypes.STRING)

-- Lseg Turquoise Gtp Mifid2PreTrade 26.3 Application Messages
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument_directory_extended_message = ProtoField.new("Instrument Directory Extended Message", "lseg.turquoise.mifid2pretrade.gtp.v26.3.instrumentdirectoryextendedmessage", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.turquoise.mifid2pretrade.gtp.v26.3.instrumentdirectorymessage", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.turquoise.mifid2pretrade.gtp.v26.3.instrumentstatusmessage", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.mifid_ii_order_book_update_message = ProtoField.new("Mifid Ii Order Book Update Message", "lseg.turquoise.mifid2pretrade.gtp.v26.3.mifidiiorderbookupdatemessage", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lseg.turquoise.mifid2pretrade.gtp.v26.3.orderbookclearmessage", ftypes.STRING)
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.system_event_message = ProtoField.new("System Event Message", "lseg.turquoise.mifid2pretrade.gtp.v26.3.systemeventmessage", ftypes.STRING)

-- Lseg Turquoise Mifid2PreTrade Gtp 26.3 generated fields
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_index = ProtoField.new("Message Index", "lseg.turquoise.mifid2pretrade.gtp.v26.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Turquoise Mifid2PreTrade Gtp 26.3 Element Dissection Options
show.structs = true
show.application_messages = true
show.indexes = true

-- Register Lseg Turquoise Mifid2PreTrade Gtp 26.3 Show Options
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs.show_application_messages then
    show.application_messages = omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs.show_application_messages
  end
  if show.structs ~= omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs.show_structs then
    show.structs = omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs.show_structs
  end
  if show.indexes ~= omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs.show_indexes then
    show.indexes = omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.prefs.show_indexes
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
-- Lseg Turquoise Mifid2PreTrade Gtp 26.3 Fields
-----------------------------------------------------------------------

-- Aggregated No Of Orders And Quotes
lseg_turquoise_mifid2pretrade_gtp_v26_3.aggregated_no_of_orders_and_quotes = {}

-- Size: Aggregated No Of Orders And Quotes
lseg_turquoise_mifid2pretrade_gtp_v26_3.aggregated_no_of_orders_and_quotes.size = 20

-- Display: Aggregated No Of Orders And Quotes
lseg_turquoise_mifid2pretrade_gtp_v26_3.aggregated_no_of_orders_and_quotes.display = function(value)
  return "Aggregated No Of Orders And Quotes: "..value
end

-- Dissect: Aggregated No Of Orders And Quotes
lseg_turquoise_mifid2pretrade_gtp_v26_3.aggregated_no_of_orders_and_quotes.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.aggregated_no_of_orders_and_quotes.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.aggregated_no_of_orders_and_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.aggregated_no_of_orders_and_quotes, range, value, display)

  return offset + length, value
end

-- Clearing Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.clearing_type = {}

-- Size: Clearing Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.clearing_type.size = 1

-- Display: Clearing Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.clearing_type.display = function(value)
  if value == 0 then
    return "Clearing Type: Not Cleared (0)"
  end
  if value == 1 then
    return "Clearing Type: Cleared (1)"
  end

  return "Clearing Type: Unknown("..value..")"
end

-- Dissect: Clearing Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.clearing_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.clearing_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.clearing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.clearing_type, range, value, display)

  return offset + length, value
end

-- Country Of Register
lseg_turquoise_mifid2pretrade_gtp_v26_3.country_of_register = {}

-- Size: Country Of Register
lseg_turquoise_mifid2pretrade_gtp_v26_3.country_of_register.size = 3

-- Display: Country Of Register
lseg_turquoise_mifid2pretrade_gtp_v26_3.country_of_register.display = function(value)
  return "Country Of Register: "..value
end

-- Dissect: Country Of Register
lseg_turquoise_mifid2pretrade_gtp_v26_3.country_of_register.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.country_of_register.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.country_of_register.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.country_of_register, range, value, display)

  return offset + length, value
end

-- Currency
lseg_turquoise_mifid2pretrade_gtp_v26_3.currency = {}

-- Size: Currency
lseg_turquoise_mifid2pretrade_gtp_v26_3.currency.size = 3

-- Display: Currency
lseg_turquoise_mifid2pretrade_gtp_v26_3.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_turquoise_mifid2pretrade_gtp_v26_3.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.currency, range, value, display)

  return offset + length, value
end

-- Description
lseg_turquoise_mifid2pretrade_gtp_v26_3.description = {}

-- Size: Description
lseg_turquoise_mifid2pretrade_gtp_v26_3.description.size = 40

-- Display: Description
lseg_turquoise_mifid2pretrade_gtp_v26_3.description.display = function(value)
  return "Description: "..value
end

-- Dissect: Description
lseg_turquoise_mifid2pretrade_gtp_v26_3.description.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.description, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Event Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.event_code = {}

-- Size: Event Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.event_code.size = 1

-- Display: Event Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.event_code, range, value, display)

  return offset + length, value
end

-- Ex Marker Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.ex_marker_code = {}

-- Size: Ex Marker Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.ex_marker_code.size = 2

-- Display: Ex Marker Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.ex_marker_code.display = function(value)
  return "Ex Marker Code: "..value
end

-- Dissect: Ex Marker Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.ex_marker_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.ex_marker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.ex_marker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.ex_marker_code, range, value, display)

  return offset + length, value
end

-- Exchange Market Size
lseg_turquoise_mifid2pretrade_gtp_v26_3.exchange_market_size = {}

-- Size: Exchange Market Size
lseg_turquoise_mifid2pretrade_gtp_v26_3.exchange_market_size.size = 8

-- Display: Exchange Market Size
lseg_turquoise_mifid2pretrade_gtp_v26_3.exchange_market_size.display = function(value)
  return "Exchange Market Size: "..value
end

-- Dissect: Exchange Market Size
lseg_turquoise_mifid2pretrade_gtp_v26_3.exchange_market_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.exchange_market_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.exchange_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.exchange_market_size, range, value, display)

  return offset + length, value
end

-- Expiration Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.expiration_date = {}

-- Size: Expiration Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.expiration_date.size = 8

-- Display: Expiration Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.expiration_date.display = function(value)
  if #value < 8 then
    return "Expiration Date: "..value
  end

  return "Expiration Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiration Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Fifth Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_1 = {}

-- Size: Fifth Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_1.size = 1

-- Display: Fifth Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_1.display = function(value)
  return "Fifth Reserved 1: "..value
end

-- Dissect: Fifth Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.fifth_reserved_1, range, value, display)

  return offset + length, value
end

-- Fifth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_8 = {}

-- Size: Fifth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_8.size = 8

-- Display: Fifth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_8.display = function(value)
  return "Fifth Reserved 8: "..value
end

-- Dissect: Fifth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.fifth_reserved_8, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_1 = {}

-- Size: Fourth Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_1.size = 1

-- Display: Fourth Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_1.display = function(value)
  return "Fourth Reserved 1: "..value
end

-- Dissect: Fourth Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.fourth_reserved_1, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_8 = {}

-- Size: Fourth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_8.size = 8

-- Display: Fourth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_8.display = function(value)
  return "Fourth Reserved 8: "..value
end

-- Dissect: Fourth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.fourth_reserved_8, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument = {}

-- Size: Instrument
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.size = 8

-- Display: Instrument
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_identification_code = {}

-- Size: Instrument Identification Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_identification_code.size = 12

-- Display: Instrument Identification Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_identification_code.display = function(value)
  return "Instrument Identification Code: "..value
end

-- Dissect: Instrument Identification Code
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument_identification_code, range, value, display)

  return offset + length, value
end

-- Isin
lseg_turquoise_mifid2pretrade_gtp_v26_3.isin = {}

-- Size: Isin
lseg_turquoise_mifid2pretrade_gtp_v26_3.isin.size = 12

-- Display: Isin
lseg_turquoise_mifid2pretrade_gtp_v26_3.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_turquoise_mifid2pretrade_gtp_v26_3.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.isin, range, value, display)

  return offset + length, value
end

-- Last Price In Preceding Session
lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session = {}

-- Size: Last Price In Preceding Session
lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session.size = 8

-- Display: Last Price In Preceding Session
lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session.display = function(value)
  return "Last Price In Preceding Session: "..value
end

-- Translate: Last Price In Preceding Session
lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price In Preceding Session
lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session.translate(raw)
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.last_price_in_preceding_session, range, value, display)

  return offset + length, value
end

-- Last Price In Preceding Session Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session_date = {}

-- Size: Last Price In Preceding Session Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session_date.size = 8

-- Display: Last Price In Preceding Session Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session_date.display = function(value)
  if #value < 8 then
    return "Last Price In Preceding Session Date: "..value
  end

  return "Last Price In Preceding Session Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Last Price In Preceding Session Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.last_price_in_preceding_session_date, range, value, display)

  return offset + length, value
end

-- Length
lseg_turquoise_mifid2pretrade_gtp_v26_3.length = {}

-- Size: Length
lseg_turquoise_mifid2pretrade_gtp_v26_3.length.size = 2

-- Display: Length
lseg_turquoise_mifid2pretrade_gtp_v26_3.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_turquoise_mifid2pretrade_gtp_v26_3.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.length, range, value, display)

  return offset + length, value
end

-- Level Identifier
lseg_turquoise_mifid2pretrade_gtp_v26_3.level_identifier = {}

-- Size: Level Identifier
lseg_turquoise_mifid2pretrade_gtp_v26_3.level_identifier.size = 1

-- Display: Level Identifier
lseg_turquoise_mifid2pretrade_gtp_v26_3.level_identifier.display = function(value)
  return "Level Identifier: "..value
end

-- Dissect: Level Identifier
lseg_turquoise_mifid2pretrade_gtp_v26_3.level_identifier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.level_identifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.level_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.level_identifier, range, value, display)

  return offset + length, value
end

-- Listing End Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_end_date = {}

-- Size: Listing End Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_end_date.size = 8

-- Display: Listing End Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_end_date.display = function(value)
  if #value < 8 then
    return "Listing End Date: "..value
  end

  return "Listing End Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Listing End Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_end_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_end_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.listing_end_date, range, value, display)

  return offset + length, value
end

-- Listing Start Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_start_date = {}

-- Size: Listing Start Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_start_date.size = 8

-- Display: Listing Start Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_start_date.display = function(value)
  if #value < 8 then
    return "Listing Start Date: "..value
  end

  return "Listing Start Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Listing Start Date
lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_start_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_start_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.listing_start_date, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_turquoise_mifid2pretrade_gtp_v26_3.market_data_group = {}

-- Size: Market Data Group
lseg_turquoise_mifid2pretrade_gtp_v26_3.market_data_group.size = 1

-- Display: Market Data Group
lseg_turquoise_mifid2pretrade_gtp_v26_3.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_turquoise_mifid2pretrade_gtp_v26_3.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_count = {}

-- Size: Message Count
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_count.size = 1

-- Display: Message Count
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_length = {}

-- Size: Message Length
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_length.size = 2

-- Display: Message Length
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_type = {}

-- Size: Message Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_type.size = 1

-- Display: Message Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_type.display = function(value)
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x70 then
    return "Message Type: Instrument Directory Message (0x70)"
  end
  if value == 0x52 then
    return "Message Type: Instrument Directory Extended Message (0x52)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status Message (0x48)"
  end
  if value == 0x79 then
    return "Message Type: Order Book Clear Message (0x79)"
  end
  if value == 0x62 then
    return "Message Type: Mifid Ii Order Book Update Message (0x62)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Lot Minimum Execution Size
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size = {}

-- Size: Minimum Lot Minimum Execution Size
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size.size = 8

-- Display: Minimum Lot Minimum Execution Size
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size.display = function(value)
  return "Minimum Lot Minimum Execution Size: "..value
end

-- Translate: Minimum Lot Minimum Execution Size
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Minimum Lot Minimum Execution Size
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size.translate(raw)
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.minimum_lot_minimum_execution_size, range, value, display)

  return offset + length, value
end

-- Minimum Peak Size Multiplier
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier = {}

-- Size: Minimum Peak Size Multiplier
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier.size = 8

-- Display: Minimum Peak Size Multiplier
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier.display = function(value)
  return "Minimum Peak Size Multiplier: "..value
end

-- Translate: Minimum Peak Size Multiplier
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Minimum Peak Size Multiplier
lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier.translate(raw)
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.minimum_peak_size_multiplier, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.new_end_time = {}

-- Size: New End Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.new_end_time.size = 6

-- Display: New End Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Order Book Side
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_side = {}

-- Size: Order Book Side
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_side.size = 4

-- Display: Order Book Side
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_side.display = function(value)
  if value == "BUYI" then
    return "Order Book Side: Buy Side (BUYI)"
  end
  if value == "SELL" then
    return "Order Book Side: Sell Side (SELL)"
  end

  return "Order Book Side: Unknown("..value..")"
end

-- Dissect: Order Book Side
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_side.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.order_book_side, range, value, display)

  return offset + length, value
end

-- Order Book Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type = {}

-- Size: Order Book Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type.size = 1

-- Display: Order Book Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type.display = function(value)
  if value == 3 then
    return "Order Book Type: Electronic (3)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Previous Days Closing Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price = {}

-- Size: Previous Days Closing Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price.size = 8

-- Display: Previous Days Closing Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price.display = function(value)
  return "Previous Days Closing Price: "..value
end

-- Translate: Previous Days Closing Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Days Closing Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price.translate(raw)
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.previous_days_closing_price, range, value, display)

  return offset + length, value
end

-- Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.price = {}

-- Size: Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.price.size = 20

-- Display: Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.price, range, value, display)

  return offset + length, value
end

-- Price Band Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances = {}

-- Size: Price Band Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances.size = 8

-- Display: Price Band Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances.display = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances.translate(raw)
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Price Currency
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_currency = {}

-- Size: Price Currency
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_currency.size = 3

-- Display: Price Currency
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Notation
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_notation = {}

-- Size: Price Notation
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_notation.size = 4

-- Display: Price Notation
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_notation.display = function(value)
  if value == "MONE" then
    return "Price Notation: Monetary Value (MONE)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
lseg_turquoise_mifid2pretrade_gtp_v26_3.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Publication Date And Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.publication_date_and_time = {}

-- Size: Publication Date And Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.publication_date_and_time.size = 30

-- Display: Publication Date And Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.publication_date_and_time.display = function(value)
  return "Publication Date And Time: "..value
end

-- Dissect: Publication Date And Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.publication_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.publication_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.publication_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.publication_date_and_time, range, value, display)

  return offset + length, value
end

-- Quantity
lseg_turquoise_mifid2pretrade_gtp_v26_3.quantity = {}

-- Size: Quantity
lseg_turquoise_mifid2pretrade_gtp_v26_3.quantity.size = 20

-- Display: Quantity
lseg_turquoise_mifid2pretrade_gtp_v26_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
lseg_turquoise_mifid2pretrade_gtp_v26_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.quantity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_1 = {}

-- Size: Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_1.size = 1

-- Display: Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 12
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_12 = {}

-- Size: Reserved 12
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_12.size = 12

-- Display: Reserved 12
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 2
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_2 = {}

-- Size: Reserved 2
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_2.size = 2

-- Display: Reserved 2
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 23
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_23 = {}

-- Size: Reserved 23
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_23.size = 23

-- Display: Reserved 23
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_23.display = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_23.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_23.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_23.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Reserved 38
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_38 = {}

-- Size: Reserved 38
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_38.size = 38

-- Display: Reserved 38
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_38.display = function(value)
  return "Reserved 38: "..value
end

-- Dissect: Reserved 38
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_38.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_38.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_38.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_38, range, value, display)

  return offset + length, value
end

-- Reserved 4
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_4 = {}

-- Size: Reserved 4
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_4.size = 4

-- Display: Reserved 4
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_8 = {}

-- Size: Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_8.size = 8

-- Display: Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_1 = {}

-- Size: Second Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_1.size = 1

-- Display: Second Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_8 = {}

-- Size: Second Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_8.size = 8

-- Display: Second Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.second_reserved_8, range, value, display)

  return offset + length, value
end

-- Security Exchange
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_exchange = {}

-- Size: Security Exchange
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_exchange.size = 11

-- Display: Security Exchange
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_exchange.display = function(value)
  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Security Maximum Spread
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread = {}

-- Size: Security Maximum Spread
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread.size = 8

-- Display: Security Maximum Spread
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread.display = function(value)
  return "Security Maximum Spread: "..value
end

-- Translate: Security Maximum Spread
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Security Maximum Spread
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread.translate(raw)
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.security_maximum_spread, range, value, display)

  return offset + length, value
end

-- Security Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_type = {}

-- Size: Security Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_type.size = 1

-- Display: Security Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_type.display = function(value)
  return "Security Type: "..value
end

-- Dissect: Security Type
lseg_turquoise_mifid2pretrade_gtp_v26_3.security_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sedol
lseg_turquoise_mifid2pretrade_gtp_v26_3.sedol = {}

-- Size: Sedol
lseg_turquoise_mifid2pretrade_gtp_v26_3.sedol.size = 8

-- Display: Sedol
lseg_turquoise_mifid2pretrade_gtp_v26_3.sedol.display = function(value)
  return "Sedol: "..value
end

-- Dissect: Sedol
lseg_turquoise_mifid2pretrade_gtp_v26_3.sedol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.sedol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.sedol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.sedol, range, value, display)

  return offset + length, value
end

-- Segment
lseg_turquoise_mifid2pretrade_gtp_v26_3.segment = {}

-- Size: Segment
lseg_turquoise_mifid2pretrade_gtp_v26_3.segment.size = 6

-- Display: Segment
lseg_turquoise_mifid2pretrade_gtp_v26_3.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_turquoise_mifid2pretrade_gtp_v26_3.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_turquoise_mifid2pretrade_gtp_v26_3.sequence_number = {}

-- Size: Sequence Number
lseg_turquoise_mifid2pretrade_gtp_v26_3.sequence_number.size = 4

-- Display: Sequence Number
lseg_turquoise_mifid2pretrade_gtp_v26_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_turquoise_mifid2pretrade_gtp_v26_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_turquoise_mifid2pretrade_gtp_v26_3.session_change_reason = {}

-- Size: Session Change Reason
lseg_turquoise_mifid2pretrade_gtp_v26_3.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_turquoise_mifid2pretrade_gtp_v26_3.session_change_reason.display = function(value)
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
lseg_turquoise_mifid2pretrade_gtp_v26_3.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Seventh Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.seventh_reserved_8 = {}

-- Size: Seventh Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.seventh_reserved_8.size = 8

-- Display: Seventh Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.seventh_reserved_8.display = function(value)
  return "Seventh Reserved 8: "..value
end

-- Dissect: Seventh Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.seventh_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.seventh_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.seventh_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.seventh_reserved_8, range, value, display)

  return offset + length, value
end

-- Sixth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.sixth_reserved_8 = {}

-- Size: Sixth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.sixth_reserved_8.size = 8

-- Display: Sixth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.sixth_reserved_8.display = function(value)
  return "Sixth Reserved 8: "..value
end

-- Dissect: Sixth Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.sixth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.sixth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.sixth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.sixth_reserved_8, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue = {}

-- Size: Source Venue
lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.size = 2

-- Display: Source Venue
lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.display = function(value)
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
lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Strike Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price = {}

-- Size: Strike Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price.size = 8

-- Display: Strike Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price.translate(raw)
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
lseg_turquoise_mifid2pretrade_gtp_v26_3.symbol = {}

-- Size: Symbol
lseg_turquoise_mifid2pretrade_gtp_v26_3.symbol.size = 8

-- Display: Symbol
lseg_turquoise_mifid2pretrade_gtp_v26_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
lseg_turquoise_mifid2pretrade_gtp_v26_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Third Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_1 = {}

-- Size: Third Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_1.size = 1

-- Display: Third Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_1.display = function(value)
  return "Third Reserved 1: "..value
end

-- Dissect: Third Reserved 1
lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.third_reserved_1, range, value, display)

  return offset + length, value
end

-- Third Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_8 = {}

-- Size: Third Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_8.size = 8

-- Display: Third Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_8.display = function(value)
  return "Third Reserved 8: "..value
end

-- Dissect: Third Reserved 8
lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.third_reserved_8, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id = {}

-- Size: Tick Id
lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id.size = 2

-- Display: Tick Id
lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp = {}

-- Size: Timestamp
lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.size = 8

-- Display: Timestamp
lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_status = {}

-- Size: Trading Status
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_status.size = 1

-- Display: Trading Status
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_status.display = function(value)
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
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Trading System
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system = {}

-- Size: Trading System
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system.size = 4

-- Display: Trading System
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system.display = function(value)
  if value == "CLOB" then
    return "Trading System: Central Limit Order Book (CLOB)"
  end
  if value == "PATS" then
    return "Trading System: Periodic Auction (PATS)"
  end

  return "Trading System: Unknown("..value..")"
end

-- Dissect: Trading System
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.trading_system, range, value, display)

  return offset + length, value
end

-- Trading System Phase
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system_phase = {}

-- Size: Trading System Phase
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system_phase.size = 4

-- Display: Trading System Phase
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system_phase.display = function(value)
  if value == "COTR" then
    return "Trading System Phase: Continuous Trading (COTR)"
  end
  if value == "ODAU" then
    return "Trading System Phase: On Demand Auction Frequent Batch Auction (ODAU)"
  end

  return "Trading System Phase: Unknown("..value..")"
end

-- Dissect: Trading System Phase
lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system_phase.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system_phase.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.trading_system_phase, range, value, display)

  return offset + length, value
end

-- Update Date And Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.update_date_and_time = {}

-- Size: Update Date And Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.update_date_and_time.size = 30

-- Display: Update Date And Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.update_date_and_time.display = function(value)
  return "Update Date And Time: "..value
end

-- Dissect: Update Date And Time
lseg_turquoise_mifid2pretrade_gtp_v26_3.update_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.update_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.update_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.update_date_and_time, range, value, display)

  return offset + length, value
end

-- Venue
lseg_turquoise_mifid2pretrade_gtp_v26_3.venue = {}

-- Size: Venue
lseg_turquoise_mifid2pretrade_gtp_v26_3.venue.size = 4

-- Display: Venue
lseg_turquoise_mifid2pretrade_gtp_v26_3.venue.display = function(value)
  return "Venue: "..value
end

-- Dissect: Venue
lseg_turquoise_mifid2pretrade_gtp_v26_3.venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.venue, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Turquoise Mifid2PreTrade Gtp 26.3
-----------------------------------------------------------------------

-- Order Book Update
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update = {}

-- Size: Order Book Update
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update.size = 1

-- Display: Order Book Update
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Last Price Level flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Last Price Level"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Book Update
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update.bits = function(range, value, packet, parent)

  -- Last Price Level: 1 Bit
  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.last_price_level, range, value)

  -- Reserved 17: 7 Bit
  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.reserved_17, range, value)
end

-- Dissect: Order Book Update
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.order_book_update, range, display)

  if show.structs then
    lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mifid Ii Order Book Update Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.mifid_ii_order_book_update_message = {}

-- Size: Mifid Ii Order Book Update Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.mifid_ii_order_book_update_message.size =
  lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.level_identifier.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.update_date_and_time.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_identification_code.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_side.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.price.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.price_currency.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.price_notation.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.quantity.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.aggregated_no_of_orders_and_quotes.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.venue.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system_phase.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.publication_date_and_time.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update.size

-- Display: Mifid Ii Order Book Update Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.mifid_ii_order_book_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Ii Order Book Update Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.mifid_ii_order_book_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Level Identifier: UInt8
  index, level_identifier = lseg_turquoise_mifid2pretrade_gtp_v26_3.level_identifier.dissect(buffer, index, packet, parent)

  -- Update Date And Time: MiFID Date and Time
  index, update_date_and_time = lseg_turquoise_mifid2pretrade_gtp_v26_3.update_date_and_time.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code: Alpha
  index, instrument_identification_code = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_identification_code.dissect(buffer, index, packet, parent)

  -- Order Book Side: Alpha
  index, order_book_side = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_side.dissect(buffer, index, packet, parent)

  -- Price: MiFID Decimal
  index, price = lseg_turquoise_mifid2pretrade_gtp_v26_3.price.dissect(buffer, index, packet, parent)

  -- Price Currency: Alpha
  index, price_currency = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_currency.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha
  index, price_notation = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_notation.dissect(buffer, index, packet, parent)

  -- Quantity: MiFID Decimal
  index, quantity = lseg_turquoise_mifid2pretrade_gtp_v26_3.quantity.dissect(buffer, index, packet, parent)

  -- Aggregated No Of Orders And Quotes: MiFID Decimal
  index, aggregated_no_of_orders_and_quotes = lseg_turquoise_mifid2pretrade_gtp_v26_3.aggregated_no_of_orders_and_quotes.dissect(buffer, index, packet, parent)

  -- Venue: Alpha
  index, venue = lseg_turquoise_mifid2pretrade_gtp_v26_3.venue.dissect(buffer, index, packet, parent)

  -- Trading System: Alpha
  index, trading_system = lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system.dissect(buffer, index, packet, parent)

  -- Trading System Phase: Alpha
  index, trading_system_phase = lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_system_phase.dissect(buffer, index, packet, parent)

  -- Publication Date And Time: MiFID Date and Time
  index, publication_date_and_time = lseg_turquoise_mifid2pretrade_gtp_v26_3.publication_date_and_time.dissect(buffer, index, packet, parent)

  -- Order Book Update: Struct of 2 fields
  index, order_book_update = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_update.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Ii Order Book Update Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.mifid_ii_order_book_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.mifid_ii_order_book_update_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid2pretrade_gtp_v26_3.mifid_ii_order_book_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.mifid_ii_order_book_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.mifid_ii_order_book_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_clear_message = {}

-- Size: Order Book Clear Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_clear_message.size =
  lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type.size

-- Display: Order Book Clear Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.order_book_clear_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_status_message = {}

-- Size: Instrument Status Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_status_message.size =
  lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_status.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.session_change_reason.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.new_end_time.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type.size

-- Display: Instrument Status Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_turquoise_mifid2pretrade_gtp_v26_3.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_turquoise_mifid2pretrade_gtp_v26_3.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_turquoise_mifid2pretrade_gtp_v26_3.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Allowed Book Types
lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Electronic Order Book flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Electronic Order Book"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Allowed Book Types
lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.bits = function(range, value, packet, parent)

  -- Unused 3: 3 Bit
  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.unused_3, range, value)

  -- Electronic Order Book: 1 Bit
  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.electronic_order_book, range, value)

  -- Unused 4: 4 Bit
  parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.unused_4, range, value)
end

-- Dissect: Allowed Book Types
lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.allowed_book_types, range, display)

  if show.structs then
    lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Extended Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_extended_message = {}

-- Size: Instrument Directory Extended Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_extended_message.size =
  lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.isin.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.sedol.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.segment.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.currency.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_8.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_1.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_1.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.expiration_date.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_start_date.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_end_date.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session_date.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_1.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_8.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_8.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.ex_marker_code.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.security_type.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.country_of_register.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.exchange_market_size.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.clearing_type.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.security_exchange.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_12.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_1.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_8.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_8.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_1.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.sixth_reserved_8.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.seventh_reserved_8.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_4.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_2.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.symbol.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.description.size

-- Display: Instrument Directory Extended Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Extended Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_turquoise_mifid2pretrade_gtp_v26_3.isin.dissect(buffer, index, packet, parent)

  -- Sedol: Alpha
  index, sedol = lseg_turquoise_mifid2pretrade_gtp_v26_3.sedol.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: Alpha
  index, venue_instrument_id = lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_turquoise_mifid2pretrade_gtp_v26_3.segment.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_turquoise_mifid2pretrade_gtp_v26_3.currency.dissect(buffer, index, packet, parent)

  -- Tick Id: Alpha
  index, tick_id = lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id.dissect(buffer, index, packet, parent)

  -- Previous Days Closing Price: Price
  index, previous_days_closing_price = lseg_turquoise_mifid2pretrade_gtp_v26_3.previous_days_closing_price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_8.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: Price
  index, dynamic_circuit_breaker_tolerances = lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: Price
  index, static_circuit_breaker_tolerances = lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Reserved 1: UInt8
  index, reserved_1 = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: UInt8
  index, second_reserved_1 = lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Expiration Date: Date
  index, expiration_date = lseg_turquoise_mifid2pretrade_gtp_v26_3.expiration_date.dissect(buffer, index, packet, parent)

  -- Listing Start Date: Date
  index, listing_start_date = lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_start_date.dissect(buffer, index, packet, parent)

  -- Listing End Date: Date
  index, listing_end_date = lseg_turquoise_mifid2pretrade_gtp_v26_3.listing_end_date.dissect(buffer, index, packet, parent)

  -- Minimum Lot Minimum Execution Size: Size
  index, minimum_lot_minimum_execution_size = lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_lot_minimum_execution_size.dissect(buffer, index, packet, parent)

  -- Last Price In Preceding Session: Price
  index, last_price_in_preceding_session = lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session.dissect(buffer, index, packet, parent)

  -- Last Price In Preceding Session Date: Date
  index, last_price_in_preceding_session_date = lseg_turquoise_mifid2pretrade_gtp_v26_3.last_price_in_preceding_session_date.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: UInt8
  index, third_reserved_1 = lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_1.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: Price
  index, second_reserved_8 = lseg_turquoise_mifid2pretrade_gtp_v26_3.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Third Reserved 8: Price
  index, third_reserved_8 = lseg_turquoise_mifid2pretrade_gtp_v26_3.third_reserved_8.dissect(buffer, index, packet, parent)

  -- Ex Marker Code: Alpha
  index, ex_marker_code = lseg_turquoise_mifid2pretrade_gtp_v26_3.ex_marker_code.dissect(buffer, index, packet, parent)

  -- Security Type: UInt8
  index, security_type = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_type.dissect(buffer, index, packet, parent)

  -- Country Of Register: Alpha
  index, country_of_register = lseg_turquoise_mifid2pretrade_gtp_v26_3.country_of_register.dissect(buffer, index, packet, parent)

  -- Exchange Market Size: UInt64
  index, exchange_market_size = lseg_turquoise_mifid2pretrade_gtp_v26_3.exchange_market_size.dissect(buffer, index, packet, parent)

  -- Minimum Peak Size Multiplier: Size
  index, minimum_peak_size_multiplier = lseg_turquoise_mifid2pretrade_gtp_v26_3.minimum_peak_size_multiplier.dissect(buffer, index, packet, parent)

  -- Security Maximum Spread: Price
  index, security_maximum_spread = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_maximum_spread.dissect(buffer, index, packet, parent)

  -- Clearing Type: UInt8
  index, clearing_type = lseg_turquoise_mifid2pretrade_gtp_v26_3.clearing_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = lseg_turquoise_mifid2pretrade_gtp_v26_3.strike_price.dissect(buffer, index, packet, parent)

  -- Security Exchange: Alpha
  index, security_exchange = lseg_turquoise_mifid2pretrade_gtp_v26_3.security_exchange.dissect(buffer, index, packet, parent)

  -- Reserved 12: Alpha
  index, reserved_12 = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_12.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: UInt8
  index, fourth_reserved_1 = lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_1.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 8: Price
  index, fourth_reserved_8 = lseg_turquoise_mifid2pretrade_gtp_v26_3.fourth_reserved_8.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 8: Price
  index, fifth_reserved_8 = lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_8.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: UInt8
  index, fifth_reserved_1 = lseg_turquoise_mifid2pretrade_gtp_v26_3.fifth_reserved_1.dissect(buffer, index, packet, parent)

  -- Sixth Reserved 8: Price
  index, sixth_reserved_8 = lseg_turquoise_mifid2pretrade_gtp_v26_3.sixth_reserved_8.dissect(buffer, index, packet, parent)

  -- Seventh Reserved 8: Price
  index, seventh_reserved_8 = lseg_turquoise_mifid2pretrade_gtp_v26_3.seventh_reserved_8.dissect(buffer, index, packet, parent)

  -- Reserved 4: UInt32
  index, reserved_4 = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_4.dissect(buffer, index, packet, parent)

  -- Reserved 2: UInt16
  index, reserved_2 = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_2.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = lseg_turquoise_mifid2pretrade_gtp_v26_3.symbol.dissect(buffer, index, packet, parent)

  -- Description: Alpha
  index, description = lseg_turquoise_mifid2pretrade_gtp_v26_3.description.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Extended Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument_directory_extended_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Directory Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_message = {}

-- Size: Instrument Directory Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_message.size =
  lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.isin.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.segment.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_23.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.currency.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_38.size

-- Display: Instrument Directory Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_turquoise_mifid2pretrade_gtp_v26_3.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_turquoise_mifid2pretrade_gtp_v26_3.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: Alpha
  index, venue_instrument_id = lseg_turquoise_mifid2pretrade_gtp_v26_3.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: Alpha
  index, tick_id = lseg_turquoise_mifid2pretrade_gtp_v26_3.tick_id.dissect(buffer, index, packet, parent)

  -- Price Band Tolerances: Price
  index, price_band_tolerances = lseg_turquoise_mifid2pretrade_gtp_v26_3.price_band_tolerances.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: Price
  index, dynamic_circuit_breaker_tolerances = lseg_turquoise_mifid2pretrade_gtp_v26_3.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: Price
  index, static_circuit_breaker_tolerances = lseg_turquoise_mifid2pretrade_gtp_v26_3.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_turquoise_mifid2pretrade_gtp_v26_3.segment.dissect(buffer, index, packet, parent)

  -- Reserved 23: Alpha
  index, reserved_23 = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_23.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_turquoise_mifid2pretrade_gtp_v26_3.currency.dissect(buffer, index, packet, parent)

  -- Reserved 38: Byte
  index, reserved_38 = lseg_turquoise_mifid2pretrade_gtp_v26_3.reserved_38.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.system_event_message = {}

-- Size: System Event Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.system_event_message.size =
  lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.event_code.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.size

-- Display: System Event Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_mifid2pretrade_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = lseg_turquoise_mifid2pretrade_gtp_v26_3.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_mifid2pretrade_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.system_event_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid2pretrade_gtp_v26_3.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_turquoise_mifid2pretrade_gtp_v26_3.payload = {}

-- Dissect: Payload
lseg_turquoise_mifid2pretrade_gtp_v26_3.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Extended Message
  if message_type == 0x52 then
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_directory_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mifid Ii Order Book Update Message
  if message_type == 0x62 then
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.mifid_ii_order_book_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_header = {}

-- Size: Message Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_header.size =
  lseg_turquoise_mifid2pretrade_gtp_v26_3.message_length.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.message_type.size

-- Display: Message Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, message_type = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_header, buffer(offset, 0))
    local index = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.message = {}

-- Display: Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 6 branches
  index = lseg_turquoise_mifid2pretrade_gtp_v26_3.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_turquoise_mifid2pretrade_gtp_v26_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.message, buffer(offset, 0))
    local current = lseg_turquoise_mifid2pretrade_gtp_v26_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_turquoise_mifid2pretrade_gtp_v26_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header = {}

-- Size: Unit Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header.size =
  lseg_turquoise_mifid2pretrade_gtp_v26_3.length.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.message_count.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.market_data_group.size + 
  lseg_turquoise_mifid2pretrade_gtp_v26_3.sequence_number.size

-- Display: Unit Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_turquoise_mifid2pretrade_gtp_v26_3.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_turquoise_mifid2pretrade_gtp_v26_3.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_turquoise_mifid2pretrade_gtp_v26_3.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_turquoise_mifid2pretrade_gtp_v26_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.fields.unit_header, buffer(offset, 0))
    local index = lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_turquoise_mifid2pretrade_gtp_v26_3.packet = {}

-- Verify required size of Udp packet
lseg_turquoise_mifid2pretrade_gtp_v26_3.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header.size
end

-- Dissect Packet
lseg_turquoise_mifid2pretrade_gtp_v26_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_turquoise_mifid2pretrade_gtp_v26_3.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = lseg_turquoise_mifid2pretrade_gtp_v26_3.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.init()
end

-- Dissector for Lseg Turquoise Mifid2PreTrade Gtp 26.3
function omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3, buffer(), omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.description, "("..buffer:len().." Bytes)")
  return lseg_turquoise_mifid2pretrade_gtp_v26_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Turquoise Mifid2PreTrade Gtp 26.3 (Udp)
local function omi_lseg_turquoise_mifid2pretrade_gtp_v26_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_turquoise_mifid2pretrade_gtp_v26_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_turquoise_mifid2pretrade_gtp_v26_3
  omi_lseg_turquoise_mifid2pretrade_gtp_v26_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Turquoise Mifid2PreTrade Gtp 26.3
omi_lseg_turquoise_mifid2pretrade_gtp_v26_3:register_heuristic("udp", omi_lseg_turquoise_mifid2pretrade_gtp_v26_3_udp_heuristic)

-- Register Lseg Turquoise Mifid2PreTrade Gtp 26.3 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lseg_turquoise_mifid2pretrade_gtp_v26_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 26.3
--   Date: Tuesday, March 3, 2026
--   Specification: gtp-002-technical-guide-turquoise-issue-26-3.pdf
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
