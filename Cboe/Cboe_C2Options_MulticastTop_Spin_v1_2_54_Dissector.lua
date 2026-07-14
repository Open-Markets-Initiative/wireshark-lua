-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C2Options MulticastTop Spin 1.2.54 Protocol
local omi_cboe_c2options_multicasttop_spin_v1_2_54 = Proto("Omi.Cboe.C2Options.MulticastTop.Spin.v1.2.54", "Cboe C2Options MulticastTop Spin 1.2.54")

-- Protocol table
local cboe_c2options_multicasttop_spin_v1_2_54 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C2Options MulticastTop Spin 1.2.54 Fields
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.aon = ProtoField.new("Aon", "cboe.c2options.multicasttop.spin.v1.2.54.aon", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_customer_quantity_binary_2 = ProtoField.new("Ask Customer Quantity Binary 2", "cboe.c2options.multicasttop.spin.v1.2.54.askcustomerquantitybinary2", ftypes.UINT16)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_customer_quantity_binary_4 = ProtoField.new("Ask Customer Quantity Binary 4", "cboe.c2options.multicasttop.spin.v1.2.54.askcustomerquantitybinary4", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_price_binary_long_price_8 = ProtoField.new("Ask Price Binary Long Price 8", "cboe.c2options.multicasttop.spin.v1.2.54.askpricebinarylongprice8", ftypes.DOUBLE)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_price_binary_short_price_2 = ProtoField.new("Ask Price Binary Short Price 2", "cboe.c2options.multicasttop.spin.v1.2.54.askpricebinaryshortprice2", ftypes.DOUBLE)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_quantity_binary_2 = ProtoField.new("Ask Quantity Binary 2", "cboe.c2options.multicasttop.spin.v1.2.54.askquantitybinary2", ftypes.UINT16)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_quantity_binary_4 = ProtoField.new("Ask Quantity Binary 4", "cboe.c2options.multicasttop.spin.v1.2.54.askquantitybinary4", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_customer_quantity_binary_2 = ProtoField.new("Bid Customer Quantity Binary 2", "cboe.c2options.multicasttop.spin.v1.2.54.bidcustomerquantitybinary2", ftypes.UINT16)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_customer_quantity_binary_4 = ProtoField.new("Bid Customer Quantity Binary 4", "cboe.c2options.multicasttop.spin.v1.2.54.bidcustomerquantitybinary4", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_price_binary_long_price_8 = ProtoField.new("Bid Price Binary Long Price 8", "cboe.c2options.multicasttop.spin.v1.2.54.bidpricebinarylongprice8", ftypes.DOUBLE)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_price_binary_short_price_2 = ProtoField.new("Bid Price Binary Short Price 2", "cboe.c2options.multicasttop.spin.v1.2.54.bidpricebinaryshortprice2", ftypes.DOUBLE)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_quantity_binary_2 = ProtoField.new("Bid Quantity Binary 2", "cboe.c2options.multicasttop.spin.v1.2.54.bidquantitybinary2", ftypes.UINT16)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_quantity_binary_4 = ProtoField.new("Bid Quantity Binary 4", "cboe.c2options.multicasttop.spin.v1.2.54.bidquantitybinary4", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bit_fields = ProtoField.new("Bit Fields", "cboe.c2options.multicasttop.spin.v1.2.54.bitfields", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.count = ProtoField.new("Count", "cboe.c2options.multicasttop.spin.v1.2.54.count", ftypes.UINT8)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.customer = ProtoField.new("Customer", "cboe.c2options.multicasttop.spin.v1.2.54.customer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.customer_quantity_binary_2 = ProtoField.new("Customer Quantity Binary 2", "cboe.c2options.multicasttop.spin.v1.2.54.customerquantitybinary2", ftypes.UINT16)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.customer_quantity_binary_4 = ProtoField.new("Customer Quantity Binary 4", "cboe.c2options.multicasttop.spin.v1.2.54.customerquantitybinary4", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.execution_id = ProtoField.new("Execution Id", "cboe.c2options.multicasttop.spin.v1.2.54.executionid", ftypes.UINT64)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c2options.multicasttop.spin.v1.2.54.feedsymbol", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.filler = ProtoField.new("Filler", "cboe.c2options.multicasttop.spin.v1.2.54.filler", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.c2options.multicasttop.spin.v1.2.54.gthtradingstatus", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.instrument_count = ProtoField.new("Instrument Count", "cboe.c2options.multicasttop.spin.v1.2.54.instrumentcount", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.instrument_definition_response_status = ProtoField.new("Instrument Definition Response Status", "cboe.c2options.multicasttop.spin.v1.2.54.instrumentdefinitionresponsestatus", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.length = ProtoField.new("Length", "cboe.c2options.multicasttop.spin.v1.2.54.length", ftypes.UINT16)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.c2options.multicasttop.spin.v1.2.54.loginresponsestatus", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message = ProtoField.new("Message", "cboe.c2options.multicasttop.spin.v1.2.54.message", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message_header = ProtoField.new("Message Header", "cboe.c2options.multicasttop.spin.v1.2.54.messageheader", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message_length = ProtoField.new("Message Length", "cboe.c2options.multicasttop.spin.v1.2.54.messagelength", ftypes.UINT8)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message_type = ProtoField.new("Message Type", "cboe.c2options.multicasttop.spin.v1.2.54.messagetype", ftypes.UINT8)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.order_count = ProtoField.new("Order Count", "cboe.c2options.multicasttop.spin.v1.2.54.ordercount", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c2options.multicasttop.spin.v1.2.54.osisymbol", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.packet = ProtoField.new("Packet", "cboe.c2options.multicasttop.spin.v1.2.54.packet", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.packet_header = ProtoField.new("Packet Header", "cboe.c2options.multicasttop.spin.v1.2.54.packetheader", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.password = ProtoField.new("Password", "cboe.c2options.multicasttop.spin.v1.2.54.password", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.price_binary_long_price_8 = ProtoField.new("Price Binary Long Price 8", "cboe.c2options.multicasttop.spin.v1.2.54.pricebinarylongprice8", ftypes.DOUBLE)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.price_binary_short_price_2 = ProtoField.new("Price Binary Short Price 2", "cboe.c2options.multicasttop.spin.v1.2.54.pricebinaryshortprice2", ftypes.DOUBLE)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.quantity_binary_2 = ProtoField.new("Quantity Binary 2", "cboe.c2options.multicasttop.spin.v1.2.54.quantitybinary2", ftypes.UINT16)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.quantity_binary_4 = ProtoField.new("Quantity Binary 4", "cboe.c2options.multicasttop.spin.v1.2.54.quantitybinary4", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.c2options.multicasttop.spin.v1.2.54.reserved1", ftypes.BYTES)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.c2options.multicasttop.spin.v1.2.54.reserved2", ftypes.BYTES)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.reserved_high = ProtoField.new("Reserved High", "cboe.c2options.multicasttop.spin.v1.2.54.reservedhigh", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.reserved_low = ProtoField.new("Reserved Low", "cboe.c2options.multicasttop.spin.v1.2.54.reservedlow", ftypes.UINT8, nil, base.DEC, 0x07)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.sequence = ProtoField.new("Sequence", "cboe.c2options.multicasttop.spin.v1.2.54.sequence", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.c2options.multicasttop.spin.v1.2.54.sessionsubid", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.side = ProtoField.new("Side", "cboe.c2options.multicasttop.spin.v1.2.54.side", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.c2options.multicasttop.spin.v1.2.54.spinresponsestatus", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.symbol = ProtoField.new("Symbol", "cboe.c2options.multicasttop.spin.v1.2.54.symbol", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c2options.multicasttop.spin.v1.2.54.symbolcondition", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.time = ProtoField.new("Time", "cboe.c2options.multicasttop.spin.v1.2.54.time", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.time_offset = ProtoField.new("Time Offset", "cboe.c2options.multicasttop.spin.v1.2.54.timeoffset", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.total_volume = ProtoField.new("Total Volume", "cboe.c2options.multicasttop.spin.v1.2.54.totalvolume", ftypes.UINT32)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.c2options.multicasttop.spin.v1.2.54.tradecondition", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.trading_status = ProtoField.new("Trading Status", "cboe.c2options.multicasttop.spin.v1.2.54.tradingstatus", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.underlying = ProtoField.new("Underlying", "cboe.c2options.multicasttop.spin.v1.2.54.underlying", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.unit = ProtoField.new("Unit", "cboe.c2options.multicasttop.spin.v1.2.54.unit", ftypes.UINT8)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.username = ProtoField.new("Username", "cboe.c2options.multicasttop.spin.v1.2.54.username", ftypes.STRING)

-- Cboe C2Options Spin MulticastTop 1.2.54 Application Messages
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.instrument_definition_finished_message = ProtoField.new("Instrument Definition Finished Message", "cboe.c2options.multicasttop.spin.v1.2.54.instrumentdefinitionfinishedmessage", ftypes.BYTES)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.instrument_definition_request_message = ProtoField.new("Instrument Definition Request Message", "cboe.c2options.multicasttop.spin.v1.2.54.instrumentdefinitionrequestmessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.instrument_definition_response_message = ProtoField.new("Instrument Definition Response Message", "cboe.c2options.multicasttop.spin.v1.2.54.instrumentdefinitionresponsemessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.login_message = ProtoField.new("Login Message", "cboe.c2options.multicasttop.spin.v1.2.54.loginmessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.c2options.multicasttop.spin.v1.2.54.loginresponsemessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.single_side_update_expanded_long_message = ProtoField.new("Single Side Update Expanded Long Message", "cboe.c2options.multicasttop.spin.v1.2.54.singlesideupdateexpandedlongmessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.single_side_update_expanded_short_message = ProtoField.new("Single Side Update Expanded Short Message", "cboe.c2options.multicasttop.spin.v1.2.54.singlesideupdateexpandedshortmessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.c2options.multicasttop.spin.v1.2.54.spinfinishedmessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.c2options.multicasttop.spin.v1.2.54.spinimageavailablemessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.c2options.multicasttop.spin.v1.2.54.spinrequestmessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.c2options.multicasttop.spin.v1.2.54.spinresponsemessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c2options.multicasttop.spin.v1.2.54.symbolmappingmessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.time_message = ProtoField.new("Time Message", "cboe.c2options.multicasttop.spin.v1.2.54.timemessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.top_trade_message = ProtoField.new("Top Trade Message", "cboe.c2options.multicasttop.spin.v1.2.54.toptrademessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.c2options.multicasttop.spin.v1.2.54.tradingstatusmessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.two_side_update_expanded_long_message = ProtoField.new("Two Side Update Expanded Long Message", "cboe.c2options.multicasttop.spin.v1.2.54.twosideupdateexpandedlongmessage", ftypes.STRING)
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.two_side_update_expanded_short_message = ProtoField.new("Two Side Update Expanded Short Message", "cboe.c2options.multicasttop.spin.v1.2.54.twosideupdateexpandedshortmessage", ftypes.STRING)

-- Cboe C2Options MulticastTop Spin 1.2.54 generated fields
omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message_index = ProtoField.new("Message Index", "cboe.c2options.multicasttop.spin.v1.2.54.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C2Options MulticastTop Spin 1.2.54 Element Dissection Options
show.bit_fields = true
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe C2Options MulticastTop Spin 1.2.54 Show Options
omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_bit_fields = Pref.bool("Show Bit Fields", show.bit_fields, "Parse and add Bit Fields to protocol tree")
omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_application_messages then
    show.application_messages = omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_application_messages
  end
  if show.bit_fields ~= omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_bit_fields then
    show.bit_fields = omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_bit_fields
  end
  if show.message ~= omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_message then
    show.message = omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_message
  end
  if show.message_header ~= omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_message_header then
    show.message_header = omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_packet then
    show.packet = omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_packet_header then
    show.packet_header = omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_message_index then
    show.message_index = omi_cboe_c2options_multicasttop_spin_v1_2_54.prefs.show_message_index
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
-- Cboe C2Options MulticastTop Spin 1.2.54 Fields
-----------------------------------------------------------------------

-- Ask Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_2 = {}

-- Size: Ask Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_2.size = 2

-- Display: Ask Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_2.display = function(value)
  return "Ask Customer Quantity Binary 2: "..value
end

-- Dissect: Ask Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_customer_quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Ask Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_4 = {}

-- Size: Ask Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_4.size = 4

-- Display: Ask Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_4.display = function(value)
  return "Ask Customer Quantity Binary 4: "..value
end

-- Dissect: Ask Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_customer_quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Ask Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8 = {}

-- Size: Ask Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8.size = 8

-- Display: Ask Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8.display = function(value)
  return "Ask Price Binary Long Price 8: "..value
end

-- Translate: Ask Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Ask Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8.translate(raw)
  local display = cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_price_binary_long_price_8, range, value, display)

  return offset + length, value
end

-- Ask Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2 = {}

-- Size: Ask Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2.size = 2

-- Display: Ask Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2.display = function(value)
  return "Ask Price Binary Short Price 2: "..value
end

-- Translate: Ask Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2.translate(raw)
  local display = cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_price_binary_short_price_2, range, value, display)

  return offset + length, value
end

-- Ask Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_2 = {}

-- Size: Ask Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_2.size = 2

-- Display: Ask Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_2.display = function(value)
  return "Ask Quantity Binary 2: "..value
end

-- Dissect: Ask Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Ask Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_4 = {}

-- Size: Ask Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_4.size = 4

-- Display: Ask Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_4.display = function(value)
  return "Ask Quantity Binary 4: "..value
end

-- Dissect: Ask Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.ask_quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_2 = {}

-- Size: Bid Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_2.size = 2

-- Display: Bid Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_2.display = function(value)
  return "Bid Customer Quantity Binary 2: "..value
end

-- Dissect: Bid Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_customer_quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_4 = {}

-- Size: Bid Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_4.size = 4

-- Display: Bid Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_4.display = function(value)
  return "Bid Customer Quantity Binary 4: "..value
end

-- Dissect: Bid Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_customer_quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Bid Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8 = {}

-- Size: Bid Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8.size = 8

-- Display: Bid Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8.display = function(value)
  return "Bid Price Binary Long Price 8: "..value
end

-- Translate: Bid Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Bid Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8.translate(raw)
  local display = cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_price_binary_long_price_8, range, value, display)

  return offset + length, value
end

-- Bid Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2 = {}

-- Size: Bid Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2.size = 2

-- Display: Bid Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2.display = function(value)
  return "Bid Price Binary Short Price 2: "..value
end

-- Translate: Bid Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2.translate(raw)
  local display = cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_price_binary_short_price_2, range, value, display)

  return offset + length, value
end

-- Bid Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_2 = {}

-- Size: Bid Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_2.size = 2

-- Display: Bid Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_2.display = function(value)
  return "Bid Quantity Binary 2: "..value
end

-- Dissect: Bid Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Bid Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_4 = {}

-- Size: Bid Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_4.size = 4

-- Display: Bid Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_4.display = function(value)
  return "Bid Quantity Binary 4: "..value
end

-- Dissect: Bid Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bid_quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Count
cboe_c2options_multicasttop_spin_v1_2_54.count = {}

-- Size: Count
cboe_c2options_multicasttop_spin_v1_2_54.count.size = 1

-- Display: Count
cboe_c2options_multicasttop_spin_v1_2_54.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_c2options_multicasttop_spin_v1_2_54.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_2 = {}

-- Size: Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_2.size = 2

-- Display: Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_2.display = function(value)
  return "Customer Quantity Binary 2: "..value
end

-- Dissect: Customer Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.customer_quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_4 = {}

-- Size: Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_4.size = 4

-- Display: Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_4.display = function(value)
  return "Customer Quantity Binary 4: "..value
end

-- Dissect: Customer Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.customer_quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_c2options_multicasttop_spin_v1_2_54.execution_id = {}

-- Size: Execution Id
cboe_c2options_multicasttop_spin_v1_2_54.execution_id.size = 8

-- Display: Execution Id
cboe_c2options_multicasttop_spin_v1_2_54.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_c2options_multicasttop_spin_v1_2_54.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c2options_multicasttop_spin_v1_2_54.feed_symbol = {}

-- Size: Feed Symbol
cboe_c2options_multicasttop_spin_v1_2_54.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c2options_multicasttop_spin_v1_2_54.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c2options_multicasttop_spin_v1_2_54.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_multicasttop_spin_v1_2_54.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Filler
cboe_c2options_multicasttop_spin_v1_2_54.filler = {}

-- Size: Filler
cboe_c2options_multicasttop_spin_v1_2_54.filler.size = 2

-- Display: Filler
cboe_c2options_multicasttop_spin_v1_2_54.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_c2options_multicasttop_spin_v1_2_54.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_multicasttop_spin_v1_2_54.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.filler, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_c2options_multicasttop_spin_v1_2_54.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_c2options_multicasttop_spin_v1_2_54.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_c2options_multicasttop_spin_v1_2_54.gth_trading_status.display = function(value)
  if value == "H" then
    return "Gth Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Gth Trading Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Gth Trading Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Gth Trading Status: Trading (T)"
  end

  return "Gth Trading Status: Unknown("..value..")"
end

-- Dissect: Gth Trading Status
cboe_c2options_multicasttop_spin_v1_2_54.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Count
cboe_c2options_multicasttop_spin_v1_2_54.instrument_count = {}

-- Size: Instrument Count
cboe_c2options_multicasttop_spin_v1_2_54.instrument_count.size = 4

-- Display: Instrument Count
cboe_c2options_multicasttop_spin_v1_2_54.instrument_count.display = function(value)
  return "Instrument Count: "..value
end

-- Dissect: Instrument Count
cboe_c2options_multicasttop_spin_v1_2_54.instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.instrument_count, range, value, display)

  return offset + length, value
end

-- Instrument Definition Response Status
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_status = {}

-- Size: Instrument Definition Response Status
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_status.size = 1

-- Display: Instrument Definition Response Status
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_status.display = function(value)
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
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.instrument_definition_response_status, range, value, display)

  return offset + length, value
end

-- Length
cboe_c2options_multicasttop_spin_v1_2_54.length = {}

-- Size: Length
cboe_c2options_multicasttop_spin_v1_2_54.length.size = 2

-- Display: Length
cboe_c2options_multicasttop_spin_v1_2_54.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c2options_multicasttop_spin_v1_2_54.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_c2options_multicasttop_spin_v1_2_54.login_response_status = {}

-- Size: Login Response Status
cboe_c2options_multicasttop_spin_v1_2_54.login_response_status.size = 1

-- Display: Login Response Status
cboe_c2options_multicasttop_spin_v1_2_54.login_response_status.display = function(value)
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
cboe_c2options_multicasttop_spin_v1_2_54.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c2options_multicasttop_spin_v1_2_54.message_length = {}

-- Size: Message Length
cboe_c2options_multicasttop_spin_v1_2_54.message_length.size = 1

-- Display: Message Length
cboe_c2options_multicasttop_spin_v1_2_54.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c2options_multicasttop_spin_v1_2_54.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_c2options_multicasttop_spin_v1_2_54.message_type = {}

-- Size: Message Type
cboe_c2options_multicasttop_spin_v1_2_54.message_type.size = 1

-- Display: Message Type
cboe_c2options_multicasttop_spin_v1_2_54.message_type.display = function(value)
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
  if value == 0xD4 then
    return "Message Type: Single Side Update Expanded Short Message (0xD4)"
  end
  if value == 0xD5 then
    return "Message Type: Single Side Update Expanded Long Message (0xD5)"
  end
  if value == 0xD6 then
    return "Message Type: Two Side Update Expanded Short Message (0xD6)"
  end
  if value == 0xD7 then
    return "Message Type: Two Side Update Expanded Long Message (0xD7)"
  end
  if value == 0xB8 then
    return "Message Type: Top Trade Message (0xB8)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_c2options_multicasttop_spin_v1_2_54.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_c2options_multicasttop_spin_v1_2_54.order_count = {}

-- Size: Order Count
cboe_c2options_multicasttop_spin_v1_2_54.order_count.size = 4

-- Display: Order Count
cboe_c2options_multicasttop_spin_v1_2_54.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_c2options_multicasttop_spin_v1_2_54.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.order_count, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c2options_multicasttop_spin_v1_2_54.osi_symbol = {}

-- Size: Osi Symbol
cboe_c2options_multicasttop_spin_v1_2_54.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c2options_multicasttop_spin_v1_2_54.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c2options_multicasttop_spin_v1_2_54.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_multicasttop_spin_v1_2_54.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Password
cboe_c2options_multicasttop_spin_v1_2_54.password = {}

-- Size: Password
cboe_c2options_multicasttop_spin_v1_2_54.password.size = 10

-- Display: Password
cboe_c2options_multicasttop_spin_v1_2_54.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_c2options_multicasttop_spin_v1_2_54.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_multicasttop_spin_v1_2_54.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.password, range, value, display)

  return offset + length, value
end

-- Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8 = {}

-- Size: Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.size = 8

-- Display: Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.display = function(value)
  return "Price Binary Long Price 8: "..value
end

-- Translate: Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Binary Long Price 8
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.translate(raw)
  local display = cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.price_binary_long_price_8, range, value, display)

  return offset + length, value
end

-- Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2 = {}

-- Size: Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2.size = 2

-- Display: Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2.display = function(value)
  return "Price Binary Short Price 2: "..value
end

-- Translate: Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price Binary Short Price 2
cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2.translate(raw)
  local display = cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.price_binary_short_price_2, range, value, display)

  return offset + length, value
end

-- Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_2 = {}

-- Size: Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_2.size = 2

-- Display: Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_2.display = function(value)
  return "Quantity Binary 2: "..value
end

-- Dissect: Quantity Binary 2
cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4 = {}

-- Size: Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4.size = 4

-- Display: Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4.display = function(value)
  return "Quantity Binary 4: "..value
end

-- Dissect: Quantity Binary 4
cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_c2options_multicasttop_spin_v1_2_54.reserved_1 = {}

-- Size: Reserved 1
cboe_c2options_multicasttop_spin_v1_2_54.reserved_1.size = 1

-- Display: Reserved 1
cboe_c2options_multicasttop_spin_v1_2_54.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_c2options_multicasttop_spin_v1_2_54.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c2options_multicasttop_spin_v1_2_54.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_c2options_multicasttop_spin_v1_2_54.reserved_2 = {}

-- Size: Reserved 2
cboe_c2options_multicasttop_spin_v1_2_54.reserved_2.size = 2

-- Display: Reserved 2
cboe_c2options_multicasttop_spin_v1_2_54.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_c2options_multicasttop_spin_v1_2_54.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c2options_multicasttop_spin_v1_2_54.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_c2options_multicasttop_spin_v1_2_54.sequence = {}

-- Size: Sequence
cboe_c2options_multicasttop_spin_v1_2_54.sequence.size = 4

-- Display: Sequence
cboe_c2options_multicasttop_spin_v1_2_54.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c2options_multicasttop_spin_v1_2_54.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_c2options_multicasttop_spin_v1_2_54.session_sub_id = {}

-- Size: Session Sub Id
cboe_c2options_multicasttop_spin_v1_2_54.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_c2options_multicasttop_spin_v1_2_54.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_c2options_multicasttop_spin_v1_2_54.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_multicasttop_spin_v1_2_54.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_c2options_multicasttop_spin_v1_2_54.side = {}

-- Size: Side
cboe_c2options_multicasttop_spin_v1_2_54.side.size = 1

-- Display: Side
cboe_c2options_multicasttop_spin_v1_2_54.side.display = function(value)
  if value == "B" then
    return "Side: Bid Side (B)"
  end
  if value == "S" then
    return "Side: Ask Side (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_c2options_multicasttop_spin_v1_2_54.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.side, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_c2options_multicasttop_spin_v1_2_54.spin_response_status = {}

-- Size: Spin Response Status
cboe_c2options_multicasttop_spin_v1_2_54.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_c2options_multicasttop_spin_v1_2_54.spin_response_status.display = function(value)
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
cboe_c2options_multicasttop_spin_v1_2_54.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_c2options_multicasttop_spin_v1_2_54.symbol = {}

-- Size: Symbol
cboe_c2options_multicasttop_spin_v1_2_54.symbol.size = 6

-- Display: Symbol
cboe_c2options_multicasttop_spin_v1_2_54.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c2options_multicasttop_spin_v1_2_54.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_multicasttop_spin_v1_2_54.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_c2options_multicasttop_spin_v1_2_54.symbol_condition = {}

-- Size: Symbol Condition
cboe_c2options_multicasttop_spin_v1_2_54.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c2options_multicasttop_spin_v1_2_54.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c2options_multicasttop_spin_v1_2_54.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_c2options_multicasttop_spin_v1_2_54.time = {}

-- Size: Time
cboe_c2options_multicasttop_spin_v1_2_54.time.size = 4

-- Display: Time
cboe_c2options_multicasttop_spin_v1_2_54.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c2options_multicasttop_spin_v1_2_54.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_c2options_multicasttop_spin_v1_2_54.time_offset = {}

-- Size: Time Offset
cboe_c2options_multicasttop_spin_v1_2_54.time_offset.size = 4

-- Display: Time Offset
cboe_c2options_multicasttop_spin_v1_2_54.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c2options_multicasttop_spin_v1_2_54.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_c2options_multicasttop_spin_v1_2_54.total_volume = {}

-- Size: Total Volume
cboe_c2options_multicasttop_spin_v1_2_54.total_volume.size = 4

-- Display: Total Volume
cboe_c2options_multicasttop_spin_v1_2_54.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_c2options_multicasttop_spin_v1_2_54.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_c2options_multicasttop_spin_v1_2_54.trade_condition = {}

-- Size: Trade Condition
cboe_c2options_multicasttop_spin_v1_2_54.trade_condition.size = 1

-- Display: Trade Condition
cboe_c2options_multicasttop_spin_v1_2_54.trade_condition.display = function(value)
  if value == "a" then
    return "Trade Condition: Single Leg Auction Non Iso Cboe Auction Types Include Aim Sam (a)"
  end
  if value == "b" then
    return "Trade Condition: Single Leg Auction Iso Cboe Auction Types Include Aim Iso Sam Iso (b)"
  end
  if value == "c" then
    return "Trade Condition: Single Leg Cross Non Iso Cboe Auction Types Include Cust To Cust Aim Qcc (c)"
  end
  if value == "d" then
    return "Trade Condition: Single Leg Cross Iso Cboe Order Type Is Cust To Cust Aim Iso (d)"
  end
  if value == "e" then
    return "Trade Condition: Single Leg Floor Trade (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex To Complex Electronic Trade Cboe Auction Type Is Coa (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Auction Trade Cboe Order Types Include Caim Csam (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Cross Cboe Auction Types Include Cust To Cust Caim Cqcc (h)"
  end
  if value == "i" then
    return "Trade Condition: Complex Floor Trade Deprecated All Complex Floor Executions Are Reported As Condition M (i)"
  end
  if value == "j" then
    return "Trade Condition: Complex Electronic Trade Against Single Legs (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex With Stock Options Auction Trade Cboe Auction Types Include Caim W Stock Csam W Stock (k)"
  end
  if value == "m" then
    return "Trade Condition: Complex Floor Trade Against Single Legs All Complex Floor Executions Are Reported As Condition M (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex With Stock Electronic Trade Includes Coa Auctions Done Electronically (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex With Stock Cross Cboe Auction Types Include Cqcc W Stock (o)"
  end
  if value == "p" then
    return "Trade Condition: Complex With Stock Floor Trade (p)"
  end
  if value == "t" then
    return "Trade Condition: Complex Floor Trade Of Proprietary Products Marked As Combo Order (t)"
  end
  if value == "u" then
    return "Trade Condition: Multilateral Compression Trade Of Proprietary Products (u)"
  end
  if value == "v" then
    return "Trade Condition: Extended Hours Trade Transaction Represents A Trade Executed During The Curb Session (v)"
  end
  if value == "l" then
    return "Trade Condition: Electronic Trade (l)"
  end
  if value == "K" then
    return "Trade Condition: Cabinet Order (K)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end
  if value == "S" then
    return "Trade Condition: Iso (S)"
  end
  if value == "X" then
    return "Trade Condition: Trade Break (X)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_c2options_multicasttop_spin_v1_2_54.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_c2options_multicasttop_spin_v1_2_54.trading_status = {}

-- Size: Trading Status
cboe_c2options_multicasttop_spin_v1_2_54.trading_status.size = 1

-- Display: Trading Status
cboe_c2options_multicasttop_spin_v1_2_54.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "L" then
    return "Trading Status: Curb Trading (L)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Trading Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Trading Status: Rth Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_c2options_multicasttop_spin_v1_2_54.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_c2options_multicasttop_spin_v1_2_54.underlying = {}

-- Size: Underlying
cboe_c2options_multicasttop_spin_v1_2_54.underlying.size = 8

-- Display: Underlying
cboe_c2options_multicasttop_spin_v1_2_54.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_c2options_multicasttop_spin_v1_2_54.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_multicasttop_spin_v1_2_54.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c2options_multicasttop_spin_v1_2_54.unit = {}

-- Size: Unit
cboe_c2options_multicasttop_spin_v1_2_54.unit.size = 1

-- Display: Unit
cboe_c2options_multicasttop_spin_v1_2_54.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c2options_multicasttop_spin_v1_2_54.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_c2options_multicasttop_spin_v1_2_54.username = {}

-- Size: Username
cboe_c2options_multicasttop_spin_v1_2_54.username.size = 4

-- Display: Username
cboe_c2options_multicasttop_spin_v1_2_54.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_c2options_multicasttop_spin_v1_2_54.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_multicasttop_spin_v1_2_54.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_multicasttop_spin_v1_2_54.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe C2Options MulticastTop Spin 1.2.54
-----------------------------------------------------------------------

-- Trading Status Message
cboe_c2options_multicasttop_spin_v1_2_54.trading_status_message = {}

-- Size: Trading Status Message
cboe_c2options_multicasttop_spin_v1_2_54.trading_status_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.time_offset.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.symbol.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.reserved_2.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.trading_status.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.reserved_1.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.gth_trading_status.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.reserved_1.size

-- Display: Trading Status Message
cboe_c2options_multicasttop_spin_v1_2_54.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_c2options_multicasttop_spin_v1_2_54.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_multicasttop_spin_v1_2_54.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c2options_multicasttop_spin_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_c2options_multicasttop_spin_v1_2_54.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_c2options_multicasttop_spin_v1_2_54.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c2options_multicasttop_spin_v1_2_54.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_c2options_multicasttop_spin_v1_2_54.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c2options_multicasttop_spin_v1_2_54.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_c2options_multicasttop_spin_v1_2_54.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Trade Message
cboe_c2options_multicasttop_spin_v1_2_54.top_trade_message = {}

-- Size: Top Trade Message
cboe_c2options_multicasttop_spin_v1_2_54.top_trade_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.time_offset.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.symbol.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.execution_id.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.total_volume.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.trade_condition.size

-- Display: Top Trade Message
cboe_c2options_multicasttop_spin_v1_2_54.top_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Trade Message
cboe_c2options_multicasttop_spin_v1_2_54.top_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_multicasttop_spin_v1_2_54.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c2options_multicasttop_spin_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Quantity Binary 4: Binary
  index, quantity_binary_4 = cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c2options_multicasttop_spin_v1_2_54.execution_id.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_c2options_multicasttop_spin_v1_2_54.total_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c2options_multicasttop_spin_v1_2_54.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Trade Message
cboe_c2options_multicasttop_spin_v1_2_54.top_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.top_trade_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.top_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.top_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.top_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Bit Fields
cboe_c2options_multicasttop_spin_v1_2_54.bit_fields = {}

-- Size: Bit Fields
cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.size = 1

-- Display: Bit Fields
cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aon flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Customer flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Customer"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bit Fields
cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.bits = function(range, value, packet, parent)

  -- Reserved Low: 3 Bit
  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.reserved_low, range, value)

  -- Aon: 1 Bit
  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.aon, range, value)

  -- Customer: 1 Bit
  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.customer, range, value)

  -- Reserved High: 3 Bit
  parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.reserved_high, range, value)
end

-- Dissect: Bit Fields
cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.bit_fields, range, display)

  if show.bit_fields then
    cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Two Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_long_message = {}

-- Size: Two Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_long_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.time_offset.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.symbol.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_4.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_4.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_4.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_4.size

-- Display: Two Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_multicasttop_spin_v1_2_54.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c2options_multicasttop_spin_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 4 fields
  index, bit_fields = cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Binary Long Price 8: Binary Long Price
  index, bid_price_binary_long_price_8 = cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Bid Quantity Binary 4: Binary
  index, bid_quantity_binary_4 = cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Binary 4: Binary
  index, bid_customer_quantity_binary_4 = cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Ask Price Binary Long Price 8: Binary Long Price
  index, ask_price_binary_long_price_8 = cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Ask Quantity Binary 4: Binary
  index, ask_quantity_binary_4 = cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Binary 4: Binary
  index, ask_customer_quantity_binary_4 = cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.two_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Two Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_short_message = {}

-- Size: Two Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_short_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.time_offset.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.symbol.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_2.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_2.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_2.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_2.size

-- Display: Two Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_multicasttop_spin_v1_2_54.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c2options_multicasttop_spin_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 4 fields
  index, bit_fields = cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Binary Short Price 2: Binary Short Price
  index, bid_price_binary_short_price_2 = cboe_c2options_multicasttop_spin_v1_2_54.bid_price_binary_short_price_2.dissect(buffer, index, packet, parent)

  -- Bid Quantity Binary 2: Binary
  index, bid_quantity_binary_2 = cboe_c2options_multicasttop_spin_v1_2_54.bid_quantity_binary_2.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Binary 2: Binary
  index, bid_customer_quantity_binary_2 = cboe_c2options_multicasttop_spin_v1_2_54.bid_customer_quantity_binary_2.dissect(buffer, index, packet, parent)

  -- Ask Price Binary Short Price 2: Binary Short Price
  index, ask_price_binary_short_price_2 = cboe_c2options_multicasttop_spin_v1_2_54.ask_price_binary_short_price_2.dissect(buffer, index, packet, parent)

  -- Ask Quantity Binary 2: Binary
  index, ask_quantity_binary_2 = cboe_c2options_multicasttop_spin_v1_2_54.ask_quantity_binary_2.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Binary 2: Binary
  index, ask_customer_quantity_binary_2 = cboe_c2options_multicasttop_spin_v1_2_54.ask_customer_quantity_binary_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.two_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_long_message = {}

-- Size: Single Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_long_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.time_offset.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.symbol.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.side.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_4.size

-- Display: Single Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_multicasttop_spin_v1_2_54.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c2options_multicasttop_spin_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c2options_multicasttop_spin_v1_2_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 4 fields
  index, bit_fields = cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_c2options_multicasttop_spin_v1_2_54.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Quantity Binary 4: Binary
  index, quantity_binary_4 = cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Customer Quantity Binary 4: Binary
  index, customer_quantity_binary_4 = cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Long Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.single_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_short_message = {}

-- Size: Single Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_short_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.time_offset.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.symbol.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.side.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_2.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_2.size

-- Display: Single Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_multicasttop_spin_v1_2_54.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c2options_multicasttop_spin_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c2options_multicasttop_spin_v1_2_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 4 fields
  index, bit_fields = cboe_c2options_multicasttop_spin_v1_2_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Binary Short Price 2: Binary Short Price
  index, price_binary_short_price_2 = cboe_c2options_multicasttop_spin_v1_2_54.price_binary_short_price_2.dissect(buffer, index, packet, parent)

  -- Quantity Binary 2: Binary
  index, quantity_binary_2 = cboe_c2options_multicasttop_spin_v1_2_54.quantity_binary_2.dissect(buffer, index, packet, parent)

  -- Customer Quantity Binary 2: Binary
  index, customer_quantity_binary_2 = cboe_c2options_multicasttop_spin_v1_2_54.customer_quantity_binary_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Short Message
cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.single_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_c2options_multicasttop_spin_v1_2_54.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c2options_multicasttop_spin_v1_2_54.symbol_mapping_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.feed_symbol.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.osi_symbol.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.symbol_condition.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.underlying.size

-- Display: Symbol Mapping Message
cboe_c2options_multicasttop_spin_v1_2_54.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c2options_multicasttop_spin_v1_2_54.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c2options_multicasttop_spin_v1_2_54.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_c2options_multicasttop_spin_v1_2_54.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c2options_multicasttop_spin_v1_2_54.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_c2options_multicasttop_spin_v1_2_54.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c2options_multicasttop_spin_v1_2_54.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_c2options_multicasttop_spin_v1_2_54.time_message = {}

-- Size: Time Message
cboe_c2options_multicasttop_spin_v1_2_54.time_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.time.size

-- Display: Time Message
cboe_c2options_multicasttop_spin_v1_2_54.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c2options_multicasttop_spin_v1_2_54.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_c2options_multicasttop_spin_v1_2_54.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_c2options_multicasttop_spin_v1_2_54.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.time_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Response Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_message = {}

-- Size: Instrument Definition Response Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.sequence.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.instrument_count.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_status.size

-- Display: Instrument Definition Response Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Response Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c2options_multicasttop_spin_v1_2_54.sequence.dissect(buffer, index, packet, parent)

  -- Instrument Count: Binary
  index, instrument_count = cboe_c2options_multicasttop_spin_v1_2_54.instrument_count.dissect(buffer, index, packet, parent)

  -- Instrument Definition Response Status: Alphanumeric
  index, instrument_definition_response_status = cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Response Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.instrument_definition_response_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Request Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_request_message = {}

-- Size: Instrument Definition Request Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_request_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.sequence.size

-- Display: Instrument Definition Request Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Request Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c2options_multicasttop_spin_v1_2_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Request Message
cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.instrument_definition_request_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_finished_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.sequence.size

-- Display: Spin Finished Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c2options_multicasttop_spin_v1_2_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_response_message = {}

-- Size: Spin Response Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_response_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.sequence.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.order_count.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.spin_response_status.size

-- Display: Spin Response Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c2options_multicasttop_spin_v1_2_54.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_c2options_multicasttop_spin_v1_2_54.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_c2options_multicasttop_spin_v1_2_54.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_request_message = {}

-- Size: Spin Request Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_request_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.sequence.size

-- Display: Spin Request Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c2options_multicasttop_spin_v1_2_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_image_available_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.sequence.size

-- Display: Spin Image Available Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_c2options_multicasttop_spin_v1_2_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_c2options_multicasttop_spin_v1_2_54.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_c2options_multicasttop_spin_v1_2_54.login_response_message = {}

-- Size: Login Response Message
cboe_c2options_multicasttop_spin_v1_2_54.login_response_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.login_response_status.size

-- Display: Login Response Message
cboe_c2options_multicasttop_spin_v1_2_54.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_c2options_multicasttop_spin_v1_2_54.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_c2options_multicasttop_spin_v1_2_54.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_c2options_multicasttop_spin_v1_2_54.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.login_response_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_c2options_multicasttop_spin_v1_2_54.login_message = {}

-- Size: Login Message
cboe_c2options_multicasttop_spin_v1_2_54.login_message.size =
  cboe_c2options_multicasttop_spin_v1_2_54.session_sub_id.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.username.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.filler.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.password.size

-- Display: Login Message
cboe_c2options_multicasttop_spin_v1_2_54.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_c2options_multicasttop_spin_v1_2_54.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_c2options_multicasttop_spin_v1_2_54.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_c2options_multicasttop_spin_v1_2_54.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_c2options_multicasttop_spin_v1_2_54.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_c2options_multicasttop_spin_v1_2_54.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_c2options_multicasttop_spin_v1_2_54.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.login_message, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c2options_multicasttop_spin_v1_2_54.payload = {}

-- Dissect: Payload
cboe_c2options_multicasttop_spin_v1_2_54.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_c2options_multicasttop_spin_v1_2_54.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_c2options_multicasttop_spin_v1_2_54.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_c2options_multicasttop_spin_v1_2_54.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_c2options_multicasttop_spin_v1_2_54.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_c2options_multicasttop_spin_v1_2_54.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_c2options_multicasttop_spin_v1_2_54.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Request Message
  if message_type == 0x84 then
    return cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Response Message
  if message_type == 0x85 then
    return cboe_c2options_multicasttop_spin_v1_2_54.instrument_definition_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Finished Message
  if message_type == 0x86 then
    return offset
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c2options_multicasttop_spin_v1_2_54.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c2options_multicasttop_spin_v1_2_54.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Short Message
  if message_type == 0xD4 then
    return cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Long Message
  if message_type == 0xD5 then
    return cboe_c2options_multicasttop_spin_v1_2_54.single_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Short Message
  if message_type == 0xD6 then
    return cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Long Message
  if message_type == 0xD7 then
    return cboe_c2options_multicasttop_spin_v1_2_54.two_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Trade Message
  if message_type == 0xB8 then
    return cboe_c2options_multicasttop_spin_v1_2_54.top_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_c2options_multicasttop_spin_v1_2_54.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_c2options_multicasttop_spin_v1_2_54.message_header = {}

-- Size: Message Header
cboe_c2options_multicasttop_spin_v1_2_54.message_header.size =
  cboe_c2options_multicasttop_spin_v1_2_54.message_length.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.message_type.size

-- Display: Message Header
cboe_c2options_multicasttop_spin_v1_2_54.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c2options_multicasttop_spin_v1_2_54.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c2options_multicasttop_spin_v1_2_54.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, message_type = cboe_c2options_multicasttop_spin_v1_2_54.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c2options_multicasttop_spin_v1_2_54.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message_header, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c2options_multicasttop_spin_v1_2_54.message = {}

-- Read runtime size of: Message
cboe_c2options_multicasttop_spin_v1_2_54.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_c2options_multicasttop_spin_v1_2_54.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c2options_multicasttop_spin_v1_2_54.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c2options_multicasttop_spin_v1_2_54.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 17 branches
  index = cboe_c2options_multicasttop_spin_v1_2_54.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c2options_multicasttop_spin_v1_2_54.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_c2options_multicasttop_spin_v1_2_54.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.message, buffer(offset, 0))
    local current = cboe_c2options_multicasttop_spin_v1_2_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c2options_multicasttop_spin_v1_2_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_c2options_multicasttop_spin_v1_2_54.heartbeat = {}

-- Display: Heartbeat
cboe_c2options_multicasttop_spin_v1_2_54.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_c2options_multicasttop_spin_v1_2_54.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_c2options_multicasttop_spin_v1_2_54.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_c2options_multicasttop_spin_v1_2_54.messages = {}

-- Dissect: Messages
cboe_c2options_multicasttop_spin_v1_2_54.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return cboe_c2options_multicasttop_spin_v1_2_54.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_c2options_multicasttop_spin_v1_2_54.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_c2options_multicasttop_spin_v1_2_54.packet_header = {}

-- Size: Packet Header
cboe_c2options_multicasttop_spin_v1_2_54.packet_header.size =
  cboe_c2options_multicasttop_spin_v1_2_54.length.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.count.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.unit.size + 
  cboe_c2options_multicasttop_spin_v1_2_54.sequence.size

-- Display: Packet Header
cboe_c2options_multicasttop_spin_v1_2_54.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c2options_multicasttop_spin_v1_2_54.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c2options_multicasttop_spin_v1_2_54.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_c2options_multicasttop_spin_v1_2_54.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c2options_multicasttop_spin_v1_2_54.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_c2options_multicasttop_spin_v1_2_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_c2options_multicasttop_spin_v1_2_54.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54.fields.packet_header, buffer(offset, 0))
    local index = cboe_c2options_multicasttop_spin_v1_2_54.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_multicasttop_spin_v1_2_54.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_multicasttop_spin_v1_2_54.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c2options_multicasttop_spin_v1_2_54.packet = {}

-- Verify required size of Tcp packet
cboe_c2options_multicasttop_spin_v1_2_54.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_c2options_multicasttop_spin_v1_2_54.packet_header.size
end

-- Dissect Packet
cboe_c2options_multicasttop_spin_v1_2_54.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c2options_multicasttop_spin_v1_2_54.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_c2options_multicasttop_spin_v1_2_54.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c2options_multicasttop_spin_v1_2_54.init()
end

-- Dissector for Cboe C2Options MulticastTop Spin 1.2.54
function omi_cboe_c2options_multicasttop_spin_v1_2_54.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_c2options_multicasttop_spin_v1_2_54.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c2options_multicasttop_spin_v1_2_54, buffer(), omi_cboe_c2options_multicasttop_spin_v1_2_54.description, "("..buffer:len().." Bytes)")
  return cboe_c2options_multicasttop_spin_v1_2_54.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe C2Options MulticastTop Spin 1.2.54 (Tcp)
local function omi_cboe_c2options_multicasttop_spin_v1_2_54_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c2options_multicasttop_spin_v1_2_54.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c2options_multicasttop_spin_v1_2_54
  omi_cboe_c2options_multicasttop_spin_v1_2_54.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C2Options MulticastTop Spin 1.2.54
omi_cboe_c2options_multicasttop_spin_v1_2_54:register_heuristic("tcp", omi_cboe_c2options_multicasttop_spin_v1_2_54_tcp_heuristic)

-- Register Cboe C2Options MulticastTop Spin 1.2.54 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_c2options_multicasttop_spin_v1_2_54)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.2.54
--   Date: Wednesday, April 1, 2026
--   Specification: US_OPTIONS_MULTICAST_TOP_SPECIFICATION.pdf
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
