-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Options ComplexFeed Xdp 1.3.a Protocol
local nyse_options_complexfeed_xdp_v1_3_a = Proto("Nyse.Options.ComplexFeed.Xdp.v1.3.a.Lua", "Nyse Options ComplexFeed Xdp 1.3.a")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Options ComplexFeed Xdp 1.3.a Fields
nyse_options_complexfeed_xdp_v1_3_a.fields.ask_customer_volume = ProtoField.new("Ask Customer Volume", "nyse.options.complexfeed.xdp.v1.3.a.askcustomervolume", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.ask_price = ProtoField.new("Ask Price", "nyse.options.complexfeed.xdp.v1.3.a.askprice", ftypes.INT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.options.complexfeed.xdp.v1.3.a.askvolume", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.bid_customer_volume = ProtoField.new("Bid Customer Volume", "nyse.options.complexfeed.xdp.v1.3.a.bidcustomervolume", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.bid_price = ProtoField.new("Bid Price", "nyse.options.complexfeed.xdp.v1.3.a.bidprice", ftypes.INT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.options.complexfeed.xdp.v1.3.a.bidvolume", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.options.complexfeed.xdp.v1.3.a.channelid", ftypes.UINT8)
nyse_options_complexfeed_xdp_v1_3_a.fields.complex_crossing_rfq_message = ProtoField.new("Complex Crossing Rfq Message", "nyse.options.complexfeed.xdp.v1.3.a.complexcrossingrfqmessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.complex_cube_rfq_message = ProtoField.new("Complex Cube Rfq Message", "nyse.options.complexfeed.xdp.v1.3.a.complexcuberfqmessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.complex_index = ProtoField.new("Complex Index", "nyse.options.complexfeed.xdp.v1.3.a.complexindex", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.complex_quote_message = ProtoField.new("Complex Quote Message", "nyse.options.complexfeed.xdp.v1.3.a.complexquotemessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.complex_status_message = ProtoField.new("Complex Status Message", "nyse.options.complexfeed.xdp.v1.3.a.complexstatusmessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.complex_symbol = ProtoField.new("Complex Symbol", "nyse.options.complexfeed.xdp.v1.3.a.complexsymbol", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.complex_symbol_definition_message = ProtoField.new("Complex Symbol Definition Message", "nyse.options.complexfeed.xdp.v1.3.a.complexsymboldefinitionmessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.complex_trade_message = ProtoField.new("Complex Trade Message", "nyse.options.complexfeed.xdp.v1.3.a.complextrademessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.options.complexfeed.xdp.v1.3.a.deliveryflag", ftypes.UINT8)
nyse_options_complexfeed_xdp_v1_3_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.options.complexfeed.xdp.v1.3.a.haltcondition", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.leg_definition = ProtoField.new("Leg Definition", "nyse.options.complexfeed.xdp.v1.3.a.legdefinition", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "nyse.options.complexfeed.xdp.v1.3.a.legratioqty", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.leg_security_type = ProtoField.new("Leg Security Type", "nyse.options.complexfeed.xdp.v1.3.a.legsecuritytype", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.market_id = ProtoField.new("Market Id", "nyse.options.complexfeed.xdp.v1.3.a.marketid", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.message = ProtoField.new("Message", "nyse.options.complexfeed.xdp.v1.3.a.message", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.message_count = ProtoField.new("Message Count", "nyse.options.complexfeed.xdp.v1.3.a.messagecount", ftypes.UINT8)
nyse_options_complexfeed_xdp_v1_3_a.fields.message_header = ProtoField.new("Message Header", "nyse.options.complexfeed.xdp.v1.3.a.messageheader", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.message_size = ProtoField.new("Message Size", "nyse.options.complexfeed.xdp.v1.3.a.messagesize", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.message_type = ProtoField.new("Message Type", "nyse.options.complexfeed.xdp.v1.3.a.messagetype", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.options.complexfeed.xdp.v1.3.a.nanoseconds", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.no_of_legs = ProtoField.new("No Of Legs", "nyse.options.complexfeed.xdp.v1.3.a.nooflegs", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.packet = ProtoField.new("Packet", "nyse.options.complexfeed.xdp.v1.3.a.packet", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.options.complexfeed.xdp.v1.3.a.packetheader", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.options.complexfeed.xdp.v1.3.a.packetsize", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.payload = ProtoField.new("Payload", "nyse.options.complexfeed.xdp.v1.3.a.payload", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.price = ProtoField.new("Price", "nyse.options.complexfeed.xdp.v1.3.a.price", ftypes.INT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.product_id = ProtoField.new("Product Id", "nyse.options.complexfeed.xdp.v1.3.a.productid", ftypes.UINT8)
nyse_options_complexfeed_xdp_v1_3_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.options.complexfeed.xdp.v1.3.a.quotecondition", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.refresh_complex_quote_message = ProtoField.new("Refresh Complex Quote Message", "nyse.options.complexfeed.xdp.v1.3.a.refreshcomplexquotemessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.refresh_complex_trade_message = ProtoField.new("Refresh Complex Trade Message", "nyse.options.complexfeed.xdp.v1.3.a.refreshcomplextrademessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.options.complexfeed.xdp.v1.3.a.reserved1", ftypes.BYTES)
nyse_options_complexfeed_xdp_v1_3_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.options.complexfeed.xdp.v1.3.a.reserved2", ftypes.BYTES)
nyse_options_complexfeed_xdp_v1_3_a.fields.security_status = ProtoField.new("Security Status", "nyse.options.complexfeed.xdp.v1.3.a.securitystatus", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.options.complexfeed.xdp.v1.3.a.sequencenumber", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.options.complexfeed.xdp.v1.3.a.sequencenumberresetmessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.side = ProtoField.new("Side", "nyse.options.complexfeed.xdp.v1.3.a.side", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.source_ns = ProtoField.new("Source Ns", "nyse.options.complexfeed.xdp.v1.3.a.sourcens", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.source_time = ProtoField.new("Source Time", "nyse.options.complexfeed.xdp.v1.3.a.sourcetime", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.options.complexfeed.xdp.v1.3.a.sourcetimens", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.stream_id = ProtoField.new("Stream Id", "nyse.options.complexfeed.xdp.v1.3.a.streamid", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.stream_id_message = ProtoField.new("Stream Id Message", "nyse.options.complexfeed.xdp.v1.3.a.streamidmessage", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.options.complexfeed.xdp.v1.3.a.symbolindex", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.options.complexfeed.xdp.v1.3.a.symbolseqnum", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.system_id = ProtoField.new("System Id", "nyse.options.complexfeed.xdp.v1.3.a.systemid", ftypes.UINT8)
nyse_options_complexfeed_xdp_v1_3_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.options.complexfeed.xdp.v1.3.a.timestamp", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.options.complexfeed.xdp.v1.3.a.tradecond1", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.trade_cond_2 = ProtoField.new("Trade Cond 2", "nyse.options.complexfeed.xdp.v1.3.a.tradecond2", ftypes.STRING)
nyse_options_complexfeed_xdp_v1_3_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.options.complexfeed.xdp.v1.3.a.tradeid", ftypes.UINT32)
nyse_options_complexfeed_xdp_v1_3_a.fields.volume_2 = ProtoField.new("Volume 2", "nyse.options.complexfeed.xdp.v1.3.a.volume2", ftypes.UINT16)
nyse_options_complexfeed_xdp_v1_3_a.fields.volume_4 = ProtoField.new("Volume 4", "nyse.options.complexfeed.xdp.v1.3.a.volume4", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Options ComplexFeed Xdp 1.3.a Element Dissection Options
show.complex_crossing_rfq_message = true
show.complex_cube_rfq_message = true
show.complex_quote_message = true
show.complex_status_message = true
show.complex_symbol_definition_message = true
show.complex_trade_message = true
show.leg_definition = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.refresh_complex_quote_message = true
show.refresh_complex_trade_message = true
show.sequence_number_reset_message = true
show.stream_id_message = true
show.payload = false

-- Register Nyse Options ComplexFeed Xdp 1.3.a Show Options
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_crossing_rfq_message = Pref.bool("Show Complex Crossing Rfq Message", show.complex_crossing_rfq_message, "Parse and add Complex Crossing Rfq Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_cube_rfq_message = Pref.bool("Show Complex Cube Rfq Message", show.complex_cube_rfq_message, "Parse and add Complex Cube Rfq Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_quote_message = Pref.bool("Show Complex Quote Message", show.complex_quote_message, "Parse and add Complex Quote Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_status_message = Pref.bool("Show Complex Status Message", show.complex_status_message, "Parse and add Complex Status Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_symbol_definition_message = Pref.bool("Show Complex Symbol Definition Message", show.complex_symbol_definition_message, "Parse and add Complex Symbol Definition Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_trade_message = Pref.bool("Show Complex Trade Message", show.complex_trade_message, "Parse and add Complex Trade Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_leg_definition = Pref.bool("Show Leg Definition", show.leg_definition, "Parse and add Leg Definition to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_quote_message = Pref.bool("Show Refresh Complex Quote Message", show.refresh_complex_quote_message, "Parse and add Refresh Complex Quote Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_trade_message = Pref.bool("Show Refresh Complex Trade Message", show.refresh_complex_trade_message, "Parse and add Refresh Complex Trade Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_stream_id_message = Pref.bool("Show Stream Id Message", show.stream_id_message, "Parse and add Stream Id Message to protocol tree")
nyse_options_complexfeed_xdp_v1_3_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_options_complexfeed_xdp_v1_3_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.complex_crossing_rfq_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_crossing_rfq_message then
    show.complex_crossing_rfq_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_crossing_rfq_message
    changed = true
  end
  if show.complex_cube_rfq_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_cube_rfq_message then
    show.complex_cube_rfq_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_cube_rfq_message
    changed = true
  end
  if show.complex_quote_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_quote_message then
    show.complex_quote_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_quote_message
    changed = true
  end
  if show.complex_status_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_status_message then
    show.complex_status_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_status_message
    changed = true
  end
  if show.complex_symbol_definition_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_symbol_definition_message then
    show.complex_symbol_definition_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_symbol_definition_message
    changed = true
  end
  if show.complex_trade_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_trade_message then
    show.complex_trade_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_trade_message
    changed = true
  end
  if show.leg_definition ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_leg_definition then
    show.leg_definition = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_leg_definition
    changed = true
  end
  if show.message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message then
    show.message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message_header then
    show.message_header = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message_header
    changed = true
  end
  if show.packet ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet then
    show.packet = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet_header then
    show.packet_header = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_complex_quote_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_quote_message then
    show.refresh_complex_quote_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_quote_message
    changed = true
  end
  if show.refresh_complex_trade_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_trade_message then
    show.refresh_complex_trade_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_trade_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.stream_id_message ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_stream_id_message then
    show.stream_id_message = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_stream_id_message
    changed = true
  end
  if show.payload ~= nyse_options_complexfeed_xdp_v1_3_a.prefs.show_payload then
    show.payload = nyse_options_complexfeed_xdp_v1_3_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Options ComplexFeed Xdp 1.3.a
-----------------------------------------------------------------------

-- Size: Channel Id
size_of.channel_id = 1

-- Display: Channel Id
display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
dissect.channel_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.channel_id)
  local value = range:le_uint()
  local display = display.channel_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.channel_id, range, value, display)

  return offset + size_of.channel_id
end

-- Size: Product Id
size_of.product_id = 1

-- Display: Product Id
display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
dissect.product_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.product_id)
  local value = range:le_uint()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.product_id, range, value, display)

  return offset + size_of.product_id
end

-- Size: Source Time Ns
size_of.source_time_ns = 4

-- Display: Source Time Ns
display.source_time_ns = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
dissect.source_time_ns = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source_time_ns)
  local value = range:le_uint()
  local display = display.source_time_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.source_time_ns, range, value, display)

  return offset + size_of.source_time_ns
end

-- Size: Source Time
size_of.source_time = 4

-- Display: Source Time
display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
dissect.source_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source_time)
  local value = range:le_uint()
  local display = display.source_time(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.source_time, range, value, display)

  return offset + size_of.source_time
end

-- Display: Sequence Number Reset Message
display.sequence_number_reset_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequence_number_reset_message then
    local range = buffer(offset, 10)
    local display = display.sequence_number_reset_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.sequence_number_reset_message, range, display)
  end

  return dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 2
size_of.reserved_2 = 2

-- Display: Reserved 2
display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
dissect.reserved_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_2)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.reserved_2, range, value, display)

  return offset + size_of.reserved_2
end

-- Size: Stream Id
size_of.stream_id = 2

-- Display: Stream Id
display.stream_id = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
dissect.stream_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.stream_id)
  local value = range:le_uint()
  local display = display.stream_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.stream_id, range, value, display)

  return offset + size_of.stream_id
end

-- Display: Stream Id Message
display.stream_id_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Id Message
dissect.stream_id_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.stream_id(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id Message
dissect.stream_id_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_id_message then
    local range = buffer(offset, 4)
    local display = display.stream_id_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.stream_id_message, range, display)
  end

  return dissect.stream_id_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Security Type
size_of.leg_security_type = 1

-- Display: Leg Security Type
display.leg_security_type = function(value)
  if value == "O" then
    return "Leg Security Type: Options Series Leg (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity Stock Leg (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
dissect.leg_security_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_security_type)
  local value = range:string()
  local display = display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.leg_security_type, range, value, display)

  return offset + size_of.leg_security_type
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.side, range, value, display)

  return offset + size_of.side
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 2

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_ratio_qty)
  local value = range:le_uint()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.leg_ratio_qty, range, value, display)

  return offset + size_of.leg_ratio_qty
end

-- Size: Symbol Index
size_of.symbol_index = 4

-- Display: Symbol Index
display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
dissect.symbol_index = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol_index)
  local value = range:le_uint()
  local display = display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.symbol_index, range, value, display)

  return offset + size_of.symbol_index
