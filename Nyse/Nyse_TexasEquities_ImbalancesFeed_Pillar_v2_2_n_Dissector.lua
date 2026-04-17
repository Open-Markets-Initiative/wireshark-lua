-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse TexasEquities ImbalancesFeed Pillar 2.2.n Protocol
local omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n = Proto("Nyse.TexasEquities.ImbalancesFeed.Pillar.v2.2.n.Lua", "Nyse TexasEquities ImbalancesFeed Pillar 2.2.n")

-- Protocol table
local nyse_texasequities_imbalancesfeed_pillar_v2_2_n = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse TexasEquities ImbalancesFeed Pillar 2.2.n Fields
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.auctioninterestclearingprice", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.auction_status = ProtoField.new("Auction Status", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.auctionstatus", ftypes.UINT8)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.auction_time = ProtoField.new("Auction Time", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.auctiontime", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.auction_type = ProtoField.new("Auction Type", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.auctiontype", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.beginseqnum", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.channel_id = ProtoField.new("Channel Id", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.channelid", ftypes.UINT8)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.continuousbookclearingprice", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.currentrefreshpkt", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.deliveryflag", ftypes.UINT8)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.endseqnum", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.exchangecode", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.freeze_status = ProtoField.new("Freeze Status", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.freezestatus", ftypes.UINT8)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.haltcondition", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.id = ProtoField.new("Id", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.id", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.imbalanceside", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.indicativematchprice", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.lastseqnum", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.lot_size = ProtoField.new("Lot Size", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.lotsize", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.lowercollar", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.market_id = ProtoField.new("Market Id", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.marketid", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.marketimbalanceqty", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.market_state = ProtoField.new("Market State", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.marketstate", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message = ProtoField.new("Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.message", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_header = ProtoField.new("Message Header", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.messageheader", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_size = ProtoField.new("Message Size", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.messagesize", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_type = ProtoField.new("Message Type", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.messagetype", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.mpv = ProtoField.new("Mpv", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.mpv", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.nanoseconds", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.nextsourceseqnum", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.num_extensions = ProtoField.new("Num Extensions", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.numextensions", ftypes.UINT8)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.numbermsgs", ftypes.UINT8)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.packet = ProtoField.new("Packet", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.packet", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.packet_header = ProtoField.new("Packet Header", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.packetheader", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.pairedqty", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.pktsize", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.prevcloseprice", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.prevclosevolume", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.price_1 = ProtoField.new("Price 1", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.price1", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.price_2 = ProtoField.new("Price 2", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.price2", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.priceresolution", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.pricescalecode", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.product_id = ProtoField.new("Product Id", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.productid", ftypes.UINT8)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.reference_price = ProtoField.new("Reference Price", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.referenceprice", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.requestseqnum", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.reserved1", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.reserved2", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.reserved4", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.retransmitmethod", ftypes.UINT8)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.round_lot = ProtoField.new("Round Lot", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.roundlot", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.seconds = ProtoField.new("Seconds", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.seconds", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.security_status = ProtoField.new("Security Status", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.securitystatus", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.security_type = ProtoField.new("Security Type", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.securitytype", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.send_time = ProtoField.new("Send Time", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.sendtime", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.seq_num = ProtoField.new("Seq Num", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.seqnum", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.session_state = ProtoField.new("Session State", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.sessionstate", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.source_id = ProtoField.new("Source Id", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.sourceid", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.source_time = ProtoField.new("Source Time", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.sourcetime", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.sourcetimens", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.ssrfilingprice", ftypes.DOUBLE)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.ssr_state = ProtoField.new("Ssr State", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.ssrstate", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.status = ProtoField.new("Status", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.status", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol = ProtoField.new("Symbol", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.symbol", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.symbolindex", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.symbolseqnum", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.system_id = ProtoField.new("System Id", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.systemid", ftypes.UINT8)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.time = ProtoField.new("Time", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.time", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.totalimbalanceqty", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.totalrefreshpkts", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.unitoftrade", ftypes.UINT16)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.unpaired_qty = ProtoField.new("Unpaired Qty", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.unpairedqty", ftypes.UINT32)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.unpaired_side = ProtoField.new("Unpaired Side", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.unpairedside", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.uppercollar", ftypes.UINT32)

-- Nyse TexasEquities Pillar ImbalancesFeed 2.2.n Application Messages
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.imbalancemessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.messageunavailablemessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.refreshheadermessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.refreshrequestmessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.requestresponsemessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.securitystatusmessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.symbolclearmessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.symbolindexmappingrequestmessage", ftypes.STRING)

-- Nyse TexasEquities ImbalancesFeed Pillar 2.2.n generated fields
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_index = ProtoField.new("Message Index", "nyse.texasequities.imbalancesfeed.pillar.v2.2.n.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse TexasEquities ImbalancesFeed Pillar 2.2.n Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.send_time = true
show.message_index = true

-- Register Nyse TexasEquities ImbalancesFeed Pillar 2.2.n Show Options
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_application_messages then
    show.application_messages = omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_application_messages
  end
  if show.message ~= omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_message then
    show.message = omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_message
  end
  if show.message_header ~= omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_message_header then
    show.message_header = omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_packet then
    show.packet = omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_packet_header then
    show.packet_header = omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_packet_header
  end
  if show.send_time ~= omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_send_time then
    show.send_time = omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_send_time
  end
  if show.message_index ~= omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_message_index then
    show.message_index = omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Nyse TexasEquities ImbalancesFeed Pillar 2.2.n Fields
-----------------------------------------------------------------------

-- Auction Interest Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price = {}

-- Size: Auction Interest Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price.size = 4

-- Display: Auction Interest Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price.display = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Translate: Auction Interest Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Auction Interest Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Auction Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_status = {}

-- Size: Auction Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_status.size = 1

-- Display: Auction Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_status.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_time = {}

-- Size: Auction Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_time.size = 2

-- Display: Auction Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_time.display = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_type = {}

-- Size: Auction Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_type.size = 1

-- Display: Auction Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_type.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id = {}

-- Size: Channel Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.size = 1

-- Display: Channel Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Translate: Continuous Book Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Continuous Book Clearing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.delivery_flag = {}

-- Size: Delivery Flag
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.delivery_flag.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num = {}

-- Size: End Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.size = 4

-- Display: End Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.exchange_code = {}

-- Size: Exchange Code
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.exchange_code.size = 1

-- Display: Exchange Code
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.exchange_code.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Freeze Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.freeze_status = {}

-- Size: Freeze Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.freeze_status.size = 1

-- Display: Freeze Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.freeze_status.display = function(value)
  if value == 0 then
    return "Freeze Status: Imbalance Freeze Not In Effect (0)"
  end
  if value == 1 then
    return "Freeze Status: Imbalance Freeze Is In Effect (1)"
  end

  return "Freeze Status: Unknown("..value..")"
end

-- Dissect: Freeze Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.freeze_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.freeze_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.freeze_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.halt_condition = {}

-- Size: Halt Condition
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.halt_condition.size = 1

-- Display: Halt Condition
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.halt_condition.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.id = {}

-- Size: Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.id.size = 4

-- Display: Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_side = {}

-- Size: Imbalance Side
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_side.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Translate: Indicative Match Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Indicative Match Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_seq_num = {}

-- Size: Last Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lot_size = {}

-- Size: Lot Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lot_size.size = 2

-- Display: Lot Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lower_collar = {}

-- Size: Lower Collar
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lower_collar.size = 4

-- Display: Lower Collar
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_id = {}

-- Size: Market Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_id.size = 2

-- Display: Market Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_id.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Market State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_state = {}

-- Size: Market State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_state.size = 1

-- Display: Market State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_state.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_size = {}

-- Size: Message Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_size.size = 2

-- Display: Message Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_type = {}

-- Size: Message Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_type.size = 2

-- Display: Message Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_type.display = function(value)
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
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.mpv = {}

-- Size: Mpv
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.mpv.size = 2

-- Display: Mpv
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.nanoseconds = {}

-- Size: Nanoseconds
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Num Extensions
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.num_extensions = {}

-- Size: Num Extensions
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.num_extensions.size = 1

-- Display: Num Extensions
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.num_extensions.display = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.num_extensions.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.num_extensions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.num_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.number_msgs = {}

-- Size: Number Msgs
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.number_msgs.size = 1

-- Display: Number Msgs
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.paired_qty = {}

-- Size: Paired Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.paired_qty.size = 4

-- Display: Paired Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.pkt_size = {}

-- Size: Pkt Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.pkt_size.size = 2

-- Display: Pkt Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price = {}

-- Size: Prev Close Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Translate: Prev Close Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Prev Close Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1 = {}

-- Size: Price 1
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1.size = 4

-- Display: Price 1
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1.display = function(value)
  return "Price 1: "..value
end

-- Translate: Price 1
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 1
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2 = {}

-- Size: Price 2
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2.size = 4

-- Display: Price 2
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 2
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution = {}

-- Size: Price Resolution
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution.size = 1

-- Display: Price Resolution
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution.display = function(value)
  return "Price Resolution: "..value
end

-- Translate: Price Resolution
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price Resolution
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code = {}

-- Size: Price Scale Code
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Translate: Price Scale Code
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price Scale Code
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id = {}

-- Size: Product Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.size = 1

-- Display: Product Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reference Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price = {}

-- Size: Reference Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price.size = 4

-- Display: Reference Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Reference Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_seq_num = {}

-- Size: Request Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1 = {}

-- Size: Reserved 1
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1.size = 1

-- Display: Reserved 1
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_2 = {}

-- Size: Reserved 2
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_2.size = 2

-- Display: Reserved 2
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_4 = {}

-- Size: Reserved 4
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_4.size = 4

-- Display: Reserved 4
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmit_method = {}

-- Size: Retransmit Method
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmit_method.display = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.round_lot = {}

-- Size: Round Lot
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.round_lot.size = 1

-- Display: Round Lot
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seconds = {}

-- Size: Seconds
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seconds.size = 4

-- Display: Seconds
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status = {}

-- Size: Security Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status.size = 1

-- Display: Security Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_type = {}

-- Size: Security Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_type.size = 1

-- Display: Security Type
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_type.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seq_num = {}

-- Size: Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seq_num.size = 4

-- Display: Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.session_state = {}

-- Size: Session State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.session_state.size = 1

-- Display: Session State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.session_state, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id = {}

-- Size: Source Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.size = 10

-- Display: Source Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.size
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

  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time = {}

-- Size: Source Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.size = 4

-- Display: Source Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns = {}

-- Size: Source Time Ns
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr Filing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price = {}

-- Size: Ssr Filing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price.size = 4

-- Display: Ssr Filing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price.display = function(value)
  return "Ssr Filing Price: "..value
end

-- Translate: Ssr Filing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Ssr Filing Price
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price.translate(raw)
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_state = {}

-- Size: Ssr State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_state.size = 1

-- Display: Ssr State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_exchange_id.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.status = {}

-- Size: Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.status.size = 1

-- Display: Status
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.status.display = function(value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol = {}

-- Size: Symbol
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol.size = 11

-- Display: Symbol
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol.size
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

  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index = {}

-- Size: Symbol Index
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.size = 4

-- Display: Symbol Index
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.system_id = {}

-- Size: System Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.system_id.size = 1

-- Display: System Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.time = {}

-- Size: Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.time.size = 4

-- Display: Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.time, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Unpaired Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_qty = {}

-- Size: Unpaired Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_qty.size = 4

-- Display: Unpaired Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_qty.display = function(value)
  return "Unpaired Qty: "..value
end

-- Dissect: Unpaired Qty
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.unpaired_qty, range, value, display)

  return offset + length, value
end

-- Unpaired Side
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_side = {}

-- Size: Unpaired Side
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_side.size = 1

-- Display: Unpaired Side
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_side.display = function(value)
  if value == "B" then
    return "Unpaired Side: Buy Side (B)"
  end
  if value == "S" then
    return "Unpaired Side: Sell Side (S)"
  end
  if value == "" then
    return "Unpaired Side: Not Applicable (<whitespace>)"
  end

  return "Unpaired Side: Unknown("..value..")"
end

-- Dissect: Unpaired Side
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.unpaired_side, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.upper_collar = {}

-- Size: Upper Collar
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.upper_collar.size = 4

-- Display: Upper Collar
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.upper_collar, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse TexasEquities ImbalancesFeed Pillar 2.2.n
-----------------------------------------------------------------------

-- Imbalance Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_message = {}

-- Size: Imbalance Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.paired_qty.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_imbalance_qty.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_imbalance_qty.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_time.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_type.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_side.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.upper_collar.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lower_collar.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_status.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.freeze_status.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.num_extensions.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_qty.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_side.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1.size

-- Display: Imbalance Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary
  index, reference_price = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reference_price.dissect(buffer, index, packet, parent)

  -- Paired Qty: Binary
  index, paired_qty = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: Binary
  index, total_imbalance_qty = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: Binary
  index, market_imbalance_qty = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Auction Time: Binary
  index, auction_time = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_time.dissect(buffer, index, packet, parent)

  -- Auction Type: ASCII
  index, auction_type = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: ASCII
  index, imbalance_side = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: Binary
  index, continuous_book_clearing_price = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: Binary
  index, auction_interest_clearing_price = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_interest_clearing_price.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: Binary
  index, ssr_filing_price = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_filing_price.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: Binary
  index, indicative_match_price = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: Binary
  index, upper_collar = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: Binary
  index, lower_collar = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lower_collar.dissect(buffer, index, packet, parent)

  -- Auction Status: Binary
  index, auction_status = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.auction_status.dissect(buffer, index, packet, parent)

  -- Freeze Status: Binary
  index, freeze_status = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.freeze_status.dissect(buffer, index, packet, parent)

  -- Num Extensions: Binary
  index, num_extensions = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.num_extensions.dissect(buffer, index, packet, parent)

  -- Unpaired Qty: Binary
  index, unpaired_qty = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_qty.dissect(buffer, index, packet, parent)

  -- Unpaired Side: ASCII
  index, unpaired_side = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unpaired_side.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.heartbeat_response_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.size

-- Display: Heartbeat Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_response_message = {}

-- Size: Request Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_response_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.status.size

-- Display: Request Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.request_response_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_header_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.current_refresh_pkt.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_refresh_pkts.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_unavailable_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.size

-- Display: Message Unavailable Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_request_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.size

-- Display: Refresh Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_request_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmission_request_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.size

-- Display: Retransmission Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status_message = {}

-- Size: Security Status Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.halt_condition.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_4.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_exchange_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_volume.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.time.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_state.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_state.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.session_state.size

-- Display: Security Status Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.security_status_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_clear_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.system_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.exchange_code.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_type.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lot_size.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_volume.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.round_lot.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.mpv.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unit_of_trade.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: Binary
  index, unit_of_trade = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_reference_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.size

-- Display: Source Time Reference Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.sequence_number_reset_message.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.size

-- Display: Sequence Number Reset Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.payload = {}

-- Dissect: Payload
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.imbalance_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_header = {}

-- Size: Message Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_header.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_size.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_type.size

-- Display: Message Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_header, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message = {}

-- Display: Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.message, buffer(offset, 0))
    local current = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time = {}

-- Size: Send Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seconds.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.nanoseconds.size

-- Display: Send Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time.display = function(packet, parent, value)
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
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.send_time, buffer(offset, 0))
    local index, value = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet_header = {}

-- Size: Packet Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet_header.size =
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.pkt_size.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.delivery_flag.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.number_msgs.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seq_num.size + 
  nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time.size

-- Display: Packet Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.fields.packet_header, buffer(offset, 0))
    local index = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet = {}

-- Dissect Packet
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_texasequities_imbalancesfeed_pillar_v2_2_n.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.init()
end

-- Dissector for Nyse TexasEquities ImbalancesFeed Pillar 2.2.n
function omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n, buffer(), omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.description, "("..buffer:len().." Bytes)")
  return nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse TexasEquities ImbalancesFeed Pillar 2.2.n
local function omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_texasequities_imbalancesfeed_pillar_v2_2_n.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n
  omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse TexasEquities ImbalancesFeed Pillar 2.2.n
omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n:register_heuristic("udp", omi_nyse_texasequities_imbalancesfeed_pillar_v2_2_n_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.2.n
--   Date: Thursday, October 23, 2025
--   Specification: NYSE_Pillar_Order_Imbalances_Client_Specification.pdf
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
