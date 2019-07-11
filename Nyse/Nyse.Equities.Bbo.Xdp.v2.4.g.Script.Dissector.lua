-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities Bbo Xdp 2.4.g Protocol
local nyse_equities_bbo_xdp_v2_4_g = Proto("Nyse.Equities.Bbo.Xdp.v2.4.g.Lua", "Nyse Equities Bbo Xdp 2.4.g")

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

-- Nyse Equities Bbo Xdp 2.4.g Fields
nyse_equities_bbo_xdp_v2_4_g.fields.ask_price = ProtoField.new("Ask Price", "nyse.equities.bbo.xdp.v2.4.g.askprice", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.equities.bbo.xdp.v2.4.g.askvolume", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.equities.bbo.xdp.v2.4.g.beginseqnum", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.bid_price = ProtoField.new("Bid Price", "nyse.equities.bbo.xdp.v2.4.g.bidprice", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.equities.bbo.xdp.v2.4.g.bidvolume", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.channel_id = ProtoField.new("Channel Id", "nyse.equities.bbo.xdp.v2.4.g.channelid", ftypes.UINT8)
nyse_equities_bbo_xdp_v2_4_g.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.equities.bbo.xdp.v2.4.g.currentrefreshpkt", ftypes.UINT16)
nyse_equities_bbo_xdp_v2_4_g.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.bbo.xdp.v2.4.g.deliveryflag", ftypes.UINT8)
nyse_equities_bbo_xdp_v2_4_g.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.equities.bbo.xdp.v2.4.g.endseqnum", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.equities.bbo.xdp.v2.4.g.exchangecode", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.equities.bbo.xdp.v2.4.g.haltcondition", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.equities.bbo.xdp.v2.4.g.heartbeatresponsemessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.id = ProtoField.new("Id", "nyse.equities.bbo.xdp.v2.4.g.id", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.equities.bbo.xdp.v2.4.g.lastseqnum", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.equities.bbo.xdp.v2.4.g.lastsymbolseqnum", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.lot_size = ProtoField.new("Lot Size", "nyse.equities.bbo.xdp.v2.4.g.lotsize", ftypes.UINT16)
nyse_equities_bbo_xdp_v2_4_g.fields.market_id = ProtoField.new("Market Id", "nyse.equities.bbo.xdp.v2.4.g.marketid", ftypes.UINT16)
nyse_equities_bbo_xdp_v2_4_g.fields.market_state = ProtoField.new("Market State", "nyse.equities.bbo.xdp.v2.4.g.marketstate", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.message = ProtoField.new("Message", "nyse.equities.bbo.xdp.v2.4.g.message", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.message_count = ProtoField.new("Message Count", "nyse.equities.bbo.xdp.v2.4.g.messagecount", ftypes.UINT8)
nyse_equities_bbo_xdp_v2_4_g.fields.message_header = ProtoField.new("Message Header", "nyse.equities.bbo.xdp.v2.4.g.messageheader", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.message_size = ProtoField.new("Message Size", "nyse.equities.bbo.xdp.v2.4.g.messagesize", ftypes.UINT16)
nyse_equities_bbo_xdp_v2_4_g.fields.message_type = ProtoField.new("Message Type", "nyse.equities.bbo.xdp.v2.4.g.messagetype", ftypes.UINT16)
nyse_equities_bbo_xdp_v2_4_g.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.equities.bbo.xdp.v2.4.g.messageunavailablemessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.mpv = ProtoField.new("Mpv", "nyse.equities.bbo.xdp.v2.4.g.mpv", ftypes.UINT16)
nyse_equities_bbo_xdp_v2_4_g.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.bbo.xdp.v2.4.g.nanoseconds", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.equities.bbo.xdp.v2.4.g.nextsourceseqnum", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.packet = ProtoField.new("Packet", "nyse.equities.bbo.xdp.v2.4.g.packet", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.bbo.xdp.v2.4.g.packetheader", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.bbo.xdp.v2.4.g.packetsize", ftypes.UINT16)
nyse_equities_bbo_xdp_v2_4_g.fields.payload = ProtoField.new("Payload", "nyse.equities.bbo.xdp.v2.4.g.payload", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.equities.bbo.xdp.v2.4.g.prevcloseprice", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.equities.bbo.xdp.v2.4.g.prevclosevolume", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.price_1 = ProtoField.new("Price 1", "nyse.equities.bbo.xdp.v2.4.g.price1", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.price_2 = ProtoField.new("Price 2", "nyse.equities.bbo.xdp.v2.4.g.price2", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.equities.bbo.xdp.v2.4.g.priceresolution", ftypes.UINT8)
nyse_equities_bbo_xdp_v2_4_g.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.equities.bbo.xdp.v2.4.g.pricescalecode", ftypes.UINT8)
nyse_equities_bbo_xdp_v2_4_g.fields.product_id = ProtoField.new("Product Id", "nyse.equities.bbo.xdp.v2.4.g.productid", ftypes.UINT8)
nyse_equities_bbo_xdp_v2_4_g.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.equities.bbo.xdp.v2.4.g.quotecondition", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.quote_message = ProtoField.new("Quote Message", "nyse.equities.bbo.xdp.v2.4.g.quotemessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.equities.bbo.xdp.v2.4.g.refreshheadermessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.equities.bbo.xdp.v2.4.g.refreshrequestmessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.equities.bbo.xdp.v2.4.g.requestresponsemessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.equities.bbo.xdp.v2.4.g.requestseqnum", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.equities.bbo.xdp.v2.4.g.reserved1", ftypes.BYTES)
nyse_equities_bbo_xdp_v2_4_g.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.equities.bbo.xdp.v2.4.g.reserved2", ftypes.BYTES)
nyse_equities_bbo_xdp_v2_4_g.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.equities.bbo.xdp.v2.4.g.reserved4", ftypes.BYTES)
nyse_equities_bbo_xdp_v2_4_g.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.equities.bbo.xdp.v2.4.g.retransmissionrequestmessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.equities.bbo.xdp.v2.4.g.retransmitmethod", ftypes.UINT8)
nyse_equities_bbo_xdp_v2_4_g.fields.round_lot = ProtoField.new("Round Lot", "nyse.equities.bbo.xdp.v2.4.g.roundlot", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.equities.bbo.xdp.v2.4.g.rpiindicator", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.security_status = ProtoField.new("Security Status", "nyse.equities.bbo.xdp.v2.4.g.securitystatus", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.equities.bbo.xdp.v2.4.g.securitystatusmessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.security_type = ProtoField.new("Security Type", "nyse.equities.bbo.xdp.v2.4.g.securitytype", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.bbo.xdp.v2.4.g.sequencenumber", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.equities.bbo.xdp.v2.4.g.sequencenumberresetmessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.session_state = ProtoField.new("Session State", "nyse.equities.bbo.xdp.v2.4.g.sessionstate", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.source_id = ProtoField.new("Source Id", "nyse.equities.bbo.xdp.v2.4.g.sourceid", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.source_time = ProtoField.new("Source Time", "nyse.equities.bbo.xdp.v2.4.g.sourcetime", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.bbo.xdp.v2.4.g.sourcetimens", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.equities.bbo.xdp.v2.4.g.sourcetimereferencemessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.ssr_state = ProtoField.new("Ssr State", "nyse.equities.bbo.xdp.v2.4.g.ssrstate", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.equities.bbo.xdp.v2.4.g.ssrtriggeringexchangeid", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.equities.bbo.xdp.v2.4.g.ssrtriggeringvolume", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.status = ProtoField.new("Status", "nyse.equities.bbo.xdp.v2.4.g.status", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.symbol = ProtoField.new("Symbol", "nyse.equities.bbo.xdp.v2.4.g.symbol", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.equities.bbo.xdp.v2.4.g.symbolclearmessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.bbo.xdp.v2.4.g.symbolindex", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.equities.bbo.xdp.v2.4.g.symbolindexmappingmessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.equities.bbo.xdp.v2.4.g.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.bbo.xdp.v2.4.g.symbolseqnum", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.system_id = ProtoField.new("System Id", "nyse.equities.bbo.xdp.v2.4.g.systemid", ftypes.UINT8)
nyse_equities_bbo_xdp_v2_4_g.fields.time = ProtoField.new("Time", "nyse.equities.bbo.xdp.v2.4.g.time", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.bbo.xdp.v2.4.g.timestamp", ftypes.UINT32)
nyse_equities_bbo_xdp_v2_4_g.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.equities.bbo.xdp.v2.4.g.totalrefreshpkts", ftypes.UINT16)
nyse_equities_bbo_xdp_v2_4_g.fields.trading_session = ProtoField.new("Trading Session", "nyse.equities.bbo.xdp.v2.4.g.tradingsession", ftypes.UINT8)
nyse_equities_bbo_xdp_v2_4_g.fields.trading_session_change_message = ProtoField.new("Trading Session Change Message", "nyse.equities.bbo.xdp.v2.4.g.tradingsessionchangemessage", ftypes.STRING)
nyse_equities_bbo_xdp_v2_4_g.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.equities.bbo.xdp.v2.4.g.unitoftrade", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Equities Bbo Xdp 2.4.g Element Dissection Options
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
show.trading_session_change_message = true
show.payload = false

-- Register Nyse Equities Bbo Xdp 2.4.g Show Options
nyse_equities_bbo_xdp_v2_4_g.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_source_time_reference_message = Pref.bool("Show Source Time Reference Message", show.source_time_reference_message, "Parse and add Source Time Reference Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_trading_session_change_message = Pref.bool("Show Trading Session Change Message", show.trading_session_change_message, "Parse and add Trading Session Change Message to protocol tree")
nyse_equities_bbo_xdp_v2_4_g.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_equities_bbo_xdp_v2_4_g.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat_response_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_message then
    show.message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_message_header then
    show.message_header = nyse_equities_bbo_xdp_v2_4_g.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_message_unavailable_message then
    show.message_unavailable_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_packet then
    show.packet = nyse_equities_bbo_xdp_v2_4_g.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_packet_header then
    show.packet_header = nyse_equities_bbo_xdp_v2_4_g.prefs.show_packet_header
    changed = true
  end
  if show.quote_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_quote_message then
    show.quote_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_quote_message
    changed = true
  end
  if show.refresh_header_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_refresh_header_message then
    show.refresh_header_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_refresh_request_message then
    show.refresh_request_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_request_response_message then
    show.request_response_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_retransmission_request_message then
    show.retransmission_request_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_security_status_message then
    show.security_status_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.source_time_reference_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_source_time_reference_message then
    show.source_time_reference_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_source_time_reference_message
    changed = true
  end
  if show.symbol_clear_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_symbol_clear_message then
    show.symbol_clear_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.trading_session_change_message ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_trading_session_change_message then
    show.trading_session_change_message = nyse_equities_bbo_xdp_v2_4_g.prefs.show_trading_session_change_message
    changed = true
  end
  if show.payload ~= nyse_equities_bbo_xdp_v2_4_g.prefs.show_payload then
    show.payload = nyse_equities_bbo_xdp_v2_4_g.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Equities Bbo Xdp 2.4.g
-----------------------------------------------------------------------

-- Size: Rpi Indicator
size_of.rpi_indicator = 1

-- Display: Rpi Indicator
display.rpi_indicator = function(value)
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
dissect.rpi_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.rpi_indicator)
  local value = range:string()
  local display = display.rpi_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.rpi_indicator, range, value, display)

  return offset + size_of.rpi_indicator
end

-- Size: Quote Condition
size_of.quote_condition = 1

-- Display: Quote Condition
display.quote_condition = function(value)
  if value == "C" then
    return "Quote Condition: Closing (C)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Quote (R)"
  end
  if value == "W" then
    return "Quote Condition: Slow On The Bid And Ask (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
dissect.quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_condition)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.quote_condition, range, value, display)

  return offset + size_of.quote_condition
end

-- Size: Bid Volume
size_of.bid_volume = 4

-- Display: Bid Volume
display.bid_volume = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
dissect.bid_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_volume)
  local value = range:le_uint()
  local display = display.bid_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.bid_volume, range, value, display)

  return offset + size_of.bid_volume
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
  local value = range:le_uint()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.bid_price, range, value, display)

  return offset + size_of.bid_price
end

-- Size: Ask Volume
size_of.ask_volume = 4

-- Display: Ask Volume
display.ask_volume = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
dissect.ask_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_volume)
  local value = range:le_uint()
  local display = display.ask_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.ask_volume, range, value, display)

  return offset + size_of.ask_volume
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
  local value = range:le_uint()
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.ask_price, range, value, display)

  return offset + size_of.ask_price
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.symbol_seq_num, range, value, display)

  return offset + size_of.symbol_seq_num
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.symbol_index, range, value, display)

  return offset + size_of.symbol_index
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.source_time_ns, range, value, display)

  return offset + size_of.source_time_ns