end

-- Display: Leg Definition
display.leg_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Definition
dissect.leg_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Leg Ratio Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.leg_security_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
dissect.leg_definition = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_definition then
    local range = buffer(offset, 8)
    local display = display.leg_definition(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.leg_definition, range, display)
  end

  return dissect.leg_definition_fields(buffer, offset, packet, parent)
end

-- Size: No Of Legs
size_of.no_of_legs = 2

-- Display: No Of Legs
display.no_of_legs = function(value)
  return "No Of Legs: "..value
end

-- Dissect: No Of Legs
dissect.no_of_legs = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.no_of_legs)
  local value = range:le_uint()
  local display = display.no_of_legs(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.no_of_legs, range, value, display)

  return offset + size_of.no_of_legs
end

-- Size: Reserved 1
size_of.reserved_1 = 1

-- Display: Reserved 1
display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
dissect.reserved_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_1)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.reserved_1, range, value, display)

  return offset + size_of.reserved_1
end

-- Size: System Id
size_of.system_id = 1

-- Display: System Id
display.system_id = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
dissect.system_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.system_id)
  local value = range:le_uint()
  local display = display.system_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.system_id, range, value, display)

  return offset + size_of.system_id
end

-- Size: Market Id
size_of.market_id = 2

-- Display: Market Id
display.market_id = function(value)
  if value == 1 then
    return "Market Id: Nyse Cash (1)"
  end
  if value == 2 then
    return "Market Id: Europe Cash (2)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca Cash (3)"
  end
  if value == 4 then
    return "Market Id: Nyse Arca Options (4)"
  end
  if value == 5 then
    return "Market Id: Nyse Arca Bonds (5)"
  end
  if value == 6 then
    return "Market Id: Arca Edge (6)"
  end
  if value == 7 then
    return "Market Id: Liffe (7)"
  end
  if value == 8 then
    return "Market Id: Nyse American Options (8)"
  end
  if value == 9 then
    return "Market Id: Nyse Mkt Cash (9)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
