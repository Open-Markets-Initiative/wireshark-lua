-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities Bbo Pillar 2.5.b Protocol
local nyse_equities_bbo_pillar_v2_5_b = Proto("Nyse.Equities.Bbo.Pillar.v2.5.b.Lua", "Nyse Equities Bbo Pillar 2.5.b")

-- Component Tables
local show = {}
local format = {}
local nyse_equities_bbo_pillar_v2_5_b_display = {}
local nyse_equities_bbo_pillar_v2_5_b_dissect = {}
local nyse_equities_bbo_pillar_v2_5_b_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities Bbo Pillar 2.5.b Fields
nyse_equities_bbo_pillar_v2_5_b.fields.ask_price = ProtoField.new("Ask Price", "nyse.equities.bbo.pillar.v2.5.b.askprice", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.equities.bbo.pillar.v2.5.b.askvolume", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.equities.bbo.pillar.v2.5.b.beginseqnum", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.bid_price = ProtoField.new("Bid Price", "nyse.equities.bbo.pillar.v2.5.b.bidprice", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.equities.bbo.pillar.v2.5.b.bidvolume", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.channel_id = ProtoField.new("Channel Id", "nyse.equities.bbo.pillar.v2.5.b.channelid", ftypes.UINT8)
nyse_equities_bbo_pillar_v2_5_b.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.equities.bbo.pillar.v2.5.b.currentrefreshpkt", ftypes.UINT16)
nyse_equities_bbo_pillar_v2_5_b.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.bbo.pillar.v2.5.b.deliveryflag", ftypes.UINT8)
nyse_equities_bbo_pillar_v2_5_b.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.equities.bbo.pillar.v2.5.b.endseqnum", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.equities.bbo.pillar.v2.5.b.exchangecode", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.equities.bbo.pillar.v2.5.b.haltcondition", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.equities.bbo.pillar.v2.5.b.heartbeatresponsemessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.id = ProtoField.new("Id", "nyse.equities.bbo.pillar.v2.5.b.id", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.equities.bbo.pillar.v2.5.b.lastseqnum", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.equities.bbo.pillar.v2.5.b.lastsymbolseqnum", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.lot_size = ProtoField.new("Lot Size", "nyse.equities.bbo.pillar.v2.5.b.lotsize", ftypes.UINT16)
nyse_equities_bbo_pillar_v2_5_b.fields.market_id = ProtoField.new("Market Id", "nyse.equities.bbo.pillar.v2.5.b.marketid", ftypes.UINT16)
nyse_equities_bbo_pillar_v2_5_b.fields.market_state = ProtoField.new("Market State", "nyse.equities.bbo.pillar.v2.5.b.marketstate", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.message = ProtoField.new("Message", "nyse.equities.bbo.pillar.v2.5.b.message", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.message_count = ProtoField.new("Message Count", "nyse.equities.bbo.pillar.v2.5.b.messagecount", ftypes.UINT8)
nyse_equities_bbo_pillar_v2_5_b.fields.message_header = ProtoField.new("Message Header", "nyse.equities.bbo.pillar.v2.5.b.messageheader", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.message_size = ProtoField.new("Message Size", "nyse.equities.bbo.pillar.v2.5.b.messagesize", ftypes.UINT16)
nyse_equities_bbo_pillar_v2_5_b.fields.message_type = ProtoField.new("Message Type", "nyse.equities.bbo.pillar.v2.5.b.messagetype", ftypes.UINT16)
nyse_equities_bbo_pillar_v2_5_b.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.equities.bbo.pillar.v2.5.b.messageunavailablemessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.mpv = ProtoField.new("Mpv", "nyse.equities.bbo.pillar.v2.5.b.mpv", ftypes.UINT16)
nyse_equities_bbo_pillar_v2_5_b.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.bbo.pillar.v2.5.b.nanoseconds", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.equities.bbo.pillar.v2.5.b.nextsourceseqnum", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.packet = ProtoField.new("Packet", "nyse.equities.bbo.pillar.v2.5.b.packet", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.bbo.pillar.v2.5.b.packetheader", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.bbo.pillar.v2.5.b.packetsize", ftypes.UINT16)
nyse_equities_bbo_pillar_v2_5_b.fields.payload = ProtoField.new("Payload", "nyse.equities.bbo.pillar.v2.5.b.payload", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.equities.bbo.pillar.v2.5.b.prevcloseprice", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.equities.bbo.pillar.v2.5.b.prevclosevolume", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.price_1 = ProtoField.new("Price 1", "nyse.equities.bbo.pillar.v2.5.b.price1", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.price_2 = ProtoField.new("Price 2", "nyse.equities.bbo.pillar.v2.5.b.price2", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.equities.bbo.pillar.v2.5.b.priceresolution", ftypes.UINT8)
nyse_equities_bbo_pillar_v2_5_b.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.equities.bbo.pillar.v2.5.b.pricescalecode", ftypes.UINT8)
nyse_equities_bbo_pillar_v2_5_b.fields.product_id = ProtoField.new("Product Id", "nyse.equities.bbo.pillar.v2.5.b.productid", ftypes.UINT8)
nyse_equities_bbo_pillar_v2_5_b.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.equities.bbo.pillar.v2.5.b.quotecondition", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.quote_message = ProtoField.new("Quote Message", "nyse.equities.bbo.pillar.v2.5.b.quotemessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.equities.bbo.pillar.v2.5.b.refreshheadermessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.equities.bbo.pillar.v2.5.b.refreshrequestmessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.equities.bbo.pillar.v2.5.b.requestresponsemessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.equities.bbo.pillar.v2.5.b.requestseqnum", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.equities.bbo.pillar.v2.5.b.reserved1", ftypes.BYTES)
nyse_equities_bbo_pillar_v2_5_b.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.equities.bbo.pillar.v2.5.b.reserved2", ftypes.BYTES)
nyse_equities_bbo_pillar_v2_5_b.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.equities.bbo.pillar.v2.5.b.reserved4", ftypes.BYTES)
nyse_equities_bbo_pillar_v2_5_b.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.equities.bbo.pillar.v2.5.b.retransmissionrequestmessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.equities.bbo.pillar.v2.5.b.retransmitmethod", ftypes.UINT8)
nyse_equities_bbo_pillar_v2_5_b.fields.round_lot = ProtoField.new("Round Lot", "nyse.equities.bbo.pillar.v2.5.b.roundlot", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.equities.bbo.pillar.v2.5.b.rpiindicator", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.security_status = ProtoField.new("Security Status", "nyse.equities.bbo.pillar.v2.5.b.securitystatus", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.equities.bbo.pillar.v2.5.b.securitystatusmessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.security_type = ProtoField.new("Security Type", "nyse.equities.bbo.pillar.v2.5.b.securitytype", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.bbo.pillar.v2.5.b.sequencenumber", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.equities.bbo.pillar.v2.5.b.sequencenumberresetmessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.session_state = ProtoField.new("Session State", "nyse.equities.bbo.pillar.v2.5.b.sessionstate", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.source_id = ProtoField.new("Source Id", "nyse.equities.bbo.pillar.v2.5.b.sourceid", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.source_time = ProtoField.new("Source Time", "nyse.equities.bbo.pillar.v2.5.b.sourcetime", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.bbo.pillar.v2.5.b.sourcetimens", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.equities.bbo.pillar.v2.5.b.sourcetimereferencemessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.ssr_state = ProtoField.new("Ssr State", "nyse.equities.bbo.pillar.v2.5.b.ssrstate", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.equities.bbo.pillar.v2.5.b.ssrtriggeringexchangeid", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.equities.bbo.pillar.v2.5.b.ssrtriggeringvolume", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.status = ProtoField.new("Status", "nyse.equities.bbo.pillar.v2.5.b.status", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.symbol = ProtoField.new("Symbol", "nyse.equities.bbo.pillar.v2.5.b.symbol", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.equities.bbo.pillar.v2.5.b.symbolclearmessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.bbo.pillar.v2.5.b.symbolindex", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.equities.bbo.pillar.v2.5.b.symbolindexmappingmessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.equities.bbo.pillar.v2.5.b.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_equities_bbo_pillar_v2_5_b.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.bbo.pillar.v2.5.b.symbolseqnum", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.system_id = ProtoField.new("System Id", "nyse.equities.bbo.pillar.v2.5.b.systemid", ftypes.UINT8)
nyse_equities_bbo_pillar_v2_5_b.fields.time = ProtoField.new("Time", "nyse.equities.bbo.pillar.v2.5.b.time", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.bbo.pillar.v2.5.b.timestamp", ftypes.UINT32)
nyse_equities_bbo_pillar_v2_5_b.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.equities.bbo.pillar.v2.5.b.totalrefreshpkts", ftypes.UINT16)
nyse_equities_bbo_pillar_v2_5_b.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.equities.bbo.pillar.v2.5.b.unitoftrade", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

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
nyse_equities_bbo_pillar_v2_5_b.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_source_time_reference_message = Pref.bool("Show Source Time Reference Message", show.source_time_reference_message, "Parse and add Source Time Reference Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
nyse_equities_bbo_pillar_v2_5_b.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_equities_bbo_pillar_v2_5_b.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat_response_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_message then
    show.message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_header then
    show.message_header = nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_unavailable_message then
    show.message_unavailable_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet then
    show.packet = nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet_header then
    show.packet_header = nyse_equities_bbo_pillar_v2_5_b.prefs.show_packet_header
    changed = true
  end
  if show.quote_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_quote_message then
    show.quote_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_quote_message
    changed = true
  end
  if show.refresh_header_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_header_message then
    show.refresh_header_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_request_message then
    show.refresh_request_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_request_response_message then
    show.request_response_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_retransmission_request_message then
    show.retransmission_request_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_security_status_message then
    show.security_status_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.source_time_reference_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_source_time_reference_message then
    show.source_time_reference_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_source_time_reference_message
    changed = true
  end
  if show.symbol_clear_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_clear_message then
    show.symbol_clear_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = nyse_equities_bbo_pillar_v2_5_b.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.payload ~= nyse_equities_bbo_pillar_v2_5_b.prefs.show_payload then
    show.payload = nyse_equities_bbo_pillar_v2_5_b.prefs.show_payload
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

-- Size: Rpi Indicator
nyse_equities_bbo_pillar_v2_5_b_size_of.rpi_indicator = 1

-- Display: Rpi Indicator
nyse_equities_bbo_pillar_v2_5_b_display.rpi_indicator = function(value)
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
nyse_equities_bbo_pillar_v2_5_b_dissect.rpi_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.rpi_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.rpi_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
nyse_equities_bbo_pillar_v2_5_b_size_of.quote_condition = 1

-- Display: Quote Condition
nyse_equities_bbo_pillar_v2_5_b_display.quote_condition = function(value)
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Quote (R)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_equities_bbo_pillar_v2_5_b_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Bid Volume
nyse_equities_bbo_pillar_v2_5_b_size_of.bid_volume = 4

-- Display: Bid Volume
nyse_equities_bbo_pillar_v2_5_b_display.bid_volume = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_equities_bbo_pillar_v2_5_b_dissect.bid_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.bid_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.bid_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
nyse_equities_bbo_pillar_v2_5_b_size_of.bid_price = 4

-- Display: Bid Price
nyse_equities_bbo_pillar_v2_5_b_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_equities_bbo_pillar_v2_5_b_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.bid_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Volume
nyse_equities_bbo_pillar_v2_5_b_size_of.ask_volume = 4

-- Display: Ask Volume
nyse_equities_bbo_pillar_v2_5_b_display.ask_volume = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_equities_bbo_pillar_v2_5_b_dissect.ask_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.ask_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.ask_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
nyse_equities_bbo_pillar_v2_5_b_size_of.ask_price = 4

-- Display: Ask Price
nyse_equities_bbo_pillar_v2_5_b_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_equities_bbo_pillar_v2_5_b_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.ask_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b_display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index = 4

-- Display: Symbol Index
nyse_equities_bbo_pillar_v2_5_b_display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Source Time Ns
nyse_equities_bbo_pillar_v2_5_b_size_of.source_time_ns = 4

-- Display: Source Time Ns
nyse_equities_bbo_pillar_v2_5_b_display.source_time_ns = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_equities_bbo_pillar_v2_5_b_dissect.source_time_ns = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.source_time_ns
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.source_time_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Message
nyse_equities_bbo_pillar_v2_5_b_size_of.quote_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_time_ns

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.ask_price

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.ask_volume

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.bid_price

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.bid_volume

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.quote_condition

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.rpi_indicator

  return index
end

-- Display: Quote Message
nyse_equities_bbo_pillar_v2_5_b_display.quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Message
nyse_equities_bbo_pillar_v2_5_b_dissect.quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bbo_pillar_v2_5_b_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Unsigned Fixed Width Integer
  index, ask_price = nyse_equities_bbo_pillar_v2_5_b_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_equities_bbo_pillar_v2_5_b_dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Unsigned Fixed Width Integer
  index, bid_price = nyse_equities_bbo_pillar_v2_5_b_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_equities_bbo_pillar_v2_5_b_dissect.bid_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, quote_condition = nyse_equities_bbo_pillar_v2_5_b_dissect.quote_condition(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index, rpi_indicator = nyse_equities_bbo_pillar_v2_5_b_dissect.rpi_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
nyse_equities_bbo_pillar_v2_5_b_dissect.quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.quote_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.quote_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b_size_of.last_symbol_seq_num = 4

-- Display: Last Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b_display.last_symbol_seq_num = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_equities_bbo_pillar_v2_5_b_dissect.last_symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.last_symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.last_symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Last Seq Num
nyse_equities_bbo_pillar_v2_5_b_size_of.last_seq_num = 4

-- Display: Last Seq Num
nyse_equities_bbo_pillar_v2_5_b_display.last_seq_num = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_equities_bbo_pillar_v2_5_b_dissect.last_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.last_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.last_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Total Refresh Pkts
nyse_equities_bbo_pillar_v2_5_b_size_of.total_refresh_pkts = 2

-- Display: Total Refresh Pkts
nyse_equities_bbo_pillar_v2_5_b_display.total_refresh_pkts = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_equities_bbo_pillar_v2_5_b_dissect.total_refresh_pkts = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.total_refresh_pkts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.total_refresh_pkts(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Size: Current Refresh Pkt
nyse_equities_bbo_pillar_v2_5_b_size_of.current_refresh_pkt = 2

-- Display: Current Refresh Pkt
nyse_equities_bbo_pillar_v2_5_b_display.current_refresh_pkt = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_equities_bbo_pillar_v2_5_b_dissect.current_refresh_pkt = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.current_refresh_pkt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.current_refresh_pkt(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Header Message
nyse_equities_bbo_pillar_v2_5_b_size_of.refresh_header_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.current_refresh_pkt

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.total_refresh_pkts

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.last_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.last_symbol_seq_num

  return index
end

-- Display: Refresh Header Message
nyse_equities_bbo_pillar_v2_5_b_display.refresh_header_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_equities_bbo_pillar_v2_5_b_dissect.refresh_header_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_equities_bbo_pillar_v2_5_b_dissect.current_refresh_pkt(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_equities_bbo_pillar_v2_5_b_dissect.total_refresh_pkts(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.last_seq_num(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.last_symbol_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_equities_bbo_pillar_v2_5_b_dissect.refresh_header_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_header_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.refresh_header_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.refresh_header_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.refresh_header_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.refresh_header_message_fields(buffer, offset, packet, parent)
end

-- Size: Session State
nyse_equities_bbo_pillar_v2_5_b_size_of.session_state = 1

-- Display: Session State
nyse_equities_bbo_pillar_v2_5_b_display.session_state = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_equities_bbo_pillar_v2_5_b_dissect.session_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.session_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.session_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.session_state, range, value, display)

  return offset + length, value
end

-- Size: Market State
nyse_equities_bbo_pillar_v2_5_b_size_of.market_state = 1

-- Display: Market State
nyse_equities_bbo_pillar_v2_5_b_display.market_state = function(value)
  return "Market State: "..value
end

-- Dissect: Market State
nyse_equities_bbo_pillar_v2_5_b_dissect.market_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.market_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.market_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.market_state, range, value, display)

  return offset + length, value
end

-- Size: Ssr State
nyse_equities_bbo_pillar_v2_5_b_size_of.ssr_state = 1

-- Display: Ssr State
nyse_equities_bbo_pillar_v2_5_b_display.ssr_state = function(value)
  return "Ssr State: "..value
end

-- Dissect: Ssr State
nyse_equities_bbo_pillar_v2_5_b_dissect.ssr_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.ssr_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.ssr_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Size: Time
nyse_equities_bbo_pillar_v2_5_b_size_of.time = 4

-- Display: Time
nyse_equities_bbo_pillar_v2_5_b_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_equities_bbo_pillar_v2_5_b_dissect.time = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.time, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Volume
nyse_equities_bbo_pillar_v2_5_b_size_of.ssr_triggering_volume = 4

-- Display: Ssr Triggering Volume
nyse_equities_bbo_pillar_v2_5_b_display.ssr_triggering_volume = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_equities_bbo_pillar_v2_5_b_dissect.ssr_triggering_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.ssr_triggering_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.ssr_triggering_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Exchange Id
nyse_equities_bbo_pillar_v2_5_b_size_of.ssr_triggering_exchange_id = 1

-- Display: Ssr Triggering Exchange Id
nyse_equities_bbo_pillar_v2_5_b_display.ssr_triggering_exchange_id = function(value)
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
nyse_equities_bbo_pillar_v2_5_b_dissect.ssr_triggering_exchange_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.ssr_triggering_exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.ssr_triggering_exchange_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Size: Price 2
nyse_equities_bbo_pillar_v2_5_b_size_of.price_2 = 4

-- Display: Price 2
nyse_equities_bbo_pillar_v2_5_b_display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_equities_bbo_pillar_v2_5_b_dissect.price_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.price_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.price_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.price_2, range, value, display)

  return offset + length, value
end

-- Size: Price 1
nyse_equities_bbo_pillar_v2_5_b_size_of.price_1 = 4

-- Display: Price 1
nyse_equities_bbo_pillar_v2_5_b_display.price_1 = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_equities_bbo_pillar_v2_5_b_dissect.price_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.price_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.price_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.price_1, range, value, display)

  return offset + length, value
end

-- Size: Reserved 4
nyse_equities_bbo_pillar_v2_5_b_size_of.reserved_4 = 4

-- Display: Reserved 4
nyse_equities_bbo_pillar_v2_5_b_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_equities_bbo_pillar_v2_5_b_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bbo_pillar_v2_5_b_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Halt Condition
nyse_equities_bbo_pillar_v2_5_b_size_of.halt_condition = 1

-- Display: Halt Condition
nyse_equities_bbo_pillar_v2_5_b_display.halt_condition = function(value)
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
nyse_equities_bbo_pillar_v2_5_b_dissect.halt_condition = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.halt_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Status
nyse_equities_bbo_pillar_v2_5_b_size_of.security_status = 1

-- Display: Security Status
nyse_equities_bbo_pillar_v2_5_b_display.security_status = function(value)
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
nyse_equities_bbo_pillar_v2_5_b_dissect.security_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.security_status, range, value, display)

  return offset + length, value
end

-- Size: Source Time
nyse_equities_bbo_pillar_v2_5_b_size_of.source_time = 4

-- Display: Source Time
nyse_equities_bbo_pillar_v2_5_b_display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_equities_bbo_pillar_v2_5_b_dissect.source_time = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.source_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.source_time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.source_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Message
nyse_equities_bbo_pillar_v2_5_b_size_of.security_status_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_time

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_time_ns

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.security_status

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.halt_condition

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.reserved_4

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.price_1

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.price_2

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.ssr_triggering_exchange_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.ssr_triggering_volume

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.time

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.ssr_state

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.market_state

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.session_state

  return index
end

-- Display: Security Status Message
nyse_equities_bbo_pillar_v2_5_b_display.security_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_equities_bbo_pillar_v2_5_b_dissect.security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bbo_pillar_v2_5_b_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bbo_pillar_v2_5_b_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index, security_status = nyse_equities_bbo_pillar_v2_5_b_dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 12 values
  index, halt_condition = nyse_equities_bbo_pillar_v2_5_b_dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_bbo_pillar_v2_5_b_dissect.reserved_4(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_equities_bbo_pillar_v2_5_b_dissect.price_1(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_equities_bbo_pillar_v2_5_b_dissect.price_2(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 18 values
  index, ssr_triggering_exchange_id = nyse_equities_bbo_pillar_v2_5_b_dissect.ssr_triggering_exchange_id(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_equities_bbo_pillar_v2_5_b_dissect.ssr_triggering_volume(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_equities_bbo_pillar_v2_5_b_dissect.time(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String
  index, ssr_state = nyse_equities_bbo_pillar_v2_5_b_dissect.ssr_state(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String
  index, market_state = nyse_equities_bbo_pillar_v2_5_b_dissect.market_state(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String
  index, session_state = nyse_equities_bbo_pillar_v2_5_b_dissect.session_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_equities_bbo_pillar_v2_5_b_dissect.security_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_status_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.security_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.security_status_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.security_status_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.security_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Next Source Seq Num
nyse_equities_bbo_pillar_v2_5_b_size_of.next_source_seq_num = 4

-- Display: Next Source Seq Num
nyse_equities_bbo_pillar_v2_5_b_display.next_source_seq_num = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_equities_bbo_pillar_v2_5_b_dissect.next_source_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.next_source_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.next_source_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Clear Message
nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_clear_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_time

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_time_ns

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.next_source_seq_num

  return index
end

-- Display: Symbol Clear Message
nyse_equities_bbo_pillar_v2_5_b_display.symbol_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bbo_pillar_v2_5_b_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bbo_pillar_v2_5_b_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.next_source_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_clear_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_clear_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.symbol_clear_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.symbol_clear_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: Channel Id
nyse_equities_bbo_pillar_v2_5_b_size_of.channel_id = 1

-- Display: Channel Id
nyse_equities_bbo_pillar_v2_5_b_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_equities_bbo_pillar_v2_5_b_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
nyse_equities_bbo_pillar_v2_5_b_size_of.product_id = 1

-- Display: Product Id
nyse_equities_bbo_pillar_v2_5_b_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_equities_bbo_pillar_v2_5_b_dissect.product_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.product_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: End Seq Num
nyse_equities_bbo_pillar_v2_5_b_size_of.end_seq_num = 4

-- Display: End Seq Num
nyse_equities_bbo_pillar_v2_5_b_display.end_seq_num = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_equities_bbo_pillar_v2_5_b_dissect.end_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.end_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.end_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Begin Seq Num
nyse_equities_bbo_pillar_v2_5_b_size_of.begin_seq_num = 4

-- Display: Begin Seq Num
nyse_equities_bbo_pillar_v2_5_b_display.begin_seq_num = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_equities_bbo_pillar_v2_5_b_dissect.begin_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.begin_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.begin_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Unavailable Message
nyse_equities_bbo_pillar_v2_5_b_size_of.message_unavailable_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.begin_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.end_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.product_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.channel_id

  return index
end

-- Display: Message Unavailable Message
nyse_equities_bbo_pillar_v2_5_b_display.message_unavailable_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_equities_bbo_pillar_v2_5_b_dissect.message_unavailable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.end_seq_num(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_equities_bbo_pillar_v2_5_b_dissect.message_unavailable_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_unavailable_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.message_unavailable_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.message_unavailable_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.message_unavailable_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.message_unavailable_message_fields(buffer, offset, packet, parent)
end

-- Size: Source Id
nyse_equities_bbo_pillar_v2_5_b_size_of.source_id = 10

-- Display: Source Id
nyse_equities_bbo_pillar_v2_5_b_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_equities_bbo_pillar_v2_5_b_dissect.source_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.source_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.source_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Request Message
nyse_equities_bbo_pillar_v2_5_b_size_of.refresh_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.product_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.channel_id

  return index
end

-- Display: Refresh Request Message
nyse_equities_bbo_pillar_v2_5_b_display.refresh_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_equities_bbo_pillar_v2_5_b_dissect.refresh_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_equities_bbo_pillar_v2_5_b_dissect.refresh_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_request_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.refresh_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.refresh_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.refresh_request_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.refresh_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Retransmit Method
nyse_equities_bbo_pillar_v2_5_b_size_of.retransmit_method = 1

-- Display: Retransmit Method
nyse_equities_bbo_pillar_v2_5_b_display.retransmit_method = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_equities_bbo_pillar_v2_5_b_dissect.retransmit_method = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.retransmit_method
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.retransmit_method(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Request Message
nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index_mapping_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.product_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.channel_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.retransmit_method

  return index
end

-- Display: Symbol Index Mapping Request Message
nyse_equities_bbo_pillar_v2_5_b_display.symbol_index_mapping_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index_mapping_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b_dissect.channel_id(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, retransmit_method = nyse_equities_bbo_pillar_v2_5_b_dissect.retransmit_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index_mapping_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_index_mapping_request_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index_mapping_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.symbol_index_mapping_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index_mapping_request_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat Response Message
nyse_equities_bbo_pillar_v2_5_b_size_of.heartbeat_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_id

  return index
end

-- Display: Heartbeat Response Message
nyse_equities_bbo_pillar_v2_5_b_display.heartbeat_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_equities_bbo_pillar_v2_5_b_dissect.heartbeat_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b_dissect.source_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_equities_bbo_pillar_v2_5_b_dissect.heartbeat_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat_response_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.heartbeat_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.heartbeat_response_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.heartbeat_response_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Status
nyse_equities_bbo_pillar_v2_5_b_size_of.status = 1

-- Display: Status
nyse_equities_bbo_pillar_v2_5_b_display.status = function(value)
  return "Status: "..value
end

-- Dissect: Status
nyse_equities_bbo_pillar_v2_5_b_dissect.status = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.status, range, value, display)

  return offset + length, value
end

-- Size: Request Seq Num
nyse_equities_bbo_pillar_v2_5_b_size_of.request_seq_num = 4

-- Display: Request Seq Num
nyse_equities_bbo_pillar_v2_5_b_display.request_seq_num = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_equities_bbo_pillar_v2_5_b_dissect.request_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.request_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.request_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Response Message
nyse_equities_bbo_pillar_v2_5_b_size_of.request_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.request_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.begin_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.end_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.product_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.channel_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.status

  return index
end

-- Display: Request Response Message
nyse_equities_bbo_pillar_v2_5_b_display.request_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_equities_bbo_pillar_v2_5_b_dissect.request_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.request_seq_num(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b_dissect.channel_id(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String
  index, status = nyse_equities_bbo_pillar_v2_5_b_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_equities_bbo_pillar_v2_5_b_dissect.request_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_response_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.request_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.request_response_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.request_response_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.request_response_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Retransmission Request Message
nyse_equities_bbo_pillar_v2_5_b_size_of.retransmission_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.begin_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.end_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.product_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.channel_id

  return index
end

-- Display: Retransmission Request Message
nyse_equities_bbo_pillar_v2_5_b_display.retransmission_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_equities_bbo_pillar_v2_5_b_dissect.retransmission_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bbo_pillar_v2_5_b_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_equities_bbo_pillar_v2_5_b_dissect.retransmission_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmission_request_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.retransmission_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.retransmission_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.retransmission_request_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.retransmission_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 2
nyse_equities_bbo_pillar_v2_5_b_size_of.reserved_2 = 2

-- Display: Reserved 2
nyse_equities_bbo_pillar_v2_5_b_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_equities_bbo_pillar_v2_5_b_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.reserved_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bbo_pillar_v2_5_b_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Trade
nyse_equities_bbo_pillar_v2_5_b_size_of.unit_of_trade = 2

-- Display: Unit Of Trade
nyse_equities_bbo_pillar_v2_5_b_display.unit_of_trade = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_equities_bbo_pillar_v2_5_b_dissect.unit_of_trade = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.unit_of_trade
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.unit_of_trade(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Size: Mpv
nyse_equities_bbo_pillar_v2_5_b_size_of.mpv = 2

-- Display: Mpv
nyse_equities_bbo_pillar_v2_5_b_display.mpv = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_equities_bbo_pillar_v2_5_b_dissect.mpv = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.mpv
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.mpv(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Round Lot
nyse_equities_bbo_pillar_v2_5_b_size_of.round_lot = 1

-- Display: Round Lot
nyse_equities_bbo_pillar_v2_5_b_display.round_lot = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
nyse_equities_bbo_pillar_v2_5_b_dissect.round_lot = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.round_lot
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.round_lot(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Size: Price Resolution
nyse_equities_bbo_pillar_v2_5_b_size_of.price_resolution = 1

-- Display: Price Resolution
nyse_equities_bbo_pillar_v2_5_b_display.price_resolution = function(value)
  return "Price Resolution: "..value
end

-- Dissect: Price Resolution
nyse_equities_bbo_pillar_v2_5_b_dissect.price_resolution = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.price_resolution
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Volume
nyse_equities_bbo_pillar_v2_5_b_size_of.prev_close_volume = 4

-- Display: Prev Close Volume
nyse_equities_bbo_pillar_v2_5_b_display.prev_close_volume = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_equities_bbo_pillar_v2_5_b_dissect.prev_close_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.prev_close_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.prev_close_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Price
nyse_equities_bbo_pillar_v2_5_b_size_of.prev_close_price = 4

-- Display: Prev Close Price
nyse_equities_bbo_pillar_v2_5_b_display.prev_close_price = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_equities_bbo_pillar_v2_5_b_dissect.prev_close_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.prev_close_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.prev_close_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
nyse_equities_bbo_pillar_v2_5_b_size_of.lot_size = 2

-- Display: Lot Size
nyse_equities_bbo_pillar_v2_5_b_display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_equities_bbo_pillar_v2_5_b_dissect.lot_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.lot_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Security Type
nyse_equities_bbo_pillar_v2_5_b_size_of.security_type = 1

-- Display: Security Type
nyse_equities_bbo_pillar_v2_5_b_display.security_type = function(value)
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
nyse_equities_bbo_pillar_v2_5_b_dissect.security_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Price Scale Code
nyse_equities_bbo_pillar_v2_5_b_size_of.price_scale_code = 1

-- Display: Price Scale Code
nyse_equities_bbo_pillar_v2_5_b_display.price_scale_code = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_equities_bbo_pillar_v2_5_b_dissect.price_scale_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.price_scale_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
nyse_equities_bbo_pillar_v2_5_b_size_of.exchange_code = 1

-- Display: Exchange Code
nyse_equities_bbo_pillar_v2_5_b_display.exchange_code = function(value)
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
nyse_equities_bbo_pillar_v2_5_b_dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.exchange_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Size: System Id
nyse_equities_bbo_pillar_v2_5_b_size_of.system_id = 1

-- Display: System Id
nyse_equities_bbo_pillar_v2_5_b_display.system_id = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_equities_bbo_pillar_v2_5_b_dissect.system_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.system_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.system_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.system_id, range, value, display)

  return offset + length, value
end

-- Size: Market Id
nyse_equities_bbo_pillar_v2_5_b_size_of.market_id = 2

-- Display: Market Id
nyse_equities_bbo_pillar_v2_5_b_display.market_id = function(value)
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
nyse_equities_bbo_pillar_v2_5_b_dissect.market_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
nyse_equities_bbo_pillar_v2_5_b_size_of.reserved_1 = 1

-- Display: Reserved 1
nyse_equities_bbo_pillar_v2_5_b_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_equities_bbo_pillar_v2_5_b_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bbo_pillar_v2_5_b_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Symbol
nyse_equities_bbo_pillar_v2_5_b_size_of.symbol = 11

-- Display: Symbol
nyse_equities_bbo_pillar_v2_5_b_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_equities_bbo_pillar_v2_5_b_dissect.symbol = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Message
nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index_mapping_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.reserved_1

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.market_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.system_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.exchange_code

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.price_scale_code

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.security_type

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.lot_size

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.prev_close_price

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.prev_close_volume

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.price_resolution

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.round_lot

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.mpv

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.unit_of_trade

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.reserved_2

  return index
end

-- Display: Symbol Index Mapping Message
nyse_equities_bbo_pillar_v2_5_b_display.symbol_index_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_equities_bbo_pillar_v2_5_b_dissect.reserved_1(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, market_id = nyse_equities_bbo_pillar_v2_5_b_dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_equities_bbo_pillar_v2_5_b_dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 10 values
  index, exchange_code = nyse_equities_bbo_pillar_v2_5_b_dissect.exchange_code(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_equities_bbo_pillar_v2_5_b_dissect.price_scale_code(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_equities_bbo_pillar_v2_5_b_dissect.security_type(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_equities_bbo_pillar_v2_5_b_dissect.lot_size(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_equities_bbo_pillar_v2_5_b_dissect.prev_close_price(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_equities_bbo_pillar_v2_5_b_dissect.prev_close_volume(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer
  index, price_resolution = nyse_equities_bbo_pillar_v2_5_b_dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String
  index, round_lot = nyse_equities_bbo_pillar_v2_5_b_dissect.round_lot(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_equities_bbo_pillar_v2_5_b_dissect.mpv(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_equities_bbo_pillar_v2_5_b_dissect.unit_of_trade(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_bbo_pillar_v2_5_b_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_index_mapping_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index_mapping_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.symbol_index_mapping_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.symbol_index_mapping_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
end

-- Size: Id
nyse_equities_bbo_pillar_v2_5_b_size_of.id = 4

-- Display: Id
nyse_equities_bbo_pillar_v2_5_b_display.id = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_equities_bbo_pillar_v2_5_b_dissect.id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Source Time Reference Message
nyse_equities_bbo_pillar_v2_5_b_size_of.source_time_reference_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_seq_num

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_time

  return index
end

-- Display: Source Time Reference Message
nyse_equities_bbo_pillar_v2_5_b_display.source_time_reference_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_equities_bbo_pillar_v2_5_b_dissect.source_time_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_equities_bbo_pillar_v2_5_b_dissect.id(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bbo_pillar_v2_5_b_dissect.source_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_equities_bbo_pillar_v2_5_b_dissect.source_time_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.source_time_reference_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.source_time_reference_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.source_time_reference_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.source_time_reference_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.source_time_reference_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sequence Number Reset Message
nyse_equities_bbo_pillar_v2_5_b_size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_time

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.source_time_ns

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.product_id

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.channel_id

  return index
end

-- Display: Sequence Number Reset Message
nyse_equities_bbo_pillar_v2_5_b_display.sequence_number_reset_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_equities_bbo_pillar_v2_5_b_dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bbo_pillar_v2_5_b_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bbo_pillar_v2_5_b_dissect.source_time_ns(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bbo_pillar_v2_5_b_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bbo_pillar_v2_5_b_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_equities_bbo_pillar_v2_5_b_dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequence_number_reset_message then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.sequence_number_reset_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.sequence_number_reset_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.sequence_number_reset_message, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
nyse_equities_bbo_pillar_v2_5_b_size_of.payload = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.sequence_number_reset_message(buffer, offset)
  end
  -- Size of Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.source_time_reference_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index_mapping_message(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.retransmission_request_message(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.request_response_message(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.heartbeat_response_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_index_mapping_request_message(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.refresh_request_message(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.message_unavailable_message(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.symbol_clear_message(buffer, offset)
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.security_status_message(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.refresh_header_message(buffer, offset)
  end
  -- Size of Quote Message
  if message_type == 140 then
    return nyse_equities_bbo_pillar_v2_5_b_size_of.quote_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_equities_bbo_pillar_v2_5_b_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_equities_bbo_pillar_v2_5_b_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.source_time_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.retransmission_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.request_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.heartbeat_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_index_mapping_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.refresh_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.message_unavailable_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_type == 140 then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.quote_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_equities_bbo_pillar_v2_5_b_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_equities_bbo_pillar_v2_5_b_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_bbo_pillar_v2_5_b_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_bbo_pillar_v2_5_b_display.payload(buffer, packet, parent)
  local element = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.payload, range, display)

  return nyse_equities_bbo_pillar_v2_5_b_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nyse_equities_bbo_pillar_v2_5_b_size_of.message_type = 2

-- Display: Message Type
nyse_equities_bbo_pillar_v2_5_b_display.message_type = function(value)
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
nyse_equities_bbo_pillar_v2_5_b_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
nyse_equities_bbo_pillar_v2_5_b_size_of.message_size = 2

-- Display: Message Size
nyse_equities_bbo_pillar_v2_5_b_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_equities_bbo_pillar_v2_5_b_dissect.message_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.message_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nyse_equities_bbo_pillar_v2_5_b_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.message_size

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.message_type

  return index
end

-- Display: Message Header
nyse_equities_bbo_pillar_v2_5_b_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
nyse_equities_bbo_pillar_v2_5_b_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_equities_bbo_pillar_v2_5_b_dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = nyse_equities_bbo_pillar_v2_5_b_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_equities_bbo_pillar_v2_5_b_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.message_header, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
nyse_equities_bbo_pillar_v2_5_b_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nyse_equities_bbo_pillar_v2_5_b_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_equities_bbo_pillar_v2_5_b_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = nyse_equities_bbo_pillar_v2_5_b_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_equities_bbo_pillar_v2_5_b_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.message, range, display)
  end

  nyse_equities_bbo_pillar_v2_5_b_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Nanoseconds
nyse_equities_bbo_pillar_v2_5_b_size_of.nanoseconds = 4

-- Display: Nanoseconds
nyse_equities_bbo_pillar_v2_5_b_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_equities_bbo_pillar_v2_5_b_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nyse_equities_bbo_pillar_v2_5_b_size_of.timestamp = 4

-- Display: Timestamp
nyse_equities_bbo_pillar_v2_5_b_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_bbo_pillar_v2_5_b_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nyse_equities_bbo_pillar_v2_5_b_size_of.sequence_number = 4

-- Display: Sequence Number
nyse_equities_bbo_pillar_v2_5_b_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_equities_bbo_pillar_v2_5_b_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Count
nyse_equities_bbo_pillar_v2_5_b_size_of.message_count = 1

-- Display: Message Count
nyse_equities_bbo_pillar_v2_5_b_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_equities_bbo_pillar_v2_5_b_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
nyse_equities_bbo_pillar_v2_5_b_size_of.delivery_flag = 1

-- Display: Delivery Flag
nyse_equities_bbo_pillar_v2_5_b_display.delivery_flag = function(value)
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
nyse_equities_bbo_pillar_v2_5_b_dissect.delivery_flag = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.delivery_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
nyse_equities_bbo_pillar_v2_5_b_size_of.packet_size = 2

-- Display: Packet Size
nyse_equities_bbo_pillar_v2_5_b_display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_equities_bbo_pillar_v2_5_b_dissect.packet_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_bbo_pillar_v2_5_b_size_of.packet_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bbo_pillar_v2_5_b_display.packet_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nyse_equities_bbo_pillar_v2_5_b_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.packet_size

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.delivery_flag

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.message_count

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.sequence_number

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.timestamp

  index = index + nyse_equities_bbo_pillar_v2_5_b_size_of.nanoseconds

  return index
end

-- Display: Packet Header
nyse_equities_bbo_pillar_v2_5_b_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
nyse_equities_bbo_pillar_v2_5_b_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_equities_bbo_pillar_v2_5_b_dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_equities_bbo_pillar_v2_5_b_dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_equities_bbo_pillar_v2_5_b_dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_equities_bbo_pillar_v2_5_b_dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_bbo_pillar_v2_5_b_dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_equities_bbo_pillar_v2_5_b_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_equities_bbo_pillar_v2_5_b_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = nyse_equities_bbo_pillar_v2_5_b_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bbo_pillar_v2_5_b_display.packet_header(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_pillar_v2_5_b.fields.packet_header, range, display)
  end

  return nyse_equities_bbo_pillar_v2_5_b_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
nyse_equities_bbo_pillar_v2_5_b_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_equities_bbo_pillar_v2_5_b_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Message: Struct of 2 fields
    index = nyse_equities_bbo_pillar_v2_5_b_dissect.message(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_equities_bbo_pillar_v2_5_b.init()
end

-- Dissector for Nyse Equities Bbo Pillar 2.5.b
function nyse_equities_bbo_pillar_v2_5_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_equities_bbo_pillar_v2_5_b.name

  -- Dissect protocol
  local protocol = parent:add(nyse_equities_bbo_pillar_v2_5_b, buffer(), nyse_equities_bbo_pillar_v2_5_b.description, "("..buffer:len().." Bytes)")
  return nyse_equities_bbo_pillar_v2_5_b_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_equities_bbo_pillar_v2_5_b)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_equities_bbo_pillar_v2_5_b_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities Bbo Pillar 2.5.b
local function nyse_equities_bbo_pillar_v2_5_b_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_equities_bbo_pillar_v2_5_b_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_equities_bbo_pillar_v2_5_b
  nyse_equities_bbo_pillar_v2_5_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities Bbo Pillar 2.5.b
nyse_equities_bbo_pillar_v2_5_b:register_heuristic("udp", nyse_equities_bbo_pillar_v2_5_b_heuristic)

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