end

-- Display: Quote Message
display.quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Message
dissect.quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index = dissect.rpi_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
dissect.quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_message then
    local range = buffer(offset, 30)
    local display = display.quote_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.quote_message, range, display)
  end

  return dissect.quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Symbol Seq Num
size_of.last_symbol_seq_num = 4

-- Display: Last Symbol Seq Num
display.last_symbol_seq_num = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
dissect.last_symbol_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_symbol_seq_num)
  local value = range:le_uint()
  local display = display.last_symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.last_symbol_seq_num, range, value, display)

  return offset + size_of.last_symbol_seq_num
end

-- Size: Last Seq Num
size_of.last_seq_num = 4

-- Display: Last Seq Num
display.last_seq_num = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
dissect.last_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_seq_num)
  local value = range:le_uint()
  local display = display.last_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.last_seq_num, range, value, display)

  return offset + size_of.last_seq_num
end

-- Size: Total Refresh Pkts
size_of.total_refresh_pkts = 2

-- Display: Total Refresh Pkts
display.total_refresh_pkts = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
dissect.total_refresh_pkts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.total_refresh_pkts)
  local value = range:le_uint()
  local display = display.total_refresh_pkts(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.total_refresh_pkts, range, value, display)

  return offset + size_of.total_refresh_pkts