dissect.market_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id)
  local value = range:le_uint()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.market_id, range, value, display)

  return offset + size_of.market_id
end

-- Size: Complex Symbol
size_of.complex_symbol = 21

-- Display: Complex Symbol
display.complex_symbol = function(value)
  return "Complex Symbol: "..value
end

-- Dissect: Complex Symbol
dissect.complex_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.complex_symbol)
  local value = range:string()
  local display = display.complex_symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.complex_symbol, range, value, display)

  return offset + size_of.complex_symbol
end

-- Size: Complex Index
size_of.complex_index = 4

-- Display: Complex Index
display.complex_index = function(value)
  return "Complex Index: "..value
end

-- Dissect: Complex Index
dissect.complex_index = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.complex_index)
  local value = range:le_uint()
  local display = display.complex_index(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.complex_index, range, value, display)

  return offset + size_of.complex_index
end

-- Display: Complex Symbol Definition Message
display.complex_symbol_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Symbol Definition Message
dissect.complex_symbol_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Complex Symbol: 21 Byte Ascii String
  index = dissect.complex_symbol(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.system_id(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.stream_id(buffer, index, packet, parent)

  -- No Of Legs: 2 Byte Unsigned Fixed Width Integer
  index = dissect.no_of_legs(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  -- Leg Definition: Struct of 4 fields
  index = dissect.leg_definition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Symbol Definition Message
dissect.complex_symbol_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_symbol_definition_message then
    local range = buffer(offset, 44)
    local display = display.complex_symbol_definition_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.complex_symbol_definition_message, range, display)
  end

  return dissect.complex_symbol_definition_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Cond 2
size_of.trade_cond_2 = 1

-- Display: Trade Cond 2
display.trade_cond_2 = function(value)
  if value == "P" then
    return "Trade Cond 2: Complex Trade With Equity (P)"
  end
  if value == "L" then
    return "Trade Cond 2: Complex Trade (L)"
  end

  return "Trade Cond 2: Unknown("..value..")"
end

-- Dissect: Trade Cond 2
dissect.trade_cond_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_cond_2)
  local value = range:string()
  local display = display.trade_cond_2(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.trade_cond_2, range, value, display)

  return offset + size_of.trade_cond_2
end

-- Size: Trade Cond 1
size_of.trade_cond_1 = 1

-- Display: Trade Cond 1
display.trade_cond_1 = function(value)
  if value == " " then
    return "Trade Cond 1: Regular Trade (<whitespace>)"
  end
  if value == "I" then
    return "Trade Cond 1: Late Report (I)"
  end
  if value == "R" then
    return "Trade Cond 1: Floor Trade (R)"
  end
  if value == "S" then
    return "Trade Cond 1: So Sweep Trade (S)"
  end

  return "Trade Cond 1: Unknown("..value..")"
end

-- Dissect: Trade Cond 1
dissect.trade_cond_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_cond_1)
  local value = range:string()
  local display = display.trade_cond_1(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.trade_cond_1, range, value, display)

  return offset + size_of.trade_cond_1
