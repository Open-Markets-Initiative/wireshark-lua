-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgxOptions Complex Spin 2.1.61 Protocol
local omi_cboe_edgxoptions_complex_spin_v2_1_61 = Proto("Omi.Cboe.EdgxOptions.Complex.Spin.v2.1.61", "Cboe EdgxOptions Complex Spin 2.1.61")

-- Protocol table
local cboe_edgxoptions_complex_spin_v2_1_61 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgxOptions Complex Spin 2.1.61 Fields
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.edgxoptions.complex.spin.v2.1.61.complexinstrumentid", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.edgxoptions.complex.spin.v2.1.61.complexinstrumenttype", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.edgxoptions.complex.spin.v2.1.61.complexinstrumentunderlying", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_leg = ProtoField.new("Complex Leg", "cboe.edgxoptions.complex.spin.v2.1.61.complexleg", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_symbol_id = ProtoField.new("Complex Symbol Id", "cboe.edgxoptions.complex.spin.v2.1.61.complexsymbolid", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.count = ProtoField.new("Count", "cboe.edgxoptions.complex.spin.v2.1.61.count", ftypes.UINT8)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.edgxoptions.complex.spin.v2.1.61.feedsymbol", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.filler = ProtoField.new("Filler", "cboe.edgxoptions.complex.spin.v2.1.61.filler", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.edgxoptions.complex.spin.v2.1.61.gthtradingstatus", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.instrument_count = ProtoField.new("Instrument Count", "cboe.edgxoptions.complex.spin.v2.1.61.instrumentcount", ftypes.UINT32)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.instrument_definition_response_status = ProtoField.new("Instrument Definition Response Status", "cboe.edgxoptions.complex.spin.v2.1.61.instrumentdefinitionresponsestatus", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.leg_count = ProtoField.new("Leg Count", "cboe.edgxoptions.complex.spin.v2.1.61.legcount", ftypes.UINT8)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.edgxoptions.complex.spin.v2.1.61.legratio", ftypes.INT32)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.edgxoptions.complex.spin.v2.1.61.legsecuritytype", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.edgxoptions.complex.spin.v2.1.61.legsymbol", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.length = ProtoField.new("Length", "cboe.edgxoptions.complex.spin.v2.1.61.length", ftypes.UINT16)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.edgxoptions.complex.spin.v2.1.61.loginresponsestatus", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message = ProtoField.new("Message", "cboe.edgxoptions.complex.spin.v2.1.61.message", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message_header = ProtoField.new("Message Header", "cboe.edgxoptions.complex.spin.v2.1.61.messageheader", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message_length = ProtoField.new("Message Length", "cboe.edgxoptions.complex.spin.v2.1.61.messagelength", ftypes.UINT8)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message_type = ProtoField.new("Message Type", "cboe.edgxoptions.complex.spin.v2.1.61.messagetype", ftypes.UINT8)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.order_count = ProtoField.new("Order Count", "cboe.edgxoptions.complex.spin.v2.1.61.ordercount", ftypes.UINT32)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.order_id = ProtoField.new("Order Id", "cboe.edgxoptions.complex.spin.v2.1.61.orderid", ftypes.UINT64)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.edgxoptions.complex.spin.v2.1.61.osisymbol", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.packet = ProtoField.new("Packet", "cboe.edgxoptions.complex.spin.v2.1.61.packet", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.packet_header = ProtoField.new("Packet Header", "cboe.edgxoptions.complex.spin.v2.1.61.packetheader", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.password = ProtoField.new("Password", "cboe.edgxoptions.complex.spin.v2.1.61.password", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.price_binary_signed_long_price_8 = ProtoField.new("Price Binary Signed Long Price 8", "cboe.edgxoptions.complex.spin.v2.1.61.pricebinarysignedlongprice8", ftypes.DOUBLE)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.price_binary_signed_short_price_2 = ProtoField.new("Price Binary Signed Short Price 2", "cboe.edgxoptions.complex.spin.v2.1.61.pricebinarysignedshortprice2", ftypes.DOUBLE)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.quantity_binary_2 = ProtoField.new("Quantity Binary 2", "cboe.edgxoptions.complex.spin.v2.1.61.quantitybinary2", ftypes.UINT16)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.quantity_binary_4 = ProtoField.new("Quantity Binary 4", "cboe.edgxoptions.complex.spin.v2.1.61.quantitybinary4", ftypes.UINT32)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.edgxoptions.complex.spin.v2.1.61.reserved1", ftypes.BYTES)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.edgxoptions.complex.spin.v2.1.61.reserved2", ftypes.BYTES)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.sequence = ProtoField.new("Sequence", "cboe.edgxoptions.complex.spin.v2.1.61.sequence", ftypes.UINT32)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.edgxoptions.complex.spin.v2.1.61.sessionsubid", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.edgxoptions.complex.spin.v2.1.61.sideindicator", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.edgxoptions.complex.spin.v2.1.61.spinresponsestatus", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.edgxoptions.complex.spin.v2.1.61.symbolcondition", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.time = ProtoField.new("Time", "cboe.edgxoptions.complex.spin.v2.1.61.time", ftypes.UINT32)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.time_offset = ProtoField.new("Time Offset", "cboe.edgxoptions.complex.spin.v2.1.61.timeoffset", ftypes.UINT32)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.trading_status = ProtoField.new("Trading Status", "cboe.edgxoptions.complex.spin.v2.1.61.tradingstatus", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.underlying = ProtoField.new("Underlying", "cboe.edgxoptions.complex.spin.v2.1.61.underlying", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.unit = ProtoField.new("Unit", "cboe.edgxoptions.complex.spin.v2.1.61.unit", ftypes.UINT8)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.username = ProtoField.new("Username", "cboe.edgxoptions.complex.spin.v2.1.61.username", ftypes.STRING)

-- Cboe EdgxOptions Spin Complex 2.1.61 Application Messages
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.edgxoptions.complex.spin.v2.1.61.addorderlongmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.edgxoptions.complex.spin.v2.1.61.addordershortmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.edgxoptions.complex.spin.v2.1.61.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.instrument_definition_finished_message = ProtoField.new("Instrument Definition Finished Message", "cboe.edgxoptions.complex.spin.v2.1.61.instrumentdefinitionfinishedmessage", ftypes.BYTES)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.instrument_definition_request_message = ProtoField.new("Instrument Definition Request Message", "cboe.edgxoptions.complex.spin.v2.1.61.instrumentdefinitionrequestmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.instrument_definition_response_message = ProtoField.new("Instrument Definition Response Message", "cboe.edgxoptions.complex.spin.v2.1.61.instrumentdefinitionresponsemessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.login_message = ProtoField.new("Login Message", "cboe.edgxoptions.complex.spin.v2.1.61.loginmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.edgxoptions.complex.spin.v2.1.61.loginresponsemessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.edgxoptions.complex.spin.v2.1.61.spinfinishedmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.edgxoptions.complex.spin.v2.1.61.spinimageavailablemessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.edgxoptions.complex.spin.v2.1.61.spinrequestmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.edgxoptions.complex.spin.v2.1.61.spinresponsemessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.edgxoptions.complex.spin.v2.1.61.symbolmappingmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.time_message = ProtoField.new("Time Message", "cboe.edgxoptions.complex.spin.v2.1.61.timemessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.edgxoptions.complex.spin.v2.1.61.tradingstatusmessage", ftypes.STRING)

-- Cboe EdgxOptions Complex Spin 2.1.61 generated fields
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_leg_index = ProtoField.new("Complex Leg Index", "cboe.edgxoptions.complex.spin.v2.1.61.complexlegindex", ftypes.UINT16)
omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message_index = ProtoField.new("Message Index", "cboe.edgxoptions.complex.spin.v2.1.61.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgxOptions Complex Spin 2.1.61 Element Dissection Options
show.application_messages = true
show.complex_leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true
show.complex_leg_index = true

-- Register Cboe EdgxOptions Complex Spin 2.1.61 Show Options
omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_complex_leg = Pref.bool("Show Complex Leg", show.complex_leg, "Parse and add Complex Leg to protocol tree")
omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_complex_leg_index = Pref.bool("Show Complex Leg Index", show.complex_leg_index, "Show generated complex leg index in protocol tree")


-- Handle changed preferences
function omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_application_messages
  end
  if show.complex_leg ~= omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_complex_leg then
    show.complex_leg = omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_complex_leg
  end
  if show.message ~= omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_message then
    show.message = omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_message
  end
  if show.message_header ~= omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_message_header then
    show.message_header = omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_packet then
    show.packet = omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_packet_header then
    show.packet_header = omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_message_index then
    show.message_index = omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_message_index
  end
  if show.complex_leg_index ~= omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_complex_leg_index then
    show.complex_leg_index = omi_cboe_edgxoptions_complex_spin_v2_1_61.prefs.show_complex_leg_index
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
-- Cboe EdgxOptions Complex Spin 2.1.61 Fields
-----------------------------------------------------------------------

-- Complex Instrument Id
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Complex Symbol Id
cboe_edgxoptions_complex_spin_v2_1_61.complex_symbol_id = {}

-- Size: Complex Symbol Id
cboe_edgxoptions_complex_spin_v2_1_61.complex_symbol_id.size = 6

-- Display: Complex Symbol Id
cboe_edgxoptions_complex_spin_v2_1_61.complex_symbol_id.display = function(value)
  return "Complex Symbol Id: "..value
end

-- Dissect: Complex Symbol Id
cboe_edgxoptions_complex_spin_v2_1_61.complex_symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.complex_symbol_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.complex_symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_symbol_id, range, value, display)

  return offset + length, value
end

-- Count
cboe_edgxoptions_complex_spin_v2_1_61.count = {}

-- Size: Count
cboe_edgxoptions_complex_spin_v2_1_61.count.size = 1

-- Display: Count
cboe_edgxoptions_complex_spin_v2_1_61.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_edgxoptions_complex_spin_v2_1_61.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.count, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_edgxoptions_complex_spin_v2_1_61.feed_symbol = {}

-- Size: Feed Symbol
cboe_edgxoptions_complex_spin_v2_1_61.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_edgxoptions_complex_spin_v2_1_61.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_edgxoptions_complex_spin_v2_1_61.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Filler
cboe_edgxoptions_complex_spin_v2_1_61.filler = {}

-- Size: Filler
cboe_edgxoptions_complex_spin_v2_1_61.filler.size = 2

-- Display: Filler
cboe_edgxoptions_complex_spin_v2_1_61.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_edgxoptions_complex_spin_v2_1_61.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.filler, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_edgxoptions_complex_spin_v2_1_61.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_edgxoptions_complex_spin_v2_1_61.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_edgxoptions_complex_spin_v2_1_61.gth_trading_status.display = function(value)
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
cboe_edgxoptions_complex_spin_v2_1_61.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Count
cboe_edgxoptions_complex_spin_v2_1_61.instrument_count = {}

-- Size: Instrument Count
cboe_edgxoptions_complex_spin_v2_1_61.instrument_count.size = 4

-- Display: Instrument Count
cboe_edgxoptions_complex_spin_v2_1_61.instrument_count.display = function(value)
  return "Instrument Count: "..value
end

-- Dissect: Instrument Count
cboe_edgxoptions_complex_spin_v2_1_61.instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.instrument_count, range, value, display)

  return offset + length, value
end

-- Instrument Definition Response Status
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_status = {}

-- Size: Instrument Definition Response Status
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_status.size = 1

-- Display: Instrument Definition Response Status
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_status.display = function(value)
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
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.instrument_definition_response_status, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_edgxoptions_complex_spin_v2_1_61.leg_count = {}

-- Size: Leg Count
cboe_edgxoptions_complex_spin_v2_1_61.leg_count.size = 1

-- Display: Leg Count
cboe_edgxoptions_complex_spin_v2_1_61.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_edgxoptions_complex_spin_v2_1_61.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_edgxoptions_complex_spin_v2_1_61.leg_ratio = {}

-- Size: Leg Ratio
cboe_edgxoptions_complex_spin_v2_1_61.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_edgxoptions_complex_spin_v2_1_61.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_edgxoptions_complex_spin_v2_1_61.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_edgxoptions_complex_spin_v2_1_61.leg_security_type = {}

-- Size: Leg Security Type
cboe_edgxoptions_complex_spin_v2_1_61.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_edgxoptions_complex_spin_v2_1_61.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Leg Is An Option Instrument (O)"
  end
  if value == "E" then
    return "Leg Security Type: Leg Is An Equity Instrument (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_edgxoptions_complex_spin_v2_1_61.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_edgxoptions_complex_spin_v2_1_61.leg_symbol = {}

-- Size: Leg Symbol
cboe_edgxoptions_complex_spin_v2_1_61.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_edgxoptions_complex_spin_v2_1_61.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_edgxoptions_complex_spin_v2_1_61.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_edgxoptions_complex_spin_v2_1_61.length = {}

-- Size: Length
cboe_edgxoptions_complex_spin_v2_1_61.length.size = 2

-- Display: Length
cboe_edgxoptions_complex_spin_v2_1_61.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_edgxoptions_complex_spin_v2_1_61.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_edgxoptions_complex_spin_v2_1_61.login_response_status = {}

-- Size: Login Response Status
cboe_edgxoptions_complex_spin_v2_1_61.login_response_status.size = 1

-- Display: Login Response Status
cboe_edgxoptions_complex_spin_v2_1_61.login_response_status.display = function(value)
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
cboe_edgxoptions_complex_spin_v2_1_61.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgxoptions_complex_spin_v2_1_61.message_length = {}

-- Size: Message Length
cboe_edgxoptions_complex_spin_v2_1_61.message_length.size = 1

-- Display: Message Length
cboe_edgxoptions_complex_spin_v2_1_61.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgxoptions_complex_spin_v2_1_61.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_edgxoptions_complex_spin_v2_1_61.message_type = {}

-- Size: Message Type
cboe_edgxoptions_complex_spin_v2_1_61.message_type.size = 1

-- Display: Message Type
cboe_edgxoptions_complex_spin_v2_1_61.message_type.display = function(value)
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
  if value == 0x9A then
    return "Message Type: Complex Instrument Definition Expanded Message (0x9A)"
  end
  if value == 0x21 then
    return "Message Type: Add Order Long Message (0x21)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_edgxoptions_complex_spin_v2_1_61.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_edgxoptions_complex_spin_v2_1_61.order_count = {}

-- Size: Order Count
cboe_edgxoptions_complex_spin_v2_1_61.order_count.size = 4

-- Display: Order Count
cboe_edgxoptions_complex_spin_v2_1_61.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_edgxoptions_complex_spin_v2_1_61.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_edgxoptions_complex_spin_v2_1_61.order_id = {}

-- Size: Order Id
cboe_edgxoptions_complex_spin_v2_1_61.order_id.size = 8

-- Display: Order Id
cboe_edgxoptions_complex_spin_v2_1_61.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_edgxoptions_complex_spin_v2_1_61.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.order_id, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_edgxoptions_complex_spin_v2_1_61.osi_symbol = {}

-- Size: Osi Symbol
cboe_edgxoptions_complex_spin_v2_1_61.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_edgxoptions_complex_spin_v2_1_61.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_edgxoptions_complex_spin_v2_1_61.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Password
cboe_edgxoptions_complex_spin_v2_1_61.password = {}

-- Size: Password
cboe_edgxoptions_complex_spin_v2_1_61.password.size = 10

-- Display: Password
cboe_edgxoptions_complex_spin_v2_1_61.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_edgxoptions_complex_spin_v2_1_61.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.password, range, value, display)

  return offset + length, value
end

-- Price Binary Signed Long Price 8
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8 = {}

-- Size: Price Binary Signed Long Price 8
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8.size = 8

-- Display: Price Binary Signed Long Price 8
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8.display = function(value)
  return "Price Binary Signed Long Price 8: "..value
end

-- Translate: Price Binary Signed Long Price 8
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Binary Signed Long Price 8
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8.translate(raw)
  local display = cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.price_binary_signed_long_price_8, range, value, display)

  return offset + length, value
end

-- Price Binary Signed Short Price 2
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2 = {}

-- Size: Price Binary Signed Short Price 2
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2.size = 2

-- Display: Price Binary Signed Short Price 2
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2.display = function(value)
  return "Price Binary Signed Short Price 2: "..value
end

-- Translate: Price Binary Signed Short Price 2
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price Binary Signed Short Price 2
cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2.translate(raw)
  local display = cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.price_binary_signed_short_price_2, range, value, display)

  return offset + length, value
end

-- Quantity Binary 2
cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_2 = {}

-- Size: Quantity Binary 2
cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_2.size = 2

-- Display: Quantity Binary 2
cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_2.display = function(value)
  return "Quantity Binary 2: "..value
end

-- Dissect: Quantity Binary 2
cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Quantity Binary 4
cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_4 = {}

-- Size: Quantity Binary 4
cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_4.size = 4

-- Display: Quantity Binary 4
cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_4.display = function(value)
  return "Quantity Binary 4: "..value
end

-- Dissect: Quantity Binary 4
cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_edgxoptions_complex_spin_v2_1_61.reserved_1 = {}

-- Size: Reserved 1
cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.size = 1

-- Display: Reserved 1
cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_edgxoptions_complex_spin_v2_1_61.reserved_2 = {}

-- Size: Reserved 2
cboe_edgxoptions_complex_spin_v2_1_61.reserved_2.size = 2

-- Display: Reserved 2
cboe_edgxoptions_complex_spin_v2_1_61.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_edgxoptions_complex_spin_v2_1_61.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_complex_spin_v2_1_61.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_edgxoptions_complex_spin_v2_1_61.sequence = {}

-- Size: Sequence
cboe_edgxoptions_complex_spin_v2_1_61.sequence.size = 4

-- Display: Sequence
cboe_edgxoptions_complex_spin_v2_1_61.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_edgxoptions_complex_spin_v2_1_61.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_edgxoptions_complex_spin_v2_1_61.session_sub_id = {}

-- Size: Session Sub Id
cboe_edgxoptions_complex_spin_v2_1_61.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_edgxoptions_complex_spin_v2_1_61.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_edgxoptions_complex_spin_v2_1_61.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_edgxoptions_complex_spin_v2_1_61.side_indicator = {}

-- Size: Side Indicator
cboe_edgxoptions_complex_spin_v2_1_61.side_indicator.size = 1

-- Display: Side Indicator
cboe_edgxoptions_complex_spin_v2_1_61.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_edgxoptions_complex_spin_v2_1_61.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_edgxoptions_complex_spin_v2_1_61.spin_response_status = {}

-- Size: Spin Response Status
cboe_edgxoptions_complex_spin_v2_1_61.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_edgxoptions_complex_spin_v2_1_61.spin_response_status.display = function(value)
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
cboe_edgxoptions_complex_spin_v2_1_61.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_edgxoptions_complex_spin_v2_1_61.symbol_condition = {}

-- Size: Symbol Condition
cboe_edgxoptions_complex_spin_v2_1_61.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_edgxoptions_complex_spin_v2_1_61.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_edgxoptions_complex_spin_v2_1_61.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_edgxoptions_complex_spin_v2_1_61.time = {}

-- Size: Time
cboe_edgxoptions_complex_spin_v2_1_61.time.size = 4

-- Display: Time
cboe_edgxoptions_complex_spin_v2_1_61.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_edgxoptions_complex_spin_v2_1_61.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_edgxoptions_complex_spin_v2_1_61.time_offset = {}

-- Size: Time Offset
cboe_edgxoptions_complex_spin_v2_1_61.time_offset.size = 4

-- Display: Time Offset
cboe_edgxoptions_complex_spin_v2_1_61.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_edgxoptions_complex_spin_v2_1_61.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_edgxoptions_complex_spin_v2_1_61.trading_status = {}

-- Size: Trading Status
cboe_edgxoptions_complex_spin_v2_1_61.trading_status.size = 1

-- Display: Trading Status
cboe_edgxoptions_complex_spin_v2_1_61.trading_status.display = function(value)
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
cboe_edgxoptions_complex_spin_v2_1_61.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_edgxoptions_complex_spin_v2_1_61.underlying = {}

-- Size: Underlying
cboe_edgxoptions_complex_spin_v2_1_61.underlying.size = 8

-- Display: Underlying
cboe_edgxoptions_complex_spin_v2_1_61.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_edgxoptions_complex_spin_v2_1_61.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_edgxoptions_complex_spin_v2_1_61.unit = {}

-- Size: Unit
cboe_edgxoptions_complex_spin_v2_1_61.unit.size = 1

-- Display: Unit
cboe_edgxoptions_complex_spin_v2_1_61.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_edgxoptions_complex_spin_v2_1_61.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_spin_v2_1_61.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_edgxoptions_complex_spin_v2_1_61.username = {}

-- Size: Username
cboe_edgxoptions_complex_spin_v2_1_61.username.size = 4

-- Display: Username
cboe_edgxoptions_complex_spin_v2_1_61.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_edgxoptions_complex_spin_v2_1_61.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_spin_v2_1_61.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_spin_v2_1_61.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgxOptions Complex Spin 2.1.61
-----------------------------------------------------------------------

-- Trading Status Message
cboe_edgxoptions_complex_spin_v2_1_61.trading_status_message = {}

-- Size: Trading Status Message
cboe_edgxoptions_complex_spin_v2_1_61.trading_status_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.complex_symbol_id.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.reserved_2.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.trading_status.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.gth_trading_status.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.size

-- Display: Trading Status Message
cboe_edgxoptions_complex_spin_v2_1_61.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_edgxoptions_complex_spin_v2_1_61.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_spin_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Symbol Id: Printable ASCII
  index, complex_symbol_id = cboe_edgxoptions_complex_spin_v2_1_61.complex_symbol_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_edgxoptions_complex_spin_v2_1_61.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_edgxoptions_complex_spin_v2_1_61.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_edgxoptions_complex_spin_v2_1_61.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_edgxoptions_complex_spin_v2_1_61.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_short_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.side_indicator.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_2.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.size

-- Display: Add Order Short Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_spin_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_spin_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_complex_spin_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 2: Binary
  index, quantity_binary_2 = cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_2.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Short Price 2: Binary Signed Short Price
  index, price_binary_signed_short_price_2 = cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_short_price_2.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_long_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.side_indicator.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_4.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.size

-- Display: Add Order Long Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_spin_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_spin_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_complex_spin_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 4: Binary
  index, quantity_binary_4 = cboe_edgxoptions_complex_spin_v2_1_61.quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_edgxoptions_complex_spin_v2_1_61.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_spin_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_edgxoptions_complex_spin_v2_1_61.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Leg
cboe_edgxoptions_complex_spin_v2_1_61.complex_leg = {}

-- Size: Complex Leg
cboe_edgxoptions_complex_spin_v2_1_61.complex_leg.size =
  cboe_edgxoptions_complex_spin_v2_1_61.leg_symbol.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.leg_ratio.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.leg_security_type.size

-- Display: Complex Leg
cboe_edgxoptions_complex_spin_v2_1_61.complex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg
cboe_edgxoptions_complex_spin_v2_1_61.complex_leg.fields = function(buffer, offset, packet, parent, complex_leg_index)
  local index = offset

  -- Implicit Complex Leg Index
  if complex_leg_index ~= nil and show.complex_leg_index then
    local iteration = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_leg_index, complex_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_edgxoptions_complex_spin_v2_1_61.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_edgxoptions_complex_spin_v2_1_61.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_edgxoptions_complex_spin_v2_1_61.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
cboe_edgxoptions_complex_spin_v2_1_61.complex_leg.dissect = function(buffer, offset, packet, parent, complex_leg_index)
  if show.complex_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_leg, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.complex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
  end
end

-- Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_complex_spin_v2_1_61.time_offset.size

  index = index + cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.size

  index = index + cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_underlying.size

  index = index + cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_type.size

  index = index + cboe_edgxoptions_complex_spin_v2_1_61.leg_count.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_spin_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_edgxoptions_complex_spin_v2_1_61.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, leg_count do
    index, complex_leg = cboe_edgxoptions_complex_spin_v2_1_61.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.complex_instrument_definition_expanded_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_definition_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_edgxoptions_complex_spin_v2_1_61.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_edgxoptions_complex_spin_v2_1_61.symbol_mapping_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.feed_symbol.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.osi_symbol.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.symbol_condition.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.underlying.size

-- Display: Symbol Mapping Message
cboe_edgxoptions_complex_spin_v2_1_61.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_edgxoptions_complex_spin_v2_1_61.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_edgxoptions_complex_spin_v2_1_61.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_edgxoptions_complex_spin_v2_1_61.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_edgxoptions_complex_spin_v2_1_61.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_edgxoptions_complex_spin_v2_1_61.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_edgxoptions_complex_spin_v2_1_61.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_edgxoptions_complex_spin_v2_1_61.time_message = {}

-- Size: Time Message
cboe_edgxoptions_complex_spin_v2_1_61.time_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.time.size

-- Display: Time Message
cboe_edgxoptions_complex_spin_v2_1_61.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_edgxoptions_complex_spin_v2_1_61.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_edgxoptions_complex_spin_v2_1_61.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_edgxoptions_complex_spin_v2_1_61.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.time_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Response Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_message = {}

-- Size: Instrument Definition Response Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.sequence.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.instrument_count.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_status.size

-- Display: Instrument Definition Response Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Response Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complex_spin_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  -- Instrument Count: Binary
  index, instrument_count = cboe_edgxoptions_complex_spin_v2_1_61.instrument_count.dissect(buffer, index, packet, parent)

  -- Instrument Definition Response Status: Alphanumeric
  index, instrument_definition_response_status = cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Response Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.instrument_definition_response_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Request Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_request_message = {}

-- Size: Instrument Definition Request Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_request_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.sequence.size

-- Display: Instrument Definition Request Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Request Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complex_spin_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Request Message
cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.instrument_definition_request_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_finished_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.sequence.size

-- Display: Spin Finished Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complex_spin_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_response_message = {}

-- Size: Spin Response Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_response_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.sequence.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.order_count.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.spin_response_status.size

-- Display: Spin Response Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complex_spin_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_edgxoptions_complex_spin_v2_1_61.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_edgxoptions_complex_spin_v2_1_61.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_request_message = {}

-- Size: Spin Request Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_request_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.sequence.size

-- Display: Spin Request Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complex_spin_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_image_available_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.sequence.size

-- Display: Spin Image Available Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complex_spin_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_edgxoptions_complex_spin_v2_1_61.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_edgxoptions_complex_spin_v2_1_61.login_response_message = {}

-- Size: Login Response Message
cboe_edgxoptions_complex_spin_v2_1_61.login_response_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.login_response_status.size

-- Display: Login Response Message
cboe_edgxoptions_complex_spin_v2_1_61.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_edgxoptions_complex_spin_v2_1_61.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_edgxoptions_complex_spin_v2_1_61.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_edgxoptions_complex_spin_v2_1_61.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.login_response_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_edgxoptions_complex_spin_v2_1_61.login_message = {}

-- Size: Login Message
cboe_edgxoptions_complex_spin_v2_1_61.login_message.size =
  cboe_edgxoptions_complex_spin_v2_1_61.session_sub_id.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.username.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.filler.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.password.size

-- Display: Login Message
cboe_edgxoptions_complex_spin_v2_1_61.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_edgxoptions_complex_spin_v2_1_61.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_edgxoptions_complex_spin_v2_1_61.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_edgxoptions_complex_spin_v2_1_61.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_edgxoptions_complex_spin_v2_1_61.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_edgxoptions_complex_spin_v2_1_61.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_edgxoptions_complex_spin_v2_1_61.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.login_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_edgxoptions_complex_spin_v2_1_61.payload = {}

-- Dissect: Payload
cboe_edgxoptions_complex_spin_v2_1_61.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_edgxoptions_complex_spin_v2_1_61.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_edgxoptions_complex_spin_v2_1_61.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_edgxoptions_complex_spin_v2_1_61.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_edgxoptions_complex_spin_v2_1_61.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_edgxoptions_complex_spin_v2_1_61.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_edgxoptions_complex_spin_v2_1_61.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Request Message
  if message_type == 0x84 then
    return cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Response Message
  if message_type == 0x85 then
    return cboe_edgxoptions_complex_spin_v2_1_61.instrument_definition_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Finished Message
  if message_type == 0x86 then
    return offset
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_edgxoptions_complex_spin_v2_1_61.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_edgxoptions_complex_spin_v2_1_61.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_edgxoptions_complex_spin_v2_1_61.complex_instrument_definition_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_edgxoptions_complex_spin_v2_1_61.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_edgxoptions_complex_spin_v2_1_61.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_edgxoptions_complex_spin_v2_1_61.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_edgxoptions_complex_spin_v2_1_61.message_header = {}

-- Size: Message Header
cboe_edgxoptions_complex_spin_v2_1_61.message_header.size =
  cboe_edgxoptions_complex_spin_v2_1_61.message_length.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.message_type.size

-- Display: Message Header
cboe_edgxoptions_complex_spin_v2_1_61.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgxoptions_complex_spin_v2_1_61.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxoptions_complex_spin_v2_1_61.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, message_type = cboe_edgxoptions_complex_spin_v2_1_61.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgxoptions_complex_spin_v2_1_61.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message_header, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_edgxoptions_complex_spin_v2_1_61.message = {}

-- Read runtime size of: Message
cboe_edgxoptions_complex_spin_v2_1_61.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_edgxoptions_complex_spin_v2_1_61.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_edgxoptions_complex_spin_v2_1_61.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_edgxoptions_complex_spin_v2_1_61.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 15 branches
  index = cboe_edgxoptions_complex_spin_v2_1_61.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_edgxoptions_complex_spin_v2_1_61.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_edgxoptions_complex_spin_v2_1_61.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.message, buffer(offset, 0))
    local current = cboe_edgxoptions_complex_spin_v2_1_61.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgxoptions_complex_spin_v2_1_61.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_edgxoptions_complex_spin_v2_1_61.heartbeat = {}

-- Display: Heartbeat
cboe_edgxoptions_complex_spin_v2_1_61.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_edgxoptions_complex_spin_v2_1_61.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxoptions_complex_spin_v2_1_61.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_edgxoptions_complex_spin_v2_1_61.messages = {}

-- Dissect: Messages
cboe_edgxoptions_complex_spin_v2_1_61.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return cboe_edgxoptions_complex_spin_v2_1_61.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_edgxoptions_complex_spin_v2_1_61.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_edgxoptions_complex_spin_v2_1_61.packet_header = {}

-- Size: Packet Header
cboe_edgxoptions_complex_spin_v2_1_61.packet_header.size =
  cboe_edgxoptions_complex_spin_v2_1_61.length.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.count.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.unit.size + 
  cboe_edgxoptions_complex_spin_v2_1_61.sequence.size

-- Display: Packet Header
cboe_edgxoptions_complex_spin_v2_1_61.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_edgxoptions_complex_spin_v2_1_61.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_edgxoptions_complex_spin_v2_1_61.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_edgxoptions_complex_spin_v2_1_61.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_edgxoptions_complex_spin_v2_1_61.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complex_spin_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_edgxoptions_complex_spin_v2_1_61.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61.fields.packet_header, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_spin_v2_1_61.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_spin_v2_1_61.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_spin_v2_1_61.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_edgxoptions_complex_spin_v2_1_61.packet = {}

-- Verify required size of Tcp packet
cboe_edgxoptions_complex_spin_v2_1_61.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxoptions_complex_spin_v2_1_61.packet_header.size
end

-- Dissect Packet
cboe_edgxoptions_complex_spin_v2_1_61.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_edgxoptions_complex_spin_v2_1_61.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_edgxoptions_complex_spin_v2_1_61.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgxoptions_complex_spin_v2_1_61.init()
end

-- Dissector for Cboe EdgxOptions Complex Spin 2.1.61
function omi_cboe_edgxoptions_complex_spin_v2_1_61.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgxoptions_complex_spin_v2_1_61.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_edgxoptions_complex_spin_v2_1_61, buffer(), omi_cboe_edgxoptions_complex_spin_v2_1_61.description, "("..buffer:len().." Bytes)")
  return cboe_edgxoptions_complex_spin_v2_1_61.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe EdgxOptions Complex Spin 2.1.61 (Tcp)
local function omi_cboe_edgxoptions_complex_spin_v2_1_61_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxoptions_complex_spin_v2_1_61.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxoptions_complex_spin_v2_1_61
  omi_cboe_edgxoptions_complex_spin_v2_1_61.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe EdgxOptions Complex Spin 2.1.61
omi_cboe_edgxoptions_complex_spin_v2_1_61:register_heuristic("tcp", omi_cboe_edgxoptions_complex_spin_v2_1_61_tcp_heuristic)

-- Register Cboe EdgxOptions Complex Spin 2.1.61 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_edgxoptions_complex_spin_v2_1_61)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.1.61
--   Date: Wednesday, April 1, 2026
--   Specification: US_OPTIONS_COMPLEX_MULTICAST_PITCH_SPECIFICATION.pdf
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