end

-- Size: Current Refresh Pkt
size_of.current_refresh_pkt = 2

-- Display: Current Refresh Pkt
display.current_refresh_pkt = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
dissect.current_refresh_pkt = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.current_refresh_pkt)
  local value = range:le_uint()
  local display = display.current_refresh_pkt(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.current_refresh_pkt, range, value, display)

  return offset + size_of.current_refresh_pkt
end

-- Display: Refresh Header Message
display.refresh_header_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Header Message
dissect.refresh_header_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index = dissect.current_refresh_pkt(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index = dissect.total_refresh_pkts(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_seq_num(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_symbol_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
dissect.refresh_header_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_header_message then
    local range = buffer(offset, 12)
    local display = display.refresh_header_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.refresh_header_message, range, display)
  end

  return dissect.refresh_header_message_fields(buffer, offset, packet, parent)
end

-- Size: Session State
size_of.session_state = 1

-- Display: Session State
display.session_state = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
dissect.session_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session_state)
  local value = range:string()
  local display = display.session_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.session_state, range, value, display)

  return offset + size_of.session_state
end

-- Size: Market State
size_of.market_state = 1

-- Display: Market State
display.market_state = function(value)
  return "Market State: "..value
end

-- Dissect: Market State
dissect.market_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_state)
  local value = range:string()
  local display = display.market_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.market_state, range, value, display)

  return offset + size_of.market_state