end

-- Size: Volume 4
size_of.volume_4 = 4

-- Display: Volume 4
display.volume_4 = function(value)
  return "Volume 4: "..value
end

-- Dissect: Volume 4
dissect.volume_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volume_4)
  local value = range:le_uint()
  local display = display.volume_4(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.volume_4, range, value, display)

  return offset + size_of.volume_4
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:le_int()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Trade Id
size_of.trade_id = 4

-- Display: Trade Id
display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
dissect.trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_id)
  local value = range:le_uint()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.trade_id, range, value, display)

  return offset + size_of.trade_id
end

-- Size: Symbol Seq Num
size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol_seq_num)
  local value = range:le_uint()
  local display = display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.symbol_seq_num, range, value, display)

  return offset + size_of.symbol_seq_num
end

-- Display: Refresh Complex Trade Message
display.refresh_complex_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Complex Trade Message
dissect.refresh_complex_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume_4(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index = dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complex Trade Message
dissect.refresh_complex_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_complex_trade_message then
    local range = buffer(offset, 32)
    local display = display.refresh_complex_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.refresh_complex_trade_message, range, display)
  end

  return dissect.refresh_complex_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Quote Condition
size_of.quote_condition = 1

-- Display: Quote Condition
display.quote_condition = function(value)
  if value == "1" then
    return "Quote Condition: Regular Trading (1)"
  end
  if value == "2" then
    return "Quote Condition: Rotation (2)"
  end
  if value == "3" then
    return "Quote Condition: Trading Halted (3)"
  end
  if value == "4" then
    return "Quote Condition: Preopen (4)"
  end
  if value == "5" then
    return "Quote Condition: Rotation Legal Width Quote Pending (5)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
