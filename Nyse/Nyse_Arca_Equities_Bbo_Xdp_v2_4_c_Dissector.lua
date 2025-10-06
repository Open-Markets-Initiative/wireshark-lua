-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Arca Equities Bbo Xdp 2.4.c Protocol
local omi_nyse_arca_equities_bbo_xdp_v2_4_c = Proto("Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.Lua", "Nyse Arca Equities Bbo Xdp 2.4.c")

-- Protocol table
local nyse_arca_equities_bbo_xdp_v2_4_c = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Arca Equities Bbo Xdp 2.4.c Fields
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ask_price = ProtoField.new("Ask Price", "nyse.arca.equities.bbo.xdp.v2.4.c.askprice", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.arca.equities.bbo.xdp.v2.4.c.askvolume", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.arca.equities.bbo.xdp.v2.4.c.beginseqnum", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.bid_price = ProtoField.new("Bid Price", "nyse.arca.equities.bbo.xdp.v2.4.c.bidprice", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.arca.equities.bbo.xdp.v2.4.c.bidvolume", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.channel_id = ProtoField.new("Channel Id", "nyse.arca.equities.bbo.xdp.v2.4.c.channelid", ftypes.UINT8)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.arca.equities.bbo.xdp.v2.4.c.currentrefreshpkt", ftypes.UINT16)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arca.equities.bbo.xdp.v2.4.c.deliveryflag", ftypes.UINT8)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.arca.equities.bbo.xdp.v2.4.c.endseqnum", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.arca.equities.bbo.xdp.v2.4.c.exchangecode", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.arca.equities.bbo.xdp.v2.4.c.haltcondition", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.arca.equities.bbo.xdp.v2.4.c.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.id = ProtoField.new("Id", "nyse.arca.equities.bbo.xdp.v2.4.c.id", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.arca.equities.bbo.xdp.v2.4.c.lastseqnum", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.arca.equities.bbo.xdp.v2.4.c.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.lot_size = ProtoField.new("Lot Size", "nyse.arca.equities.bbo.xdp.v2.4.c.lotsize", ftypes.UINT16)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.market_id = ProtoField.new("Market Id", "nyse.arca.equities.bbo.xdp.v2.4.c.marketid", ftypes.UINT16)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.market_state = ProtoField.new("Market State", "nyse.arca.equities.bbo.xdp.v2.4.c.marketstate", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message = ProtoField.new("Message", "nyse.arca.equities.bbo.xdp.v2.4.c.message", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_count = ProtoField.new("Message Count", "nyse.arca.equities.bbo.xdp.v2.4.c.messagecount", ftypes.UINT8)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_header = ProtoField.new("Message Header", "nyse.arca.equities.bbo.xdp.v2.4.c.messageheader", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_size = ProtoField.new("Message Size", "nyse.arca.equities.bbo.xdp.v2.4.c.messagesize", ftypes.UINT16)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_type = ProtoField.new("Message Type", "nyse.arca.equities.bbo.xdp.v2.4.c.messagetype", ftypes.UINT16)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.arca.equities.bbo.xdp.v2.4.c.messageunavailablemessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.mpv = ProtoField.new("Mpv", "nyse.arca.equities.bbo.xdp.v2.4.c.mpv", ftypes.UINT16)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arca.equities.bbo.xdp.v2.4.c.nanoseconds", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.arca.equities.bbo.xdp.v2.4.c.nextsourceseqnum", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.packet = ProtoField.new("Packet", "nyse.arca.equities.bbo.xdp.v2.4.c.packet", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.packet_header = ProtoField.new("Packet Header", "nyse.arca.equities.bbo.xdp.v2.4.c.packetheader", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.packet_size = ProtoField.new("Packet Size", "nyse.arca.equities.bbo.xdp.v2.4.c.packetsize", ftypes.UINT16)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.payload = ProtoField.new("Payload", "nyse.arca.equities.bbo.xdp.v2.4.c.payload", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.arca.equities.bbo.xdp.v2.4.c.prevcloseprice", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.arca.equities.bbo.xdp.v2.4.c.prevclosevolume", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.price_1 = ProtoField.new("Price 1", "nyse.arca.equities.bbo.xdp.v2.4.c.price1", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.price_2 = ProtoField.new("Price 2", "nyse.arca.equities.bbo.xdp.v2.4.c.price2", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.arca.equities.bbo.xdp.v2.4.c.priceresolution", ftypes.UINT8)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.arca.equities.bbo.xdp.v2.4.c.pricescalecode", ftypes.UINT8)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.product_id = ProtoField.new("Product Id", "nyse.arca.equities.bbo.xdp.v2.4.c.productid", ftypes.UINT8)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.arca.equities.bbo.xdp.v2.4.c.quotecondition", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.quote_message = ProtoField.new("Quote Message", "nyse.arca.equities.bbo.xdp.v2.4.c.quotemessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.arca.equities.bbo.xdp.v2.4.c.refreshheadermessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.arca.equities.bbo.xdp.v2.4.c.refreshrequestmessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.arca.equities.bbo.xdp.v2.4.c.requestresponsemessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.arca.equities.bbo.xdp.v2.4.c.requestseqnum", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arca.equities.bbo.xdp.v2.4.c.reserved1", ftypes.BYTES)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.arca.equities.bbo.xdp.v2.4.c.reserved2", ftypes.BYTES)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.arca.equities.bbo.xdp.v2.4.c.reserved4", ftypes.BYTES)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.arca.equities.bbo.xdp.v2.4.c.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.arca.equities.bbo.xdp.v2.4.c.retransmitmethod", ftypes.UINT8)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.round_lot = ProtoField.new("Round Lot", "nyse.arca.equities.bbo.xdp.v2.4.c.roundlot", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.arca.equities.bbo.xdp.v2.4.c.rpiindicator", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.security_status = ProtoField.new("Security Status", "nyse.arca.equities.bbo.xdp.v2.4.c.securitystatus", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.arca.equities.bbo.xdp.v2.4.c.securitystatusmessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.security_type = ProtoField.new("Security Type", "nyse.arca.equities.bbo.xdp.v2.4.c.securitytype", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.arca.equities.bbo.xdp.v2.4.c.sequencenumber", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.arca.equities.bbo.xdp.v2.4.c.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.session_state = ProtoField.new("Session State", "nyse.arca.equities.bbo.xdp.v2.4.c.sessionstate", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.source_id = ProtoField.new("Source Id", "nyse.arca.equities.bbo.xdp.v2.4.c.sourceid", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.source_time = ProtoField.new("Source Time", "nyse.arca.equities.bbo.xdp.v2.4.c.sourcetime", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.arca.equities.bbo.xdp.v2.4.c.sourcetimens", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.arca.equities.bbo.xdp.v2.4.c.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ssr_state = ProtoField.new("Ssr State", "nyse.arca.equities.bbo.xdp.v2.4.c.ssrstate", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.arca.equities.bbo.xdp.v2.4.c.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.arca.equities.bbo.xdp.v2.4.c.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.status = ProtoField.new("Status", "nyse.arca.equities.bbo.xdp.v2.4.c.status", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol = ProtoField.new("Symbol", "nyse.arca.equities.bbo.xdp.v2.4.c.symbol", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.arca.equities.bbo.xdp.v2.4.c.symbolclearmessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.arca.equities.bbo.xdp.v2.4.c.symbolindex", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.arca.equities.bbo.xdp.v2.4.c.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.arca.equities.bbo.xdp.v2.4.c.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.arca.equities.bbo.xdp.v2.4.c.symbolseqnum", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.system_id = ProtoField.new("System Id", "nyse.arca.equities.bbo.xdp.v2.4.c.systemid", ftypes.UINT8)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.time = ProtoField.new("Time", "nyse.arca.equities.bbo.xdp.v2.4.c.time", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.timestamp = ProtoField.new("Timestamp", "nyse.arca.equities.bbo.xdp.v2.4.c.timestamp", ftypes.UINT32)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.arca.equities.bbo.xdp.v2.4.c.totalrefreshpkts", ftypes.UINT16)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.trading_session = ProtoField.new("Trading Session", "nyse.arca.equities.bbo.xdp.v2.4.c.tradingsession", ftypes.UINT8)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.trading_session_change_message = ProtoField.new("Trading Session Change Message", "nyse.arca.equities.bbo.xdp.v2.4.c.tradingsessionchangemessage", ftypes.STRING)
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.arca.equities.bbo.xdp.v2.4.c.unitoftrade", ftypes.UINT16)

-- Nyse Arca Equities Bbo Xdp 2.4.c generated fields
omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_index = ProtoField.new("Message Index", "nyse.arca.equities.bbo.xdp.v2.4.c.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Arca Equities Bbo Xdp 2.4.c Element Dissection Options
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

-- Register Nyse Arca Equities Bbo Xdp 2.4.c Show Options
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_source_time_reference_message = Pref.bool("Show Source Time Reference Message", show.source_time_reference_message, "Parse and add Source Time Reference Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_trading_session_change_message = Pref.bool("Show Trading Session Change Message", show.trading_session_change_message, "Parse and add Trading Session Change Message to protocol tree")
omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat_response_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_message then
    show.message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_message_header then
    show.message_header = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_message_unavailable_message then
    show.message_unavailable_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_packet then
    show.packet = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_packet_header then
    show.packet_header = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_packet_header
    changed = true
  end
  if show.quote_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_quote_message then
    show.quote_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_quote_message
    changed = true
  end
  if show.refresh_header_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_refresh_header_message then
    show.refresh_header_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_refresh_request_message then
    show.refresh_request_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_request_response_message then
    show.request_response_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_retransmission_request_message then
    show.retransmission_request_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_security_status_message then
    show.security_status_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.source_time_reference_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_source_time_reference_message then
    show.source_time_reference_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_source_time_reference_message
    changed = true
  end
  if show.symbol_clear_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_symbol_clear_message then
    show.symbol_clear_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.trading_session_change_message ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_trading_session_change_message then
    show.trading_session_change_message = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_trading_session_change_message
    changed = true
  end
  if show.payload ~= omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_payload then
    show.payload = omi_nyse_arca_equities_bbo_xdp_v2_4_c.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Arca Equities Bbo Xdp 2.4.c
-----------------------------------------------------------------------

-- Reserved 4
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4 = {}

-- Size: Reserved 4
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4.size = 4

-- Display: Reserved 4
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Rpi Indicator
nyse_arca_equities_bbo_xdp_v2_4_c.rpi_indicator = {}

-- Size: Rpi Indicator
nyse_arca_equities_bbo_xdp_v2_4_c.rpi_indicator.size = 1

-- Display: Rpi Indicator
nyse_arca_equities_bbo_xdp_v2_4_c.rpi_indicator.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.rpi_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.rpi_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.rpi_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_arca_equities_bbo_xdp_v2_4_c.quote_condition = {}

-- Size: Quote Condition
nyse_arca_equities_bbo_xdp_v2_4_c.quote_condition.size = 1

-- Display: Quote Condition
nyse_arca_equities_bbo_xdp_v2_4_c.quote_condition.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_arca_equities_bbo_xdp_v2_4_c.bid_volume = {}

-- Size: Bid Volume
nyse_arca_equities_bbo_xdp_v2_4_c.bid_volume.size = 4

-- Display: Bid Volume
nyse_arca_equities_bbo_xdp_v2_4_c.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_arca_equities_bbo_xdp_v2_4_c.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_arca_equities_bbo_xdp_v2_4_c.bid_price = {}

-- Size: Bid Price
nyse_arca_equities_bbo_xdp_v2_4_c.bid_price.size = 4

-- Display: Bid Price
nyse_arca_equities_bbo_xdp_v2_4_c.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_arca_equities_bbo_xdp_v2_4_c.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_arca_equities_bbo_xdp_v2_4_c.ask_volume = {}

-- Size: Ask Volume
nyse_arca_equities_bbo_xdp_v2_4_c.ask_volume.size = 4

-- Display: Ask Volume
nyse_arca_equities_bbo_xdp_v2_4_c.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_arca_equities_bbo_xdp_v2_4_c.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Ask Price
nyse_arca_equities_bbo_xdp_v2_4_c.ask_price = {}

-- Size: Ask Price
nyse_arca_equities_bbo_xdp_v2_4_c.ask_price.size = 4

-- Display: Ask Price
nyse_arca_equities_bbo_xdp_v2_4_c.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_arca_equities_bbo_xdp_v2_4_c.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index = {}

-- Size: Symbol Index
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.size = 4

-- Display: Symbol Index
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns = {}

-- Size: Source Time Ns
nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Quote Message
nyse_arca_equities_bbo_xdp_v2_4_c.quote_message = {}

-- Calculate size of: Quote Message
nyse_arca_equities_bbo_xdp_v2_4_c.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.ask_price.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.ask_volume.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.bid_price.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.bid_volume.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.quote_condition.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.rpi_indicator.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4.size

  return index
end

-- Display: Quote Message
nyse_arca_equities_bbo_xdp_v2_4_c.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
nyse_arca_equities_bbo_xdp_v2_4_c.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Unsigned Fixed Width Integer
  index, ask_price = nyse_arca_equities_bbo_xdp_v2_4_c.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_arca_equities_bbo_xdp_v2_4_c.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Unsigned Fixed Width Integer
  index, bid_price = nyse_arca_equities_bbo_xdp_v2_4_c.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_arca_equities_bbo_xdp_v2_4_c.bid_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, quote_condition = nyse_arca_equities_bbo_xdp_v2_4_c.quote_condition.dissect(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index, rpi_indicator = nyse_arca_equities_bbo_xdp_v2_4_c.rpi_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
nyse_arca_equities_bbo_xdp_v2_4_c.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.quote_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Symbol Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.last_seq_num = {}

-- Size: Last Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_arca_equities_bbo_xdp_v2_4_c.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_arca_equities_bbo_xdp_v2_4_c.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_arca_equities_bbo_xdp_v2_4_c.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_arca_equities_bbo_xdp_v2_4_c.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_arca_equities_bbo_xdp_v2_4_c.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_arca_equities_bbo_xdp_v2_4_c.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_arca_equities_bbo_xdp_v2_4_c.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_arca_equities_bbo_xdp_v2_4_c.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Refresh Header Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message = {}

-- Calculate size of: Refresh Header Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.current_refresh_pkt.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.total_refresh_pkts.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.last_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.last_symbol_seq_num.size

  return index
end

-- Display: Refresh Header Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_arca_equities_bbo_xdp_v2_4_c.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_arca_equities_bbo_xdp_v2_4_c.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Session State
nyse_arca_equities_bbo_xdp_v2_4_c.session_state = {}

-- Size: Session State
nyse_arca_equities_bbo_xdp_v2_4_c.session_state.size = 1

-- Display: Session State
nyse_arca_equities_bbo_xdp_v2_4_c.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_arca_equities_bbo_xdp_v2_4_c.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.session_state, range, value, display)

  return offset + length, value
end

-- Market State
nyse_arca_equities_bbo_xdp_v2_4_c.market_state = {}

-- Size: Market State
nyse_arca_equities_bbo_xdp_v2_4_c.market_state.size = 1

-- Display: Market State
nyse_arca_equities_bbo_xdp_v2_4_c.market_state.display = function(value)
  return "Market State: "..value
end

-- Dissect: Market State
nyse_arca_equities_bbo_xdp_v2_4_c.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.market_state, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_state = {}

-- Size: Ssr State
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_state.size = 1

-- Display: Ssr State
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_state.display = function(value)
  return "Ssr State: "..value
end

-- Dissect: Ssr State
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Time
nyse_arca_equities_bbo_xdp_v2_4_c.time = {}

-- Size: Time
nyse_arca_equities_bbo_xdp_v2_4_c.time.size = 4

-- Display: Time
nyse_arca_equities_bbo_xdp_v2_4_c.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_arca_equities_bbo_xdp_v2_4_c.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.time, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_exchange_id.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_arca_equities_bbo_xdp_v2_4_c.price_2 = {}

-- Size: Price 2
nyse_arca_equities_bbo_xdp_v2_4_c.price_2.size = 4

-- Display: Price 2
nyse_arca_equities_bbo_xdp_v2_4_c.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_arca_equities_bbo_xdp_v2_4_c.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_arca_equities_bbo_xdp_v2_4_c.price_1 = {}

-- Size: Price 1
nyse_arca_equities_bbo_xdp_v2_4_c.price_1.size = 4

-- Display: Price 1
nyse_arca_equities_bbo_xdp_v2_4_c.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_arca_equities_bbo_xdp_v2_4_c.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.price_1, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_arca_equities_bbo_xdp_v2_4_c.halt_condition = {}

-- Size: Halt Condition
nyse_arca_equities_bbo_xdp_v2_4_c.halt_condition.size = 1

-- Display: Halt Condition
nyse_arca_equities_bbo_xdp_v2_4_c.halt_condition.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_arca_equities_bbo_xdp_v2_4_c.security_status = {}

-- Size: Security Status
nyse_arca_equities_bbo_xdp_v2_4_c.security_status.size = 1

-- Display: Security Status
nyse_arca_equities_bbo_xdp_v2_4_c.security_status.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.security_status, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_arca_equities_bbo_xdp_v2_4_c.source_time = {}

-- Size: Source Time
nyse_arca_equities_bbo_xdp_v2_4_c.source_time.size = 4

-- Display: Source Time
nyse_arca_equities_bbo_xdp_v2_4_c.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_arca_equities_bbo_xdp_v2_4_c.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.source_time, range, value, display)

  return offset + length, value
end

-- Security Status Message
nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message = {}

-- Calculate size of: Security Status Message
nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.security_status.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.halt_condition.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.price_1.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.price_2.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_exchange_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_volume.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.time.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.ssr_state.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.market_state.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.session_state.size

  return index
end

-- Display: Security Status Message
nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_equities_bbo_xdp_v2_4_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index, security_status = nyse_arca_equities_bbo_xdp_v2_4_c.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 12 values
  index, halt_condition = nyse_arca_equities_bbo_xdp_v2_4_c.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_arca_equities_bbo_xdp_v2_4_c.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_arca_equities_bbo_xdp_v2_4_c.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 18 values
  index, ssr_triggering_exchange_id = nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_arca_equities_bbo_xdp_v2_4_c.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_arca_equities_bbo_xdp_v2_4_c.time.dissect(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String
  index, ssr_state = nyse_arca_equities_bbo_xdp_v2_4_c.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String
  index, market_state = nyse_arca_equities_bbo_xdp_v2_4_c.market_state.dissect(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String
  index, session_state = nyse_arca_equities_bbo_xdp_v2_4_c.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.security_status_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session
nyse_arca_equities_bbo_xdp_v2_4_c.trading_session = {}

-- Size: Trading Session
nyse_arca_equities_bbo_xdp_v2_4_c.trading_session.size = 1

-- Display: Trading Session
nyse_arca_equities_bbo_xdp_v2_4_c.trading_session.display = function(value)
  return "Trading Session: "..value
end

-- Dissect: Trading Session
nyse_arca_equities_bbo_xdp_v2_4_c.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.trading_session.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Trading Session Change Message
nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message = {}

-- Calculate size of: Trading Session Change Message
nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.trading_session.size

  return index
end

-- Display: Trading Session Change Message
nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Change Message
nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_equities_bbo_xdp_v2_4_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Unsigned Fixed Width Integer
  index, trading_session = nyse_arca_equities_bbo_xdp_v2_4_c.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Change Message
nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_session_change_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.trading_session_change_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Next Source Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Clear Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message = {}

-- Calculate size of: Symbol Clear Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.next_source_seq_num.size

  return index
end

-- Display: Symbol Clear Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_equities_bbo_xdp_v2_4_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Id
nyse_arca_equities_bbo_xdp_v2_4_c.channel_id = {}

-- Size: Channel Id
nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.size = 1

-- Display: Channel Id
nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_arca_equities_bbo_xdp_v2_4_c.product_id = {}

-- Size: Product Id
nyse_arca_equities_bbo_xdp_v2_4_c.product_id.size = 1

-- Display: Product Id
nyse_arca_equities_bbo_xdp_v2_4_c.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_arca_equities_bbo_xdp_v2_4_c.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.product_id, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num = {}

-- Size: End Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.size = 4

-- Display: End Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Message Unavailable Message
nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message = {}

-- Calculate size of: Message Unavailable Message
nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.product_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.size

  return index
end

-- Display: Message Unavailable Message
nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_equities_bbo_xdp_v2_4_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Id
nyse_arca_equities_bbo_xdp_v2_4_c.source_id = {}

-- Size: Source Id
nyse_arca_equities_bbo_xdp_v2_4_c.source_id.size = 10

-- Display: Source Id
nyse_arca_equities_bbo_xdp_v2_4_c.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_arca_equities_bbo_xdp_v2_4_c.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.source_id, range, value, display)

  return offset + length, value
end

-- Refresh Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message = {}

-- Calculate size of: Refresh Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.product_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.size

  return index
end

-- Display: Refresh Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_equities_bbo_xdp_v2_4_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_equities_bbo_xdp_v2_4_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Method
nyse_arca_equities_bbo_xdp_v2_4_c.retransmit_method = {}

-- Size: Retransmit Method
nyse_arca_equities_bbo_xdp_v2_4_c.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_arca_equities_bbo_xdp_v2_4_c.retransmit_method.display = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_arca_equities_bbo_xdp_v2_4_c.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message = {}

-- Calculate size of: Symbol Index Mapping Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.product_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.retransmit_method.size

  return index
end

-- Display: Symbol Index Mapping Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_equities_bbo_xdp_v2_4_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_equities_bbo_xdp_v2_4_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, retransmit_method = nyse_arca_equities_bbo_xdp_v2_4_c.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message = {}

-- Calculate size of: Heartbeat Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_id.size

  return index
end

-- Display: Heartbeat Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_equities_bbo_xdp_v2_4_c.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Status
nyse_arca_equities_bbo_xdp_v2_4_c.status = {}

-- Size: Status
nyse_arca_equities_bbo_xdp_v2_4_c.status.size = 1

-- Display: Status
nyse_arca_equities_bbo_xdp_v2_4_c.status.display = function(value)
  return "Status: "..value
end

-- Dissect: Status
nyse_arca_equities_bbo_xdp_v2_4_c.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.status, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.request_seq_num = {}

-- Size: Request Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_arca_equities_bbo_xdp_v2_4_c.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Request Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message = {}

-- Calculate size of: Request Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.request_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.product_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.status.size

  return index
end

-- Display: Request Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_equities_bbo_xdp_v2_4_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_equities_bbo_xdp_v2_4_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String
  index, status = nyse_arca_equities_bbo_xdp_v2_4_c.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.request_response_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message = {}

-- Calculate size of: Retransmission Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.product_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.size

  return index
end

-- Display: Retransmission Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_equities_bbo_xdp_v2_4_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_equities_bbo_xdp_v2_4_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 2
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_2 = {}

-- Size: Reserved 2
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_2.size = 2

-- Display: Reserved 2
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_arca_equities_bbo_xdp_v2_4_c.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_arca_equities_bbo_xdp_v2_4_c.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_arca_equities_bbo_xdp_v2_4_c.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_arca_equities_bbo_xdp_v2_4_c.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_arca_equities_bbo_xdp_v2_4_c.mpv = {}

-- Size: Mpv
nyse_arca_equities_bbo_xdp_v2_4_c.mpv.size = 2

-- Display: Mpv
nyse_arca_equities_bbo_xdp_v2_4_c.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_arca_equities_bbo_xdp_v2_4_c.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.mpv, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_arca_equities_bbo_xdp_v2_4_c.round_lot = {}

-- Size: Round Lot
nyse_arca_equities_bbo_xdp_v2_4_c.round_lot.size = 1

-- Display: Round Lot
nyse_arca_equities_bbo_xdp_v2_4_c.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
nyse_arca_equities_bbo_xdp_v2_4_c.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_arca_equities_bbo_xdp_v2_4_c.price_resolution = {}

-- Size: Price Resolution
nyse_arca_equities_bbo_xdp_v2_4_c.price_resolution.size = 1

-- Display: Price Resolution
nyse_arca_equities_bbo_xdp_v2_4_c.price_resolution.display = function(value)
  return "Price Resolution: "..value
end

-- Dissect: Price Resolution
nyse_arca_equities_bbo_xdp_v2_4_c.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_price = {}

-- Size: Prev Close Price
nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_arca_equities_bbo_xdp_v2_4_c.lot_size = {}

-- Size: Lot Size
nyse_arca_equities_bbo_xdp_v2_4_c.lot_size.size = 2

-- Display: Lot Size
nyse_arca_equities_bbo_xdp_v2_4_c.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_arca_equities_bbo_xdp_v2_4_c.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_arca_equities_bbo_xdp_v2_4_c.security_type = {}

-- Size: Security Type
nyse_arca_equities_bbo_xdp_v2_4_c.security_type.size = 1

-- Display: Security Type
nyse_arca_equities_bbo_xdp_v2_4_c.security_type.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.security_type, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_arca_equities_bbo_xdp_v2_4_c.price_scale_code = {}

-- Size: Price Scale Code
nyse_arca_equities_bbo_xdp_v2_4_c.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_arca_equities_bbo_xdp_v2_4_c.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_arca_equities_bbo_xdp_v2_4_c.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_arca_equities_bbo_xdp_v2_4_c.exchange_code = {}

-- Size: Exchange Code
nyse_arca_equities_bbo_xdp_v2_4_c.exchange_code.size = 1

-- Display: Exchange Code
nyse_arca_equities_bbo_xdp_v2_4_c.exchange_code.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- System Id
nyse_arca_equities_bbo_xdp_v2_4_c.system_id = {}

-- Size: System Id
nyse_arca_equities_bbo_xdp_v2_4_c.system_id.size = 1

-- Display: System Id
nyse_arca_equities_bbo_xdp_v2_4_c.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_arca_equities_bbo_xdp_v2_4_c.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.system_id, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_arca_equities_bbo_xdp_v2_4_c.market_id = {}

-- Size: Market Id
nyse_arca_equities_bbo_xdp_v2_4_c.market_id.size = 2

-- Display: Market Id
nyse_arca_equities_bbo_xdp_v2_4_c.market_id.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.market_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_1 = {}

-- Size: Reserved 1
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_1.size = 1

-- Display: Reserved 1
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_arca_equities_bbo_xdp_v2_4_c.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_arca_equities_bbo_xdp_v2_4_c.symbol = {}

-- Size: Symbol
nyse_arca_equities_bbo_xdp_v2_4_c.symbol.size = 11

-- Display: Symbol
nyse_arca_equities_bbo_xdp_v2_4_c.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_arca_equities_bbo_xdp_v2_4_c.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message = {}

-- Calculate size of: Symbol Index Mapping Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.reserved_1.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.market_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.system_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.exchange_code.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.price_scale_code.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.security_type.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.lot_size.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_price.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_volume.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.price_resolution.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.round_lot.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.mpv.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.unit_of_trade.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.reserved_2.size

  return index
end

-- Display: Symbol Index Mapping Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_arca_equities_bbo_xdp_v2_4_c.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, market_id = nyse_arca_equities_bbo_xdp_v2_4_c.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_arca_equities_bbo_xdp_v2_4_c.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 10 values
  index, exchange_code = nyse_arca_equities_bbo_xdp_v2_4_c.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_arca_equities_bbo_xdp_v2_4_c.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_arca_equities_bbo_xdp_v2_4_c.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_arca_equities_bbo_xdp_v2_4_c.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_arca_equities_bbo_xdp_v2_4_c.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer
  index, price_resolution = nyse_arca_equities_bbo_xdp_v2_4_c.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String
  index, round_lot = nyse_arca_equities_bbo_xdp_v2_4_c.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_arca_equities_bbo_xdp_v2_4_c.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_arca_equities_bbo_xdp_v2_4_c.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_arca_equities_bbo_xdp_v2_4_c.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Id
nyse_arca_equities_bbo_xdp_v2_4_c.id = {}

-- Size: Id
nyse_arca_equities_bbo_xdp_v2_4_c.id.size = 4

-- Display: Id
nyse_arca_equities_bbo_xdp_v2_4_c.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_arca_equities_bbo_xdp_v2_4_c.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.id, range, value, display)

  return offset + length, value
end

-- Source Time Reference Message
nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message = {}

-- Calculate size of: Source Time Reference Message
nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time.size

  return index
end

-- Display: Source Time Reference Message
nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_arca_equities_bbo_xdp_v2_4_c.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_arca_equities_bbo_xdp_v2_4_c.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_equities_bbo_xdp_v2_4_c.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.source_time_reference_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message = {}

-- Calculate size of: Sequence Number Reset Message
nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.product_id.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.size

  return index
end

-- Display: Sequence Number Reset Message
nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_equities_bbo_xdp_v2_4_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_equities_bbo_xdp_v2_4_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_equities_bbo_xdp_v2_4_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_equities_bbo_xdp_v2_4_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_arca_equities_bbo_xdp_v2_4_c.payload = {}

-- Calculate runtime size of: Payload
nyse_arca_equities_bbo_xdp_v2_4_c.payload.size = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message.size(buffer, offset)
  end
  -- Size of Source Time Reference Message
  if message_type == 2 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message.size(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message.size(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message.size(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message.size(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message.size(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message.size(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message.size(buffer, offset)
  end
  -- Size of Trading Session Change Message
  if message_type == 33 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message.size(buffer, offset)
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message.size(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message.size(buffer, offset)
  end
  -- Size of Quote Message
  if message_type == 140 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.quote_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_arca_equities_bbo_xdp_v2_4_c.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_arca_equities_bbo_xdp_v2_4_c.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Change Message
  if message_type == 33 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.trading_session_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_type == 140 then
    return nyse_arca_equities_bbo_xdp_v2_4_c.quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_arca_equities_bbo_xdp_v2_4_c.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_arca_equities_bbo_xdp_v2_4_c.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_arca_equities_bbo_xdp_v2_4_c.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.payload, range, display)

  return nyse_arca_equities_bbo_xdp_v2_4_c.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nyse_arca_equities_bbo_xdp_v2_4_c.message_type = {}

-- Size: Message Type
nyse_arca_equities_bbo_xdp_v2_4_c.message_type.size = 2

-- Display: Message Type
nyse_arca_equities_bbo_xdp_v2_4_c.message_type.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_arca_equities_bbo_xdp_v2_4_c.message_size = {}

-- Size: Message Size
nyse_arca_equities_bbo_xdp_v2_4_c.message_size.size = 2

-- Display: Message Size
nyse_arca_equities_bbo_xdp_v2_4_c.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_arca_equities_bbo_xdp_v2_4_c.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
nyse_arca_equities_bbo_xdp_v2_4_c.message_header = {}

-- Calculate size of: Message Header
nyse_arca_equities_bbo_xdp_v2_4_c.message_header.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.message_size.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.message_type.size

  return index
end

-- Display: Message Header
nyse_arca_equities_bbo_xdp_v2_4_c.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_arca_equities_bbo_xdp_v2_4_c.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_arca_equities_bbo_xdp_v2_4_c.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, message_type = nyse_arca_equities_bbo_xdp_v2_4_c.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_arca_equities_bbo_xdp_v2_4_c.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_header, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_arca_equities_bbo_xdp_v2_4_c.message = {}

-- Calculate size of: Message
nyse_arca_equities_bbo_xdp_v2_4_c.message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.message_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nyse_arca_equities_bbo_xdp_v2_4_c.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_arca_equities_bbo_xdp_v2_4_c.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_arca_equities_bbo_xdp_v2_4_c.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 14 branches
  index = nyse_arca_equities_bbo_xdp_v2_4_c.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_arca_equities_bbo_xdp_v2_4_c.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nyse_arca_equities_bbo_xdp_v2_4_c.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message, range, display)
  end

  return nyse_arca_equities_bbo_xdp_v2_4_c.message.fields(buffer, offset, packet, parent)
end

-- Nanoseconds
nyse_arca_equities_bbo_xdp_v2_4_c.nanoseconds = {}

-- Size: Nanoseconds
nyse_arca_equities_bbo_xdp_v2_4_c.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_arca_equities_bbo_xdp_v2_4_c.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_arca_equities_bbo_xdp_v2_4_c.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_arca_equities_bbo_xdp_v2_4_c.timestamp = {}

-- Size: Timestamp
nyse_arca_equities_bbo_xdp_v2_4_c.timestamp.size = 4

-- Display: Timestamp
nyse_arca_equities_bbo_xdp_v2_4_c.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_arca_equities_bbo_xdp_v2_4_c.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number = {}

-- Size: Sequence Number
nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number.size = 4

-- Display: Sequence Number
nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_arca_equities_bbo_xdp_v2_4_c.message_count = {}

-- Size: Message Count
nyse_arca_equities_bbo_xdp_v2_4_c.message_count.size = 1

-- Display: Message Count
nyse_arca_equities_bbo_xdp_v2_4_c.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_arca_equities_bbo_xdp_v2_4_c.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.message_count, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_arca_equities_bbo_xdp_v2_4_c.delivery_flag = {}

-- Size: Delivery Flag
nyse_arca_equities_bbo_xdp_v2_4_c.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_arca_equities_bbo_xdp_v2_4_c.delivery_flag.display = function(value)
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
nyse_arca_equities_bbo_xdp_v2_4_c.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_arca_equities_bbo_xdp_v2_4_c.packet_size = {}

-- Size: Packet Size
nyse_arca_equities_bbo_xdp_v2_4_c.packet_size.size = 2

-- Display: Packet Size
nyse_arca_equities_bbo_xdp_v2_4_c.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_arca_equities_bbo_xdp_v2_4_c.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_equities_bbo_xdp_v2_4_c.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_equities_bbo_xdp_v2_4_c.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_arca_equities_bbo_xdp_v2_4_c.packet_header = {}

-- Calculate size of: Packet Header
nyse_arca_equities_bbo_xdp_v2_4_c.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.packet_size.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.delivery_flag.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.message_count.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.timestamp.size

  index = index + nyse_arca_equities_bbo_xdp_v2_4_c.nanoseconds.size

  return index
end

-- Display: Packet Header
nyse_arca_equities_bbo_xdp_v2_4_c.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_arca_equities_bbo_xdp_v2_4_c.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_arca_equities_bbo_xdp_v2_4_c.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_arca_equities_bbo_xdp_v2_4_c.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_arca_equities_bbo_xdp_v2_4_c.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_arca_equities_bbo_xdp_v2_4_c.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_arca_equities_bbo_xdp_v2_4_c.timestamp.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_arca_equities_bbo_xdp_v2_4_c.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_arca_equities_bbo_xdp_v2_4_c.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c.fields.packet_header, buffer(offset, 0))
    local index = nyse_arca_equities_bbo_xdp_v2_4_c.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_equities_bbo_xdp_v2_4_c.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_equities_bbo_xdp_v2_4_c.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_arca_equities_bbo_xdp_v2_4_c.packet = {}

-- Dissect Packet
nyse_arca_equities_bbo_xdp_v2_4_c.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_arca_equities_bbo_xdp_v2_4_c.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = nyse_arca_equities_bbo_xdp_v2_4_c.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_arca_equities_bbo_xdp_v2_4_c.init()
end

-- Dissector for Nyse Arca Equities Bbo Xdp 2.4.c
function omi_nyse_arca_equities_bbo_xdp_v2_4_c.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_arca_equities_bbo_xdp_v2_4_c.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_arca_equities_bbo_xdp_v2_4_c, buffer(), omi_nyse_arca_equities_bbo_xdp_v2_4_c.description, "("..buffer:len().." Bytes)")
  return nyse_arca_equities_bbo_xdp_v2_4_c.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_arca_equities_bbo_xdp_v2_4_c)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_arca_equities_bbo_xdp_v2_4_c.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Arca Equities Bbo Xdp 2.4.c
local function omi_nyse_arca_equities_bbo_xdp_v2_4_c_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_arca_equities_bbo_xdp_v2_4_c.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arca_equities_bbo_xdp_v2_4_c
  omi_nyse_arca_equities_bbo_xdp_v2_4_c.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Arca Equities Bbo Xdp 2.4.c
omi_nyse_arca_equities_bbo_xdp_v2_4_c:register_heuristic("udp", omi_nyse_arca_equities_bbo_xdp_v2_4_c_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.4.c
--   Date: Wednesday, July 13, 2016
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