end

-- Size: Ssr State
size_of.ssr_state = 1

-- Display: Ssr State
display.ssr_state = function(value)
  return "Ssr State: "..value
end

-- Dissect: Ssr State
dissect.ssr_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssr_state)
  local value = range:string()
  local display = display.ssr_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.ssr_state, range, value, display)

  return offset + size_of.ssr_state
end

-- Size: Time
size_of.time = 4

-- Display: Time
display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
dissect.time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.time)
  local value = range:le_uint()
  local display = display.time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.time, range, value, display)

  return offset + size_of.time
end

-- Size: Ssr Triggering Volume
size_of.ssr_triggering_volume = 4

-- Display: Ssr Triggering Volume
display.ssr_triggering_volume = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
dissect.ssr_triggering_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssr_triggering_volume)
  local value = range:le_uint()
  local display = display.ssr_triggering_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.ssr_triggering_volume, range, value, display)

  return offset + size_of.ssr_triggering_volume
end

-- Size: Ssr Triggering Exchange Id
size_of.ssr_triggering_exchange_id = 1

-- Display: Ssr Triggering Exchange Id
display.ssr_triggering_exchange_id = function(value)
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
dissect.ssr_triggering_exchange_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssr_triggering_exchange_id)
  local value = range:string()
  local display = display.ssr_triggering_exchange_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + size_of.ssr_triggering_exchange_id
