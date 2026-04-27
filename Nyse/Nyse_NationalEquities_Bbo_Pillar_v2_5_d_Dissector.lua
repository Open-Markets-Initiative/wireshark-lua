-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NationalEquities Bbo Pillar 2.5.d Protocol
local omi_nyse_nationalequities_bbo_pillar_v2_5_d = Proto("Nyse.NationalEquities.Bbo.Pillar.v2.5.d.Lua", "Nyse NationalEquities Bbo Pillar 2.5.d")

-- Protocol table
local nyse_nationalequities_bbo_pillar_v2_5_d = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NationalEquities Bbo Pillar 2.5.d Fields
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ask_price = ProtoField.new("Ask Price", "nyse.nationalequities.bbo.pillar.v2.5.d.askprice", ftypes.DOUBLE)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.nationalequities.bbo.pillar.v2.5.d.askvolume", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.nationalequities.bbo.pillar.v2.5.d.beginseqnum", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.bid_price = ProtoField.new("Bid Price", "nyse.nationalequities.bbo.pillar.v2.5.d.bidprice", ftypes.DOUBLE)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.nationalequities.bbo.pillar.v2.5.d.bidvolume", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.channel_id = ProtoField.new("Channel Id", "nyse.nationalequities.bbo.pillar.v2.5.d.channelid", ftypes.UINT8)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.nationalequities.bbo.pillar.v2.5.d.currentrefreshpkt", ftypes.UINT16)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.nationalequities.bbo.pillar.v2.5.d.deliveryflag", ftypes.UINT8)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.nationalequities.bbo.pillar.v2.5.d.endseqnum", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.nationalequities.bbo.pillar.v2.5.d.exchangecode", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.nationalequities.bbo.pillar.v2.5.d.haltcondition", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.id = ProtoField.new("Id", "nyse.nationalequities.bbo.pillar.v2.5.d.id", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.nationalequities.bbo.pillar.v2.5.d.lastseqnum", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.nationalequities.bbo.pillar.v2.5.d.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.lot_size = ProtoField.new("Lot Size", "nyse.nationalequities.bbo.pillar.v2.5.d.lotsize", ftypes.UINT16)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.market_id = ProtoField.new("Market Id", "nyse.nationalequities.bbo.pillar.v2.5.d.marketid", ftypes.UINT16)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.market_state = ProtoField.new("Market State", "nyse.nationalequities.bbo.pillar.v2.5.d.marketstate", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message = ProtoField.new("Message", "nyse.nationalequities.bbo.pillar.v2.5.d.message", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_header = ProtoField.new("Message Header", "nyse.nationalequities.bbo.pillar.v2.5.d.messageheader", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_size = ProtoField.new("Message Size", "nyse.nationalequities.bbo.pillar.v2.5.d.messagesize", ftypes.UINT16)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_type = ProtoField.new("Message Type", "nyse.nationalequities.bbo.pillar.v2.5.d.messagetype", ftypes.UINT16)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.mpv = ProtoField.new("Mpv", "nyse.nationalequities.bbo.pillar.v2.5.d.mpv", ftypes.UINT16)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.nationalequities.bbo.pillar.v2.5.d.nanoseconds", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.nationalequities.bbo.pillar.v2.5.d.nextsourceseqnum", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.nationalequities.bbo.pillar.v2.5.d.numbermsgs", ftypes.UINT8)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.packet = ProtoField.new("Packet", "nyse.nationalequities.bbo.pillar.v2.5.d.packet", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.packet_header = ProtoField.new("Packet Header", "nyse.nationalequities.bbo.pillar.v2.5.d.packetheader", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.nationalequities.bbo.pillar.v2.5.d.pktsize", ftypes.UINT16)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.nationalequities.bbo.pillar.v2.5.d.prevcloseprice", ftypes.DOUBLE)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.nationalequities.bbo.pillar.v2.5.d.prevclosevolume", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.price_1 = ProtoField.new("Price 1", "nyse.nationalequities.bbo.pillar.v2.5.d.price1", ftypes.DOUBLE)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.price_2 = ProtoField.new("Price 2", "nyse.nationalequities.bbo.pillar.v2.5.d.price2", ftypes.DOUBLE)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.nationalequities.bbo.pillar.v2.5.d.priceresolution", ftypes.UINT8)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.nationalequities.bbo.pillar.v2.5.d.pricescalecode", ftypes.UINT8)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.product_id = ProtoField.new("Product Id", "nyse.nationalequities.bbo.pillar.v2.5.d.productid", ftypes.UINT8)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.nationalequities.bbo.pillar.v2.5.d.quotecondition", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.nationalequities.bbo.pillar.v2.5.d.requestseqnum", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.nationalequities.bbo.pillar.v2.5.d.reserved1", ftypes.UINT8)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.nationalequities.bbo.pillar.v2.5.d.reserved2", ftypes.UINT16)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.nationalequities.bbo.pillar.v2.5.d.reserved4", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.nationalequities.bbo.pillar.v2.5.d.retransmitmethod", ftypes.UINT8)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.round_lot = ProtoField.new("Round Lot", "nyse.nationalequities.bbo.pillar.v2.5.d.roundlot", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.nationalequities.bbo.pillar.v2.5.d.rpiindicator", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.seconds = ProtoField.new("Seconds", "nyse.nationalequities.bbo.pillar.v2.5.d.seconds", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.security_status = ProtoField.new("Security Status", "nyse.nationalequities.bbo.pillar.v2.5.d.securitystatus", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.security_type = ProtoField.new("Security Type", "nyse.nationalequities.bbo.pillar.v2.5.d.securitytype", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.send_time = ProtoField.new("Send Time", "nyse.nationalequities.bbo.pillar.v2.5.d.sendtime", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.seq_num = ProtoField.new("Seq Num", "nyse.nationalequities.bbo.pillar.v2.5.d.seqnum", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.session_state = ProtoField.new("Session State", "nyse.nationalequities.bbo.pillar.v2.5.d.sessionstate", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.source_id = ProtoField.new("Source Id", "nyse.nationalequities.bbo.pillar.v2.5.d.sourceid", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.source_time = ProtoField.new("Source Time", "nyse.nationalequities.bbo.pillar.v2.5.d.sourcetime", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.nationalequities.bbo.pillar.v2.5.d.sourcetimens", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ssr_state = ProtoField.new("Ssr State", "nyse.nationalequities.bbo.pillar.v2.5.d.ssrstate", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.nationalequities.bbo.pillar.v2.5.d.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.nationalequities.bbo.pillar.v2.5.d.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.status = ProtoField.new("Status", "nyse.nationalequities.bbo.pillar.v2.5.d.status", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol = ProtoField.new("Symbol", "nyse.nationalequities.bbo.pillar.v2.5.d.symbol", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.nationalequities.bbo.pillar.v2.5.d.symbolindex", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.nationalequities.bbo.pillar.v2.5.d.symbolseqnum", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.system_id = ProtoField.new("System Id", "nyse.nationalequities.bbo.pillar.v2.5.d.systemid", ftypes.UINT8)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.time = ProtoField.new("Time", "nyse.nationalequities.bbo.pillar.v2.5.d.time", ftypes.UINT32)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.nationalequities.bbo.pillar.v2.5.d.totalrefreshpkts", ftypes.UINT16)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.nationalequities.bbo.pillar.v2.5.d.unitoftrade", ftypes.UINT16)

-- Nyse NationalEquities Pillar Bbo 2.5.d Application Messages
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.nationalequities.bbo.pillar.v2.5.d.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.nationalequities.bbo.pillar.v2.5.d.messageunavailablemessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.quote_message = ProtoField.new("Quote Message", "nyse.nationalequities.bbo.pillar.v2.5.d.quotemessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.nationalequities.bbo.pillar.v2.5.d.refreshheadermessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.nationalequities.bbo.pillar.v2.5.d.refreshrequestmessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.nationalequities.bbo.pillar.v2.5.d.requestresponsemessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.nationalequities.bbo.pillar.v2.5.d.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.nationalequities.bbo.pillar.v2.5.d.securitystatusmessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.nationalequities.bbo.pillar.v2.5.d.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.nationalequities.bbo.pillar.v2.5.d.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.nationalequities.bbo.pillar.v2.5.d.symbolclearmessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.nationalequities.bbo.pillar.v2.5.d.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.nationalequities.bbo.pillar.v2.5.d.symbolindexmappingrequestmessage", ftypes.STRING)

-- Nyse NationalEquities Bbo Pillar 2.5.d generated fields
omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_index = ProtoField.new("Message Index", "nyse.nationalequities.bbo.pillar.v2.5.d.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse NationalEquities Bbo Pillar 2.5.d Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.send_time = true
show.message_index = true

-- Register Nyse NationalEquities Bbo Pillar 2.5.d Show Options
omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")
omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_application_messages then
    show.application_messages = omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_application_messages
  end
  if show.message ~= omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_message then
    show.message = omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_message
  end
  if show.message_header ~= omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_message_header then
    show.message_header = omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_packet then
    show.packet = omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_packet_header then
    show.packet_header = omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_packet_header
  end
  if show.send_time ~= omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_send_time then
    show.send_time = omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_send_time
  end
  if show.message_index ~= omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_message_index then
    show.message_index = omi_nyse_nationalequities_bbo_pillar_v2_5_d.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Nyse NationalEquities Bbo Pillar 2.5.d Fields
-----------------------------------------------------------------------

-- Ask Price
nyse_nationalequities_bbo_pillar_v2_5_d.ask_price = {}

-- Size: Ask Price
nyse_nationalequities_bbo_pillar_v2_5_d.ask_price.size = 4

-- Display: Ask Price
nyse_nationalequities_bbo_pillar_v2_5_d.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nyse_nationalequities_bbo_pillar_v2_5_d.ask_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Ask Price
nyse_nationalequities_bbo_pillar_v2_5_d.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_bbo_pillar_v2_5_d.ask_price.translate(raw)
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_nationalequities_bbo_pillar_v2_5_d.ask_volume = {}

-- Size: Ask Volume
nyse_nationalequities_bbo_pillar_v2_5_d.ask_volume.size = 4

-- Display: Ask Volume
nyse_nationalequities_bbo_pillar_v2_5_d.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_nationalequities_bbo_pillar_v2_5_d.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_nationalequities_bbo_pillar_v2_5_d.bid_price = {}

-- Size: Bid Price
nyse_nationalequities_bbo_pillar_v2_5_d.bid_price.size = 4

-- Display: Bid Price
nyse_nationalequities_bbo_pillar_v2_5_d.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nyse_nationalequities_bbo_pillar_v2_5_d.bid_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Bid Price
nyse_nationalequities_bbo_pillar_v2_5_d.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_bbo_pillar_v2_5_d.bid_price.translate(raw)
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_nationalequities_bbo_pillar_v2_5_d.bid_volume = {}

-- Size: Bid Volume
nyse_nationalequities_bbo_pillar_v2_5_d.bid_volume.size = 4

-- Display: Bid Volume
nyse_nationalequities_bbo_pillar_v2_5_d.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_nationalequities_bbo_pillar_v2_5_d.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_nationalequities_bbo_pillar_v2_5_d.channel_id = {}

-- Size: Channel Id
nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.size = 1

-- Display: Channel Id
nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_nationalequities_bbo_pillar_v2_5_d.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_nationalequities_bbo_pillar_v2_5_d.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_nationalequities_bbo_pillar_v2_5_d.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_nationalequities_bbo_pillar_v2_5_d.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_nationalequities_bbo_pillar_v2_5_d.delivery_flag = {}

-- Size: Delivery Flag
nyse_nationalequities_bbo_pillar_v2_5_d.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_nationalequities_bbo_pillar_v2_5_d.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Pillar Failover (10)"
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
nyse_nationalequities_bbo_pillar_v2_5_d.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num = {}

-- Size: End Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.size = 4

-- Display: End Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_nationalequities_bbo_pillar_v2_5_d.exchange_code = {}

-- Size: Exchange Code
nyse_nationalequities_bbo_pillar_v2_5_d.exchange_code.size = 1

-- Display: Exchange Code
nyse_nationalequities_bbo_pillar_v2_5_d.exchange_code.display = function(value)
  if value == "A" then
    return "Exchange Code: Nyse American (A)"
  end
  if value == "L" then
    return "Exchange Code: Ltse (L)"
  end
  if value == "M" then
    return "Exchange Code: Nyse Texas (M)"
  end
  if value == "N" then
    return "Exchange Code: Nyse (N)"
  end
  if value == "P" then
    return "Exchange Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Exchange Code: Nasdaq (Q)"
  end
  if value == "V" then
    return "Exchange Code: Iex (V)"
  end
  if value == "Z" then
    return "Exchange Code: Cboe (Z)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_nationalequities_bbo_pillar_v2_5_d.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_nationalequities_bbo_pillar_v2_5_d.halt_condition = {}

-- Size: Halt Condition
nyse_nationalequities_bbo_pillar_v2_5_d.halt_condition.size = 1

-- Display: Halt Condition
nyse_nationalequities_bbo_pillar_v2_5_d.halt_condition.display = function(value)
  if value == "~" then
    return "Halt Condition: Security Not Delayedhalted (~)"
  end
  if value == "D" then
    return "Halt Condition: News Released News Dissemination (D)"
  end
  if value == "I" then
    return "Halt Condition: Order Imbalance (I)"
  end
  if value == "P" then
    return "Halt Condition: News Pending (P)"
  end
  if value == "M" then
    return "Halt Condition: Luld Pause (M)"
  end
  if value == "X" then
    return "Halt Condition: Equipment Changeover (X)"
  end
  if value == "A" then
    return "Halt Condition: Additional Information Requested (A)"
  end
  if value == "C" then
    return "Halt Condition: Regulatory Concern (C)"
  end
  if value == "E" then
    return "Halt Condition: Merger Effective (E)"
  end
  if value == "F" then
    return "Halt Condition: Etf Component Prices Not Available (F)"
  end
  if value == "N" then
    return "Halt Condition: Corporate Action (N)"
  end
  if value == "O" then
    return "Halt Condition: New Security Offering (O)"
  end
  if value == "V" then
    return "Halt Condition: Intraday Indicative Value Not Available (V)"
  end
  if value == "6" then
    return "Halt Condition: Suspend (6)"
  end
  if value == "1" then
    return "Halt Condition: Market Wide Circuit Breaker Halt Level 1 (1)"
  end
  if value == "2" then
    return "Halt Condition: Market Wide Circuit Breaker Halt Level 2 (2)"
  end
  if value == "3" then
    return "Halt Condition: Market Wide Circuit Breaker Halt Level 3 (3)"
  end

  return "Halt Condition: Unknown("..value..")"
end

-- Dissect: Halt Condition
nyse_nationalequities_bbo_pillar_v2_5_d.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Id
nyse_nationalequities_bbo_pillar_v2_5_d.id = {}

-- Size: Id
nyse_nationalequities_bbo_pillar_v2_5_d.id.size = 4

-- Display: Id
nyse_nationalequities_bbo_pillar_v2_5_d.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_nationalequities_bbo_pillar_v2_5_d.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.id, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.last_seq_num = {}

-- Size: Last Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_nationalequities_bbo_pillar_v2_5_d.lot_size = {}

-- Size: Lot Size
nyse_nationalequities_bbo_pillar_v2_5_d.lot_size.size = 2

-- Display: Lot Size
nyse_nationalequities_bbo_pillar_v2_5_d.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_nationalequities_bbo_pillar_v2_5_d.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_nationalequities_bbo_pillar_v2_5_d.market_id = {}

-- Size: Market Id
nyse_nationalequities_bbo_pillar_v2_5_d.market_id.size = 2

-- Display: Market Id
nyse_nationalequities_bbo_pillar_v2_5_d.market_id.display = function(value)
  if value == 1 then
    return "Market Id: Nyse Equities (1)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca Equities (3)"
  end
  if value == 4 then
    return "Market Id: Nyse Arca Options (4)"
  end
  if value == 5 then
    return "Market Id: Nyse Bonds (5)"
  end
  if value == 8 then
    return "Market Id: Nyse American Options (8)"
  end
  if value == 9 then
    return "Market Id: Nyse American Equities (9)"
  end
  if value == 10 then
    return "Market Id: Nyse National Equities (10)"
  end
  if value == 11 then
    return "Market Id: Nyse Texas Equities (11)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_nationalequities_bbo_pillar_v2_5_d.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market State
nyse_nationalequities_bbo_pillar_v2_5_d.market_state = {}

-- Size: Market State
nyse_nationalequities_bbo_pillar_v2_5_d.market_state.size = 1

-- Display: Market State
nyse_nationalequities_bbo_pillar_v2_5_d.market_state.display = function(value)
  if value == "P" then
    return "Market State: Preopening (P)"
  end
  if value == "E" then
    return "Market State: Early Session (E)"
  end
  if value == "O" then
    return "Market State: Core Session (O)"
  end
  if value == "L" then
    return "Market State: Late Session Non Nyse Only (L)"
  end
  if value == "X" then
    return "Market State: Closed (X)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
nyse_nationalequities_bbo_pillar_v2_5_d.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_nationalequities_bbo_pillar_v2_5_d.message_size = {}

-- Size: Message Size
nyse_nationalequities_bbo_pillar_v2_5_d.message_size.size = 2

-- Display: Message Size
nyse_nationalequities_bbo_pillar_v2_5_d.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_nationalequities_bbo_pillar_v2_5_d.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_nationalequities_bbo_pillar_v2_5_d.message_type = {}

-- Size: Message Type
nyse_nationalequities_bbo_pillar_v2_5_d.message_type.size = 2

-- Display: Message Type
nyse_nationalequities_bbo_pillar_v2_5_d.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Source Time Reference Message (2)"
  end
  if value == 3 then
    return "Message Type: Symbol Index Mapping Message (3)"
  end
  if value == 32 then
    return "Message Type: Symbol Clear Message (32)"
  end
  if value == 34 then
    return "Message Type: Security Status Message (34)"
  end
  if value == 10 then
    return "Message Type: Retransmission Request Message (10)"
  end
  if value == 13 then
    return "Message Type: Symbol Index Mapping Request Message (13)"
  end
  if value == 15 then
    return "Message Type: Refresh Request Message (15)"
  end
  if value == 31 then
    return "Message Type: Message Unavailable Message (31)"
  end
  if value == 35 then
    return "Message Type: Refresh Header Message (35)"
  end
  if value == 11 then
    return "Message Type: Request Response Message (11)"
  end
  if value == 12 then
    return "Message Type: Heartbeat Response Message (12)"
  end
  if value == 140 then
    return "Message Type: Quote Message (140)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_nationalequities_bbo_pillar_v2_5_d.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_nationalequities_bbo_pillar_v2_5_d.mpv = {}

-- Size: Mpv
nyse_nationalequities_bbo_pillar_v2_5_d.mpv.size = 2

-- Display: Mpv
nyse_nationalequities_bbo_pillar_v2_5_d.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_nationalequities_bbo_pillar_v2_5_d.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_nationalequities_bbo_pillar_v2_5_d.nanoseconds = {}

-- Size: Nanoseconds
nyse_nationalequities_bbo_pillar_v2_5_d.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_nationalequities_bbo_pillar_v2_5_d.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_nationalequities_bbo_pillar_v2_5_d.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_nationalequities_bbo_pillar_v2_5_d.number_msgs = {}

-- Size: Number Msgs
nyse_nationalequities_bbo_pillar_v2_5_d.number_msgs.size = 1

-- Display: Number Msgs
nyse_nationalequities_bbo_pillar_v2_5_d.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_nationalequities_bbo_pillar_v2_5_d.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_nationalequities_bbo_pillar_v2_5_d.pkt_size = {}

-- Size: Pkt Size
nyse_nationalequities_bbo_pillar_v2_5_d.pkt_size.size = 2

-- Display: Pkt Size
nyse_nationalequities_bbo_pillar_v2_5_d.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_nationalequities_bbo_pillar_v2_5_d.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price = {}

-- Size: Prev Close Price
nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Translate: Prev Close Price
nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Prev Close Price
nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price.translate(raw)
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_nationalequities_bbo_pillar_v2_5_d.price_1 = {}

-- Size: Price 1
nyse_nationalequities_bbo_pillar_v2_5_d.price_1.size = 4

-- Display: Price 1
nyse_nationalequities_bbo_pillar_v2_5_d.price_1.display = function(value)
  return "Price 1: "..value
end

-- Translate: Price 1
nyse_nationalequities_bbo_pillar_v2_5_d.price_1.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 1
nyse_nationalequities_bbo_pillar_v2_5_d.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_bbo_pillar_v2_5_d.price_1.translate(raw)
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_nationalequities_bbo_pillar_v2_5_d.price_2 = {}

-- Size: Price 2
nyse_nationalequities_bbo_pillar_v2_5_d.price_2.size = 4

-- Display: Price 2
nyse_nationalequities_bbo_pillar_v2_5_d.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nyse_nationalequities_bbo_pillar_v2_5_d.price_2.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 2
nyse_nationalequities_bbo_pillar_v2_5_d.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_bbo_pillar_v2_5_d.price_2.translate(raw)
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_nationalequities_bbo_pillar_v2_5_d.price_resolution = {}

-- Size: Price Resolution
nyse_nationalequities_bbo_pillar_v2_5_d.price_resolution.size = 1

-- Display: Price Resolution
nyse_nationalequities_bbo_pillar_v2_5_d.price_resolution.display = function(value)
  return "Price Resolution: "..value
end

-- Dissect: Price Resolution
nyse_nationalequities_bbo_pillar_v2_5_d.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_nationalequities_bbo_pillar_v2_5_d.price_scale_code = {}

-- Size: Price Scale Code
nyse_nationalequities_bbo_pillar_v2_5_d.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_nationalequities_bbo_pillar_v2_5_d.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_nationalequities_bbo_pillar_v2_5_d.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_nationalequities_bbo_pillar_v2_5_d.product_id = {}

-- Size: Product Id
nyse_nationalequities_bbo_pillar_v2_5_d.product_id.size = 1

-- Display: Product Id
nyse_nationalequities_bbo_pillar_v2_5_d.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_nationalequities_bbo_pillar_v2_5_d.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.product_id, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_nationalequities_bbo_pillar_v2_5_d.quote_condition = {}

-- Size: Quote Condition
nyse_nationalequities_bbo_pillar_v2_5_d.quote_condition.size = 1

-- Display: Quote Condition
nyse_nationalequities_bbo_pillar_v2_5_d.quote_condition.display = function(value)
  if value == "R" then
    return "Quote Condition: Regular Quote (R)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_nationalequities_bbo_pillar_v2_5_d.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.request_seq_num = {}

-- Size: Request Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_1 = {}

-- Size: Reserved 1
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_1.size = 1

-- Display: Reserved 1
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_2 = {}

-- Size: Reserved 2
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_2.size = 2

-- Display: Reserved 2
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_4 = {}

-- Size: Reserved 4
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_4.size = 4

-- Display: Reserved 4
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_nationalequities_bbo_pillar_v2_5_d.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_nationalequities_bbo_pillar_v2_5_d.retransmit_method = {}

-- Size: Retransmit Method
nyse_nationalequities_bbo_pillar_v2_5_d.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_nationalequities_bbo_pillar_v2_5_d.retransmit_method.display = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_nationalequities_bbo_pillar_v2_5_d.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_nationalequities_bbo_pillar_v2_5_d.round_lot = {}

-- Size: Round Lot
nyse_nationalequities_bbo_pillar_v2_5_d.round_lot.size = 1

-- Display: Round Lot
nyse_nationalequities_bbo_pillar_v2_5_d.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_nationalequities_bbo_pillar_v2_5_d.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Rpi Indicator
nyse_nationalequities_bbo_pillar_v2_5_d.rpi_indicator = {}

-- Size: Rpi Indicator
nyse_nationalequities_bbo_pillar_v2_5_d.rpi_indicator.size = 1

-- Display: Rpi Indicator
nyse_nationalequities_bbo_pillar_v2_5_d.rpi_indicator.display = function(value)
  if value == " " then
    return "Rpi Indicator: No Retail Interest Default (<whitespace>)"
  end
  if value == "A" then
    return "Rpi Indicator: Retail Interest On Bid Side (A)"
  end
  if value == "B" then
    return "Rpi Indicator: Retail Interest On Offer Side (B)"
  end
  if value == "C" then
    return "Rpi Indicator: Retail Interest On The Bid And Offer Side (C)"
  end

  return "Rpi Indicator: Unknown("..value..")"
end

-- Dissect: Rpi Indicator
nyse_nationalequities_bbo_pillar_v2_5_d.rpi_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.rpi_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.rpi_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_nationalequities_bbo_pillar_v2_5_d.seconds = {}

-- Size: Seconds
nyse_nationalequities_bbo_pillar_v2_5_d.seconds.size = 4

-- Display: Seconds
nyse_nationalequities_bbo_pillar_v2_5_d.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_nationalequities_bbo_pillar_v2_5_d.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_nationalequities_bbo_pillar_v2_5_d.security_status = {}

-- Size: Security Status
nyse_nationalequities_bbo_pillar_v2_5_d.security_status.size = 1

-- Display: Security Status
nyse_nationalequities_bbo_pillar_v2_5_d.security_status.display = function(value)
  if value == "4" then
    return "Security Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Security Status: Resume (5)"
  end
  if value == "6" then
    return "Security Status: Suspend (6)"
  end
  if value == "A" then
    return "Security Status: Short Sale Restriction Activated Day 1 (A)"
  end
  if value == "C" then
    return "Security Status: Short Sale Restriction Continued Day 2 (C)"
  end
  if value == "D" then
    return "Security Status: Short Sale Restriction Deactivated (D)"
  end
  if value == "P" then
    return "Security Status: Preopening (P)"
  end
  if value == "B" then
    return "Security Status: Begin Accepting Orders (B)"
  end
  if value == "E" then
    return "Security Status: Early Session (E)"
  end
  if value == "O" then
    return "Security Status: Core Session (O)"
  end
  if value == "L" then
    return "Security Status: Late Session Non Nyse Only (L)"
  end
  if value == "X" then
    return "Security Status: Closed (X)"
  end
  if value == "I" then
    return "Security Status: Halt Resume Price Indication (I)"
  end
  if value == "G" then
    return "Security Status: Pre Opening Price Indication (G)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
nyse_nationalequities_bbo_pillar_v2_5_d.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_nationalequities_bbo_pillar_v2_5_d.security_type = {}

-- Size: Security Type
nyse_nationalequities_bbo_pillar_v2_5_d.security_type.size = 1

-- Display: Security Type
nyse_nationalequities_bbo_pillar_v2_5_d.security_type.display = function(value)
  if value == "A" then
    return "Security Type: Adr (A)"
  end
  if value == "C" then
    return "Security Type: Common Stock (C)"
  end
  if value == "D" then
    return "Security Type: Debentures (D)"
  end
  if value == "E" then
    return "Security Type: Etf (E)"
  end
  if value == "F" then
    return "Security Type: Foreign (F)"
  end
  if value == "H" then
    return "Security Type: Us Depositary Shares (H)"
  end
  if value == "I" then
    return "Security Type: Units (I)"
  end
  if value == "L" then
    return "Security Type: Index Linked Notes (L)"
  end
  if value == "M" then
    return "Security Type: Miscliquid Trust (M)"
  end
  if value == "O" then
    return "Security Type: Ordinary Shares (O)"
  end
  if value == "P" then
    return "Security Type: Preferred Stock (P)"
  end
  if value == "R" then
    return "Security Type: Rights (R)"
  end
  if value == "S" then
    return "Security Type: Shares Of Beneficiary Interest (S)"
  end
  if value == "T" then
    return "Security Type: Test (T)"
  end
  if value == "U" then
    return "Security Type: Closed End Fund (U)"
  end
  if value == "W" then
    return "Security Type: Warrant (W)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_nationalequities_bbo_pillar_v2_5_d.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.seq_num = {}

-- Size: Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.seq_num.size = 4

-- Display: Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session State
nyse_nationalequities_bbo_pillar_v2_5_d.session_state = {}

-- Size: Session State
nyse_nationalequities_bbo_pillar_v2_5_d.session_state.size = 1

-- Display: Session State
nyse_nationalequities_bbo_pillar_v2_5_d.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_nationalequities_bbo_pillar_v2_5_d.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.session_state, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_nationalequities_bbo_pillar_v2_5_d.source_id = {}

-- Size: Source Id
nyse_nationalequities_bbo_pillar_v2_5_d.source_id.size = 10

-- Display: Source Id
nyse_nationalequities_bbo_pillar_v2_5_d.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_nationalequities_bbo_pillar_v2_5_d.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.source_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nationalequities_bbo_pillar_v2_5_d.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_nationalequities_bbo_pillar_v2_5_d.source_time = {}

-- Size: Source Time
nyse_nationalequities_bbo_pillar_v2_5_d.source_time.size = 4

-- Display: Source Time
nyse_nationalequities_bbo_pillar_v2_5_d.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_nationalequities_bbo_pillar_v2_5_d.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns = {}

-- Size: Source Time Ns
nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_state = {}

-- Size: Ssr State
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_state.size = 1

-- Display: Ssr State
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_exchange_id.display = function(value)
  if value == "A" then
    return "Ssr Triggering Exchange Id: Nyse American (A)"
  end
  if value == "B" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Ssr Triggering Exchange Id: Nyse National (C)"
  end
  if value == "D" then
    return "Ssr Triggering Exchange Id: Finra (D)"
  end
  if value == "G" then
    return "Ssr Triggering Exchange Id: 24 X (G)"
  end
  if value == "H" then
    return "Ssr Triggering Exchange Id: Miami Peral (H)"
  end
  if value == "I" then
    return "Ssr Triggering Exchange Id: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Ssr Triggering Exchange Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Ssr Triggering Exchange Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Ssr Triggering Exchange Id: Ltse (L)"
  end
  if value == "M" then
    return "Ssr Triggering Exchange Id: Nyse Texas (M)"
  end
  if value == "N" then
    return "Ssr Triggering Exchange Id: Nyse (N)"
  end
  if value == "P" then
    return "Ssr Triggering Exchange Id: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Ssr Triggering Exchange Id: Nasdaq (Q)"
  end
  if value == "T" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx (T)"
  end
  if value == "U" then
    return "Ssr Triggering Exchange Id: Memx (U)"
  end
  if value == "V" then
    return "Ssr Triggering Exchange Id: Iex (V)"
  end
  if value == "W" then
    return "Ssr Triggering Exchange Id: Cbsx (W)"
  end
  if value == "X" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx Psx (X)"
  end
  if value == "Y" then
    return "Ssr Triggering Exchange Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Ssr Triggering Exchange Id: Cboe Bzx (Z)"
  end

  return "Ssr Triggering Exchange Id: Unknown("..value..")"
end

-- Dissect: Ssr Triggering Exchange Id
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_nationalequities_bbo_pillar_v2_5_d.status = {}

-- Size: Status
nyse_nationalequities_bbo_pillar_v2_5_d.status.size = 1

-- Display: Status
nyse_nationalequities_bbo_pillar_v2_5_d.status.display = function(value)
  if value == "0" then
    return "Status: Message Was Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected Due To An Invalid Source Id (1)"
  end
  if value == "3" then
    return "Status: Rejected Due To Maximum Sequence Range See Threshold Limits (3)"
  end
  if value == "4" then
    return "Status: Rejected Due To Maximum Request In A Day (4)"
  end
  if value == "5" then
    return "Status: Rejected Due To Maximum Number Of Refresh Requests In A Day (5)"
  end
  if value == "6" then
    return "Status: Rejected Request Message Seq Num Ttl Time To Live Is Too Old Use Refresh To Recover Current State If Necessary (6)"
  end
  if value == "7" then
    return "Status: Rejected Due To An Invalid Channel Id (7)"
  end
  if value == "8" then
    return "Status: Rejected Due To An Invalid Product Id (8)"
  end
  if value == "9" then
    return "Status: Rejected Due To 1 Invalid Msg Type Or 2 Mismatch Between Msg Type And Msg Size (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_nationalequities_bbo_pillar_v2_5_d.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_nationalequities_bbo_pillar_v2_5_d.symbol = {}

-- Size: Symbol
nyse_nationalequities_bbo_pillar_v2_5_d.symbol.size = 11

-- Display: Symbol
nyse_nationalequities_bbo_pillar_v2_5_d.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_nationalequities_bbo_pillar_v2_5_d.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.symbol.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nationalequities_bbo_pillar_v2_5_d.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index = {}

-- Size: Symbol Index
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.size = 4

-- Display: Symbol Index
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_nationalequities_bbo_pillar_v2_5_d.system_id = {}

-- Size: System Id
nyse_nationalequities_bbo_pillar_v2_5_d.system_id.size = 1

-- Display: System Id
nyse_nationalequities_bbo_pillar_v2_5_d.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_nationalequities_bbo_pillar_v2_5_d.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_nationalequities_bbo_pillar_v2_5_d.time = {}

-- Size: Time
nyse_nationalequities_bbo_pillar_v2_5_d.time.size = 4

-- Display: Time
nyse_nationalequities_bbo_pillar_v2_5_d.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_nationalequities_bbo_pillar_v2_5_d.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.time, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_nationalequities_bbo_pillar_v2_5_d.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_nationalequities_bbo_pillar_v2_5_d.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_nationalequities_bbo_pillar_v2_5_d.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_nationalequities_bbo_pillar_v2_5_d.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_nationalequities_bbo_pillar_v2_5_d.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_nationalequities_bbo_pillar_v2_5_d.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_nationalequities_bbo_pillar_v2_5_d.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_nationalequities_bbo_pillar_v2_5_d.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_bbo_pillar_v2_5_d.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_bbo_pillar_v2_5_d.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.unit_of_trade, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse NationalEquities Bbo Pillar 2.5.d
-----------------------------------------------------------------------

-- Quote Message
nyse_nationalequities_bbo_pillar_v2_5_d.quote_message = {}

-- Size: Quote Message
nyse_nationalequities_bbo_pillar_v2_5_d.quote_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.ask_price.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.ask_volume.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.bid_price.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.bid_volume.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.quote_condition.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.rpi_indicator.size

-- Display: Quote Message
nyse_nationalequities_bbo_pillar_v2_5_d.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
nyse_nationalequities_bbo_pillar_v2_5_d.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary
  index, ask_price = nyse_nationalequities_bbo_pillar_v2_5_d.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: Binary
  index, ask_volume = nyse_nationalequities_bbo_pillar_v2_5_d.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary
  index, bid_price = nyse_nationalequities_bbo_pillar_v2_5_d.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: Binary
  index, bid_volume = nyse_nationalequities_bbo_pillar_v2_5_d.bid_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_nationalequities_bbo_pillar_v2_5_d.quote_condition.dissect(buffer, index, packet, parent)

  -- Rpi Indicator: ASCII
  index, rpi_indicator = nyse_nationalequities_bbo_pillar_v2_5_d.rpi_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
nyse_nationalequities_bbo_pillar_v2_5_d.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.quote_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.heartbeat_response_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.source_id.size

-- Display: Heartbeat Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_bbo_pillar_v2_5_d.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.request_response_message = {}

-- Size: Request Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.request_response_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.request_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.source_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.product_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.status.size

-- Display: Request Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_bbo_pillar_v2_5_d.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_bbo_pillar_v2_5_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_nationalequities_bbo_pillar_v2_5_d.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_nationalequities_bbo_pillar_v2_5_d.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.request_response_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_header_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.current_refresh_pkt.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.total_refresh_pkts.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.last_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_nationalequities_bbo_pillar_v2_5_d.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_nationalequities_bbo_pillar_v2_5_d.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_nationalequities_bbo_pillar_v2_5_d.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_nationalequities_bbo_pillar_v2_5_d.message_unavailable_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.product_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.size

-- Display: Message Unavailable Message
nyse_nationalequities_bbo_pillar_v2_5_d.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_nationalequities_bbo_pillar_v2_5_d.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_bbo_pillar_v2_5_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_nationalequities_bbo_pillar_v2_5_d.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_request_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.source_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.product_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.size

-- Display: Refresh Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_bbo_pillar_v2_5_d.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_bbo_pillar_v2_5_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_request_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.source_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.product_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_bbo_pillar_v2_5_d.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_bbo_pillar_v2_5_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_nationalequities_bbo_pillar_v2_5_d.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.retransmission_request_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.source_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.product_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.size

-- Display: Retransmission Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_bbo_pillar_v2_5_d.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_bbo_pillar_v2_5_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_nationalequities_bbo_pillar_v2_5_d.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_nationalequities_bbo_pillar_v2_5_d.security_status_message = {}

-- Size: Security Status Message
nyse_nationalequities_bbo_pillar_v2_5_d.security_status_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.source_time.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.security_status.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.halt_condition.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.reserved_4.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.price_1.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.price_2.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_exchange_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_volume.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.time.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.ssr_state.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.market_state.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.session_state.size

-- Display: Security Status Message
nyse_nationalequities_bbo_pillar_v2_5_d.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_nationalequities_bbo_pillar_v2_5_d.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_bbo_pillar_v2_5_d.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_nationalequities_bbo_pillar_v2_5_d.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_nationalequities_bbo_pillar_v2_5_d.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_nationalequities_bbo_pillar_v2_5_d.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_nationalequities_bbo_pillar_v2_5_d.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_nationalequities_bbo_pillar_v2_5_d.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_nationalequities_bbo_pillar_v2_5_d.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_nationalequities_bbo_pillar_v2_5_d.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_nationalequities_bbo_pillar_v2_5_d.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_nationalequities_bbo_pillar_v2_5_d.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_nationalequities_bbo_pillar_v2_5_d.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_nationalequities_bbo_pillar_v2_5_d.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.security_status_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_clear_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.source_time.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_bbo_pillar_v2_5_d.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.reserved_1.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.market_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.system_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.exchange_code.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.price_scale_code.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.security_type.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.lot_size.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_volume.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.price_resolution.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.round_lot.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.mpv.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.unit_of_trade.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_nationalequities_bbo_pillar_v2_5_d.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_nationalequities_bbo_pillar_v2_5_d.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_nationalequities_bbo_pillar_v2_5_d.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_nationalequities_bbo_pillar_v2_5_d.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nationalequities_bbo_pillar_v2_5_d.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_nationalequities_bbo_pillar_v2_5_d.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_nationalequities_bbo_pillar_v2_5_d.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_nationalequities_bbo_pillar_v2_5_d.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_nationalequities_bbo_pillar_v2_5_d.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_nationalequities_bbo_pillar_v2_5_d.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_nationalequities_bbo_pillar_v2_5_d.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_nationalequities_bbo_pillar_v2_5_d.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: Binary
  index, unit_of_trade = nyse_nationalequities_bbo_pillar_v2_5_d.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_nationalequities_bbo_pillar_v2_5_d.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_nationalequities_bbo_pillar_v2_5_d.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_nationalequities_bbo_pillar_v2_5_d.source_time_reference_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.source_time.size

-- Display: Source Time Reference Message
nyse_nationalequities_bbo_pillar_v2_5_d.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_nationalequities_bbo_pillar_v2_5_d.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_nationalequities_bbo_pillar_v2_5_d.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_bbo_pillar_v2_5_d.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_nationalequities_bbo_pillar_v2_5_d.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_nationalequities_bbo_pillar_v2_5_d.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_nationalequities_bbo_pillar_v2_5_d.sequence_number_reset_message.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.source_time.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.product_id.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.size

-- Display: Sequence Number Reset Message
nyse_nationalequities_bbo_pillar_v2_5_d.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_nationalequities_bbo_pillar_v2_5_d.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_bbo_pillar_v2_5_d.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_bbo_pillar_v2_5_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_bbo_pillar_v2_5_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_bbo_pillar_v2_5_d.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_nationalequities_bbo_pillar_v2_5_d.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_nationalequities_bbo_pillar_v2_5_d.payload = {}

-- Dissect: Payload
nyse_nationalequities_bbo_pillar_v2_5_d.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_type == 140 then
    return nyse_nationalequities_bbo_pillar_v2_5_d.quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_nationalequities_bbo_pillar_v2_5_d.message_header = {}

-- Size: Message Header
nyse_nationalequities_bbo_pillar_v2_5_d.message_header.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.message_size.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.message_type.size

-- Display: Message Header
nyse_nationalequities_bbo_pillar_v2_5_d.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_nationalequities_bbo_pillar_v2_5_d.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_nationalequities_bbo_pillar_v2_5_d.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = nyse_nationalequities_bbo_pillar_v2_5_d.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_nationalequities_bbo_pillar_v2_5_d.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_header, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_nationalequities_bbo_pillar_v2_5_d.message = {}

-- Display: Message
nyse_nationalequities_bbo_pillar_v2_5_d.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_nationalequities_bbo_pillar_v2_5_d.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_nationalequities_bbo_pillar_v2_5_d.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = nyse_nationalequities_bbo_pillar_v2_5_d.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_nationalequities_bbo_pillar_v2_5_d.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.message, buffer(offset, 0))
    local current = nyse_nationalequities_bbo_pillar_v2_5_d.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nationalequities_bbo_pillar_v2_5_d.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_nationalequities_bbo_pillar_v2_5_d.send_time = {}

-- Size: Send Time
nyse_nationalequities_bbo_pillar_v2_5_d.send_time.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.seconds.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.nanoseconds.size

-- Display: Send Time
nyse_nationalequities_bbo_pillar_v2_5_d.send_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Send Time
nyse_nationalequities_bbo_pillar_v2_5_d.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_nationalequities_bbo_pillar_v2_5_d.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_nationalequities_bbo_pillar_v2_5_d.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_nationalequities_bbo_pillar_v2_5_d.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.send_time, buffer(offset, 0))
    local index, value = nyse_nationalequities_bbo_pillar_v2_5_d.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_nationalequities_bbo_pillar_v2_5_d.packet_header = {}

-- Size: Packet Header
nyse_nationalequities_bbo_pillar_v2_5_d.packet_header.size =
  nyse_nationalequities_bbo_pillar_v2_5_d.pkt_size.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.delivery_flag.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.number_msgs.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.seq_num.size + 
  nyse_nationalequities_bbo_pillar_v2_5_d.send_time.size

-- Display: Packet Header
nyse_nationalequities_bbo_pillar_v2_5_d.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_nationalequities_bbo_pillar_v2_5_d.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_nationalequities_bbo_pillar_v2_5_d.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_nationalequities_bbo_pillar_v2_5_d.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_nationalequities_bbo_pillar_v2_5_d.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_nationalequities_bbo_pillar_v2_5_d.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_nationalequities_bbo_pillar_v2_5_d.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_nationalequities_bbo_pillar_v2_5_d.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d.fields.packet_header, buffer(offset, 0))
    local index = nyse_nationalequities_bbo_pillar_v2_5_d.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_bbo_pillar_v2_5_d.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_bbo_pillar_v2_5_d.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_nationalequities_bbo_pillar_v2_5_d.packet = {}

-- Verify size of Udp packet
nyse_nationalequities_bbo_pillar_v2_5_d.packet.requiredsize = function(buffer)

  return true
end

-- Dissect Packet
nyse_nationalequities_bbo_pillar_v2_5_d.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_nationalequities_bbo_pillar_v2_5_d.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_nationalequities_bbo_pillar_v2_5_d.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_nationalequities_bbo_pillar_v2_5_d.init()
end

-- Dissector for Nyse NationalEquities Bbo Pillar 2.5.d
function omi_nyse_nationalequities_bbo_pillar_v2_5_d.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_nationalequities_bbo_pillar_v2_5_d.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nationalequities_bbo_pillar_v2_5_d, buffer(), omi_nyse_nationalequities_bbo_pillar_v2_5_d.description, "("..buffer:len().." Bytes)")
  return nyse_nationalequities_bbo_pillar_v2_5_d.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_nationalequities_bbo_pillar_v2_5_d)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse NationalEquities Bbo Pillar 2.5.d (Udp)
local function omi_nyse_nationalequities_bbo_pillar_v2_5_d_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nationalequities_bbo_pillar_v2_5_d.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nationalequities_bbo_pillar_v2_5_d
  omi_nyse_nationalequities_bbo_pillar_v2_5_d.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse NationalEquities Bbo Pillar 2.5.d
omi_nyse_nationalequities_bbo_pillar_v2_5_d:register_heuristic("udp", omi_nyse_nationalequities_bbo_pillar_v2_5_d_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.5.d
--   Date: Friday, March 28, 2025
--   Specification: NYSE_Pillar_BBO_Client_Specification.pdf
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
