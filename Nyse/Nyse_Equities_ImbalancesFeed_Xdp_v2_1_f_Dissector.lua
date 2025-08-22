-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities ImbalancesFeed Xdp 2.1.f Protocol
local nyse_equities_imbalancesfeed_xdp_v2_1_f = Proto("Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.Lua", "Nyse Equities ImbalancesFeed Xdp 2.1.f")

-- Component Tables
local show = {}
local format = {}
local nyse_equities_imbalancesfeed_xdp_v2_1_f_display = {}
local nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect = {}
local nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities ImbalancesFeed Xdp 2.1.f Fields
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.auction_status = ProtoField.new("Auction Status", "nyse.equities.imbalancesfeed.xdp.v2.1.f.auctionstatus", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.auction_time = ProtoField.new("Auction Time", "nyse.equities.imbalancesfeed.xdp.v2.1.f.auctiontime", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.auction_type = ProtoField.new("Auction Type", "nyse.equities.imbalancesfeed.xdp.v2.1.f.auctiontype", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.equities.imbalancesfeed.xdp.v2.1.f.beginseqnum", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.channel_id = ProtoField.new("Channel Id", "nyse.equities.imbalancesfeed.xdp.v2.1.f.channelid", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.closing_only_clearing_price = ProtoField.new("Closing Only Clearing Price", "nyse.equities.imbalancesfeed.xdp.v2.1.f.closingonlyclearingprice", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.equities.imbalancesfeed.xdp.v2.1.f.continuousbookclearingprice", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.equities.imbalancesfeed.xdp.v2.1.f.currentrefreshpkt", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.imbalancesfeed.xdp.v2.1.f.deliveryflag", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.equities.imbalancesfeed.xdp.v2.1.f.endseqnum", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.equities.imbalancesfeed.xdp.v2.1.f.exchangecode", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.freeze_status = ProtoField.new("Freeze Status", "nyse.equities.imbalancesfeed.xdp.v2.1.f.freezestatus", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.equities.imbalancesfeed.xdp.v2.1.f.haltcondition", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.heartbeatresponsemessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.imbalancemessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.equities.imbalancesfeed.xdp.v2.1.f.imbalanceside", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.equities.imbalancesfeed.xdp.v2.1.f.indicativematchprice", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.equities.imbalancesfeed.xdp.v2.1.f.lastseqnum", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.equities.imbalancesfeed.xdp.v2.1.f.lastsymbolseqnum", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.lot_size = ProtoField.new("Lot Size", "nyse.equities.imbalancesfeed.xdp.v2.1.f.lotsize", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.equities.imbalancesfeed.xdp.v2.1.f.lowercollar", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.market_id = ProtoField.new("Market Id", "nyse.equities.imbalancesfeed.xdp.v2.1.f.marketid", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.equities.imbalancesfeed.xdp.v2.1.f.marketimbalanceqty", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.market_state = ProtoField.new("Market State", "nyse.equities.imbalancesfeed.xdp.v2.1.f.marketstate", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message = ProtoField.new("Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.message", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_count = ProtoField.new("Message Count", "nyse.equities.imbalancesfeed.xdp.v2.1.f.messagecount", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_header = ProtoField.new("Message Header", "nyse.equities.imbalancesfeed.xdp.v2.1.f.messageheader", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_size = ProtoField.new("Message Size", "nyse.equities.imbalancesfeed.xdp.v2.1.f.messagesize", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_type = ProtoField.new("Message Type", "nyse.equities.imbalancesfeed.xdp.v2.1.f.messagetype", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.messageunavailablemessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.mpv = ProtoField.new("Mpv", "nyse.equities.imbalancesfeed.xdp.v2.1.f.mpv", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.imbalancesfeed.xdp.v2.1.f.nanoseconds", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.equities.imbalancesfeed.xdp.v2.1.f.nextsourceseqnum", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.num_extensions = ProtoField.new("Num Extensions", "nyse.equities.imbalancesfeed.xdp.v2.1.f.numextensions", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.packet = ProtoField.new("Packet", "nyse.equities.imbalancesfeed.xdp.v2.1.f.packet", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.imbalancesfeed.xdp.v2.1.f.packetheader", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.imbalancesfeed.xdp.v2.1.f.packetsize", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.equities.imbalancesfeed.xdp.v2.1.f.pairedqty", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.payload = ProtoField.new("Payload", "nyse.equities.imbalancesfeed.xdp.v2.1.f.payload", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.equities.imbalancesfeed.xdp.v2.1.f.prevcloseprice", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.equities.imbalancesfeed.xdp.v2.1.f.prevclosevolume", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.price_1 = ProtoField.new("Price 1", "nyse.equities.imbalancesfeed.xdp.v2.1.f.price1", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.price_2 = ProtoField.new("Price 2", "nyse.equities.imbalancesfeed.xdp.v2.1.f.price2", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.equities.imbalancesfeed.xdp.v2.1.f.priceresolution", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.equities.imbalancesfeed.xdp.v2.1.f.pricescalecode", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.product_id = ProtoField.new("Product Id", "nyse.equities.imbalancesfeed.xdp.v2.1.f.productid", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.reference_price = ProtoField.new("Reference Price", "nyse.equities.imbalancesfeed.xdp.v2.1.f.referenceprice", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.refreshheadermessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.refreshrequestmessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.requestresponsemessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.equities.imbalancesfeed.xdp.v2.1.f.requestseqnum", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.equities.imbalancesfeed.xdp.v2.1.f.reserved1", ftypes.BYTES)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.equities.imbalancesfeed.xdp.v2.1.f.reserved2", ftypes.BYTES)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.equities.imbalancesfeed.xdp.v2.1.f.reserved4", ftypes.BYTES)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.retransmissionrequestmessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.equities.imbalancesfeed.xdp.v2.1.f.retransmitmethod", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.round_lot = ProtoField.new("Round Lot", "nyse.equities.imbalancesfeed.xdp.v2.1.f.roundlot", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.security_status = ProtoField.new("Security Status", "nyse.equities.imbalancesfeed.xdp.v2.1.f.securitystatus", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.securitystatusmessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.security_type = ProtoField.new("Security Type", "nyse.equities.imbalancesfeed.xdp.v2.1.f.securitytype", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.imbalancesfeed.xdp.v2.1.f.sequencenumber", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.sequencenumberresetmessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.session_state = ProtoField.new("Session State", "nyse.equities.imbalancesfeed.xdp.v2.1.f.sessionstate", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.source_id = ProtoField.new("Source Id", "nyse.equities.imbalancesfeed.xdp.v2.1.f.sourceid", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.source_time = ProtoField.new("Source Time", "nyse.equities.imbalancesfeed.xdp.v2.1.f.sourcetime", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.imbalancesfeed.xdp.v2.1.f.sourcetimens", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.equities.imbalancesfeed.xdp.v2.1.f.ssrfilingprice", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.ssr_state = ProtoField.new("Ssr State", "nyse.equities.imbalancesfeed.xdp.v2.1.f.ssrstate", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.equities.imbalancesfeed.xdp.v2.1.f.ssrtriggeringexchangeid", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.equities.imbalancesfeed.xdp.v2.1.f.ssrtriggeringvolume", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.status = ProtoField.new("Status", "nyse.equities.imbalancesfeed.xdp.v2.1.f.status", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol = ProtoField.new("Symbol", "nyse.equities.imbalancesfeed.xdp.v2.1.f.symbol", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.symbolclearmessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.imbalancesfeed.xdp.v2.1.f.symbolindex", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.symbolindexmappingmessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.equities.imbalancesfeed.xdp.v2.1.f.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.imbalancesfeed.xdp.v2.1.f.symbolseqnum", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.system_id = ProtoField.new("System Id", "nyse.equities.imbalancesfeed.xdp.v2.1.f.systemid", ftypes.UINT8)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.time = ProtoField.new("Time", "nyse.equities.imbalancesfeed.xdp.v2.1.f.time", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.imbalancesfeed.xdp.v2.1.f.timestamp", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.equities.imbalancesfeed.xdp.v2.1.f.totalimbalanceqty", ftypes.UINT32)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.equities.imbalancesfeed.xdp.v2.1.f.totalrefreshpkts", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.equities.imbalancesfeed.xdp.v2.1.f.unitoftrade", ftypes.UINT16)
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.equities.imbalancesfeed.xdp.v2.1.f.uppercollar", ftypes.UINT32)

-- Nyse Equities ImbalancesFeed Xdp 2.1.f generated fields
nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_index = ProtoField.new("Message Index", "nyse.equities.imbalancesfeed.xdp.v2.1.f.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Equities ImbalancesFeed Xdp 2.1.f Element Dissection Options
show.heartbeat_response_message = true
show.imbalance_message = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.packet = true
show.packet_header = true
show.refresh_header_message = true
show.refresh_request_message = true
show.request_response_message = true
show.retransmission_request_message = true
show.security_status_message = true
show.sequence_number_reset_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.payload = false

-- Register Nyse Equities ImbalancesFeed Xdp 2.1.f Show Options
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_imbalance_message = Pref.bool("Show Imbalance Message", show.imbalance_message, "Parse and add Imbalance Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat_response_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.imbalance_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_imbalance_message then
    show.imbalance_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_imbalance_message
    changed = true
  end
  if show.message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_message then
    show.message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_message_header then
    show.message_header = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_message_unavailable_message then
    show.message_unavailable_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_packet then
    show.packet = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_packet_header then
    show.packet_header = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_header_message then
    show.refresh_header_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_request_message then
    show.refresh_request_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_request_response_message then
    show.request_response_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_retransmission_request_message then
    show.retransmission_request_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_security_status_message then
    show.security_status_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.symbol_clear_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_clear_message then
    show.symbol_clear_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.payload ~= nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_payload then
    show.payload = nyse_equities_imbalancesfeed_xdp_v2_1_f.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Equities ImbalancesFeed Xdp 2.1.f
-----------------------------------------------------------------------

-- Size: Num Extensions
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.num_extensions = 1

-- Display: Num Extensions
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.num_extensions = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.num_extensions = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.num_extensions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.num_extensions(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Size: Freeze Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.freeze_status = 1

-- Display: Freeze Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.freeze_status = function(value)
  if value == 0 then
    return "Freeze Status: No Imbalance Freeze (0)"
  end
  if value == 1 then
    return "Freeze Status: Imbalance Freeze (1)"
  end

  return "Freeze Status: Unknown("..value..")"
end

-- Dissect: Freeze Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.freeze_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.freeze_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.freeze_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Size: Auction Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.auction_status = 1

-- Display: Auction Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.auction_status = function(value)
  if value == 0 then
    return "Auction Status: Will Run Open Close (0)"
  end
  if value == 1 then
    return "Auction Status: Will Run Interest (1)"
  end
  if value == 2 then
    return "Auction Status: Will Not Run Imbalance (2)"
  end
  if value == 3 then
    return "Auction Status: Will Not Run Transition To Closing (3)"
  end

  return "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.auction_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.auction_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.auction_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Size: Lower Collar
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.lower_collar = 4

-- Display: Lower Collar
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.lower_collar = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.lower_collar = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.lower_collar
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.lower_collar(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Size: Upper Collar
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.upper_collar = 4

-- Display: Upper Collar
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.upper_collar = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.upper_collar = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.upper_collar
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.upper_collar(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Size: Indicative Match Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.indicative_match_price = 4

-- Display: Indicative Match Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.indicative_match_price = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.indicative_match_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.indicative_match_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.indicative_match_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Size: Ssr Filing Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_filing_price = 4

-- Display: Ssr Filing Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.ssr_filing_price = function(value)
  return "Ssr Filing Price: "..value
end

-- Dissect: Ssr Filing Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.ssr_filing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_filing_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.ssr_filing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Size: Closing Only Clearing Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.closing_only_clearing_price = 4

-- Display: Closing Only Clearing Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.closing_only_clearing_price = function(value)
  return "Closing Only Clearing Price: "..value
end

-- Dissect: Closing Only Clearing Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.closing_only_clearing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.closing_only_clearing_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.closing_only_clearing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.closing_only_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Continuous Book Clearing Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.continuous_book_clearing_price = 4

-- Display: Continuous Book Clearing Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.continuous_book_clearing_price = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.continuous_book_clearing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.continuous_book_clearing_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.continuous_book_clearing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Side
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.imbalance_side = 1

-- Display: Imbalance Side
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.imbalance_side = function(value)
  if value == " " then
    return "Imbalance Side: No Imbalance (<whitespace>)"
  end
  if value == "B" then
    return "Imbalance Side: Buy Side (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell Side (S)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.imbalance_side = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.imbalance_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.imbalance_side(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.auction_type = 1

-- Display: Auction Type
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Early Opening (O)"
  end
  if value == "M" then
    return "Auction Type: Core Opening (M)"
  end
  if value == "H" then
    return "Auction Type: Reopening (H)"
  end
  if value == "C" then
    return "Auction Type: Closing (C)"
  end
  if value == "R" then
    return "Auction Type: Regulatory Imbalance (R)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Auction Time
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.auction_time = 2

-- Display: Auction Time
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.auction_time = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.auction_time = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.auction_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.auction_time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Size: Market Imbalance Qty
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.market_imbalance_qty = 4

-- Display: Market Imbalance Qty
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.market_imbalance_qty = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.market_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.market_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.market_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Total Imbalance Qty
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.total_imbalance_qty = 4

-- Display: Total Imbalance Qty
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.total_imbalance_qty = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.total_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.total_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.total_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Paired Qty
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.paired_qty = 4

-- Display: Paired Qty
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.paired_qty = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.paired_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.paired_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.paired_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reference_price = 4

-- Display: Reference Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reference_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Size: Symbol Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index = 4

-- Display: Symbol Index
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Source Time Ns
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time_ns = 4

-- Display: Source Time Ns
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.source_time_ns = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time_ns = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time_ns
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.source_time_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Size: Source Time
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time = 4

-- Display: Source Time
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.source_time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.source_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Imbalance Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.imbalance_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time_ns

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reference_price

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.paired_qty

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.total_imbalance_qty

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.market_imbalance_qty

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.auction_time

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.auction_type

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.imbalance_side

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.continuous_book_clearing_price

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.closing_only_clearing_price

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_filing_price

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.indicative_match_price

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.upper_collar

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.lower_collar

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.auction_status

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.freeze_status

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.num_extensions

  return index
end

-- Display: Imbalance Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.imbalance_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, reference_price = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.reference_price(buffer, index, packet, parent)

  -- Paired Qty: 4 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.paired_qty(buffer, index, packet, parent)

  -- Total Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, total_imbalance_qty = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.total_imbalance_qty(buffer, index, packet, parent)

  -- Market Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, market_imbalance_qty = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.market_imbalance_qty(buffer, index, packet, parent)

  -- Auction Time: 2 Byte Unsigned Fixed Width Integer
  index, auction_time = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.auction_time(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 5 values
  index, auction_type = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.auction_type(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.imbalance_side(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, continuous_book_clearing_price = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.continuous_book_clearing_price(buffer, index, packet, parent)

  -- Closing Only Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, closing_only_clearing_price = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.closing_only_clearing_price(buffer, index, packet, parent)

  -- Ssr Filing Price: 4 Byte Unsigned Fixed Width Integer
  index, ssr_filing_price = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.ssr_filing_price(buffer, index, packet, parent)

  -- Indicative Match Price: 4 Byte Unsigned Fixed Width Integer
  index, indicative_match_price = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.indicative_match_price(buffer, index, packet, parent)

  -- Upper Collar: 4 Byte Unsigned Fixed Width Integer
  index, upper_collar = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.upper_collar(buffer, index, packet, parent)

  -- Lower Collar: 4 Byte Unsigned Fixed Width Integer
  index, lower_collar = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.lower_collar(buffer, index, packet, parent)

  -- Auction Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, auction_status = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.auction_status(buffer, index, packet, parent)

  -- Freeze Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, freeze_status = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.freeze_status(buffer, index, packet, parent)

  -- Num Extensions: 1 Byte Unsigned Fixed Width Integer
  index, num_extensions = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.num_extensions(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.imbalance_message = function(buffer, offset, packet, parent)
  if show.imbalance_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.imbalance_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.imbalance_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.imbalance_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Last Symbol Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.last_symbol_seq_num = 4

-- Display: Last Symbol Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.last_symbol_seq_num = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.last_symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.last_symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.last_symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Last Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.last_seq_num = 4

-- Display: Last Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.last_seq_num = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.last_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.last_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.last_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Total Refresh Pkts
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.total_refresh_pkts = 2

-- Display: Total Refresh Pkts
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.total_refresh_pkts = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.total_refresh_pkts = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.total_refresh_pkts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.total_refresh_pkts(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Size: Current Refresh Pkt
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.current_refresh_pkt = 2

-- Display: Current Refresh Pkt
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.current_refresh_pkt = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.current_refresh_pkt = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.current_refresh_pkt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.current_refresh_pkt(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Header Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.refresh_header_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.current_refresh_pkt

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.total_refresh_pkts

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.last_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.last_symbol_seq_num

  return index
end

-- Display: Refresh Header Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.refresh_header_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_header_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.current_refresh_pkt(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.total_refresh_pkts(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.last_seq_num(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.last_symbol_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_header_message = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_header_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.refresh_header_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_header_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Session State
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.session_state = 1

-- Display: Session State
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.session_state = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.session_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.session_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.session_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.session_state, range, value, display)

  return offset + length, value
end

-- Size: Market State
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.market_state = 1

-- Display: Market State
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.market_state = function(value)
  return "Market State: "..value
end

-- Dissect: Market State
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.market_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.market_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.market_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.market_state, range, value, display)

  return offset + length, value
end

-- Size: Ssr State
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_state = 1

-- Display: Ssr State
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.ssr_state = function(value)
  return "Ssr State: "..value
end

-- Dissect: Ssr State
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.ssr_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.ssr_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Size: Time
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.time = 4

-- Display: Time
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.time = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.time, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Volume
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_triggering_volume = 4

-- Display: Ssr Triggering Volume
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.ssr_triggering_volume = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.ssr_triggering_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_triggering_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.ssr_triggering_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Exchange Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_triggering_exchange_id = 1

-- Display: Ssr Triggering Exchange Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.ssr_triggering_exchange_id = function(value)
  return "Ssr Triggering Exchange Id: "..value
end

-- Dissect: Ssr Triggering Exchange Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.ssr_triggering_exchange_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_triggering_exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.ssr_triggering_exchange_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Size: Price 2
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_2 = 4

-- Display: Price 2
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.price_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.price_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.price_2, range, value, display)

  return offset + length, value
end

-- Size: Price 1
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_1 = 4

-- Display: Price 1
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.price_1 = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.price_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.price_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.price_1, range, value, display)

  return offset + length, value
end

-- Size: Reserved 4
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reserved_4 = 4

-- Display: Reserved 4
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Halt Condition
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.halt_condition = 1

-- Display: Halt Condition
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.halt_condition = function(value)
  return "Halt Condition: "..value
end

-- Dissect: Halt Condition
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.halt_condition = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.halt_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.security_status = 1

-- Display: Security Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.security_status = function(value)
  return "Security Status: "..value
end

-- Dissect: Security Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.security_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.security_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.security_status_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time_ns

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.security_status

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.halt_condition

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reserved_4

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_1

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_2

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_triggering_exchange_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_triggering_volume

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.time

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.ssr_state

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.market_state

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.session_state

  return index
end

-- Display: Security Status Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.security_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String
  index, security_status = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index, halt_condition = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.reserved_4(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.price_1(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.price_2(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String
  index, ssr_triggering_exchange_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.ssr_triggering_exchange_id(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.ssr_triggering_volume(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.time(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String
  index, ssr_state = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.ssr_state(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String
  index, market_state = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.market_state(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String
  index, session_state = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.session_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.security_status_message = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.security_status_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.security_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.security_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.security_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Next Source Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.next_source_seq_num = 4

-- Display: Next Source Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.next_source_seq_num = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.next_source_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.next_source_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.next_source_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Clear Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_clear_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time_ns

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.next_source_seq_num

  return index
end

-- Display: Symbol Clear Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.next_source_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_clear_message = function(buffer, offset, packet, parent)
  if show.symbol_clear_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_clear_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_clear_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_clear_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Channel Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.channel_id = 1

-- Display: Channel Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.product_id = 1

-- Display: Product Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.product_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.product_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: End Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.end_seq_num = 4

-- Display: End Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.end_seq_num = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.end_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.end_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.end_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Begin Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.begin_seq_num = 4

-- Display: Begin Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.begin_seq_num = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.begin_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.begin_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.begin_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Unavailable Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_unavailable_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.begin_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.end_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.channel_id

  return index
end

-- Display: Message Unavailable Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_unavailable_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_unavailable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.end_seq_num(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_unavailable_message = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_unavailable_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_unavailable_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_unavailable_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Source Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_id = 10

-- Display: Source Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.source_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.source_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.refresh_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.channel_id

  return index
end

-- Display: Refresh Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.refresh_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_request_message = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_request_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.refresh_request_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_request_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Retransmit Method
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.retransmit_method = 1

-- Display: Retransmit Method
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.retransmit_method = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.retransmit_method = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.retransmit_method
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.retransmit_method(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index_mapping_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.channel_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.retransmit_method

  return index
end

-- Display: Symbol Index Mapping Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_index_mapping_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.channel_id(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer
  index, retransmit_method = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.retransmit_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_request_message = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_index_mapping_request_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Heartbeat Response Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.heartbeat_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_id

  return index
end

-- Display: Heartbeat Response Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.heartbeat_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.heartbeat_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.heartbeat_response_message = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.heartbeat_response_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.heartbeat_response_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.heartbeat_response_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.status = 1

-- Display: Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.status = function(value)
  return "Status: "..value
end

-- Dissect: Status
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.status = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.status, range, value, display)

  return offset + length, value
end

-- Size: Request Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.request_seq_num = 4

-- Display: Request Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.request_seq_num = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.request_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.request_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.request_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Response Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.request_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.request_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.begin_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.end_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.channel_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.status

  return index
end

-- Display: Request Response Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.request_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.request_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.request_seq_num(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.channel_id(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String
  index, status = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.request_response_message = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.request_response_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.request_response_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.request_response_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.request_response_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Retransmission Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.retransmission_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.begin_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.end_seq_num

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.channel_id

  return index
end

-- Display: Retransmission Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.retransmission_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.retransmission_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.retransmission_request_message = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.retransmission_request_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.retransmission_request_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.retransmission_request_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reserved 2
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reserved_2 = 2

-- Display: Reserved 2
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reserved_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Trade
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.unit_of_trade = 2

-- Display: Unit Of Trade
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.unit_of_trade = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.unit_of_trade = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.unit_of_trade
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.unit_of_trade(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Size: Mpv
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.mpv = 2

-- Display: Mpv
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.mpv = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.mpv = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.mpv
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.mpv(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Round Lot
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.round_lot = 1

-- Display: Round Lot
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.round_lot = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.round_lot = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.round_lot
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.round_lot(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Size: Price Resolution
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_resolution = 1

-- Display: Price Resolution
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.price_resolution = function(value)
  return "Price Resolution: "..value
end

-- Dissect: Price Resolution
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.price_resolution = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_resolution
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Volume
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.prev_close_volume = 4

-- Display: Prev Close Volume
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.prev_close_volume = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.prev_close_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.prev_close_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.prev_close_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.prev_close_price = 4

-- Display: Prev Close Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.prev_close_price = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.prev_close_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.prev_close_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.prev_close_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.lot_size = 2

-- Display: Lot Size
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.lot_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.lot_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Security Type
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.security_type = 1

-- Display: Security Type
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.security_type = function(value)
  return "Security Type: "..value
end

-- Dissect: Security Type
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.security_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Price Scale Code
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_scale_code = 1

-- Display: Price Scale Code
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.price_scale_code = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.price_scale_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_scale_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.exchange_code = 1

-- Display: Exchange Code
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.exchange_code = function(value)
  return "Exchange Code: "..value
end

-- Dissect: Exchange Code
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.exchange_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Size: System Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.system_id = 1

-- Display: System Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.system_id = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.system_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.system_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.system_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.system_id, range, value, display)

  return offset + length, value
end

-- Size: Market Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.market_id = 2

-- Display: Market Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.market_id = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.market_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reserved_1 = 1

-- Display: Reserved 1
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Symbol
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol = 11

-- Display: Symbol
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index_mapping_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reserved_1

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.market_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.system_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.exchange_code

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_scale_code

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.security_type

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.lot_size

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.prev_close_price

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.prev_close_volume

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.price_resolution

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.round_lot

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.mpv

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.unit_of_trade

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.reserved_2

  return index
end

-- Display: Symbol Index Mapping Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_index_mapping_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.reserved_1(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer
  index, market_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String
  index, exchange_code = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.exchange_code(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.price_scale_code(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String
  index, security_type = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.security_type(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.lot_size(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.prev_close_price(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.prev_close_volume(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer
  index, price_resolution = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String
  index, round_lot = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.round_lot(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.mpv(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.unit_of_trade(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_message = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.symbol_index_mapping_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Sequence Number Reset Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.source_time_ns

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.channel_id

  return index
end

-- Display: Sequence Number Reset Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.sequence_number_reset_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.sequence_number_reset_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.sequence_number_reset_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.sequence_number_reset_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.payload = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.sequence_number_reset_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index_mapping_message(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.retransmission_request_message(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.request_response_message(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.heartbeat_response_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_index_mapping_request_message(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.refresh_request_message(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_unavailable_message(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.symbol_clear_message(buffer, offset)
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.security_status_message(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.refresh_header_message(buffer, offset)
  end
  -- Size of Imbalance Message
  if message_type == 105 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.imbalance_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.retransmission_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.request_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.heartbeat_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_index_mapping_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_unavailable_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.imbalance_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.payload(buffer, packet, parent)
  local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.payload, range, display)

  return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_type = 2

-- Display: Message Type
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_type = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
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
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_size = 2

-- Display: Message Size
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_size

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_type

  return index
end

-- Display: Message Header
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, message_type = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_header, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- TODO
  if message_index ~= nil then
    local iteration = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 12 branches
  index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message(buffer, packet, parent)
    parent = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message, range, display)
  end

  return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Nanoseconds
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.nanoseconds = 4

-- Display: Nanoseconds
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.timestamp = 4

-- Display: Timestamp
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.sequence_number = 4

-- Display: Sequence Number
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Count
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_count = 1

-- Display: Message Count
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.delivery_flag = 1

-- Display: Delivery Flag
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.delivery_flag = function(value)
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
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.delivery_flag = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.delivery_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.packet_size = 2

-- Display: Packet Size
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.packet_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.packet_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.packet_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.packet_size

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.delivery_flag

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.message_count

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.sequence_number

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.timestamp

  index = index + nyse_equities_imbalancesfeed_xdp_v2_1_f_size_of.nanoseconds

  return index
end

-- Display: Packet Header
nyse_equities_imbalancesfeed_xdp_v2_1_f_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f.fields.packet_header, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_equities_imbalancesfeed_xdp_v2_1_f_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_equities_imbalancesfeed_xdp_v2_1_f.init()
end

-- Dissector for Nyse Equities ImbalancesFeed Xdp 2.1.f
function nyse_equities_imbalancesfeed_xdp_v2_1_f.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_equities_imbalancesfeed_xdp_v2_1_f.name

  -- Dissect protocol
  local protocol = parent:add(nyse_equities_imbalancesfeed_xdp_v2_1_f, buffer(), nyse_equities_imbalancesfeed_xdp_v2_1_f.description, "("..buffer:len().." Bytes)")
  return nyse_equities_imbalancesfeed_xdp_v2_1_f_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_equities_imbalancesfeed_xdp_v2_1_f)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_equities_imbalancesfeed_xdp_v2_1_f_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities ImbalancesFeed Xdp 2.1.f
local function nyse_equities_imbalancesfeed_xdp_v2_1_f_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_equities_imbalancesfeed_xdp_v2_1_f_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_equities_imbalancesfeed_xdp_v2_1_f
  nyse_equities_imbalancesfeed_xdp_v2_1_f.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities ImbalancesFeed Xdp 2.1.f
nyse_equities_imbalancesfeed_xdp_v2_1_f:register_heuristic("udp", nyse_equities_imbalancesfeed_xdp_v2_1_f_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.1.f
--   Date: Thursday, February 1, 2018
--   Specification: XDP_Imbalances_Feed_Client_Specification_v2.1f.pdf
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