dissect.quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_condition)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.quote_condition, range, value, display)

  return offset + size_of.quote_condition
end

-- Size: Bid Customer Volume
size_of.bid_customer_volume = 2

-- Display: Bid Customer Volume
display.bid_customer_volume = function(value)
  return "Bid Customer Volume: "..value
end

-- Dissect: Bid Customer Volume
dissect.bid_customer_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_customer_volume)
  local value = range:le_uint()
  local display = display.bid_customer_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.bid_customer_volume, range, value, display)

  return offset + size_of.bid_customer_volume
end

-- Size: Ask Customer Volume
size_of.ask_customer_volume = 2

-- Display: Ask Customer Volume
display.ask_customer_volume = function(value)
  return "Ask Customer Volume: "..value
end

-- Dissect: Ask Customer Volume
dissect.ask_customer_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_customer_volume)
  local value = range:le_uint()
  local display = display.ask_customer_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.ask_customer_volume, range, value, display)

  return offset + size_of.ask_customer_volume
end

-- Size: Bid Volume
size_of.bid_volume = 2

-- Display: Bid Volume
display.bid_volume = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
dissect.bid_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_volume)
  local value = range:le_uint()
  local display = display.bid_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.bid_volume, range, value, display)

  return offset + size_of.bid_volume
