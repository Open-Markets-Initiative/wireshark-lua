-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities ImbalancesFeed Pillar 2.2.h Protocol
local omi_nyse_equities_imbalancesfeed_pillar_v2_2_h = Proto("Nyse.Equities.ImbalancesFeed.Pillar.v2.2.h.Lua", "Nyse Equities ImbalancesFeed Pillar 2.2.h")

-- Component Tables
local show = {}
local format = {}
local nyse_equities_imbalancesfeed_pillar_v2_2_h_display = {}
local nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect = {}
local nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities ImbalancesFeed Pillar 2.2.h Fields
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.equities.imbalancesfeed.pillar.v2.2.h.auctioninterestclearingprice", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.auction_status = ProtoField.new("Auction Status", "nyse.equities.imbalancesfeed.pillar.v2.2.h.auctionstatus", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.auction_time = ProtoField.new("Auction Time", "nyse.equities.imbalancesfeed.pillar.v2.2.h.auctiontime", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.auction_type = ProtoField.new("Auction Type", "nyse.equities.imbalancesfeed.pillar.v2.2.h.auctiontype", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.equities.imbalancesfeed.pillar.v2.2.h.beginseqnum", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.channel_id = ProtoField.new("Channel Id", "nyse.equities.imbalancesfeed.pillar.v2.2.h.channelid", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.equities.imbalancesfeed.pillar.v2.2.h.continuousbookclearingprice", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.equities.imbalancesfeed.pillar.v2.2.h.currentrefreshpkt", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.imbalancesfeed.pillar.v2.2.h.deliveryflag", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.equities.imbalancesfeed.pillar.v2.2.h.endseqnum", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.equities.imbalancesfeed.pillar.v2.2.h.exchangecode", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.freeze_status = ProtoField.new("Freeze Status", "nyse.equities.imbalancesfeed.pillar.v2.2.h.freezestatus", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.equities.imbalancesfeed.pillar.v2.2.h.haltcondition", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.id = ProtoField.new("Id", "nyse.equities.imbalancesfeed.pillar.v2.2.h.id", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.equities.imbalancesfeed.pillar.v2.2.h.imbalanceside", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.equities.imbalancesfeed.pillar.v2.2.h.indicativematchprice", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.equities.imbalancesfeed.pillar.v2.2.h.lastseqnum", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.equities.imbalancesfeed.pillar.v2.2.h.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.lot_size = ProtoField.new("Lot Size", "nyse.equities.imbalancesfeed.pillar.v2.2.h.lotsize", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.equities.imbalancesfeed.pillar.v2.2.h.lowercollar", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.market_id = ProtoField.new("Market Id", "nyse.equities.imbalancesfeed.pillar.v2.2.h.marketid", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.equities.imbalancesfeed.pillar.v2.2.h.marketimbalanceqty", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.market_state = ProtoField.new("Market State", "nyse.equities.imbalancesfeed.pillar.v2.2.h.marketstate", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message = ProtoField.new("Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.message", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_count = ProtoField.new("Message Count", "nyse.equities.imbalancesfeed.pillar.v2.2.h.messagecount", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_header = ProtoField.new("Message Header", "nyse.equities.imbalancesfeed.pillar.v2.2.h.messageheader", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_size = ProtoField.new("Message Size", "nyse.equities.imbalancesfeed.pillar.v2.2.h.messagesize", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_type = ProtoField.new("Message Type", "nyse.equities.imbalancesfeed.pillar.v2.2.h.messagetype", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.mpv = ProtoField.new("Mpv", "nyse.equities.imbalancesfeed.pillar.v2.2.h.mpv", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.imbalancesfeed.pillar.v2.2.h.nanoseconds", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.equities.imbalancesfeed.pillar.v2.2.h.nextsourceseqnum", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.num_extensions = ProtoField.new("Num Extensions", "nyse.equities.imbalancesfeed.pillar.v2.2.h.numextensions", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.packet = ProtoField.new("Packet", "nyse.equities.imbalancesfeed.pillar.v2.2.h.packet", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.imbalancesfeed.pillar.v2.2.h.packetheader", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.imbalancesfeed.pillar.v2.2.h.packetsize", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.equities.imbalancesfeed.pillar.v2.2.h.pairedqty", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.payload = ProtoField.new("Payload", "nyse.equities.imbalancesfeed.pillar.v2.2.h.payload", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.equities.imbalancesfeed.pillar.v2.2.h.prevcloseprice", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.equities.imbalancesfeed.pillar.v2.2.h.prevclosevolume", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.price_1 = ProtoField.new("Price 1", "nyse.equities.imbalancesfeed.pillar.v2.2.h.price1", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.price_2 = ProtoField.new("Price 2", "nyse.equities.imbalancesfeed.pillar.v2.2.h.price2", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.equities.imbalancesfeed.pillar.v2.2.h.priceresolution", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.equities.imbalancesfeed.pillar.v2.2.h.pricescalecode", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.product_id = ProtoField.new("Product Id", "nyse.equities.imbalancesfeed.pillar.v2.2.h.productid", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.reference_price = ProtoField.new("Reference Price", "nyse.equities.imbalancesfeed.pillar.v2.2.h.referenceprice", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.equities.imbalancesfeed.pillar.v2.2.h.requestseqnum", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.equities.imbalancesfeed.pillar.v2.2.h.reserved1", ftypes.BYTES)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.equities.imbalancesfeed.pillar.v2.2.h.reserved2", ftypes.BYTES)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.equities.imbalancesfeed.pillar.v2.2.h.reserved4", ftypes.BYTES)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.equities.imbalancesfeed.pillar.v2.2.h.retransmitmethod", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.round_lot = ProtoField.new("Round Lot", "nyse.equities.imbalancesfeed.pillar.v2.2.h.roundlot", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.security_status = ProtoField.new("Security Status", "nyse.equities.imbalancesfeed.pillar.v2.2.h.securitystatus", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.security_type = ProtoField.new("Security Type", "nyse.equities.imbalancesfeed.pillar.v2.2.h.securitytype", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.imbalancesfeed.pillar.v2.2.h.sequencenumber", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.session_state = ProtoField.new("Session State", "nyse.equities.imbalancesfeed.pillar.v2.2.h.sessionstate", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.significant_imbalance = ProtoField.new("Significant Imbalance", "nyse.equities.imbalancesfeed.pillar.v2.2.h.significantimbalance", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.source_id = ProtoField.new("Source Id", "nyse.equities.imbalancesfeed.pillar.v2.2.h.sourceid", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.source_time = ProtoField.new("Source Time", "nyse.equities.imbalancesfeed.pillar.v2.2.h.sourcetime", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.imbalancesfeed.pillar.v2.2.h.sourcetimens", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.equities.imbalancesfeed.pillar.v2.2.h.ssrfilingprice", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.ssr_state = ProtoField.new("Ssr State", "nyse.equities.imbalancesfeed.pillar.v2.2.h.ssrstate", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.equities.imbalancesfeed.pillar.v2.2.h.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.equities.imbalancesfeed.pillar.v2.2.h.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.status = ProtoField.new("Status", "nyse.equities.imbalancesfeed.pillar.v2.2.h.status", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol = ProtoField.new("Symbol", "nyse.equities.imbalancesfeed.pillar.v2.2.h.symbol", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.imbalancesfeed.pillar.v2.2.h.symbolindex", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.imbalancesfeed.pillar.v2.2.h.symbolseqnum", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.system_id = ProtoField.new("System Id", "nyse.equities.imbalancesfeed.pillar.v2.2.h.systemid", ftypes.UINT8)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.time = ProtoField.new("Time", "nyse.equities.imbalancesfeed.pillar.v2.2.h.time", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.imbalancesfeed.pillar.v2.2.h.timestamp", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.equities.imbalancesfeed.pillar.v2.2.h.totalimbalanceqty", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.equities.imbalancesfeed.pillar.v2.2.h.totalrefreshpkts", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.equities.imbalancesfeed.pillar.v2.2.h.unitoftrade", ftypes.UINT16)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.unpaired_qty = ProtoField.new("Unpaired Qty", "nyse.equities.imbalancesfeed.pillar.v2.2.h.unpairedqty", ftypes.UINT32)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.unpaired_side = ProtoField.new("Unpaired Side", "nyse.equities.imbalancesfeed.pillar.v2.2.h.unpairedside", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.equities.imbalancesfeed.pillar.v2.2.h.uppercollar", ftypes.UINT32)

-- Nyse Equities ImbalancesFeed Pillar 2.2.h messages
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.imbalancemessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.messageunavailablemessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.refreshheadermessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.refreshrequestmessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.requestresponsemessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.securitystatusmessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.symbolclearmessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.equities.imbalancesfeed.pillar.v2.2.h.symbolindexmappingrequestmessage", ftypes.STRING)

-- Nyse Equities ImbalancesFeed Pillar 2.2.h generated fields
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_index = ProtoField.new("Message Index", "nyse.equities.imbalancesfeed.pillar.v2.2.h.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Equities ImbalancesFeed Pillar 2.2.h Element Dissection Options
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
show.source_time_reference_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.payload = false

-- Register Nyse Equities ImbalancesFeed Pillar 2.2.h Show Options
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_imbalance_message = Pref.bool("Show Imbalance Message", show.imbalance_message, "Parse and add Imbalance Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_source_time_reference_message = Pref.bool("Show Source Time Reference Message", show.source_time_reference_message, "Parse and add Source Time Reference Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat_response_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.imbalance_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_imbalance_message then
    show.imbalance_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_imbalance_message
    changed = true
  end
  if show.message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_message then
    show.message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_message_header then
    show.message_header = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_message_unavailable_message then
    show.message_unavailable_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_packet then
    show.packet = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_packet_header then
    show.packet_header = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_refresh_header_message then
    show.refresh_header_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_refresh_request_message then
    show.refresh_request_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_request_response_message then
    show.request_response_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_retransmission_request_message then
    show.retransmission_request_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_security_status_message then
    show.security_status_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.source_time_reference_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_source_time_reference_message then
    show.source_time_reference_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_source_time_reference_message
    changed = true
  end
  if show.symbol_clear_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_symbol_clear_message then
    show.symbol_clear_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.payload ~= omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_payload then
    show.payload = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Equities ImbalancesFeed Pillar 2.2.h
-----------------------------------------------------------------------

-- Size: Significant Imbalance
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.significant_imbalance = 1

-- Display: Significant Imbalance
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.significant_imbalance = function(value)
  if value == " " then
    return "Significant Imbalance: Not Applicable (<whitespace>)"
  end
  if value == "Y" then
    return "Significant Imbalance: Yes (Y)"
  end

  return "Significant Imbalance: Unknown("..value..")"
end

-- Dissect: Significant Imbalance
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.significant_imbalance = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.significant_imbalance
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.significant_imbalance(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.significant_imbalance, range, value, display)

  return offset + length, value
end

-- Size: Unpaired Side
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.unpaired_side = 1

-- Display: Unpaired Side
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.unpaired_side = function(value)
  if value == " " then
    return "Unpaired Side: Not Applicable (<whitespace>)"
  end
  if value == "B" then
    return "Unpaired Side: Buy Side (B)"
  end
  if value == "S" then
    return "Unpaired Side: Sell Side (S)"
  end

  return "Unpaired Side: Unknown("..value..")"
end

-- Dissect: Unpaired Side
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.unpaired_side = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.unpaired_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.unpaired_side(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.unpaired_side, range, value, display)

  return offset + length, value
end

-- Size: Unpaired Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.unpaired_qty = 4

-- Display: Unpaired Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.unpaired_qty = function(value)
  return "Unpaired Qty: "..value
end

-- Dissect: Unpaired Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.unpaired_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.unpaired_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.unpaired_qty(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.unpaired_qty, range, value, display)

  return offset + length, value
end

-- Size: Num Extensions
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.num_extensions = 1

-- Display: Num Extensions
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.num_extensions = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.num_extensions = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.num_extensions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.num_extensions(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Size: Freeze Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.freeze_status = 1

-- Display: Freeze Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.freeze_status = function(value)
  if value == 0 then
    return "Freeze Status: No Imbalance Freeze (0)"
  end
  if value == 1 then
    return "Freeze Status: Imbalance Freeze (1)"
  end

  return "Freeze Status: Unknown("..value..")"
end

-- Dissect: Freeze Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.freeze_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.freeze_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.freeze_status(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Size: Auction Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_status = 1

-- Display: Auction Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.auction_status = function(value)
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
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.auction_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.auction_status(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Size: Lower Collar
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.lower_collar = 4

-- Display: Lower Collar
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.lower_collar = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.lower_collar = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.lower_collar
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.lower_collar(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Size: Upper Collar
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.upper_collar = 4

-- Display: Upper Collar
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.upper_collar = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.upper_collar = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.upper_collar
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.upper_collar(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Size: Indicative Match Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.indicative_match_price = 4

-- Display: Indicative Match Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.indicative_match_price = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.indicative_match_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.indicative_match_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.indicative_match_price(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Size: Ssr Filing Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_filing_price = 4

-- Display: Ssr Filing Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.ssr_filing_price = function(value)
  return "Ssr Filing Price: "..value
end

-- Dissect: Ssr Filing Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.ssr_filing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_filing_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.ssr_filing_price(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Interest Clearing Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_interest_clearing_price = 4

-- Display: Auction Interest Clearing Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.auction_interest_clearing_price = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Dissect: Auction Interest Clearing Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.auction_interest_clearing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_interest_clearing_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.auction_interest_clearing_price(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Continuous Book Clearing Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.continuous_book_clearing_price = 4

-- Display: Continuous Book Clearing Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.continuous_book_clearing_price = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.continuous_book_clearing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.continuous_book_clearing_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.continuous_book_clearing_price(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Side
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.imbalance_side = 1

-- Display: Imbalance Side
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.imbalance_side = function(value)
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
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.imbalance_side = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.imbalance_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.imbalance_side(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_type = 1

-- Display: Auction Type
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.auction_type = function(value)
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
  if value == "P" then
    return "Auction Type: Extreme Closing Imbalance (P)"
  end
  if value == "R" then
    return "Auction Type: Regulatory Imbalance (R)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Auction Time
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_time = 2

-- Display: Auction Time
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.auction_time = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.auction_time = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.auction_time(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Size: Market Imbalance Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.market_imbalance_qty = 4

-- Display: Market Imbalance Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.market_imbalance_qty = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.market_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.market_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.market_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Total Imbalance Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.total_imbalance_qty = 4

-- Display: Total Imbalance Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.total_imbalance_qty = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.total_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.total_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.total_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Paired Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.paired_qty = 4

-- Display: Paired Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.paired_qty = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.paired_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.paired_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.paired_qty(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reference_price = 4

-- Display: Reference Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reference_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Size: Symbol Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index = 4

-- Display: Symbol Index
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Source Time Ns
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time_ns = 4

-- Display: Source Time Ns
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.source_time_ns = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_ns = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time_ns
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.source_time_ns(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Size: Source Time
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time = 4

-- Display: Source Time
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.source_time(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.source_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Imbalance Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.imbalance_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time_ns

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reference_price

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.paired_qty

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.total_imbalance_qty

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.market_imbalance_qty

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_time

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_type

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.imbalance_side

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.continuous_book_clearing_price

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_interest_clearing_price

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_filing_price

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.indicative_match_price

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.upper_collar

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.lower_collar

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.auction_status

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.freeze_status

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.num_extensions

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.unpaired_qty

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.unpaired_side

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.significant_imbalance

  return index
end

-- Display: Imbalance Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.imbalance_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, reference_price = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.reference_price(buffer, index, packet, parent)

  -- Paired Qty: 4 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.paired_qty(buffer, index, packet, parent)

  -- Total Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, total_imbalance_qty = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.total_imbalance_qty(buffer, index, packet, parent)

  -- Market Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, market_imbalance_qty = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.market_imbalance_qty(buffer, index, packet, parent)

  -- Auction Time: 2 Byte Unsigned Fixed Width Integer
  index, auction_time = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.auction_time(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 6 values
  index, auction_type = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.auction_type(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.imbalance_side(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, continuous_book_clearing_price = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.continuous_book_clearing_price(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, auction_interest_clearing_price = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.auction_interest_clearing_price(buffer, index, packet, parent)

  -- Ssr Filing Price: 4 Byte Unsigned Fixed Width Integer
  index, ssr_filing_price = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.ssr_filing_price(buffer, index, packet, parent)

  -- Indicative Match Price: 4 Byte Unsigned Fixed Width Integer
  index, indicative_match_price = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.indicative_match_price(buffer, index, packet, parent)

  -- Upper Collar: 4 Byte Unsigned Fixed Width Integer
  index, upper_collar = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.upper_collar(buffer, index, packet, parent)

  -- Lower Collar: 4 Byte Unsigned Fixed Width Integer
  index, lower_collar = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.lower_collar(buffer, index, packet, parent)

  -- Auction Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, auction_status = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.auction_status(buffer, index, packet, parent)

  -- Freeze Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, freeze_status = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.freeze_status(buffer, index, packet, parent)

  -- Num Extensions: 1 Byte Unsigned Fixed Width Integer
  index, num_extensions = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.num_extensions(buffer, index, packet, parent)

  -- Unpaired Qty: 4 Byte Unsigned Fixed Width Integer
  index, unpaired_qty = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.unpaired_qty(buffer, index, packet, parent)

  -- Unpaired Side: 1 Byte Ascii String Enum with 3 values
  index, unpaired_side = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.unpaired_side(buffer, index, packet, parent)

  -- Significant Imbalance: 1 Byte Ascii String Enum with 2 values
  index, significant_imbalance = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.significant_imbalance(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.imbalance_message = function(buffer, offset, packet, parent)
  if show.imbalance_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.imbalance_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.imbalance_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.imbalance_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Last Symbol Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.last_symbol_seq_num = 4

-- Display: Last Symbol Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.last_symbol_seq_num = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.last_symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.last_symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.last_symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Last Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.last_seq_num = 4

-- Display: Last Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.last_seq_num = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.last_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.last_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.last_seq_num(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Total Refresh Pkts
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.total_refresh_pkts = 2

-- Display: Total Refresh Pkts
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.total_refresh_pkts = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.total_refresh_pkts = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.total_refresh_pkts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.total_refresh_pkts(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Size: Current Refresh Pkt
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.current_refresh_pkt = 2

-- Display: Current Refresh Pkt
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.current_refresh_pkt = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.current_refresh_pkt = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.current_refresh_pkt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.current_refresh_pkt(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Header Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.refresh_header_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.current_refresh_pkt

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.total_refresh_pkts

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.last_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.last_symbol_seq_num

  return index
end

-- Display: Refresh Header Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.refresh_header_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_header_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.current_refresh_pkt(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.total_refresh_pkts(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.last_seq_num(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.last_symbol_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_header_message = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_header_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.refresh_header_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_header_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Session State
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.session_state = 1

-- Display: Session State
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.session_state = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.session_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.session_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.session_state(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.session_state, range, value, display)

  return offset + length, value
end

-- Size: Market State
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.market_state = 1

-- Display: Market State
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.market_state = function(value)
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
    return "Market State: Late Session (L)"
  end
  if value == "X" then
    return "Market State: Closed (X)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.market_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.market_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.market_state(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.market_state, range, value, display)

  return offset + length, value
end

-- Size: Ssr State
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_state = 1

-- Display: Ssr State
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.ssr_state = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.ssr_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.ssr_state(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Size: Time
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.time = 4

-- Display: Time
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.time = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.time(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.time, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Volume
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_triggering_volume = 4

-- Display: Ssr Triggering Volume
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.ssr_triggering_volume = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.ssr_triggering_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_triggering_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.ssr_triggering_volume(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Exchange Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_triggering_exchange_id = 1

-- Display: Ssr Triggering Exchange Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.ssr_triggering_exchange_id = function(value)
  if value == "A" then
    return "Ssr Triggering Exchange Id: Nyse American (A)"
  end
  if value == "B" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Ssr Triggering Exchange Id: Nyse National (C)"
  end
  if value == "H" then
    return "Ssr Triggering Exchange Id: Miami Pearl (H)"
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
    return "Ssr Triggering Exchange Id: Nyse Chicago (M)"
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
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.ssr_triggering_exchange_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_triggering_exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.ssr_triggering_exchange_id(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Size: Price 2
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_2 = 4

-- Display: Price 2
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.price_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.price_2(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.price_2, range, value, display)

  return offset + length, value
end

-- Size: Price 1
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_1 = 4

-- Display: Price 1
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.price_1 = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.price_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.price_1(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.price_1, range, value, display)

  return offset + length, value
end

-- Size: Reserved 4
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reserved_4 = 4

-- Display: Reserved 4
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Halt Condition
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.halt_condition = 1

-- Display: Halt Condition
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.halt_condition = function(value)
  if value == "~" then
    return "Halt Condition: Security Not Delayedhalted (~)"
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
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.halt_condition = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.halt_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.security_status = 1

-- Display: Security Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.security_status = function(value)
  if value == "4" then
    return "Security Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Security Status: Resume (5)"
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
  if value == "I" then
    return "Security Status: Price Indication (I)"
  end
  if value == "G" then
    return "Security Status: Pre Opening Price Indication (G)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.security_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.security_status(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.security_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.security_status_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time_ns

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.security_status

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.halt_condition

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reserved_4

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_1

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_2

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_triggering_exchange_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_triggering_volume

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.time

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.ssr_state

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.market_state

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.session_state

  return index
end

-- Display: Security Status Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.security_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 12 values
  index, security_status = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 16 values
  index, halt_condition = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.reserved_4(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.price_1(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.price_2(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 19 values
  index, ssr_triggering_exchange_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.ssr_triggering_exchange_id(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.ssr_triggering_volume(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.time(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index, ssr_state = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.ssr_state(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.market_state(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String
  index, session_state = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.session_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.security_status_message = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.security_status_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.security_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.security_status_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.security_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Next Source Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.next_source_seq_num = 4

-- Display: Next Source Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.next_source_seq_num = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.next_source_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.next_source_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.next_source_seq_num(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Clear Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_clear_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time_ns

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.next_source_seq_num

  return index
end

-- Display: Symbol Clear Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.next_source_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_clear_message = function(buffer, offset, packet, parent)
  if show.symbol_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_clear_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_clear_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_clear_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Channel Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.channel_id = 1

-- Display: Channel Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.product_id = 1

-- Display: Product Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.product_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.product_id(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: End Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.end_seq_num = 4

-- Display: End Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.end_seq_num = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.end_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.end_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.end_seq_num(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Begin Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.begin_seq_num = 4

-- Display: Begin Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.begin_seq_num = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.begin_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.begin_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.begin_seq_num(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Unavailable Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_unavailable_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.begin_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.end_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.channel_id

  return index
end

-- Display: Message Unavailable Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_unavailable_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_unavailable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.end_seq_num(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_unavailable_message = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_unavailable_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_unavailable_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_unavailable_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Source Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_id = 10

-- Display: Source Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.source_id(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.source_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.refresh_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.channel_id

  return index
end

-- Display: Refresh Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.refresh_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_request_message = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.refresh_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Retransmit Method
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.retransmit_method = 1

-- Display: Retransmit Method
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.retransmit_method = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.retransmit_method = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.retransmit_method
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.retransmit_method(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index_mapping_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.channel_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.retransmit_method

  return index
end

-- Display: Symbol Index Mapping Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_index_mapping_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.channel_id(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer
  index, retransmit_method = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.retransmit_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_request_message = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_index_mapping_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Heartbeat Response Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.heartbeat_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_id

  return index
end

-- Display: Heartbeat Response Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.heartbeat_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.heartbeat_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.heartbeat_response_message = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.heartbeat_response_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.status = 1

-- Display: Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.status = function(value)
  if value == "0" then
    return "Status: Message Was Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected Due To An Invalid Source Id (1)"
  end
  if value == "3" then
    return "Status: Maximum Sequence Range (3)"
  end
  if value == "4" then
    return "Status: Maximum Request In A Day (4)"
  end
  if value == "5" then
    return "Status: Maximum Refresh Requests In A Day (5)"
  end
  if value == "6" then
    return "Status: Old Seq Num Ttl (6)"
  end
  if value == "7" then
    return "Status: Invalid Channel Id (7)"
  end
  if value == "8" then
    return "Status: Invalid Product Id (8)"
  end
  if value == "9" then
    return "Status: Invalid Msg Type Or Msg Size Mismatch (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.status = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.status(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.status, range, value, display)

  return offset + length, value
end

-- Size: Request Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.request_seq_num = 4

-- Display: Request Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.request_seq_num = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.request_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.request_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.request_seq_num(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Response Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.request_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.request_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.begin_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.end_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.channel_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.status

  return index
end

-- Display: Request Response Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.request_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.request_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.request_seq_num(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.channel_id(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 9 values
  index, status = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.request_response_message = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.request_response_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.request_response_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.request_response_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.request_response_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Retransmission Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.retransmission_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.begin_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.end_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.channel_id

  return index
end

-- Display: Retransmission Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.retransmission_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.retransmission_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.retransmission_request_message = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.retransmission_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.retransmission_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.retransmission_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 2
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reserved_2 = 2

-- Display: Reserved 2
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reserved_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Trade
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.unit_of_trade = 2

-- Display: Unit Of Trade
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.unit_of_trade = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.unit_of_trade = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.unit_of_trade
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.unit_of_trade(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Size: Mpv
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.mpv = 2

-- Display: Mpv
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.mpv = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.mpv = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.mpv
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.mpv(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Round Lot
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.round_lot = 1

-- Display: Round Lot
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.round_lot = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.round_lot = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.round_lot
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.round_lot(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Size: Price Resolution
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_resolution = 1

-- Display: Price Resolution
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.price_resolution = function(value)
  if value == 0 then
    return "Price Resolution: All Penny (0)"
  end
  if value == 1 then
    return "Price Resolution: Penny Nickel (1)"
  end
  if value == 5 then
    return "Price Resolution: Nickel Dime (5)"
  end

  return "Price Resolution: Unknown("..value..")"
end

-- Dissect: Price Resolution
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.price_resolution = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_resolution
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Volume
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.prev_close_volume = 4

-- Display: Prev Close Volume
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.prev_close_volume = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.prev_close_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.prev_close_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.prev_close_volume(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.prev_close_price = 4

-- Display: Prev Close Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.prev_close_price = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.prev_close_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.prev_close_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.prev_close_price(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.lot_size = 2

-- Display: Lot Size
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.lot_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.lot_size(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Security Type
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.security_type = 1

-- Display: Security Type
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.security_type = function(value)
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
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.security_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.security_type(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Price Scale Code
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_scale_code = 1

-- Display: Price Scale Code
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.price_scale_code = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.price_scale_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_scale_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.exchange_code = 1

-- Display: Exchange Code
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.exchange_code = function(value)
  if value == "A" then
    return "Exchange Code: Nyse American (A)"
  end
  if value == "L" then
    return "Exchange Code: Ltse (L)"
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
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.exchange_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Size: System Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.system_id = 1

-- Display: System Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.system_id = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.system_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.system_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.system_id(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.system_id, range, value, display)

  return offset + length, value
end

-- Size: Market Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.market_id = 2

-- Display: Market Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.market_id = function(value)
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
    return "Market Id: Nyse Amex Options (8)"
  end
  if value == 9 then
    return "Market Id: Nyse American Equities (9)"
  end
  if value == 10 then
    return "Market Id: Nyse National Equities (10)"
  end
  if value == 11 then
    return "Market Id: Nyse Chicago (11)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.market_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.market_id(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reserved_1 = 1

-- Display: Reserved 1
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Symbol
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol = 11

-- Display: Symbol
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index_mapping_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reserved_1

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.market_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.system_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.exchange_code

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_scale_code

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.security_type

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.lot_size

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.prev_close_price

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.prev_close_volume

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.price_resolution

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.round_lot

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.mpv

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.unit_of_trade

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.reserved_2

  return index
end

-- Display: Symbol Index Mapping Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_index_mapping_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.reserved_1(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, market_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 7 values
  index, exchange_code = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.exchange_code(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.price_scale_code(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.security_type(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.lot_size(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.prev_close_price(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.prev_close_volume(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
  index, round_lot = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.round_lot(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.mpv(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.unit_of_trade(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_message = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.symbol_index_mapping_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.id = 4

-- Display: Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.id = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.id = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.id(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Source Time Reference Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time_reference_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_seq_num

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time

  return index
end

-- Display: Source Time Reference Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.source_time_reference_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.id(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_reference_message = function(buffer, offset, packet, parent)
  if show.source_time_reference_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_reference_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.source_time_reference_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_reference_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Sequence Number Reset Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time_ns

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.product_id

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.channel_id

  return index
end

-- Display: Sequence Number Reset Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.sequence_number_reset_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_ns(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.sequence_number_reset_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.payload = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.sequence_number_reset_message(buffer, offset)
  end
  -- Size of Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.source_time_reference_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index_mapping_message(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.retransmission_request_message(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.request_response_message(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.heartbeat_response_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_index_mapping_request_message(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.refresh_request_message(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_unavailable_message(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.symbol_clear_message(buffer, offset)
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.security_status_message(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.refresh_header_message(buffer, offset)
  end
  -- Size of Imbalance Message
  if message_type == 105 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.imbalance_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.source_time_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.retransmission_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.request_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.heartbeat_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_index_mapping_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_unavailable_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.imbalance_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.payload(buffer, packet, parent)
  local element = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.payload, range, display)

  return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_type = 2

-- Display: Message Type
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_type = function(value)
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
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_type(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_size = 2

-- Display: Message Size
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_size(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_size

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_type

  return index
end

-- Display: Message Header
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_header, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message, buffer(offset, 0))
    local current = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Nanoseconds
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.nanoseconds = 4

-- Display: Nanoseconds
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.timestamp = 4

-- Display: Timestamp
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.sequence_number = 4

-- Display: Sequence Number
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Count
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_count = 1

-- Display: Message Count
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.message_count(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.delivery_flag = 1

-- Display: Delivery Flag
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.delivery_flag = function(value)
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
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.delivery_flag = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.delivery_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.packet_size = 2

-- Display: Packet Size
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.packet_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.packet_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.packet_size(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.packet_size

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.delivery_flag

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.message_count

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.sequence_number

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.timestamp

  index = index + nyse_equities_imbalancesfeed_pillar_v2_2_h_size_of.nanoseconds

  return index
end

-- Display: Packet Header
nyse_equities_imbalancesfeed_pillar_v2_2_h_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.fields.packet_header, buffer(offset, 0))
    local index = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_imbalancesfeed_pillar_v2_2_h_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.message(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.init()
end

-- Dissector for Nyse Equities ImbalancesFeed Pillar 2.2.h
function omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_equities_imbalancesfeed_pillar_v2_2_h, buffer(), omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.description, "("..buffer:len().." Bytes)")
  return nyse_equities_imbalancesfeed_pillar_v2_2_h_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_equities_imbalancesfeed_pillar_v2_2_h)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_nyse_equities_imbalancesfeed_pillar_v2_2_h_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities ImbalancesFeed Pillar 2.2.h
local function omi_nyse_equities_imbalancesfeed_pillar_v2_2_h_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_nyse_equities_imbalancesfeed_pillar_v2_2_h_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_equities_imbalancesfeed_pillar_v2_2_h
  omi_nyse_equities_imbalancesfeed_pillar_v2_2_h.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities ImbalancesFeed Pillar 2.2.h
omi_nyse_equities_imbalancesfeed_pillar_v2_2_h:register_heuristic("udp", omi_nyse_equities_imbalancesfeed_pillar_v2_2_h_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.2.h
--   Date: Wednesday, November 30, 2022
--   Specification: NYSE_Pillar_Order_Imbalances_Client_Specification.pdf
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