end

-- Size: Price 2
size_of.price_2 = 4

-- Display: Price 2
display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
dissect.price_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_2)
  local value = range:le_uint()
  local display = display.price_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.price_2, range, value, display)

  return offset + size_of.price_2
end

-- Size: Price 1
size_of.price_1 = 4

-- Display: Price 1
display.price_1 = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
dissect.price_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_1)
  local value = range:le_uint()
  local display = display.price_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.price_1, range, value, display)

  return offset + size_of.price_1
end

-- Size: Reserved 4
size_of.reserved_4 = 4

-- Display: Reserved 4
display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
dissect.reserved_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_4)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.reserved_4, range, value, display)

  return offset + size_of.reserved_4
end

-- Size: Halt Condition
size_of.halt_condition = 1

-- Display: Halt Condition
display.halt_condition = function(value)
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
dissect.halt_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.halt_condition)
  local value = range:string()
  local display = display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.halt_condition, range, value, display)

  return offset + size_of.halt_condition
end

-- Size: Security Status
size_of.security_status = 1

-- Display: Security Status
display.security_status = function(value)
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
    return "Security Status: Rule15 Indication (R)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
dissect.security_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_status)
  local value = range:string()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.security_status, range, value, display)

  return offset + size_of.security_status
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.source_time, range, value, display)

  return offset + size_of.source_time
end

-- Display: Security Status Message
display.security_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Status Message
dissect.security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index = dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 12 values
  index = dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index = dissect.reserved_4(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price_1(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price_2(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 18 values
  index = dissect.ssr_triggering_exchange_id(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ssr_triggering_volume(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String
  index = dissect.ssr_state(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String
  index = dissect.market_state(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String
  index = dissect.session_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
dissect.security_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_status_message then
    local range = buffer(offset, 42)
    local display = display.security_status_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.security_status_message, range, display)
  end

  return dissect.security_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Trading Session
size_of.trading_session = 1

-- Display: Trading Session
display.trading_session = function(value)
  return "Trading Session: "..value
end

-- Dissect: Trading Session
dissect.trading_session = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_session)
  local value = range:le_uint()
  local display = display.trading_session(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.trading_session, range, value, display)

  return offset + size_of.trading_session
end

-- Display: Trading Session Change Message
display.trading_session_change_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Session Change Message
dissect.trading_session_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Unsigned Fixed Width Integer
  index = dissect.trading_session(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Change Message
dissect.trading_session_change_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_session_change_message then
    local range = buffer(offset, 17)
    local display = display.trading_session_change_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.trading_session_change_message, range, display)
  end

  return dissect.trading_session_change_message_fields(buffer, offset, packet, parent)
end

-- Size: Next Source Seq Num
size_of.next_source_seq_num = 4

-- Display: Next Source Seq Num
display.next_source_seq_num = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
dissect.next_source_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.next_source_seq_num)
  local value = range:le_uint()
  local display = display.next_source_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.next_source_seq_num, range, value, display)

  return offset + size_of.next_source_seq_num
end

-- Display: Symbol Clear Message
display.symbol_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Clear Message
dissect.symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.next_source_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
dissect.symbol_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_clear_message then
    local range = buffer(offset, 16)
    local display = display.symbol_clear_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.symbol_clear_message, range, display)
  end

  return dissect.symbol_clear_message_fields(buffer, offset, packet, parent)
end

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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.channel_id, range, value, display)

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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.product_id, range, value, display)

  return offset + size_of.product_id
end

-- Size: End Seq Num
size_of.end_seq_num = 4

-- Display: End Seq Num
display.end_seq_num = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
dissect.end_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.end_seq_num)
  local value = range:le_uint()
  local display = display.end_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.end_seq_num, range, value, display)

  return offset + size_of.end_seq_num