end

-- Size: Ask Volume
size_of.ask_volume = 2

-- Display: Ask Volume
display.ask_volume = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
dissect.ask_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_volume)
  local value = range:le_uint()
  local display = display.ask_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.ask_volume, range, value, display)

  return offset + size_of.ask_volume
end

-- Size: Bid Price
size_of.bid_price = 4

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price)
  local value = range:le_int()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.bid_price, range, value, display)

  return offset + size_of.bid_price
end

-- Size: Ask Price
size_of.ask_price = 4

-- Display: Ask Price
display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
dissect.ask_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_price)
  local value = range:le_int()
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.ask_price, range, value, display)

  return offset + size_of.ask_price
end

-- Display: Refresh Complex Quote Message
display.refresh_complex_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Complex Quote Message
dissect.refresh_complex_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_customer_volume(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_customer_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complex Quote Message
dissect.refresh_complex_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_complex_quote_message then
    local range = buffer(offset, 36)
    local display = display.refresh_complex_quote_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.refresh_complex_quote_message, range, display)
  end

  return dissect.refresh_complex_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Halt Condition
size_of.halt_condition = 1

-- Display: Halt Condition
display.halt_condition = function(value)
  return "Halt Condition: "..value
end

-- Dissect: Halt Condition
dissect.halt_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.halt_condition)
  local value = range:string()
  local display = display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.halt_condition, range, value, display)

  return offset + size_of.halt_condition
end

-- Size: Security Status
size_of.security_status = 1

-- Display: Security Status
display.security_status = function(value)
  if value == "L" then
    return "Security Status: Light Up A Dark Series (L)"
  end
  if value == "N" then
    return "Security Status: Open A Dark Series (N)"
  end
  if value == "O" then
    return "Security Status: Open (O)"
  end
  if value == "X" then
    return "Security Status: Close (X)"
  end
  if value == "S" then
    return "Security Status: Halt (S)"
  end
  if value == "U" then
    return "Security Status: Unhalt (U)"
  end
  if value == "T" then
    return "Security Status: Unhalt A Dark Series (T)"
  end
  if value == "Q" then
    return "Security Status: End Of Rfq Auction (Q)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
dissect.security_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_status)
  local value = range:string()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.security_status, range, value, display)

  return offset + size_of.security_status
end

-- Display: Complex Status Message
display.complex_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Status Message
dissect.complex_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 8 values
  index = dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index = dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Status Message
dissect.complex_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_status_message then
    local range = buffer(offset, 20)
    local display = display.complex_status_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.complex_status_message, range, display)
  end

  return dissect.complex_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Volume 2
