-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Options ComplexFeed Xdp 1.3.a Protocol
local omi_nyse_options_complexfeed_xdp_v1_3_a = Proto("Nyse.Options.ComplexFeed.Xdp.v1.3.a.Lua", "Nyse Options ComplexFeed Xdp 1.3.a")

-- Protocol table
local nyse_options_complexfeed_xdp_v1_3_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Options ComplexFeed Xdp 1.3.a Fields
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.ask_customer_volume = ProtoField.new("Ask Customer Volume", "nyse.options.complexfeed.xdp.v1.3.a.askcustomervolume", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.ask_price = ProtoField.new("Ask Price", "nyse.options.complexfeed.xdp.v1.3.a.askprice", ftypes.INT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.options.complexfeed.xdp.v1.3.a.askvolume", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.bid_customer_volume = ProtoField.new("Bid Customer Volume", "nyse.options.complexfeed.xdp.v1.3.a.bidcustomervolume", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.bid_price = ProtoField.new("Bid Price", "nyse.options.complexfeed.xdp.v1.3.a.bidprice", ftypes.INT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.options.complexfeed.xdp.v1.3.a.bidvolume", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.options.complexfeed.xdp.v1.3.a.channelid", ftypes.UINT8)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_crossing_rfq_message = ProtoField.new("Complex Crossing Rfq Message", "nyse.options.complexfeed.xdp.v1.3.a.complexcrossingrfqmessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_cube_rfq_message = ProtoField.new("Complex Cube Rfq Message", "nyse.options.complexfeed.xdp.v1.3.a.complexcuberfqmessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_index = ProtoField.new("Complex Index", "nyse.options.complexfeed.xdp.v1.3.a.complexindex", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_quote_message = ProtoField.new("Complex Quote Message", "nyse.options.complexfeed.xdp.v1.3.a.complexquotemessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_status_message = ProtoField.new("Complex Status Message", "nyse.options.complexfeed.xdp.v1.3.a.complexstatusmessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_symbol = ProtoField.new("Complex Symbol", "nyse.options.complexfeed.xdp.v1.3.a.complexsymbol", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_symbol_definition_message = ProtoField.new("Complex Symbol Definition Message", "nyse.options.complexfeed.xdp.v1.3.a.complexsymboldefinitionmessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_trade_message = ProtoField.new("Complex Trade Message", "nyse.options.complexfeed.xdp.v1.3.a.complextrademessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.options.complexfeed.xdp.v1.3.a.deliveryflag", ftypes.UINT8)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.options.complexfeed.xdp.v1.3.a.haltcondition", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.leg_definition = ProtoField.new("Leg Definition", "nyse.options.complexfeed.xdp.v1.3.a.legdefinition", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "nyse.options.complexfeed.xdp.v1.3.a.legratioqty", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.leg_security_type = ProtoField.new("Leg Security Type", "nyse.options.complexfeed.xdp.v1.3.a.legsecuritytype", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.market_id = ProtoField.new("Market Id", "nyse.options.complexfeed.xdp.v1.3.a.marketid", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message = ProtoField.new("Message", "nyse.options.complexfeed.xdp.v1.3.a.message", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_count = ProtoField.new("Message Count", "nyse.options.complexfeed.xdp.v1.3.a.messagecount", ftypes.UINT8)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_header = ProtoField.new("Message Header", "nyse.options.complexfeed.xdp.v1.3.a.messageheader", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_size = ProtoField.new("Message Size", "nyse.options.complexfeed.xdp.v1.3.a.messagesize", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_type = ProtoField.new("Message Type", "nyse.options.complexfeed.xdp.v1.3.a.messagetype", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.options.complexfeed.xdp.v1.3.a.nanoseconds", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.no_of_legs = ProtoField.new("No Of Legs", "nyse.options.complexfeed.xdp.v1.3.a.nooflegs", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.packet = ProtoField.new("Packet", "nyse.options.complexfeed.xdp.v1.3.a.packet", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.options.complexfeed.xdp.v1.3.a.packetheader", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.options.complexfeed.xdp.v1.3.a.packetsize", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.payload = ProtoField.new("Payload", "nyse.options.complexfeed.xdp.v1.3.a.payload", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.price = ProtoField.new("Price", "nyse.options.complexfeed.xdp.v1.3.a.price", ftypes.INT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.product_id = ProtoField.new("Product Id", "nyse.options.complexfeed.xdp.v1.3.a.productid", ftypes.UINT8)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.options.complexfeed.xdp.v1.3.a.quotecondition", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.refresh_complex_quote_message = ProtoField.new("Refresh Complex Quote Message", "nyse.options.complexfeed.xdp.v1.3.a.refreshcomplexquotemessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.refresh_complex_trade_message = ProtoField.new("Refresh Complex Trade Message", "nyse.options.complexfeed.xdp.v1.3.a.refreshcomplextrademessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.options.complexfeed.xdp.v1.3.a.reserved1", ftypes.BYTES)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.options.complexfeed.xdp.v1.3.a.reserved2", ftypes.BYTES)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.security_status = ProtoField.new("Security Status", "nyse.options.complexfeed.xdp.v1.3.a.securitystatus", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.options.complexfeed.xdp.v1.3.a.sequencenumber", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.options.complexfeed.xdp.v1.3.a.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.side = ProtoField.new("Side", "nyse.options.complexfeed.xdp.v1.3.a.side", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.source_ns = ProtoField.new("Source Ns", "nyse.options.complexfeed.xdp.v1.3.a.sourcens", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.source_time = ProtoField.new("Source Time", "nyse.options.complexfeed.xdp.v1.3.a.sourcetime", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.options.complexfeed.xdp.v1.3.a.sourcetimens", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.stream_id = ProtoField.new("Stream Id", "nyse.options.complexfeed.xdp.v1.3.a.streamid", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.stream_id_message = ProtoField.new("Stream Id Message", "nyse.options.complexfeed.xdp.v1.3.a.streamidmessage", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.options.complexfeed.xdp.v1.3.a.symbolindex", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.options.complexfeed.xdp.v1.3.a.symbolseqnum", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.system_id = ProtoField.new("System Id", "nyse.options.complexfeed.xdp.v1.3.a.systemid", ftypes.UINT8)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.options.complexfeed.xdp.v1.3.a.timestamp", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.options.complexfeed.xdp.v1.3.a.tradecond1", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.trade_cond_2 = ProtoField.new("Trade Cond 2", "nyse.options.complexfeed.xdp.v1.3.a.tradecond2", ftypes.STRING)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.options.complexfeed.xdp.v1.3.a.tradeid", ftypes.UINT32)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.volume_2 = ProtoField.new("Volume 2", "nyse.options.complexfeed.xdp.v1.3.a.volume2", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.volume_4 = ProtoField.new("Volume 4", "nyse.options.complexfeed.xdp.v1.3.a.volume4", ftypes.UINT32)

-- Nyse Options ComplexFeed Xdp 1.3.a generated fields
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.leg_definition_index = ProtoField.new("Leg Definition Index", "nyse.options.complexfeed.xdp.v1.3.a.legdefinitionindex", ftypes.UINT16)
omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_index = ProtoField.new("Message Index", "nyse.options.complexfeed.xdp.v1.3.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_crossing_rfq_message = Pref.bool("Show Complex Crossing Rfq Message", show.complex_crossing_rfq_message, "Parse and add Complex Crossing Rfq Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_cube_rfq_message = Pref.bool("Show Complex Cube Rfq Message", show.complex_cube_rfq_message, "Parse and add Complex Cube Rfq Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_quote_message = Pref.bool("Show Complex Quote Message", show.complex_quote_message, "Parse and add Complex Quote Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_status_message = Pref.bool("Show Complex Status Message", show.complex_status_message, "Parse and add Complex Status Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_symbol_definition_message = Pref.bool("Show Complex Symbol Definition Message", show.complex_symbol_definition_message, "Parse and add Complex Symbol Definition Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_trade_message = Pref.bool("Show Complex Trade Message", show.complex_trade_message, "Parse and add Complex Trade Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_leg_definition = Pref.bool("Show Leg Definition", show.leg_definition, "Parse and add Leg Definition to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_quote_message = Pref.bool("Show Refresh Complex Quote Message", show.refresh_complex_quote_message, "Parse and add Refresh Complex Quote Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_trade_message = Pref.bool("Show Refresh Complex Trade Message", show.refresh_complex_trade_message, "Parse and add Refresh Complex Trade Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_stream_id_message = Pref.bool("Show Stream Id Message", show.stream_id_message, "Parse and add Stream Id Message to protocol tree")
omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_options_complexfeed_xdp_v1_3_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.complex_crossing_rfq_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_crossing_rfq_message then
    show.complex_crossing_rfq_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_crossing_rfq_message
    changed = true
  end
  if show.complex_cube_rfq_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_cube_rfq_message then
    show.complex_cube_rfq_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_cube_rfq_message
    changed = true
  end
  if show.complex_quote_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_quote_message then
    show.complex_quote_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_quote_message
    changed = true
  end
  if show.complex_status_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_status_message then
    show.complex_status_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_status_message
    changed = true
  end
  if show.complex_symbol_definition_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_symbol_definition_message then
    show.complex_symbol_definition_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_symbol_definition_message
    changed = true
  end
  if show.complex_trade_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_trade_message then
    show.complex_trade_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_complex_trade_message
    changed = true
  end
  if show.leg_definition ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_leg_definition then
    show.leg_definition = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_leg_definition
    changed = true
  end
  if show.message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message then
    show.message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message_header then
    show.message_header = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet then
    show.packet = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet_header then
    show.packet_header = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_complex_quote_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_quote_message then
    show.refresh_complex_quote_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_quote_message
    changed = true
  end
  if show.refresh_complex_trade_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_trade_message then
    show.refresh_complex_trade_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_refresh_complex_trade_message
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.stream_id_message ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_stream_id_message then
    show.stream_id_message = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_stream_id_message
    changed = true
  end
  if show.payload ~= omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_payload then
    show.payload = omi_nyse_options_complexfeed_xdp_v1_3_a.prefs.show_payload
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

-- Channel Id
nyse_options_complexfeed_xdp_v1_3_a.channel_id = {}

-- Size: Channel Id
nyse_options_complexfeed_xdp_v1_3_a.channel_id.size = 1

-- Display: Channel Id
nyse_options_complexfeed_xdp_v1_3_a.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_options_complexfeed_xdp_v1_3_a.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_options_complexfeed_xdp_v1_3_a.product_id = {}

-- Size: Product Id
nyse_options_complexfeed_xdp_v1_3_a.product_id.size = 1

-- Display: Product Id
nyse_options_complexfeed_xdp_v1_3_a.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_options_complexfeed_xdp_v1_3_a.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_options_complexfeed_xdp_v1_3_a.source_time_ns = {}

-- Size: Source Time Ns
nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_options_complexfeed_xdp_v1_3_a.source_time = {}

-- Size: Source Time
nyse_options_complexfeed_xdp_v1_3_a.source_time.size = 4

-- Display: Source Time
nyse_options_complexfeed_xdp_v1_3_a.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_options_complexfeed_xdp_v1_3_a.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Sequence Number Reset Message
nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message.size =
  nyse_options_complexfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_complexfeed_xdp_v1_3_a.product_id.size + 
  nyse_options_complexfeed_xdp_v1_3_a.channel_id.size

-- Display: Sequence Number Reset Message
nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_complexfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_options_complexfeed_xdp_v1_3_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_options_complexfeed_xdp_v1_3_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 2
nyse_options_complexfeed_xdp_v1_3_a.reserved_2 = {}

-- Size: Reserved 2
nyse_options_complexfeed_xdp_v1_3_a.reserved_2.size = 2

-- Display: Reserved 2
nyse_options_complexfeed_xdp_v1_3_a.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_options_complexfeed_xdp_v1_3_a.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_complexfeed_xdp_v1_3_a.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Stream Id
nyse_options_complexfeed_xdp_v1_3_a.stream_id = {}

-- Size: Stream Id
nyse_options_complexfeed_xdp_v1_3_a.stream_id.size = 2

-- Display: Stream Id
nyse_options_complexfeed_xdp_v1_3_a.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
nyse_options_complexfeed_xdp_v1_3_a.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Stream Id Message
nyse_options_complexfeed_xdp_v1_3_a.stream_id_message = {}

-- Size: Stream Id Message
nyse_options_complexfeed_xdp_v1_3_a.stream_id_message.size =
  nyse_options_complexfeed_xdp_v1_3_a.stream_id.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_2.size

-- Display: Stream Id Message
nyse_options_complexfeed_xdp_v1_3_a.stream_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Id Message
nyse_options_complexfeed_xdp_v1_3_a.stream_id_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = nyse_options_complexfeed_xdp_v1_3_a.stream_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_complexfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id Message
nyse_options_complexfeed_xdp_v1_3_a.stream_id_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_id_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.stream_id_message, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.stream_id_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.stream_id_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.stream_id_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Security Type
nyse_options_complexfeed_xdp_v1_3_a.leg_security_type = {}

-- Size: Leg Security Type
nyse_options_complexfeed_xdp_v1_3_a.leg_security_type.size = 1

-- Display: Leg Security Type
nyse_options_complexfeed_xdp_v1_3_a.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Options Series Leg (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity Stock Leg (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
nyse_options_complexfeed_xdp_v1_3_a.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_complexfeed_xdp_v1_3_a.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Side
nyse_options_complexfeed_xdp_v1_3_a.side = {}

-- Size: Side
nyse_options_complexfeed_xdp_v1_3_a.side.size = 1

-- Display: Side
nyse_options_complexfeed_xdp_v1_3_a.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_options_complexfeed_xdp_v1_3_a.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_complexfeed_xdp_v1_3_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.side, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
nyse_options_complexfeed_xdp_v1_3_a.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
nyse_options_complexfeed_xdp_v1_3_a.leg_ratio_qty.size = 2

-- Display: Leg Ratio Qty
nyse_options_complexfeed_xdp_v1_3_a.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
nyse_options_complexfeed_xdp_v1_3_a.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_options_complexfeed_xdp_v1_3_a.symbol_index = {}

-- Size: Symbol Index
nyse_options_complexfeed_xdp_v1_3_a.symbol_index.size = 4

-- Display: Symbol Index
nyse_options_complexfeed_xdp_v1_3_a.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_options_complexfeed_xdp_v1_3_a.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Leg Definition
nyse_options_complexfeed_xdp_v1_3_a.leg_definition = {}

-- Size: Leg Definition
nyse_options_complexfeed_xdp_v1_3_a.leg_definition.size =
  nyse_options_complexfeed_xdp_v1_3_a.symbol_index.size + 
  nyse_options_complexfeed_xdp_v1_3_a.leg_ratio_qty.size + 
  nyse_options_complexfeed_xdp_v1_3_a.side.size + 
  nyse_options_complexfeed_xdp_v1_3_a.leg_security_type.size

-- Display: Leg Definition
nyse_options_complexfeed_xdp_v1_3_a.leg_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Definition
nyse_options_complexfeed_xdp_v1_3_a.leg_definition.fields = function(buffer, offset, packet, parent, leg_definition_index)
  local index = offset

  -- Implicit Leg Definition Index
  if leg_definition_index ~= nil then
    local iteration = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.leg_definition_index, leg_definition_index)
    iteration:set_generated()
  end

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_options_complexfeed_xdp_v1_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 2 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = nyse_options_complexfeed_xdp_v1_3_a.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_options_complexfeed_xdp_v1_3_a.side.dissect(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Ascii String Enum with 2 values
  index, leg_security_type = nyse_options_complexfeed_xdp_v1_3_a.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
nyse_options_complexfeed_xdp_v1_3_a.leg_definition.dissect = function(buffer, offset, packet, parent, leg_definition_index)
  if show.leg_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.leg_definition, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.leg_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
  end
end

-- No Of Legs
nyse_options_complexfeed_xdp_v1_3_a.no_of_legs = {}

-- Size: No Of Legs
nyse_options_complexfeed_xdp_v1_3_a.no_of_legs.size = 2

-- Display: No Of Legs
nyse_options_complexfeed_xdp_v1_3_a.no_of_legs.display = function(value)
  return "No Of Legs: "..value
end

-- Dissect: No Of Legs
nyse_options_complexfeed_xdp_v1_3_a.no_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.no_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.no_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.no_of_legs, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_options_complexfeed_xdp_v1_3_a.reserved_1 = {}

-- Size: Reserved 1
nyse_options_complexfeed_xdp_v1_3_a.reserved_1.size = 1

-- Display: Reserved 1
nyse_options_complexfeed_xdp_v1_3_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_options_complexfeed_xdp_v1_3_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_complexfeed_xdp_v1_3_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- System Id
nyse_options_complexfeed_xdp_v1_3_a.system_id = {}

-- Size: System Id
nyse_options_complexfeed_xdp_v1_3_a.system_id.size = 1

-- Display: System Id
nyse_options_complexfeed_xdp_v1_3_a.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_options_complexfeed_xdp_v1_3_a.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.system_id, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_options_complexfeed_xdp_v1_3_a.market_id = {}

-- Size: Market Id
nyse_options_complexfeed_xdp_v1_3_a.market_id.size = 2

-- Display: Market Id
nyse_options_complexfeed_xdp_v1_3_a.market_id.display = function(value)
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
nyse_options_complexfeed_xdp_v1_3_a.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Complex Symbol
nyse_options_complexfeed_xdp_v1_3_a.complex_symbol = {}

-- Size: Complex Symbol
nyse_options_complexfeed_xdp_v1_3_a.complex_symbol.size = 21

-- Display: Complex Symbol
nyse_options_complexfeed_xdp_v1_3_a.complex_symbol.display = function(value)
  return "Complex Symbol: "..value
end

-- Dissect: Complex Symbol
nyse_options_complexfeed_xdp_v1_3_a.complex_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.complex_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_complexfeed_xdp_v1_3_a.complex_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_symbol, range, value, display)

  return offset + length, value
end

-- Complex Index
nyse_options_complexfeed_xdp_v1_3_a.complex_index = {}

-- Size: Complex Index
nyse_options_complexfeed_xdp_v1_3_a.complex_index.size = 4

-- Display: Complex Index
nyse_options_complexfeed_xdp_v1_3_a.complex_index.display = function(value)
  return "Complex Index: "..value
end

-- Dissect: Complex Index
nyse_options_complexfeed_xdp_v1_3_a.complex_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.complex_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.complex_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_index, range, value, display)

  return offset + length, value
end

-- Complex Symbol Definition Message
nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message = {}

-- Calculate size of: Complex Symbol Definition Message
nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_options_complexfeed_xdp_v1_3_a.complex_index.size

  index = index + nyse_options_complexfeed_xdp_v1_3_a.complex_symbol.size

  index = index + nyse_options_complexfeed_xdp_v1_3_a.channel_id.size

  index = index + nyse_options_complexfeed_xdp_v1_3_a.market_id.size

  index = index + nyse_options_complexfeed_xdp_v1_3_a.system_id.size

  index = index + nyse_options_complexfeed_xdp_v1_3_a.reserved_1.size

  index = index + nyse_options_complexfeed_xdp_v1_3_a.stream_id.size

  index = index + nyse_options_complexfeed_xdp_v1_3_a.no_of_legs.size

  index = index + nyse_options_complexfeed_xdp_v1_3_a.reserved_2.size

  -- Calculate field size from count
  local leg_definition_count = buffer(offset + index - 4, 2):le_uint()
  index = index + leg_definition_count * 8

  return index
end

-- Display: Complex Symbol Definition Message
nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Symbol Definition Message
nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index, complex_index = nyse_options_complexfeed_xdp_v1_3_a.complex_index.dissect(buffer, index, packet, parent)

  -- Complex Symbol: 21 Byte Ascii String
  index, complex_symbol = nyse_options_complexfeed_xdp_v1_3_a.complex_symbol.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_options_complexfeed_xdp_v1_3_a.channel_id.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_options_complexfeed_xdp_v1_3_a.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_options_complexfeed_xdp_v1_3_a.system_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_complexfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = nyse_options_complexfeed_xdp_v1_3_a.stream_id.dissect(buffer, index, packet, parent)

  -- No Of Legs: 2 Byte Unsigned Fixed Width Integer
  index, no_of_legs = nyse_options_complexfeed_xdp_v1_3_a.no_of_legs.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_complexfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Definition
  for leg_definition_index = 1, no_of_legs do
    index, leg_definition = nyse_options_complexfeed_xdp_v1_3_a.leg_definition.dissect(buffer, index, packet, parent, leg_definition_index)
  end

  return index
end

-- Dissect: Complex Symbol Definition Message
nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_symbol_definition_message then
    local length = nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_symbol_definition_message, range, display)
  end

  return nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message.fields(buffer, offset, packet, parent)
end

-- Trade Cond 2
nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2 = {}

-- Size: Trade Cond 2
nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2.size = 1

-- Display: Trade Cond 2
nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2.display = function(value)
  if value == "P" then
    return "Trade Cond 2: Complex Trade With Equity (P)"
  end
  if value == "L" then
    return "Trade Cond 2: Complex Trade (L)"
  end

  return "Trade Cond 2: Unknown("..value..")"
end

-- Dissect: Trade Cond 2
nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.trade_cond_2, range, value, display)

  return offset + length, value
end

-- Trade Cond 1
nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1 = {}

-- Size: Trade Cond 1
nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1.size = 1

-- Display: Trade Cond 1
nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1.display = function(value)
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
nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.trade_cond_1, range, value, display)

  return offset + length, value
end

-- Volume 4
nyse_options_complexfeed_xdp_v1_3_a.volume_4 = {}

-- Size: Volume 4
nyse_options_complexfeed_xdp_v1_3_a.volume_4.size = 4

-- Display: Volume 4
nyse_options_complexfeed_xdp_v1_3_a.volume_4.display = function(value)
  return "Volume 4: "..value
end

-- Dissect: Volume 4
nyse_options_complexfeed_xdp_v1_3_a.volume_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.volume_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.volume_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.volume_4, range, value, display)

  return offset + length, value
end

-- Price
nyse_options_complexfeed_xdp_v1_3_a.price = {}

-- Size: Price
nyse_options_complexfeed_xdp_v1_3_a.price.size = 4

-- Display: Price
nyse_options_complexfeed_xdp_v1_3_a.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_options_complexfeed_xdp_v1_3_a.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_complexfeed_xdp_v1_3_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.price, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_options_complexfeed_xdp_v1_3_a.trade_id = {}

-- Size: Trade Id
nyse_options_complexfeed_xdp_v1_3_a.trade_id.size = 4

-- Display: Trade Id
nyse_options_complexfeed_xdp_v1_3_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_options_complexfeed_xdp_v1_3_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Refresh Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message = {}

-- Size: Refresh Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message.size =
  nyse_options_complexfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_complexfeed_xdp_v1_3_a.complex_index.size + 
  nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_complexfeed_xdp_v1_3_a.trade_id.size + 
  nyse_options_complexfeed_xdp_v1_3_a.price.size + 
  nyse_options_complexfeed_xdp_v1_3_a.volume_4.size + 
  nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1.size + 
  nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_2.size

-- Display: Refresh Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_complexfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index, complex_index = nyse_options_complexfeed_xdp_v1_3_a.complex_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_options_complexfeed_xdp_v1_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_options_complexfeed_xdp_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Volume 4: 4 Byte Unsigned Fixed Width Integer
  index, volume_4 = nyse_options_complexfeed_xdp_v1_3_a.volume_4.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index, trade_cond_1 = nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index, trade_cond_2 = nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_complexfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_complex_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.refresh_complex_trade_message, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Condition
nyse_options_complexfeed_xdp_v1_3_a.quote_condition = {}

-- Size: Quote Condition
nyse_options_complexfeed_xdp_v1_3_a.quote_condition.size = 1

-- Display: Quote Condition
nyse_options_complexfeed_xdp_v1_3_a.quote_condition.display = function(value)
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
nyse_options_complexfeed_xdp_v1_3_a.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_complexfeed_xdp_v1_3_a.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Bid Customer Volume
nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume = {}

-- Size: Bid Customer Volume
nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume.size = 2

-- Display: Bid Customer Volume
nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume.display = function(value)
  return "Bid Customer Volume: "..value
end

-- Dissect: Bid Customer Volume
nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.bid_customer_volume, range, value, display)

  return offset + length, value
end

-- Ask Customer Volume
nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume = {}

-- Size: Ask Customer Volume
nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume.size = 2

-- Display: Ask Customer Volume
nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume.display = function(value)
  return "Ask Customer Volume: "..value
end

-- Dissect: Ask Customer Volume
nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.ask_customer_volume, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_options_complexfeed_xdp_v1_3_a.bid_volume = {}

-- Size: Bid Volume
nyse_options_complexfeed_xdp_v1_3_a.bid_volume.size = 2

-- Display: Bid Volume
nyse_options_complexfeed_xdp_v1_3_a.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_options_complexfeed_xdp_v1_3_a.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_options_complexfeed_xdp_v1_3_a.ask_volume = {}

-- Size: Ask Volume
nyse_options_complexfeed_xdp_v1_3_a.ask_volume.size = 2

-- Display: Ask Volume
nyse_options_complexfeed_xdp_v1_3_a.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_options_complexfeed_xdp_v1_3_a.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_options_complexfeed_xdp_v1_3_a.bid_price = {}

-- Size: Bid Price
nyse_options_complexfeed_xdp_v1_3_a.bid_price.size = 4

-- Display: Bid Price
nyse_options_complexfeed_xdp_v1_3_a.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_options_complexfeed_xdp_v1_3_a.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_complexfeed_xdp_v1_3_a.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Ask Price
nyse_options_complexfeed_xdp_v1_3_a.ask_price = {}

-- Size: Ask Price
nyse_options_complexfeed_xdp_v1_3_a.ask_price.size = 4

-- Display: Ask Price
nyse_options_complexfeed_xdp_v1_3_a.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_options_complexfeed_xdp_v1_3_a.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_complexfeed_xdp_v1_3_a.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Refresh Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message = {}

-- Size: Refresh Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message.size =
  nyse_options_complexfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_complexfeed_xdp_v1_3_a.complex_index.size + 
  nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_complexfeed_xdp_v1_3_a.ask_price.size + 
  nyse_options_complexfeed_xdp_v1_3_a.bid_price.size + 
  nyse_options_complexfeed_xdp_v1_3_a.ask_volume.size + 
  nyse_options_complexfeed_xdp_v1_3_a.bid_volume.size + 
  nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume.size + 
  nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume.size + 
  nyse_options_complexfeed_xdp_v1_3_a.quote_condition.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_1.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_2.size

-- Display: Refresh Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_complexfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index, complex_index = nyse_options_complexfeed_xdp_v1_3_a.complex_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index, ask_price = nyse_options_complexfeed_xdp_v1_3_a.ask_price.dissect(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = nyse_options_complexfeed_xdp_v1_3_a.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_options_complexfeed_xdp_v1_3_a.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_options_complexfeed_xdp_v1_3_a.bid_volume.dissect(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, ask_customer_volume = nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume.dissect(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, bid_customer_volume = nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_options_complexfeed_xdp_v1_3_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_complexfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_complexfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_complex_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.refresh_complex_quote_message, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Halt Condition
nyse_options_complexfeed_xdp_v1_3_a.halt_condition = {}

-- Size: Halt Condition
nyse_options_complexfeed_xdp_v1_3_a.halt_condition.size = 1

-- Display: Halt Condition
nyse_options_complexfeed_xdp_v1_3_a.halt_condition.display = function(value)
  return "Halt Condition: "..value
end

-- Dissect: Halt Condition
nyse_options_complexfeed_xdp_v1_3_a.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_complexfeed_xdp_v1_3_a.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_options_complexfeed_xdp_v1_3_a.security_status = {}

-- Size: Security Status
nyse_options_complexfeed_xdp_v1_3_a.security_status.size = 1

-- Display: Security Status
nyse_options_complexfeed_xdp_v1_3_a.security_status.display = function(value)
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
nyse_options_complexfeed_xdp_v1_3_a.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_complexfeed_xdp_v1_3_a.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.security_status, range, value, display)

  return offset + length, value
end

-- Complex Status Message
nyse_options_complexfeed_xdp_v1_3_a.complex_status_message = {}

-- Size: Complex Status Message
nyse_options_complexfeed_xdp_v1_3_a.complex_status_message.size =
  nyse_options_complexfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_complexfeed_xdp_v1_3_a.complex_index.size + 
  nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_complexfeed_xdp_v1_3_a.security_status.size + 
  nyse_options_complexfeed_xdp_v1_3_a.halt_condition.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_2.size

-- Display: Complex Status Message
nyse_options_complexfeed_xdp_v1_3_a.complex_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Status Message
nyse_options_complexfeed_xdp_v1_3_a.complex_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_complexfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index, complex_index = nyse_options_complexfeed_xdp_v1_3_a.complex_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 8 values
  index, security_status = nyse_options_complexfeed_xdp_v1_3_a.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index, halt_condition = nyse_options_complexfeed_xdp_v1_3_a.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_complexfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Status Message
nyse_options_complexfeed_xdp_v1_3_a.complex_status_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_status_message, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.complex_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.complex_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.complex_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Volume 2
nyse_options_complexfeed_xdp_v1_3_a.volume_2 = {}

-- Size: Volume 2
nyse_options_complexfeed_xdp_v1_3_a.volume_2.size = 2

-- Display: Volume 2
nyse_options_complexfeed_xdp_v1_3_a.volume_2.display = function(value)
  return "Volume 2: "..value
end

-- Dissect: Volume 2
nyse_options_complexfeed_xdp_v1_3_a.volume_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.volume_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.volume_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.volume_2, range, value, display)

  return offset + length, value
end

-- Source Ns
nyse_options_complexfeed_xdp_v1_3_a.source_ns = {}

-- Size: Source Ns
nyse_options_complexfeed_xdp_v1_3_a.source_ns.size = 4

-- Display: Source Ns
nyse_options_complexfeed_xdp_v1_3_a.source_ns.display = function(value)
  return "Source Ns: "..value
end

-- Dissect: Source Ns
nyse_options_complexfeed_xdp_v1_3_a.source_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.source_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.source_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.source_ns, range, value, display)

  return offset + length, value
end

-- Complex Cube Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message = {}

-- Size: Complex Cube Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message.size =
  nyse_options_complexfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_complexfeed_xdp_v1_3_a.source_ns.size + 
  nyse_options_complexfeed_xdp_v1_3_a.complex_index.size + 
  nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_complexfeed_xdp_v1_3_a.side.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_1.size + 
  nyse_options_complexfeed_xdp_v1_3_a.volume_2.size + 
  nyse_options_complexfeed_xdp_v1_3_a.price.size

-- Display: Complex Cube Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Cube Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_complexfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_ns = nyse_options_complexfeed_xdp_v1_3_a.source_ns.dissect(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index, complex_index = nyse_options_complexfeed_xdp_v1_3_a.complex_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_options_complexfeed_xdp_v1_3_a.side.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_complexfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Volume 2: 2 Byte Unsigned Fixed Width Integer
  index, volume_2 = nyse_options_complexfeed_xdp_v1_3_a.volume_2.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_options_complexfeed_xdp_v1_3_a.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Cube Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_cube_rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_cube_rfq_message, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Crossing Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message = {}

-- Size: Complex Crossing Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message.size =
  nyse_options_complexfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_complexfeed_xdp_v1_3_a.source_ns.size + 
  nyse_options_complexfeed_xdp_v1_3_a.complex_index.size + 
  nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_complexfeed_xdp_v1_3_a.side.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_1.size + 
  nyse_options_complexfeed_xdp_v1_3_a.volume_2.size + 
  nyse_options_complexfeed_xdp_v1_3_a.price.size

-- Display: Complex Crossing Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Crossing Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_complexfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_ns = nyse_options_complexfeed_xdp_v1_3_a.source_ns.dissect(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index, complex_index = nyse_options_complexfeed_xdp_v1_3_a.complex_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_options_complexfeed_xdp_v1_3_a.side.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_complexfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Volume 2: 2 Byte Unsigned Fixed Width Integer
  index, volume_2 = nyse_options_complexfeed_xdp_v1_3_a.volume_2.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_options_complexfeed_xdp_v1_3_a.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Crossing Rfq Message
nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_crossing_rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_crossing_rfq_message, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message = {}

-- Size: Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message.size =
  nyse_options_complexfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_complexfeed_xdp_v1_3_a.complex_index.size + 
  nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_complexfeed_xdp_v1_3_a.trade_id.size + 
  nyse_options_complexfeed_xdp_v1_3_a.price.size + 
  nyse_options_complexfeed_xdp_v1_3_a.volume_4.size + 
  nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1.size + 
  nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_2.size

-- Display: Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_complexfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index, complex_index = nyse_options_complexfeed_xdp_v1_3_a.complex_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_options_complexfeed_xdp_v1_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_options_complexfeed_xdp_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Volume 4: 4 Byte Unsigned Fixed Width Integer
  index, volume_4 = nyse_options_complexfeed_xdp_v1_3_a.volume_4.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index, trade_cond_1 = nyse_options_complexfeed_xdp_v1_3_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index, trade_cond_2 = nyse_options_complexfeed_xdp_v1_3_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_complexfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Trade Message
nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_trade_message, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message = {}

-- Size: Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message.size =
  nyse_options_complexfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_complexfeed_xdp_v1_3_a.complex_index.size + 
  nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_complexfeed_xdp_v1_3_a.ask_price.size + 
  nyse_options_complexfeed_xdp_v1_3_a.bid_price.size + 
  nyse_options_complexfeed_xdp_v1_3_a.ask_volume.size + 
  nyse_options_complexfeed_xdp_v1_3_a.bid_volume.size + 
  nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume.size + 
  nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume.size + 
  nyse_options_complexfeed_xdp_v1_3_a.quote_condition.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_1.size + 
  nyse_options_complexfeed_xdp_v1_3_a.reserved_2.size

-- Display: Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_complexfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_complexfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index, complex_index = nyse_options_complexfeed_xdp_v1_3_a.complex_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_complexfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index, ask_price = nyse_options_complexfeed_xdp_v1_3_a.ask_price.dissect(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = nyse_options_complexfeed_xdp_v1_3_a.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_options_complexfeed_xdp_v1_3_a.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_options_complexfeed_xdp_v1_3_a.bid_volume.dissect(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, ask_customer_volume = nyse_options_complexfeed_xdp_v1_3_a.ask_customer_volume.dissect(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, bid_customer_volume = nyse_options_complexfeed_xdp_v1_3_a.bid_customer_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_options_complexfeed_xdp_v1_3_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_complexfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_complexfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Quote Message
nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.complex_quote_message, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_options_complexfeed_xdp_v1_3_a.payload = {}

-- Size: Payload
nyse_options_complexfeed_xdp_v1_3_a.payload.size = function(buffer, offset, message_type)
  -- Size of Complex Quote Message
  if message_type == 423 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message.size
  end
  -- Size of Complex Trade Message
  if message_type == 425 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message.size
  end
  -- Size of Complex Crossing Rfq Message
  if message_type == 429 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message.size
  end
  -- Size of Complex Cube Rfq Message
  if message_type == 472 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message.size
  end
  -- Size of Complex Status Message
  if message_type == 433 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_status_message.size
  end
  -- Size of Refresh Complex Quote Message
  if message_type == 511 then
    return nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message.size
  end
  -- Size of Refresh Complex Trade Message
  if message_type == 513 then
    return nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message.size
  end
  -- Size of Complex Symbol Definition Message
  if message_type == 439 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message.size(buffer, offset)
  end
  -- Size of Stream Id Message
  if message_type == 455 then
    return nyse_options_complexfeed_xdp_v1_3_a.stream_id_message.size
  end
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message.size
  end

  return 0
end

-- Display: Payload
nyse_options_complexfeed_xdp_v1_3_a.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_options_complexfeed_xdp_v1_3_a.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Complex Quote Message
  if message_type == 423 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Trade Message
  if message_type == 425 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Crossing Rfq Message
  if message_type == 429 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_crossing_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Cube Rfq Message
  if message_type == 472 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_cube_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Status Message
  if message_type == 433 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complex Quote Message
  if message_type == 511 then
    return nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complex Trade Message
  if message_type == 513 then
    return nyse_options_complexfeed_xdp_v1_3_a.refresh_complex_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Symbol Definition Message
  if message_type == 439 then
    return nyse_options_complexfeed_xdp_v1_3_a.complex_symbol_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Id Message
  if message_type == 455 then
    return nyse_options_complexfeed_xdp_v1_3_a.stream_id_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_options_complexfeed_xdp_v1_3_a.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_options_complexfeed_xdp_v1_3_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_options_complexfeed_xdp_v1_3_a.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_options_complexfeed_xdp_v1_3_a.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_options_complexfeed_xdp_v1_3_a.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.payload, range, display)

  return nyse_options_complexfeed_xdp_v1_3_a.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nyse_options_complexfeed_xdp_v1_3_a.message_type = {}

-- Size: Message Type
nyse_options_complexfeed_xdp_v1_3_a.message_type.size = 2

-- Display: Message Type
nyse_options_complexfeed_xdp_v1_3_a.message_type.display = function(value)
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
nyse_options_complexfeed_xdp_v1_3_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_options_complexfeed_xdp_v1_3_a.message_size = {}

-- Size: Message Size
nyse_options_complexfeed_xdp_v1_3_a.message_size.size = 2

-- Display: Message Size
nyse_options_complexfeed_xdp_v1_3_a.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_options_complexfeed_xdp_v1_3_a.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
nyse_options_complexfeed_xdp_v1_3_a.message_header = {}

-- Size: Message Header
nyse_options_complexfeed_xdp_v1_3_a.message_header.size =
  nyse_options_complexfeed_xdp_v1_3_a.message_size.size + 
  nyse_options_complexfeed_xdp_v1_3_a.message_type.size

-- Display: Message Header
nyse_options_complexfeed_xdp_v1_3_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_options_complexfeed_xdp_v1_3_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_options_complexfeed_xdp_v1_3_a.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, message_type = nyse_options_complexfeed_xdp_v1_3_a.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_options_complexfeed_xdp_v1_3_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_header, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_options_complexfeed_xdp_v1_3_a.message = {}

-- Calculate size of: Message
nyse_options_complexfeed_xdp_v1_3_a.message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_options_complexfeed_xdp_v1_3_a.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + nyse_options_complexfeed_xdp_v1_3_a.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nyse_options_complexfeed_xdp_v1_3_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_options_complexfeed_xdp_v1_3_a.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_options_complexfeed_xdp_v1_3_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 10 branches
  index = nyse_options_complexfeed_xdp_v1_3_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_options_complexfeed_xdp_v1_3_a.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nyse_options_complexfeed_xdp_v1_3_a.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message, range, display)
  end

  return nyse_options_complexfeed_xdp_v1_3_a.message.fields(buffer, offset, packet, parent)
end

-- Nanoseconds
nyse_options_complexfeed_xdp_v1_3_a.nanoseconds = {}

-- Size: Nanoseconds
nyse_options_complexfeed_xdp_v1_3_a.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_options_complexfeed_xdp_v1_3_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_options_complexfeed_xdp_v1_3_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_options_complexfeed_xdp_v1_3_a.timestamp = {}

-- Size: Timestamp
nyse_options_complexfeed_xdp_v1_3_a.timestamp.size = 4

-- Display: Timestamp
nyse_options_complexfeed_xdp_v1_3_a.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_options_complexfeed_xdp_v1_3_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_options_complexfeed_xdp_v1_3_a.sequence_number = {}

-- Size: Sequence Number
nyse_options_complexfeed_xdp_v1_3_a.sequence_number.size = 4

-- Display: Sequence Number
nyse_options_complexfeed_xdp_v1_3_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_options_complexfeed_xdp_v1_3_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_options_complexfeed_xdp_v1_3_a.message_count = {}

-- Size: Message Count
nyse_options_complexfeed_xdp_v1_3_a.message_count.size = 1

-- Display: Message Count
nyse_options_complexfeed_xdp_v1_3_a.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_options_complexfeed_xdp_v1_3_a.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_options_complexfeed_xdp_v1_3_a.delivery_flag = {}

-- Size: Delivery Flag
nyse_options_complexfeed_xdp_v1_3_a.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_options_complexfeed_xdp_v1_3_a.delivery_flag.display = function(value)
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
    return "Delivery Flag: One Retransmission Packet (13)"
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
nyse_options_complexfeed_xdp_v1_3_a.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_options_complexfeed_xdp_v1_3_a.packet_size = {}

-- Size: Packet Size
nyse_options_complexfeed_xdp_v1_3_a.packet_size.size = 2

-- Display: Packet Size
nyse_options_complexfeed_xdp_v1_3_a.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_options_complexfeed_xdp_v1_3_a.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_complexfeed_xdp_v1_3_a.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_complexfeed_xdp_v1_3_a.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_options_complexfeed_xdp_v1_3_a.packet_header = {}

-- Size: Packet Header
nyse_options_complexfeed_xdp_v1_3_a.packet_header.size =
  nyse_options_complexfeed_xdp_v1_3_a.packet_size.size + 
  nyse_options_complexfeed_xdp_v1_3_a.delivery_flag.size + 
  nyse_options_complexfeed_xdp_v1_3_a.message_count.size + 
  nyse_options_complexfeed_xdp_v1_3_a.sequence_number.size + 
  nyse_options_complexfeed_xdp_v1_3_a.timestamp.size + 
  nyse_options_complexfeed_xdp_v1_3_a.nanoseconds.size

-- Display: Packet Header
nyse_options_complexfeed_xdp_v1_3_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_options_complexfeed_xdp_v1_3_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_options_complexfeed_xdp_v1_3_a.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_options_complexfeed_xdp_v1_3_a.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_options_complexfeed_xdp_v1_3_a.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_options_complexfeed_xdp_v1_3_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_options_complexfeed_xdp_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_options_complexfeed_xdp_v1_3_a.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_options_complexfeed_xdp_v1_3_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_options_complexfeed_xdp_v1_3_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_complexfeed_xdp_v1_3_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_complexfeed_xdp_v1_3_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_options_complexfeed_xdp_v1_3_a.packet = {}

-- Dissect Packet
nyse_options_complexfeed_xdp_v1_3_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_options_complexfeed_xdp_v1_3_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = nyse_options_complexfeed_xdp_v1_3_a.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_options_complexfeed_xdp_v1_3_a.init()
end

-- Dissector for Nyse Options ComplexFeed Xdp 1.3.a
function omi_nyse_options_complexfeed_xdp_v1_3_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_options_complexfeed_xdp_v1_3_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_options_complexfeed_xdp_v1_3_a, buffer(), omi_nyse_options_complexfeed_xdp_v1_3_a.description, "("..buffer:len().." Bytes)")
  return nyse_options_complexfeed_xdp_v1_3_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_options_complexfeed_xdp_v1_3_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_options_complexfeed_xdp_v1_3_a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Options ComplexFeed Xdp 1.3.a
local function omi_nyse_options_complexfeed_xdp_v1_3_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_options_complexfeed_xdp_v1_3_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_options_complexfeed_xdp_v1_3_a
  omi_nyse_options_complexfeed_xdp_v1_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Options ComplexFeed Xdp 1.3.a
omi_nyse_options_complexfeed_xdp_v1_3_a:register_heuristic("udp", omi_nyse_options_complexfeed_xdp_v1_3_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.3.a
--   Date: Wednesday, February 28, 2018
--   Specification: XDP_Options_Client_Specification_v1.3a.pdf
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
