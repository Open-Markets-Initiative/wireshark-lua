-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse AmexEquities DepthFeed Pillar 1.6 Protocol
local omi_nyse_amexequities_depthfeed_pillar_v1_6 = Proto("Nyse.AmexEquities.DepthFeed.Pillar.v1.6.Lua", "Nyse AmexEquities DepthFeed Pillar 1.6")

-- Protocol table
local nyse_amexequities_depthfeed_pillar_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse AmexEquities DepthFeed Pillar 1.6 Fields
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.amexequities.depthfeed.pillar.v1.6.auctioninterestclearingprice", ftypes.DOUBLE)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.auction_status = ProtoField.new("Auction Status", "nyse.amexequities.depthfeed.pillar.v1.6.auctionstatus", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.auction_time = ProtoField.new("Auction Time", "nyse.amexequities.depthfeed.pillar.v1.6.auctiontime", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.auction_type = ProtoField.new("Auction Type", "nyse.amexequities.depthfeed.pillar.v1.6.auctiontype", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.amexequities.depthfeed.pillar.v1.6.beginseqnum", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.channel_id = ProtoField.new("Channel Id", "nyse.amexequities.depthfeed.pillar.v1.6.channelid", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.amexequities.depthfeed.pillar.v1.6.continuousbookclearingprice", ftypes.DOUBLE)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.amexequities.depthfeed.pillar.v1.6.currentrefreshpkt", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.amexequities.depthfeed.pillar.v1.6.deliveryflag", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.amexequities.depthfeed.pillar.v1.6.endseqnum", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.amexequities.depthfeed.pillar.v1.6.exchangecode", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.freeze_status = ProtoField.new("Freeze Status", "nyse.amexequities.depthfeed.pillar.v1.6.freezestatus", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.amexequities.depthfeed.pillar.v1.6.haltcondition", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.id = ProtoField.new("Id", "nyse.amexequities.depthfeed.pillar.v1.6.id", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.amexequities.depthfeed.pillar.v1.6.imbalanceside", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.amexequities.depthfeed.pillar.v1.6.indicativematchprice", ftypes.DOUBLE)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.amexequities.depthfeed.pillar.v1.6.lastseqnum", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.amexequities.depthfeed.pillar.v1.6.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.lot_size = ProtoField.new("Lot Size", "nyse.amexequities.depthfeed.pillar.v1.6.lotsize", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.amexequities.depthfeed.pillar.v1.6.lowercollar", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.market_id = ProtoField.new("Market Id", "nyse.amexequities.depthfeed.pillar.v1.6.marketid", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.amexequities.depthfeed.pillar.v1.6.marketimbalanceqty", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.market_state = ProtoField.new("Market State", "nyse.amexequities.depthfeed.pillar.v1.6.marketstate", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message = ProtoField.new("Message", "nyse.amexequities.depthfeed.pillar.v1.6.message", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_header = ProtoField.new("Message Header", "nyse.amexequities.depthfeed.pillar.v1.6.messageheader", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_size = ProtoField.new("Message Size", "nyse.amexequities.depthfeed.pillar.v1.6.messagesize", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_type = ProtoField.new("Message Type", "nyse.amexequities.depthfeed.pillar.v1.6.messagetype", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.mpv = ProtoField.new("Mpv", "nyse.amexequities.depthfeed.pillar.v1.6.mpv", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.amexequities.depthfeed.pillar.v1.6.nanoseconds", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.amexequities.depthfeed.pillar.v1.6.nextsourceseqnum", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.num_extensions = ProtoField.new("Num Extensions", "nyse.amexequities.depthfeed.pillar.v1.6.numextensions", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.amexequities.depthfeed.pillar.v1.6.numbermsgs", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.number_of_orders = ProtoField.new("Number Of Orders", "nyse.amexequities.depthfeed.pillar.v1.6.numberoforders", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.packet = ProtoField.new("Packet", "nyse.amexequities.depthfeed.pillar.v1.6.packet", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.packet_header = ProtoField.new("Packet Header", "nyse.amexequities.depthfeed.pillar.v1.6.packetheader", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.amexequities.depthfeed.pillar.v1.6.pairedqty", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.participant = ProtoField.new("Participant", "nyse.amexequities.depthfeed.pillar.v1.6.participant", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.participants = ProtoField.new("Participants", "nyse.amexequities.depthfeed.pillar.v1.6.participants", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.amexequities.depthfeed.pillar.v1.6.pktsize", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.amexequities.depthfeed.pillar.v1.6.prevcloseprice", ftypes.DOUBLE)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.amexequities.depthfeed.pillar.v1.6.prevclosevolume", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price = ProtoField.new("Price", "nyse.amexequities.depthfeed.pillar.v1.6.price", ftypes.DOUBLE)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_1 = ProtoField.new("Price 1", "nyse.amexequities.depthfeed.pillar.v1.6.price1", ftypes.DOUBLE)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_2 = ProtoField.new("Price 2", "nyse.amexequities.depthfeed.pillar.v1.6.price2", ftypes.DOUBLE)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_point = ProtoField.new("Price Point", "nyse.amexequities.depthfeed.pillar.v1.6.pricepoint", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.amexequities.depthfeed.pillar.v1.6.priceresolution", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.amexequities.depthfeed.pillar.v1.6.pricescalecode", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.product_id = ProtoField.new("Product Id", "nyse.amexequities.depthfeed.pillar.v1.6.productid", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.reference_price = ProtoField.new("Reference Price", "nyse.amexequities.depthfeed.pillar.v1.6.referenceprice", ftypes.DOUBLE)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.amexequities.depthfeed.pillar.v1.6.requestseqnum", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.amexequities.depthfeed.pillar.v1.6.reserved1", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.amexequities.depthfeed.pillar.v1.6.reserved2", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.amexequities.depthfeed.pillar.v1.6.retransmitmethod", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.round_lot = ProtoField.new("Round Lot", "nyse.amexequities.depthfeed.pillar.v1.6.roundlot", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.seconds = ProtoField.new("Seconds", "nyse.amexequities.depthfeed.pillar.v1.6.seconds", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.security_status = ProtoField.new("Security Status", "nyse.amexequities.depthfeed.pillar.v1.6.securitystatus", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.security_type = ProtoField.new("Security Type", "nyse.amexequities.depthfeed.pillar.v1.6.securitytype", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.send_time = ProtoField.new("Send Time", "nyse.amexequities.depthfeed.pillar.v1.6.sendtime", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.seq_num = ProtoField.new("Seq Num", "nyse.amexequities.depthfeed.pillar.v1.6.seqnum", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.session_state = ProtoField.new("Session State", "nyse.amexequities.depthfeed.pillar.v1.6.sessionstate", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.side = ProtoField.new("Side", "nyse.amexequities.depthfeed.pillar.v1.6.side", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.source_id = ProtoField.new("Source Id", "nyse.amexequities.depthfeed.pillar.v1.6.sourceid", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.source_time = ProtoField.new("Source Time", "nyse.amexequities.depthfeed.pillar.v1.6.sourcetime", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.amexequities.depthfeed.pillar.v1.6.sourcetimens", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.amexequities.depthfeed.pillar.v1.6.ssrfilingprice", ftypes.DOUBLE)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.ssr_state = ProtoField.new("Ssr State", "nyse.amexequities.depthfeed.pillar.v1.6.ssrstate", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.amexequities.depthfeed.pillar.v1.6.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.amexequities.depthfeed.pillar.v1.6.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.status = ProtoField.new("Status", "nyse.amexequities.depthfeed.pillar.v1.6.status", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol = ProtoField.new("Symbol", "nyse.amexequities.depthfeed.pillar.v1.6.symbol", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.amexequities.depthfeed.pillar.v1.6.symbolindex", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.amexequities.depthfeed.pillar.v1.6.symbolseqnum", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.system_id = ProtoField.new("System Id", "nyse.amexequities.depthfeed.pillar.v1.6.systemid", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.time = ProtoField.new("Time", "nyse.amexequities.depthfeed.pillar.v1.6.time", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.amexequities.depthfeed.pillar.v1.6.totalimbalanceqty", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.amexequities.depthfeed.pillar.v1.6.totalrefreshpkts", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.amexequities.depthfeed.pillar.v1.6.unitoftrade", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.unpaired_qty = ProtoField.new("Unpaired Qty", "nyse.amexequities.depthfeed.pillar.v1.6.unpairedqty", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.unpaired_side = ProtoField.new("Unpaired Side", "nyse.amexequities.depthfeed.pillar.v1.6.unpairedside", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.update_count = ProtoField.new("Update Count", "nyse.amexequities.depthfeed.pillar.v1.6.updatecount", ftypes.UINT8)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.amexequities.depthfeed.pillar.v1.6.uppercollar", ftypes.UINT32)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.volume = ProtoField.new("Volume", "nyse.amexequities.depthfeed.pillar.v1.6.volume", ftypes.UINT32)

-- Nyse AmexEquities Pillar DepthFeed 1.6 Application Messages
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.delta_message = ProtoField.new("Delta Message", "nyse.amexequities.depthfeed.pillar.v1.6.deltamessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.amexequities.depthfeed.pillar.v1.6.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.amexequities.depthfeed.pillar.v1.6.imbalancemessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.amexequities.depthfeed.pillar.v1.6.messageunavailablemessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.amexequities.depthfeed.pillar.v1.6.refreshheadermessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.amexequities.depthfeed.pillar.v1.6.refreshrequestmessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.amexequities.depthfeed.pillar.v1.6.requestresponsemessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.amexequities.depthfeed.pillar.v1.6.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.amexequities.depthfeed.pillar.v1.6.securitystatusmessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.amexequities.depthfeed.pillar.v1.6.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.amexequities.depthfeed.pillar.v1.6.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.amexequities.depthfeed.pillar.v1.6.symbolclearmessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.amexequities.depthfeed.pillar.v1.6.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.amexequities.depthfeed.pillar.v1.6.symbolindexmappingrequestmessage", ftypes.STRING)

-- Nyse AmexEquities DepthFeed Pillar 1.6 generated fields
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_index = ProtoField.new("Message Index", "nyse.amexequities.depthfeed.pillar.v1.6.messageindex", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.participant_index = ProtoField.new("Participant Index", "nyse.amexequities.depthfeed.pillar.v1.6.participantindex", ftypes.UINT16)
omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_point_index = ProtoField.new("Price Point Index", "nyse.amexequities.depthfeed.pillar.v1.6.pricepointindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse AmexEquities DepthFeed Pillar 1.6 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.participant = true
show.price_point = true
show.send_time = true
show.message_index = true
show.price_point_index = true
show.participant_index = true

-- Register Nyse AmexEquities DepthFeed Pillar 1.6 Show Options
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_participant = Pref.bool("Show Participant", show.participant, "Parse and add Participant to protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_price_point = Pref.bool("Show Price Point", show.price_point, "Parse and add Price Point to protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_price_point_index = Pref.bool("Show Price Point Index", show.price_point_index, "Show generated price point index in protocol tree")
omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_participant_index = Pref.bool("Show Participant Index", show.participant_index, "Show generated participant index in protocol tree")

-- Handle changed preferences
function omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_application_messages then
    show.application_messages = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_application_messages
  end
  if show.message ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_message then
    show.message = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_message
  end
  if show.message_header ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_message_header then
    show.message_header = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_packet then
    show.packet = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_packet_header then
    show.packet_header = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_packet_header
  end
  if show.participant ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_participant then
    show.participant = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_participant
  end
  if show.price_point ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_price_point then
    show.price_point = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_price_point
  end
  if show.send_time ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_send_time then
    show.send_time = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_send_time
  end
  if show.message_index ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_message_index then
    show.message_index = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_message_index
  end
  if show.price_point_index ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_price_point_index then
    show.price_point_index = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_price_point_index
  end
  if show.participant_index ~= omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_participant_index then
    show.participant_index = omi_nyse_amexequities_depthfeed_pillar_v1_6.prefs.show_participant_index
  end
end


-----------------------------------------------------------------------
-- Nyse AmexEquities DepthFeed Pillar 1.6 Fields
-----------------------------------------------------------------------

-- Auction Interest Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price = {}

-- Size: Auction Interest Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price.size = 4

-- Display: Auction Interest Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price.display = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Translate: Auction Interest Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Auction Interest Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price.translate(raw)
  local display = nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Auction Status
nyse_amexequities_depthfeed_pillar_v1_6.auction_status = {}

-- Size: Auction Status
nyse_amexequities_depthfeed_pillar_v1_6.auction_status.size = 1

-- Display: Auction Status
nyse_amexequities_depthfeed_pillar_v1_6.auction_status.display = function(value)
  if value == 0 then
    return "Auction Status: Will Run As Always For Open And Close (0)"
  end
  if value == 1 then
    return "Auction Status: Will Run Interest Exists Inside Or At The Collars Or Is Fully Paired Off (1)"
  end
  if value == 2 then
    return "Auction Status: Will Not Run Because There Is An Imbalance Through The Collars (2)"
  end
  if value == 3 then
    return "Auction Status: Will Not Run Will Transition To The Closing Auction Instead (3)"
  end

  return "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nyse_amexequities_depthfeed_pillar_v1_6.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Time
nyse_amexequities_depthfeed_pillar_v1_6.auction_time = {}

-- Size: Auction Time
nyse_amexequities_depthfeed_pillar_v1_6.auction_time.size = 2

-- Display: Auction Time
nyse_amexequities_depthfeed_pillar_v1_6.auction_time.display = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_amexequities_depthfeed_pillar_v1_6.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_amexequities_depthfeed_pillar_v1_6.auction_type = {}

-- Size: Auction Type
nyse_amexequities_depthfeed_pillar_v1_6.auction_type.size = 1

-- Display: Auction Type
nyse_amexequities_depthfeed_pillar_v1_6.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Early Opening Auction (O)"
  end
  if value == "M" then
    return "Auction Type: Core Opening Auction (M)"
  end
  if value == "H" then
    return "Auction Type: Reopening Auction Halt Resume (H)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "P" then
    return "Auction Type: Extreme Closing Imbalance (P)"
  end
  if value == "R" then
    return "Auction Type: Significant Closing Imbalance (R)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_amexequities_depthfeed_pillar_v1_6.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_amexequities_depthfeed_pillar_v1_6.channel_id = {}

-- Size: Channel Id
nyse_amexequities_depthfeed_pillar_v1_6.channel_id.size = 1

-- Display: Channel Id
nyse_amexequities_depthfeed_pillar_v1_6.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_amexequities_depthfeed_pillar_v1_6.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Translate: Continuous Book Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Continuous Book Clearing Price
nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price.translate(raw)
  local display = nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_amexequities_depthfeed_pillar_v1_6.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_amexequities_depthfeed_pillar_v1_6.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_amexequities_depthfeed_pillar_v1_6.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_amexequities_depthfeed_pillar_v1_6.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_amexequities_depthfeed_pillar_v1_6.delivery_flag = {}

-- Size: Delivery Flag
nyse_amexequities_depthfeed_pillar_v1_6.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_amexequities_depthfeed_pillar_v1_6.delivery_flag.display = function(value)
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
nyse_amexequities_depthfeed_pillar_v1_6.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num = {}

-- Size: End Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.size = 4

-- Display: End Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_amexequities_depthfeed_pillar_v1_6.exchange_code = {}

-- Size: Exchange Code
nyse_amexequities_depthfeed_pillar_v1_6.exchange_code.size = 1

-- Display: Exchange Code
nyse_amexequities_depthfeed_pillar_v1_6.exchange_code.display = function(value)
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
nyse_amexequities_depthfeed_pillar_v1_6.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Freeze Status
nyse_amexequities_depthfeed_pillar_v1_6.freeze_status = {}

-- Size: Freeze Status
nyse_amexequities_depthfeed_pillar_v1_6.freeze_status.size = 1

-- Display: Freeze Status
nyse_amexequities_depthfeed_pillar_v1_6.freeze_status.display = function(value)
  if value == 0 then
    return "Freeze Status: Imbalance Freeze Not In Effect (0)"
  end
  if value == 1 then
    return "Freeze Status: Imbalance Freeze Is In Effect (1)"
  end

  return "Freeze Status: Unknown("..value..")"
end

-- Dissect: Freeze Status
nyse_amexequities_depthfeed_pillar_v1_6.freeze_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.freeze_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.freeze_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_amexequities_depthfeed_pillar_v1_6.halt_condition = {}

-- Size: Halt Condition
nyse_amexequities_depthfeed_pillar_v1_6.halt_condition.size = 1

-- Display: Halt Condition
nyse_amexequities_depthfeed_pillar_v1_6.halt_condition.display = function(value)
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
nyse_amexequities_depthfeed_pillar_v1_6.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Id
nyse_amexequities_depthfeed_pillar_v1_6.id = {}

-- Size: Id
nyse_amexequities_depthfeed_pillar_v1_6.id.size = 4

-- Display: Id
nyse_amexequities_depthfeed_pillar_v1_6.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_amexequities_depthfeed_pillar_v1_6.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_amexequities_depthfeed_pillar_v1_6.imbalance_side = {}

-- Size: Imbalance Side
nyse_amexequities_depthfeed_pillar_v1_6.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_amexequities_depthfeed_pillar_v1_6.imbalance_side.display = function(value)
  if value == "B" then
    return "Imbalance Side: Buy Side (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell Side (S)"
  end
  if value == " " then
    return "Imbalance Side: No Imbalance (<whitespace>)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
nyse_amexequities_depthfeed_pillar_v1_6.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Translate: Indicative Match Price
nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Indicative Match Price
nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price.translate(raw)
  local display = nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.last_seq_num = {}

-- Size: Last Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_amexequities_depthfeed_pillar_v1_6.lot_size = {}

-- Size: Lot Size
nyse_amexequities_depthfeed_pillar_v1_6.lot_size.size = 2

-- Display: Lot Size
nyse_amexequities_depthfeed_pillar_v1_6.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_amexequities_depthfeed_pillar_v1_6.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_amexequities_depthfeed_pillar_v1_6.lower_collar = {}

-- Size: Lower Collar
nyse_amexequities_depthfeed_pillar_v1_6.lower_collar.size = 4

-- Display: Lower Collar
nyse_amexequities_depthfeed_pillar_v1_6.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_amexequities_depthfeed_pillar_v1_6.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_amexequities_depthfeed_pillar_v1_6.market_id = {}

-- Size: Market Id
nyse_amexequities_depthfeed_pillar_v1_6.market_id.size = 2

-- Display: Market Id
nyse_amexequities_depthfeed_pillar_v1_6.market_id.display = function(value)
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
  if value == 1 then
    return "Market Id: Nyse (1)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca (3)"
  end
  if value == 9 then
    return "Market Id: Nyse American (9)"
  end
  if value == 10 then
    return "Market Id: Nyse National (10)"
  end
  if value == 11 then
    return "Market Id: Nyse Texas (11)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_amexequities_depthfeed_pillar_v1_6.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_amexequities_depthfeed_pillar_v1_6.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_amexequities_depthfeed_pillar_v1_6.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_amexequities_depthfeed_pillar_v1_6.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_amexequities_depthfeed_pillar_v1_6.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Market State
nyse_amexequities_depthfeed_pillar_v1_6.market_state = {}

-- Size: Market State
nyse_amexequities_depthfeed_pillar_v1_6.market_state.size = 1

-- Display: Market State
nyse_amexequities_depthfeed_pillar_v1_6.market_state.display = function(value)
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
nyse_amexequities_depthfeed_pillar_v1_6.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_amexequities_depthfeed_pillar_v1_6.message_size = {}

-- Size: Message Size
nyse_amexequities_depthfeed_pillar_v1_6.message_size.size = 2

-- Display: Message Size
nyse_amexequities_depthfeed_pillar_v1_6.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_amexequities_depthfeed_pillar_v1_6.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_amexequities_depthfeed_pillar_v1_6.message_type = {}

-- Size: Message Type
nyse_amexequities_depthfeed_pillar_v1_6.message_type.size = 2

-- Display: Message Type
nyse_amexequities_depthfeed_pillar_v1_6.message_type.display = function(value)
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
  if value == 115 then
    return "Message Type: Delta Message (115)"
  end
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_amexequities_depthfeed_pillar_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_amexequities_depthfeed_pillar_v1_6.mpv = {}

-- Size: Mpv
nyse_amexequities_depthfeed_pillar_v1_6.mpv.size = 2

-- Display: Mpv
nyse_amexequities_depthfeed_pillar_v1_6.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_amexequities_depthfeed_pillar_v1_6.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_amexequities_depthfeed_pillar_v1_6.nanoseconds = {}

-- Size: Nanoseconds
nyse_amexequities_depthfeed_pillar_v1_6.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_amexequities_depthfeed_pillar_v1_6.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_amexequities_depthfeed_pillar_v1_6.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Num Extensions
nyse_amexequities_depthfeed_pillar_v1_6.num_extensions = {}

-- Size: Num Extensions
nyse_amexequities_depthfeed_pillar_v1_6.num_extensions.size = 1

-- Display: Num Extensions
nyse_amexequities_depthfeed_pillar_v1_6.num_extensions.display = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
nyse_amexequities_depthfeed_pillar_v1_6.num_extensions.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.num_extensions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.num_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_amexequities_depthfeed_pillar_v1_6.number_msgs = {}

-- Size: Number Msgs
nyse_amexequities_depthfeed_pillar_v1_6.number_msgs.size = 1

-- Display: Number Msgs
nyse_amexequities_depthfeed_pillar_v1_6.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_amexequities_depthfeed_pillar_v1_6.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Number Of Orders
nyse_amexequities_depthfeed_pillar_v1_6.number_of_orders = {}

-- Size: Number Of Orders
nyse_amexequities_depthfeed_pillar_v1_6.number_of_orders.size = 2

-- Display: Number Of Orders
nyse_amexequities_depthfeed_pillar_v1_6.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
nyse_amexequities_depthfeed_pillar_v1_6.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_amexequities_depthfeed_pillar_v1_6.paired_qty = {}

-- Size: Paired Qty
nyse_amexequities_depthfeed_pillar_v1_6.paired_qty.size = 4

-- Display: Paired Qty
nyse_amexequities_depthfeed_pillar_v1_6.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_amexequities_depthfeed_pillar_v1_6.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Participants
nyse_amexequities_depthfeed_pillar_v1_6.participants = {}

-- Size: Participants
nyse_amexequities_depthfeed_pillar_v1_6.participants.size = 1

-- Display: Participants
nyse_amexequities_depthfeed_pillar_v1_6.participants.display = function(value)
  return "Participants: "..value
end

-- Dissect: Participants
nyse_amexequities_depthfeed_pillar_v1_6.participants.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.participants.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.participants.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.participants, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_amexequities_depthfeed_pillar_v1_6.pkt_size = {}

-- Size: Pkt Size
nyse_amexequities_depthfeed_pillar_v1_6.pkt_size.size = 2

-- Display: Pkt Size
nyse_amexequities_depthfeed_pillar_v1_6.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_amexequities_depthfeed_pillar_v1_6.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price = {}

-- Size: Prev Close Price
nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Translate: Prev Close Price
nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Prev Close Price
nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price.translate(raw)
  local display = nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_amexequities_depthfeed_pillar_v1_6.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_amexequities_depthfeed_pillar_v1_6.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_amexequities_depthfeed_pillar_v1_6.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_amexequities_depthfeed_pillar_v1_6.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_amexequities_depthfeed_pillar_v1_6.price = {}

-- Size: Price
nyse_amexequities_depthfeed_pillar_v1_6.price.size = 4

-- Display: Price
nyse_amexequities_depthfeed_pillar_v1_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nyse_amexequities_depthfeed_pillar_v1_6.price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price
nyse_amexequities_depthfeed_pillar_v1_6.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_depthfeed_pillar_v1_6.price.translate(raw)
  local display = nyse_amexequities_depthfeed_pillar_v1_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_amexequities_depthfeed_pillar_v1_6.price_1 = {}

-- Size: Price 1
nyse_amexequities_depthfeed_pillar_v1_6.price_1.size = 4

-- Display: Price 1
nyse_amexequities_depthfeed_pillar_v1_6.price_1.display = function(value)
  return "Price 1: "..value
end

-- Translate: Price 1
nyse_amexequities_depthfeed_pillar_v1_6.price_1.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 1
nyse_amexequities_depthfeed_pillar_v1_6.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_depthfeed_pillar_v1_6.price_1.translate(raw)
  local display = nyse_amexequities_depthfeed_pillar_v1_6.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_amexequities_depthfeed_pillar_v1_6.price_2 = {}

-- Size: Price 2
nyse_amexequities_depthfeed_pillar_v1_6.price_2.size = 4

-- Display: Price 2
nyse_amexequities_depthfeed_pillar_v1_6.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nyse_amexequities_depthfeed_pillar_v1_6.price_2.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 2
nyse_amexequities_depthfeed_pillar_v1_6.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_depthfeed_pillar_v1_6.price_2.translate(raw)
  local display = nyse_amexequities_depthfeed_pillar_v1_6.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_amexequities_depthfeed_pillar_v1_6.price_resolution = {}

-- Size: Price Resolution
nyse_amexequities_depthfeed_pillar_v1_6.price_resolution.size = 1

-- Display: Price Resolution
nyse_amexequities_depthfeed_pillar_v1_6.price_resolution.display = function(value)
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
nyse_amexequities_depthfeed_pillar_v1_6.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_amexequities_depthfeed_pillar_v1_6.price_scale_code = {}

-- Size: Price Scale Code
nyse_amexequities_depthfeed_pillar_v1_6.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_amexequities_depthfeed_pillar_v1_6.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_amexequities_depthfeed_pillar_v1_6.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_amexequities_depthfeed_pillar_v1_6.product_id = {}

-- Size: Product Id
nyse_amexequities_depthfeed_pillar_v1_6.product_id.size = 1

-- Display: Product Id
nyse_amexequities_depthfeed_pillar_v1_6.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_amexequities_depthfeed_pillar_v1_6.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reference Price
nyse_amexequities_depthfeed_pillar_v1_6.reference_price = {}

-- Size: Reference Price
nyse_amexequities_depthfeed_pillar_v1_6.reference_price.size = 4

-- Display: Reference Price
nyse_amexequities_depthfeed_pillar_v1_6.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
nyse_amexequities_depthfeed_pillar_v1_6.reference_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Reference Price
nyse_amexequities_depthfeed_pillar_v1_6.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_depthfeed_pillar_v1_6.reference_price.translate(raw)
  local display = nyse_amexequities_depthfeed_pillar_v1_6.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.request_seq_num = {}

-- Size: Request Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_amexequities_depthfeed_pillar_v1_6.reserved_1 = {}

-- Size: Reserved 1
nyse_amexequities_depthfeed_pillar_v1_6.reserved_1.size = 1

-- Display: Reserved 1
nyse_amexequities_depthfeed_pillar_v1_6.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_amexequities_depthfeed_pillar_v1_6.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_amexequities_depthfeed_pillar_v1_6.reserved_2 = {}

-- Size: Reserved 2
nyse_amexequities_depthfeed_pillar_v1_6.reserved_2.size = 2

-- Display: Reserved 2
nyse_amexequities_depthfeed_pillar_v1_6.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_amexequities_depthfeed_pillar_v1_6.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_amexequities_depthfeed_pillar_v1_6.retransmit_method = {}

-- Size: Retransmit Method
nyse_amexequities_depthfeed_pillar_v1_6.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_amexequities_depthfeed_pillar_v1_6.retransmit_method.display = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_amexequities_depthfeed_pillar_v1_6.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_amexequities_depthfeed_pillar_v1_6.round_lot = {}

-- Size: Round Lot
nyse_amexequities_depthfeed_pillar_v1_6.round_lot.size = 1

-- Display: Round Lot
nyse_amexequities_depthfeed_pillar_v1_6.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_amexequities_depthfeed_pillar_v1_6.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_amexequities_depthfeed_pillar_v1_6.seconds = {}

-- Size: Seconds
nyse_amexequities_depthfeed_pillar_v1_6.seconds.size = 4

-- Display: Seconds
nyse_amexequities_depthfeed_pillar_v1_6.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_amexequities_depthfeed_pillar_v1_6.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_amexequities_depthfeed_pillar_v1_6.security_status = {}

-- Size: Security Status
nyse_amexequities_depthfeed_pillar_v1_6.security_status.size = 1

-- Display: Security Status
nyse_amexequities_depthfeed_pillar_v1_6.security_status.display = function(value)
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
nyse_amexequities_depthfeed_pillar_v1_6.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_amexequities_depthfeed_pillar_v1_6.security_type = {}

-- Size: Security Type
nyse_amexequities_depthfeed_pillar_v1_6.security_type.size = 1

-- Display: Security Type
nyse_amexequities_depthfeed_pillar_v1_6.security_type.display = function(value)
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
nyse_amexequities_depthfeed_pillar_v1_6.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.seq_num = {}

-- Size: Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.seq_num.size = 4

-- Display: Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session State
nyse_amexequities_depthfeed_pillar_v1_6.session_state = {}

-- Size: Session State
nyse_amexequities_depthfeed_pillar_v1_6.session_state.size = 1

-- Display: Session State
nyse_amexequities_depthfeed_pillar_v1_6.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_amexequities_depthfeed_pillar_v1_6.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.session_state, range, value, display)

  return offset + length, value
end

-- Side
nyse_amexequities_depthfeed_pillar_v1_6.side = {}

-- Size: Side
nyse_amexequities_depthfeed_pillar_v1_6.side.size = 1

-- Display: Side
nyse_amexequities_depthfeed_pillar_v1_6.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_amexequities_depthfeed_pillar_v1_6.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.side, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_amexequities_depthfeed_pillar_v1_6.source_id = {}

-- Size: Source Id
nyse_amexequities_depthfeed_pillar_v1_6.source_id.size = 10

-- Display: Source Id
nyse_amexequities_depthfeed_pillar_v1_6.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_amexequities_depthfeed_pillar_v1_6.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.source_id.size
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

  local display = nyse_amexequities_depthfeed_pillar_v1_6.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_amexequities_depthfeed_pillar_v1_6.source_time = {}

-- Size: Source Time
nyse_amexequities_depthfeed_pillar_v1_6.source_time.size = 4

-- Display: Source Time
nyse_amexequities_depthfeed_pillar_v1_6.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_amexequities_depthfeed_pillar_v1_6.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns = {}

-- Size: Source Time Ns
nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr Filing Price
nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price = {}

-- Size: Ssr Filing Price
nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price.size = 4

-- Display: Ssr Filing Price
nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price.display = function(value)
  return "Ssr Filing Price: "..value
end

-- Translate: Ssr Filing Price
nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Ssr Filing Price
nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price.translate(raw)
  local display = nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_amexequities_depthfeed_pillar_v1_6.ssr_state = {}

-- Size: Ssr State
nyse_amexequities_depthfeed_pillar_v1_6.ssr_state.size = 1

-- Display: Ssr State
nyse_amexequities_depthfeed_pillar_v1_6.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_amexequities_depthfeed_pillar_v1_6.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_exchange_id.display = function(value)
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
nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_amexequities_depthfeed_pillar_v1_6.status = {}

-- Size: Status
nyse_amexequities_depthfeed_pillar_v1_6.status.size = 1

-- Display: Status
nyse_amexequities_depthfeed_pillar_v1_6.status.display = function(value)
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
nyse_amexequities_depthfeed_pillar_v1_6.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_amexequities_depthfeed_pillar_v1_6.symbol = {}

-- Size: Symbol
nyse_amexequities_depthfeed_pillar_v1_6.symbol.size = 11

-- Display: Symbol
nyse_amexequities_depthfeed_pillar_v1_6.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_amexequities_depthfeed_pillar_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.symbol.size
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

  local display = nyse_amexequities_depthfeed_pillar_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index = {}

-- Size: Symbol Index
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.size = 4

-- Display: Symbol Index
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_amexequities_depthfeed_pillar_v1_6.system_id = {}

-- Size: System Id
nyse_amexequities_depthfeed_pillar_v1_6.system_id.size = 1

-- Display: System Id
nyse_amexequities_depthfeed_pillar_v1_6.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_amexequities_depthfeed_pillar_v1_6.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_amexequities_depthfeed_pillar_v1_6.time = {}

-- Size: Time
nyse_amexequities_depthfeed_pillar_v1_6.time.size = 4

-- Display: Time
nyse_amexequities_depthfeed_pillar_v1_6.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_amexequities_depthfeed_pillar_v1_6.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.time, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_amexequities_depthfeed_pillar_v1_6.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_amexequities_depthfeed_pillar_v1_6.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_amexequities_depthfeed_pillar_v1_6.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_amexequities_depthfeed_pillar_v1_6.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_amexequities_depthfeed_pillar_v1_6.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_amexequities_depthfeed_pillar_v1_6.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_amexequities_depthfeed_pillar_v1_6.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_amexequities_depthfeed_pillar_v1_6.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_amexequities_depthfeed_pillar_v1_6.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_amexequities_depthfeed_pillar_v1_6.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_amexequities_depthfeed_pillar_v1_6.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_amexequities_depthfeed_pillar_v1_6.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Unpaired Qty
nyse_amexequities_depthfeed_pillar_v1_6.unpaired_qty = {}

-- Size: Unpaired Qty
nyse_amexequities_depthfeed_pillar_v1_6.unpaired_qty.size = 4

-- Display: Unpaired Qty
nyse_amexequities_depthfeed_pillar_v1_6.unpaired_qty.display = function(value)
  return "Unpaired Qty: "..value
end

-- Dissect: Unpaired Qty
nyse_amexequities_depthfeed_pillar_v1_6.unpaired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.unpaired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.unpaired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.unpaired_qty, range, value, display)

  return offset + length, value
end

-- Unpaired Side
nyse_amexequities_depthfeed_pillar_v1_6.unpaired_side = {}

-- Size: Unpaired Side
nyse_amexequities_depthfeed_pillar_v1_6.unpaired_side.size = 1

-- Display: Unpaired Side
nyse_amexequities_depthfeed_pillar_v1_6.unpaired_side.display = function(value)
  if value == "B" then
    return "Unpaired Side: Buy Side (B)"
  end
  if value == "S" then
    return "Unpaired Side: Sell Side (S)"
  end
  if value == " " then
    return "Unpaired Side: Not Applicable (<whitespace>)"
  end

  return "Unpaired Side: Unknown("..value..")"
end

-- Dissect: Unpaired Side
nyse_amexequities_depthfeed_pillar_v1_6.unpaired_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.unpaired_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.unpaired_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.unpaired_side, range, value, display)

  return offset + length, value
end

-- Update Count
nyse_amexequities_depthfeed_pillar_v1_6.update_count = {}

-- Size: Update Count
nyse_amexequities_depthfeed_pillar_v1_6.update_count.size = 1

-- Display: Update Count
nyse_amexequities_depthfeed_pillar_v1_6.update_count.display = function(value)
  return "Update Count: "..value
end

-- Dissect: Update Count
nyse_amexequities_depthfeed_pillar_v1_6.update_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.update_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.update_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.update_count, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_amexequities_depthfeed_pillar_v1_6.upper_collar = {}

-- Size: Upper Collar
nyse_amexequities_depthfeed_pillar_v1_6.upper_collar.size = 4

-- Display: Upper Collar
nyse_amexequities_depthfeed_pillar_v1_6.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_amexequities_depthfeed_pillar_v1_6.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Volume
nyse_amexequities_depthfeed_pillar_v1_6.volume = {}

-- Size: Volume
nyse_amexequities_depthfeed_pillar_v1_6.volume.size = 4

-- Display: Volume
nyse_amexequities_depthfeed_pillar_v1_6.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_amexequities_depthfeed_pillar_v1_6.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_depthfeed_pillar_v1_6.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_depthfeed_pillar_v1_6.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse AmexEquities DepthFeed Pillar 1.6
-----------------------------------------------------------------------

-- Imbalance Message
nyse_amexequities_depthfeed_pillar_v1_6.imbalance_message = {}

-- Size: Imbalance Message
nyse_amexequities_depthfeed_pillar_v1_6.imbalance_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.source_time.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.reference_price.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.paired_qty.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.total_imbalance_qty.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.market_imbalance_qty.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.auction_time.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.auction_type.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.imbalance_side.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.upper_collar.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.lower_collar.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.auction_status.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.freeze_status.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.num_extensions.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.unpaired_qty.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.unpaired_side.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.reserved_1.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.market_id.size

-- Display: Imbalance Message
nyse_amexequities_depthfeed_pillar_v1_6.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_amexequities_depthfeed_pillar_v1_6.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_depthfeed_pillar_v1_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary
  index, reference_price = nyse_amexequities_depthfeed_pillar_v1_6.reference_price.dissect(buffer, index, packet, parent)

  -- Paired Qty: Binary
  index, paired_qty = nyse_amexequities_depthfeed_pillar_v1_6.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: Binary
  index, total_imbalance_qty = nyse_amexequities_depthfeed_pillar_v1_6.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: Binary
  index, market_imbalance_qty = nyse_amexequities_depthfeed_pillar_v1_6.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Auction Time: Binary
  index, auction_time = nyse_amexequities_depthfeed_pillar_v1_6.auction_time.dissect(buffer, index, packet, parent)

  -- Auction Type: ASCII
  index, auction_type = nyse_amexequities_depthfeed_pillar_v1_6.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: ASCII
  index, imbalance_side = nyse_amexequities_depthfeed_pillar_v1_6.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: Binary
  index, continuous_book_clearing_price = nyse_amexequities_depthfeed_pillar_v1_6.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: Binary
  index, auction_interest_clearing_price = nyse_amexequities_depthfeed_pillar_v1_6.auction_interest_clearing_price.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: Binary
  index, ssr_filing_price = nyse_amexequities_depthfeed_pillar_v1_6.ssr_filing_price.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: Binary
  index, indicative_match_price = nyse_amexequities_depthfeed_pillar_v1_6.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: Binary
  index, upper_collar = nyse_amexequities_depthfeed_pillar_v1_6.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: Binary
  index, lower_collar = nyse_amexequities_depthfeed_pillar_v1_6.lower_collar.dissect(buffer, index, packet, parent)

  -- Auction Status: Binary
  index, auction_status = nyse_amexequities_depthfeed_pillar_v1_6.auction_status.dissect(buffer, index, packet, parent)

  -- Freeze Status: Binary
  index, freeze_status = nyse_amexequities_depthfeed_pillar_v1_6.freeze_status.dissect(buffer, index, packet, parent)

  -- Num Extensions: Binary
  index, num_extensions = nyse_amexequities_depthfeed_pillar_v1_6.num_extensions.dissect(buffer, index, packet, parent)

  -- Unpaired Qty: Binary
  index, unpaired_qty = nyse_amexequities_depthfeed_pillar_v1_6.unpaired_qty.dissect(buffer, index, packet, parent)

  -- Unpaired Side: ASCII
  index, unpaired_side = nyse_amexequities_depthfeed_pillar_v1_6.unpaired_side.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_amexequities_depthfeed_pillar_v1_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_depthfeed_pillar_v1_6.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_amexequities_depthfeed_pillar_v1_6.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant
nyse_amexequities_depthfeed_pillar_v1_6.participant = {}

-- Size: Participant
nyse_amexequities_depthfeed_pillar_v1_6.participant.size =
  nyse_amexequities_depthfeed_pillar_v1_6.market_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.number_of_orders.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.volume.size

-- Display: Participant
nyse_amexequities_depthfeed_pillar_v1_6.participant.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant
nyse_amexequities_depthfeed_pillar_v1_6.participant.fields = function(buffer, offset, packet, parent, participant_index)
  local index = offset

  -- Implicit Participant Index
  if participant_index ~= nil and show.participant_index then
    local iteration = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.participant_index, participant_index)
    iteration:set_generated()
  end

  -- Market Id: Binary
  index, market_id = nyse_amexequities_depthfeed_pillar_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Binary
  index, number_of_orders = nyse_amexequities_depthfeed_pillar_v1_6.number_of_orders.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexequities_depthfeed_pillar_v1_6.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant
nyse_amexequities_depthfeed_pillar_v1_6.participant.dissect = function(buffer, offset, packet, parent, participant_index)
  if show.participant then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.participant, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.participant.fields(buffer, offset, packet, parent, participant_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.participant.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.participant.fields(buffer, offset, packet, parent, participant_index)
  end
end

-- Price Point
nyse_amexequities_depthfeed_pillar_v1_6.price_point = {}

-- Calculate size of: Price Point
nyse_amexequities_depthfeed_pillar_v1_6.price_point.size = function(buffer, offset)
  local index = 0

  index = index + nyse_amexequities_depthfeed_pillar_v1_6.price.size

  index = index + nyse_amexequities_depthfeed_pillar_v1_6.side.size

  index = index + nyse_amexequities_depthfeed_pillar_v1_6.participants.size

  local participants = buffer(offset + index - 1, 1):le_uint()

  if participants > 0 then
    -- Calculate field size from count
    local participant_count = buffer(offset + index - 1, 1):le_uint()
    index = index + participant_count * 8

  end

  return index
end

-- Display: Price Point
nyse_amexequities_depthfeed_pillar_v1_6.price_point.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Point
nyse_amexequities_depthfeed_pillar_v1_6.price_point.fields = function(buffer, offset, packet, parent, price_point_index)
  local index = offset

  -- Implicit Price Point Index
  if price_point_index ~= nil and show.price_point_index then
    local iteration = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_point_index, price_point_index)
    iteration:set_generated()
  end

  -- Price: Binary
  index, price = nyse_amexequities_depthfeed_pillar_v1_6.price.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_amexequities_depthfeed_pillar_v1_6.side.dissect(buffer, index, packet, parent)

  -- Participants: Binary
  index, participants = nyse_amexequities_depthfeed_pillar_v1_6.participants.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Participant
  local participant = nil

  local participant_exists = participants > 0

  if participant_exists then

    -- Repeating: Participant
    for participant_index = 1, participants do
      index, participant = nyse_amexequities_depthfeed_pillar_v1_6.participant.dissect(buffer, index, packet, parent, participant_index)
    end
  end

  return index
end

-- Dissect: Price Point
nyse_amexequities_depthfeed_pillar_v1_6.price_point.dissect = function(buffer, offset, packet, parent, price_point_index)
  if show.price_point then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.price_point, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.price_point.fields(buffer, offset, packet, parent, price_point_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.price_point.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.price_point.fields(buffer, offset, packet, parent, price_point_index)
  end
end

-- Delta Message
nyse_amexequities_depthfeed_pillar_v1_6.delta_message = {}

-- Calculate size of: Delta Message
nyse_amexequities_depthfeed_pillar_v1_6.delta_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_amexequities_depthfeed_pillar_v1_6.source_time.size

  index = index + nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.size

  index = index + nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.size

  index = index + nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.size

  index = index + nyse_amexequities_depthfeed_pillar_v1_6.update_count.size

  local update_count = buffer(offset + index - 1, 1):le_uint()

  if update_count > 0 then
    -- Calculate field size from count
    local price_point_count = buffer(offset + index - 1, 1):le_uint()
    for i = 1, price_point_count do
      index = index + nyse_amexequities_depthfeed_pillar_v1_6.price_point.size(buffer, offset + index)
    end
  end

  return index
end

-- Display: Delta Message
nyse_amexequities_depthfeed_pillar_v1_6.delta_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Message
nyse_amexequities_depthfeed_pillar_v1_6.delta_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_depthfeed_pillar_v1_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Update Count: Binary
  index, update_count = nyse_amexequities_depthfeed_pillar_v1_6.update_count.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Price Point
  local price_point = nil

  local price_point_exists = update_count > 0

  if price_point_exists then

    -- Repeating: Price Point
    for price_point_index = 1, update_count do
      index, price_point = nyse_amexequities_depthfeed_pillar_v1_6.price_point.dissect(buffer, index, packet, parent, price_point_index)
    end
  end

  return index
end

-- Dissect: Delta Message
nyse_amexequities_depthfeed_pillar_v1_6.delta_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.delta_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.delta_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.delta_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.delta_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_amexequities_depthfeed_pillar_v1_6.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_amexequities_depthfeed_pillar_v1_6.heartbeat_response_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.source_id.size

-- Display: Heartbeat Response Message
nyse_amexequities_depthfeed_pillar_v1_6.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_amexequities_depthfeed_pillar_v1_6.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_depthfeed_pillar_v1_6.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_amexequities_depthfeed_pillar_v1_6.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_amexequities_depthfeed_pillar_v1_6.request_response_message = {}

-- Size: Request Response Message
nyse_amexequities_depthfeed_pillar_v1_6.request_response_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.request_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.source_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.product_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.channel_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.status.size

-- Display: Request Response Message
nyse_amexequities_depthfeed_pillar_v1_6.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_amexequities_depthfeed_pillar_v1_6.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_depthfeed_pillar_v1_6.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_depthfeed_pillar_v1_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_depthfeed_pillar_v1_6.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_amexequities_depthfeed_pillar_v1_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_amexequities_depthfeed_pillar_v1_6.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.request_response_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_header_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.current_refresh_pkt.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.total_refresh_pkts.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.last_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_amexequities_depthfeed_pillar_v1_6.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_amexequities_depthfeed_pillar_v1_6.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_amexequities_depthfeed_pillar_v1_6.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_amexequities_depthfeed_pillar_v1_6.message_unavailable_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.product_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.channel_id.size

-- Display: Message Unavailable Message
nyse_amexequities_depthfeed_pillar_v1_6.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_amexequities_depthfeed_pillar_v1_6.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_depthfeed_pillar_v1_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_depthfeed_pillar_v1_6.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_amexequities_depthfeed_pillar_v1_6.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_request_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.source_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.product_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.channel_id.size

-- Display: Refresh Request Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_depthfeed_pillar_v1_6.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_depthfeed_pillar_v1_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_depthfeed_pillar_v1_6.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_amexequities_depthfeed_pillar_v1_6.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_request_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.source_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.product_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.channel_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_depthfeed_pillar_v1_6.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_depthfeed_pillar_v1_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_depthfeed_pillar_v1_6.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_amexequities_depthfeed_pillar_v1_6.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_amexequities_depthfeed_pillar_v1_6.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_amexequities_depthfeed_pillar_v1_6.retransmission_request_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.source_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.product_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.channel_id.size

-- Display: Retransmission Request Message
nyse_amexequities_depthfeed_pillar_v1_6.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_amexequities_depthfeed_pillar_v1_6.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_depthfeed_pillar_v1_6.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_depthfeed_pillar_v1_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_depthfeed_pillar_v1_6.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_amexequities_depthfeed_pillar_v1_6.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_amexequities_depthfeed_pillar_v1_6.security_status_message = {}

-- Size: Security Status Message
nyse_amexequities_depthfeed_pillar_v1_6.security_status_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.source_time.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.security_status.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.halt_condition.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.market_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.reserved_2.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.price_1.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.price_2.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_exchange_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_volume.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.time.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.ssr_state.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.market_state.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.session_state.size

-- Display: Security Status Message
nyse_amexequities_depthfeed_pillar_v1_6.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_amexequities_depthfeed_pillar_v1_6.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_depthfeed_pillar_v1_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_amexequities_depthfeed_pillar_v1_6.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_amexequities_depthfeed_pillar_v1_6.halt_condition.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_depthfeed_pillar_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_amexequities_depthfeed_pillar_v1_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_amexequities_depthfeed_pillar_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_amexequities_depthfeed_pillar_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_amexequities_depthfeed_pillar_v1_6.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_amexequities_depthfeed_pillar_v1_6.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_amexequities_depthfeed_pillar_v1_6.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_amexequities_depthfeed_pillar_v1_6.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_amexequities_depthfeed_pillar_v1_6.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_amexequities_depthfeed_pillar_v1_6.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.security_status_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_clear_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.source_time.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.next_source_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.market_id.size

-- Display: Symbol Clear Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_depthfeed_pillar_v1_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.next_source_seq_num.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_depthfeed_pillar_v1_6.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.symbol.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.reserved_1.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.market_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.system_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.exchange_code.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.price_scale_code.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.security_type.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.lot_size.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.prev_close_volume.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.price_resolution.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.round_lot.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.mpv.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.unit_of_trade.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_amexequities_depthfeed_pillar_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_amexequities_depthfeed_pillar_v1_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_depthfeed_pillar_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_amexequities_depthfeed_pillar_v1_6.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_amexequities_depthfeed_pillar_v1_6.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_amexequities_depthfeed_pillar_v1_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_amexequities_depthfeed_pillar_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_amexequities_depthfeed_pillar_v1_6.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_amexequities_depthfeed_pillar_v1_6.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_amexequities_depthfeed_pillar_v1_6.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_amexequities_depthfeed_pillar_v1_6.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_amexequities_depthfeed_pillar_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_amexequities_depthfeed_pillar_v1_6.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: Binary
  index, unit_of_trade = nyse_amexequities_depthfeed_pillar_v1_6.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_amexequities_depthfeed_pillar_v1_6.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_amexequities_depthfeed_pillar_v1_6.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_amexequities_depthfeed_pillar_v1_6.source_time_reference_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.source_time.size

-- Display: Source Time Reference Message
nyse_amexequities_depthfeed_pillar_v1_6.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_amexequities_depthfeed_pillar_v1_6.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_amexequities_depthfeed_pillar_v1_6.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_depthfeed_pillar_v1_6.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_amexequities_depthfeed_pillar_v1_6.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_amexequities_depthfeed_pillar_v1_6.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_amexequities_depthfeed_pillar_v1_6.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_amexequities_depthfeed_pillar_v1_6.sequence_number_reset_message.size =
  nyse_amexequities_depthfeed_pillar_v1_6.source_time.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.product_id.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.channel_id.size

-- Display: Sequence Number Reset Message
nyse_amexequities_depthfeed_pillar_v1_6.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_amexequities_depthfeed_pillar_v1_6.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_depthfeed_pillar_v1_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_depthfeed_pillar_v1_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_depthfeed_pillar_v1_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_depthfeed_pillar_v1_6.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_amexequities_depthfeed_pillar_v1_6.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_amexequities_depthfeed_pillar_v1_6.payload = {}

-- Dissect: Payload
nyse_amexequities_depthfeed_pillar_v1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_amexequities_depthfeed_pillar_v1_6.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_amexequities_depthfeed_pillar_v1_6.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_amexequities_depthfeed_pillar_v1_6.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_amexequities_depthfeed_pillar_v1_6.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_amexequities_depthfeed_pillar_v1_6.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_amexequities_depthfeed_pillar_v1_6.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_amexequities_depthfeed_pillar_v1_6.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_amexequities_depthfeed_pillar_v1_6.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_amexequities_depthfeed_pillar_v1_6.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_amexequities_depthfeed_pillar_v1_6.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_amexequities_depthfeed_pillar_v1_6.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delta Message
  if message_type == 115 then
    return nyse_amexequities_depthfeed_pillar_v1_6.delta_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_amexequities_depthfeed_pillar_v1_6.imbalance_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_amexequities_depthfeed_pillar_v1_6.message_header = {}

-- Size: Message Header
nyse_amexequities_depthfeed_pillar_v1_6.message_header.size =
  nyse_amexequities_depthfeed_pillar_v1_6.message_size.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.message_type.size

-- Display: Message Header
nyse_amexequities_depthfeed_pillar_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_amexequities_depthfeed_pillar_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_amexequities_depthfeed_pillar_v1_6.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, message_type = nyse_amexequities_depthfeed_pillar_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_amexequities_depthfeed_pillar_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_header, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_amexequities_depthfeed_pillar_v1_6.message = {}

-- Display: Message
nyse_amexequities_depthfeed_pillar_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_amexequities_depthfeed_pillar_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_amexequities_depthfeed_pillar_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 14 branches
  index = nyse_amexequities_depthfeed_pillar_v1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_amexequities_depthfeed_pillar_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.message, buffer(offset, 0))
    local current = nyse_amexequities_depthfeed_pillar_v1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_amexequities_depthfeed_pillar_v1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_amexequities_depthfeed_pillar_v1_6.send_time = {}

-- Size: Send Time
nyse_amexequities_depthfeed_pillar_v1_6.send_time.size =
  nyse_amexequities_depthfeed_pillar_v1_6.seconds.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.nanoseconds.size

-- Display: Send Time
nyse_amexequities_depthfeed_pillar_v1_6.send_time.display = function(packet, parent, value)
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
nyse_amexequities_depthfeed_pillar_v1_6.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_amexequities_depthfeed_pillar_v1_6.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_amexequities_depthfeed_pillar_v1_6.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_amexequities_depthfeed_pillar_v1_6.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.send_time, buffer(offset, 0))
    local index, value = nyse_amexequities_depthfeed_pillar_v1_6.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_amexequities_depthfeed_pillar_v1_6.packet_header = {}

-- Size: Packet Header
nyse_amexequities_depthfeed_pillar_v1_6.packet_header.size =
  nyse_amexequities_depthfeed_pillar_v1_6.pkt_size.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.delivery_flag.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.number_msgs.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.seq_num.size + 
  nyse_amexequities_depthfeed_pillar_v1_6.send_time.size

-- Display: Packet Header
nyse_amexequities_depthfeed_pillar_v1_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_amexequities_depthfeed_pillar_v1_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_amexequities_depthfeed_pillar_v1_6.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_amexequities_depthfeed_pillar_v1_6.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_amexequities_depthfeed_pillar_v1_6.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_amexequities_depthfeed_pillar_v1_6.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_amexequities_depthfeed_pillar_v1_6.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_amexequities_depthfeed_pillar_v1_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6.fields.packet_header, buffer(offset, 0))
    local index = nyse_amexequities_depthfeed_pillar_v1_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_depthfeed_pillar_v1_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_depthfeed_pillar_v1_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_amexequities_depthfeed_pillar_v1_6.packet = {}

-- Verify size of Udp packet
nyse_amexequities_depthfeed_pillar_v1_6.packet.requiredsize = function(buffer)

  return true
end

-- Dissect Packet
nyse_amexequities_depthfeed_pillar_v1_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_amexequities_depthfeed_pillar_v1_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_amexequities_depthfeed_pillar_v1_6.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_amexequities_depthfeed_pillar_v1_6.init()
end

-- Dissector for Nyse AmexEquities DepthFeed Pillar 1.6
function omi_nyse_amexequities_depthfeed_pillar_v1_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_amexequities_depthfeed_pillar_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_amexequities_depthfeed_pillar_v1_6, buffer(), omi_nyse_amexequities_depthfeed_pillar_v1_6.description, "("..buffer:len().." Bytes)")
  return nyse_amexequities_depthfeed_pillar_v1_6.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_amexequities_depthfeed_pillar_v1_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse AmexEquities DepthFeed Pillar 1.6 (Udp)
local function omi_nyse_amexequities_depthfeed_pillar_v1_6_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_amexequities_depthfeed_pillar_v1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_amexequities_depthfeed_pillar_v1_6
  omi_nyse_amexequities_depthfeed_pillar_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse AmexEquities DepthFeed Pillar 1.6
omi_nyse_amexequities_depthfeed_pillar_v1_6:register_heuristic("udp", omi_nyse_amexequities_depthfeed_pillar_v1_6_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.6
--   Date: Thursday, October 23, 2025
--   Specification: NYSE_Pillar_Depth_Client_Specification.pdf
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