size_of.volume_2 = 2

-- Display: Volume 2
display.volume_2 = function(value)
  return "Volume 2: "..value
end

-- Dissect: Volume 2
dissect.volume_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volume_2)
  local value = range:le_uint()
  local display = display.volume_2(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.volume_2, range, value, display)

  return offset + size_of.volume_2
end

-- Size: Source Ns
size_of.source_ns = 4

-- Display: Source Ns
display.source_ns = function(value)
  return "Source Ns: "..value
end

-- Dissect: Source Ns
dissect.source_ns = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source_ns)
  local value = range:le_uint()
  local display = display.source_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.source_ns, range, value, display)

  return offset + size_of.source_ns
end

-- Display: Complex Cube Rfq Message
display.complex_cube_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Cube Rfq Message
dissect.complex_cube_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Volume 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume_2(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Cube Rfq Message
dissect.complex_cube_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_cube_rfq_message then
    local range = buffer(offset, 24)
    local display = display.complex_cube_rfq_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.complex_cube_rfq_message, range, display)
  end

  return dissect.complex_cube_rfq_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Crossing Rfq Message
display.complex_crossing_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Crossing Rfq Message
dissect.complex_crossing_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Volume 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume_2(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Crossing Rfq Message
dissect.complex_crossing_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_crossing_rfq_message then
    local range = buffer(offset, 24)
    local display = display.complex_crossing_rfq_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.complex_crossing_rfq_message, range, display)
  end

  return dissect.complex_crossing_rfq_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Trade Message
display.complex_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Trade Message
dissect.complex_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume_4(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index = dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Trade Message
dissect.complex_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_trade_message then
    local range = buffer(offset, 32)
    local display = display.complex_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.complex_trade_message, range, display)
  end

  return dissect.complex_trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Quote Message
display.complex_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Quote Message
dissect.complex_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_customer_volume(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_customer_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Quote Message
dissect.complex_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_quote_message then
    local range = buffer(offset, 36)
    local display = display.complex_quote_message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.complex_quote_message, range, display)
  end

  return dissect.complex_quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Complex Quote Message
  if code == 423 then
    return 36
  end
  -- Size of Complex Trade Message
  if code == 425 then
    return 32
  end
  -- Size of Complex Crossing Rfq Message
  if code == 429 then
    return 24
  end
  -- Size of Complex Cube Rfq Message
  if code == 472 then
    return 24
  end
  -- Size of Complex Status Message
  if code == 433 then
    return 20
  end
  -- Size of Refresh Complex Quote Message
  if code == 511 then
    return 36
  end
  -- Size of Refresh Complex Trade Message
  if code == 513 then
    return 32
  end
  -- Size of Complex Symbol Definition Message
  if code == 439 then
    return 44
  end
  -- Size of Stream Id Message
  if code == 455 then
    return 4
  end
  -- Size of Sequence Number Reset Message
  if code == 1 then
    return 10
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(buffer, offset, packet, parent, code)
  -- Dissect Complex Quote Message
  if code == 423 then
    return dissect.complex_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Trade Message
  if code == 425 then
    return dissect.complex_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Crossing Rfq Message
  if code == 429 then
    return dissect.complex_crossing_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Cube Rfq Message
  if code == 472 then
    return dissect.complex_cube_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Status Message
  if code == 433 then
    return dissect.complex_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complex Quote Message
  if code == 511 then
    return dissect.refresh_complex_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complex Trade Message
  if code == 513 then
    return dissect.refresh_complex_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Symbol Definition Message
  if code == 439 then
    return dissect.complex_symbol_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Id Message
  if code == 455 then
    return dissect.stream_id_message(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if code == 1 then
    return dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, code)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 2

