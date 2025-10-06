-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities Bqt Xdp 1.7.a Protocol
local omi_nyse_equities_bqt_xdp_v1_7_a = Proto("Nyse.Equities.Bqt.Xdp.v1.7.a.Lua", "Nyse Equities Bqt Xdp 1.7.a")

-- Protocol table
local nyse_equities_bqt_xdp_v1_7_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities Bqt Xdp 1.7.a Fields
omi_nyse_equities_bqt_xdp_v1_7_a.fields.ask_price = ProtoField.new("Ask Price", "nyse.equities.bqt.xdp.v1.7.a.askprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.ask_quote_condition = ProtoField.new("Ask Quote Condition", "nyse.equities.bqt.xdp.v1.7.a.askquotecondition", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.equities.bqt.xdp.v1.7.a.askvolume", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.equities.bqt.xdp.v1.7.a.beginseqnum", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.bid_price = ProtoField.new("Bid Price", "nyse.equities.bqt.xdp.v1.7.a.bidprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.bid_quote_condition = ProtoField.new("Bid Quote Condition", "nyse.equities.bqt.xdp.v1.7.a.bidquotecondition", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.equities.bqt.xdp.v1.7.a.bidvolume", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.bqt_message = ProtoField.new("Bqt Message", "nyse.equities.bqt.xdp.v1.7.a.bqtmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.equities.bqt.xdp.v1.7.a.channelid", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.close = ProtoField.new("Close", "nyse.equities.bqt.xdp.v1.7.a.close", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.complete = ProtoField.new("Complete", "nyse.equities.bqt.xdp.v1.7.a.complete", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_security_status_message = ProtoField.new("Consolidated Security Status Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedsecuritystatusmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_single_sided_quote_message = ProtoField.new("Consolidated Single Sided Quote Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedsinglesidedquotemessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_stock_summary_message = ProtoField.new("Consolidated Stock Summary Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedstocksummarymessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_symbol_clear_message = ProtoField.new("Consolidated Symbol Clear Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedsymbolclearmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_cancel_message = ProtoField.new("Consolidated Trade Cancel Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedtradecancelmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_correction_message = ProtoField.new("Consolidated Trade Correction Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedtradecorrectionmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_message = ProtoField.new("Consolidated Trade Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedtrademessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trading_session_change_message = ProtoField.new("Consolidated Trading Session Change Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedtradingsessionchangemessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_volume_message = ProtoField.new("Consolidated Volume Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedvolumemessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.equities.bqt.xdp.v1.7.a.currentrefreshpkt", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.bqt.xdp.v1.7.a.deliveryflag", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.equities.bqt.xdp.v1.7.a.endseqnum", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.equities.bqt.xdp.v1.7.a.exchangecode", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.equities.bqt.xdp.v1.7.a.haltcondition", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.equities.bqt.xdp.v1.7.a.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.high_price = ProtoField.new("High Price", "nyse.equities.bqt.xdp.v1.7.a.highprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.equities.bqt.xdp.v1.7.a.lastseqnum", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.equities.bqt.xdp.v1.7.a.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.lot_size = ProtoField.new("Lot Size", "nyse.equities.bqt.xdp.v1.7.a.lotsize", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.low_price = ProtoField.new("Low Price", "nyse.equities.bqt.xdp.v1.7.a.lowprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id = ProtoField.new("Market Id", "nyse.equities.bqt.xdp.v1.7.a.marketid", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_best_ask = ProtoField.new("Market Id Of Best Ask", "nyse.equities.bqt.xdp.v1.7.a.marketidofbestask", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_best_bid = ProtoField.new("Market Id Of Best Bid", "nyse.equities.bqt.xdp.v1.7.a.marketidofbestbid", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_high_price = ProtoField.new("Market Id Of High Price", "nyse.equities.bqt.xdp.v1.7.a.marketidofhighprice", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_low_price = ProtoField.new("Market Id Of Low Price", "nyse.equities.bqt.xdp.v1.7.a.marketidoflowprice", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_open_price = ProtoField.new("Market Id Of Open Price", "nyse.equities.bqt.xdp.v1.7.a.marketidofopenprice", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_the_close = ProtoField.new("Market Id Of The Close", "nyse.equities.bqt.xdp.v1.7.a.marketidoftheclose", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_state = ProtoField.new("Market State", "nyse.equities.bqt.xdp.v1.7.a.marketstate", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.message = ProtoField.new("Message", "nyse.equities.bqt.xdp.v1.7.a.message", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_count = ProtoField.new("Message Count", "nyse.equities.bqt.xdp.v1.7.a.messagecount", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_header = ProtoField.new("Message Header", "nyse.equities.bqt.xdp.v1.7.a.messageheader", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_size = ProtoField.new("Message Size", "nyse.equities.bqt.xdp.v1.7.a.messagesize", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_type = ProtoField.new("Message Type", "nyse.equities.bqt.xdp.v1.7.a.messagetype", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.equities.bqt.xdp.v1.7.a.messageunavailablemessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.mpv = ProtoField.new("Mpv", "nyse.equities.bqt.xdp.v1.7.a.mpv", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.bqt.xdp.v1.7.a.nanoseconds", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.equities.bqt.xdp.v1.7.a.nextsourceseqnum", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.num_close_prices = ProtoField.new("Num Close Prices", "nyse.equities.bqt.xdp.v1.7.a.numcloseprices", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.open = ProtoField.new("Open", "nyse.equities.bqt.xdp.v1.7.a.open", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.equities.bqt.xdp.v1.7.a.originaltradeid", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.packet = ProtoField.new("Packet", "nyse.equities.bqt.xdp.v1.7.a.packet", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.bqt.xdp.v1.7.a.packetheader", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.bqt.xdp.v1.7.a.packetsize", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.payload = ProtoField.new("Payload", "nyse.equities.bqt.xdp.v1.7.a.payload", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.equities.bqt.xdp.v1.7.a.prevcloseprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.equities.bqt.xdp.v1.7.a.prevclosevolume", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.price = ProtoField.new("Price", "nyse.equities.bqt.xdp.v1.7.a.price", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.price_1 = ProtoField.new("Price 1", "nyse.equities.bqt.xdp.v1.7.a.price1", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.price_2 = ProtoField.new("Price 2", "nyse.equities.bqt.xdp.v1.7.a.price2", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.equities.bqt.xdp.v1.7.a.priceresolution", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.equities.bqt.xdp.v1.7.a.pricescalecode", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.product_id = ProtoField.new("Product Id", "nyse.equities.bqt.xdp.v1.7.a.productid", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.equities.bqt.xdp.v1.7.a.quotecondition", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.reason = ProtoField.new("Reason", "nyse.equities.bqt.xdp.v1.7.a.reason", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.equities.bqt.xdp.v1.7.a.refreshheadermessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.equities.bqt.xdp.v1.7.a.refreshrequestmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.equities.bqt.xdp.v1.7.a.requestresponsemessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.equities.bqt.xdp.v1.7.a.requestseqnum", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.equities.bqt.xdp.v1.7.a.reserved1", ftypes.BYTES)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.equities.bqt.xdp.v1.7.a.reserved2", ftypes.BYTES)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.retail_pricing_indicator = ProtoField.new("Retail Pricing Indicator", "nyse.equities.bqt.xdp.v1.7.a.retailpricingindicator", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.equities.bqt.xdp.v1.7.a.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.equities.bqt.xdp.v1.7.a.retransmitmethod", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.round_lot = ProtoField.new("Round Lot", "nyse.equities.bqt.xdp.v1.7.a.roundlot", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.equities.bqt.xdp.v1.7.a.rpiindicator", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.security_status = ProtoField.new("Security Status", "nyse.equities.bqt.xdp.v1.7.a.securitystatus", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.security_type = ProtoField.new("Security Type", "nyse.equities.bqt.xdp.v1.7.a.securitytype", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.bqt.xdp.v1.7.a.sequencenumber", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.equities.bqt.xdp.v1.7.a.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.session_state = ProtoField.new("Session State", "nyse.equities.bqt.xdp.v1.7.a.sessionstate", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.side = ProtoField.new("Side", "nyse.equities.bqt.xdp.v1.7.a.side", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.source_id = ProtoField.new("Source Id", "nyse.equities.bqt.xdp.v1.7.a.sourceid", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.source_time = ProtoField.new("Source Time", "nyse.equities.bqt.xdp.v1.7.a.sourcetime", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.bqt.xdp.v1.7.a.sourcetimens", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.ssr_state = ProtoField.new("Ssr State", "nyse.equities.bqt.xdp.v1.7.a.ssrstate", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.equities.bqt.xdp.v1.7.a.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.equities.bqt.xdp.v1.7.a.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.status = ProtoField.new("Status", "nyse.equities.bqt.xdp.v1.7.a.status", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol = ProtoField.new("Symbol", "nyse.equities.bqt.xdp.v1.7.a.symbol", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.bqt.xdp.v1.7.a.symbolindex", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.equities.bqt.xdp.v1.7.a.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.equities.bqt.xdp.v1.7.a.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.bqt.xdp.v1.7.a.symbolseqnum", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_seq_number = ProtoField.new("Symbol Seq Number", "nyse.equities.bqt.xdp.v1.7.a.symbolseqnumber", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.system_id = ProtoField.new("System Id", "nyse.equities.bqt.xdp.v1.7.a.systemid", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.time = ProtoField.new("Time", "nyse.equities.bqt.xdp.v1.7.a.time", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.bqt.xdp.v1.7.a.timestamp", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.equities.bqt.xdp.v1.7.a.totalrefreshpkts", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.total_volume = ProtoField.new("Total Volume", "nyse.equities.bqt.xdp.v1.7.a.totalvolume", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_1 = ProtoField.new("Trade Condition 1", "nyse.equities.bqt.xdp.v1.7.a.tradecondition1", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_2 = ProtoField.new("Trade Condition 2", "nyse.equities.bqt.xdp.v1.7.a.tradecondition2", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_3 = ProtoField.new("Trade Condition 3", "nyse.equities.bqt.xdp.v1.7.a.tradecondition3", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_4 = ProtoField.new("Trade Condition 4", "nyse.equities.bqt.xdp.v1.7.a.tradecondition4", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.equities.bqt.xdp.v1.7.a.tradeid", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_session = ProtoField.new("Trade Session", "nyse.equities.bqt.xdp.v1.7.a.tradesession", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.equities.bqt.xdp.v1.7.a.unitoftrade", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v1_7_a.fields.volume = ProtoField.new("Volume", "nyse.equities.bqt.xdp.v1.7.a.volume", ftypes.UINT32)

-- Nyse Equities Bqt Xdp 1.7.a generated fields
omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_index = ProtoField.new("Message Index", "nyse.equities.bqt.xdp.v1.7.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Equities Bqt Xdp 1.7.a Element Dissection Options
show.bqt_message = true
show.consolidated_security_status_message = true
show.consolidated_single_sided_quote_message = true
show.consolidated_stock_summary_message = true
show.consolidated_symbol_clear_message = true
show.consolidated_trade_cancel_message = true
show.consolidated_trade_correction_message = true
show.consolidated_trade_message = true
show.consolidated_trading_session_change_message = true
show.consolidated_volume_message = true
show.heartbeat_response_message = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.packet = true
show.packet_header = true
show.refresh_header_message = true
show.refresh_request_message = true
show.request_response_message = true
show.retransmission_request_message = true
show.sequence_number_reset_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.payload = false

-- Register Nyse Equities Bqt Xdp 1.7.a Show Options
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_bqt_message = Pref.bool("Show Bqt Message", show.bqt_message, "Parse and add Bqt Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_security_status_message = Pref.bool("Show Consolidated Security Status Message", show.consolidated_security_status_message, "Parse and add Consolidated Security Status Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_single_sided_quote_message = Pref.bool("Show Consolidated Single Sided Quote Message", show.consolidated_single_sided_quote_message, "Parse and add Consolidated Single Sided Quote Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_stock_summary_message = Pref.bool("Show Consolidated Stock Summary Message", show.consolidated_stock_summary_message, "Parse and add Consolidated Stock Summary Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_symbol_clear_message = Pref.bool("Show Consolidated Symbol Clear Message", show.consolidated_symbol_clear_message, "Parse and add Consolidated Symbol Clear Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_cancel_message = Pref.bool("Show Consolidated Trade Cancel Message", show.consolidated_trade_cancel_message, "Parse and add Consolidated Trade Cancel Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_correction_message = Pref.bool("Show Consolidated Trade Correction Message", show.consolidated_trade_correction_message, "Parse and add Consolidated Trade Correction Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_message = Pref.bool("Show Consolidated Trade Message", show.consolidated_trade_message, "Parse and add Consolidated Trade Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trading_session_change_message = Pref.bool("Show Consolidated Trading Session Change Message", show.consolidated_trading_session_change_message, "Parse and add Consolidated Trading Session Change Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_volume_message = Pref.bool("Show Consolidated Volume Message", show.consolidated_volume_message, "Parse and add Consolidated Volume Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_equities_bqt_xdp_v1_7_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.bqt_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_bqt_message then
    show.bqt_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_bqt_message
    changed = true
  end
  if show.consolidated_security_status_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_security_status_message then
    show.consolidated_security_status_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_security_status_message
    changed = true
  end
  if show.consolidated_single_sided_quote_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_single_sided_quote_message then
    show.consolidated_single_sided_quote_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_single_sided_quote_message
    changed = true
  end
  if show.consolidated_stock_summary_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_stock_summary_message then
    show.consolidated_stock_summary_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_stock_summary_message
    changed = true
  end
  if show.consolidated_symbol_clear_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_symbol_clear_message then
    show.consolidated_symbol_clear_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_symbol_clear_message
    changed = true
  end
  if show.consolidated_trade_cancel_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_cancel_message then
    show.consolidated_trade_cancel_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_cancel_message
    changed = true
  end
  if show.consolidated_trade_correction_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_correction_message then
    show.consolidated_trade_correction_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_correction_message
    changed = true
  end
  if show.consolidated_trade_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_message then
    show.consolidated_trade_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_message
    changed = true
  end
  if show.consolidated_trading_session_change_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trading_session_change_message then
    show.consolidated_trading_session_change_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trading_session_change_message
    changed = true
  end
  if show.consolidated_volume_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_volume_message then
    show.consolidated_volume_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_volume_message
    changed = true
  end
  if show.heartbeat_response_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_message then
    show.message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_header then
    show.message_header = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_unavailable_message then
    show.message_unavailable_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet then
    show.packet = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet_header then
    show.packet_header = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_header_message then
    show.refresh_header_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_request_message then
    show.refresh_request_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_request_response_message then
    show.request_response_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_retransmission_request_message then
    show.retransmission_request_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_retransmission_request_message
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.payload ~= omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_payload then
    show.payload = omi_nyse_equities_bqt_xdp_v1_7_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Equities Bqt Xdp 1.7.a
-----------------------------------------------------------------------

-- Complete
nyse_equities_bqt_xdp_v1_7_a.complete = {}

-- Size Of: Complete
nyse_equities_bqt_xdp_v1_7_a.complete.size = 1

-- Display: Complete
nyse_equities_bqt_xdp_v1_7_a.complete.display = function(value)
  if value == 0 then
    return "Complete: Normal (0)"
  end
  if value == 1 then
    return "Complete: Abnormal (1)"
  end

  return "Complete: Unknown("..value..")"
end

-- Dissect: Complete
nyse_equities_bqt_xdp_v1_7_a.complete.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.complete.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.complete.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.complete, range, value, display)

  return offset + length, value
end

-- Reason
nyse_equities_bqt_xdp_v1_7_a.reason = {}

-- Size Of: Reason
nyse_equities_bqt_xdp_v1_7_a.reason.size = 1

-- Display: Reason
nyse_equities_bqt_xdp_v1_7_a.reason.display = function(value)
  if value == 0 then
    return "Reason: New Trade (0)"
  end
  if value == 1 then
    return "Reason: Trade Cancellation (1)"
  end
  if value == 2 then
    return "Reason: Trade Error (2)"
  end
  if value == 3 then
    return "Reason: Trade Correction (3)"
  end
  if value == 4 then
    return "Reason: Closing End Trade Summary (4)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nyse_equities_bqt_xdp_v1_7_a.reason.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.reason, range, value, display)

  return offset + length, value
end

-- Total Volume
nyse_equities_bqt_xdp_v1_7_a.total_volume = {}

-- Size Of: Total Volume
nyse_equities_bqt_xdp_v1_7_a.total_volume.size = 4

-- Display: Total Volume
nyse_equities_bqt_xdp_v1_7_a.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_equities_bqt_xdp_v1_7_a.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Symbol Seq Number
nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number = {}

-- Size Of: Symbol Seq Number
nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.size = 4

-- Display: Symbol Seq Number
nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.display = function(value)
  return "Symbol Seq Number: "..value
end

-- Dissect: Symbol Seq Number
nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_seq_number, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_equities_bqt_xdp_v1_7_a.symbol_index = {}

-- Size Of: Symbol Index
nyse_equities_bqt_xdp_v1_7_a.symbol_index.size = 4

-- Display: Symbol Index
nyse_equities_bqt_xdp_v1_7_a.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Consolidated Volume Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message = {}

-- Size Of: Consolidated Volume Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message.size =
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v1_7_a.total_volume.size + 
  nyse_equities_bqt_xdp_v1_7_a.reason.size + 
  nyse_equities_bqt_xdp_v1_7_a.complete.size;

-- Display: Consolidated Volume Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Volume Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_equities_bqt_xdp_v1_7_a.total_volume.dissect(buffer, index, packet, parent)

  -- Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reason = nyse_equities_bqt_xdp_v1_7_a.reason.dissect(buffer, index, packet, parent)

  -- Complete: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, complete = nyse_equities_bqt_xdp_v1_7_a.complete.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Volume Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.consolidated_volume_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_volume_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Close
nyse_equities_bqt_xdp_v1_7_a.close = {}

-- Size Of: Close
nyse_equities_bqt_xdp_v1_7_a.close.size = 4

-- Display: Close
nyse_equities_bqt_xdp_v1_7_a.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_equities_bqt_xdp_v1_7_a.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.close, range, value, display)

  return offset + length, value
end

-- Market Id Of The Close
nyse_equities_bqt_xdp_v1_7_a.market_id_of_the_close = {}

-- Size Of: Market Id Of The Close
nyse_equities_bqt_xdp_v1_7_a.market_id_of_the_close.size = 2

-- Display: Market Id Of The Close
nyse_equities_bqt_xdp_v1_7_a.market_id_of_the_close.display = function(value)
  if value == 0 then
    return "Market Id Of The Close: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market Id Of The Close: Nyse (1)"
  end
  if value == 3 then
    return "Market Id Of The Close: Nyse Arca (3)"
  end
  if value == 9 then
    return "Market Id Of The Close: Nyse American (9)"
  end

  return "Market Id Of The Close: Unknown("..value..")"
end

-- Dissect: Market Id Of The Close
nyse_equities_bqt_xdp_v1_7_a.market_id_of_the_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.market_id_of_the_close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.market_id_of_the_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_the_close, range, value, display)

  return offset + length, value
end

-- Num Close Prices
nyse_equities_bqt_xdp_v1_7_a.num_close_prices = {}

-- Size Of: Num Close Prices
nyse_equities_bqt_xdp_v1_7_a.num_close_prices.size = 1

-- Display: Num Close Prices
nyse_equities_bqt_xdp_v1_7_a.num_close_prices.display = function(value)
  return "Num Close Prices: "..value
end

-- Dissect: Num Close Prices
nyse_equities_bqt_xdp_v1_7_a.num_close_prices.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.num_close_prices.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.num_close_prices.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.num_close_prices, range, value, display)

  return offset + length, value
end

-- Market Id Of Open Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_open_price = {}

-- Size Of: Market Id Of Open Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_open_price.size = 2

-- Display: Market Id Of Open Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_open_price.display = function(value)
  if value == 0 then
    return "Market Id Of Open Price: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market Id Of Open Price: Nyse (1)"
  end
  if value == 3 then
    return "Market Id Of Open Price: Nyse Arca (3)"
  end
  if value == 9 then
    return "Market Id Of Open Price: Nyse American (9)"
  end

  return "Market Id Of Open Price: Unknown("..value..")"
end

-- Dissect: Market Id Of Open Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_open_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.market_id_of_open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.market_id_of_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_open_price, range, value, display)

  return offset + length, value
end

-- Market Id Of Low Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_low_price = {}

-- Size Of: Market Id Of Low Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_low_price.size = 2

-- Display: Market Id Of Low Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_low_price.display = function(value)
  if value == 0 then
    return "Market Id Of Low Price: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market Id Of Low Price: Nyse (1)"
  end
  if value == 3 then
    return "Market Id Of Low Price: Nyse Arca (3)"
  end
  if value == 9 then
    return "Market Id Of Low Price: Nyse American (9)"
  end

  return "Market Id Of Low Price: Unknown("..value..")"
end

-- Dissect: Market Id Of Low Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.market_id_of_low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.market_id_of_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_low_price, range, value, display)

  return offset + length, value
end

-- Market Id Of High Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_high_price = {}

-- Size Of: Market Id Of High Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_high_price.size = 2

-- Display: Market Id Of High Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_high_price.display = function(value)
  if value == 0 then
    return "Market Id Of High Price: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market Id Of High Price: Nyse (1)"
  end
  if value == 3 then
    return "Market Id Of High Price: Nyse Arca (3)"
  end
  if value == 9 then
    return "Market Id Of High Price: Nyse American (9)"
  end

  return "Market Id Of High Price: Unknown("..value..")"
end

-- Dissect: Market Id Of High Price
nyse_equities_bqt_xdp_v1_7_a.market_id_of_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.market_id_of_high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.market_id_of_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_high_price, range, value, display)

  return offset + length, value
end

-- Open
nyse_equities_bqt_xdp_v1_7_a.open = {}

-- Size Of: Open
nyse_equities_bqt_xdp_v1_7_a.open.size = 4

-- Display: Open
nyse_equities_bqt_xdp_v1_7_a.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_equities_bqt_xdp_v1_7_a.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.open.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.open, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_equities_bqt_xdp_v1_7_a.low_price = {}

-- Size Of: Low Price
nyse_equities_bqt_xdp_v1_7_a.low_price.size = 4

-- Display: Low Price
nyse_equities_bqt_xdp_v1_7_a.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_equities_bqt_xdp_v1_7_a.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.low_price, range, value, display)

  return offset + length, value
end

-- High Price
nyse_equities_bqt_xdp_v1_7_a.high_price = {}

-- Size Of: High Price
nyse_equities_bqt_xdp_v1_7_a.high_price.size = 4

-- Display: High Price
nyse_equities_bqt_xdp_v1_7_a.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_equities_bqt_xdp_v1_7_a.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.high_price, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_equities_bqt_xdp_v1_7_a.source_time_ns = {}

-- Size Of: Source Time Ns
nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_equities_bqt_xdp_v1_7_a.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_equities_bqt_xdp_v1_7_a.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_equities_bqt_xdp_v1_7_a.source_time = {}

-- Size Of: Source Time
nyse_equities_bqt_xdp_v1_7_a.source_time.size = 4

-- Display: Source Time
nyse_equities_bqt_xdp_v1_7_a.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_equities_bqt_xdp_v1_7_a.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Consolidated Stock Summary Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message = {}

-- Size Of: Consolidated Stock Summary Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message.size =
  nyse_equities_bqt_xdp_v1_7_a.source_time.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.high_price.size + 
  nyse_equities_bqt_xdp_v1_7_a.low_price.size + 
  nyse_equities_bqt_xdp_v1_7_a.open.size + 
  nyse_equities_bqt_xdp_v1_7_a.total_volume.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id_of_high_price.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id_of_low_price.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id_of_open_price.size + 
  nyse_equities_bqt_xdp_v1_7_a.num_close_prices.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id_of_the_close.size + 
  nyse_equities_bqt_xdp_v1_7_a.close.size;

-- Display: Consolidated Stock Summary Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Stock Summary Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- High Price: 4 Byte Unsigned Fixed Width Integer
  index, high_price = nyse_equities_bqt_xdp_v1_7_a.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: 4 Byte Unsigned Fixed Width Integer
  index, low_price = nyse_equities_bqt_xdp_v1_7_a.low_price.dissect(buffer, index, packet, parent)

  -- Open: 4 Byte Unsigned Fixed Width Integer
  index, open = nyse_equities_bqt_xdp_v1_7_a.open.dissect(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_equities_bqt_xdp_v1_7_a.total_volume.dissect(buffer, index, packet, parent)

  -- Market Id Of High Price: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_high_price = nyse_equities_bqt_xdp_v1_7_a.market_id_of_high_price.dissect(buffer, index, packet, parent)

  -- Market Id Of Low Price: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_low_price = nyse_equities_bqt_xdp_v1_7_a.market_id_of_low_price.dissect(buffer, index, packet, parent)

  -- Market Id Of Open Price: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_open_price = nyse_equities_bqt_xdp_v1_7_a.market_id_of_open_price.dissect(buffer, index, packet, parent)

  -- Num Close Prices: 1 Byte Unsigned Fixed Width Integer
  index, num_close_prices = nyse_equities_bqt_xdp_v1_7_a.num_close_prices.dissect(buffer, index, packet, parent)

  -- Market Id Of The Close: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_the_close = nyse_equities_bqt_xdp_v1_7_a.market_id_of_the_close.dissect(buffer, index, packet, parent)

  -- Close: 4 Byte Unsigned Fixed Width Integer
  index, close = nyse_equities_bqt_xdp_v1_7_a.close.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Stock Summary Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.consolidated_stock_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_stock_summary_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Id
nyse_equities_bqt_xdp_v1_7_a.market_id = {}

-- Size Of: Market Id
nyse_equities_bqt_xdp_v1_7_a.market_id.size = 2

-- Display: Market Id
nyse_equities_bqt_xdp_v1_7_a.market_id.display = function(value)
  if value == 0 then
    return "Market Id: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market Id: Nyse Cash (1)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca Cash (3)"
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
nyse_equities_bqt_xdp_v1_7_a.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Trade Condition 4
nyse_equities_bqt_xdp_v1_7_a.trade_condition_4 = {}

-- Size Of: Trade Condition 4
nyse_equities_bqt_xdp_v1_7_a.trade_condition_4.size = 1

-- Display: Trade Condition 4
nyse_equities_bqt_xdp_v1_7_a.trade_condition_4.display = function(value)
  if value == " " then
    return "Trade Condition 4: Na (<whitespace>)"
  end
  if value == "@" then
    return "Trade Condition 4: Regular Sale (@)"
  end
  if value == "B" then
    return "Trade Condition 4: Average Price Trade (B)"
  end
  if value == "E" then
    return "Trade Condition 4: Automatic Execution (E)"
  end
  if value == "H" then
    return "Trade Condition 4: Price Variation Trade (H)"
  end
  if value == "I" then
    return "Trade Condition 4: Odd Lot Trade (I)"
  end
  if value == "K" then
    return "Trade Condition 4: Rule 127 Nyse Only Or Rule 155 Nyse American Only (K)"
  end
  if value == "M" then
    return "Trade Condition 4: Official Closing Price (M)"
  end
  if value == "P" then
    return "Trade Condition 4: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Trade Condition 4: Official Open Price (Q)"
  end
  if value == "V" then
    return "Trade Condition 4: Stock Option Trade (V)"
  end
  if value == "X" then
    return "Trade Condition 4: Cross Trade (X)"
  end

  return "Trade Condition 4: Unknown("..value..")"
end

-- Dissect: Trade Condition 4
nyse_equities_bqt_xdp_v1_7_a.trade_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.trade_condition_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.trade_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_4, range, value, display)

  return offset + length, value
end

-- Trade Condition 3
nyse_equities_bqt_xdp_v1_7_a.trade_condition_3 = {}

-- Size Of: Trade Condition 3
nyse_equities_bqt_xdp_v1_7_a.trade_condition_3.size = 1

-- Display: Trade Condition 3
nyse_equities_bqt_xdp_v1_7_a.trade_condition_3.display = function(value)
  if value == " " then
    return "Trade Condition 3: Na (<whitespace>)"
  end
  if value == "L" then
    return "Trade Condition 3: Sold Last (L)"
  end
  if value == "T" then
    return "Trade Condition 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Trade Condition 3: Extended Hours Sold Out Of Sequence (U)"
  end
  if value == "Z" then
    return "Trade Condition 3: Sold (Z)"
  end

  return "Trade Condition 3: Unknown("..value..")"
end

-- Dissect: Trade Condition 3
nyse_equities_bqt_xdp_v1_7_a.trade_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.trade_condition_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.trade_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_3, range, value, display)

  return offset + length, value
end

-- Trade Condition 2
nyse_equities_bqt_xdp_v1_7_a.trade_condition_2 = {}

-- Size Of: Trade Condition 2
nyse_equities_bqt_xdp_v1_7_a.trade_condition_2.size = 1

-- Display: Trade Condition 2
nyse_equities_bqt_xdp_v1_7_a.trade_condition_2.display = function(value)
  if value == " " then
    return "Trade Condition 2: Na (<whitespace>)"
  end
  if value == "F" then
    return "Trade Condition 2: Intermarket Sweep Order (F)"
  end
  if value == "O" then
    return "Trade Condition 2: Market Center Opening Trade (O)"
  end
  if value == "4" then
    return "Trade Condition 2: Derivatively Priced (4)"
  end
  if value == "5" then
    return "Trade Condition 2: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Trade Condition 2: Market Center Closing Trade (6)"
  end
  if value == "9" then
    return "Trade Condition 2: Corrected Last Sale Price (9)"
  end

  return "Trade Condition 2: Unknown("..value..")"
end

-- Dissect: Trade Condition 2
nyse_equities_bqt_xdp_v1_7_a.trade_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.trade_condition_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.trade_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_2, range, value, display)

  return offset + length, value
end

-- Trade Condition 1
nyse_equities_bqt_xdp_v1_7_a.trade_condition_1 = {}

-- Size Of: Trade Condition 1
nyse_equities_bqt_xdp_v1_7_a.trade_condition_1.size = 1

-- Display: Trade Condition 1
nyse_equities_bqt_xdp_v1_7_a.trade_condition_1.display = function(value)
  if value == "@" then
    return "Trade Condition 1: Regular Sale (@)"
  end
  if value == "C" then
    return "Trade Condition 1: Cash (C)"
  end
  if value == "N" then
    return "Trade Condition 1: Next Day Trade (N)"
  end
  if value == "R" then
    return "Trade Condition 1: Seller (R)"
  end

  return "Trade Condition 1: Unknown("..value..")"
end

-- Dissect: Trade Condition 1
nyse_equities_bqt_xdp_v1_7_a.trade_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.trade_condition_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.trade_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_1, range, value, display)

  return offset + length, value
end

-- Volume
nyse_equities_bqt_xdp_v1_7_a.volume = {}

-- Size Of: Volume
nyse_equities_bqt_xdp_v1_7_a.volume.size = 4

-- Display: Volume
nyse_equities_bqt_xdp_v1_7_a.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_equities_bqt_xdp_v1_7_a.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_equities_bqt_xdp_v1_7_a.price = {}

-- Size Of: Price
nyse_equities_bqt_xdp_v1_7_a.price.size = 4

-- Display: Price
nyse_equities_bqt_xdp_v1_7_a.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_equities_bqt_xdp_v1_7_a.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.price, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_equities_bqt_xdp_v1_7_a.trade_id = {}

-- Size Of: Trade Id
nyse_equities_bqt_xdp_v1_7_a.trade_id.size = 4

-- Display: Trade Id
nyse_equities_bqt_xdp_v1_7_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_equities_bqt_xdp_v1_7_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Original Trade Id
nyse_equities_bqt_xdp_v1_7_a.original_trade_id = {}

-- Size Of: Original Trade Id
nyse_equities_bqt_xdp_v1_7_a.original_trade_id.size = 4

-- Display: Original Trade Id
nyse_equities_bqt_xdp_v1_7_a.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nyse_equities_bqt_xdp_v1_7_a.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message = {}

-- Size Of: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message.size =
  nyse_equities_bqt_xdp_v1_7_a.source_time.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v1_7_a.original_trade_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.price.size + 
  nyse_equities_bqt_xdp_v1_7_a.volume.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_condition_1.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_condition_2.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_condition_3.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_condition_4.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id.size;

-- Display: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Original Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_id = nyse_equities_bqt_xdp_v1_7_a.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_bqt_xdp_v1_7_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_bqt_xdp_v1_7_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_bqt_xdp_v1_7_a.volume.dissect(buffer, index, packet, parent)

  -- Trade Condition 1: 1 Byte Ascii String Enum with 4 values
  index, trade_condition_1 = nyse_equities_bqt_xdp_v1_7_a.trade_condition_1.dissect(buffer, index, packet, parent)

  -- Trade Condition 2: 1 Byte Ascii String Enum with 7 values
  index, trade_condition_2 = nyse_equities_bqt_xdp_v1_7_a.trade_condition_2.dissect(buffer, index, packet, parent)

  -- Trade Condition 3: 1 Byte Ascii String Enum with 5 values
  index, trade_condition_3 = nyse_equities_bqt_xdp_v1_7_a.trade_condition_3.dissect(buffer, index, packet, parent)

  -- Trade Condition 4: 1 Byte Ascii String Enum with 12 values
  index, trade_condition_4 = nyse_equities_bqt_xdp_v1_7_a.trade_condition_4.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.consolidated_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_correction_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message = {}

-- Size Of: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message.size =
  nyse_equities_bqt_xdp_v1_7_a.source_time.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id.size;

-- Display: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_bqt_xdp_v1_7_a.trade_id.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.consolidated_trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_cancel_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num = {}

-- Size Of: Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Consolidated Trade Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message = {}

-- Size Of: Consolidated Trade Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message.size =
  nyse_equities_bqt_xdp_v1_7_a.source_time.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.price.size + 
  nyse_equities_bqt_xdp_v1_7_a.volume.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_condition_1.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_condition_2.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_condition_3.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_condition_4.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id.size;

-- Display: Consolidated Trade Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_bqt_xdp_v1_7_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_bqt_xdp_v1_7_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_bqt_xdp_v1_7_a.volume.dissect(buffer, index, packet, parent)

  -- Trade Condition 1: 1 Byte Ascii String Enum with 4 values
  index, trade_condition_1 = nyse_equities_bqt_xdp_v1_7_a.trade_condition_1.dissect(buffer, index, packet, parent)

  -- Trade Condition 2: 1 Byte Ascii String Enum with 7 values
  index, trade_condition_2 = nyse_equities_bqt_xdp_v1_7_a.trade_condition_2.dissect(buffer, index, packet, parent)

  -- Trade Condition 3: 1 Byte Ascii String Enum with 5 values
  index, trade_condition_3 = nyse_equities_bqt_xdp_v1_7_a.trade_condition_3.dissect(buffer, index, packet, parent)

  -- Trade Condition 4: 1 Byte Ascii String Enum with 12 values
  index, trade_condition_4 = nyse_equities_bqt_xdp_v1_7_a.trade_condition_4.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.consolidated_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Rpi Indicator
nyse_equities_bqt_xdp_v1_7_a.rpi_indicator = {}

-- Size Of: Rpi Indicator
nyse_equities_bqt_xdp_v1_7_a.rpi_indicator.size = 1

-- Display: Rpi Indicator
nyse_equities_bqt_xdp_v1_7_a.rpi_indicator.display = function(value)
  if value == " " then
    return "Rpi Indicator: No Retail Interest (<whitespace>)"
  end
  if value == "A" then
    return "Rpi Indicator: Interest On Bid (A)"
  end
  if value == "B" then
    return "Rpi Indicator: Interest On Offer (B)"
  end
  if value == "C" then
    return "Rpi Indicator: Interest On Bid And Offer (C)"
  end

  return "Rpi Indicator: Unknown("..value..")"
end

-- Dissect: Rpi Indicator
nyse_equities_bqt_xdp_v1_7_a.rpi_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.rpi_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.rpi_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_equities_bqt_xdp_v1_7_a.quote_condition = {}

-- Size Of: Quote Condition
nyse_equities_bqt_xdp_v1_7_a.quote_condition.size = 1

-- Display: Quote Condition
nyse_equities_bqt_xdp_v1_7_a.quote_condition.display = function(value)
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
  if value == "OxOO" then
    return "Quote Condition: Empty Quote (OxOO)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_equities_bqt_xdp_v1_7_a.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Side
nyse_equities_bqt_xdp_v1_7_a.side = {}

-- Size Of: Side
nyse_equities_bqt_xdp_v1_7_a.side.size = 1

-- Display: Side
nyse_equities_bqt_xdp_v1_7_a.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_equities_bqt_xdp_v1_7_a.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.side, range, value, display)

  return offset + length, value
end

-- Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message = {}

-- Size Of: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message.size =
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v1_7_a.side.size + 
  nyse_equities_bqt_xdp_v1_7_a.price.size + 
  nyse_equities_bqt_xdp_v1_7_a.volume.size + 
  nyse_equities_bqt_xdp_v1_7_a.quote_condition.size + 
  nyse_equities_bqt_xdp_v1_7_a.rpi_indicator.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id.size;

-- Display: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_equities_bqt_xdp_v1_7_a.side.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_bqt_xdp_v1_7_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_bqt_xdp_v1_7_a.volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_equities_bqt_xdp_v1_7_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index, rpi_indicator = nyse_equities_bqt_xdp_v1_7_a.rpi_indicator.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.consolidated_single_sided_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_single_sided_quote_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Id Of Best Bid
nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_bid = {}

-- Size Of: Market Id Of Best Bid
nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_bid.size = 2

-- Display: Market Id Of Best Bid
nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_bid.display = function(value)
  if value == 0 then
    return "Market Id Of Best Bid: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market Id Of Best Bid: Nyse (1)"
  end
  if value == 3 then
    return "Market Id Of Best Bid: Nyse Arca (3)"
  end
  if value == 9 then
    return "Market Id Of Best Bid: Nyse American (9)"
  end

  return "Market Id Of Best Bid: Unknown("..value..")"
end

-- Dissect: Market Id Of Best Bid
nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_bid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_best_bid, range, value, display)

  return offset + length, value
end

-- Market Id Of Best Ask
nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_ask = {}

-- Size Of: Market Id Of Best Ask
nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_ask.size = 2

-- Display: Market Id Of Best Ask
nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_ask.display = function(value)
  if value == 0 then
    return "Market Id Of Best Ask: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market Id Of Best Ask: Nyse (1)"
  end
  if value == 3 then
    return "Market Id Of Best Ask: Nyse Arca (3)"
  end
  if value == 9 then
    return "Market Id Of Best Ask: Nyse American (9)"
  end

  return "Market Id Of Best Ask: Unknown("..value..")"
end

-- Dissect: Market Id Of Best Ask
nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_ask.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_best_ask, range, value, display)

  return offset + length, value
end

-- Retail Pricing Indicator
nyse_equities_bqt_xdp_v1_7_a.retail_pricing_indicator = {}

-- Size Of: Retail Pricing Indicator
nyse_equities_bqt_xdp_v1_7_a.retail_pricing_indicator.size = 1

-- Display: Retail Pricing Indicator
nyse_equities_bqt_xdp_v1_7_a.retail_pricing_indicator.display = function(value)
  if value == 0x00 then
    return "Retail Pricing Indicator: No Retail Interest (0x00)"
  end
  if value == 0x01 then
    return "Retail Pricing Indicator: Retail Interest On The Bid Side (0x01)"
  end
  if value == 0x02 then
    return "Retail Pricing Indicator: Retail Interest On The Ask Side (0x02)"
  end
  if value == 0x04 then
    return "Retail Pricing Indicator: Combination Of Retail Interest On Bid And Ask Side (0x04)"
  end

  return "Retail Pricing Indicator: Unknown("..value..")"
end

-- Dissect: Retail Pricing Indicator
nyse_equities_bqt_xdp_v1_7_a.retail_pricing_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.retail_pricing_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.retail_pricing_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.retail_pricing_indicator, range, value, display)

  return offset + length, value
end

-- Bid Quote Condition
nyse_equities_bqt_xdp_v1_7_a.bid_quote_condition = {}

-- Size Of: Bid Quote Condition
nyse_equities_bqt_xdp_v1_7_a.bid_quote_condition.size = 1

-- Display: Bid Quote Condition
nyse_equities_bqt_xdp_v1_7_a.bid_quote_condition.display = function(value)
  if value == "C" then
    return "Bid Quote Condition: Closing (C)"
  end
  if value == "O" then
    return "Bid Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Bid Quote Condition: Regular Quote (R)"
  end
  if value == "W" then
    return "Bid Quote Condition: Slow On The Bid And Ask (W)"
  end

  return "Bid Quote Condition: Unknown("..value..")"
end

-- Dissect: Bid Quote Condition
nyse_equities_bqt_xdp_v1_7_a.bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Ask Quote Condition
nyse_equities_bqt_xdp_v1_7_a.ask_quote_condition = {}

-- Size Of: Ask Quote Condition
nyse_equities_bqt_xdp_v1_7_a.ask_quote_condition.size = 1

-- Display: Ask Quote Condition
nyse_equities_bqt_xdp_v1_7_a.ask_quote_condition.display = function(value)
  if value == "C" then
    return "Ask Quote Condition: Closing (C)"
  end
  if value == "O" then
    return "Ask Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Ask Quote Condition: Regular Quote (R)"
  end
  if value == "W" then
    return "Ask Quote Condition: Slow On The Bid And Ask (W)"
  end

  return "Ask Quote Condition: Unknown("..value..")"
end

-- Dissect: Ask Quote Condition
nyse_equities_bqt_xdp_v1_7_a.ask_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.ask_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.ask_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.ask_quote_condition, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_equities_bqt_xdp_v1_7_a.bid_volume = {}

-- Size Of: Bid Volume
nyse_equities_bqt_xdp_v1_7_a.bid_volume.size = 4

-- Display: Bid Volume
nyse_equities_bqt_xdp_v1_7_a.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_equities_bqt_xdp_v1_7_a.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_equities_bqt_xdp_v1_7_a.bid_price = {}

-- Size Of: Bid Price
nyse_equities_bqt_xdp_v1_7_a.bid_price.size = 4

-- Display: Bid Price
nyse_equities_bqt_xdp_v1_7_a.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_equities_bqt_xdp_v1_7_a.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_equities_bqt_xdp_v1_7_a.ask_volume = {}

-- Size Of: Ask Volume
nyse_equities_bqt_xdp_v1_7_a.ask_volume.size = 4

-- Display: Ask Volume
nyse_equities_bqt_xdp_v1_7_a.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_equities_bqt_xdp_v1_7_a.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Ask Price
nyse_equities_bqt_xdp_v1_7_a.ask_price = {}

-- Size Of: Ask Price
nyse_equities_bqt_xdp_v1_7_a.ask_price.size = 4

-- Display: Ask Price
nyse_equities_bqt_xdp_v1_7_a.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_equities_bqt_xdp_v1_7_a.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Bqt Message
nyse_equities_bqt_xdp_v1_7_a.bqt_message = {}

-- Size Of: Bqt Message
nyse_equities_bqt_xdp_v1_7_a.bqt_message.size =
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v1_7_a.ask_price.size + 
  nyse_equities_bqt_xdp_v1_7_a.ask_volume.size + 
  nyse_equities_bqt_xdp_v1_7_a.bid_price.size + 
  nyse_equities_bqt_xdp_v1_7_a.bid_volume.size + 
  nyse_equities_bqt_xdp_v1_7_a.ask_quote_condition.size + 
  nyse_equities_bqt_xdp_v1_7_a.bid_quote_condition.size + 
  nyse_equities_bqt_xdp_v1_7_a.retail_pricing_indicator.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_ask.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_bid.size;

-- Display: Bqt Message
nyse_equities_bqt_xdp_v1_7_a.bqt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bqt Message
nyse_equities_bqt_xdp_v1_7_a.bqt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Unsigned Fixed Width Integer
  index, ask_price = nyse_equities_bqt_xdp_v1_7_a.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_equities_bqt_xdp_v1_7_a.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Unsigned Fixed Width Integer
  index, bid_price = nyse_equities_bqt_xdp_v1_7_a.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_equities_bqt_xdp_v1_7_a.bid_volume.dissect(buffer, index, packet, parent)

  -- Ask Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, ask_quote_condition = nyse_equities_bqt_xdp_v1_7_a.ask_quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, bid_quote_condition = nyse_equities_bqt_xdp_v1_7_a.bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Retail Pricing Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, retail_pricing_indicator = nyse_equities_bqt_xdp_v1_7_a.retail_pricing_indicator.dissect(buffer, index, packet, parent)

  -- Market Id Of Best Ask: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_best_ask = nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_ask.dissect(buffer, index, packet, parent)

  -- Market Id Of Best Bid: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_best_bid = nyse_equities_bqt_xdp_v1_7_a.market_id_of_best_bid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bqt Message
nyse_equities_bqt_xdp_v1_7_a.bqt_message.dissect = function(buffer, offset, packet, parent)
  if show.bqt_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.bqt_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.bqt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.bqt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.bqt_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a.last_symbol_seq_num = {}

-- Size Of: Last Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_equities_bqt_xdp_v1_7_a.last_seq_num = {}

-- Size Of: Last Seq Num
nyse_equities_bqt_xdp_v1_7_a.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_equities_bqt_xdp_v1_7_a.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_equities_bqt_xdp_v1_7_a.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_equities_bqt_xdp_v1_7_a.total_refresh_pkts = {}

-- Size Of: Total Refresh Pkts
nyse_equities_bqt_xdp_v1_7_a.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_equities_bqt_xdp_v1_7_a.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_equities_bqt_xdp_v1_7_a.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_equities_bqt_xdp_v1_7_a.current_refresh_pkt = {}

-- Size Of: Current Refresh Pkt
nyse_equities_bqt_xdp_v1_7_a.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_equities_bqt_xdp_v1_7_a.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_equities_bqt_xdp_v1_7_a.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Refresh Header Message
nyse_equities_bqt_xdp_v1_7_a.refresh_header_message = {}

-- Size Of: Refresh Header Message
nyse_equities_bqt_xdp_v1_7_a.refresh_header_message.size =
  nyse_equities_bqt_xdp_v1_7_a.current_refresh_pkt.size + 
  nyse_equities_bqt_xdp_v1_7_a.total_refresh_pkts.size + 
  nyse_equities_bqt_xdp_v1_7_a.last_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.last_symbol_seq_num.size;

-- Display: Refresh Header Message
nyse_equities_bqt_xdp_v1_7_a.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_equities_bqt_xdp_v1_7_a.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_equities_bqt_xdp_v1_7_a.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_equities_bqt_xdp_v1_7_a.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_equities_bqt_xdp_v1_7_a.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_equities_bqt_xdp_v1_7_a.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_equities_bqt_xdp_v1_7_a.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Session State
nyse_equities_bqt_xdp_v1_7_a.session_state = {}

-- Size Of: Session State
nyse_equities_bqt_xdp_v1_7_a.session_state.size = 1

-- Display: Session State
nyse_equities_bqt_xdp_v1_7_a.session_state.display = function(value)
  if value == "X" then
    return "Session State: Early Session State (X)"
  end
  if value == "Y" then
    return "Session State: Core Session State (Y)"
  end
  if value == "Z" then
    return "Session State: Late Session State (Z)"
  end

  return "Session State: Unknown("..value..")"
end

-- Dissect: Session State
nyse_equities_bqt_xdp_v1_7_a.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.session_state, range, value, display)

  return offset + length, value
end

-- Market State
nyse_equities_bqt_xdp_v1_7_a.market_state = {}

-- Size Of: Market State
nyse_equities_bqt_xdp_v1_7_a.market_state.size = 1

-- Display: Market State
nyse_equities_bqt_xdp_v1_7_a.market_state.display = function(value)
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
nyse_equities_bqt_xdp_v1_7_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_equities_bqt_xdp_v1_7_a.ssr_state = {}

-- Size Of: Ssr State
nyse_equities_bqt_xdp_v1_7_a.ssr_state.size = 1

-- Display: Ssr State
nyse_equities_bqt_xdp_v1_7_a.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_equities_bqt_xdp_v1_7_a.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Time
nyse_equities_bqt_xdp_v1_7_a.time = {}

-- Size Of: Time
nyse_equities_bqt_xdp_v1_7_a.time.size = 4

-- Display: Time
nyse_equities_bqt_xdp_v1_7_a.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_equities_bqt_xdp_v1_7_a.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.time, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_volume = {}

-- Size Of: Ssr Triggering Volume
nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_exchange_id = {}

-- Size Of: Ssr Triggering Exchange Id
nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_exchange_id.display = function(value)
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
nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_equities_bqt_xdp_v1_7_a.price_2 = {}

-- Size Of: Price 2
nyse_equities_bqt_xdp_v1_7_a.price_2.size = 4

-- Display: Price 2
nyse_equities_bqt_xdp_v1_7_a.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_equities_bqt_xdp_v1_7_a.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_equities_bqt_xdp_v1_7_a.price_1 = {}

-- Size Of: Price 1
nyse_equities_bqt_xdp_v1_7_a.price_1.size = 4

-- Display: Price 1
nyse_equities_bqt_xdp_v1_7_a.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_equities_bqt_xdp_v1_7_a.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.price_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_equities_bqt_xdp_v1_7_a.reserved_2 = {}

-- Size Of: Reserved 2
nyse_equities_bqt_xdp_v1_7_a.reserved_2.size = 2

-- Display: Reserved 2
nyse_equities_bqt_xdp_v1_7_a.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_equities_bqt_xdp_v1_7_a.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bqt_xdp_v1_7_a.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_equities_bqt_xdp_v1_7_a.halt_condition = {}

-- Size Of: Halt Condition
nyse_equities_bqt_xdp_v1_7_a.halt_condition.size = 1

-- Display: Halt Condition
nyse_equities_bqt_xdp_v1_7_a.halt_condition.display = function(value)
  if value == "~" then
    return "Halt Condition: Security Not Delayedhalted (~)"
  end
  if value == " " then
    return "Halt Condition: Not Applicable (<whitespace>)"
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
    return "Halt Condition: Volatility Trading Pause (M)"
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
nyse_equities_bqt_xdp_v1_7_a.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_equities_bqt_xdp_v1_7_a.security_status = {}

-- Size Of: Security Status
nyse_equities_bqt_xdp_v1_7_a.security_status.size = 1

-- Display: Security Status
nyse_equities_bqt_xdp_v1_7_a.security_status.display = function(value)
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
nyse_equities_bqt_xdp_v1_7_a.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.security_status, range, value, display)

  return offset + length, value
end

-- Consolidated Security Status Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message = {}

-- Size Of: Consolidated Security Status Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message.size =
  nyse_equities_bqt_xdp_v1_7_a.source_time.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.security_status.size + 
  nyse_equities_bqt_xdp_v1_7_a.halt_condition.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.reserved_2.size + 
  nyse_equities_bqt_xdp_v1_7_a.price_1.size + 
  nyse_equities_bqt_xdp_v1_7_a.price_2.size + 
  nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_exchange_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_volume.size + 
  nyse_equities_bqt_xdp_v1_7_a.time.size + 
  nyse_equities_bqt_xdp_v1_7_a.ssr_state.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_state.size + 
  nyse_equities_bqt_xdp_v1_7_a.session_state.size;

-- Display: Consolidated Security Status Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Security Status Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index, security_status = nyse_equities_bqt_xdp_v1_7_a.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 11 values
  index, halt_condition = nyse_equities_bqt_xdp_v1_7_a.halt_condition.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a.market_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_bqt_xdp_v1_7_a.reserved_2.dissect(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_equities_bqt_xdp_v1_7_a.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_equities_bqt_xdp_v1_7_a.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 18 values
  index, ssr_triggering_exchange_id = nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_equities_bqt_xdp_v1_7_a.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_equities_bqt_xdp_v1_7_a.time.dissect(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index, ssr_state = nyse_equities_bqt_xdp_v1_7_a.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_equities_bqt_xdp_v1_7_a.market_state.dissect(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String Enum with 3 values
  index, session_state = nyse_equities_bqt_xdp_v1_7_a.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Security Status Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.consolidated_security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_security_status_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Session
nyse_equities_bqt_xdp_v1_7_a.trade_session = {}

-- Size Of: Trade Session
nyse_equities_bqt_xdp_v1_7_a.trade_session.size = 1

-- Display: Trade Session
nyse_equities_bqt_xdp_v1_7_a.trade_session.display = function(value)
  return "Trade Session: "..value
end

-- Dissect: Trade Session
nyse_equities_bqt_xdp_v1_7_a.trade_session.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.trade_session.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.trade_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.trade_session, range, value, display)

  return offset + length, value
end

-- Consolidated Trading Session Change Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message = {}

-- Size Of: Consolidated Trading Session Change Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message.size =
  nyse_equities_bqt_xdp_v1_7_a.source_time.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.trade_session.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id.size;

-- Display: Consolidated Trading Session Change Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trading Session Change Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bqt_xdp_v1_7_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Session: 1 Byte Unsigned Fixed Width Integer
  index, trade_session = nyse_equities_bqt_xdp_v1_7_a.trade_session.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trading Session Change Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message.dissect = function(buffer, offset, packet, parent)
  if show.consolidated_trading_session_change_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trading_session_change_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Next Source Seq Num
nyse_equities_bqt_xdp_v1_7_a.next_source_seq_num = {}

-- Size Of: Next Source Seq Num
nyse_equities_bqt_xdp_v1_7_a.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_equities_bqt_xdp_v1_7_a.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_equities_bqt_xdp_v1_7_a.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Consolidated Symbol Clear Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message = {}

-- Size Of: Consolidated Symbol Clear Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message.size =
  nyse_equities_bqt_xdp_v1_7_a.source_time.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.next_source_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id.size;

-- Display: Consolidated Symbol Clear Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Symbol Clear Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_equities_bqt_xdp_v1_7_a.next_source_seq_num.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Symbol Clear Message
nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.consolidated_symbol_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_symbol_clear_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Id
nyse_equities_bqt_xdp_v1_7_a.channel_id = {}

-- Size Of: Channel Id
nyse_equities_bqt_xdp_v1_7_a.channel_id.size = 1

-- Display: Channel Id
nyse_equities_bqt_xdp_v1_7_a.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_equities_bqt_xdp_v1_7_a.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_equities_bqt_xdp_v1_7_a.product_id = {}

-- Size Of: Product Id
nyse_equities_bqt_xdp_v1_7_a.product_id.size = 1

-- Display: Product Id
nyse_equities_bqt_xdp_v1_7_a.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_equities_bqt_xdp_v1_7_a.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_equities_bqt_xdp_v1_7_a.end_seq_num = {}

-- Size Of: End Seq Num
nyse_equities_bqt_xdp_v1_7_a.end_seq_num.size = 4

-- Display: End Seq Num
nyse_equities_bqt_xdp_v1_7_a.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_equities_bqt_xdp_v1_7_a.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_equities_bqt_xdp_v1_7_a.begin_seq_num = {}

-- Size Of: Begin Seq Num
nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Message Unavailable Message
nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message = {}

-- Size Of: Message Unavailable Message
nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message.size =
  nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.end_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.product_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.channel_id.size;

-- Display: Message Unavailable Message
nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bqt_xdp_v1_7_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Id
nyse_equities_bqt_xdp_v1_7_a.source_id = {}

-- Size Of: Source Id
nyse_equities_bqt_xdp_v1_7_a.source_id.size = 10

-- Display: Source Id
nyse_equities_bqt_xdp_v1_7_a.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_equities_bqt_xdp_v1_7_a.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.source_id, range, value, display)

  return offset + length, value
end

-- Refresh Request Message
nyse_equities_bqt_xdp_v1_7_a.refresh_request_message = {}

-- Size Of: Refresh Request Message
nyse_equities_bqt_xdp_v1_7_a.refresh_request_message.size =
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.product_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.channel_id.size;

-- Display: Refresh Request Message
nyse_equities_bqt_xdp_v1_7_a.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_equities_bqt_xdp_v1_7_a.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_equities_bqt_xdp_v1_7_a.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Method
nyse_equities_bqt_xdp_v1_7_a.retransmit_method = {}

-- Size Of: Retransmit Method
nyse_equities_bqt_xdp_v1_7_a.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_equities_bqt_xdp_v1_7_a.retransmit_method.display = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_equities_bqt_xdp_v1_7_a.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Request Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message = {}

-- Size Of: Symbol Index Mapping Request Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message.size =
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.product_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.channel_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.retransmit_method.size;

-- Display: Symbol Index Mapping Request Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, retransmit_method = nyse_equities_bqt_xdp_v1_7_a.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message = {}

-- Size Of: Heartbeat Response Message
nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message.size =
  nyse_equities_bqt_xdp_v1_7_a.source_id.size;

-- Display: Heartbeat Response Message
nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Status
nyse_equities_bqt_xdp_v1_7_a.status = {}

-- Size Of: Status
nyse_equities_bqt_xdp_v1_7_a.status.size = 1

-- Display: Status
nyse_equities_bqt_xdp_v1_7_a.status.display = function(value)
  if value == "0" then
    return "Status: Message Was Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected Due To An Invalid Source Id (1)"
  end
  if value == "2" then
    return "Status: Invalid Sequence Range (2)"
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
    return "Status: 1 Invalid Msg Type Or 2 Mismatch Between Msg Type And Msg Size (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_equities_bqt_xdp_v1_7_a.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.status, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_equities_bqt_xdp_v1_7_a.request_seq_num = {}

-- Size Of: Request Seq Num
nyse_equities_bqt_xdp_v1_7_a.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_equities_bqt_xdp_v1_7_a.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_equities_bqt_xdp_v1_7_a.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Request Response Message
nyse_equities_bqt_xdp_v1_7_a.request_response_message = {}

-- Size Of: Request Response Message
nyse_equities_bqt_xdp_v1_7_a.request_response_message.size =
  nyse_equities_bqt_xdp_v1_7_a.request_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.end_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.product_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.channel_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.status.size;

-- Display: Request Response Message
nyse_equities_bqt_xdp_v1_7_a.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_equities_bqt_xdp_v1_7_a.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_equities_bqt_xdp_v1_7_a.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bqt_xdp_v1_7_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a.channel_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 10 values
  index, status = nyse_equities_bqt_xdp_v1_7_a.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_equities_bqt_xdp_v1_7_a.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.request_response_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message = {}

-- Size Of: Retransmission Request Message
nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message.size =
  nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.end_seq_num.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.product_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.channel_id.size;

-- Display: Retransmission Request Message
nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bqt_xdp_v1_7_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bqt_xdp_v1_7_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Of Trade
nyse_equities_bqt_xdp_v1_7_a.unit_of_trade = {}

-- Size Of: Unit Of Trade
nyse_equities_bqt_xdp_v1_7_a.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_equities_bqt_xdp_v1_7_a.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_equities_bqt_xdp_v1_7_a.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_equities_bqt_xdp_v1_7_a.mpv = {}

-- Size Of: Mpv
nyse_equities_bqt_xdp_v1_7_a.mpv.size = 2

-- Display: Mpv
nyse_equities_bqt_xdp_v1_7_a.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_equities_bqt_xdp_v1_7_a.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.mpv, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_equities_bqt_xdp_v1_7_a.round_lot = {}

-- Size Of: Round Lot
nyse_equities_bqt_xdp_v1_7_a.round_lot.size = 1

-- Display: Round Lot
nyse_equities_bqt_xdp_v1_7_a.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_equities_bqt_xdp_v1_7_a.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_equities_bqt_xdp_v1_7_a.price_resolution = {}

-- Size Of: Price Resolution
nyse_equities_bqt_xdp_v1_7_a.price_resolution.size = 1

-- Display: Price Resolution
nyse_equities_bqt_xdp_v1_7_a.price_resolution.display = function(value)
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
nyse_equities_bqt_xdp_v1_7_a.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_equities_bqt_xdp_v1_7_a.prev_close_volume = {}

-- Size Of: Prev Close Volume
nyse_equities_bqt_xdp_v1_7_a.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_equities_bqt_xdp_v1_7_a.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_equities_bqt_xdp_v1_7_a.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_equities_bqt_xdp_v1_7_a.prev_close_price = {}

-- Size Of: Prev Close Price
nyse_equities_bqt_xdp_v1_7_a.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_equities_bqt_xdp_v1_7_a.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_equities_bqt_xdp_v1_7_a.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_equities_bqt_xdp_v1_7_a.lot_size = {}

-- Size Of: Lot Size
nyse_equities_bqt_xdp_v1_7_a.lot_size.size = 2

-- Display: Lot Size
nyse_equities_bqt_xdp_v1_7_a.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_equities_bqt_xdp_v1_7_a.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_equities_bqt_xdp_v1_7_a.security_type = {}

-- Size Of: Security Type
nyse_equities_bqt_xdp_v1_7_a.security_type.size = 1

-- Display: Security Type
nyse_equities_bqt_xdp_v1_7_a.security_type.display = function(value)
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
nyse_equities_bqt_xdp_v1_7_a.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_equities_bqt_xdp_v1_7_a.price_scale_code = {}

-- Size Of: Price Scale Code
nyse_equities_bqt_xdp_v1_7_a.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_equities_bqt_xdp_v1_7_a.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_equities_bqt_xdp_v1_7_a.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_equities_bqt_xdp_v1_7_a.exchange_code = {}

-- Size Of: Exchange Code
nyse_equities_bqt_xdp_v1_7_a.exchange_code.size = 1

-- Display: Exchange Code
nyse_equities_bqt_xdp_v1_7_a.exchange_code.display = function(value)
  if value == "A" then
    return "Exchange Code: Nyse American (A)"
  end
  if value == "B" then
    return "Exchange Code: Global Otc (B)"
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
  if value == "U" then
    return "Exchange Code: Otcbb (U)"
  end
  if value == "V" then
    return "Exchange Code: Other Otc (V)"
  end
  if value == "Z" then
    return "Exchange Code: Bats (Z)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_equities_bqt_xdp_v1_7_a.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- System Id
nyse_equities_bqt_xdp_v1_7_a.system_id = {}

-- Size Of: System Id
nyse_equities_bqt_xdp_v1_7_a.system_id.size = 1

-- Display: System Id
nyse_equities_bqt_xdp_v1_7_a.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_equities_bqt_xdp_v1_7_a.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.system_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_equities_bqt_xdp_v1_7_a.reserved_1 = {}

-- Size Of: Reserved 1
nyse_equities_bqt_xdp_v1_7_a.reserved_1.size = 1

-- Display: Reserved 1
nyse_equities_bqt_xdp_v1_7_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_equities_bqt_xdp_v1_7_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bqt_xdp_v1_7_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_equities_bqt_xdp_v1_7_a.symbol = {}

-- Size Of: Symbol
nyse_equities_bqt_xdp_v1_7_a.symbol.size = 11

-- Display: Symbol
nyse_equities_bqt_xdp_v1_7_a.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_equities_bqt_xdp_v1_7_a.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message = {}

-- Size Of: Symbol Index Mapping Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message.size =
  nyse_equities_bqt_xdp_v1_7_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v1_7_a.symbol.size + 
  nyse_equities_bqt_xdp_v1_7_a.reserved_1.size + 
  nyse_equities_bqt_xdp_v1_7_a.market_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.system_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.exchange_code.size + 
  nyse_equities_bqt_xdp_v1_7_a.price_scale_code.size + 
  nyse_equities_bqt_xdp_v1_7_a.security_type.size + 
  nyse_equities_bqt_xdp_v1_7_a.lot_size.size + 
  nyse_equities_bqt_xdp_v1_7_a.prev_close_price.size + 
  nyse_equities_bqt_xdp_v1_7_a.prev_close_volume.size + 
  nyse_equities_bqt_xdp_v1_7_a.price_resolution.size + 
  nyse_equities_bqt_xdp_v1_7_a.round_lot.size + 
  nyse_equities_bqt_xdp_v1_7_a.mpv.size + 
  nyse_equities_bqt_xdp_v1_7_a.unit_of_trade.size + 
  nyse_equities_bqt_xdp_v1_7_a.reserved_2.size;

-- Display: Symbol Index Mapping Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_equities_bqt_xdp_v1_7_a.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_equities_bqt_xdp_v1_7_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_equities_bqt_xdp_v1_7_a.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 8 values
  index, exchange_code = nyse_equities_bqt_xdp_v1_7_a.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_equities_bqt_xdp_v1_7_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_equities_bqt_xdp_v1_7_a.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_equities_bqt_xdp_v1_7_a.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_equities_bqt_xdp_v1_7_a.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_equities_bqt_xdp_v1_7_a.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_equities_bqt_xdp_v1_7_a.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
  index, round_lot = nyse_equities_bqt_xdp_v1_7_a.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_equities_bqt_xdp_v1_7_a.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_equities_bqt_xdp_v1_7_a.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_bqt_xdp_v1_7_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message = {}

-- Size Of: Sequence Number Reset Message
nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message.size =
  nyse_equities_bqt_xdp_v1_7_a.source_time.size + 
  nyse_equities_bqt_xdp_v1_7_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v1_7_a.product_id.size + 
  nyse_equities_bqt_xdp_v1_7_a.channel_id.size;

-- Display: Sequence Number Reset Message
nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_equities_bqt_xdp_v1_7_a.payload = {}

-- Calculate runtime size of: Payload
nyse_equities_bqt_xdp_v1_7_a.payload.size = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message.size(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message.size(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_equities_bqt_xdp_v1_7_a.request_response_message.size(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message.size(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_equities_bqt_xdp_v1_7_a.refresh_request_message.size(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message.size(buffer, offset)
  end
  -- Size of Consolidated Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message.size(buffer, offset)
  end
  -- Size of Consolidated Trading Session Change Message
  if message_type == 33 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message.size(buffer, offset)
  end
  -- Size of Consolidated Security Status Message
  if message_type == 34 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message.size(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_equities_bqt_xdp_v1_7_a.refresh_header_message.size(buffer, offset)
  end
  -- Size of Bqt Message
  if message_type == 142 then
    return nyse_equities_bqt_xdp_v1_7_a.bqt_message.size(buffer, offset)
  end
  -- Size of Consolidated Single Sided Quote Message
  if message_type == 143 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message.size(buffer, offset)
  end
  -- Size of Consolidated Trade Message
  if message_type == 220 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message.size(buffer, offset)
  end
  -- Size of Consolidated Trade Cancel Message
  if message_type == 221 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message.size(buffer, offset)
  end
  -- Size of Consolidated Trade Correction Message
  if message_type == 222 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message.size(buffer, offset)
  end
  -- Size of Consolidated Stock Summary Message
  if message_type == 229 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message.size(buffer, offset)
  end
  -- Size of Consolidated Volume Message
  if message_type == 240 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_equities_bqt_xdp_v1_7_a.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_equities_bqt_xdp_v1_7_a.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_bqt_xdp_v1_7_a.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_bqt_xdp_v1_7_a.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_equities_bqt_xdp_v1_7_a.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_bqt_xdp_v1_7_a.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_bqt_xdp_v1_7_a.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_equities_bqt_xdp_v1_7_a.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_bqt_xdp_v1_7_a.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trading Session Change Message
  if message_type == 33 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trading_session_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Security Status Message
  if message_type == 34 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_equities_bqt_xdp_v1_7_a.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bqt Message
  if message_type == 142 then
    return nyse_equities_bqt_xdp_v1_7_a.bqt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Single Sided Quote Message
  if message_type == 143 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_single_sided_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Message
  if message_type == 220 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Cancel Message
  if message_type == 221 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Correction Message
  if message_type == 222 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Stock Summary Message
  if message_type == 229 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_stock_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Volume Message
  if message_type == 240 then
    return nyse_equities_bqt_xdp_v1_7_a.consolidated_volume_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_equities_bqt_xdp_v1_7_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_equities_bqt_xdp_v1_7_a.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_bqt_xdp_v1_7_a.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_bqt_xdp_v1_7_a.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.payload, range, display)

  return nyse_equities_bqt_xdp_v1_7_a.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nyse_equities_bqt_xdp_v1_7_a.message_type = {}

-- Size Of: Message Type
nyse_equities_bqt_xdp_v1_7_a.message_type.size = 2

-- Display: Message Type
nyse_equities_bqt_xdp_v1_7_a.message_type.display = function(value)
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
    return "Message Type: Consolidated Symbol Clear Message (32)"
  end
  if value == 33 then
    return "Message Type: Consolidated Trading Session Change Message (33)"
  end
  if value == 34 then
    return "Message Type: Consolidated Security Status Message (34)"
  end
  if value == 35 then
    return "Message Type: Refresh Header Message (35)"
  end
  if value == 142 then
    return "Message Type: Bqt Message (142)"
  end
  if value == 143 then
    return "Message Type: Consolidated Single Sided Quote Message (143)"
  end
  if value == 220 then
    return "Message Type: Consolidated Trade Message (220)"
  end
  if value == 221 then
    return "Message Type: Consolidated Trade Cancel Message (221)"
  end
  if value == 222 then
    return "Message Type: Consolidated Trade Correction Message (222)"
  end
  if value == 229 then
    return "Message Type: Consolidated Stock Summary Message (229)"
  end
  if value == 240 then
    return "Message Type: Consolidated Volume Message (240)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_equities_bqt_xdp_v1_7_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_equities_bqt_xdp_v1_7_a.message_size = {}

-- Size Of: Message Size
nyse_equities_bqt_xdp_v1_7_a.message_size.size = 2

-- Display: Message Size
nyse_equities_bqt_xdp_v1_7_a.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_equities_bqt_xdp_v1_7_a.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
nyse_equities_bqt_xdp_v1_7_a.message_header = {}

-- Size Of: Message Header
nyse_equities_bqt_xdp_v1_7_a.message_header.size =
  nyse_equities_bqt_xdp_v1_7_a.message_size.size + 
  nyse_equities_bqt_xdp_v1_7_a.message_type.size;

-- Display: Message Header
nyse_equities_bqt_xdp_v1_7_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_equities_bqt_xdp_v1_7_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_equities_bqt_xdp_v1_7_a.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, message_type = nyse_equities_bqt_xdp_v1_7_a.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_equities_bqt_xdp_v1_7_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_header, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_equities_bqt_xdp_v1_7_a.message = {}

-- Calculate size of: Message
nyse_equities_bqt_xdp_v1_7_a.message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + nyse_equities_bqt_xdp_v1_7_a.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nyse_equities_bqt_xdp_v1_7_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_equities_bqt_xdp_v1_7_a.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_equities_bqt_xdp_v1_7_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 19 branches
  index = nyse_equities_bqt_xdp_v1_7_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_equities_bqt_xdp_v1_7_a.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nyse_equities_bqt_xdp_v1_7_a.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bqt_xdp_v1_7_a.message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.message, range, display)
  end

  return nyse_equities_bqt_xdp_v1_7_a.message.fields(buffer, offset, packet, parent)
end

-- Nanoseconds
nyse_equities_bqt_xdp_v1_7_a.nanoseconds = {}

-- Size Of: Nanoseconds
nyse_equities_bqt_xdp_v1_7_a.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_equities_bqt_xdp_v1_7_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_equities_bqt_xdp_v1_7_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_equities_bqt_xdp_v1_7_a.timestamp = {}

-- Size Of: Timestamp
nyse_equities_bqt_xdp_v1_7_a.timestamp.size = 4

-- Display: Timestamp
nyse_equities_bqt_xdp_v1_7_a.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_bqt_xdp_v1_7_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_equities_bqt_xdp_v1_7_a.sequence_number = {}

-- Size Of: Sequence Number
nyse_equities_bqt_xdp_v1_7_a.sequence_number.size = 4

-- Display: Sequence Number
nyse_equities_bqt_xdp_v1_7_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_equities_bqt_xdp_v1_7_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_equities_bqt_xdp_v1_7_a.message_count = {}

-- Size Of: Message Count
nyse_equities_bqt_xdp_v1_7_a.message_count.size = 1

-- Display: Message Count
nyse_equities_bqt_xdp_v1_7_a.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_equities_bqt_xdp_v1_7_a.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_equities_bqt_xdp_v1_7_a.delivery_flag = {}

-- Size Of: Delivery Flag
nyse_equities_bqt_xdp_v1_7_a.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_equities_bqt_xdp_v1_7_a.delivery_flag.display = function(value)
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
nyse_equities_bqt_xdp_v1_7_a.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_equities_bqt_xdp_v1_7_a.packet_size = {}

-- Size Of: Packet Size
nyse_equities_bqt_xdp_v1_7_a.packet_size.size = 2

-- Display: Packet Size
nyse_equities_bqt_xdp_v1_7_a.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_equities_bqt_xdp_v1_7_a.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_equities_bqt_xdp_v1_7_a.packet_header = {}

-- Size Of: Packet Header
nyse_equities_bqt_xdp_v1_7_a.packet_header.size =
  nyse_equities_bqt_xdp_v1_7_a.packet_size.size + 
  nyse_equities_bqt_xdp_v1_7_a.delivery_flag.size + 
  nyse_equities_bqt_xdp_v1_7_a.message_count.size + 
  nyse_equities_bqt_xdp_v1_7_a.sequence_number.size + 
  nyse_equities_bqt_xdp_v1_7_a.timestamp.size + 
  nyse_equities_bqt_xdp_v1_7_a.nanoseconds.size;

-- Display: Packet Header
nyse_equities_bqt_xdp_v1_7_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_equities_bqt_xdp_v1_7_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_equities_bqt_xdp_v1_7_a.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_equities_bqt_xdp_v1_7_a.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_equities_bqt_xdp_v1_7_a.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_equities_bqt_xdp_v1_7_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_bqt_xdp_v1_7_a.timestamp.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_equities_bqt_xdp_v1_7_a.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_equities_bqt_xdp_v1_7_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_equities_bqt_xdp_v1_7_a.packet = {}

-- Dissect Packet
nyse_equities_bqt_xdp_v1_7_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_equities_bqt_xdp_v1_7_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = nyse_equities_bqt_xdp_v1_7_a.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_equities_bqt_xdp_v1_7_a.init()
end

-- Dissector for Nyse Equities Bqt Xdp 1.7.a
function omi_nyse_equities_bqt_xdp_v1_7_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_equities_bqt_xdp_v1_7_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_equities_bqt_xdp_v1_7_a, buffer(), omi_nyse_equities_bqt_xdp_v1_7_a.description, "("..buffer:len().." Bytes)")
  return nyse_equities_bqt_xdp_v1_7_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_equities_bqt_xdp_v1_7_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_equities_bqt_xdp_v1_7_a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities Bqt Xdp 1.7.a
local function omi_nyse_equities_bqt_xdp_v1_7_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_equities_bqt_xdp_v1_7_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_equities_bqt_xdp_v1_7_a
  omi_nyse_equities_bqt_xdp_v1_7_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities Bqt Xdp 1.7.a
omi_nyse_equities_bqt_xdp_v1_7_a:register_heuristic("udp", omi_nyse_equities_bqt_xdp_v1_7_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.7.a
--   Date: Monday, July 24, 2017
--   Specification: NYSE_BQT_Client_Specification_v2.1.pdf
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
