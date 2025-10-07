-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities Bbo Pillar 2.5.b Protocol
local omi_nyse_equities_bbo_pillar_v2_5_b = Proto("Nyse.Equities.Bbo.Pillar.v2.5.b.Lua", "Nyse Equities Bbo Pillar 2.5.b")

-- Protocol table
local nyse_equities_bbo_pillar_v2_5_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities Bbo Pillar 2.5.b Fields
omi_nyse_equities_bbo_pillar_v2_5_b.fields.ask_price = ProtoField.new("Ask Price", "nyse.equities.bbo.pillar.v2.5.b.askprice", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.equities.bbo.pillar.v2.5.b.askvolume", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.equities.bbo.pillar.v2.5.b.beginseqnum", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.bid_price = ProtoField.new("Bid Price", "nyse.equities.bbo.pillar.v2.5.b.bidprice", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.equities.bbo.pillar.v2.5.b.bidvolume", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.channel_id = ProtoField.new("Channel Id", "nyse.equities.bbo.pillar.v2.5.b.channelid", ftypes.UINT8)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.equities.bbo.pillar.v2.5.b.currentrefreshpkt", ftypes.UINT16)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.bbo.pillar.v2.5.b.deliveryflag", ftypes.UINT8)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.equities.bbo.pillar.v2.5.b.endseqnum", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.equities.bbo.pillar.v2.5.b.exchangecode", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.equities.bbo.pillar.v2.5.b.haltcondition", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.id = ProtoField.new("Id", "nyse.equities.bbo.pillar.v2.5.b.id", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.equities.bbo.pillar.v2.5.b.lastseqnum", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.equities.bbo.pillar.v2.5.b.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.lot_size = ProtoField.new("Lot Size", "nyse.equities.bbo.pillar.v2.5.b.lotsize", ftypes.UINT16)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.market_id = ProtoField.new("Market Id", "nyse.equities.bbo.pillar.v2.5.b.marketid", ftypes.UINT16)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.market_state = ProtoField.new("Market State", "nyse.equities.bbo.pillar.v2.5.b.marketstate", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.message = ProtoField.new("Message", "nyse.equities.bbo.pillar.v2.5.b.message", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_count = ProtoField.new("Message Count", "nyse.equities.bbo.pillar.v2.5.b.messagecount", ftypes.UINT8)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_header = ProtoField.new("Message Header", "nyse.equities.bbo.pillar.v2.5.b.messageheader", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_size = ProtoField.new("Message Size", "nyse.equities.bbo.pillar.v2.5.b.messagesize", ftypes.UINT16)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_type = ProtoField.new("Message Type", "nyse.equities.bbo.pillar.v2.5.b.messagetype", ftypes.UINT16)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.mpv = ProtoField.new("Mpv", "nyse.equities.bbo.pillar.v2.5.b.mpv", ftypes.UINT16)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.bbo.pillar.v2.5.b.nanoseconds", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.equities.bbo.pillar.v2.5.b.nextsourceseqnum", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.packet = ProtoField.new("Packet", "nyse.equities.bbo.pillar.v2.5.b.packet", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.bbo.pillar.v2.5.b.packetheader", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.bbo.pillar.v2.5.b.packetsize", ftypes.UINT16)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.payload = ProtoField.new("Payload", "nyse.equities.bbo.pillar.v2.5.b.payload", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.equities.bbo.pillar.v2.5.b.prevcloseprice", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.equities.bbo.pillar.v2.5.b.prevclosevolume", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.price_1 = ProtoField.new("Price 1", "nyse.equities.bbo.pillar.v2.5.b.price1", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.price_2 = ProtoField.new("Price 2", "nyse.equities.bbo.pillar.v2.5.b.price2", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.equities.bbo.pillar.v2.5.b.priceresolution", ftypes.UINT8)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.equities.bbo.pillar.v2.5.b.pricescalecode", ftypes.UINT8)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.product_id = ProtoField.new("Product Id", "nyse.equities.bbo.pillar.v2.5.b.productid", ftypes.UINT8)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.equities.bbo.pillar.v2.5.b.quotecondition", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.equities.bbo.pillar.v2.5.b.requestseqnum", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.equities.bbo.pillar.v2.5.b.reserved1", ftypes.BYTES)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.equities.bbo.pillar.v2.5.b.reserved2", ftypes.BYTES)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.equities.bbo.pillar.v2.5.b.reserved4", ftypes.BYTES)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.equities.bbo.pillar.v2.5.b.retransmitmethod", ftypes.UINT8)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.round_lot = ProtoField.new("Round Lot", "nyse.equities.bbo.pillar.v2.5.b.roundlot", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.equities.bbo.pillar.v2.5.b.rpiindicator", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.security_status = ProtoField.new("Security Status", "nyse.equities.bbo.pillar.v2.5.b.securitystatus", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.security_type = ProtoField.new("Security Type", "nyse.equities.bbo.pillar.v2.5.b.securitytype", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.bbo.pillar.v2.5.b.sequencenumber", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.session_state = ProtoField.new("Session State", "nyse.equities.bbo.pillar.v2.5.b.sessionstate", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.source_id = ProtoField.new("Source Id", "nyse.equities.bbo.pillar.v2.5.b.sourceid", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.source_time = ProtoField.new("Source Time", "nyse.equities.bbo.pillar.v2.5.b.sourcetime", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.bbo.pillar.v2.5.b.sourcetimens", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.ssr_state = ProtoField.new("Ssr State", "nyse.equities.bbo.pillar.v2.5.b.ssrstate", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.equities.bbo.pillar.v2.5.b.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.equities.bbo.pillar.v2.5.b.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.status = ProtoField.new("Status", "nyse.equities.bbo.pillar.v2.5.b.status", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol = ProtoField.new("Symbol", "nyse.equities.bbo.pillar.v2.5.b.symbol", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.bbo.pillar.v2.5.b.symbolindex", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.bbo.pillar.v2.5.b.symbolseqnum", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.system_id = ProtoField.new("System Id", "nyse.equities.bbo.pillar.v2.5.b.systemid", ftypes.UINT8)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.time = ProtoField.new("Time", "nyse.equities.bbo.pillar.v2.5.b.time", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.bbo.pillar.v2.5.b.timestamp", ftypes.UINT32)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.equities.bbo.pillar.v2.5.b.totalrefreshpkts", ftypes.UINT16)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.equities.bbo.pillar.v2.5.b.unitoftrade", ftypes.UINT16)

-- Nyse Equities Bbo Pillar 2.5.b messages
omi_nyse_equities_bbo_pillar_v2_5_b.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.equities.bbo.pillar.v2.5.b.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.equities.bbo.pillar.v2.5.b.messageunavailablemessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.quote_message = ProtoField.new("Quote Message", "nyse.equities.bbo.pillar.v2.5.b.quotemessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.equities.bbo.pillar.v2.5.b.refreshheadermessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.equities.bbo.pillar.v2.5.b.refreshrequestmessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.equities.bbo.pillar.v2.5.b.requestresponsemessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.equities.bbo.pillar.v2.5.b.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.equities.bbo.pillar.v2.5.b.securitystatusmessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.equities.bbo.pillar.v2.5.b.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.equities.bbo.pillar.v2.5.b.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.equities.bbo.pillar.v2.5.b.symbolclearmessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.equities.bbo.pillar.v2.5.b.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.equities.bbo.pillar.v2.5.b.symbolindexmappingrequestmessage", ftypes.STRING)

-- Nyse Equities Bbo Pillar 2.5.b generated fields
omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_index = ProtoField.new("Message Index", "nyse.equities.bbo.pillar.v2.5.b.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Equities Bbo Pillar 2.5.b Element Dissection Options
show.heartbeat_response_message = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.packet = true
show.packet_header = true
show.quote_message = true
show.refresh_header_message = true
show.refresh_request_message = true
show.request_response_message = true
show.retransmission_request_message = true
show.security_status_message = true
show.sequence_number_reset_message = true
show.source_time_reference_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.payload = false

-- Register Nyse Equities Bbo Pillar 2.5.b Show Options
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_source_time_reference_message = Pref.bool("Show Source Time Reference Message", show.source_time_reference_message, "Parse and add Source Time Reference Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_equities_bbo_pillar_v2_5_b.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat_response_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_message then
    show.message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_header then
    show.message_header = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_unavailable_message then
    show.message_unavailable_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet then
    show.packet = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet_header then
    show.packet_header = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet_header
    changed = true
  end
  if show.quote_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_quote_message then
    show.quote_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_quote_message
    changed = true
  end
  if show.refresh_header_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_header_message then
    show.refresh_header_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_request_message then
    show.refresh_request_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_request_response_message then
    show.request_response_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_retransmission_request_message then
    show.retransmission_request_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_security_status_message then
    show.security_status_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.source_time_reference_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_source_time_reference_message then
    show.source_time_reference_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_source_time_reference_message
    changed = true
  end
  if show.symbol_clear_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_clear_message then
    show.symbol_clear_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.payload ~= omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_payload then
    show.payload = omi_nyse_equities_bbo_pillar_v2_5_b.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Equities Bbo Pillar 2.5.b
-----------------------------------------------------------------------

-- Rpi Indicator
nyse_equities_bbo_pillar_v2_5_b.rpi_indicator = {}

-- Size: Rpi Indicator
nyse_equities_bbo_pillar_v2_5_b.rpi_indicator.size = 1

-- Display: Rpi Indicator
nyse_equities_bbo_pillar_v2_5_b.rpi_indicator.display = function(value)
  if value == " " then
    return "Rpi Indicator: No Retail Interest (<whitespace>)"
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
nyse_equities_bbo_pillar_v2_5_b.rpi_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.rpi_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.rpi_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_equities_bbo_pillar_v2_5_b.quote_condition = {}

-- Size: Quote Condition
nyse_equities_bbo_pillar_v2_5_b.quote_condition.size = 1

-- Display: Quote Condition
nyse_equities_bbo_pillar_v2_5_b.quote_condition.display = function(value)
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Quote (R)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_equities_bbo_pillar_v2_5_b.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_equities_bbo_pillar_v2_5_b.bid_volume = {}

-- Size: Bid Volume
nyse_equities_bbo_pillar_v2_5_b.bid_volume.size = 4

-- Display: Bid Volume
nyse_equities_bbo_pillar_v2_5_b.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_equities_bbo_pillar_v2_5_b.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_equities_bbo_pillar_v2_5_b.bid_price = {}

-- Size: Bid Price
nyse_equities_bbo_pillar_v2_5_b.bid_price.size = 4

-- Display: Bid Price
nyse_equities_bbo_pillar_v2_5_b.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_equities_bbo_pillar_v2_5_b.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_equities_bbo_pillar_v2_5_b.ask_volume = {}

-- Size: Ask Volume
nyse_equities_bbo_pillar_v2_5_b.ask_volume.size = 4

-- Display: Ask Volume
nyse_equities_bbo_pillar_v2_5_b.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_equities_bbo_pillar_v2_5_b.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Ask Price
nyse_equities_bbo_pillar_v2_5_b.ask_price = {}

-- Size: Ask Price
nyse_equities_bbo_pillar_v2_5_b.ask_price.size = 4

-- Display: Ask Price
nyse_equities_bbo_pillar_v2_5_b.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_equities_bbo_pillar_v2_5_b.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_equities_bbo_pillar_v2_5_b.symbol_index = {}

-- Size: Symbol Index
nyse_equities_bbo_pillar_v2_5_b.symbol_index.size = 4

-- Display: Symbol Index
nyse_equities_bbo_pillar_v2_5_b.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_equities_bbo_pillar_v2_5_b.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_equities_bbo_pillar_v2_5_b.source_time_ns = {}

-- Size: Source Time Ns
nyse_equities_bbo_pillar_v2_5_b.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_equities_bbo_pillar_v2_5_b.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_equities_bbo_pillar_v2_5_b.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Quote Message
nyse_equities_bbo_pillar_v2_5_b.quote_message = {}

-- Size: Quote Message
nyse_equities_bbo_pillar_v2_5_b.quote_message.size =
  nyse_equities_bbo_pillar_v2_5_b.source_time_ns.size + 
  nyse_equities_bbo_pillar_v2_5_b.symbol_index.size + 
  nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.ask_price.size + 
  nyse_equities_bbo_pillar_v2_5_b.ask_volume.size + 
  nyse_equities_bbo_pillar_v2_5_b.bid_price.size + 
  nyse_equities_bbo_pillar_v2_5_b.bid_volume.size + 
  nyse_equities_bbo_pillar_v2_5_b.quote_condition.size + 
  nyse_equities_bbo_pillar_v2_5_b.rpi_indicator.size

-- Display: Quote Message
nyse_equities_bbo_pillar_v2_5_b.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
nyse_equities_bbo_pillar_v2_5_b.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bbo_pillar_v2_5_b.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Unsigned Fixed Width Integer
  index, ask_price = nyse_equities_bbo_pillar_v2_5_b.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_equities_bbo_pillar_v2_5_b.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Unsigned Fixed Width Integer
  index, bid_price = nyse_equities_bbo_pillar_v2_5_b.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_equities_bbo_pillar_v2_5_b.bid_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nyse_equities_bbo_pillar_v2_5_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index, rpi_indicator = nyse_equities_bbo_pillar_v2_5_b.rpi_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
nyse_equities_bbo_pillar_v2_5_b.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.quote_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_equities_bbo_pillar_v2_5_b.last_seq_num = {}

-- Size: Last Seq Num
nyse_equities_bbo_pillar_v2_5_b.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_equities_bbo_pillar_v2_5_b.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_equities_bbo_pillar_v2_5_b.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_equities_bbo_pillar_v2_5_b.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_equities_bbo_pillar_v2_5_b.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_equities_bbo_pillar_v2_5_b.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_equities_bbo_pillar_v2_5_b.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_equities_bbo_pillar_v2_5_b.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_equities_bbo_pillar_v2_5_b.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_equities_bbo_pillar_v2_5_b.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_equities_bbo_pillar_v2_5_b.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Refresh Header Message
nyse_equities_bbo_pillar_v2_5_b.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_equities_bbo_pillar_v2_5_b.refresh_header_message.size =
  nyse_equities_bbo_pillar_v2_5_b.current_refresh_pkt.size + 
  nyse_equities_bbo_pillar_v2_5_b.total_refresh_pkts.size + 
  nyse_equities_bbo_pillar_v2_5_b.last_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_equities_bbo_pillar_v2_5_b.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_equities_bbo_pillar_v2_5_b.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_equities_bbo_pillar_v2_5_b.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_equities_bbo_pillar_v2_5_b.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_equities_bbo_pillar_v2_5_b.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_equities_bbo_pillar_v2_5_b.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_equities_bbo_pillar_v2_5_b.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Session State
nyse_equities_bbo_pillar_v2_5_b.session_state = {}

-- Size: Session State
nyse_equities_bbo_pillar_v2_5_b.session_state.size = 1

-- Display: Session State
nyse_equities_bbo_pillar_v2_5_b.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_equities_bbo_pillar_v2_5_b.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.session_state, range, value, display)

  return offset + length, value
end

-- Market State
nyse_equities_bbo_pillar_v2_5_b.market_state = {}

-- Size: Market State
nyse_equities_bbo_pillar_v2_5_b.market_state.size = 1

-- Display: Market State
nyse_equities_bbo_pillar_v2_5_b.market_state.display = function(value)
  return "Market State: "..value
end

-- Dissect: Market State
nyse_equities_bbo_pillar_v2_5_b.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.market_state, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_equities_bbo_pillar_v2_5_b.ssr_state = {}

-- Size: Ssr State
nyse_equities_bbo_pillar_v2_5_b.ssr_state.size = 1

-- Display: Ssr State
nyse_equities_bbo_pillar_v2_5_b.ssr_state.display = function(value)
  return "Ssr State: "..value
end

-- Dissect: Ssr State
nyse_equities_bbo_pillar_v2_5_b.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Time
nyse_equities_bbo_pillar_v2_5_b.time = {}

-- Size: Time
nyse_equities_bbo_pillar_v2_5_b.time.size = 4

-- Display: Time
nyse_equities_bbo_pillar_v2_5_b.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_equities_bbo_pillar_v2_5_b.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.time, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_exchange_id.display = function(value)
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
  if value == "I" then
    return "Ssr Triggering Exchange Id: Ise (I)"
  end
  if value == "J" then
    return "Ssr Triggering Exchange Id: Edga (J)"
  end
  if value == "K" then
    return "Ssr Triggering Exchange Id: Edgx (K)"
  end
  if value == "M" then
    return "Ssr Triggering Exchange Id: Chx (M)"
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
  if value == "S" then
    return "Ssr Triggering Exchange Id: Cts (S)"
  end
  if value == "T" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx (T)"
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
    return "Ssr Triggering Exchange Id: Bats Y (Y)"
  end
  if value == "Z" then
    return "Ssr Triggering Exchange Id: Bats (Z)"
  end

  return "Ssr Triggering Exchange Id: Unknown("..value..")"
end

-- Dissect: Ssr Triggering Exchange Id
nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_equities_bbo_pillar_v2_5_b.price_2 = {}

-- Size: Price 2
nyse_equities_bbo_pillar_v2_5_b.price_2.size = 4

-- Display: Price 2
nyse_equities_bbo_pillar_v2_5_b.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_equities_bbo_pillar_v2_5_b.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_equities_bbo_pillar_v2_5_b.price_1 = {}

-- Size: Price 1
nyse_equities_bbo_pillar_v2_5_b.price_1.size = 4

-- Display: Price 1
nyse_equities_bbo_pillar_v2_5_b.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_equities_bbo_pillar_v2_5_b.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.price_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_equities_bbo_pillar_v2_5_b.reserved_4 = {}

-- Size: Reserved 4
nyse_equities_bbo_pillar_v2_5_b.reserved_4.size = 4

-- Display: Reserved 4
nyse_equities_bbo_pillar_v2_5_b.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_equities_bbo_pillar_v2_5_b.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bbo_pillar_v2_5_b.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_equities_bbo_pillar_v2_5_b.halt_condition = {}

-- Size: Halt Condition
nyse_equities_bbo_pillar_v2_5_b.halt_condition.size = 1

-- Display: Halt Condition
nyse_equities_bbo_pillar_v2_5_b.halt_condition.display = function(value)
  if value == "~" then
    return "Halt Condition: Security Not Delayedhalted (~)"
  end
  if value == " " then
    return "Halt Condition: Not Delayedhalted Nyse Tape A Only (<whitespace>)"
  end
  if value == "D" then
    return "Halt Condition: News Dissemination (D)"
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
  if value == "S" then
    return "Halt Condition: Related Security Not Used (S)"
  end
  if value == "X" then
    return "Halt Condition: Equipment Changeover (X)"
  end
  if value == "Z" then
    return "Halt Condition: No Open No Resume (Z)"
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
nyse_equities_bbo_pillar_v2_5_b.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_equities_bbo_pillar_v2_5_b.security_status = {}

-- Size: Security Status
nyse_equities_bbo_pillar_v2_5_b.security_status.size = 1

-- Display: Security Status
nyse_equities_bbo_pillar_v2_5_b.security_status.display = function(value)
  if value == "3" then
    return "Security Status: Opening Delay (3)"
  end
  if value == "4" then
    return "Security Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Security Status: Resume (5)"
  end
  if value == "6" then
    return "Security Status: No Openno Resume (6)"
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
  if value == "T" then
    return "Security Status: Time (T)"
  end
  if value == "I" then
    return "Security Status: Price Indication (I)"
  end
  if value == "G" then
    return "Security Status: Pre Opening Price Indication (G)"
  end
  if value == "R" then
    return "Security Status: Rule 15 Indication (R)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
nyse_equities_bbo_pillar_v2_5_b.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.security_status, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_equities_bbo_pillar_v2_5_b.source_time = {}

-- Size: Source Time
nyse_equities_bbo_pillar_v2_5_b.source_time.size = 4

-- Display: Source Time
nyse_equities_bbo_pillar_v2_5_b.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_equities_bbo_pillar_v2_5_b.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.source_time, range, value, display)

  return offset + length, value
end

-- Security Status Message
nyse_equities_bbo_pillar_v2_5_b.security_status_message = {}

-- Size: Security Status Message
nyse_equities_bbo_pillar_v2_5_b.security_status_message.size =
  nyse_equities_bbo_pillar_v2_5_b.source_time.size + 
  nyse_equities_bbo_pillar_v2_5_b.source_time_ns.size + 
  nyse_equities_bbo_pillar_v2_5_b.symbol_index.size + 
  nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.security_status.size + 
  nyse_equities_bbo_pillar_v2_5_b.halt_condition.size + 
  nyse_equities_bbo_pillar_v2_5_b.reserved_4.size + 
  nyse_equities_bbo_pillar_v2_5_b.price_1.size + 
  nyse_equities_bbo_pillar_v2_5_b.price_2.size + 
  nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_exchange_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_volume.size + 
  nyse_equities_bbo_pillar_v2_5_b.time.size + 
  nyse_equities_bbo_pillar_v2_5_b.ssr_state.size + 
  nyse_equities_bbo_pillar_v2_5_b.market_state.size + 
  nyse_equities_bbo_pillar_v2_5_b.session_state.size

-- Display: Security Status Message
nyse_equities_bbo_pillar_v2_5_b.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_equities_bbo_pillar_v2_5_b.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bbo_pillar_v2_5_b.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bbo_pillar_v2_5_b.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index, security_status = nyse_equities_bbo_pillar_v2_5_b.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 12 values
  index, halt_condition = nyse_equities_bbo_pillar_v2_5_b.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_bbo_pillar_v2_5_b.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_equities_bbo_pillar_v2_5_b.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_equities_bbo_pillar_v2_5_b.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 18 values
  index, ssr_triggering_exchange_id = nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_equities_bbo_pillar_v2_5_b.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_equities_bbo_pillar_v2_5_b.time.dissect(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String
  index, ssr_state = nyse_equities_bbo_pillar_v2_5_b.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String
  index, market_state = nyse_equities_bbo_pillar_v2_5_b.market_state.dissect(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String
  index, session_state = nyse_equities_bbo_pillar_v2_5_b.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_equities_bbo_pillar_v2_5_b.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.security_status_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Next Source Seq Num
nyse_equities_bbo_pillar_v2_5_b.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_equities_bbo_pillar_v2_5_b.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_equities_bbo_pillar_v2_5_b.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_equities_bbo_pillar_v2_5_b.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Clear Message
nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message.size =
  nyse_equities_bbo_pillar_v2_5_b.source_time.size + 
  nyse_equities_bbo_pillar_v2_5_b.source_time_ns.size + 
  nyse_equities_bbo_pillar_v2_5_b.symbol_index.size + 
  nyse_equities_bbo_pillar_v2_5_b.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bbo_pillar_v2_5_b.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bbo_pillar_v2_5_b.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_equities_bbo_pillar_v2_5_b.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Id
nyse_equities_bbo_pillar_v2_5_b.channel_id = {}

-- Size: Channel Id
nyse_equities_bbo_pillar_v2_5_b.channel_id.size = 1

-- Display: Channel Id
nyse_equities_bbo_pillar_v2_5_b.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_equities_bbo_pillar_v2_5_b.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_equities_bbo_pillar_v2_5_b.product_id = {}

-- Size: Product Id
nyse_equities_bbo_pillar_v2_5_b.product_id.size = 1

-- Display: Product Id
nyse_equities_bbo_pillar_v2_5_b.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_equities_bbo_pillar_v2_5_b.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.product_id, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_equities_bbo_pillar_v2_5_b.end_seq_num = {}

-- Size: End Seq Num
nyse_equities_bbo_pillar_v2_5_b.end_seq_num.size = 4

-- Display: End Seq Num
nyse_equities_bbo_pillar_v2_5_b.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_equities_bbo_pillar_v2_5_b.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_equities_bbo_pillar_v2_5_b.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Message Unavailable Message
nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message.size =
  nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.end_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.product_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.channel_id.size

-- Display: Message Unavailable Message
nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bbo_pillar_v2_5_b.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Id
nyse_equities_bbo_pillar_v2_5_b.source_id = {}

-- Size: Source Id
nyse_equities_bbo_pillar_v2_5_b.source_id.size = 10

-- Display: Source Id
nyse_equities_bbo_pillar_v2_5_b.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_equities_bbo_pillar_v2_5_b.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.source_id, range, value, display)

  return offset + length, value
end

-- Refresh Request Message
nyse_equities_bbo_pillar_v2_5_b.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_equities_bbo_pillar_v2_5_b.refresh_request_message.size =
  nyse_equities_bbo_pillar_v2_5_b.symbol_index.size + 
  nyse_equities_bbo_pillar_v2_5_b.source_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.product_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.channel_id.size

-- Display: Refresh Request Message
nyse_equities_bbo_pillar_v2_5_b.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_equities_bbo_pillar_v2_5_b.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_equities_bbo_pillar_v2_5_b.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Method
nyse_equities_bbo_pillar_v2_5_b.retransmit_method = {}

-- Size: Retransmit Method
nyse_equities_bbo_pillar_v2_5_b.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_equities_bbo_pillar_v2_5_b.retransmit_method.display = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_equities_bbo_pillar_v2_5_b.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Request Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message.size =
  nyse_equities_bbo_pillar_v2_5_b.symbol_index.size + 
  nyse_equities_bbo_pillar_v2_5_b.source_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.product_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.channel_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, retransmit_method = nyse_equities_bbo_pillar_v2_5_b.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message.size =
  nyse_equities_bbo_pillar_v2_5_b.source_id.size

-- Display: Heartbeat Response Message
nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Status
nyse_equities_bbo_pillar_v2_5_b.status = {}

-- Size: Status
nyse_equities_bbo_pillar_v2_5_b.status.size = 1

-- Display: Status
nyse_equities_bbo_pillar_v2_5_b.status.display = function(value)
  return "Status: "..value
end

-- Dissect: Status
nyse_equities_bbo_pillar_v2_5_b.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.status, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_equities_bbo_pillar_v2_5_b.request_seq_num = {}

-- Size: Request Seq Num
nyse_equities_bbo_pillar_v2_5_b.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_equities_bbo_pillar_v2_5_b.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_equities_bbo_pillar_v2_5_b.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Request Response Message
nyse_equities_bbo_pillar_v2_5_b.request_response_message = {}

-- Size: Request Response Message
nyse_equities_bbo_pillar_v2_5_b.request_response_message.size =
  nyse_equities_bbo_pillar_v2_5_b.request_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.end_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.source_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.product_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.channel_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.status.size

-- Display: Request Response Message
nyse_equities_bbo_pillar_v2_5_b.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_equities_bbo_pillar_v2_5_b.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_equities_bbo_pillar_v2_5_b.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bbo_pillar_v2_5_b.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b.channel_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String
  index, status = nyse_equities_bbo_pillar_v2_5_b.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_equities_bbo_pillar_v2_5_b.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.request_response_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message.size =
  nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.end_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.source_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.product_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.channel_id.size

-- Display: Retransmission Request Message
nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bbo_pillar_v2_5_b.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bbo_pillar_v2_5_b.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 2
nyse_equities_bbo_pillar_v2_5_b.reserved_2 = {}

-- Size: Reserved 2
nyse_equities_bbo_pillar_v2_5_b.reserved_2.size = 2

-- Display: Reserved 2
nyse_equities_bbo_pillar_v2_5_b.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_equities_bbo_pillar_v2_5_b.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bbo_pillar_v2_5_b.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_equities_bbo_pillar_v2_5_b.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_equities_bbo_pillar_v2_5_b.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_equities_bbo_pillar_v2_5_b.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_equities_bbo_pillar_v2_5_b.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_equities_bbo_pillar_v2_5_b.mpv = {}

-- Size: Mpv
nyse_equities_bbo_pillar_v2_5_b.mpv.size = 2

-- Display: Mpv
nyse_equities_bbo_pillar_v2_5_b.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_equities_bbo_pillar_v2_5_b.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.mpv, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_equities_bbo_pillar_v2_5_b.round_lot = {}

-- Size: Round Lot
nyse_equities_bbo_pillar_v2_5_b.round_lot.size = 1

-- Display: Round Lot
nyse_equities_bbo_pillar_v2_5_b.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
nyse_equities_bbo_pillar_v2_5_b.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_equities_bbo_pillar_v2_5_b.price_resolution = {}

-- Size: Price Resolution
nyse_equities_bbo_pillar_v2_5_b.price_resolution.size = 1

-- Display: Price Resolution
nyse_equities_bbo_pillar_v2_5_b.price_resolution.display = function(value)
  return "Price Resolution: "..value
end

-- Dissect: Price Resolution
nyse_equities_bbo_pillar_v2_5_b.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_equities_bbo_pillar_v2_5_b.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_equities_bbo_pillar_v2_5_b.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_equities_bbo_pillar_v2_5_b.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_equities_bbo_pillar_v2_5_b.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_equities_bbo_pillar_v2_5_b.prev_close_price = {}

-- Size: Prev Close Price
nyse_equities_bbo_pillar_v2_5_b.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_equities_bbo_pillar_v2_5_b.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_equities_bbo_pillar_v2_5_b.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_equities_bbo_pillar_v2_5_b.lot_size = {}

-- Size: Lot Size
nyse_equities_bbo_pillar_v2_5_b.lot_size.size = 2

-- Display: Lot Size
nyse_equities_bbo_pillar_v2_5_b.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_equities_bbo_pillar_v2_5_b.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_equities_bbo_pillar_v2_5_b.security_type = {}

-- Size: Security Type
nyse_equities_bbo_pillar_v2_5_b.security_type.size = 1

-- Display: Security Type
nyse_equities_bbo_pillar_v2_5_b.security_type.display = function(value)
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
    return "Security Type: Units (U)"
  end
  if value == "W" then
    return "Security Type: Warrant (W)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_equities_bbo_pillar_v2_5_b.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.security_type, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_equities_bbo_pillar_v2_5_b.price_scale_code = {}

-- Size: Price Scale Code
nyse_equities_bbo_pillar_v2_5_b.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_equities_bbo_pillar_v2_5_b.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_equities_bbo_pillar_v2_5_b.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_equities_bbo_pillar_v2_5_b.exchange_code = {}

-- Size: Exchange Code
nyse_equities_bbo_pillar_v2_5_b.exchange_code.size = 1

-- Display: Exchange Code
nyse_equities_bbo_pillar_v2_5_b.exchange_code.display = function(value)
  if value == "A" then
    return "Exchange Code: Nyse American (A)"
  end
  if value == "C" then
    return "Exchange Code: Nyse National (C)"
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
    return "Exchange Code: Bats (Z)"
  end
  if value == "B" then
    return "Exchange Code: Global Otc (B)"
  end
  if value == "U" then
    return "Exchange Code: Otcbb (U)"
  end
  if value == "V" then
    return "Exchange Code: Other Otc (V)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_equities_bbo_pillar_v2_5_b.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- System Id
nyse_equities_bbo_pillar_v2_5_b.system_id = {}

-- Size: System Id
nyse_equities_bbo_pillar_v2_5_b.system_id.size = 1

-- Display: System Id
nyse_equities_bbo_pillar_v2_5_b.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_equities_bbo_pillar_v2_5_b.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.system_id, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_equities_bbo_pillar_v2_5_b.market_id = {}

-- Size: Market Id
nyse_equities_bbo_pillar_v2_5_b.market_id.size = 2

-- Display: Market Id
nyse_equities_bbo_pillar_v2_5_b.market_id.display = function(value)
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
  if value == 6 then
    return "Market Id: Global Otc (6)"
  end
  if value == 8 then
    return "Market Id: Nyse Amex Options (8)"
  end
  if value == 9 then
    return "Market Id: Nyse American Equities (9)"
  end
  if value == 10 then
    return "Market Id: Nyse National Equities (10)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_equities_bbo_pillar_v2_5_b.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.market_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_equities_bbo_pillar_v2_5_b.reserved_1 = {}

-- Size: Reserved 1
nyse_equities_bbo_pillar_v2_5_b.reserved_1.size = 1

-- Display: Reserved 1
nyse_equities_bbo_pillar_v2_5_b.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_equities_bbo_pillar_v2_5_b.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bbo_pillar_v2_5_b.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_equities_bbo_pillar_v2_5_b.symbol = {}

-- Size: Symbol
nyse_equities_bbo_pillar_v2_5_b.symbol.size = 11

-- Display: Symbol
nyse_equities_bbo_pillar_v2_5_b.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_equities_bbo_pillar_v2_5_b.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message.size =
  nyse_equities_bbo_pillar_v2_5_b.symbol_index.size + 
  nyse_equities_bbo_pillar_v2_5_b.symbol.size + 
  nyse_equities_bbo_pillar_v2_5_b.reserved_1.size + 
  nyse_equities_bbo_pillar_v2_5_b.market_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.system_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.exchange_code.size + 
  nyse_equities_bbo_pillar_v2_5_b.price_scale_code.size + 
  nyse_equities_bbo_pillar_v2_5_b.security_type.size + 
  nyse_equities_bbo_pillar_v2_5_b.lot_size.size + 
  nyse_equities_bbo_pillar_v2_5_b.prev_close_price.size + 
  nyse_equities_bbo_pillar_v2_5_b.prev_close_volume.size + 
  nyse_equities_bbo_pillar_v2_5_b.price_resolution.size + 
  nyse_equities_bbo_pillar_v2_5_b.round_lot.size + 
  nyse_equities_bbo_pillar_v2_5_b.mpv.size + 
  nyse_equities_bbo_pillar_v2_5_b.unit_of_trade.size + 
  nyse_equities_bbo_pillar_v2_5_b.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_equities_bbo_pillar_v2_5_b.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_equities_bbo_pillar_v2_5_b.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, market_id = nyse_equities_bbo_pillar_v2_5_b.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_equities_bbo_pillar_v2_5_b.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 10 values
  index, exchange_code = nyse_equities_bbo_pillar_v2_5_b.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_equities_bbo_pillar_v2_5_b.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_equities_bbo_pillar_v2_5_b.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_equities_bbo_pillar_v2_5_b.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_equities_bbo_pillar_v2_5_b.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_equities_bbo_pillar_v2_5_b.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer
  index, price_resolution = nyse_equities_bbo_pillar_v2_5_b.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String
  index, round_lot = nyse_equities_bbo_pillar_v2_5_b.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_equities_bbo_pillar_v2_5_b.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_equities_bbo_pillar_v2_5_b.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_bbo_pillar_v2_5_b.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Id
nyse_equities_bbo_pillar_v2_5_b.id = {}

-- Size: Id
nyse_equities_bbo_pillar_v2_5_b.id.size = 4

-- Display: Id
nyse_equities_bbo_pillar_v2_5_b.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_equities_bbo_pillar_v2_5_b.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.id, range, value, display)

  return offset + length, value
end

-- Source Time Reference Message
nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message.size =
  nyse_equities_bbo_pillar_v2_5_b.id.size + 
  nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.size + 
  nyse_equities_bbo_pillar_v2_5_b.source_time.size

-- Display: Source Time Reference Message
nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_equities_bbo_pillar_v2_5_b.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bbo_pillar_v2_5_b.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bbo_pillar_v2_5_b.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.source_time_reference_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message.size =
  nyse_equities_bbo_pillar_v2_5_b.source_time.size + 
  nyse_equities_bbo_pillar_v2_5_b.source_time_ns.size + 
  nyse_equities_bbo_pillar_v2_5_b.product_id.size + 
  nyse_equities_bbo_pillar_v2_5_b.channel_id.size

-- Display: Sequence Number Reset Message
nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bbo_pillar_v2_5_b.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bbo_pillar_v2_5_b.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_equities_bbo_pillar_v2_5_b.payload = {}

-- Calculate runtime size of: Payload
nyse_equities_bbo_pillar_v2_5_b.payload.size = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message.size(buffer, offset)
  end
  -- Size of Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message.size(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message.size(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_equities_bbo_pillar_v2_5_b.request_response_message.size(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message.size(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_equities_bbo_pillar_v2_5_b.refresh_request_message.size(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message.size(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message.size(buffer, offset)
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_equities_bbo_pillar_v2_5_b.security_status_message.size(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_equities_bbo_pillar_v2_5_b.refresh_header_message.size(buffer, offset)
  end
  -- Size of Quote Message
  if message_type == 140 then
    return nyse_equities_bbo_pillar_v2_5_b.quote_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_equities_bbo_pillar_v2_5_b.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_equities_bbo_pillar_v2_5_b.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_bbo_pillar_v2_5_b.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_bbo_pillar_v2_5_b.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_bbo_pillar_v2_5_b.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_equities_bbo_pillar_v2_5_b.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_bbo_pillar_v2_5_b.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_bbo_pillar_v2_5_b.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_equities_bbo_pillar_v2_5_b.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_bbo_pillar_v2_5_b.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_bbo_pillar_v2_5_b.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_equities_bbo_pillar_v2_5_b.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_equities_bbo_pillar_v2_5_b.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_type == 140 then
    return nyse_equities_bbo_pillar_v2_5_b.quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_equities_bbo_pillar_v2_5_b.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_equities_bbo_pillar_v2_5_b.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_bbo_pillar_v2_5_b.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_bbo_pillar_v2_5_b.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.payload, range, display)

  return nyse_equities_bbo_pillar_v2_5_b.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nyse_equities_bbo_pillar_v2_5_b.message_type = {}

-- Size: Message Type
nyse_equities_bbo_pillar_v2_5_b.message_type.size = 2

-- Display: Message Type
nyse_equities_bbo_pillar_v2_5_b.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Source Time Reference Message (2)"
  end
  if value == 3 then
    return "Message Type: Symbol Index Mapping Message (3)"
  end
  if value == 10 then
    return "Message Type: Retransmission Request Message (10)"
  end
  if value == 11 then
    return "Message Type: Request Response Message (11)"
  end
  if value == 12 then
    return "Message Type: Heartbeat Response Message (12)"
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
  if value == 32 then
    return "Message Type: Symbol Clear Message (32)"
  end
  if value == 34 then
    return "Message Type: Security Status Message (34)"
  end
  if value == 35 then
    return "Message Type: Refresh Header Message (35)"
  end
  if value == 140 then
    return "Message Type: Quote Message (140)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_equities_bbo_pillar_v2_5_b.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_equities_bbo_pillar_v2_5_b.message_size = {}

-- Size: Message Size
nyse_equities_bbo_pillar_v2_5_b.message_size.size = 2

-- Display: Message Size
nyse_equities_bbo_pillar_v2_5_b.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_equities_bbo_pillar_v2_5_b.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
nyse_equities_bbo_pillar_v2_5_b.message_header = {}

-- Size: Message Header
nyse_equities_bbo_pillar_v2_5_b.message_header.size =
  nyse_equities_bbo_pillar_v2_5_b.message_size.size + 
  nyse_equities_bbo_pillar_v2_5_b.message_type.size

-- Display: Message Header
nyse_equities_bbo_pillar_v2_5_b.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_equities_bbo_pillar_v2_5_b.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_equities_bbo_pillar_v2_5_b.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = nyse_equities_bbo_pillar_v2_5_b.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_equities_bbo_pillar_v2_5_b.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_header, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_equities_bbo_pillar_v2_5_b.message = {}

-- Display: Message
nyse_equities_bbo_pillar_v2_5_b.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_equities_bbo_pillar_v2_5_b.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_equities_bbo_pillar_v2_5_b.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = nyse_equities_bbo_pillar_v2_5_b.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_equities_bbo_pillar_v2_5_b.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.message, buffer(offset, 0))
    local current = nyse_equities_bbo_pillar_v2_5_b.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_equities_bbo_pillar_v2_5_b.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_equities_bbo_pillar_v2_5_b.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Nanoseconds
nyse_equities_bbo_pillar_v2_5_b.nanoseconds = {}

-- Size: Nanoseconds
nyse_equities_bbo_pillar_v2_5_b.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_equities_bbo_pillar_v2_5_b.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_equities_bbo_pillar_v2_5_b.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_equities_bbo_pillar_v2_5_b.timestamp = {}

-- Size: Timestamp
nyse_equities_bbo_pillar_v2_5_b.timestamp.size = 4

-- Display: Timestamp
nyse_equities_bbo_pillar_v2_5_b.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_bbo_pillar_v2_5_b.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_equities_bbo_pillar_v2_5_b.sequence_number = {}

-- Size: Sequence Number
nyse_equities_bbo_pillar_v2_5_b.sequence_number.size = 4

-- Display: Sequence Number
nyse_equities_bbo_pillar_v2_5_b.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_equities_bbo_pillar_v2_5_b.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_equities_bbo_pillar_v2_5_b.message_count = {}

-- Size: Message Count
nyse_equities_bbo_pillar_v2_5_b.message_count.size = 1

-- Display: Message Count
nyse_equities_bbo_pillar_v2_5_b.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_equities_bbo_pillar_v2_5_b.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.message_count, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_equities_bbo_pillar_v2_5_b.delivery_flag = {}

-- Size: Delivery Flag
nyse_equities_bbo_pillar_v2_5_b.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_equities_bbo_pillar_v2_5_b.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Failover (10)"
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
nyse_equities_bbo_pillar_v2_5_b.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_equities_bbo_pillar_v2_5_b.packet_size = {}

-- Size: Packet Size
nyse_equities_bbo_pillar_v2_5_b.packet_size.size = 2

-- Display: Packet Size
nyse_equities_bbo_pillar_v2_5_b.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_equities_bbo_pillar_v2_5_b.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_equities_bbo_pillar_v2_5_b.packet_header = {}

-- Size: Packet Header
nyse_equities_bbo_pillar_v2_5_b.packet_header.size =
  nyse_equities_bbo_pillar_v2_5_b.packet_size.size + 
  nyse_equities_bbo_pillar_v2_5_b.delivery_flag.size + 
  nyse_equities_bbo_pillar_v2_5_b.message_count.size + 
  nyse_equities_bbo_pillar_v2_5_b.sequence_number.size + 
  nyse_equities_bbo_pillar_v2_5_b.timestamp.size + 
  nyse_equities_bbo_pillar_v2_5_b.nanoseconds.size

-- Display: Packet Header
nyse_equities_bbo_pillar_v2_5_b.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_equities_bbo_pillar_v2_5_b.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_equities_bbo_pillar_v2_5_b.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_equities_bbo_pillar_v2_5_b.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_equities_bbo_pillar_v2_5_b.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_equities_bbo_pillar_v2_5_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_bbo_pillar_v2_5_b.timestamp.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_equities_bbo_pillar_v2_5_b.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_equities_bbo_pillar_v2_5_b.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b.fields.packet_header, buffer(offset, 0))
    local index = nyse_equities_bbo_pillar_v2_5_b.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bbo_pillar_v2_5_b.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bbo_pillar_v2_5_b.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_equities_bbo_pillar_v2_5_b.packet = {}

-- Dissect Packet
nyse_equities_bbo_pillar_v2_5_b.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_equities_bbo_pillar_v2_5_b.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_equities_bbo_pillar_v2_5_b.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_equities_bbo_pillar_v2_5_b.init()
end

-- Dissector for Nyse Equities Bbo Pillar 2.5.b
function omi_nyse_equities_bbo_pillar_v2_5_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_equities_bbo_pillar_v2_5_b.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_equities_bbo_pillar_v2_5_b, buffer(), omi_nyse_equities_bbo_pillar_v2_5_b.description, "("..buffer:len().." Bytes)")
  return nyse_equities_bbo_pillar_v2_5_b.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_equities_bbo_pillar_v2_5_b)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_equities_bbo_pillar_v2_5_b.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities Bbo Pillar 2.5.b
local function omi_nyse_equities_bbo_pillar_v2_5_b_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_equities_bbo_pillar_v2_5_b.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_equities_bbo_pillar_v2_5_b
  omi_nyse_equities_bbo_pillar_v2_5_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities Bbo Pillar 2.5.b
omi_nyse_equities_bbo_pillar_v2_5_b:register_heuristic("udp", omi_nyse_equities_bbo_pillar_v2_5_b_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.5.b
--   Date: Monday, March 21, 2022
--   Specification: NYSE_Pillar_BBO_Client_Specification.pdf
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