end

-- Size: Begin Seq Num
size_of.begin_seq_num = 4

-- Display: Begin Seq Num
display.begin_seq_num = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
dissect.begin_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.begin_seq_num)
  local value = range:le_uint()
  local display = display.begin_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.begin_seq_num, range, value, display)

  return offset + size_of.begin_seq_num
end

-- Display: Message Unavailable Message
display.message_unavailable_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Unavailable Message
dissect.message_unavailable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.end_seq_num(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
dissect.message_unavailable_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_unavailable_message then
    local range = buffer(offset, 10)
    local display = display.message_unavailable_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.message_unavailable_message, range, display)
  end

  return dissect.message_unavailable_message_fields(buffer, offset, packet, parent)
end

-- Size: Source Id
size_of.source_id = 10

-- Display: Source Id
display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
dissect.source_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source_id)
  local value = range:string()
  local display = display.source_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.source_id, range, value, display)

  return offset + size_of.source_id
end

-- Display: Refresh Request Message
display.refresh_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Request Message
dissect.refresh_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index = dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
dissect.refresh_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_request_message then
    local range = buffer(offset, 16)
    local display = display.refresh_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.refresh_request_message, range, display)
  end

  return dissect.refresh_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Retransmit Method
size_of.retransmit_method = 1

-- Display: Retransmit Method
display.retransmit_method = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
dissect.retransmit_method = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.retransmit_method)
  local value = range:le_uint()
  local display = display.retransmit_method(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.retransmit_method, range, value, display)

  return offset + size_of.retransmit_method
end

-- Display: Symbol Index Mapping Request Message
display.symbol_index_mapping_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
dissect.symbol_index_mapping_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index = dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index = dissect.retransmit_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
dissect.symbol_index_mapping_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_index_mapping_request_message then
    local range = buffer(offset, 17)
    local display = display.symbol_index_mapping_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.symbol_index_mapping_request_message, range, display)
  end

  return dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, parent)
end

-- Display: Heartbeat Response Message
display.heartbeat_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
dissect.heartbeat_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index = dissect.source_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
dissect.heartbeat_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat_response_message then
    local range = buffer(offset, 10)
    local display = display.heartbeat_response_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.heartbeat_response_message, range, display)
  end

  return dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Status
size_of.status = 1

-- Display: Status
display.status = function(value)
  return "Status: "..value
end

-- Dissect: Status
dissect.status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.status)
  local value = range:string()
  local display = display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.status, range, value, display)

  return offset + size_of.status
end

-- Size: Request Seq Num
size_of.request_seq_num = 4

-- Display: Request Seq Num
display.request_seq_num = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
dissect.request_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.request_seq_num)
  local value = range:le_uint()
  local display = display.request_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.request_seq_num, range, value, display)

  return offset + size_of.request_seq_num
end

-- Display: Request Response Message
display.request_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request Response Message
dissect.request_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.request_seq_num(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index = dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String
  index = dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
dissect.request_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_response_message then
    local range = buffer(offset, 25)
    local display = display.request_response_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.request_response_message, range, display)
  end

  return dissect.request_response_message_fields(buffer, offset, packet, parent)
end

-- Display: Retransmission Request Message
display.retransmission_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmission Request Message
dissect.retransmission_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index = dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
dissect.retransmission_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmission_request_message then
    local range = buffer(offset, 20)
    local display = display.retransmission_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.retransmission_request_message, range, display)
  end

  return dissect.retransmission_request_message_fields(buffer, offset, packet, parent)
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.reserved_2, range, value, display)

  return offset + size_of.reserved_2
end

-- Size: Unit Of Trade
size_of.unit_of_trade = 2

-- Display: Unit Of Trade
display.unit_of_trade = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
dissect.unit_of_trade = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit_of_trade)
  local value = range:le_uint()
  local display = display.unit_of_trade(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.unit_of_trade, range, value, display)

  return offset + size_of.unit_of_trade
end

-- Size: Mpv
size_of.mpv = 2

-- Display: Mpv
display.mpv = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
dissect.mpv = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mpv)
  local value = range:le_uint()
  local display = display.mpv(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.mpv, range, value, display)

  return offset + size_of.mpv
