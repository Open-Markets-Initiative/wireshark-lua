-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities Bqt Xdp 1.7.a Protocol
local nyse_equities_bqt_xdp_v1_7_a = Proto("Nyse.Equities.Bqt.Xdp.v1.7.a.Lua", "Nyse Equities Bqt Xdp 1.7.a")

-- Component Tables
local show = {}
local format = {}
local nyse_equities_bqt_xdp_v1_7_a_display = {}
local nyse_equities_bqt_xdp_v1_7_a_dissect = {}
local nyse_equities_bqt_xdp_v1_7_a_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities Bqt Xdp 1.7.a Fields
nyse_equities_bqt_xdp_v1_7_a.fields.ask_price = ProtoField.new("Ask Price", "nyse.equities.bqt.xdp.v1.7.a.askprice", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.ask_quote_condition = ProtoField.new("Ask Quote Condition", "nyse.equities.bqt.xdp.v1.7.a.askquotecondition", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.equities.bqt.xdp.v1.7.a.askvolume", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.equities.bqt.xdp.v1.7.a.beginseqnum", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.bid_price = ProtoField.new("Bid Price", "nyse.equities.bqt.xdp.v1.7.a.bidprice", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.bid_quote_condition = ProtoField.new("Bid Quote Condition", "nyse.equities.bqt.xdp.v1.7.a.bidquotecondition", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.equities.bqt.xdp.v1.7.a.bidvolume", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.bqt_message = ProtoField.new("Bqt Message", "nyse.equities.bqt.xdp.v1.7.a.bqtmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.equities.bqt.xdp.v1.7.a.channelid", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.close = ProtoField.new("Close", "nyse.equities.bqt.xdp.v1.7.a.close", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.complete = ProtoField.new("Complete", "nyse.equities.bqt.xdp.v1.7.a.complete", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_security_status_message = ProtoField.new("Consolidated Security Status Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedsecuritystatusmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_single_sided_quote_message = ProtoField.new("Consolidated Single Sided Quote Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedsinglesidedquotemessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_stock_summary_message = ProtoField.new("Consolidated Stock Summary Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedstocksummarymessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_symbol_clear_message = ProtoField.new("Consolidated Symbol Clear Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedsymbolclearmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_cancel_message = ProtoField.new("Consolidated Trade Cancel Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedtradecancelmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_correction_message = ProtoField.new("Consolidated Trade Correction Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedtradecorrectionmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_message = ProtoField.new("Consolidated Trade Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedtrademessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trading_session_change_message = ProtoField.new("Consolidated Trading Session Change Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedtradingsessionchangemessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_volume_message = ProtoField.new("Consolidated Volume Message", "nyse.equities.bqt.xdp.v1.7.a.consolidatedvolumemessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.equities.bqt.xdp.v1.7.a.currentrefreshpkt", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.bqt.xdp.v1.7.a.deliveryflag", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.equities.bqt.xdp.v1.7.a.endseqnum", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.equities.bqt.xdp.v1.7.a.exchangecode", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.equities.bqt.xdp.v1.7.a.haltcondition", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.equities.bqt.xdp.v1.7.a.heartbeatresponsemessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.high_price = ProtoField.new("High Price", "nyse.equities.bqt.xdp.v1.7.a.highprice", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.equities.bqt.xdp.v1.7.a.lastseqnum", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.equities.bqt.xdp.v1.7.a.lastsymbolseqnum", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.lot_size = ProtoField.new("Lot Size", "nyse.equities.bqt.xdp.v1.7.a.lotsize", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.low_price = ProtoField.new("Low Price", "nyse.equities.bqt.xdp.v1.7.a.lowprice", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.market_id = ProtoField.new("Market Id", "nyse.equities.bqt.xdp.v1.7.a.marketid", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_best_ask = ProtoField.new("Market Id Of Best Ask", "nyse.equities.bqt.xdp.v1.7.a.marketidofbestask", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_best_bid = ProtoField.new("Market Id Of Best Bid", "nyse.equities.bqt.xdp.v1.7.a.marketidofbestbid", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_high_price = ProtoField.new("Market Id Of High Price", "nyse.equities.bqt.xdp.v1.7.a.marketidofhighprice", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_low_price = ProtoField.new("Market Id Of Low Price", "nyse.equities.bqt.xdp.v1.7.a.marketidoflowprice", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_open_price = ProtoField.new("Market Id Of Open Price", "nyse.equities.bqt.xdp.v1.7.a.marketidofopenprice", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_the_close = ProtoField.new("Market Id Of The Close", "nyse.equities.bqt.xdp.v1.7.a.marketidoftheclose", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.market_state = ProtoField.new("Market State", "nyse.equities.bqt.xdp.v1.7.a.marketstate", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.message = ProtoField.new("Message", "nyse.equities.bqt.xdp.v1.7.a.message", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.message_count = ProtoField.new("Message Count", "nyse.equities.bqt.xdp.v1.7.a.messagecount", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.message_header = ProtoField.new("Message Header", "nyse.equities.bqt.xdp.v1.7.a.messageheader", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.message_size = ProtoField.new("Message Size", "nyse.equities.bqt.xdp.v1.7.a.messagesize", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.message_type = ProtoField.new("Message Type", "nyse.equities.bqt.xdp.v1.7.a.messagetype", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.equities.bqt.xdp.v1.7.a.messageunavailablemessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.mpv = ProtoField.new("Mpv", "nyse.equities.bqt.xdp.v1.7.a.mpv", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.bqt.xdp.v1.7.a.nanoseconds", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.equities.bqt.xdp.v1.7.a.nextsourceseqnum", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.num_close_prices = ProtoField.new("Num Close Prices", "nyse.equities.bqt.xdp.v1.7.a.numcloseprices", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.open = ProtoField.new("Open", "nyse.equities.bqt.xdp.v1.7.a.open", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.equities.bqt.xdp.v1.7.a.originaltradeid", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.packet = ProtoField.new("Packet", "nyse.equities.bqt.xdp.v1.7.a.packet", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.bqt.xdp.v1.7.a.packetheader", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.bqt.xdp.v1.7.a.packetsize", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.payload = ProtoField.new("Payload", "nyse.equities.bqt.xdp.v1.7.a.payload", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.equities.bqt.xdp.v1.7.a.prevcloseprice", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.equities.bqt.xdp.v1.7.a.prevclosevolume", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.price = ProtoField.new("Price", "nyse.equities.bqt.xdp.v1.7.a.price", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.price_1 = ProtoField.new("Price 1", "nyse.equities.bqt.xdp.v1.7.a.price1", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.price_2 = ProtoField.new("Price 2", "nyse.equities.bqt.xdp.v1.7.a.price2", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.equities.bqt.xdp.v1.7.a.priceresolution", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.equities.bqt.xdp.v1.7.a.pricescalecode", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.product_id = ProtoField.new("Product Id", "nyse.equities.bqt.xdp.v1.7.a.productid", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.equities.bqt.xdp.v1.7.a.quotecondition", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.reason = ProtoField.new("Reason", "nyse.equities.bqt.xdp.v1.7.a.reason", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.equities.bqt.xdp.v1.7.a.refreshheadermessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.equities.bqt.xdp.v1.7.a.refreshrequestmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.equities.bqt.xdp.v1.7.a.requestresponsemessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.equities.bqt.xdp.v1.7.a.requestseqnum", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.equities.bqt.xdp.v1.7.a.reserved1", ftypes.BYTES)
nyse_equities_bqt_xdp_v1_7_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.equities.bqt.xdp.v1.7.a.reserved2", ftypes.BYTES)
nyse_equities_bqt_xdp_v1_7_a.fields.retail_pricing_indicator = ProtoField.new("Retail Pricing Indicator", "nyse.equities.bqt.xdp.v1.7.a.retailpricingindicator", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.equities.bqt.xdp.v1.7.a.retransmissionrequestmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.equities.bqt.xdp.v1.7.a.retransmitmethod", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.round_lot = ProtoField.new("Round Lot", "nyse.equities.bqt.xdp.v1.7.a.roundlot", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.equities.bqt.xdp.v1.7.a.rpiindicator", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.security_status = ProtoField.new("Security Status", "nyse.equities.bqt.xdp.v1.7.a.securitystatus", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.security_type = ProtoField.new("Security Type", "nyse.equities.bqt.xdp.v1.7.a.securitytype", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.bqt.xdp.v1.7.a.sequencenumber", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.equities.bqt.xdp.v1.7.a.sequencenumberresetmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.session_state = ProtoField.new("Session State", "nyse.equities.bqt.xdp.v1.7.a.sessionstate", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.side = ProtoField.new("Side", "nyse.equities.bqt.xdp.v1.7.a.side", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.source_id = ProtoField.new("Source Id", "nyse.equities.bqt.xdp.v1.7.a.sourceid", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.source_time = ProtoField.new("Source Time", "nyse.equities.bqt.xdp.v1.7.a.sourcetime", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.bqt.xdp.v1.7.a.sourcetimens", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.ssr_state = ProtoField.new("Ssr State", "nyse.equities.bqt.xdp.v1.7.a.ssrstate", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.equities.bqt.xdp.v1.7.a.ssrtriggeringexchangeid", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.equities.bqt.xdp.v1.7.a.ssrtriggeringvolume", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.status = ProtoField.new("Status", "nyse.equities.bqt.xdp.v1.7.a.status", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.symbol = ProtoField.new("Symbol", "nyse.equities.bqt.xdp.v1.7.a.symbol", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.bqt.xdp.v1.7.a.symbolindex", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.equities.bqt.xdp.v1.7.a.symbolindexmappingmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.equities.bqt.xdp.v1.7.a.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.bqt.xdp.v1.7.a.symbolseqnum", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.symbol_seq_number = ProtoField.new("Symbol Seq Number", "nyse.equities.bqt.xdp.v1.7.a.symbolseqnumber", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.system_id = ProtoField.new("System Id", "nyse.equities.bqt.xdp.v1.7.a.systemid", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.time = ProtoField.new("Time", "nyse.equities.bqt.xdp.v1.7.a.time", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.bqt.xdp.v1.7.a.timestamp", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.equities.bqt.xdp.v1.7.a.totalrefreshpkts", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.total_volume = ProtoField.new("Total Volume", "nyse.equities.bqt.xdp.v1.7.a.totalvolume", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_1 = ProtoField.new("Trade Condition 1", "nyse.equities.bqt.xdp.v1.7.a.tradecondition1", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_2 = ProtoField.new("Trade Condition 2", "nyse.equities.bqt.xdp.v1.7.a.tradecondition2", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_3 = ProtoField.new("Trade Condition 3", "nyse.equities.bqt.xdp.v1.7.a.tradecondition3", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_4 = ProtoField.new("Trade Condition 4", "nyse.equities.bqt.xdp.v1.7.a.tradecondition4", ftypes.STRING)
nyse_equities_bqt_xdp_v1_7_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.equities.bqt.xdp.v1.7.a.tradeid", ftypes.UINT32)
nyse_equities_bqt_xdp_v1_7_a.fields.trade_session = ProtoField.new("Trade Session", "nyse.equities.bqt.xdp.v1.7.a.tradesession", ftypes.UINT8)
nyse_equities_bqt_xdp_v1_7_a.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.equities.bqt.xdp.v1.7.a.unitoftrade", ftypes.UINT16)
nyse_equities_bqt_xdp_v1_7_a.fields.volume = ProtoField.new("Volume", "nyse.equities.bqt.xdp.v1.7.a.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

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
nyse_equities_bqt_xdp_v1_7_a.prefs.show_bqt_message = Pref.bool("Show Bqt Message", show.bqt_message, "Parse and add Bqt Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_security_status_message = Pref.bool("Show Consolidated Security Status Message", show.consolidated_security_status_message, "Parse and add Consolidated Security Status Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_single_sided_quote_message = Pref.bool("Show Consolidated Single Sided Quote Message", show.consolidated_single_sided_quote_message, "Parse and add Consolidated Single Sided Quote Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_stock_summary_message = Pref.bool("Show Consolidated Stock Summary Message", show.consolidated_stock_summary_message, "Parse and add Consolidated Stock Summary Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_symbol_clear_message = Pref.bool("Show Consolidated Symbol Clear Message", show.consolidated_symbol_clear_message, "Parse and add Consolidated Symbol Clear Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_cancel_message = Pref.bool("Show Consolidated Trade Cancel Message", show.consolidated_trade_cancel_message, "Parse and add Consolidated Trade Cancel Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_correction_message = Pref.bool("Show Consolidated Trade Correction Message", show.consolidated_trade_correction_message, "Parse and add Consolidated Trade Correction Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_message = Pref.bool("Show Consolidated Trade Message", show.consolidated_trade_message, "Parse and add Consolidated Trade Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trading_session_change_message = Pref.bool("Show Consolidated Trading Session Change Message", show.consolidated_trading_session_change_message, "Parse and add Consolidated Trading Session Change Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_volume_message = Pref.bool("Show Consolidated Volume Message", show.consolidated_volume_message, "Parse and add Consolidated Volume Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
nyse_equities_bqt_xdp_v1_7_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_equities_bqt_xdp_v1_7_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.bqt_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_bqt_message then
    show.bqt_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_bqt_message
    changed = true
  end
  if show.consolidated_security_status_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_security_status_message then
    show.consolidated_security_status_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_security_status_message
    changed = true
  end
  if show.consolidated_single_sided_quote_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_single_sided_quote_message then
    show.consolidated_single_sided_quote_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_single_sided_quote_message
    changed = true
  end
  if show.consolidated_stock_summary_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_stock_summary_message then
    show.consolidated_stock_summary_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_stock_summary_message
    changed = true
  end
  if show.consolidated_symbol_clear_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_symbol_clear_message then
    show.consolidated_symbol_clear_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_symbol_clear_message
    changed = true
  end
  if show.consolidated_trade_cancel_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_cancel_message then
    show.consolidated_trade_cancel_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_cancel_message
    changed = true
  end
  if show.consolidated_trade_correction_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_correction_message then
    show.consolidated_trade_correction_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_correction_message
    changed = true
  end
  if show.consolidated_trade_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_message then
    show.consolidated_trade_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trade_message
    changed = true
  end
  if show.consolidated_trading_session_change_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trading_session_change_message then
    show.consolidated_trading_session_change_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_trading_session_change_message
    changed = true
  end
  if show.consolidated_volume_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_volume_message then
    show.consolidated_volume_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_consolidated_volume_message
    changed = true
  end
  if show.heartbeat_response_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_message then
    show.message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_header then
    show.message_header = nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_unavailable_message then
    show.message_unavailable_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet then
    show.packet = nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet_header then
    show.packet_header = nyse_equities_bqt_xdp_v1_7_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_header_message then
    show.refresh_header_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_request_message then
    show.refresh_request_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_request_response_message then
    show.request_response_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_retransmission_request_message then
    show.retransmission_request_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_retransmission_request_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = nyse_equities_bqt_xdp_v1_7_a.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.payload ~= nyse_equities_bqt_xdp_v1_7_a.prefs.show_payload then
    show.payload = nyse_equities_bqt_xdp_v1_7_a.prefs.show_payload
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

-- Size: Complete
nyse_equities_bqt_xdp_v1_7_a_size_of.complete = 1

-- Display: Complete
nyse_equities_bqt_xdp_v1_7_a_display.complete = function(value)
  if value == 0 then
    return "Complete: Normal (0)"
  end
  if value == 1 then
    return "Complete: Abnormal (1)"
  end

  return "Complete: Unknown("..value..")"
end

-- Dissect: Complete
nyse_equities_bqt_xdp_v1_7_a_dissect.complete = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.complete
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.complete(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.complete, range, value, display)

  return offset + length, value
end

-- Size: Reason
nyse_equities_bqt_xdp_v1_7_a_size_of.reason = 1

-- Display: Reason
nyse_equities_bqt_xdp_v1_7_a_display.reason = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.reason = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.reason(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Total Volume
nyse_equities_bqt_xdp_v1_7_a_size_of.total_volume = 4

-- Display: Total Volume
nyse_equities_bqt_xdp_v1_7_a_display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_equities_bqt_xdp_v1_7_a_dissect.total_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.total_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.total_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Size: Symbol Seq Number
nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_number = 4

-- Display: Symbol Seq Number
nyse_equities_bqt_xdp_v1_7_a_display.symbol_seq_number = function(value)
  return "Symbol Seq Number: "..value
end

-- Dissect: Symbol Seq Number
nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_number = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.symbol_seq_number(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.symbol_seq_number, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index = 4

-- Display: Symbol Index
nyse_equities_bqt_xdp_v1_7_a_display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Consolidated Volume Message
nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_volume_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_number

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.total_volume

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.reason

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.complete

  return index
end

-- Display: Consolidated Volume Message
nyse_equities_bqt_xdp_v1_7_a_display.consolidated_volume_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Volume Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_volume_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_equities_bqt_xdp_v1_7_a_dissect.total_volume(buffer, index, packet, parent)

  -- Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reason = nyse_equities_bqt_xdp_v1_7_a_dissect.reason(buffer, index, packet, parent)

  -- Complete: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, complete = nyse_equities_bqt_xdp_v1_7_a_dissect.complete(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Volume Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_volume_message = function(buffer, offset, packet, parent)
  if show.consolidated_volume_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_volume_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_volume_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.consolidated_volume_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_volume_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Close
nyse_equities_bqt_xdp_v1_7_a_size_of.close = 4

-- Display: Close
nyse_equities_bqt_xdp_v1_7_a_display.close = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_equities_bqt_xdp_v1_7_a_dissect.close = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.close
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.close(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.close, range, value, display)

  return offset + length, value
end

-- Size: Market Id Of The Close
nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_the_close = 2

-- Display: Market Id Of The Close
nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_the_close = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_the_close = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_the_close
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_the_close(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_the_close, range, value, display)

  return offset + length, value
end

-- Size: Num Close Prices
nyse_equities_bqt_xdp_v1_7_a_size_of.num_close_prices = 1

-- Display: Num Close Prices
nyse_equities_bqt_xdp_v1_7_a_display.num_close_prices = function(value)
  return "Num Close Prices: "..value
end

-- Dissect: Num Close Prices
nyse_equities_bqt_xdp_v1_7_a_dissect.num_close_prices = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.num_close_prices
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.num_close_prices(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.num_close_prices, range, value, display)

  return offset + length, value
end

-- Size: Market Id Of Open Price
nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_open_price = 2

-- Display: Market Id Of Open Price
nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_open_price = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_open_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_open_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_open_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_open_price, range, value, display)

  return offset + length, value
end

-- Size: Market Id Of Low Price
nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_low_price = 2

-- Display: Market Id Of Low Price
nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_low_price = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_low_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_low_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_low_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_low_price, range, value, display)

  return offset + length, value
end

-- Size: Market Id Of High Price
nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_high_price = 2

-- Display: Market Id Of High Price
nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_high_price = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_high_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_high_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_high_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_high_price, range, value, display)

  return offset + length, value
end

-- Size: Open
nyse_equities_bqt_xdp_v1_7_a_size_of.open = 4

-- Display: Open
nyse_equities_bqt_xdp_v1_7_a_display.open = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_equities_bqt_xdp_v1_7_a_dissect.open = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.open
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.open(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.open, range, value, display)

  return offset + length, value
end

-- Size: Low Price
nyse_equities_bqt_xdp_v1_7_a_size_of.low_price = 4

-- Display: Low Price
nyse_equities_bqt_xdp_v1_7_a_display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_equities_bqt_xdp_v1_7_a_dissect.low_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.low_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.low_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
nyse_equities_bqt_xdp_v1_7_a_size_of.high_price = 4

-- Display: High Price
nyse_equities_bqt_xdp_v1_7_a_display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_equities_bqt_xdp_v1_7_a_dissect.high_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.high_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.high_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Source Time Ns
nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns = 4

-- Display: Source Time Ns
nyse_equities_bqt_xdp_v1_7_a_display.source_time_ns = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_equities_bqt_xdp_v1_7_a_dissect.source_time_ns = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.source_time_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Size: Source Time
nyse_equities_bqt_xdp_v1_7_a_size_of.source_time = 4

-- Display: Source Time
nyse_equities_bqt_xdp_v1_7_a_display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_equities_bqt_xdp_v1_7_a_dissect.source_time = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.source_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.source_time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Consolidated Stock Summary Message
nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_stock_summary_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.high_price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.low_price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.open

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.total_volume

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_high_price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_low_price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_open_price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.num_close_prices

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_the_close

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.close

  return index
end

-- Display: Consolidated Stock Summary Message
nyse_equities_bqt_xdp_v1_7_a_display.consolidated_stock_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Stock Summary Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_stock_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- High Price: 4 Byte Unsigned Fixed Width Integer
  index, high_price = nyse_equities_bqt_xdp_v1_7_a_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 4 Byte Unsigned Fixed Width Integer
  index, low_price = nyse_equities_bqt_xdp_v1_7_a_dissect.low_price(buffer, index, packet, parent)

  -- Open: 4 Byte Unsigned Fixed Width Integer
  index, open = nyse_equities_bqt_xdp_v1_7_a_dissect.open(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_equities_bqt_xdp_v1_7_a_dissect.total_volume(buffer, index, packet, parent)

  -- Market Id Of High Price: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_high_price = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_high_price(buffer, index, packet, parent)

  -- Market Id Of Low Price: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_low_price = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_low_price(buffer, index, packet, parent)

  -- Market Id Of Open Price: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_open_price = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_open_price(buffer, index, packet, parent)

  -- Num Close Prices: 1 Byte Unsigned Fixed Width Integer
  index, num_close_prices = nyse_equities_bqt_xdp_v1_7_a_dissect.num_close_prices(buffer, index, packet, parent)

  -- Market Id Of The Close: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_the_close = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_the_close(buffer, index, packet, parent)

  -- Close: 4 Byte Unsigned Fixed Width Integer
  index, close = nyse_equities_bqt_xdp_v1_7_a_dissect.close(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Stock Summary Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_stock_summary_message = function(buffer, offset, packet, parent)
  if show.consolidated_stock_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_stock_summary_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_stock_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.consolidated_stock_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_stock_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Market Id
nyse_equities_bqt_xdp_v1_7_a_size_of.market_id = 2

-- Display: Market Id
nyse_equities_bqt_xdp_v1_7_a_display.market_id = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.market_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition 4
nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_4 = 1

-- Display: Trade Condition 4
nyse_equities_bqt_xdp_v1_7_a_display.trade_condition_4 = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_4 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_4
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.trade_condition_4(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_4, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition 3
nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_3 = 1

-- Display: Trade Condition 3
nyse_equities_bqt_xdp_v1_7_a_display.trade_condition_3 = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_3 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_3
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.trade_condition_3(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_3, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition 2
nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_2 = 1

-- Display: Trade Condition 2
nyse_equities_bqt_xdp_v1_7_a_display.trade_condition_2 = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.trade_condition_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_2, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition 1
nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_1 = 1

-- Display: Trade Condition 1
nyse_equities_bqt_xdp_v1_7_a_display.trade_condition_1 = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.trade_condition_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.trade_condition_1, range, value, display)

  return offset + length, value
end

-- Size: Volume
nyse_equities_bqt_xdp_v1_7_a_size_of.volume = 4

-- Display: Volume
nyse_equities_bqt_xdp_v1_7_a_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_equities_bqt_xdp_v1_7_a_dissect.volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price
nyse_equities_bqt_xdp_v1_7_a_size_of.price = 4

-- Display: Price
nyse_equities_bqt_xdp_v1_7_a_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_equities_bqt_xdp_v1_7_a_dissect.price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
nyse_equities_bqt_xdp_v1_7_a_size_of.trade_id = 4

-- Display: Trade Id
nyse_equities_bqt_xdp_v1_7_a_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_equities_bqt_xdp_v1_7_a_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Original Trade Id
nyse_equities_bqt_xdp_v1_7_a_size_of.original_trade_id = 4

-- Display: Original Trade Id
nyse_equities_bqt_xdp_v1_7_a_display.original_trade_id = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nyse_equities_bqt_xdp_v1_7_a_dissect.original_trade_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.original_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.original_trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_number

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.original_trade_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.volume

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_1

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_2

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_3

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_4

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id

  return index
end

-- Display: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v1_7_a_display.consolidated_trade_correction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Original Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_id = nyse_equities_bqt_xdp_v1_7_a_dissect.original_trade_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_bqt_xdp_v1_7_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_bqt_xdp_v1_7_a_dissect.volume(buffer, index, packet, parent)

  -- Trade Condition 1: 1 Byte Ascii String Enum with 4 values
  index, trade_condition_1 = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_1(buffer, index, packet, parent)

  -- Trade Condition 2: 1 Byte Ascii String Enum with 7 values
  index, trade_condition_2 = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_2(buffer, index, packet, parent)

  -- Trade Condition 3: 1 Byte Ascii String Enum with 5 values
  index, trade_condition_3 = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_3(buffer, index, packet, parent)

  -- Trade Condition 4: 1 Byte Ascii String Enum with 12 values
  index, trade_condition_4 = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_4(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_correction_message = function(buffer, offset, packet, parent)
  if show.consolidated_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_correction_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_correction_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.consolidated_trade_correction_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_correction_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_number

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id

  return index
end

-- Display: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v1_7_a_display.consolidated_trade_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_id(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_cancel_message = function(buffer, offset, packet, parent)
  if show.consolidated_trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_cancel_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_cancel_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.consolidated_trade_cancel_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_cancel_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a_display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Consolidated Trade Message
nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_trade_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.volume

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_1

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_2

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_3

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_condition_4

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id

  return index
end

-- Display: Consolidated Trade Message
nyse_equities_bqt_xdp_v1_7_a_display.consolidated_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_bqt_xdp_v1_7_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_bqt_xdp_v1_7_a_dissect.volume(buffer, index, packet, parent)

  -- Trade Condition 1: 1 Byte Ascii String Enum with 4 values
  index, trade_condition_1 = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_1(buffer, index, packet, parent)

  -- Trade Condition 2: 1 Byte Ascii String Enum with 7 values
  index, trade_condition_2 = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_2(buffer, index, packet, parent)

  -- Trade Condition 3: 1 Byte Ascii String Enum with 5 values
  index, trade_condition_3 = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_3(buffer, index, packet, parent)

  -- Trade Condition 4: 1 Byte Ascii String Enum with 12 values
  index, trade_condition_4 = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_condition_4(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_message = function(buffer, offset, packet, parent)
  if show.consolidated_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trade_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.consolidated_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Rpi Indicator
nyse_equities_bqt_xdp_v1_7_a_size_of.rpi_indicator = 1

-- Display: Rpi Indicator
nyse_equities_bqt_xdp_v1_7_a_display.rpi_indicator = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.rpi_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.rpi_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.rpi_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
nyse_equities_bqt_xdp_v1_7_a_size_of.quote_condition = 1

-- Display: Quote Condition
nyse_equities_bqt_xdp_v1_7_a_display.quote_condition = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Side
nyse_equities_bqt_xdp_v1_7_a_size_of.side = 1

-- Display: Side
nyse_equities_bqt_xdp_v1_7_a_display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_equities_bqt_xdp_v1_7_a_dissect.side = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.side(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_single_sided_quote_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_number

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.side

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.volume

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.quote_condition

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.rpi_indicator

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id

  return index
end

-- Display: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v1_7_a_display.consolidated_single_sided_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_single_sided_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_equities_bqt_xdp_v1_7_a_dissect.side(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_bqt_xdp_v1_7_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_bqt_xdp_v1_7_a_dissect.volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_equities_bqt_xdp_v1_7_a_dissect.quote_condition(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index, rpi_indicator = nyse_equities_bqt_xdp_v1_7_a_dissect.rpi_indicator(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_single_sided_quote_message = function(buffer, offset, packet, parent)
  if show.consolidated_single_sided_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_single_sided_quote_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_single_sided_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.consolidated_single_sided_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_single_sided_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Market Id Of Best Bid
nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_best_bid = 2

-- Display: Market Id Of Best Bid
nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_best_bid = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_best_bid = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_best_bid
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_best_bid(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_best_bid, range, value, display)

  return offset + length, value
end

-- Size: Market Id Of Best Ask
nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_best_ask = 2

-- Display: Market Id Of Best Ask
nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_best_ask = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_best_ask = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_best_ask
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.market_id_of_best_ask(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.market_id_of_best_ask, range, value, display)

  return offset + length, value
end

-- Size: Retail Pricing Indicator
nyse_equities_bqt_xdp_v1_7_a_size_of.retail_pricing_indicator = 1

-- Display: Retail Pricing Indicator
nyse_equities_bqt_xdp_v1_7_a_display.retail_pricing_indicator = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.retail_pricing_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.retail_pricing_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.retail_pricing_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.retail_pricing_indicator, range, value, display)

  return offset + length, value
end

-- Size: Bid Quote Condition
nyse_equities_bqt_xdp_v1_7_a_size_of.bid_quote_condition = 1

-- Display: Bid Quote Condition
nyse_equities_bqt_xdp_v1_7_a_display.bid_quote_condition = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.bid_quote_condition = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.bid_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.bid_quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Ask Quote Condition
nyse_equities_bqt_xdp_v1_7_a_size_of.ask_quote_condition = 1

-- Display: Ask Quote Condition
nyse_equities_bqt_xdp_v1_7_a_display.ask_quote_condition = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.ask_quote_condition = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.ask_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.ask_quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.ask_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Bid Volume
nyse_equities_bqt_xdp_v1_7_a_size_of.bid_volume = 4

-- Display: Bid Volume
nyse_equities_bqt_xdp_v1_7_a_display.bid_volume = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_equities_bqt_xdp_v1_7_a_dissect.bid_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.bid_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.bid_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
nyse_equities_bqt_xdp_v1_7_a_size_of.bid_price = 4

-- Display: Bid Price
nyse_equities_bqt_xdp_v1_7_a_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_equities_bqt_xdp_v1_7_a_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.bid_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Volume
nyse_equities_bqt_xdp_v1_7_a_size_of.ask_volume = 4

-- Display: Ask Volume
nyse_equities_bqt_xdp_v1_7_a_display.ask_volume = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_equities_bqt_xdp_v1_7_a_dissect.ask_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.ask_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.ask_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
nyse_equities_bqt_xdp_v1_7_a_size_of.ask_price = 4

-- Display: Ask Price
nyse_equities_bqt_xdp_v1_7_a_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_equities_bqt_xdp_v1_7_a_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.ask_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bqt Message
nyse_equities_bqt_xdp_v1_7_a_size_of.bqt_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_number

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.ask_price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.ask_volume

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.bid_price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.bid_volume

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.ask_quote_condition

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.bid_quote_condition

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.retail_pricing_indicator

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_best_ask

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id_of_best_bid

  return index
end

-- Display: Bqt Message
nyse_equities_bqt_xdp_v1_7_a_display.bqt_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bqt Message
nyse_equities_bqt_xdp_v1_7_a_dissect.bqt_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_number = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Unsigned Fixed Width Integer
  index, ask_price = nyse_equities_bqt_xdp_v1_7_a_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_equities_bqt_xdp_v1_7_a_dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Unsigned Fixed Width Integer
  index, bid_price = nyse_equities_bqt_xdp_v1_7_a_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_equities_bqt_xdp_v1_7_a_dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, ask_quote_condition = nyse_equities_bqt_xdp_v1_7_a_dissect.ask_quote_condition(buffer, index, packet, parent)

  -- Bid Quote Condition: 1 Byte Ascii String Enum with 4 values
  index, bid_quote_condition = nyse_equities_bqt_xdp_v1_7_a_dissect.bid_quote_condition(buffer, index, packet, parent)

  -- Retail Pricing Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, retail_pricing_indicator = nyse_equities_bqt_xdp_v1_7_a_dissect.retail_pricing_indicator(buffer, index, packet, parent)

  -- Market Id Of Best Ask: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_best_ask = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_best_ask(buffer, index, packet, parent)

  -- Market Id Of Best Bid: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_id_of_best_bid = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id_of_best_bid(buffer, index, packet, parent)

  return index
end

-- Dissect: Bqt Message
nyse_equities_bqt_xdp_v1_7_a_dissect.bqt_message = function(buffer, offset, packet, parent)
  if show.bqt_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.bqt_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.bqt_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.bqt_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.bqt_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Last Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a_size_of.last_symbol_seq_num = 4

-- Display: Last Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a_display.last_symbol_seq_num = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_equities_bqt_xdp_v1_7_a_dissect.last_symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.last_symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.last_symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Last Seq Num
nyse_equities_bqt_xdp_v1_7_a_size_of.last_seq_num = 4

-- Display: Last Seq Num
nyse_equities_bqt_xdp_v1_7_a_display.last_seq_num = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_equities_bqt_xdp_v1_7_a_dissect.last_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.last_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.last_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Total Refresh Pkts
nyse_equities_bqt_xdp_v1_7_a_size_of.total_refresh_pkts = 2

-- Display: Total Refresh Pkts
nyse_equities_bqt_xdp_v1_7_a_display.total_refresh_pkts = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_equities_bqt_xdp_v1_7_a_dissect.total_refresh_pkts = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.total_refresh_pkts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.total_refresh_pkts(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Size: Current Refresh Pkt
nyse_equities_bqt_xdp_v1_7_a_size_of.current_refresh_pkt = 2

-- Display: Current Refresh Pkt
nyse_equities_bqt_xdp_v1_7_a_display.current_refresh_pkt = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_equities_bqt_xdp_v1_7_a_dissect.current_refresh_pkt = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.current_refresh_pkt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.current_refresh_pkt(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Header Message
nyse_equities_bqt_xdp_v1_7_a_size_of.refresh_header_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.current_refresh_pkt

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.total_refresh_pkts

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.last_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.last_symbol_seq_num

  return index
end

-- Display: Refresh Header Message
nyse_equities_bqt_xdp_v1_7_a_display.refresh_header_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_header_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_equities_bqt_xdp_v1_7_a_dissect.current_refresh_pkt(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_equities_bqt_xdp_v1_7_a_dissect.total_refresh_pkts(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.last_seq_num(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.last_symbol_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_header_message = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_header_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.refresh_header_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_header_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Session State
nyse_equities_bqt_xdp_v1_7_a_size_of.session_state = 1

-- Display: Session State
nyse_equities_bqt_xdp_v1_7_a_display.session_state = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.session_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.session_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.session_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.session_state, range, value, display)

  return offset + length, value
end

-- Size: Market State
nyse_equities_bqt_xdp_v1_7_a_size_of.market_state = 1

-- Display: Market State
nyse_equities_bqt_xdp_v1_7_a_display.market_state = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.market_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.market_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.market_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Size: Ssr State
nyse_equities_bqt_xdp_v1_7_a_size_of.ssr_state = 1

-- Display: Ssr State
nyse_equities_bqt_xdp_v1_7_a_display.ssr_state = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_equities_bqt_xdp_v1_7_a_dissect.ssr_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.ssr_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.ssr_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Size: Time
nyse_equities_bqt_xdp_v1_7_a_size_of.time = 4

-- Display: Time
nyse_equities_bqt_xdp_v1_7_a_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_equities_bqt_xdp_v1_7_a_dissect.time = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.time, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Volume
nyse_equities_bqt_xdp_v1_7_a_size_of.ssr_triggering_volume = 4

-- Display: Ssr Triggering Volume
nyse_equities_bqt_xdp_v1_7_a_display.ssr_triggering_volume = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_equities_bqt_xdp_v1_7_a_dissect.ssr_triggering_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.ssr_triggering_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.ssr_triggering_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Exchange Id
nyse_equities_bqt_xdp_v1_7_a_size_of.ssr_triggering_exchange_id = 1

-- Display: Ssr Triggering Exchange Id
nyse_equities_bqt_xdp_v1_7_a_display.ssr_triggering_exchange_id = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.ssr_triggering_exchange_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.ssr_triggering_exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.ssr_triggering_exchange_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Size: Price 2
nyse_equities_bqt_xdp_v1_7_a_size_of.price_2 = 4

-- Display: Price 2
nyse_equities_bqt_xdp_v1_7_a_display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_equities_bqt_xdp_v1_7_a_dissect.price_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.price_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.price_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.price_2, range, value, display)

  return offset + length, value
end

-- Size: Price 1
nyse_equities_bqt_xdp_v1_7_a_size_of.price_1 = 4

-- Display: Price 1
nyse_equities_bqt_xdp_v1_7_a_display.price_1 = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_equities_bqt_xdp_v1_7_a_dissect.price_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.price_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.price_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.price_1, range, value, display)

  return offset + length, value
end

-- Size: Reserved 2
nyse_equities_bqt_xdp_v1_7_a_size_of.reserved_2 = 2

-- Display: Reserved 2
nyse_equities_bqt_xdp_v1_7_a_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_equities_bqt_xdp_v1_7_a_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.reserved_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bqt_xdp_v1_7_a_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Size: Halt Condition
nyse_equities_bqt_xdp_v1_7_a_size_of.halt_condition = 1

-- Display: Halt Condition
nyse_equities_bqt_xdp_v1_7_a_display.halt_condition = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.halt_condition = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.halt_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Status
nyse_equities_bqt_xdp_v1_7_a_size_of.security_status = 1

-- Display: Security Status
nyse_equities_bqt_xdp_v1_7_a_display.security_status = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.security_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.security_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Consolidated Security Status Message
nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_security_status_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.security_status

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.halt_condition

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.reserved_2

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.price_1

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.price_2

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.ssr_triggering_exchange_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.ssr_triggering_volume

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.time

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.ssr_state

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_state

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.session_state

  return index
end

-- Display: Consolidated Security Status Message
nyse_equities_bqt_xdp_v1_7_a_display.consolidated_security_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Security Status Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index, security_status = nyse_equities_bqt_xdp_v1_7_a_dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 11 values
  index, halt_condition = nyse_equities_bqt_xdp_v1_7_a_dissect.halt_condition(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_bqt_xdp_v1_7_a_dissect.reserved_2(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_equities_bqt_xdp_v1_7_a_dissect.price_1(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_equities_bqt_xdp_v1_7_a_dissect.price_2(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 18 values
  index, ssr_triggering_exchange_id = nyse_equities_bqt_xdp_v1_7_a_dissect.ssr_triggering_exchange_id(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_equities_bqt_xdp_v1_7_a_dissect.ssr_triggering_volume(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_equities_bqt_xdp_v1_7_a_dissect.time(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index, ssr_state = nyse_equities_bqt_xdp_v1_7_a_dissect.ssr_state(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_equities_bqt_xdp_v1_7_a_dissect.market_state(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String Enum with 3 values
  index, session_state = nyse_equities_bqt_xdp_v1_7_a_dissect.session_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Security Status Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_security_status_message = function(buffer, offset, packet, parent)
  if show.consolidated_security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_security_status_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_security_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.consolidated_security_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_security_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Session
nyse_equities_bqt_xdp_v1_7_a_size_of.trade_session = 1

-- Display: Trade Session
nyse_equities_bqt_xdp_v1_7_a_display.trade_session = function(value)
  return "Trade Session: "..value
end

-- Dissect: Trade Session
nyse_equities_bqt_xdp_v1_7_a_dissect.trade_session = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.trade_session
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.trade_session(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.trade_session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Consolidated Trading Session Change Message
nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_trading_session_change_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.trade_session

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id

  return index
end

-- Display: Consolidated Trading Session Change Message
nyse_equities_bqt_xdp_v1_7_a_display.consolidated_trading_session_change_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trading Session Change Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trading_session_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Session: 1 Byte Unsigned Fixed Width Integer
  index, trade_session = nyse_equities_bqt_xdp_v1_7_a_dissect.trade_session(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trading Session Change Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trading_session_change_message = function(buffer, offset, packet, parent)
  if show.consolidated_trading_session_change_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_trading_session_change_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trading_session_change_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.consolidated_trading_session_change_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trading_session_change_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Next Source Seq Num
nyse_equities_bqt_xdp_v1_7_a_size_of.next_source_seq_num = 4

-- Display: Next Source Seq Num
nyse_equities_bqt_xdp_v1_7_a_display.next_source_seq_num = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_equities_bqt_xdp_v1_7_a_dissect.next_source_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.next_source_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.next_source_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Consolidated Symbol Clear Message
nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_symbol_clear_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.next_source_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id

  return index
end

-- Display: Consolidated Symbol Clear Message
nyse_equities_bqt_xdp_v1_7_a_display.consolidated_symbol_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Symbol Clear Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.next_source_seq_num(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Symbol Clear Message
nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_symbol_clear_message = function(buffer, offset, packet, parent)
  if show.consolidated_symbol_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.consolidated_symbol_clear_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_symbol_clear_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.consolidated_symbol_clear_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_symbol_clear_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Channel Id
nyse_equities_bqt_xdp_v1_7_a_size_of.channel_id = 1

-- Display: Channel Id
nyse_equities_bqt_xdp_v1_7_a_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_equities_bqt_xdp_v1_7_a_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
nyse_equities_bqt_xdp_v1_7_a_size_of.product_id = 1

-- Display: Product Id
nyse_equities_bqt_xdp_v1_7_a_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_equities_bqt_xdp_v1_7_a_dissect.product_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.product_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: End Seq Num
nyse_equities_bqt_xdp_v1_7_a_size_of.end_seq_num = 4

-- Display: End Seq Num
nyse_equities_bqt_xdp_v1_7_a_display.end_seq_num = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_equities_bqt_xdp_v1_7_a_dissect.end_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.end_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.end_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Begin Seq Num
nyse_equities_bqt_xdp_v1_7_a_size_of.begin_seq_num = 4

-- Display: Begin Seq Num
nyse_equities_bqt_xdp_v1_7_a_display.begin_seq_num = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_equities_bqt_xdp_v1_7_a_dissect.begin_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.begin_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.begin_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Unavailable Message
nyse_equities_bqt_xdp_v1_7_a_size_of.message_unavailable_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.begin_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.end_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.product_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.channel_id

  return index
end

-- Display: Message Unavailable Message
nyse_equities_bqt_xdp_v1_7_a_display.message_unavailable_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_equities_bqt_xdp_v1_7_a_dissect.message_unavailable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.end_seq_num(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_equities_bqt_xdp_v1_7_a_dissect.message_unavailable_message = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.message_unavailable_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.message_unavailable_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.message_unavailable_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Source Id
nyse_equities_bqt_xdp_v1_7_a_size_of.source_id = 10

-- Display: Source Id
nyse_equities_bqt_xdp_v1_7_a_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_equities_bqt_xdp_v1_7_a_dissect.source_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.source_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.source_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Request Message
nyse_equities_bqt_xdp_v1_7_a_size_of.refresh_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.product_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.channel_id

  return index
end

-- Display: Refresh Request Message
nyse_equities_bqt_xdp_v1_7_a_display.refresh_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_request_message = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.refresh_request_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Retransmit Method
nyse_equities_bqt_xdp_v1_7_a_size_of.retransmit_method = 1

-- Display: Retransmit Method
nyse_equities_bqt_xdp_v1_7_a_display.retransmit_method = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_equities_bqt_xdp_v1_7_a_dissect.retransmit_method = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.retransmit_method
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.retransmit_method(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Request Message
nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index_mapping_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.product_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.channel_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.retransmit_method

  return index
end

-- Display: Symbol Index Mapping Request Message
nyse_equities_bqt_xdp_v1_7_a_display.symbol_index_mapping_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a_dissect.channel_id(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, retransmit_method = nyse_equities_bqt_xdp_v1_7_a_dissect.retransmit_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_request_message = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.symbol_index_mapping_request_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Heartbeat Response Message
nyse_equities_bqt_xdp_v1_7_a_size_of.heartbeat_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_id

  return index
end

-- Display: Heartbeat Response Message
nyse_equities_bqt_xdp_v1_7_a_display.heartbeat_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_equities_bqt_xdp_v1_7_a_dissect.heartbeat_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a_dissect.source_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_equities_bqt_xdp_v1_7_a_dissect.heartbeat_response_message = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.heartbeat_response_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Status
nyse_equities_bqt_xdp_v1_7_a_size_of.status = 1

-- Display: Status
nyse_equities_bqt_xdp_v1_7_a_display.status = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.status = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.status, range, value, display)

  return offset + length, value
end

-- Size: Request Seq Num
nyse_equities_bqt_xdp_v1_7_a_size_of.request_seq_num = 4

-- Display: Request Seq Num
nyse_equities_bqt_xdp_v1_7_a_display.request_seq_num = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_equities_bqt_xdp_v1_7_a_dissect.request_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.request_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.request_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Response Message
nyse_equities_bqt_xdp_v1_7_a_size_of.request_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.request_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.begin_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.end_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.product_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.channel_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.status

  return index
end

-- Display: Request Response Message
nyse_equities_bqt_xdp_v1_7_a_display.request_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_equities_bqt_xdp_v1_7_a_dissect.request_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.request_seq_num(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a_dissect.channel_id(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 10 values
  index, status = nyse_equities_bqt_xdp_v1_7_a_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_equities_bqt_xdp_v1_7_a_dissect.request_response_message = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.request_response_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.request_response_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.request_response_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.request_response_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Retransmission Request Message
nyse_equities_bqt_xdp_v1_7_a_size_of.retransmission_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.begin_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.end_seq_num

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.product_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.channel_id

  return index
end

-- Display: Retransmission Request Message
nyse_equities_bqt_xdp_v1_7_a_display.retransmission_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_equities_bqt_xdp_v1_7_a_dissect.retransmission_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_bqt_xdp_v1_7_a_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_bqt_xdp_v1_7_a_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_equities_bqt_xdp_v1_7_a_dissect.retransmission_request_message = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.retransmission_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.retransmission_request_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.retransmission_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Unit Of Trade
nyse_equities_bqt_xdp_v1_7_a_size_of.unit_of_trade = 2

-- Display: Unit Of Trade
nyse_equities_bqt_xdp_v1_7_a_display.unit_of_trade = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_equities_bqt_xdp_v1_7_a_dissect.unit_of_trade = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.unit_of_trade
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.unit_of_trade(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Size: Mpv
nyse_equities_bqt_xdp_v1_7_a_size_of.mpv = 2

-- Display: Mpv
nyse_equities_bqt_xdp_v1_7_a_display.mpv = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_equities_bqt_xdp_v1_7_a_dissect.mpv = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.mpv
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.mpv(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Round Lot
nyse_equities_bqt_xdp_v1_7_a_size_of.round_lot = 1

-- Display: Round Lot
nyse_equities_bqt_xdp_v1_7_a_display.round_lot = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_equities_bqt_xdp_v1_7_a_dissect.round_lot = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.round_lot
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.round_lot(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Size: Price Resolution
nyse_equities_bqt_xdp_v1_7_a_size_of.price_resolution = 1

-- Display: Price Resolution
nyse_equities_bqt_xdp_v1_7_a_display.price_resolution = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.price_resolution = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.price_resolution
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Volume
nyse_equities_bqt_xdp_v1_7_a_size_of.prev_close_volume = 4

-- Display: Prev Close Volume
nyse_equities_bqt_xdp_v1_7_a_display.prev_close_volume = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_equities_bqt_xdp_v1_7_a_dissect.prev_close_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.prev_close_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.prev_close_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Price
nyse_equities_bqt_xdp_v1_7_a_size_of.prev_close_price = 4

-- Display: Prev Close Price
nyse_equities_bqt_xdp_v1_7_a_display.prev_close_price = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_equities_bqt_xdp_v1_7_a_dissect.prev_close_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.prev_close_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.prev_close_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
nyse_equities_bqt_xdp_v1_7_a_size_of.lot_size = 2

-- Display: Lot Size
nyse_equities_bqt_xdp_v1_7_a_display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_equities_bqt_xdp_v1_7_a_dissect.lot_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.lot_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Security Type
nyse_equities_bqt_xdp_v1_7_a_size_of.security_type = 1

-- Display: Security Type
nyse_equities_bqt_xdp_v1_7_a_display.security_type = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.security_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Price Scale Code
nyse_equities_bqt_xdp_v1_7_a_size_of.price_scale_code = 1

-- Display: Price Scale Code
nyse_equities_bqt_xdp_v1_7_a_display.price_scale_code = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_equities_bqt_xdp_v1_7_a_dissect.price_scale_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.price_scale_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
nyse_equities_bqt_xdp_v1_7_a_size_of.exchange_code = 1

-- Display: Exchange Code
nyse_equities_bqt_xdp_v1_7_a_display.exchange_code = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.exchange_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Size: System Id
nyse_equities_bqt_xdp_v1_7_a_size_of.system_id = 1

-- Display: System Id
nyse_equities_bqt_xdp_v1_7_a_display.system_id = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_equities_bqt_xdp_v1_7_a_dissect.system_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.system_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.system_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.system_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
nyse_equities_bqt_xdp_v1_7_a_size_of.reserved_1 = 1

-- Display: Reserved 1
nyse_equities_bqt_xdp_v1_7_a_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_equities_bqt_xdp_v1_7_a_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_bqt_xdp_v1_7_a_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Symbol
nyse_equities_bqt_xdp_v1_7_a_size_of.symbol = 11

-- Display: Symbol
nyse_equities_bqt_xdp_v1_7_a_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_equities_bqt_xdp_v1_7_a_dissect.symbol = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Message
nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index_mapping_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.symbol

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.reserved_1

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.market_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.system_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.exchange_code

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.price_scale_code

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.security_type

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.lot_size

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.prev_close_price

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.prev_close_volume

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.price_resolution

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.round_lot

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.mpv

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.unit_of_trade

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.reserved_2

  return index
end

-- Display: Symbol Index Mapping Message
nyse_equities_bqt_xdp_v1_7_a_display.symbol_index_mapping_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_equities_bqt_xdp_v1_7_a_dissect.reserved_1(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_equities_bqt_xdp_v1_7_a_dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_equities_bqt_xdp_v1_7_a_dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 8 values
  index, exchange_code = nyse_equities_bqt_xdp_v1_7_a_dissect.exchange_code(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_equities_bqt_xdp_v1_7_a_dissect.price_scale_code(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_equities_bqt_xdp_v1_7_a_dissect.security_type(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_equities_bqt_xdp_v1_7_a_dissect.lot_size(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_equities_bqt_xdp_v1_7_a_dissect.prev_close_price(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_equities_bqt_xdp_v1_7_a_dissect.prev_close_volume(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_equities_bqt_xdp_v1_7_a_dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
  index, round_lot = nyse_equities_bqt_xdp_v1_7_a_dissect.round_lot(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_equities_bqt_xdp_v1_7_a_dissect.mpv(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_equities_bqt_xdp_v1_7_a_dissect.unit_of_trade(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_bqt_xdp_v1_7_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_message = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.symbol_index_mapping_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Sequence Number Reset Message
nyse_equities_bqt_xdp_v1_7_a_size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.source_time_ns

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.product_id

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.channel_id

  return index
end

-- Display: Sequence Number Reset Message
nyse_equities_bqt_xdp_v1_7_a_display.sequence_number_reset_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_equities_bqt_xdp_v1_7_a_dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_bqt_xdp_v1_7_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_bqt_xdp_v1_7_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_bqt_xdp_v1_7_a_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_equities_bqt_xdp_v1_7_a_dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.sequence_number_reset_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
nyse_equities_bqt_xdp_v1_7_a_size_of.payload = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.sequence_number_reset_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index_mapping_message(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.retransmission_request_message(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.request_response_message(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.heartbeat_response_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.symbol_index_mapping_request_message(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.refresh_request_message(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.message_unavailable_message(buffer, offset)
  end
  -- Size of Consolidated Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_symbol_clear_message(buffer, offset)
  end
  -- Size of Consolidated Trading Session Change Message
  if message_type == 33 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_trading_session_change_message(buffer, offset)
  end
  -- Size of Consolidated Security Status Message
  if message_type == 34 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_security_status_message(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.refresh_header_message(buffer, offset)
  end
  -- Size of Bqt Message
  if message_type == 142 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.bqt_message(buffer, offset)
  end
  -- Size of Consolidated Single Sided Quote Message
  if message_type == 143 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_single_sided_quote_message(buffer, offset)
  end
  -- Size of Consolidated Trade Message
  if message_type == 220 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_trade_message(buffer, offset)
  end
  -- Size of Consolidated Trade Cancel Message
  if message_type == 221 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_trade_cancel_message(buffer, offset)
  end
  -- Size of Consolidated Trade Correction Message
  if message_type == 222 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_trade_correction_message(buffer, offset)
  end
  -- Size of Consolidated Stock Summary Message
  if message_type == 229 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_stock_summary_message(buffer, offset)
  end
  -- Size of Consolidated Volume Message
  if message_type == 240 then
    return nyse_equities_bqt_xdp_v1_7_a_size_of.consolidated_volume_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_equities_bqt_xdp_v1_7_a_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_equities_bqt_xdp_v1_7_a_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.retransmission_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.request_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.heartbeat_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.symbol_index_mapping_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.message_unavailable_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trading Session Change Message
  if message_type == 33 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trading_session_change_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Security Status Message
  if message_type == 34 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Bqt Message
  if message_type == 142 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.bqt_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Single Sided Quote Message
  if message_type == 143 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_single_sided_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Message
  if message_type == 220 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Cancel Message
  if message_type == 221 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Correction Message
  if message_type == 222 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Stock Summary Message
  if message_type == 229 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_stock_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Volume Message
  if message_type == 240 then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.consolidated_volume_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_equities_bqt_xdp_v1_7_a_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_equities_bqt_xdp_v1_7_a_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_bqt_xdp_v1_7_a_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_bqt_xdp_v1_7_a_display.payload(buffer, packet, parent)
  local element = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.payload, range, display)

  return nyse_equities_bqt_xdp_v1_7_a_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nyse_equities_bqt_xdp_v1_7_a_size_of.message_type = 2

-- Display: Message Type
nyse_equities_bqt_xdp_v1_7_a_display.message_type = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
nyse_equities_bqt_xdp_v1_7_a_size_of.message_size = 2

-- Display: Message Size
nyse_equities_bqt_xdp_v1_7_a_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_equities_bqt_xdp_v1_7_a_dissect.message_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.message_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nyse_equities_bqt_xdp_v1_7_a_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.message_size

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.message_type

  return index
end

-- Display: Message Header
nyse_equities_bqt_xdp_v1_7_a_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_equities_bqt_xdp_v1_7_a_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_equities_bqt_xdp_v1_7_a_dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, message_type = nyse_equities_bqt_xdp_v1_7_a_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_equities_bqt_xdp_v1_7_a_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.message_header, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Message
nyse_equities_bqt_xdp_v1_7_a_size_of.message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nyse_equities_bqt_xdp_v1_7_a_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_equities_bqt_xdp_v1_7_a_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_equities_bqt_xdp_v1_7_a_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 19 branches
  index = nyse_equities_bqt_xdp_v1_7_a_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_equities_bqt_xdp_v1_7_a_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nyse_equities_bqt_xdp_v1_7_a_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.message(buffer, packet, parent)
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.message, range, display)
  end

  return nyse_equities_bqt_xdp_v1_7_a_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Nanoseconds
nyse_equities_bqt_xdp_v1_7_a_size_of.nanoseconds = 4

-- Display: Nanoseconds
nyse_equities_bqt_xdp_v1_7_a_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_equities_bqt_xdp_v1_7_a_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nyse_equities_bqt_xdp_v1_7_a_size_of.timestamp = 4

-- Display: Timestamp
nyse_equities_bqt_xdp_v1_7_a_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_bqt_xdp_v1_7_a_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nyse_equities_bqt_xdp_v1_7_a_size_of.sequence_number = 4

-- Display: Sequence Number
nyse_equities_bqt_xdp_v1_7_a_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_equities_bqt_xdp_v1_7_a_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Count
nyse_equities_bqt_xdp_v1_7_a_size_of.message_count = 1

-- Display: Message Count
nyse_equities_bqt_xdp_v1_7_a_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_equities_bqt_xdp_v1_7_a_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
nyse_equities_bqt_xdp_v1_7_a_size_of.delivery_flag = 1

-- Display: Delivery Flag
nyse_equities_bqt_xdp_v1_7_a_display.delivery_flag = function(value)
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
nyse_equities_bqt_xdp_v1_7_a_dissect.delivery_flag = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.delivery_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
nyse_equities_bqt_xdp_v1_7_a_size_of.packet_size = 2

-- Display: Packet Size
nyse_equities_bqt_xdp_v1_7_a_display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_equities_bqt_xdp_v1_7_a_dissect.packet_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v1_7_a_size_of.packet_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v1_7_a_display.packet_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nyse_equities_bqt_xdp_v1_7_a_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.packet_size

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.delivery_flag

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.message_count

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.sequence_number

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.timestamp

  index = index + nyse_equities_bqt_xdp_v1_7_a_size_of.nanoseconds

  return index
end

-- Display: Packet Header
nyse_equities_bqt_xdp_v1_7_a_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_equities_bqt_xdp_v1_7_a_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_equities_bqt_xdp_v1_7_a_dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_equities_bqt_xdp_v1_7_a_dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_equities_bqt_xdp_v1_7_a_dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_equities_bqt_xdp_v1_7_a_dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_bqt_xdp_v1_7_a_dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_equities_bqt_xdp_v1_7_a_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_equities_bqt_xdp_v1_7_a_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_equities_bqt_xdp_v1_7_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v1_7_a_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v1_7_a_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v1_7_a_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
nyse_equities_bqt_xdp_v1_7_a_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_equities_bqt_xdp_v1_7_a_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = nyse_equities_bqt_xdp_v1_7_a_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_equities_bqt_xdp_v1_7_a.init()
end

-- Dissector for Nyse Equities Bqt Xdp 1.7.a
function nyse_equities_bqt_xdp_v1_7_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_equities_bqt_xdp_v1_7_a.name

  -- Dissect protocol
  local protocol = parent:add(nyse_equities_bqt_xdp_v1_7_a, buffer(), nyse_equities_bqt_xdp_v1_7_a.description, "("..buffer:len().." Bytes)")
  return nyse_equities_bqt_xdp_v1_7_a_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_equities_bqt_xdp_v1_7_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_equities_bqt_xdp_v1_7_a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities Bqt Xdp 1.7.a
local function nyse_equities_bqt_xdp_v1_7_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_equities_bqt_xdp_v1_7_a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_equities_bqt_xdp_v1_7_a
  nyse_equities_bqt_xdp_v1_7_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities Bqt Xdp 1.7.a
nyse_equities_bqt_xdp_v1_7_a:register_heuristic("udp", nyse_equities_bqt_xdp_v1_7_a_heuristic)

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