-- Display: Message Type
display.message_type = function(value)
  if value == 423 then
    return "Message Type: Complex Quote Message (423)"
  end
  if value == 425 then
    return "Message Type: Complex Trade Message (425)"
  end
  if value == 429 then
    return "Message Type: Complex Crossing Rfq Message (429)"
  end
  if value == 472 then
    return "Message Type: Complex Cube Rfq Message (472)"
  end
  if value == 433 then
    return "Message Type: Complex Status Message (433)"
  end
  if value == 511 then
    return "Message Type: Refresh Complex Quote Message (511)"
  end
  if value == 513 then
    return "Message Type: Refresh Complex Trade Message (513)"
  end
  if value == 439 then
    return "Message Type: Complex Symbol Definition Message (439)"
  end
  if value == 455 then
    return "Message Type: Stream Id Message (455)"
  end
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
size_of.message_size = 2

-- Display: Message Size
display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
dissect.message_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_size)
  local value = range:le_uint()
  local display = display.message_size(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.message_size, range, value, display)

  return offset + size_of.message_size
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 10 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 4)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 4

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 10 branches
  local code = buffer(index - 2, 2):le_uint()
  index = dissect.payload(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Nanoseconds
size_of.nanoseconds = 4

-- Display: Nanoseconds
display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
dissect.nanoseconds = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.nanoseconds)
  local value = range:le_uint()
  local display = display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.nanoseconds, range, value, display)

  return offset + size_of.nanoseconds
end

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.timestamp)
  local value = range:le_uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Size: Sequence Number
size_of.sequence_number = 4

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence_number)
  local value = range:le_uint()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.sequence_number, range, value, display)

  return offset + size_of.sequence_number
end

-- Size: Message Count
size_of.message_count = 1

-- Display: Message Count
display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
dissect.message_count = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
size_of.delivery_flag = 1

-- Display: Delivery Flag
display.delivery_flag = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Xdp Failover (10)"
  end
  if value == 11 then
    return "Delivery Flag: Original Message (11)"
  end
  if value == 12 then
    return "Delivery Flag: Sequence Number Reset Message (12)"
  end
  if value == 13 then
    return "Delivery Flag: One Retransmission Packet  (13)"
  end
  if value == 15 then
    return "Delivery Flag: Retransmission Sequence Message (15)"
  end
  if value == 17 then
    return "Delivery Flag: One Refresh Packet (17)"
  end
  if value == 18 then
    return "Delivery Flag: Refresh Sequence Start (18)"
  end
  if value == 19 then
    return "Delivery Flag: Refresh Sequence Message (19)"
  end
  if value == 20 then
    return "Delivery Flag: Refresh Sequence End (20)"
  end
  if value == 21 then
    return "Delivery Flag: Message Unavailable (21)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
dissect.delivery_flag = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.delivery_flag)
  local value = range:le_uint()
  local display = display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.delivery_flag, range, value, display)

  return offset + size_of.delivery_flag
end

-- Size: Packet Size
size_of.packet_size = 2

-- Display: Packet Size
display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
dissect.packet_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.packet_size)
  local value = range:le_uint()
  local display = display.packet_size(value, buffer, offset, packet, parent)

  parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.packet_size, range, value, display)

  return offset + size_of.packet_size
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index = dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index = dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 16)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nyse_options_complexfeed_xdp_v1_3_a.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end


  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_options_complexfeed_xdp_v1_3_a.init()
end

-- Dissector for Nyse Options ComplexFeed Xdp 1.3.a
function nyse_options_complexfeed_xdp_v1_3_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_options_complexfeed_xdp_v1_3_a.name

  -- Dissect protocol
  local protocol = parent:add(nyse_options_complexfeed_xdp_v1_3_a, buffer(), nyse_options_complexfeed_xdp_v1_3_a.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_options_complexfeed_xdp_v1_3_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_options_complexfeed_xdp_v1_3_a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Options ComplexFeed Xdp 1.3.a
local function nyse_options_complexfeed_xdp_v1_3_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_options_complexfeed_xdp_v1_3_a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_options_complexfeed_xdp_v1_3_a
  nyse_options_complexfeed_xdp_v1_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Nyse Options ComplexFeed Xdp 1.3.a Heuristic
nyse_options_complexfeed_xdp_v1_3_a:register_heuristic("udp", nyse_options_complexfeed_xdp_v1_3_a_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 1.3.a
-- Date: Wednesday, February 28, 2018
-- Script:
-- Source Version: 1.5.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