end

-- Size: Round Lot
size_of.round_lot = 1

-- Display: Round Lot
display.round_lot = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
dissect.round_lot = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.round_lot)
  local value = range:string()
  local display = display.round_lot(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.round_lot, range, value, display)

  return offset + size_of.round_lot
end

-- Size: Price Resolution
size_of.price_resolution = 1

-- Display: Price Resolution
display.price_resolution = function(value)
  return "Price Resolution: "..value
end

-- Dissect: Price Resolution
dissect.price_resolution = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_resolution)
  local value = range:le_uint()
  local display = display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.price_resolution, range, value, display)

  return offset + size_of.price_resolution
end

-- Size: Prev Close Volume
size_of.prev_close_volume = 4

-- Display: Prev Close Volume
display.prev_close_volume = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
dissect.prev_close_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.prev_close_volume)
  local value = range:le_uint()
  local display = display.prev_close_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.prev_close_volume, range, value, display)

  return offset + size_of.prev_close_volume
end

-- Size: Prev Close Price
size_of.prev_close_price = 4

-- Display: Prev Close Price
display.prev_close_price = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
dissect.prev_close_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.prev_close_price)
  local value = range:le_uint()
  local display = display.prev_close_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.prev_close_price, range, value, display)

  return offset + size_of.prev_close_price
end

-- Size: Lot Size
size_of.lot_size = 2

-- Display: Lot Size
display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
dissect.lot_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.lot_size)
  local value = range:le_uint()
  local display = display.lot_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.lot_size, range, value, display)

  return offset + size_of.lot_size
end

-- Size: Security Type
size_of.security_type = 1

-- Display: Security Type
display.security_type = function(value)
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
dissect.security_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_type)
  local value = range:string()
  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.security_type, range, value, display)

  return offset + size_of.security_type
end

-- Size: Price Scale Code
size_of.price_scale_code = 1

-- Display: Price Scale Code
display.price_scale_code = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
dissect.price_scale_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_scale_code)
  local value = range:le_uint()
  local display = display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.price_scale_code, range, value, display)

  return offset + size_of.price_scale_code
end

-- Size: Exchange Code
size_of.exchange_code = 1

-- Display: Exchange Code
display.exchange_code = function(value)
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
dissect.exchange_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exchange_code)
  local value = range:string()
  local display = display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.exchange_code, range, value, display)

  return offset + size_of.exchange_code
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.system_id, range, value, display)

  return offset + size_of.system_id
end

-- Size: Market Id
size_of.market_id = 2

-- Display: Market Id
display.market_id = function(value)
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
dissect.market_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id)
  local value = range:le_uint()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.market_id, range, value, display)

  return offset + size_of.market_id
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.reserved_1, range, value, display)

  return offset + size_of.reserved_1
end

-- Size: Symbol
size_of.symbol = 11

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.symbol, range, value, display)

  return offset + size_of.symbol
end

