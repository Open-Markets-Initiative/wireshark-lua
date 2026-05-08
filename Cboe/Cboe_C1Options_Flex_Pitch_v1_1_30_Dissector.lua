-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1Options Flex Pitch 1.1.30 Protocol
local omi_cboe_c1options_flex_pitch_v1_1_30 = Proto("Cboe.C1Options.Flex.Pitch.v1.1.30.Lua", "Cboe C1Options Flex Pitch 1.1.30")

-- Protocol table
local cboe_c1options_flex_pitch_v1_1_30 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1Options Flex Pitch 1.1.30 Fields
omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.c1options.flex.pitch.v1.1.30.auctionendoffset", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_id = ProtoField.new("Auction Id", "cboe.c1options.flex.pitch.v1.1.30.auctionid", ftypes.UINT64)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_type = ProtoField.new("Auction Type", "cboe.c1options.flex.pitch.v1.1.30.auctiontype", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.call_put_indicator = ProtoField.new("Call Put Indicator", "cboe.c1options.flex.pitch.v1.1.30.callputindicator", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.client_id = ProtoField.new("Client Id", "cboe.c1options.flex.pitch.v1.1.30.clientid", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_flex_leg = ProtoField.new("Complex Flex Leg", "cboe.c1options.flex.pitch.v1.1.30.complexflexleg", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.c1options.flex.pitch.v1.1.30.complexinstrumentid", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.c1options.flex.pitch.v1.1.30.complexinstrumenttype", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.count = ProtoField.new("Count", "cboe.c1options.flex.pitch.v1.1.30.count", ftypes.UINT8)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.creation_day = ProtoField.new("Creation Day", "cboe.c1options.flex.pitch.v1.1.30.creationday", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.c1options.flex.pitch.v1.1.30.customerindicator", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_closing_price = ProtoField.new("Dac Closing Price", "cboe.c1options.flex.pitch.v1.1.30.dacclosingprice", ftypes.DOUBLE)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_delta = ProtoField.new("Dac Delta", "cboe.c1options.flex.pitch.v1.1.30.dacdelta", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_delta_count = ProtoField.new("Dac Delta Count", "cboe.c1options.flex.pitch.v1.1.30.dacdeltacount", ftypes.UINT8)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_delta_value = ProtoField.new("Dac Delta Value", "cboe.c1options.flex.pitch.v1.1.30.dacdeltavalue", ftypes.INT16)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_reference_price = ProtoField.new("Dac Reference Price", "cboe.c1options.flex.pitch.v1.1.30.dacreferenceprice", ftypes.DOUBLE)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.day = ProtoField.new("Day", "cboe.c1options.flex.pitch.v1.1.30.day", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.decimal_strike = ProtoField.new("Decimal Strike", "cboe.c1options.flex.pitch.v1.1.30.decimalstrike", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.delta_value = ProtoField.new("Delta Value", "cboe.c1options.flex.pitch.v1.1.30.deltavalue", ftypes.INT16)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.dollar_strike = ProtoField.new("Dollar Strike", "cboe.c1options.flex.pitch.v1.1.30.dollarstrike", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.c1options.flex.pitch.v1.1.30.epochtime", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.execution_id = ProtoField.new("Execution Id", "cboe.c1options.flex.pitch.v1.1.30.executionid", ftypes.UINT64)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.exercise_style = ProtoField.new("Exercise Style", "cboe.c1options.flex.pitch.v1.1.30.exercisestyle", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c1options.flex.pitch.v1.1.30.feedsymbol", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.flex_instrument_id = ProtoField.new("Flex Instrument Id", "cboe.c1options.flex.pitch.v1.1.30.flexinstrumentid", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.c1options.flex.pitch.v1.1.30.gthtradingstatus", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.leg_count = ProtoField.new("Leg Count", "cboe.c1options.flex.pitch.v1.1.30.legcount", ftypes.UINT8)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.c1options.flex.pitch.v1.1.30.legratio", ftypes.INT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.c1options.flex.pitch.v1.1.30.legsecuritytype", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.c1options.flex.pitch.v1.1.30.legsymbol", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.length = ProtoField.new("Length", "cboe.c1options.flex.pitch.v1.1.30.length", ftypes.UINT16)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.message = ProtoField.new("Message", "cboe.c1options.flex.pitch.v1.1.30.message", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_count = ProtoField.new("Message Count", "cboe.c1options.flex.pitch.v1.1.30.messagecount", ftypes.UINT8)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_header = ProtoField.new("Message Header", "cboe.c1options.flex.pitch.v1.1.30.messageheader", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_leg_count = ProtoField.new("Message Leg Count", "cboe.c1options.flex.pitch.v1.1.30.messagelegcount", ftypes.UINT8)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_length = ProtoField.new("Message Length", "cboe.c1options.flex.pitch.v1.1.30.messagelength", ftypes.UINT8)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_number = ProtoField.new("Message Number", "cboe.c1options.flex.pitch.v1.1.30.messagenumber", ftypes.UINT8)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_type = ProtoField.new("Message Type", "cboe.c1options.flex.pitch.v1.1.30.messagetype", ftypes.UINT8)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.c1options.flex.pitch.v1.1.30.midnightreference", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.month = ProtoField.new("Month", "cboe.c1options.flex.pitch.v1.1.30.month", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.observation_day = ProtoField.new("Observation Day", "cboe.c1options.flex.pitch.v1.1.30.observationday", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.order_id = ProtoField.new("Order Id", "cboe.c1options.flex.pitch.v1.1.30.orderid", ftypes.UINT64)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.osi_root = ProtoField.new("Osi Root", "cboe.c1options.flex.pitch.v1.1.30.osiroot", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c1options.flex.pitch.v1.1.30.osisymbol", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.packet = ProtoField.new("Packet", "cboe.c1options.flex.pitch.v1.1.30.packet", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.packet_header = ProtoField.new("Packet Header", "cboe.c1options.flex.pitch.v1.1.30.packetheader", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.participant_id = ProtoField.new("Participant Id", "cboe.c1options.flex.pitch.v1.1.30.participantid", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.percentage = ProtoField.new("Percentage", "cboe.c1options.flex.pitch.v1.1.30.percentage", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.price_binary_signed_long_price_8 = ProtoField.new("Price Binary Signed Long Price 8", "cboe.c1options.flex.pitch.v1.1.30.pricebinarysignedlongprice8", ftypes.DOUBLE)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.price_binary_signed_short_price_2 = ProtoField.new("Price Binary Signed Short Price 2", "cboe.c1options.flex.pitch.v1.1.30.pricebinarysignedshortprice2", ftypes.DOUBLE)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.c1options.flex.pitch.v1.1.30.quantitylong", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.c1options.flex.pitch.v1.1.30.quantityshort", ftypes.UINT16)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.c1options.flex.pitch.v1.1.30.reserved1", ftypes.BYTES)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.c1options.flex.pitch.v1.1.30.reserved2", ftypes.BYTES)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.return_cap_percentage = ProtoField.new("Return Cap Percentage", "cboe.c1options.flex.pitch.v1.1.30.returncappercentage", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.sequence = ProtoField.new("Sequence", "cboe.c1options.flex.pitch.v1.1.30.sequence", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.settlement_type = ProtoField.new("Settlement Type", "cboe.c1options.flex.pitch.v1.1.30.settlementtype", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.side = ProtoField.new("Side", "cboe.c1options.flex.pitch.v1.1.30.side", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.c1options.flex.pitch.v1.1.30.sideindicator", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.symbol = ProtoField.new("Symbol", "cboe.c1options.flex.pitch.v1.1.30.symbol", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c1options.flex.pitch.v1.1.30.symbolcondition", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.time = ProtoField.new("Time", "cboe.c1options.flex.pitch.v1.1.30.time", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.time_offset = ProtoField.new("Time Offset", "cboe.c1options.flex.pitch.v1.1.30.timeoffset", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.timestamp = ProtoField.new("Timestamp", "cboe.c1options.flex.pitch.v1.1.30.timestamp", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.c1options.flex.pitch.v1.1.30.tradecondition", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_date = ProtoField.new("Trade Date", "cboe.c1options.flex.pitch.v1.1.30.tradedate", ftypes.UINT32)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.trading_status = ProtoField.new("Trading Status", "cboe.c1options.flex.pitch.v1.1.30.tradingstatus", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.underlying = ProtoField.new("Underlying", "cboe.c1options.flex.pitch.v1.1.30.underlying", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.unit = ProtoField.new("Unit", "cboe.c1options.flex.pitch.v1.1.30.unit", ftypes.UINT8)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.year = ProtoField.new("Year", "cboe.c1options.flex.pitch.v1.1.30.year", ftypes.STRING)

-- Cboe C1Options Pitch Flex 1.1.30 Application Messages
omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.c1options.flex.pitch.v1.1.30.auctioncancelmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.c1options.flex.pitch.v1.1.30.auctionnotificationmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.c1options.flex.pitch.v1.1.30.auctiontrademessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_flex_instrument_definition_message = ProtoField.new("Complex Flex Instrument Definition Message", "cboe.c1options.flex.pitch.v1.1.30.complexflexinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_auction_notification_message = ProtoField.new("Dac Auction Notification Message", "cboe.c1options.flex.pitch.v1.1.30.dacauctionnotificationmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_trade_message = ProtoField.new("Dac Trade Message", "cboe.c1options.flex.pitch.v1.1.30.dactrademessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.c1options.flex.pitch.v1.1.30.endofsessionmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.flex_instrument_definition_message = ProtoField.new("Flex Instrument Definition Message", "cboe.c1options.flex.pitch.v1.1.30.flexinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c1options.flex.pitch.v1.1.30.symbolmappingmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.time_message = ProtoField.new("Time Message", "cboe.c1options.flex.pitch.v1.1.30.timemessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.c1options.flex.pitch.v1.1.30.timereferencemessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.c1options.flex.pitch.v1.1.30.tradebreakmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.c1options.flex.pitch.v1.1.30.tradelongmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.c1options.flex.pitch.v1.1.30.tradeshortmessage", ftypes.STRING)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.c1options.flex.pitch.v1.1.30.tradingstatusmessage", ftypes.STRING)

-- Cboe C1Options Flex Pitch 1.1.30 generated fields
omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_flex_leg_index = ProtoField.new("Complex Flex Leg Index", "cboe.c1options.flex.pitch.v1.1.30.complexflexlegindex", ftypes.UINT16)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_delta_index = ProtoField.new("Dac Delta Index", "cboe.c1options.flex.pitch.v1.1.30.dacdeltaindex", ftypes.UINT16)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_index = ProtoField.new("Message Index", "cboe.c1options.flex.pitch.v1.1.30.messageindex", ftypes.UINT16)
omi_cboe_c1options_flex_pitch_v1_1_30.fields.timestamp = ProtoField.new("Timestamp", "cboe.c1options.flex.pitch.v1.1.30.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C1Options Flex Pitch 1.1.30 Element Dissection Options
show.application_messages = true
show.complex_flex_leg = true
show.dac_delta = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true
show.complex_flex_leg_index = true
show.dac_delta_index = true

-- Register Cboe C1Options Flex Pitch 1.1.30 Show Options
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_complex_flex_leg = Pref.bool("Show Complex Flex Leg", show.complex_flex_leg, "Parse and add Complex Flex Leg to protocol tree")
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_dac_delta = Pref.bool("Show Dac Delta", show.dac_delta, "Parse and add Dac Delta to protocol tree")
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_complex_flex_leg_index = Pref.bool("Show Complex Flex Leg Index", show.complex_flex_leg_index, "Show generated complex flex leg index in protocol tree")
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_dac_delta_index = Pref.bool("Show Dac Delta Index", show.dac_delta_index, "Show generated dac delta index in protocol tree")

-- Time Offset Display Preferences
cboe_c1options_flex_pitch_v1_1_30.time_offset_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_c1options_flex_pitch_v1_1_30.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local time_offset_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_cboe_c1options_flex_pitch_v1_1_30.prefs.time_offset_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", time_offset_format_enum, false)
omi_cboe_c1options_flex_pitch_v1_1_30.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_cboe_c1options_flex_pitch_v1_1_30.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_application_messages then
    show.application_messages = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_application_messages
  end
  if show.complex_flex_leg ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_complex_flex_leg then
    show.complex_flex_leg = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_complex_flex_leg
  end
  if show.dac_delta ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_dac_delta then
    show.dac_delta = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_dac_delta
  end
  if show.message ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_message then
    show.message = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_message
  end
  if show.message_header ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_message_header then
    show.message_header = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_packet then
    show.packet = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_packet_header then
    show.packet_header = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_message_index then
    show.message_index = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_message_index
  end
  if show.complex_flex_leg_index ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_complex_flex_leg_index then
    show.complex_flex_leg_index = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_complex_flex_leg_index
  end
  if show.dac_delta_index ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_dac_delta_index then
    show.dac_delta_index = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.show_dac_delta_index
  end

  -- Check Time Offset preferences
  if cboe_c1options_flex_pitch_v1_1_30.time_offset_format ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.time_offset_format then
    cboe_c1options_flex_pitch_v1_1_30.time_offset_format = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.time_offset_format
  end
  if cboe_c1options_flex_pitch_v1_1_30.utc_offset_hours ~= omi_cboe_c1options_flex_pitch_v1_1_30.prefs.utc_offset_hours then
    cboe_c1options_flex_pitch_v1_1_30.utc_offset_hours = omi_cboe_c1options_flex_pitch_v1_1_30.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_c1options_flex_pitch_v1_1_30.conversation = {}
cboe_c1options_flex_pitch_v1_1_30.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_c1options_flex_pitch_v1_1_30.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_c1options_flex_pitch_v1_1_30.conversation.data = function(packet)
  local key = cboe_c1options_flex_pitch_v1_1_30.conversation.key(packet)
  local data = cboe_c1options_flex_pitch_v1_1_30.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_c1options_flex_pitch_v1_1_30.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_c1options_flex_pitch_v1_1_30.conversation.current = nil


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
-- Cboe C1Options Flex Pitch 1.1.30 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_c1options_flex_pitch_v1_1_30.auction_end_offset = {}

-- Size: Auction End Offset
cboe_c1options_flex_pitch_v1_1_30.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_c1options_flex_pitch_v1_1_30.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_c1options_flex_pitch_v1_1_30.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_c1options_flex_pitch_v1_1_30.auction_id = {}

-- Size: Auction Id
cboe_c1options_flex_pitch_v1_1_30.auction_id.size = 8

-- Display: Auction Id
cboe_c1options_flex_pitch_v1_1_30.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_c1options_flex_pitch_v1_1_30.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_flex_pitch_v1_1_30.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_c1options_flex_pitch_v1_1_30.auction_type = {}

-- Size: Auction Type
cboe_c1options_flex_pitch_v1_1_30.auction_type.size = 1

-- Display: Auction Type
cboe_c1options_flex_pitch_v1_1_30.auction_type.display = function(value)
  if value == "B" then
    return "Auction Type: Aim (B)"
  end
  if value == "F" then
    return "Auction Type: Flex Auction (F)"
  end
  if value == "S" then
    return "Auction Type: Solicitation Auction Mechanism (S)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_c1options_flex_pitch_v1_1_30.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Call Put Indicator
cboe_c1options_flex_pitch_v1_1_30.call_put_indicator = {}

-- Size: Call Put Indicator
cboe_c1options_flex_pitch_v1_1_30.call_put_indicator.size = 1

-- Display: Call Put Indicator
cboe_c1options_flex_pitch_v1_1_30.call_put_indicator.display = function(value)
  if value == "C" then
    return "Call Put Indicator: Call (C)"
  end
  if value == "P" then
    return "Call Put Indicator: Put (P)"
  end

  return "Call Put Indicator: Unknown("..value..")"
end

-- Dissect: Call Put Indicator
cboe_c1options_flex_pitch_v1_1_30.call_put_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.call_put_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.call_put_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.call_put_indicator, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_c1options_flex_pitch_v1_1_30.client_id = {}

-- Size: Client Id
cboe_c1options_flex_pitch_v1_1_30.client_id.size = 4

-- Display: Client Id
cboe_c1options_flex_pitch_v1_1_30.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_c1options_flex_pitch_v1_1_30.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.client_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id
cboe_c1options_flex_pitch_v1_1_30.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_c1options_flex_pitch_v1_1_30.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_c1options_flex_pitch_v1_1_30.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_c1options_flex_pitch_v1_1_30.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_c1options_flex_pitch_v1_1_30.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_c1options_flex_pitch_v1_1_30.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_c1options_flex_pitch_v1_1_30.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_c1options_flex_pitch_v1_1_30.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Count
cboe_c1options_flex_pitch_v1_1_30.count = {}

-- Size: Count
cboe_c1options_flex_pitch_v1_1_30.count.size = 1

-- Display: Count
cboe_c1options_flex_pitch_v1_1_30.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_c1options_flex_pitch_v1_1_30.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.count, range, value, display)

  return offset + length, value
end

-- Creation Day
cboe_c1options_flex_pitch_v1_1_30.creation_day = {}

-- Size: Creation Day
cboe_c1options_flex_pitch_v1_1_30.creation_day.size = 2

-- Display: Creation Day
cboe_c1options_flex_pitch_v1_1_30.creation_day.display = function(value)
  return "Creation Day: "..value
end

-- Dissect: Creation Day
cboe_c1options_flex_pitch_v1_1_30.creation_day.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.creation_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.creation_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.creation_day, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_c1options_flex_pitch_v1_1_30.customer_indicator = {}

-- Size: Customer Indicator
cboe_c1options_flex_pitch_v1_1_30.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_c1options_flex_pitch_v1_1_30.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_c1options_flex_pitch_v1_1_30.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Dac Closing Price
cboe_c1options_flex_pitch_v1_1_30.dac_closing_price = {}

-- Size: Dac Closing Price
cboe_c1options_flex_pitch_v1_1_30.dac_closing_price.size = 8

-- Display: Dac Closing Price
cboe_c1options_flex_pitch_v1_1_30.dac_closing_price.display = function(value)
  return "Dac Closing Price: "..value
end

-- Translate: Dac Closing Price
cboe_c1options_flex_pitch_v1_1_30.dac_closing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Dac Closing Price
cboe_c1options_flex_pitch_v1_1_30.dac_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.dac_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_flex_pitch_v1_1_30.dac_closing_price.translate(raw)
  local display = cboe_c1options_flex_pitch_v1_1_30.dac_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_closing_price, range, value, display)

  return offset + length, value
end

-- Dac Delta Count
cboe_c1options_flex_pitch_v1_1_30.dac_delta_count = {}

-- Size: Dac Delta Count
cboe_c1options_flex_pitch_v1_1_30.dac_delta_count.size = 1

-- Display: Dac Delta Count
cboe_c1options_flex_pitch_v1_1_30.dac_delta_count.display = function(value)
  return "Dac Delta Count: "..value
end

-- Dissect: Dac Delta Count
cboe_c1options_flex_pitch_v1_1_30.dac_delta_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.dac_delta_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.dac_delta_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_delta_count, range, value, display)

  return offset + length, value
end

-- Dac Delta Value
cboe_c1options_flex_pitch_v1_1_30.dac_delta_value = {}

-- Size: Dac Delta Value
cboe_c1options_flex_pitch_v1_1_30.dac_delta_value.size = 2

-- Display: Dac Delta Value
cboe_c1options_flex_pitch_v1_1_30.dac_delta_value.display = function(value)
  return "Dac Delta Value: "..value
end

-- Dissect: Dac Delta Value
cboe_c1options_flex_pitch_v1_1_30.dac_delta_value.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.dac_delta_value.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_c1options_flex_pitch_v1_1_30.dac_delta_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_delta_value, range, value, display)

  return offset + length, value
end

-- Dac Reference Price
cboe_c1options_flex_pitch_v1_1_30.dac_reference_price = {}

-- Size: Dac Reference Price
cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.size = 8

-- Display: Dac Reference Price
cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.display = function(value)
  return "Dac Reference Price: "..value
end

-- Translate: Dac Reference Price
cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Dac Reference Price
cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.translate(raw)
  local display = cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_reference_price, range, value, display)

  return offset + length, value
end

-- Day
cboe_c1options_flex_pitch_v1_1_30.day = {}

-- Size: Day
cboe_c1options_flex_pitch_v1_1_30.day.size = 2

-- Display: Day
cboe_c1options_flex_pitch_v1_1_30.day.display = function(value)
  return "Day: "..value
end

-- Dissect: Day
cboe_c1options_flex_pitch_v1_1_30.day.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.day, range, value, display)

  return offset + length, value
end

-- Decimal Strike
cboe_c1options_flex_pitch_v1_1_30.decimal_strike = {}

-- Size: Decimal Strike
cboe_c1options_flex_pitch_v1_1_30.decimal_strike.size = 3

-- Display: Decimal Strike
cboe_c1options_flex_pitch_v1_1_30.decimal_strike.display = function(value)
  return "Decimal Strike: "..value
end

-- Dissect: Decimal Strike
cboe_c1options_flex_pitch_v1_1_30.decimal_strike.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.decimal_strike.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.decimal_strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.decimal_strike, range, value, display)

  return offset + length, value
end

-- Delta Value
cboe_c1options_flex_pitch_v1_1_30.delta_value = {}

-- Size: Delta Value
cboe_c1options_flex_pitch_v1_1_30.delta_value.size = 2

-- Display: Delta Value
cboe_c1options_flex_pitch_v1_1_30.delta_value.display = function(value)
  return "Delta Value: "..value
end

-- Dissect: Delta Value
cboe_c1options_flex_pitch_v1_1_30.delta_value.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.delta_value.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_c1options_flex_pitch_v1_1_30.delta_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.delta_value, range, value, display)

  return offset + length, value
end

-- Dollar Strike
cboe_c1options_flex_pitch_v1_1_30.dollar_strike = {}

-- Size: Dollar Strike
cboe_c1options_flex_pitch_v1_1_30.dollar_strike.size = 5

-- Display: Dollar Strike
cboe_c1options_flex_pitch_v1_1_30.dollar_strike.display = function(value)
  return "Dollar Strike: "..value
end

-- Dissect: Dollar Strike
cboe_c1options_flex_pitch_v1_1_30.dollar_strike.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.dollar_strike.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.dollar_strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.dollar_strike, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_c1options_flex_pitch_v1_1_30.epoch_time = {}

-- Size: Epoch Time
cboe_c1options_flex_pitch_v1_1_30.epoch_time.size = 4

-- Display: Epoch Time
cboe_c1options_flex_pitch_v1_1_30.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_c1options_flex_pitch_v1_1_30.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_c1options_flex_pitch_v1_1_30.execution_id = {}

-- Size: Execution Id
cboe_c1options_flex_pitch_v1_1_30.execution_id.size = 8

-- Display: Execution Id
cboe_c1options_flex_pitch_v1_1_30.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_c1options_flex_pitch_v1_1_30.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_flex_pitch_v1_1_30.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Exercise Style
cboe_c1options_flex_pitch_v1_1_30.exercise_style = {}

-- Size: Exercise Style
cboe_c1options_flex_pitch_v1_1_30.exercise_style.size = 1

-- Display: Exercise Style
cboe_c1options_flex_pitch_v1_1_30.exercise_style.display = function(value)
  if value == "A" then
    return "Exercise Style: American (A)"
  end
  if value == "E" then
    return "Exercise Style: European (E)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
cboe_c1options_flex_pitch_v1_1_30.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.exercise_style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c1options_flex_pitch_v1_1_30.feed_symbol = {}

-- Size: Feed Symbol
cboe_c1options_flex_pitch_v1_1_30.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c1options_flex_pitch_v1_1_30.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c1options_flex_pitch_v1_1_30.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Flex Instrument Id
cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id = {}

-- Size: Flex Instrument Id
cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.size = 6

-- Display: Flex Instrument Id
cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.display = function(value)
  return "Flex Instrument Id: "..value
end

-- Dissect: Flex Instrument Id
cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.flex_instrument_id, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_c1options_flex_pitch_v1_1_30.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_c1options_flex_pitch_v1_1_30.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_c1options_flex_pitch_v1_1_30.gth_trading_status.display = function(value)
  if value == "H" then
    return "Gth Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Gth Trading Status: Quote Only (Q)"
  end
  if value == "T" then
    return "Gth Trading Status: Trading (T)"
  end

  return "Gth Trading Status: Unknown("..value..")"
end

-- Dissect: Gth Trading Status
cboe_c1options_flex_pitch_v1_1_30.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_c1options_flex_pitch_v1_1_30.leg_count = {}

-- Size: Leg Count
cboe_c1options_flex_pitch_v1_1_30.leg_count.size = 1

-- Display: Leg Count
cboe_c1options_flex_pitch_v1_1_30.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_c1options_flex_pitch_v1_1_30.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_c1options_flex_pitch_v1_1_30.leg_ratio = {}

-- Size: Leg Ratio
cboe_c1options_flex_pitch_v1_1_30.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_c1options_flex_pitch_v1_1_30.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_c1options_flex_pitch_v1_1_30.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_c1options_flex_pitch_v1_1_30.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_c1options_flex_pitch_v1_1_30.leg_security_type = {}

-- Size: Leg Security Type
cboe_c1options_flex_pitch_v1_1_30.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_c1options_flex_pitch_v1_1_30.leg_security_type.display = function(value)
  if value == "X" then
    return "Leg Security Type: Flex Option (X)"
  end
  if value == "E" then
    return "Leg Security Type: Equity (E)"
  end
  if value == "O" then
    return "Leg Security Type: Listed Option (O)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_c1options_flex_pitch_v1_1_30.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_c1options_flex_pitch_v1_1_30.leg_symbol = {}

-- Size: Leg Symbol
cboe_c1options_flex_pitch_v1_1_30.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_c1options_flex_pitch_v1_1_30.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_c1options_flex_pitch_v1_1_30.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_c1options_flex_pitch_v1_1_30.length = {}

-- Size: Length
cboe_c1options_flex_pitch_v1_1_30.length.size = 2

-- Display: Length
cboe_c1options_flex_pitch_v1_1_30.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c1options_flex_pitch_v1_1_30.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.length, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_c1options_flex_pitch_v1_1_30.message_count = {}

-- Size: Message Count
cboe_c1options_flex_pitch_v1_1_30.message_count.size = 1

-- Display: Message Count
cboe_c1options_flex_pitch_v1_1_30.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_c1options_flex_pitch_v1_1_30.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Leg Count
cboe_c1options_flex_pitch_v1_1_30.message_leg_count = {}

-- Size: Message Leg Count
cboe_c1options_flex_pitch_v1_1_30.message_leg_count.size = 1

-- Display: Message Leg Count
cboe_c1options_flex_pitch_v1_1_30.message_leg_count.display = function(value)
  return "Message Leg Count: "..value
end

-- Dissect: Message Leg Count
cboe_c1options_flex_pitch_v1_1_30.message_leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.message_leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.message_leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_leg_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c1options_flex_pitch_v1_1_30.message_length = {}

-- Size: Message Length
cboe_c1options_flex_pitch_v1_1_30.message_length.size = 1

-- Display: Message Length
cboe_c1options_flex_pitch_v1_1_30.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1options_flex_pitch_v1_1_30.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Number
cboe_c1options_flex_pitch_v1_1_30.message_number = {}

-- Size: Message Number
cboe_c1options_flex_pitch_v1_1_30.message_number.size = 1

-- Display: Message Number
cboe_c1options_flex_pitch_v1_1_30.message_number.display = function(value)
  return "Message Number: "..value
end

-- Dissect: Message Number
cboe_c1options_flex_pitch_v1_1_30.message_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.message_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.message_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_number, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_c1options_flex_pitch_v1_1_30.message_type = {}

-- Size: Message Type
cboe_c1options_flex_pitch_v1_1_30.message_type.size = 1

-- Display: Message Type
cboe_c1options_flex_pitch_v1_1_30.message_type.display = function(value)
  if value == 0xB1 then
    return "Message Type: Time Reference Message (0xB1)"
  end
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x9C then
    return "Message Type: Flex Instrument Definition Message (0x9C)"
  end
  if value == 0x9B then
    return "Message Type: Complex Flex Instrument Definition Message (0x9B)"
  end
  if value == 0xAD then
    return "Message Type: Auction Notification Message (0xAD)"
  end
  if value == 0xDD then
    return "Message Type: Dac Auction Notification Message (0xDD)"
  end
  if value == 0xAE then
    return "Message Type: Auction Cancel Message (0xAE)"
  end
  if value == 0xAF then
    return "Message Type: Auction Trade Message (0xAF)"
  end
  if value == 0x2A then
    return "Message Type: Trade Long Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Trade Short Message (0x2B)"
  end
  if value == 0x36 then
    return "Message Type: Dac Trade Message (0x36)"
  end
  if value == 0x2C then
    return "Message Type: Trade Break Message (0x2C)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_c1options_flex_pitch_v1_1_30.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_c1options_flex_pitch_v1_1_30.midnight_reference = {}

-- Size: Midnight Reference
cboe_c1options_flex_pitch_v1_1_30.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_c1options_flex_pitch_v1_1_30.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_c1options_flex_pitch_v1_1_30.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Month
cboe_c1options_flex_pitch_v1_1_30.month = {}

-- Size: Month
cboe_c1options_flex_pitch_v1_1_30.month.size = 2

-- Display: Month
cboe_c1options_flex_pitch_v1_1_30.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
cboe_c1options_flex_pitch_v1_1_30.month.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.month.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.month, range, value, display)

  return offset + length, value
end

-- Observation Day
cboe_c1options_flex_pitch_v1_1_30.observation_day = {}

-- Size: Observation Day
cboe_c1options_flex_pitch_v1_1_30.observation_day.size = 2

-- Display: Observation Day
cboe_c1options_flex_pitch_v1_1_30.observation_day.display = function(value)
  return "Observation Day: "..value
end

-- Dissect: Observation Day
cboe_c1options_flex_pitch_v1_1_30.observation_day.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.observation_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.observation_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.observation_day, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_c1options_flex_pitch_v1_1_30.order_id = {}

-- Size: Order Id
cboe_c1options_flex_pitch_v1_1_30.order_id.size = 8

-- Display: Order Id
cboe_c1options_flex_pitch_v1_1_30.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_c1options_flex_pitch_v1_1_30.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_flex_pitch_v1_1_30.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.order_id, range, value, display)

  return offset + length, value
end

-- Osi Root
cboe_c1options_flex_pitch_v1_1_30.osi_root = {}

-- Size: Osi Root
cboe_c1options_flex_pitch_v1_1_30.osi_root.size = 6

-- Display: Osi Root
cboe_c1options_flex_pitch_v1_1_30.osi_root.display = function(value)
  return "Osi Root: "..value
end

-- Dissect: Osi Root
cboe_c1options_flex_pitch_v1_1_30.osi_root.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.osi_root.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.osi_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.osi_root, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c1options_flex_pitch_v1_1_30.osi_symbol = {}

-- Size: Osi Symbol
cboe_c1options_flex_pitch_v1_1_30.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c1options_flex_pitch_v1_1_30.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c1options_flex_pitch_v1_1_30.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_c1options_flex_pitch_v1_1_30.participant_id = {}

-- Size: Participant Id
cboe_c1options_flex_pitch_v1_1_30.participant_id.size = 4

-- Display: Participant Id
cboe_c1options_flex_pitch_v1_1_30.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_c1options_flex_pitch_v1_1_30.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Percentage
cboe_c1options_flex_pitch_v1_1_30.percentage = {}

-- Size: Percentage
cboe_c1options_flex_pitch_v1_1_30.percentage.size = 4

-- Display: Percentage
cboe_c1options_flex_pitch_v1_1_30.percentage.display = function(value)
  return "Percentage: "..value
end

-- Dissect: Percentage
cboe_c1options_flex_pitch_v1_1_30.percentage.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.percentage.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.percentage, range, value, display)

  return offset + length, value
end

-- Price Binary Signed Long Price 8
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8 = {}

-- Size: Price Binary Signed Long Price 8
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.size = 8

-- Display: Price Binary Signed Long Price 8
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.display = function(value)
  return "Price Binary Signed Long Price 8: "..value
end

-- Translate: Price Binary Signed Long Price 8
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Binary Signed Long Price 8
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.translate(raw)
  local display = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.price_binary_signed_long_price_8, range, value, display)

  return offset + length, value
end

-- Price Binary Signed Short Price 2
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2 = {}

-- Size: Price Binary Signed Short Price 2
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2.size = 2

-- Display: Price Binary Signed Short Price 2
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2.display = function(value)
  return "Price Binary Signed Short Price 2: "..value
end

-- Translate: Price Binary Signed Short Price 2
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price Binary Signed Short Price 2
cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2.translate(raw)
  local display = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.price_binary_signed_short_price_2, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_c1options_flex_pitch_v1_1_30.quantity_long = {}

-- Size: Quantity Long
cboe_c1options_flex_pitch_v1_1_30.quantity_long.size = 4

-- Display: Quantity Long
cboe_c1options_flex_pitch_v1_1_30.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_c1options_flex_pitch_v1_1_30.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_c1options_flex_pitch_v1_1_30.quantity_short = {}

-- Size: Quantity Short
cboe_c1options_flex_pitch_v1_1_30.quantity_short.size = 2

-- Display: Quantity Short
cboe_c1options_flex_pitch_v1_1_30.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_c1options_flex_pitch_v1_1_30.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_c1options_flex_pitch_v1_1_30.reserved_1 = {}

-- Size: Reserved 1
cboe_c1options_flex_pitch_v1_1_30.reserved_1.size = 1

-- Display: Reserved 1
cboe_c1options_flex_pitch_v1_1_30.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_c1options_flex_pitch_v1_1_30.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_flex_pitch_v1_1_30.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_c1options_flex_pitch_v1_1_30.reserved_2 = {}

-- Size: Reserved 2
cboe_c1options_flex_pitch_v1_1_30.reserved_2.size = 2

-- Display: Reserved 2
cboe_c1options_flex_pitch_v1_1_30.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_c1options_flex_pitch_v1_1_30.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_flex_pitch_v1_1_30.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Return Cap Percentage
cboe_c1options_flex_pitch_v1_1_30.return_cap_percentage = {}

-- Size: Return Cap Percentage
cboe_c1options_flex_pitch_v1_1_30.return_cap_percentage.size = 4

-- Display: Return Cap Percentage
cboe_c1options_flex_pitch_v1_1_30.return_cap_percentage.display = function(value)
  return "Return Cap Percentage: "..value
end

-- Dissect: Return Cap Percentage
cboe_c1options_flex_pitch_v1_1_30.return_cap_percentage.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.return_cap_percentage.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.return_cap_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.return_cap_percentage, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_c1options_flex_pitch_v1_1_30.sequence = {}

-- Size: Sequence
cboe_c1options_flex_pitch_v1_1_30.sequence.size = 4

-- Display: Sequence
cboe_c1options_flex_pitch_v1_1_30.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c1options_flex_pitch_v1_1_30.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.sequence, range, value, display)

  return offset + length, value
end

-- Settlement Type
cboe_c1options_flex_pitch_v1_1_30.settlement_type = {}

-- Size: Settlement Type
cboe_c1options_flex_pitch_v1_1_30.settlement_type.size = 1

-- Display: Settlement Type
cboe_c1options_flex_pitch_v1_1_30.settlement_type.display = function(value)
  if value == "A" then
    return "Settlement Type: Am (A)"
  end
  if value == "P" then
    return "Settlement Type: Pm (P)"
  end
  if value == "S" then
    return "Settlement Type: Asian (S)"
  end
  if value == "Q" then
    return "Settlement Type: Cliquet (Q)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
cboe_c1options_flex_pitch_v1_1_30.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Side
cboe_c1options_flex_pitch_v1_1_30.side = {}

-- Size: Side
cboe_c1options_flex_pitch_v1_1_30.side.size = 1

-- Display: Side
cboe_c1options_flex_pitch_v1_1_30.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_c1options_flex_pitch_v1_1_30.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.side, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_c1options_flex_pitch_v1_1_30.side_indicator = {}

-- Size: Side Indicator
cboe_c1options_flex_pitch_v1_1_30.side_indicator.size = 1

-- Display: Side Indicator
cboe_c1options_flex_pitch_v1_1_30.side_indicator.display = function(value)
  return "Side Indicator: "..value
end

-- Dissect: Side Indicator
cboe_c1options_flex_pitch_v1_1_30.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_c1options_flex_pitch_v1_1_30.symbol = {}

-- Size: Symbol
cboe_c1options_flex_pitch_v1_1_30.symbol.size = 6

-- Display: Symbol
cboe_c1options_flex_pitch_v1_1_30.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c1options_flex_pitch_v1_1_30.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_c1options_flex_pitch_v1_1_30.symbol_condition = {}

-- Size: Symbol Condition
cboe_c1options_flex_pitch_v1_1_30.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c1options_flex_pitch_v1_1_30.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c1options_flex_pitch_v1_1_30.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_c1options_flex_pitch_v1_1_30.time = {}

-- Size: Time
cboe_c1options_flex_pitch_v1_1_30.time.size = 4

-- Store: Time
cboe_c1options_flex_pitch_v1_1_30.time.current = nil

-- Generated: Time
cboe_c1options_flex_pitch_v1_1_30.time.generated = function(value, range, packet, parent)
  local display = cboe_c1options_flex_pitch_v1_1_30.time.display(value)
  local time = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_c1options_flex_pitch_v1_1_30.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c1options_flex_pitch_v1_1_30.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_c1options_flex_pitch_v1_1_30.time_offset = {}

-- Size: Time Offset
cboe_c1options_flex_pitch_v1_1_30.time_offset.size = 4

-- Display: Time Offset
cboe_c1options_flex_pitch_v1_1_30.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c1options_flex_pitch_v1_1_30.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_c1options_flex_pitch_v1_1_30.timestamp = {}

-- Size: Timestamp
cboe_c1options_flex_pitch_v1_1_30.timestamp.size = 4

-- Display: Timestamp
cboe_c1options_flex_pitch_v1_1_30.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_c1options_flex_pitch_v1_1_30.trade_condition = {}

-- Size: Trade Condition
cboe_c1options_flex_pitch_v1_1_30.trade_condition.size = 1

-- Display: Trade Condition
cboe_c1options_flex_pitch_v1_1_30.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
cboe_c1options_flex_pitch_v1_1_30.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_c1options_flex_pitch_v1_1_30.trade_date = {}

-- Size: Trade Date
cboe_c1options_flex_pitch_v1_1_30.trade_date.size = 4

-- Display: Trade Date
cboe_c1options_flex_pitch_v1_1_30.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_c1options_flex_pitch_v1_1_30.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_c1options_flex_pitch_v1_1_30.trading_status = {}

-- Size: Trading Status
cboe_c1options_flex_pitch_v1_1_30.trading_status.size = 1

-- Display: Trading Status
cboe_c1options_flex_pitch_v1_1_30.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "L" then
    return "Trading Status: Curb Trading (L)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "T" then
    return "Trading Status: Rth Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_c1options_flex_pitch_v1_1_30.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_pitch_v1_1_30.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_c1options_flex_pitch_v1_1_30.underlying = {}

-- Size: Underlying
cboe_c1options_flex_pitch_v1_1_30.underlying.size = 8

-- Display: Underlying
cboe_c1options_flex_pitch_v1_1_30.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_c1options_flex_pitch_v1_1_30.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c1options_flex_pitch_v1_1_30.unit = {}

-- Size: Unit
cboe_c1options_flex_pitch_v1_1_30.unit.size = 1

-- Display: Unit
cboe_c1options_flex_pitch_v1_1_30.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c1options_flex_pitch_v1_1_30.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_pitch_v1_1_30.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.unit, range, value, display)

  return offset + length, value
end

-- Year
cboe_c1options_flex_pitch_v1_1_30.year = {}

-- Size: Year
cboe_c1options_flex_pitch_v1_1_30.year.size = 2

-- Display: Year
cboe_c1options_flex_pitch_v1_1_30.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
cboe_c1options_flex_pitch_v1_1_30.year.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.year.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_pitch_v1_1_30.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.year, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_c1options_flex_pitch_v1_1_30.timestamp = {}

-- Translate: Timestamp
cboe_c1options_flex_pitch_v1_1_30.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_c1options_flex_pitch_v1_1_30.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_c1options_flex_pitch_v1_1_30.time_offset_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_c1options_flex_pitch_v1_1_30.time_offset_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_c1options_flex_pitch_v1_1_30.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_c1options_flex_pitch_v1_1_30.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_c1options_flex_pitch_v1_1_30.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_c1options_flex_pitch_v1_1_30.timestamp.translate(time_offset, stored_time)
  local display = cboe_c1options_flex_pitch_v1_1_30.timestamp.display(time_offset, stored_time)
  parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.timestamp, range, value, display)

  cboe_c1options_flex_pitch_v1_1_30.time.generated(stored_time, range, packet, parent)

  display = cboe_c1options_flex_pitch_v1_1_30.time_offset.display(time_offset)
  parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_time = cboe_c1options_flex_pitch_v1_1_30.time.current

  if stored_time ~= nil then
    return cboe_c1options_flex_pitch_v1_1_30.timestamp.composite(buffer, offset, stored_time, packet, parent)
  end

  return cboe_c1options_flex_pitch_v1_1_30.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe C1Options Flex Pitch 1.1.30
-----------------------------------------------------------------------

-- End Of Session Message
cboe_c1options_flex_pitch_v1_1_30.end_of_session_message = {}

-- Size: End Of Session Message
cboe_c1options_flex_pitch_v1_1_30.end_of_session_message.size =
  cboe_c1options_flex_pitch_v1_1_30.timestamp.size

-- Display: End Of Session Message
cboe_c1options_flex_pitch_v1_1_30.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_c1options_flex_pitch_v1_1_30.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_c1options_flex_pitch_v1_1_30.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_c1options_flex_pitch_v1_1_30.trading_status_message = {}

-- Size: Trading Status Message
cboe_c1options_flex_pitch_v1_1_30.trading_status_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.symbol.size + 
  cboe_c1options_flex_pitch_v1_1_30.reserved_2.size + 
  cboe_c1options_flex_pitch_v1_1_30.trading_status.size + 
  cboe_c1options_flex_pitch_v1_1_30.reserved_1.size + 
  cboe_c1options_flex_pitch_v1_1_30.gth_trading_status.size + 
  cboe_c1options_flex_pitch_v1_1_30.reserved_1.size

-- Display: Trading Status Message
cboe_c1options_flex_pitch_v1_1_30.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_c1options_flex_pitch_v1_1_30.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c1options_flex_pitch_v1_1_30.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_c1options_flex_pitch_v1_1_30.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_c1options_flex_pitch_v1_1_30.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_flex_pitch_v1_1_30.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_c1options_flex_pitch_v1_1_30.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_flex_pitch_v1_1_30.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_c1options_flex_pitch_v1_1_30.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_c1options_flex_pitch_v1_1_30.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c1options_flex_pitch_v1_1_30.symbol_mapping_message.size =
  cboe_c1options_flex_pitch_v1_1_30.feed_symbol.size + 
  cboe_c1options_flex_pitch_v1_1_30.osi_symbol.size + 
  cboe_c1options_flex_pitch_v1_1_30.symbol_condition.size + 
  cboe_c1options_flex_pitch_v1_1_30.underlying.size

-- Display: Symbol Mapping Message
cboe_c1options_flex_pitch_v1_1_30.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c1options_flex_pitch_v1_1_30.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c1options_flex_pitch_v1_1_30.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_c1options_flex_pitch_v1_1_30.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c1options_flex_pitch_v1_1_30.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Printable ASCII
  index, underlying = cboe_c1options_flex_pitch_v1_1_30.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c1options_flex_pitch_v1_1_30.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_c1options_flex_pitch_v1_1_30.trade_break_message = {}

-- Size: Trade Break Message
cboe_c1options_flex_pitch_v1_1_30.trade_break_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.execution_id.size

-- Display: Trade Break Message
cboe_c1options_flex_pitch_v1_1_30.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_c1options_flex_pitch_v1_1_30.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_flex_pitch_v1_1_30.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_c1options_flex_pitch_v1_1_30.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Dac Trade Message
cboe_c1options_flex_pitch_v1_1_30.dac_trade_message = {}

-- Size: Dac Trade Message
cboe_c1options_flex_pitch_v1_1_30.dac_trade_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.order_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.side_indicator.size + 
  cboe_c1options_flex_pitch_v1_1_30.quantity_long.size + 
  cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.size + 
  cboe_c1options_flex_pitch_v1_1_30.execution_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.trade_condition.size + 
  cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.size + 
  cboe_c1options_flex_pitch_v1_1_30.dac_closing_price.size + 
  cboe_c1options_flex_pitch_v1_1_30.dac_delta_value.size

-- Display: Dac Trade Message
cboe_c1options_flex_pitch_v1_1_30.dac_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dac Trade Message
cboe_c1options_flex_pitch_v1_1_30.dac_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_flex_pitch_v1_1_30.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_flex_pitch_v1_1_30.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_flex_pitch_v1_1_30.quantity_long.dissect(buffer, index, packet, parent)

  -- Flex Instrument Id: Printable ASCII
  index, flex_instrument_id = cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_flex_pitch_v1_1_30.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_flex_pitch_v1_1_30.trade_condition.dissect(buffer, index, packet, parent)

  -- Dac Reference Price: Binary Signed Long Price
  index, dac_reference_price = cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.dissect(buffer, index, packet, parent)

  -- Dac Closing Price: Binary Signed Long Price
  index, dac_closing_price = cboe_c1options_flex_pitch_v1_1_30.dac_closing_price.dissect(buffer, index, packet, parent)

  -- Dac Delta Value: Signed Binary
  index, dac_delta_value = cboe_c1options_flex_pitch_v1_1_30.dac_delta_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dac Trade Message
cboe_c1options_flex_pitch_v1_1_30.dac_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_trade_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.dac_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.dac_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.dac_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_c1options_flex_pitch_v1_1_30.trade_short_message = {}

-- Size: Trade Short Message
cboe_c1options_flex_pitch_v1_1_30.trade_short_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.order_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.side_indicator.size + 
  cboe_c1options_flex_pitch_v1_1_30.quantity_short.size + 
  cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2.size + 
  cboe_c1options_flex_pitch_v1_1_30.execution_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.trade_condition.size

-- Display: Trade Short Message
cboe_c1options_flex_pitch_v1_1_30.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_c1options_flex_pitch_v1_1_30.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_flex_pitch_v1_1_30.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_flex_pitch_v1_1_30.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_c1options_flex_pitch_v1_1_30.quantity_short.dissect(buffer, index, packet, parent)

  -- Flex Instrument Id: Printable ASCII
  index, flex_instrument_id = cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Short Price 2: Binary Signed Short Price
  index, price_binary_signed_short_price_2 = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_short_price_2.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_flex_pitch_v1_1_30.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_flex_pitch_v1_1_30.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_c1options_flex_pitch_v1_1_30.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_c1options_flex_pitch_v1_1_30.trade_long_message = {}

-- Size: Trade Long Message
cboe_c1options_flex_pitch_v1_1_30.trade_long_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.order_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.side_indicator.size + 
  cboe_c1options_flex_pitch_v1_1_30.quantity_long.size + 
  cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.size + 
  cboe_c1options_flex_pitch_v1_1_30.execution_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.trade_condition.size

-- Display: Trade Long Message
cboe_c1options_flex_pitch_v1_1_30.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_c1options_flex_pitch_v1_1_30.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_flex_pitch_v1_1_30.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_flex_pitch_v1_1_30.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_flex_pitch_v1_1_30.quantity_long.dissect(buffer, index, packet, parent)

  -- Flex Instrument Id: Printable ASCII
  index, flex_instrument_id = cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_flex_pitch_v1_1_30.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_flex_pitch_v1_1_30.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_c1options_flex_pitch_v1_1_30.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_c1options_flex_pitch_v1_1_30.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_c1options_flex_pitch_v1_1_30.auction_trade_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.auction_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.execution_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.size + 
  cboe_c1options_flex_pitch_v1_1_30.quantity_long.size

-- Display: Auction Trade Message
cboe_c1options_flex_pitch_v1_1_30.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_c1options_flex_pitch_v1_1_30.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_flex_pitch_v1_1_30.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_flex_pitch_v1_1_30.execution_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_flex_pitch_v1_1_30.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_c1options_flex_pitch_v1_1_30.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_c1options_flex_pitch_v1_1_30.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_c1options_flex_pitch_v1_1_30.auction_cancel_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.auction_id.size

-- Display: Auction Cancel Message
cboe_c1options_flex_pitch_v1_1_30.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_c1options_flex_pitch_v1_1_30.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_flex_pitch_v1_1_30.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_c1options_flex_pitch_v1_1_30.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Dac Delta
cboe_c1options_flex_pitch_v1_1_30.dac_delta = {}

-- Size: Dac Delta
cboe_c1options_flex_pitch_v1_1_30.dac_delta.size =
  cboe_c1options_flex_pitch_v1_1_30.delta_value.size

-- Display: Dac Delta
cboe_c1options_flex_pitch_v1_1_30.dac_delta.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dac Delta
cboe_c1options_flex_pitch_v1_1_30.dac_delta.fields = function(buffer, offset, packet, parent, dac_delta_index)
  local index = offset

  -- Implicit Dac Delta Index
  if dac_delta_index ~= nil and show.dac_delta_index then
    local iteration = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_delta_index, dac_delta_index)
    iteration:set_generated()
  end

  -- Delta Value: Signed Binary
  index, delta_value = cboe_c1options_flex_pitch_v1_1_30.delta_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dac Delta
cboe_c1options_flex_pitch_v1_1_30.dac_delta.dissect = function(buffer, offset, packet, parent, dac_delta_index)
  if show.dac_delta then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_delta, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.dac_delta.fields(buffer, offset, packet, parent, dac_delta_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.dac_delta.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.dac_delta.fields(buffer, offset, packet, parent, dac_delta_index)
  end
end

-- Dac Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.dac_auction_notification_message = {}

-- Calculate size of: Dac Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.dac_auction_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1options_flex_pitch_v1_1_30.time_offset.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.auction_id.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.auction_type.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.side.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.quantity_long.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.customer_indicator.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.participant_id.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.auction_end_offset.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.client_id.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.dac_delta_count.size

  -- Calculate field size from count
  local dac_delta_count = buffer(offset + index - 1, 1):le_uint()
  index = index + dac_delta_count * 2

  return index
end

-- Display: Dac Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.dac_auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dac Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.dac_auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Flex Instrument Id: Printable ASCII
  index, flex_instrument_id = cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_flex_pitch_v1_1_30.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_flex_pitch_v1_1_30.auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1options_flex_pitch_v1_1_30.side.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_flex_pitch_v1_1_30.quantity_long.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_c1options_flex_pitch_v1_1_30.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_c1options_flex_pitch_v1_1_30.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_c1options_flex_pitch_v1_1_30.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_c1options_flex_pitch_v1_1_30.client_id.dissect(buffer, index, packet, parent)

  -- Dac Reference Price: Binary Signed Long Price
  index, dac_reference_price = cboe_c1options_flex_pitch_v1_1_30.dac_reference_price.dissect(buffer, index, packet, parent)

  -- Dac Delta Count: Binary
  index, dac_delta_count = cboe_c1options_flex_pitch_v1_1_30.dac_delta_count.dissect(buffer, index, packet, parent)

  -- Repeating: Dac Delta
  for dac_delta_index = 1, dac_delta_count do
    index, dac_delta = cboe_c1options_flex_pitch_v1_1_30.dac_delta.dissect(buffer, index, packet, parent, dac_delta_index)
  end

  return index
end

-- Dissect: Dac Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.dac_auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.dac_auction_notification_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.dac_auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.dac_auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.dac_auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.auction_notification_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.auction_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.auction_type.size + 
  cboe_c1options_flex_pitch_v1_1_30.side.size + 
  cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.size + 
  cboe_c1options_flex_pitch_v1_1_30.quantity_long.size + 
  cboe_c1options_flex_pitch_v1_1_30.customer_indicator.size + 
  cboe_c1options_flex_pitch_v1_1_30.participant_id.size + 
  cboe_c1options_flex_pitch_v1_1_30.auction_end_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.client_id.size

-- Display: Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Flex Instrument Id: Printable ASCII
  index, flex_instrument_id = cboe_c1options_flex_pitch_v1_1_30.flex_instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_flex_pitch_v1_1_30.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_flex_pitch_v1_1_30.auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1options_flex_pitch_v1_1_30.side.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_c1options_flex_pitch_v1_1_30.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_flex_pitch_v1_1_30.quantity_long.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_c1options_flex_pitch_v1_1_30.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_c1options_flex_pitch_v1_1_30.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_c1options_flex_pitch_v1_1_30.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_c1options_flex_pitch_v1_1_30.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_c1options_flex_pitch_v1_1_30.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Flex Leg
cboe_c1options_flex_pitch_v1_1_30.complex_flex_leg = {}

-- Size: Complex Flex Leg
cboe_c1options_flex_pitch_v1_1_30.complex_flex_leg.size =
  cboe_c1options_flex_pitch_v1_1_30.leg_symbol.size + 
  cboe_c1options_flex_pitch_v1_1_30.leg_ratio.size + 
  cboe_c1options_flex_pitch_v1_1_30.leg_security_type.size

-- Display: Complex Flex Leg
cboe_c1options_flex_pitch_v1_1_30.complex_flex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Flex Leg
cboe_c1options_flex_pitch_v1_1_30.complex_flex_leg.fields = function(buffer, offset, packet, parent, complex_flex_leg_index)
  local index = offset

  -- Implicit Complex Flex Leg Index
  if complex_flex_leg_index ~= nil and show.complex_flex_leg_index then
    local iteration = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_flex_leg_index, complex_flex_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_c1options_flex_pitch_v1_1_30.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_c1options_flex_pitch_v1_1_30.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_c1options_flex_pitch_v1_1_30.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Flex Leg
cboe_c1options_flex_pitch_v1_1_30.complex_flex_leg.dissect = function(buffer, offset, packet, parent, complex_flex_leg_index)
  if show.complex_flex_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_flex_leg, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.complex_flex_leg.fields(buffer, offset, packet, parent, complex_flex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.complex_flex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.complex_flex_leg.fields(buffer, offset, packet, parent, complex_flex_leg_index)
  end
end

-- Complex Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.complex_flex_instrument_definition_message = {}

-- Calculate size of: Complex Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.complex_flex_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1options_flex_pitch_v1_1_30.time_offset.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.complex_instrument_id.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.underlying.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.complex_instrument_type.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.leg_count.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.message_count.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.message_number.size

  index = index + cboe_c1options_flex_pitch_v1_1_30.message_leg_count.size

  -- Calculate field size from count
  local complex_flex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_flex_leg_count * 13

  return index
end

-- Display: Complex Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.complex_flex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.complex_flex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_c1options_flex_pitch_v1_1_30.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying: Printable ASCII
  index, underlying = cboe_c1options_flex_pitch_v1_1_30.underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_c1options_flex_pitch_v1_1_30.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_c1options_flex_pitch_v1_1_30.leg_count.dissect(buffer, index, packet, parent)

  -- Message Count: Binary
  index, message_count = cboe_c1options_flex_pitch_v1_1_30.message_count.dissect(buffer, index, packet, parent)

  -- Message Number: Binary
  index, message_number = cboe_c1options_flex_pitch_v1_1_30.message_number.dissect(buffer, index, packet, parent)

  -- Message Leg Count: Binary
  index, message_leg_count = cboe_c1options_flex_pitch_v1_1_30.message_leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Flex Leg
  for complex_flex_leg_index = 1, message_leg_count do
    index, complex_flex_leg = cboe_c1options_flex_pitch_v1_1_30.complex_flex_leg.dissect(buffer, index, packet, parent, complex_flex_leg_index)
  end

  return index
end

-- Dissect: Complex Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.complex_flex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.complex_flex_instrument_definition_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.complex_flex_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.complex_flex_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.complex_flex_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.flex_instrument_definition_message = {}

-- Size: Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.flex_instrument_definition_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.feed_symbol.size + 
  cboe_c1options_flex_pitch_v1_1_30.osi_root.size + 
  cboe_c1options_flex_pitch_v1_1_30.year.size + 
  cboe_c1options_flex_pitch_v1_1_30.month.size + 
  cboe_c1options_flex_pitch_v1_1_30.day.size + 
  cboe_c1options_flex_pitch_v1_1_30.call_put_indicator.size + 
  cboe_c1options_flex_pitch_v1_1_30.dollar_strike.size + 
  cboe_c1options_flex_pitch_v1_1_30.decimal_strike.size + 
  cboe_c1options_flex_pitch_v1_1_30.symbol_condition.size + 
  cboe_c1options_flex_pitch_v1_1_30.underlying.size + 
  cboe_c1options_flex_pitch_v1_1_30.exercise_style.size + 
  cboe_c1options_flex_pitch_v1_1_30.settlement_type.size + 
  cboe_c1options_flex_pitch_v1_1_30.percentage.size + 
  cboe_c1options_flex_pitch_v1_1_30.observation_day.size + 
  cboe_c1options_flex_pitch_v1_1_30.return_cap_percentage.size + 
  cboe_c1options_flex_pitch_v1_1_30.creation_day.size + 
  cboe_c1options_flex_pitch_v1_1_30.bit_fields.size

-- Display: Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.flex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.flex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c1options_flex_pitch_v1_1_30.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Root: Printable ASCII
  index, osi_root = cboe_c1options_flex_pitch_v1_1_30.osi_root.dissect(buffer, index, packet, parent)

  -- Year: Alphanumeric
  index, year = cboe_c1options_flex_pitch_v1_1_30.year.dissect(buffer, index, packet, parent)

  -- Month: Alphanumeric
  index, month = cboe_c1options_flex_pitch_v1_1_30.month.dissect(buffer, index, packet, parent)

  -- Day: Alphanumeric
  index, day = cboe_c1options_flex_pitch_v1_1_30.day.dissect(buffer, index, packet, parent)

  -- Call Put Indicator: Alphanumeric
  index, call_put_indicator = cboe_c1options_flex_pitch_v1_1_30.call_put_indicator.dissect(buffer, index, packet, parent)

  -- Dollar Strike: Alphanumeric
  index, dollar_strike = cboe_c1options_flex_pitch_v1_1_30.dollar_strike.dissect(buffer, index, packet, parent)

  -- Decimal Strike: Alphanumeric
  index, decimal_strike = cboe_c1options_flex_pitch_v1_1_30.decimal_strike.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c1options_flex_pitch_v1_1_30.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Printable ASCII
  index, underlying = cboe_c1options_flex_pitch_v1_1_30.underlying.dissect(buffer, index, packet, parent)

  -- Exercise Style: Alphanumeric
  index, exercise_style = cboe_c1options_flex_pitch_v1_1_30.exercise_style.dissect(buffer, index, packet, parent)

  -- Settlement Type: Alphanumeric
  index, settlement_type = cboe_c1options_flex_pitch_v1_1_30.settlement_type.dissect(buffer, index, packet, parent)

  -- Percentage: Binary
  index, percentage = cboe_c1options_flex_pitch_v1_1_30.percentage.dissect(buffer, index, packet, parent)

  -- Observation Day: Alphanumeric
  index, observation_day = cboe_c1options_flex_pitch_v1_1_30.observation_day.dissect(buffer, index, packet, parent)

  -- Return Cap Percentage: Binary
  index, return_cap_percentage = cboe_c1options_flex_pitch_v1_1_30.return_cap_percentage.dissect(buffer, index, packet, parent)

  -- Creation Day: Alphanumeric
  index, creation_day = cboe_c1options_flex_pitch_v1_1_30.creation_day.dissect(buffer, index, packet, parent)

  -- Bit Fields
  index, bit_fields = cboe_c1options_flex_pitch_v1_1_30.bit_fields.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Instrument Definition Message
cboe_c1options_flex_pitch_v1_1_30.flex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.flex_instrument_definition_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.flex_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.flex_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.flex_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_c1options_flex_pitch_v1_1_30.time_message = {}

-- Size: Time Message
cboe_c1options_flex_pitch_v1_1_30.time_message.size =
  cboe_c1options_flex_pitch_v1_1_30.time.size + 
  cboe_c1options_flex_pitch_v1_1_30.epoch_time.size

-- Display: Time Message
cboe_c1options_flex_pitch_v1_1_30.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c1options_flex_pitch_v1_1_30.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_c1options_flex_pitch_v1_1_30.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_c1options_flex_pitch_v1_1_30.epoch_time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_c1options_flex_pitch_v1_1_30.time.current = time

  if not packet.visited then
    cboe_c1options_flex_pitch_v1_1_30.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_c1options_flex_pitch_v1_1_30.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.time_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_c1options_flex_pitch_v1_1_30.time_reference_message = {}

-- Size: Time Reference Message
cboe_c1options_flex_pitch_v1_1_30.time_reference_message.size =
  cboe_c1options_flex_pitch_v1_1_30.midnight_reference.size + 
  cboe_c1options_flex_pitch_v1_1_30.time.size + 
  cboe_c1options_flex_pitch_v1_1_30.time_offset.size + 
  cboe_c1options_flex_pitch_v1_1_30.trade_date.size

-- Display: Time Reference Message
cboe_c1options_flex_pitch_v1_1_30.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_c1options_flex_pitch_v1_1_30.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_c1options_flex_pitch_v1_1_30.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_c1options_flex_pitch_v1_1_30.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_pitch_v1_1_30.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_c1options_flex_pitch_v1_1_30.trade_date.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_c1options_flex_pitch_v1_1_30.time.current = time

  if not packet.visited then
    cboe_c1options_flex_pitch_v1_1_30.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Reference Message
cboe_c1options_flex_pitch_v1_1_30.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c1options_flex_pitch_v1_1_30.payload = {}

-- Dissect: Payload
cboe_c1options_flex_pitch_v1_1_30.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_c1options_flex_pitch_v1_1_30.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c1options_flex_pitch_v1_1_30.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Flex Instrument Definition Message
  if message_type == 0x9C then
    return cboe_c1options_flex_pitch_v1_1_30.flex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Flex Instrument Definition Message
  if message_type == 0x9B then
    return cboe_c1options_flex_pitch_v1_1_30.complex_flex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_c1options_flex_pitch_v1_1_30.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dac Auction Notification Message
  if message_type == 0xDD then
    return cboe_c1options_flex_pitch_v1_1_30.dac_auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_c1options_flex_pitch_v1_1_30.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_c1options_flex_pitch_v1_1_30.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_c1options_flex_pitch_v1_1_30.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_c1options_flex_pitch_v1_1_30.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dac Trade Message
  if message_type == 0x36 then
    return cboe_c1options_flex_pitch_v1_1_30.dac_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_c1options_flex_pitch_v1_1_30.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c1options_flex_pitch_v1_1_30.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_c1options_flex_pitch_v1_1_30.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_c1options_flex_pitch_v1_1_30.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_c1options_flex_pitch_v1_1_30.message_header = {}

-- Size: Message Header
cboe_c1options_flex_pitch_v1_1_30.message_header.size =
  cboe_c1options_flex_pitch_v1_1_30.message_length.size + 
  cboe_c1options_flex_pitch_v1_1_30.message_type.size

-- Display: Message Header
cboe_c1options_flex_pitch_v1_1_30.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1options_flex_pitch_v1_1_30.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1options_flex_pitch_v1_1_30.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, message_type = cboe_c1options_flex_pitch_v1_1_30.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1options_flex_pitch_v1_1_30.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_header, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c1options_flex_pitch_v1_1_30.message = {}

-- Read runtime size of: Message
cboe_c1options_flex_pitch_v1_1_30.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_c1options_flex_pitch_v1_1_30.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c1options_flex_pitch_v1_1_30.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c1options_flex_pitch_v1_1_30.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 15 branches
  index = cboe_c1options_flex_pitch_v1_1_30.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c1options_flex_pitch_v1_1_30.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_c1options_flex_pitch_v1_1_30.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.message, buffer(offset, 0))
    local current = cboe_c1options_flex_pitch_v1_1_30.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c1options_flex_pitch_v1_1_30.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c1options_flex_pitch_v1_1_30.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_c1options_flex_pitch_v1_1_30.messages = {}

-- Dissect: Messages
cboe_c1options_flex_pitch_v1_1_30.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_c1options_flex_pitch_v1_1_30.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_c1options_flex_pitch_v1_1_30.packet_header = {}

-- Size: Packet Header
cboe_c1options_flex_pitch_v1_1_30.packet_header.size =
  cboe_c1options_flex_pitch_v1_1_30.length.size + 
  cboe_c1options_flex_pitch_v1_1_30.count.size + 
  cboe_c1options_flex_pitch_v1_1_30.unit.size + 
  cboe_c1options_flex_pitch_v1_1_30.sequence.size

-- Display: Packet Header
cboe_c1options_flex_pitch_v1_1_30.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c1options_flex_pitch_v1_1_30.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c1options_flex_pitch_v1_1_30.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_c1options_flex_pitch_v1_1_30.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c1options_flex_pitch_v1_1_30.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_c1options_flex_pitch_v1_1_30.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_c1options_flex_pitch_v1_1_30.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30.fields.packet_header, buffer(offset, 0))
    local index = cboe_c1options_flex_pitch_v1_1_30.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_pitch_v1_1_30.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_pitch_v1_1_30.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c1options_flex_pitch_v1_1_30.packet = {}

-- Verify required size of Udp packet
cboe_c1options_flex_pitch_v1_1_30.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_c1options_flex_pitch_v1_1_30.packet_header.size
end

-- Dissect Packet
cboe_c1options_flex_pitch_v1_1_30.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_c1options_flex_pitch_v1_1_30.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
    data.time.frames[packet.number] = data.time.last
  end
  cboe_c1options_flex_pitch_v1_1_30.time.current = data.time.frames[packet.number]
  cboe_c1options_flex_pitch_v1_1_30.time.current = data.time.frames[packet.number]
  cboe_c1options_flex_pitch_v1_1_30.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c1options_flex_pitch_v1_1_30.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_c1options_flex_pitch_v1_1_30.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c1options_flex_pitch_v1_1_30.init()
  cboe_c1options_flex_pitch_v1_1_30.time.current = nil
  cboe_c1options_flex_pitch_v1_1_30.conversation.current = nil
  cboe_c1options_flex_pitch_v1_1_30.conversation.flows = {}
end

-- Dissector for Cboe C1Options Flex Pitch 1.1.30
function omi_cboe_c1options_flex_pitch_v1_1_30.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_c1options_flex_pitch_v1_1_30.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c1options_flex_pitch_v1_1_30, buffer(), omi_cboe_c1options_flex_pitch_v1_1_30.description, "("..buffer:len().." Bytes)")
  return cboe_c1options_flex_pitch_v1_1_30.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe C1Options Flex Pitch 1.1.30 (Udp)
local function omi_cboe_c1options_flex_pitch_v1_1_30_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c1options_flex_pitch_v1_1_30.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c1options_flex_pitch_v1_1_30
  omi_cboe_c1options_flex_pitch_v1_1_30.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1Options Flex Pitch 1.1.30
omi_cboe_c1options_flex_pitch_v1_1_30:register_heuristic("udp", omi_cboe_c1options_flex_pitch_v1_1_30_udp_heuristic)

-- Register Cboe C1Options Flex Pitch 1.1.30 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_c1options_flex_pitch_v1_1_30)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.30
--   Date: Wednesday, April 1, 2026
--   Specification: US_Options_FLEX_Specification.pdf
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
