-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1Options Flex Spin 1.1.30 Protocol
local omi_cboe_c1options_flex_spin_v1_1_30 = Proto("Omi.Cboe.C1Options.Flex.Spin.v1.1.30", "Cboe C1Options Flex Spin 1.1.30")

-- Protocol table
local cboe_c1options_flex_spin_v1_1_30 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1Options Flex Spin 1.1.30 Fields
omi_cboe_c1options_flex_spin_v1_1_30.fields.call_put_indicator = ProtoField.new("Call Put Indicator", "cboe.c1options.flex.spin.v1.1.30.callputindicator", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_flex_leg = ProtoField.new("Complex Flex Leg", "cboe.c1options.flex.spin.v1.1.30.complexflexleg", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.c1options.flex.spin.v1.1.30.complexinstrumentid", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.c1options.flex.spin.v1.1.30.complexinstrumenttype", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.count = ProtoField.new("Count", "cboe.c1options.flex.spin.v1.1.30.count", ftypes.UINT8)
omi_cboe_c1options_flex_spin_v1_1_30.fields.creation_day = ProtoField.new("Creation Day", "cboe.c1options.flex.spin.v1.1.30.creationday", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.day = ProtoField.new("Day", "cboe.c1options.flex.spin.v1.1.30.day", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.decimal_strike = ProtoField.new("Decimal Strike", "cboe.c1options.flex.spin.v1.1.30.decimalstrike", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.dollar_strike = ProtoField.new("Dollar Strike", "cboe.c1options.flex.spin.v1.1.30.dollarstrike", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.c1options.flex.spin.v1.1.30.epochtime", ftypes.UINT32)
omi_cboe_c1options_flex_spin_v1_1_30.fields.exercise_style = ProtoField.new("Exercise Style", "cboe.c1options.flex.spin.v1.1.30.exercisestyle", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c1options.flex.spin.v1.1.30.feedsymbol", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.filler = ProtoField.new("Filler", "cboe.c1options.flex.spin.v1.1.30.filler", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.c1options.flex.spin.v1.1.30.gthtradingstatus", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.instrument_count = ProtoField.new("Instrument Count", "cboe.c1options.flex.spin.v1.1.30.instrumentcount", ftypes.UINT32)
omi_cboe_c1options_flex_spin_v1_1_30.fields.instrument_definition_response_status = ProtoField.new("Instrument Definition Response Status", "cboe.c1options.flex.spin.v1.1.30.instrumentdefinitionresponsestatus", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.leg_count = ProtoField.new("Leg Count", "cboe.c1options.flex.spin.v1.1.30.legcount", ftypes.UINT8)
omi_cboe_c1options_flex_spin_v1_1_30.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.c1options.flex.spin.v1.1.30.legratio", ftypes.INT32)
omi_cboe_c1options_flex_spin_v1_1_30.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.c1options.flex.spin.v1.1.30.legsecuritytype", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.c1options.flex.spin.v1.1.30.legsymbol", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.length = ProtoField.new("Length", "cboe.c1options.flex.spin.v1.1.30.length", ftypes.UINT16)
omi_cboe_c1options_flex_spin_v1_1_30.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.c1options.flex.spin.v1.1.30.loginresponsestatus", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.message = ProtoField.new("Message", "cboe.c1options.flex.spin.v1.1.30.message", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.message_count = ProtoField.new("Message Count", "cboe.c1options.flex.spin.v1.1.30.messagecount", ftypes.UINT8)
omi_cboe_c1options_flex_spin_v1_1_30.fields.message_header = ProtoField.new("Message Header", "cboe.c1options.flex.spin.v1.1.30.messageheader", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.message_leg_count = ProtoField.new("Message Leg Count", "cboe.c1options.flex.spin.v1.1.30.messagelegcount", ftypes.UINT8)
omi_cboe_c1options_flex_spin_v1_1_30.fields.message_length = ProtoField.new("Message Length", "cboe.c1options.flex.spin.v1.1.30.messagelength", ftypes.UINT8)
omi_cboe_c1options_flex_spin_v1_1_30.fields.message_number = ProtoField.new("Message Number", "cboe.c1options.flex.spin.v1.1.30.messagenumber", ftypes.UINT8)
omi_cboe_c1options_flex_spin_v1_1_30.fields.message_type = ProtoField.new("Message Type", "cboe.c1options.flex.spin.v1.1.30.messagetype", ftypes.UINT8)
omi_cboe_c1options_flex_spin_v1_1_30.fields.month = ProtoField.new("Month", "cboe.c1options.flex.spin.v1.1.30.month", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.observation_day = ProtoField.new("Observation Day", "cboe.c1options.flex.spin.v1.1.30.observationday", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.order_count = ProtoField.new("Order Count", "cboe.c1options.flex.spin.v1.1.30.ordercount", ftypes.UINT32)
omi_cboe_c1options_flex_spin_v1_1_30.fields.osi_root = ProtoField.new("Osi Root", "cboe.c1options.flex.spin.v1.1.30.osiroot", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c1options.flex.spin.v1.1.30.osisymbol", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.packet = ProtoField.new("Packet", "cboe.c1options.flex.spin.v1.1.30.packet", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.packet_header = ProtoField.new("Packet Header", "cboe.c1options.flex.spin.v1.1.30.packetheader", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.password = ProtoField.new("Password", "cboe.c1options.flex.spin.v1.1.30.password", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.percentage = ProtoField.new("Percentage", "cboe.c1options.flex.spin.v1.1.30.percentage", ftypes.UINT32)
omi_cboe_c1options_flex_spin_v1_1_30.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.c1options.flex.spin.v1.1.30.reserved1", ftypes.BYTES)
omi_cboe_c1options_flex_spin_v1_1_30.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.c1options.flex.spin.v1.1.30.reserved2", ftypes.BYTES)
omi_cboe_c1options_flex_spin_v1_1_30.fields.return_cap_percentage = ProtoField.new("Return Cap Percentage", "cboe.c1options.flex.spin.v1.1.30.returncappercentage", ftypes.UINT32)
omi_cboe_c1options_flex_spin_v1_1_30.fields.sequence = ProtoField.new("Sequence", "cboe.c1options.flex.spin.v1.1.30.sequence", ftypes.UINT32)
omi_cboe_c1options_flex_spin_v1_1_30.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.c1options.flex.spin.v1.1.30.sessionsubid", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.settlement_type = ProtoField.new("Settlement Type", "cboe.c1options.flex.spin.v1.1.30.settlementtype", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.c1options.flex.spin.v1.1.30.spinresponsestatus", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.symbol = ProtoField.new("Symbol", "cboe.c1options.flex.spin.v1.1.30.symbol", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c1options.flex.spin.v1.1.30.symbolcondition", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.time = ProtoField.new("Time", "cboe.c1options.flex.spin.v1.1.30.time", ftypes.UINT32)
omi_cboe_c1options_flex_spin_v1_1_30.fields.time_offset = ProtoField.new("Time Offset", "cboe.c1options.flex.spin.v1.1.30.timeoffset", ftypes.UINT32)
omi_cboe_c1options_flex_spin_v1_1_30.fields.trading_status = ProtoField.new("Trading Status", "cboe.c1options.flex.spin.v1.1.30.tradingstatus", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.underlying_alphanumeric_8 = ProtoField.new("Underlying Alphanumeric 8", "cboe.c1options.flex.spin.v1.1.30.underlyingalphanumeric8", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.underlying_printable_ascii_8 = ProtoField.new("Underlying Printable Ascii 8", "cboe.c1options.flex.spin.v1.1.30.underlyingprintableascii8", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.unit = ProtoField.new("Unit", "cboe.c1options.flex.spin.v1.1.30.unit", ftypes.UINT8)
omi_cboe_c1options_flex_spin_v1_1_30.fields.username = ProtoField.new("Username", "cboe.c1options.flex.spin.v1.1.30.username", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.year = ProtoField.new("Year", "cboe.c1options.flex.spin.v1.1.30.year", ftypes.STRING)

-- Cboe C1Options Spin Flex 1.1.30 Application Messages
omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_flex_instrument_definition_message = ProtoField.new("Complex Flex Instrument Definition Message", "cboe.c1options.flex.spin.v1.1.30.complexflexinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.flex_instrument_definition_message = ProtoField.new("Flex Instrument Definition Message", "cboe.c1options.flex.spin.v1.1.30.flexinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.instrument_definition_finished_message = ProtoField.new("Instrument Definition Finished Message", "cboe.c1options.flex.spin.v1.1.30.instrumentdefinitionfinishedmessage", ftypes.BYTES)
omi_cboe_c1options_flex_spin_v1_1_30.fields.instrument_definition_request_message = ProtoField.new("Instrument Definition Request Message", "cboe.c1options.flex.spin.v1.1.30.instrumentdefinitionrequestmessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.instrument_definition_response_message = ProtoField.new("Instrument Definition Response Message", "cboe.c1options.flex.spin.v1.1.30.instrumentdefinitionresponsemessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.login_message = ProtoField.new("Login Message", "cboe.c1options.flex.spin.v1.1.30.loginmessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.c1options.flex.spin.v1.1.30.loginresponsemessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.c1options.flex.spin.v1.1.30.spinfinishedmessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.c1options.flex.spin.v1.1.30.spinimageavailablemessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.c1options.flex.spin.v1.1.30.spinrequestmessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.c1options.flex.spin.v1.1.30.spinresponsemessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c1options.flex.spin.v1.1.30.symbolmappingmessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.time_message = ProtoField.new("Time Message", "cboe.c1options.flex.spin.v1.1.30.timemessage", ftypes.STRING)
omi_cboe_c1options_flex_spin_v1_1_30.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.c1options.flex.spin.v1.1.30.tradingstatusmessage", ftypes.STRING)

-- Cboe C1Options Flex Spin 1.1.30 generated fields
omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_flex_leg_index = ProtoField.new("Complex Flex Leg Index", "cboe.c1options.flex.spin.v1.1.30.complexflexlegindex", ftypes.UINT16)
omi_cboe_c1options_flex_spin_v1_1_30.fields.message_index = ProtoField.new("Message Index", "cboe.c1options.flex.spin.v1.1.30.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C1Options Flex Spin 1.1.30 Element Dissection Options
show.application_messages = true
show.complex_flex_leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true
show.complex_flex_leg_index = true

-- Register Cboe C1Options Flex Spin 1.1.30 Show Options
omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_complex_flex_leg = Pref.bool("Show Complex Flex Leg", show.complex_flex_leg, "Parse and add Complex Flex Leg to protocol tree")
omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_complex_flex_leg_index = Pref.bool("Show Complex Flex Leg Index", show.complex_flex_leg_index, "Show generated complex flex leg index in protocol tree")


-- Handle changed preferences
function omi_cboe_c1options_flex_spin_v1_1_30.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_application_messages then
    show.application_messages = omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_application_messages
  end
  if show.complex_flex_leg ~= omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_complex_flex_leg then
    show.complex_flex_leg = omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_complex_flex_leg
  end
  if show.message ~= omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_message then
    show.message = omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_message
  end
  if show.message_header ~= omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_message_header then
    show.message_header = omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_packet then
    show.packet = omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_packet_header then
    show.packet_header = omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_message_index then
    show.message_index = omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_message_index
  end
  if show.complex_flex_leg_index ~= omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_complex_flex_leg_index then
    show.complex_flex_leg_index = omi_cboe_c1options_flex_spin_v1_1_30.prefs.show_complex_flex_leg_index
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
-- Cboe C1Options Flex Spin 1.1.30 Fields
-----------------------------------------------------------------------

-- Call Put Indicator
cboe_c1options_flex_spin_v1_1_30.call_put_indicator = {}

-- Size: Call Put Indicator
cboe_c1options_flex_spin_v1_1_30.call_put_indicator.size = 1

-- Display: Call Put Indicator
cboe_c1options_flex_spin_v1_1_30.call_put_indicator.display = function(value)
  if value == "C" then
    return "Call Put Indicator: Call (C)"
  end
  if value == "P" then
    return "Call Put Indicator: Put (P)"
  end

  return "Call Put Indicator: Unknown("..value..")"
end

-- Dissect: Call Put Indicator
cboe_c1options_flex_spin_v1_1_30.call_put_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.call_put_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.call_put_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.call_put_indicator, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id
cboe_c1options_flex_spin_v1_1_30.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_c1options_flex_spin_v1_1_30.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_c1options_flex_spin_v1_1_30.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_c1options_flex_spin_v1_1_30.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_c1options_flex_spin_v1_1_30.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_c1options_flex_spin_v1_1_30.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_c1options_flex_spin_v1_1_30.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_c1options_flex_spin_v1_1_30.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Count
cboe_c1options_flex_spin_v1_1_30.count = {}

-- Size: Count
cboe_c1options_flex_spin_v1_1_30.count.size = 1

-- Display: Count
cboe_c1options_flex_spin_v1_1_30.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_c1options_flex_spin_v1_1_30.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.count, range, value, display)

  return offset + length, value
end

-- Creation Day
cboe_c1options_flex_spin_v1_1_30.creation_day = {}

-- Size: Creation Day
cboe_c1options_flex_spin_v1_1_30.creation_day.size = 2

-- Display: Creation Day
cboe_c1options_flex_spin_v1_1_30.creation_day.display = function(value)
  return "Creation Day: "..value
end

-- Dissect: Creation Day
cboe_c1options_flex_spin_v1_1_30.creation_day.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.creation_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.creation_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.creation_day, range, value, display)

  return offset + length, value
end

-- Day
cboe_c1options_flex_spin_v1_1_30.day = {}

-- Size: Day
cboe_c1options_flex_spin_v1_1_30.day.size = 2

-- Display: Day
cboe_c1options_flex_spin_v1_1_30.day.display = function(value)
  return "Day: "..value
end

-- Dissect: Day
cboe_c1options_flex_spin_v1_1_30.day.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.day, range, value, display)

  return offset + length, value
end

-- Decimal Strike
cboe_c1options_flex_spin_v1_1_30.decimal_strike = {}

-- Size: Decimal Strike
cboe_c1options_flex_spin_v1_1_30.decimal_strike.size = 3

-- Display: Decimal Strike
cboe_c1options_flex_spin_v1_1_30.decimal_strike.display = function(value)
  return "Decimal Strike: "..value
end

-- Dissect: Decimal Strike
cboe_c1options_flex_spin_v1_1_30.decimal_strike.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.decimal_strike.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.decimal_strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.decimal_strike, range, value, display)

  return offset + length, value
end

-- Dollar Strike
cboe_c1options_flex_spin_v1_1_30.dollar_strike = {}

-- Size: Dollar Strike
cboe_c1options_flex_spin_v1_1_30.dollar_strike.size = 5

-- Display: Dollar Strike
cboe_c1options_flex_spin_v1_1_30.dollar_strike.display = function(value)
  return "Dollar Strike: "..value
end

-- Dissect: Dollar Strike
cboe_c1options_flex_spin_v1_1_30.dollar_strike.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.dollar_strike.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.dollar_strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.dollar_strike, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_c1options_flex_spin_v1_1_30.epoch_time = {}

-- Size: Epoch Time
cboe_c1options_flex_spin_v1_1_30.epoch_time.size = 4

-- Display: Epoch Time
cboe_c1options_flex_spin_v1_1_30.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_c1options_flex_spin_v1_1_30.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Exercise Style
cboe_c1options_flex_spin_v1_1_30.exercise_style = {}

-- Size: Exercise Style
cboe_c1options_flex_spin_v1_1_30.exercise_style.size = 1

-- Display: Exercise Style
cboe_c1options_flex_spin_v1_1_30.exercise_style.display = function(value)
  if value == "A" then
    return "Exercise Style: American (A)"
  end
  if value == "E" then
    return "Exercise Style: European (E)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
cboe_c1options_flex_spin_v1_1_30.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.exercise_style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c1options_flex_spin_v1_1_30.feed_symbol = {}

-- Size: Feed Symbol
cboe_c1options_flex_spin_v1_1_30.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c1options_flex_spin_v1_1_30.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c1options_flex_spin_v1_1_30.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Filler
cboe_c1options_flex_spin_v1_1_30.filler = {}

-- Size: Filler
cboe_c1options_flex_spin_v1_1_30.filler.size = 2

-- Display: Filler
cboe_c1options_flex_spin_v1_1_30.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_c1options_flex_spin_v1_1_30.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.filler, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_c1options_flex_spin_v1_1_30.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_c1options_flex_spin_v1_1_30.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_c1options_flex_spin_v1_1_30.gth_trading_status.display = function(value)
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
cboe_c1options_flex_spin_v1_1_30.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Count
cboe_c1options_flex_spin_v1_1_30.instrument_count = {}

-- Size: Instrument Count
cboe_c1options_flex_spin_v1_1_30.instrument_count.size = 4

-- Display: Instrument Count
cboe_c1options_flex_spin_v1_1_30.instrument_count.display = function(value)
  return "Instrument Count: "..value
end

-- Dissect: Instrument Count
cboe_c1options_flex_spin_v1_1_30.instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.instrument_count, range, value, display)

  return offset + length, value
end

-- Instrument Definition Response Status
cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_status = {}

-- Size: Instrument Definition Response Status
cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_status.size = 1

-- Display: Instrument Definition Response Status
cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_status.display = function(value)
  if value == "A" then
    return "Instrument Definition Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Instrument Definition Response Status: Out Of Range Sequence Must Be 0 (O)"
  end
  if value == "S" then
    return "Instrument Definition Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)"
  end

  return "Instrument Definition Response Status: Unknown("..value..")"
end

-- Dissect: Instrument Definition Response Status
cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.instrument_definition_response_status, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_c1options_flex_spin_v1_1_30.leg_count = {}

-- Size: Leg Count
cboe_c1options_flex_spin_v1_1_30.leg_count.size = 1

-- Display: Leg Count
cboe_c1options_flex_spin_v1_1_30.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_c1options_flex_spin_v1_1_30.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_c1options_flex_spin_v1_1_30.leg_ratio = {}

-- Size: Leg Ratio
cboe_c1options_flex_spin_v1_1_30.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_c1options_flex_spin_v1_1_30.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_c1options_flex_spin_v1_1_30.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_c1options_flex_spin_v1_1_30.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_c1options_flex_spin_v1_1_30.leg_security_type = {}

-- Size: Leg Security Type
cboe_c1options_flex_spin_v1_1_30.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_c1options_flex_spin_v1_1_30.leg_security_type.display = function(value)
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
cboe_c1options_flex_spin_v1_1_30.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_c1options_flex_spin_v1_1_30.leg_symbol = {}

-- Size: Leg Symbol
cboe_c1options_flex_spin_v1_1_30.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_c1options_flex_spin_v1_1_30.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_c1options_flex_spin_v1_1_30.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_c1options_flex_spin_v1_1_30.length = {}

-- Size: Length
cboe_c1options_flex_spin_v1_1_30.length.size = 2

-- Display: Length
cboe_c1options_flex_spin_v1_1_30.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c1options_flex_spin_v1_1_30.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_c1options_flex_spin_v1_1_30.login_response_status = {}

-- Size: Login Response Status
cboe_c1options_flex_spin_v1_1_30.login_response_status.size = 1

-- Display: Login Response Status
cboe_c1options_flex_spin_v1_1_30.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized Invalid Username Password (N)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_c1options_flex_spin_v1_1_30.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_c1options_flex_spin_v1_1_30.message_count = {}

-- Size: Message Count
cboe_c1options_flex_spin_v1_1_30.message_count.size = 1

-- Display: Message Count
cboe_c1options_flex_spin_v1_1_30.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_c1options_flex_spin_v1_1_30.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Leg Count
cboe_c1options_flex_spin_v1_1_30.message_leg_count = {}

-- Size: Message Leg Count
cboe_c1options_flex_spin_v1_1_30.message_leg_count.size = 1

-- Display: Message Leg Count
cboe_c1options_flex_spin_v1_1_30.message_leg_count.display = function(value)
  return "Message Leg Count: "..value
end

-- Dissect: Message Leg Count
cboe_c1options_flex_spin_v1_1_30.message_leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.message_leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.message_leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.message_leg_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c1options_flex_spin_v1_1_30.message_length = {}

-- Size: Message Length
cboe_c1options_flex_spin_v1_1_30.message_length.size = 1

-- Display: Message Length
cboe_c1options_flex_spin_v1_1_30.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1options_flex_spin_v1_1_30.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Number
cboe_c1options_flex_spin_v1_1_30.message_number = {}

-- Size: Message Number
cboe_c1options_flex_spin_v1_1_30.message_number.size = 1

-- Display: Message Number
cboe_c1options_flex_spin_v1_1_30.message_number.display = function(value)
  return "Message Number: "..value
end

-- Dissect: Message Number
cboe_c1options_flex_spin_v1_1_30.message_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.message_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.message_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.message_number, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_c1options_flex_spin_v1_1_30.message_type = {}

-- Size: Message Type
cboe_c1options_flex_spin_v1_1_30.message_type.size = 1

-- Display: Message Type
cboe_c1options_flex_spin_v1_1_30.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Message (0x01)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x80 then
    return "Message Type: Spin Image Available Message (0x80)"
  end
  if value == 0x81 then
    return "Message Type: Spin Request Message (0x81)"
  end
  if value == 0x82 then
    return "Message Type: Spin Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Spin Finished Message (0x83)"
  end
  if value == 0x84 then
    return "Message Type: Instrument Definition Request Message (0x84)"
  end
  if value == 0x85 then
    return "Message Type: Instrument Definition Response Message (0x85)"
  end
  if value == 0x86 then
    return "Message Type: Instrument Definition Finished Message (0x86)"
  end
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x9C then
    return "Message Type: Flex Instrument Definition Message (0x9C)"
  end
  if value == 0x9B then
    return "Message Type: Complex Flex Instrument Definition Message (0x9B)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_c1options_flex_spin_v1_1_30.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.message_type, range, value, display)

  return offset + length, value
end

-- Month
cboe_c1options_flex_spin_v1_1_30.month = {}

-- Size: Month
cboe_c1options_flex_spin_v1_1_30.month.size = 2

-- Display: Month
cboe_c1options_flex_spin_v1_1_30.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
cboe_c1options_flex_spin_v1_1_30.month.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.month.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.month, range, value, display)

  return offset + length, value
end

-- Observation Day
cboe_c1options_flex_spin_v1_1_30.observation_day = {}

-- Size: Observation Day
cboe_c1options_flex_spin_v1_1_30.observation_day.size = 2

-- Display: Observation Day
cboe_c1options_flex_spin_v1_1_30.observation_day.display = function(value)
  return "Observation Day: "..value
end

-- Dissect: Observation Day
cboe_c1options_flex_spin_v1_1_30.observation_day.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.observation_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.observation_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.observation_day, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_c1options_flex_spin_v1_1_30.order_count = {}

-- Size: Order Count
cboe_c1options_flex_spin_v1_1_30.order_count.size = 4

-- Display: Order Count
cboe_c1options_flex_spin_v1_1_30.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_c1options_flex_spin_v1_1_30.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.order_count, range, value, display)

  return offset + length, value
end

-- Osi Root
cboe_c1options_flex_spin_v1_1_30.osi_root = {}

-- Size: Osi Root
cboe_c1options_flex_spin_v1_1_30.osi_root.size = 6

-- Display: Osi Root
cboe_c1options_flex_spin_v1_1_30.osi_root.display = function(value)
  return "Osi Root: "..value
end

-- Dissect: Osi Root
cboe_c1options_flex_spin_v1_1_30.osi_root.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.osi_root.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.osi_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.osi_root, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c1options_flex_spin_v1_1_30.osi_symbol = {}

-- Size: Osi Symbol
cboe_c1options_flex_spin_v1_1_30.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c1options_flex_spin_v1_1_30.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c1options_flex_spin_v1_1_30.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Password
cboe_c1options_flex_spin_v1_1_30.password = {}

-- Size: Password
cboe_c1options_flex_spin_v1_1_30.password.size = 10

-- Display: Password
cboe_c1options_flex_spin_v1_1_30.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_c1options_flex_spin_v1_1_30.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.password, range, value, display)

  return offset + length, value
end

-- Percentage
cboe_c1options_flex_spin_v1_1_30.percentage = {}

-- Size: Percentage
cboe_c1options_flex_spin_v1_1_30.percentage.size = 4

-- Display: Percentage
cboe_c1options_flex_spin_v1_1_30.percentage.display = function(value)
  return "Percentage: "..value
end

-- Dissect: Percentage
cboe_c1options_flex_spin_v1_1_30.percentage.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.percentage.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.percentage, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_c1options_flex_spin_v1_1_30.reserved_1 = {}

-- Size: Reserved 1
cboe_c1options_flex_spin_v1_1_30.reserved_1.size = 1

-- Display: Reserved 1
cboe_c1options_flex_spin_v1_1_30.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_c1options_flex_spin_v1_1_30.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_flex_spin_v1_1_30.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_c1options_flex_spin_v1_1_30.reserved_2 = {}

-- Size: Reserved 2
cboe_c1options_flex_spin_v1_1_30.reserved_2.size = 2

-- Display: Reserved 2
cboe_c1options_flex_spin_v1_1_30.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_c1options_flex_spin_v1_1_30.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_flex_spin_v1_1_30.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Return Cap Percentage
cboe_c1options_flex_spin_v1_1_30.return_cap_percentage = {}

-- Size: Return Cap Percentage
cboe_c1options_flex_spin_v1_1_30.return_cap_percentage.size = 4

-- Display: Return Cap Percentage
cboe_c1options_flex_spin_v1_1_30.return_cap_percentage.display = function(value)
  return "Return Cap Percentage: "..value
end

-- Dissect: Return Cap Percentage
cboe_c1options_flex_spin_v1_1_30.return_cap_percentage.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.return_cap_percentage.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.return_cap_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.return_cap_percentage, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_c1options_flex_spin_v1_1_30.sequence = {}

-- Size: Sequence
cboe_c1options_flex_spin_v1_1_30.sequence.size = 4

-- Display: Sequence
cboe_c1options_flex_spin_v1_1_30.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c1options_flex_spin_v1_1_30.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_c1options_flex_spin_v1_1_30.session_sub_id = {}

-- Size: Session Sub Id
cboe_c1options_flex_spin_v1_1_30.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_c1options_flex_spin_v1_1_30.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_c1options_flex_spin_v1_1_30.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Settlement Type
cboe_c1options_flex_spin_v1_1_30.settlement_type = {}

-- Size: Settlement Type
cboe_c1options_flex_spin_v1_1_30.settlement_type.size = 1

-- Display: Settlement Type
cboe_c1options_flex_spin_v1_1_30.settlement_type.display = function(value)
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
cboe_c1options_flex_spin_v1_1_30.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_c1options_flex_spin_v1_1_30.spin_response_status = {}

-- Size: Spin Response Status
cboe_c1options_flex_spin_v1_1_30.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_c1options_flex_spin_v1_1_30.spin_response_status.display = function(value)
  if value == "A" then
    return "Spin Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Spin Response Status: Out Of Range Sequence Requested Is Greater Than Sequence Available By The Next Spin (O)"
  end
  if value == "S" then
    return "Spin Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)"
  end

  return "Spin Response Status: Unknown("..value..")"
end

-- Dissect: Spin Response Status
cboe_c1options_flex_spin_v1_1_30.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_c1options_flex_spin_v1_1_30.symbol = {}

-- Size: Symbol
cboe_c1options_flex_spin_v1_1_30.symbol.size = 6

-- Display: Symbol
cboe_c1options_flex_spin_v1_1_30.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c1options_flex_spin_v1_1_30.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_c1options_flex_spin_v1_1_30.symbol_condition = {}

-- Size: Symbol Condition
cboe_c1options_flex_spin_v1_1_30.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c1options_flex_spin_v1_1_30.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c1options_flex_spin_v1_1_30.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_c1options_flex_spin_v1_1_30.time = {}

-- Size: Time
cboe_c1options_flex_spin_v1_1_30.time.size = 4

-- Display: Time
cboe_c1options_flex_spin_v1_1_30.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c1options_flex_spin_v1_1_30.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_c1options_flex_spin_v1_1_30.time_offset = {}

-- Size: Time Offset
cboe_c1options_flex_spin_v1_1_30.time_offset.size = 4

-- Display: Time Offset
cboe_c1options_flex_spin_v1_1_30.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c1options_flex_spin_v1_1_30.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_c1options_flex_spin_v1_1_30.trading_status = {}

-- Size: Trading Status
cboe_c1options_flex_spin_v1_1_30.trading_status.size = 1

-- Display: Trading Status
cboe_c1options_flex_spin_v1_1_30.trading_status.display = function(value)
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
cboe_c1options_flex_spin_v1_1_30.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_flex_spin_v1_1_30.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Alphanumeric 8
cboe_c1options_flex_spin_v1_1_30.underlying_alphanumeric_8 = {}

-- Size: Underlying Alphanumeric 8
cboe_c1options_flex_spin_v1_1_30.underlying_alphanumeric_8.size = 8

-- Display: Underlying Alphanumeric 8
cboe_c1options_flex_spin_v1_1_30.underlying_alphanumeric_8.display = function(value)
  return "Underlying Alphanumeric 8: "..value
end

-- Dissect: Underlying Alphanumeric 8
cboe_c1options_flex_spin_v1_1_30.underlying_alphanumeric_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.underlying_alphanumeric_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.underlying_alphanumeric_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.underlying_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Underlying Printable Ascii 8
cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8 = {}

-- Size: Underlying Printable Ascii 8
cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8.size = 8

-- Display: Underlying Printable Ascii 8
cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8.display = function(value)
  return "Underlying Printable Ascii 8: "..value
end

-- Dissect: Underlying Printable Ascii 8
cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.underlying_printable_ascii_8, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c1options_flex_spin_v1_1_30.unit = {}

-- Size: Unit
cboe_c1options_flex_spin_v1_1_30.unit.size = 1

-- Display: Unit
cboe_c1options_flex_spin_v1_1_30.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c1options_flex_spin_v1_1_30.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_flex_spin_v1_1_30.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_c1options_flex_spin_v1_1_30.username = {}

-- Size: Username
cboe_c1options_flex_spin_v1_1_30.username.size = 4

-- Display: Username
cboe_c1options_flex_spin_v1_1_30.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_c1options_flex_spin_v1_1_30.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.username, range, value, display)

  return offset + length, value
end

-- Year
cboe_c1options_flex_spin_v1_1_30.year = {}

-- Size: Year
cboe_c1options_flex_spin_v1_1_30.year.size = 2

-- Display: Year
cboe_c1options_flex_spin_v1_1_30.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
cboe_c1options_flex_spin_v1_1_30.year.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_flex_spin_v1_1_30.year.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_flex_spin_v1_1_30.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.year, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe C1Options Flex Spin 1.1.30
-----------------------------------------------------------------------

-- Trading Status Message
cboe_c1options_flex_spin_v1_1_30.trading_status_message = {}

-- Size: Trading Status Message
cboe_c1options_flex_spin_v1_1_30.trading_status_message.size =
  cboe_c1options_flex_spin_v1_1_30.time_offset.size + 
  cboe_c1options_flex_spin_v1_1_30.symbol.size + 
  cboe_c1options_flex_spin_v1_1_30.reserved_2.size + 
  cboe_c1options_flex_spin_v1_1_30.trading_status.size + 
  cboe_c1options_flex_spin_v1_1_30.reserved_1.size + 
  cboe_c1options_flex_spin_v1_1_30.gth_trading_status.size + 
  cboe_c1options_flex_spin_v1_1_30.reserved_1.size

-- Display: Trading Status Message
cboe_c1options_flex_spin_v1_1_30.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_c1options_flex_spin_v1_1_30.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_spin_v1_1_30.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c1options_flex_spin_v1_1_30.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_c1options_flex_spin_v1_1_30.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_c1options_flex_spin_v1_1_30.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_flex_spin_v1_1_30.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_c1options_flex_spin_v1_1_30.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_flex_spin_v1_1_30.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_c1options_flex_spin_v1_1_30.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Flex Leg
cboe_c1options_flex_spin_v1_1_30.complex_flex_leg = {}

-- Size: Complex Flex Leg
cboe_c1options_flex_spin_v1_1_30.complex_flex_leg.size =
  cboe_c1options_flex_spin_v1_1_30.leg_symbol.size + 
  cboe_c1options_flex_spin_v1_1_30.leg_ratio.size + 
  cboe_c1options_flex_spin_v1_1_30.leg_security_type.size

-- Display: Complex Flex Leg
cboe_c1options_flex_spin_v1_1_30.complex_flex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Flex Leg
cboe_c1options_flex_spin_v1_1_30.complex_flex_leg.fields = function(buffer, offset, packet, parent, complex_flex_leg_index)
  local index = offset

  -- Implicit Complex Flex Leg Index
  if complex_flex_leg_index ~= nil and show.complex_flex_leg_index then
    local iteration = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_flex_leg_index, complex_flex_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_c1options_flex_spin_v1_1_30.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_c1options_flex_spin_v1_1_30.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_c1options_flex_spin_v1_1_30.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Flex Leg
cboe_c1options_flex_spin_v1_1_30.complex_flex_leg.dissect = function(buffer, offset, packet, parent, complex_flex_leg_index)
  if show.complex_flex_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_flex_leg, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.complex_flex_leg.fields(buffer, offset, packet, parent, complex_flex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.complex_flex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.complex_flex_leg.fields(buffer, offset, packet, parent, complex_flex_leg_index)
  end
end

-- Complex Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.complex_flex_instrument_definition_message = {}

-- Calculate size of: Complex Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.complex_flex_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1options_flex_spin_v1_1_30.time_offset.size

  index = index + cboe_c1options_flex_spin_v1_1_30.complex_instrument_id.size

  index = index + cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8.size

  index = index + cboe_c1options_flex_spin_v1_1_30.complex_instrument_type.size

  index = index + cboe_c1options_flex_spin_v1_1_30.leg_count.size

  index = index + cboe_c1options_flex_spin_v1_1_30.message_count.size

  index = index + cboe_c1options_flex_spin_v1_1_30.message_number.size

  index = index + cboe_c1options_flex_spin_v1_1_30.message_leg_count.size

  -- Calculate field size from count
  local complex_flex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_flex_leg_count * 13

  return index
end

-- Display: Complex Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.complex_flex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.complex_flex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_spin_v1_1_30.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_c1options_flex_spin_v1_1_30.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying Printable Ascii 8: Printable ASCII
  index, underlying_printable_ascii_8 = cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_c1options_flex_spin_v1_1_30.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_c1options_flex_spin_v1_1_30.leg_count.dissect(buffer, index, packet, parent)

  -- Message Count: Binary
  index, message_count = cboe_c1options_flex_spin_v1_1_30.message_count.dissect(buffer, index, packet, parent)

  -- Message Number: Binary
  index, message_number = cboe_c1options_flex_spin_v1_1_30.message_number.dissect(buffer, index, packet, parent)

  -- Message Leg Count: Binary
  index, message_leg_count = cboe_c1options_flex_spin_v1_1_30.message_leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Flex Leg
  for complex_flex_leg_index = 1, message_leg_count do
    index, complex_flex_leg = cboe_c1options_flex_spin_v1_1_30.complex_flex_leg.dissect(buffer, index, packet, parent, complex_flex_leg_index)
  end

  return index
end

-- Dissect: Complex Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.complex_flex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.complex_flex_instrument_definition_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.complex_flex_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.complex_flex_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.complex_flex_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.flex_instrument_definition_message = {}

-- Size: Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.flex_instrument_definition_message.size =
  cboe_c1options_flex_spin_v1_1_30.time_offset.size + 
  cboe_c1options_flex_spin_v1_1_30.feed_symbol.size + 
  cboe_c1options_flex_spin_v1_1_30.osi_root.size + 
  cboe_c1options_flex_spin_v1_1_30.year.size + 
  cboe_c1options_flex_spin_v1_1_30.month.size + 
  cboe_c1options_flex_spin_v1_1_30.day.size + 
  cboe_c1options_flex_spin_v1_1_30.call_put_indicator.size + 
  cboe_c1options_flex_spin_v1_1_30.dollar_strike.size + 
  cboe_c1options_flex_spin_v1_1_30.decimal_strike.size + 
  cboe_c1options_flex_spin_v1_1_30.symbol_condition.size + 
  cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8.size + 
  cboe_c1options_flex_spin_v1_1_30.exercise_style.size + 
  cboe_c1options_flex_spin_v1_1_30.settlement_type.size + 
  cboe_c1options_flex_spin_v1_1_30.percentage.size + 
  cboe_c1options_flex_spin_v1_1_30.observation_day.size + 
  cboe_c1options_flex_spin_v1_1_30.return_cap_percentage.size + 
  cboe_c1options_flex_spin_v1_1_30.creation_day.size + 
  cboe_c1options_flex_spin_v1_1_30.bit_fields.size

-- Display: Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.flex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.flex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_flex_spin_v1_1_30.time_offset.dissect(buffer, index, packet, parent)

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c1options_flex_spin_v1_1_30.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Root: Printable ASCII
  index, osi_root = cboe_c1options_flex_spin_v1_1_30.osi_root.dissect(buffer, index, packet, parent)

  -- Year: Alphanumeric
  index, year = cboe_c1options_flex_spin_v1_1_30.year.dissect(buffer, index, packet, parent)

  -- Month: Alphanumeric
  index, month = cboe_c1options_flex_spin_v1_1_30.month.dissect(buffer, index, packet, parent)

  -- Day: Alphanumeric
  index, day = cboe_c1options_flex_spin_v1_1_30.day.dissect(buffer, index, packet, parent)

  -- Call Put Indicator: Alphanumeric
  index, call_put_indicator = cboe_c1options_flex_spin_v1_1_30.call_put_indicator.dissect(buffer, index, packet, parent)

  -- Dollar Strike: Alphanumeric
  index, dollar_strike = cboe_c1options_flex_spin_v1_1_30.dollar_strike.dissect(buffer, index, packet, parent)

  -- Decimal Strike: Alphanumeric
  index, decimal_strike = cboe_c1options_flex_spin_v1_1_30.decimal_strike.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c1options_flex_spin_v1_1_30.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying Printable Ascii 8: Printable ASCII
  index, underlying_printable_ascii_8 = cboe_c1options_flex_spin_v1_1_30.underlying_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Exercise Style: Alphanumeric
  index, exercise_style = cboe_c1options_flex_spin_v1_1_30.exercise_style.dissect(buffer, index, packet, parent)

  -- Settlement Type: Alphanumeric
  index, settlement_type = cboe_c1options_flex_spin_v1_1_30.settlement_type.dissect(buffer, index, packet, parent)

  -- Percentage: Binary
  index, percentage = cboe_c1options_flex_spin_v1_1_30.percentage.dissect(buffer, index, packet, parent)

  -- Observation Day: Alphanumeric
  index, observation_day = cboe_c1options_flex_spin_v1_1_30.observation_day.dissect(buffer, index, packet, parent)

  -- Return Cap Percentage: Binary
  index, return_cap_percentage = cboe_c1options_flex_spin_v1_1_30.return_cap_percentage.dissect(buffer, index, packet, parent)

  -- Creation Day: Alphanumeric
  index, creation_day = cboe_c1options_flex_spin_v1_1_30.creation_day.dissect(buffer, index, packet, parent)

  -- Bit Fields
  index, bit_fields = cboe_c1options_flex_spin_v1_1_30.bit_fields.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Instrument Definition Message
cboe_c1options_flex_spin_v1_1_30.flex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.flex_instrument_definition_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.flex_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.flex_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.flex_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_c1options_flex_spin_v1_1_30.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c1options_flex_spin_v1_1_30.symbol_mapping_message.size =
  cboe_c1options_flex_spin_v1_1_30.feed_symbol.size + 
  cboe_c1options_flex_spin_v1_1_30.osi_symbol.size + 
  cboe_c1options_flex_spin_v1_1_30.symbol_condition.size + 
  cboe_c1options_flex_spin_v1_1_30.underlying_alphanumeric_8.size

-- Display: Symbol Mapping Message
cboe_c1options_flex_spin_v1_1_30.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c1options_flex_spin_v1_1_30.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c1options_flex_spin_v1_1_30.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_c1options_flex_spin_v1_1_30.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c1options_flex_spin_v1_1_30.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying Alphanumeric 8: Alphanumeric
  index, underlying_alphanumeric_8 = cboe_c1options_flex_spin_v1_1_30.underlying_alphanumeric_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c1options_flex_spin_v1_1_30.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_c1options_flex_spin_v1_1_30.time_message = {}

-- Size: Time Message
cboe_c1options_flex_spin_v1_1_30.time_message.size =
  cboe_c1options_flex_spin_v1_1_30.time.size + 
  cboe_c1options_flex_spin_v1_1_30.epoch_time.size

-- Display: Time Message
cboe_c1options_flex_spin_v1_1_30.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c1options_flex_spin_v1_1_30.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_c1options_flex_spin_v1_1_30.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_c1options_flex_spin_v1_1_30.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_c1options_flex_spin_v1_1_30.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.time_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Response Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_message = {}

-- Size: Instrument Definition Response Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_message.size =
  cboe_c1options_flex_spin_v1_1_30.sequence.size + 
  cboe_c1options_flex_spin_v1_1_30.instrument_count.size + 
  cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_status.size

-- Display: Instrument Definition Response Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Response Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c1options_flex_spin_v1_1_30.sequence.dissect(buffer, index, packet, parent)

  -- Instrument Count: Binary
  index, instrument_count = cboe_c1options_flex_spin_v1_1_30.instrument_count.dissect(buffer, index, packet, parent)

  -- Instrument Definition Response Status: Alphanumeric
  index, instrument_definition_response_status = cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Response Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.instrument_definition_response_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Request Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_request_message = {}

-- Size: Instrument Definition Request Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_request_message.size =
  cboe_c1options_flex_spin_v1_1_30.sequence.size

-- Display: Instrument Definition Request Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Request Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c1options_flex_spin_v1_1_30.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Request Message
cboe_c1options_flex_spin_v1_1_30.instrument_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.instrument_definition_request_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.instrument_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.instrument_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.instrument_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_c1options_flex_spin_v1_1_30.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_c1options_flex_spin_v1_1_30.spin_finished_message.size =
  cboe_c1options_flex_spin_v1_1_30.sequence.size

-- Display: Spin Finished Message
cboe_c1options_flex_spin_v1_1_30.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_c1options_flex_spin_v1_1_30.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c1options_flex_spin_v1_1_30.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_c1options_flex_spin_v1_1_30.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_c1options_flex_spin_v1_1_30.spin_response_message = {}

-- Size: Spin Response Message
cboe_c1options_flex_spin_v1_1_30.spin_response_message.size =
  cboe_c1options_flex_spin_v1_1_30.sequence.size + 
  cboe_c1options_flex_spin_v1_1_30.order_count.size + 
  cboe_c1options_flex_spin_v1_1_30.spin_response_status.size

-- Display: Spin Response Message
cboe_c1options_flex_spin_v1_1_30.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_c1options_flex_spin_v1_1_30.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c1options_flex_spin_v1_1_30.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_c1options_flex_spin_v1_1_30.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_c1options_flex_spin_v1_1_30.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_c1options_flex_spin_v1_1_30.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_c1options_flex_spin_v1_1_30.spin_request_message = {}

-- Size: Spin Request Message
cboe_c1options_flex_spin_v1_1_30.spin_request_message.size =
  cboe_c1options_flex_spin_v1_1_30.sequence.size

-- Display: Spin Request Message
cboe_c1options_flex_spin_v1_1_30.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_c1options_flex_spin_v1_1_30.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c1options_flex_spin_v1_1_30.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_c1options_flex_spin_v1_1_30.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_c1options_flex_spin_v1_1_30.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_c1options_flex_spin_v1_1_30.spin_image_available_message.size =
  cboe_c1options_flex_spin_v1_1_30.sequence.size

-- Display: Spin Image Available Message
cboe_c1options_flex_spin_v1_1_30.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_c1options_flex_spin_v1_1_30.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c1options_flex_spin_v1_1_30.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_c1options_flex_spin_v1_1_30.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_c1options_flex_spin_v1_1_30.login_response_message = {}

-- Size: Login Response Message
cboe_c1options_flex_spin_v1_1_30.login_response_message.size =
  cboe_c1options_flex_spin_v1_1_30.login_response_status.size

-- Display: Login Response Message
cboe_c1options_flex_spin_v1_1_30.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_c1options_flex_spin_v1_1_30.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_c1options_flex_spin_v1_1_30.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_c1options_flex_spin_v1_1_30.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.login_response_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_c1options_flex_spin_v1_1_30.login_message = {}

-- Size: Login Message
cboe_c1options_flex_spin_v1_1_30.login_message.size =
  cboe_c1options_flex_spin_v1_1_30.session_sub_id.size + 
  cboe_c1options_flex_spin_v1_1_30.username.size + 
  cboe_c1options_flex_spin_v1_1_30.filler.size + 
  cboe_c1options_flex_spin_v1_1_30.password.size

-- Display: Login Message
cboe_c1options_flex_spin_v1_1_30.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_c1options_flex_spin_v1_1_30.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_c1options_flex_spin_v1_1_30.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_c1options_flex_spin_v1_1_30.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_c1options_flex_spin_v1_1_30.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_c1options_flex_spin_v1_1_30.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_c1options_flex_spin_v1_1_30.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.login_message, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c1options_flex_spin_v1_1_30.payload = {}

-- Dissect: Payload
cboe_c1options_flex_spin_v1_1_30.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_c1options_flex_spin_v1_1_30.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_c1options_flex_spin_v1_1_30.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_c1options_flex_spin_v1_1_30.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_c1options_flex_spin_v1_1_30.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_c1options_flex_spin_v1_1_30.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_c1options_flex_spin_v1_1_30.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Request Message
  if message_type == 0x84 then
    return cboe_c1options_flex_spin_v1_1_30.instrument_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Response Message
  if message_type == 0x85 then
    return cboe_c1options_flex_spin_v1_1_30.instrument_definition_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Finished Message
  if message_type == 0x86 then
    return offset
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c1options_flex_spin_v1_1_30.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c1options_flex_spin_v1_1_30.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Flex Instrument Definition Message
  if message_type == 0x9C then
    return cboe_c1options_flex_spin_v1_1_30.flex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Flex Instrument Definition Message
  if message_type == 0x9B then
    return cboe_c1options_flex_spin_v1_1_30.complex_flex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_c1options_flex_spin_v1_1_30.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_c1options_flex_spin_v1_1_30.message_header = {}

-- Size: Message Header
cboe_c1options_flex_spin_v1_1_30.message_header.size =
  cboe_c1options_flex_spin_v1_1_30.message_length.size + 
  cboe_c1options_flex_spin_v1_1_30.message_type.size

-- Display: Message Header
cboe_c1options_flex_spin_v1_1_30.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1options_flex_spin_v1_1_30.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1options_flex_spin_v1_1_30.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, message_type = cboe_c1options_flex_spin_v1_1_30.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1options_flex_spin_v1_1_30.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.message_header, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c1options_flex_spin_v1_1_30.message = {}

-- Read runtime size of: Message
cboe_c1options_flex_spin_v1_1_30.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_c1options_flex_spin_v1_1_30.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c1options_flex_spin_v1_1_30.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c1options_flex_spin_v1_1_30.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 14 branches
  index = cboe_c1options_flex_spin_v1_1_30.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c1options_flex_spin_v1_1_30.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_c1options_flex_spin_v1_1_30.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.message, buffer(offset, 0))
    local current = cboe_c1options_flex_spin_v1_1_30.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c1options_flex_spin_v1_1_30.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c1options_flex_spin_v1_1_30.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_c1options_flex_spin_v1_1_30.heartbeat = {}

-- Display: Heartbeat
cboe_c1options_flex_spin_v1_1_30.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_c1options_flex_spin_v1_1_30.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_c1options_flex_spin_v1_1_30.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_c1options_flex_spin_v1_1_30.messages = {}

-- Dissect: Messages
cboe_c1options_flex_spin_v1_1_30.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return cboe_c1options_flex_spin_v1_1_30.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_c1options_flex_spin_v1_1_30.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_c1options_flex_spin_v1_1_30.packet_header = {}

-- Size: Packet Header
cboe_c1options_flex_spin_v1_1_30.packet_header.size =
  cboe_c1options_flex_spin_v1_1_30.length.size + 
  cboe_c1options_flex_spin_v1_1_30.count.size + 
  cboe_c1options_flex_spin_v1_1_30.unit.size + 
  cboe_c1options_flex_spin_v1_1_30.sequence.size

-- Display: Packet Header
cboe_c1options_flex_spin_v1_1_30.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c1options_flex_spin_v1_1_30.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c1options_flex_spin_v1_1_30.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_c1options_flex_spin_v1_1_30.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c1options_flex_spin_v1_1_30.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_c1options_flex_spin_v1_1_30.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_c1options_flex_spin_v1_1_30.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_flex_spin_v1_1_30.fields.packet_header, buffer(offset, 0))
    local index = cboe_c1options_flex_spin_v1_1_30.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_flex_spin_v1_1_30.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_flex_spin_v1_1_30.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c1options_flex_spin_v1_1_30.packet = {}

-- Verify required size of Tcp packet
cboe_c1options_flex_spin_v1_1_30.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_c1options_flex_spin_v1_1_30.packet_header.size
end

-- Dissect Packet
cboe_c1options_flex_spin_v1_1_30.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c1options_flex_spin_v1_1_30.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_c1options_flex_spin_v1_1_30.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c1options_flex_spin_v1_1_30.init()
end

-- Dissector for Cboe C1Options Flex Spin 1.1.30
function omi_cboe_c1options_flex_spin_v1_1_30.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_c1options_flex_spin_v1_1_30.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c1options_flex_spin_v1_1_30, buffer(), omi_cboe_c1options_flex_spin_v1_1_30.description, "("..buffer:len().." Bytes)")
  return cboe_c1options_flex_spin_v1_1_30.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe C1Options Flex Spin 1.1.30 (Tcp)
local function omi_cboe_c1options_flex_spin_v1_1_30_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c1options_flex_spin_v1_1_30.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c1options_flex_spin_v1_1_30
  omi_cboe_c1options_flex_spin_v1_1_30.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1Options Flex Spin 1.1.30
omi_cboe_c1options_flex_spin_v1_1_30:register_heuristic("tcp", omi_cboe_c1options_flex_spin_v1_1_30_tcp_heuristic)

-- Register Cboe C1Options Flex Spin 1.1.30 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_c1options_flex_spin_v1_1_30)

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