-- Display: Symbol Index Mapping Message
display.symbol_index_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
dissect.symbol_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index = dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 10 values
  index = dissect.exchange_code(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_scale_code(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index = dissect.security_type(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.lot_size(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.prev_close_price(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.prev_close_volume(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String
  index = dissect.round_lot(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mpv(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index = dissect.unit_of_trade(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
dissect.symbol_index_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_index_mapping_message then
    local range = buffer(offset, 40)
    local display = display.symbol_index_mapping_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.symbol_index_mapping_message, range, display)
  end

  return dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
end

-- Size: Id
size_of.id = 4

-- Display: Id
display.id = function(value)
  return "Id: "..value
end

-- Dissect: Id
dissect.id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.id)
  local value = range:le_uint()
  local display = display.id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.id, range, value, display)

  return offset + size_of.id
end

-- Display: Source Time Reference Message
display.source_time_reference_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Source Time Reference Message
dissect.source_time_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.id(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
dissect.source_time_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.source_time_reference_message then
    local range = buffer(offset, 12)
    local display = display.source_time_reference_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.source_time_reference_message, range, display)
  end

  return dissect.source_time_reference_message_fields(buffer, offset, packet, parent)
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
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.sequence_number_reset_message, range, display)
  end

  return dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, messagetype)
  -- Size of Sequence Number Reset Message
  if messagetype == 1 then
    return 10
  end
  -- Size of Source Time Reference Message
  if messagetype == 2 then
    return 12
  end
  -- Size of Symbol Index Mapping Message
  if messagetype == 3 then
    return 40
  end
  -- Size of Retransmission Request Message
  if messagetype == 10 then
    return 20
  end
  -- Size of Request Response Message
  if messagetype == 11 then
    return 25
  end
  -- Size of Heartbeat Response Message
  if messagetype == 12 then
    return 10
  end
  -- Size of Symbol Index Mapping Request Message
  if messagetype == 13 then
    return 17
  end
  -- Size of Refresh Request Message
  if messagetype == 15 then
    return 16
  end
  -- Size of Message Unavailable Message
  if messagetype == 31 then
    return 10
  end
  -- Size of Symbol Clear Message
  if messagetype == 32 then
    return 16
  end
  -- Size of Trading Session Change Message
  if messagetype == 33 then
    return 17
  end
  -- Size of Security Status Message
  if messagetype == 34 then
    return 42
  end
  -- Size of Refresh Header Message
  if messagetype == 35 then
    return 12
  end
  -- Size of Quote Message
  if messagetype == 140 then
    return 30
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, messagetype)
  -- Dissect Sequence Number Reset Message
  if messagetype == 1 then
    return dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if messagetype == 2 then
    return dissect.source_time_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if messagetype == 3 then
    return dissect.symbol_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if messagetype == 10 then
    return dissect.retransmission_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if messagetype == 11 then
    return dissect.request_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if messagetype == 12 then
    return dissect.heartbeat_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if messagetype == 13 then
    return dissect.symbol_index_mapping_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if messagetype == 15 then
    return dissect.refresh_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if messagetype == 31 then
    return dissect.message_unavailable_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if messagetype == 32 then
    return dissect.symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Change Message
  if messagetype == 33 then
    return dissect.trading_session_change_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if messagetype == 34 then
    return dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if messagetype == 35 then
    return dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if messagetype == 140 then
    return dissect.quote_message(buffer, offset, packet, parent)
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
  local element = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 2

-- Display: Message Type
display.message_type = function(value)
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
  if value == 33 then
    return "Message Type: Trading Session Change Message (33)"
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
dissect.message_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_type)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.message_type, range, value, display)

  return offset + size_of.message_type
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.message_size, range, value, display)

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

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 4)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 14 branches
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
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.message, range, display)
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.nanoseconds, range, value, display)

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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.timestamp, range, value, display)

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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.sequence_number, range, value, display)

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
  local range = buffer(offset, size_of.message_count)
  local value = range:le_uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.message_count, range, value, display)

  return offset + size_of.message_count
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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.delivery_flag, range, value, display)

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

  parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.packet_size, range, value, display)

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
    parent = parent:add(nyse_equities_bbo_xdp_v2_4_g.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  local end_of_payload = buffer:len()
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_equities_bbo_xdp_v2_4_g.init()
end

-- Dissector for Nyse Equities Bbo Xdp 2.4.g
function nyse_equities_bbo_xdp_v2_4_g.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_equities_bbo_xdp_v2_4_g.name

  -- Dissect protocol
  local protocol = parent:add(nyse_equities_bbo_xdp_v2_4_g, buffer(), nyse_equities_bbo_xdp_v2_4_g.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_equities_bbo_xdp_v2_4_g)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_equities_bbo_xdp_v2_4_g_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities Bbo Xdp 2.4.g
local function nyse_equities_bbo_xdp_v2_4_g_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_equities_bbo_xdp_v2_4_g_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_equities_bbo_xdp_v2_4_g
  nyse_equities_bbo_xdp_v2_4_g.dissector(buffer, packet, parent)

  return true
end

-- Register Nyse Equities Bbo Xdp 2.4.g Heuristic
nyse_equities_bbo_xdp_v2_4_g:register_heuristic("udp", nyse_equities_bbo_xdp_v2_4_g_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.4.g
--   Date: Monday, January 29, 2018
--   Specification: XDP_BBO_Client_Specification_V2.4c.pdf
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
