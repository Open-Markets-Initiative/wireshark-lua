-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Bqt Xdp 2.1.a Protocol
local nyse_bqt_xdp_v2_1_a = Proto("Nyse.Bqt.Xdp.v2.1.a.Lua", "Nyse Bqt Xdp 2.1.a")

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

-- Nyse Bqt Xdp 2.1.a Fields
nyse_bqt_xdp_v2_1_a.fields.ask_price = ProtoField.new("Ask Price", "nyse.bqt.xdp.v2.1.a.askprice", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.ask_quote_condition = ProtoField.new("Ask Quote Condition", "nyse.bqt.xdp.v2.1.a.askquotecondition", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.bqt.xdp.v2.1.a.askvolume", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.bqt.xdp.v2.1.a.beginseqnum", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.bid_price = ProtoField.new("Bid Price", "nyse.bqt.xdp.v2.1.a.bidprice", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.bid_quote_condition = ProtoField.new("Bid Quote Condition", "nyse.bqt.xdp.v2.1.a.bidquotecondition", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.bqt.xdp.v2.1.a.bidvolume", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.bqt_message = ProtoField.new("Bqt Message", "nyse.bqt.xdp.v2.1.a.bqtmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.bqt.xdp.v2.1.a.channelid", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.close_price = ProtoField.new("Close Price", "nyse.bqt.xdp.v2.1.a.closeprice", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.closing_price = ProtoField.new("Closing Price", "nyse.bqt.xdp.v2.1.a.closingprice", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.complete = ProtoField.new("Complete", "nyse.bqt.xdp.v2.1.a.complete", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.consolidated_security_status_message = ProtoField.new("Consolidated Security Status Message", "nyse.bqt.xdp.v2.1.a.consolidatedsecuritystatusmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.consolidated_single_sided_quote_message = ProtoField.new("Consolidated Single Sided Quote Message", "nyse.bqt.xdp.v2.1.a.consolidatedsinglesidedquotemessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.consolidated_stock_summary_message = ProtoField.new("Consolidated Stock Summary Message", "nyse.bqt.xdp.v2.1.a.consolidatedstocksummarymessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.consolidated_symbol_clear_message = ProtoField.new("Consolidated Symbol Clear Message", "nyse.bqt.xdp.v2.1.a.consolidatedsymbolclearmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.consolidated_trade_cancel_message = ProtoField.new("Consolidated Trade Cancel Message", "nyse.bqt.xdp.v2.1.a.consolidatedtradecancelmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.consolidated_trade_correction_message = ProtoField.new("Consolidated Trade Correction Message", "nyse.bqt.xdp.v2.1.a.consolidatedtradecorrectionmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.consolidated_trade_message = ProtoField.new("Consolidated Trade Message", "nyse.bqt.xdp.v2.1.a.consolidatedtrademessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.consolidated_trading_session_change_message = ProtoField.new("Consolidated Trading Session Change Message", "nyse.bqt.xdp.v2.1.a.consolidatedtradingsessionchangemessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.consolidated_volume_message = ProtoField.new("Consolidated Volume Message", "nyse.bqt.xdp.v2.1.a.consolidatedvolumemessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.bqt.xdp.v2.1.a.currentrefreshpkt", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.bqt.xdp.v2.1.a.deliveryflag", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.bqt.xdp.v2.1.a.endseqnum", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.bqt.xdp.v2.1.a.exchangecode", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.bqt.xdp.v2.1.a.haltcondition", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.bqt.xdp.v2.1.a.heartbeatresponsemessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.high_price = ProtoField.new("High Price", "nyse.bqt.xdp.v2.1.a.highprice", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.bqt.xdp.v2.1.a.lastseqnum", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.bqt.xdp.v2.1.a.lastsymbolseqnum", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.lot_size = ProtoField.new("Lot Size", "nyse.bqt.xdp.v2.1.a.lotsize", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.low_price = ProtoField.new("Low Price", "nyse.bqt.xdp.v2.1.a.lowprice", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.market_id = ProtoField.new("Market Id", "nyse.bqt.xdp.v2.1.a.marketid", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.market_id_of_best_ask = ProtoField.new("Market Id Of Best Ask", "nyse.bqt.xdp.v2.1.a.marketidofbestask", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.market_id_of_best_bid = ProtoField.new("Market Id Of Best Bid", "nyse.bqt.xdp.v2.1.a.marketidofbestbid", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.market_id_of_high_price = ProtoField.new("Market Id Of High Price", "nyse.bqt.xdp.v2.1.a.marketidofhighprice", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.market_id_of_low_price = ProtoField.new("Market Id Of Low Price", "nyse.bqt.xdp.v2.1.a.marketidoflowprice", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.market_id_of_open_price = ProtoField.new("Market Id Of Open Price", "nyse.bqt.xdp.v2.1.a.marketidofopenprice", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.market_id_of_the_close = ProtoField.new("Market ID of the Close", "nyse.bqt.xdp.v2.1.a.marketidoftheclose", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.market_state = ProtoField.new("Market State", "nyse.bqt.xdp.v2.1.a.marketstate", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.message = ProtoField.new("Message", "nyse.bqt.xdp.v2.1.a.message", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.message_count = ProtoField.new("Message Count", "nyse.bqt.xdp.v2.1.a.messagecount", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.message_header = ProtoField.new("Message Header", "nyse.bqt.xdp.v2.1.a.messageheader", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.message_size = ProtoField.new("Message Size", "nyse.bqt.xdp.v2.1.a.messagesize", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.message_type = ProtoField.new("Message Type", "nyse.bqt.xdp.v2.1.a.messagetype", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.bqt.xdp.v2.1.a.messageunavailablemessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.mpv = ProtoField.new("Mpv", "nyse.bqt.xdp.v2.1.a.mpv", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.bqt.xdp.v2.1.a.nanoseconds", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.bqt.xdp.v2.1.a.nextsourceseqnum", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.number_of_close_prices = ProtoField.new("Number Of Close Prices", "nyse.bqt.xdp.v2.1.a.numberofcloseprices", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.ok_for_late_hours = ProtoField.new("Ok for late hours", "nyse.bqt.xdp.v2.1.a.okforlatehours", ftypes.UINT8, nil, base.DEC, "0x04")
nyse_bqt_xdp_v2_1_a.fields.ok_for_morning_hours = ProtoField.new("Ok for morning hours", "nyse.bqt.xdp.v2.1.a.okformorninghours", ftypes.UINT8, nil, base.DEC, "0x01")
nyse_bqt_xdp_v2_1_a.fields.ok_for_national_hours = ProtoField.new("Ok for national hours", "nyse.bqt.xdp.v2.1.a.okfornationalhours", ftypes.UINT8, nil, base.DEC, "0x02")
nyse_bqt_xdp_v2_1_a.fields.open = ProtoField.new("Open", "nyse.bqt.xdp.v2.1.a.open", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.bqt.xdp.v2.1.a.originaltradeid", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.packet = ProtoField.new("Packet", "nyse.bqt.xdp.v2.1.a.packet", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.bqt.xdp.v2.1.a.packetheader", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.bqt.xdp.v2.1.a.packetsize", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.payload = ProtoField.new("Payload", "nyse.bqt.xdp.v2.1.a.payload", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.bqt.xdp.v2.1.a.prevcloseprice", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.bqt.xdp.v2.1.a.prevclosevolume", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.price = ProtoField.new("Price", "nyse.bqt.xdp.v2.1.a.price", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.price_1 = ProtoField.new("Price 1", "nyse.bqt.xdp.v2.1.a.price1", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.price_2 = ProtoField.new("Price 2", "nyse.bqt.xdp.v2.1.a.price2", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.bqt.xdp.v2.1.a.priceresolution", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.bqt.xdp.v2.1.a.pricescalecode", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.product_id = ProtoField.new("Product Id", "nyse.bqt.xdp.v2.1.a.productid", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.bqt.xdp.v2.1.a.quotecondition", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.reason = ProtoField.new("Reason", "nyse.bqt.xdp.v2.1.a.reason", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.bqt.xdp.v2.1.a.refreshheadermessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.bqt.xdp.v2.1.a.refreshrequestmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.bqt.xdp.v2.1.a.requestresponsemessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.bqt.xdp.v2.1.a.requestseqnum", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.reserved = ProtoField.new("Reserved", "nyse.bqt.xdp.v2.1.a.reserved", ftypes.UINT8, nil, base.DEC, "0xF8")
nyse_bqt_xdp_v2_1_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.bqt.xdp.v2.1.a.reserved1", ftypes.BYTES)
nyse_bqt_xdp_v2_1_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.bqt.xdp.v2.1.a.reserved2", ftypes.BYTES)
nyse_bqt_xdp_v2_1_a.fields.retail_pricing_indicator = ProtoField.new("Retail Pricing Indicator", "nyse.bqt.xdp.v2.1.a.retailpricingindicator", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.bqt.xdp.v2.1.a.retransmissionrequestmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.bqt.xdp.v2.1.a.retransmitmethod", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.round_lot = ProtoField.new("Round Lot", "nyse.bqt.xdp.v2.1.a.roundlot", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.bqt.xdp.v2.1.a.rpiindicator", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.security_status = ProtoField.new("Security Status", "nyse.bqt.xdp.v2.1.a.securitystatus", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.security_type = ProtoField.new("Security Type", "nyse.bqt.xdp.v2.1.a.securitytype", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.bqt.xdp.v2.1.a.sequencenumber", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.bqt.xdp.v2.1.a.sequencenumberresetmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.session_state = ProtoField.new("Session State", "nyse.bqt.xdp.v2.1.a.sessionstate", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.side = ProtoField.new("Side", "nyse.bqt.xdp.v2.1.a.side", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.source_id = ProtoField.new("Source Id", "nyse.bqt.xdp.v2.1.a.sourceid", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.source_time = ProtoField.new("Source Time", "nyse.bqt.xdp.v2.1.a.sourcetime", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.bqt.xdp.v2.1.a.sourcetimens", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.ssr_state = ProtoField.new("Ssr State", "nyse.bqt.xdp.v2.1.a.ssrstate", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.bqt.xdp.v2.1.a.ssrtriggeringexchangeid", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.bqt.xdp.v2.1.a.ssrtriggeringvolume", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.status = ProtoField.new("Status", "nyse.bqt.xdp.v2.1.a.status", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.symbol = ProtoField.new("Symbol", "nyse.bqt.xdp.v2.1.a.symbol", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.bqt.xdp.v2.1.a.symbolindex", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.bqt.xdp.v2.1.a.symbolindexmappingmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.bqt.xdp.v2.1.a.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.bqt.xdp.v2.1.a.symbolseqnum", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.symbol_seq_number = ProtoField.new("Symbol Seq Number", "nyse.bqt.xdp.v2.1.a.symbolseqnumber", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.system_id = ProtoField.new("System Id", "nyse.bqt.xdp.v2.1.a.systemid", ftypes.UINT8)
nyse_bqt_xdp_v2_1_a.fields.time = ProtoField.new("Time", "nyse.bqt.xdp.v2.1.a.time", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.bqt.xdp.v2.1.a.timestamp", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.bqt.xdp.v2.1.a.totalrefreshpkts", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.total_volume = ProtoField.new("Total Volume", "nyse.bqt.xdp.v2.1.a.totalvolume", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.trade_condition_1 = ProtoField.new("Trade Condition 1", "nyse.bqt.xdp.v2.1.a.tradecondition1", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.trade_condition_2 = ProtoField.new("Trade Condition 2", "nyse.bqt.xdp.v2.1.a.tradecondition2", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.trade_condition_3 = ProtoField.new("Trade Condition 3", "nyse.bqt.xdp.v2.1.a.tradecondition3", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.trade_condition_4 = ProtoField.new("Trade Condition 4", "nyse.bqt.xdp.v2.1.a.tradecondition4", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.bqt.xdp.v2.1.a.tradeid", ftypes.UINT32)
nyse_bqt_xdp_v2_1_a.fields.trade_session = ProtoField.new("Trade Session", "nyse.bqt.xdp.v2.1.a.tradesession", ftypes.STRING)
nyse_bqt_xdp_v2_1_a.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.bqt.xdp.v2.1.a.unitoftrade", ftypes.UINT16)
nyse_bqt_xdp_v2_1_a.fields.volume = ProtoField.new("Volume", "nyse.bqt.xdp.v2.1.a.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Bqt Xdp 2.1.a Element Dissection Options
show.bqt_message = true
show.close_price = true
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
show.trade_session = true
show.payload = false

-- Register Nyse Bqt Xdp 2.1.a Show Options
nyse_bqt_xdp_v2_1_a.prefs.show_bqt_message = Pref.bool("Show Bqt Message", show.bqt_message, "Parse and add Bqt Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_close_price = Pref.bool("Show Close Price", show.close_price, "Parse and add Close Price to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_security_status_message = Pref.bool("Show Consolidated Security Status Message", show.consolidated_security_status_message, "Parse and add Consolidated Security Status Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_single_sided_quote_message = Pref.bool("Show Consolidated Single Sided Quote Message", show.consolidated_single_sided_quote_message, "Parse and add Consolidated Single Sided Quote Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_stock_summary_message = Pref.bool("Show Consolidated Stock Summary Message", show.consolidated_stock_summary_message, "Parse and add Consolidated Stock Summary Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_symbol_clear_message = Pref.bool("Show Consolidated Symbol Clear Message", show.consolidated_symbol_clear_message, "Parse and add Consolidated Symbol Clear Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trade_cancel_message = Pref.bool("Show Consolidated Trade Cancel Message", show.consolidated_trade_cancel_message, "Parse and add Consolidated Trade Cancel Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trade_correction_message = Pref.bool("Show Consolidated Trade Correction Message", show.consolidated_trade_correction_message, "Parse and add Consolidated Trade Correction Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trade_message = Pref.bool("Show Consolidated Trade Message", show.consolidated_trade_message, "Parse and add Consolidated Trade Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trading_session_change_message = Pref.bool("Show Consolidated Trading Session Change Message", show.consolidated_trading_session_change_message, "Parse and add Consolidated Trading Session Change Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_volume_message = Pref.bool("Show Consolidated Volume Message", show.consolidated_volume_message, "Parse and add Consolidated Volume Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_trade_session = Pref.bool("Show Trade Session", show.trade_session, "Parse and add Trade Session to protocol tree")
nyse_bqt_xdp_v2_1_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_bqt_xdp_v2_1_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.bqt_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_bqt_message then
    show.bqt_message = nyse_bqt_xdp_v2_1_a.prefs.show_bqt_message
    changed = true
  end
  if show.close_price ~= nyse_bqt_xdp_v2_1_a.prefs.show_close_price then
    show.close_price = nyse_bqt_xdp_v2_1_a.prefs.show_close_price
    changed = true
  end
  if show.consolidated_security_status_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_security_status_message then
    show.consolidated_security_status_message = nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_security_status_message
    changed = true
  end
  if show.consolidated_single_sided_quote_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_single_sided_quote_message then
    show.consolidated_single_sided_quote_message = nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_single_sided_quote_message
    changed = true
  end
  if show.consolidated_stock_summary_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_stock_summary_message then
    show.consolidated_stock_summary_message = nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_stock_summary_message
    changed = true
  end
  if show.consolidated_symbol_clear_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_symbol_clear_message then
    show.consolidated_symbol_clear_message = nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_symbol_clear_message
    changed = true
  end
  if show.consolidated_trade_cancel_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trade_cancel_message then
    show.consolidated_trade_cancel_message = nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trade_cancel_message
    changed = true
  end
  if show.consolidated_trade_correction_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trade_correction_message then
    show.consolidated_trade_correction_message = nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trade_correction_message
    changed = true
  end
  if show.consolidated_trade_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trade_message then
    show.consolidated_trade_message = nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trade_message
    changed = true
  end
  if show.consolidated_trading_session_change_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trading_session_change_message then
    show.consolidated_trading_session_change_message = nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_trading_session_change_message
    changed = true
  end
  if show.consolidated_volume_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_volume_message then
    show.consolidated_volume_message = nyse_bqt_xdp_v2_1_a.prefs.show_consolidated_volume_message
    changed = true
  end
  if show.heartbeat_response_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = nyse_bqt_xdp_v2_1_a.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.message ~= nyse_bqt_xdp_v2_1_a.prefs.show_message then
    show.message = nyse_bqt_xdp_v2_1_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_bqt_xdp_v2_1_a.prefs.show_message_header then
    show.message_header = nyse_bqt_xdp_v2_1_a.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_message_unavailable_message then
    show.message_unavailable_message = nyse_bqt_xdp_v2_1_a.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= nyse_bqt_xdp_v2_1_a.prefs.show_packet then
    show.packet = nyse_bqt_xdp_v2_1_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_bqt_xdp_v2_1_a.prefs.show_packet_header then
    show.packet_header = nyse_bqt_xdp_v2_1_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_refresh_header_message then
    show.refresh_header_message = nyse_bqt_xdp_v2_1_a.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_refresh_request_message then
    show.refresh_request_message = nyse_bqt_xdp_v2_1_a.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_request_response_message then
    show.request_response_message = nyse_bqt_xdp_v2_1_a.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_retransmission_request_message then
    show.retransmission_request_message = nyse_bqt_xdp_v2_1_a.prefs.show_retransmission_request_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_bqt_xdp_v2_1_a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = nyse_bqt_xdp_v2_1_a.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= nyse_bqt_xdp_v2_1_a.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = nyse_bqt_xdp_v2_1_a.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.trade_session ~= nyse_bqt_xdp_v2_1_a.prefs.show_trade_session then
    show.trade_session = nyse_bqt_xdp_v2_1_a.prefs.show_trade_session
    changed = true
  end
  if show.payload ~= nyse_bqt_xdp_v2_1_a.prefs.show_payload then
    show.payload = nyse_bqt_xdp_v2_1_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Bqt Xdp 2.1.a
-----------------------------------------------------------------------

-- Size: Complete
size_of.complete = 1

-- Display: Complete
display.complete = function(value)
  if value == 0 then
    return "Complete: Normal (0)"
  end
  if value == 1 then
    return "Complete: Abnormal (1)"
  end

  return "Complete: Unknown("..value..")"
end

-- Dissect: Complete
dissect.complete = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.complete)
  local value = range:le_uint()
  local display = display.complete(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.complete, range, value, display)

  return offset + size_of.complete
end

-- Size: Reason
size_of.reason = 1

-- Display: Reason
display.reason = function(value)
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
dissect.reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reason)
  local value = range:le_uint()
  local display = display.reason(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.reason, range, value, display)

  return offset + size_of.reason
end

-- Size: Total Volume
size_of.total_volume = 4

-- Display: Total Volume
display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
dissect.total_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.total_volume)
  local value = range:le_uint()
  local display = display.total_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.total_volume, range, value, display)

  return offset + size_of.total_volume
end

-- Size: Symbol Seq Number
size_of.symbol_seq_number = 4

-- Display: Symbol Seq Number
display.symbol_seq_number = function(value)
  return "Symbol Seq Number: "..value
end

-- Dissect: Symbol Seq Number
dissect.symbol_seq_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol_seq_number)
  local value = range:le_uint()
  local display = display.symbol_seq_number(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.symbol_seq_number, range, value, display)

  return offset + size_of.symbol_seq_number
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.symbol_index, range, value, display)

  return offset + size_of.symbol_index
end

-- Display: Consolidated Volume Message
display.consolidated_volume_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Volume Message
dissect.consolidated_volume_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.total_volume(buffer, index, packet, parent)

  -- Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.reason(buffer, index, packet, parent)

  -- Complete: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.complete(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Volume Message
dissect.consolidated_volume_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.consolidated_volume_message then
    local range = buffer(offset, 14)
    local display = display.consolidated_volume_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.consolidated_volume_message, range, display)
  end

  return dissect.consolidated_volume_message_fields(buffer, offset, packet, parent)
end

-- Size: Closing Price
size_of.closing_price = 4

-- Display: Closing Price
display.closing_price = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
dissect.closing_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.closing_price)
  local value = range:le_uint()
  local display = display.closing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.closing_price, range, value, display)

  return offset + size_of.closing_price
end

-- Size: Market ID of the Close
size_of.market_id_of_the_close = 2

-- Display: Market ID of the Close
display.market_id_of_the_close = function(value)
  if value == 0 then
    return "Market ID of the Close: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market ID of the Close: Nyse (1)"
  end
  if value == 3 then
    return "Market ID of the Close: Nyse Arca (3)"
  end
  if value == 9 then
    return "Market ID of the Close: Nyse American (9)"
  end

  return "Market ID of the Close: Unknown("..value..")"
end

-- Dissect: Market ID of the Close
dissect.market_id_of_the_close = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id_of_the_close)
  local value = range:le_uint()
  local display = display.market_id_of_the_close(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.market_id_of_the_close, range, value, display)

  return offset + size_of.market_id_of_the_close
end

-- Display: Close Price
display.close_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Close Price
dissect.close_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID of the Close: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.market_id_of_the_close(buffer, index, packet, parent)

  -- Closing Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.closing_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Price
dissect.close_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.close_price then
    local range = buffer(offset, 6)
    local display = display.close_price(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.close_price, range, display)
  end

  return dissect.close_price_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Close Prices
size_of.number_of_close_prices = 1

-- Display: Number Of Close Prices
display.number_of_close_prices = function(value)
  return "Number Of Close Prices: "..value
end

-- Dissect: Number Of Close Prices
dissect.number_of_close_prices = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.number_of_close_prices(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.number_of_close_prices, range, value, display)

  return offset + length, value
end

-- Size: Market Id Of Open Price
size_of.market_id_of_open_price = 2

-- Display: Market Id Of Open Price
display.market_id_of_open_price = function(value)
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
dissect.market_id_of_open_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id_of_open_price)
  local value = range:le_uint()
  local display = display.market_id_of_open_price(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.market_id_of_open_price, range, value, display)

  return offset + size_of.market_id_of_open_price
end

-- Size: Market Id Of Low Price
size_of.market_id_of_low_price = 2

-- Display: Market Id Of Low Price
display.market_id_of_low_price = function(value)
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
dissect.market_id_of_low_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id_of_low_price)
  local value = range:le_uint()
  local display = display.market_id_of_low_price(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.market_id_of_low_price, range, value, display)

  return offset + size_of.market_id_of_low_price
end

-- Size: Market Id Of High Price
size_of.market_id_of_high_price = 2

-- Display: Market Id Of High Price
display.market_id_of_high_price = function(value)
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
dissect.market_id_of_high_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id_of_high_price)
  local value = range:le_uint()
  local display = display.market_id_of_high_price(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.market_id_of_high_price, range, value, display)

  return offset + size_of.market_id_of_high_price
end

-- Size: Open
size_of.open = 4

-- Display: Open
display.open = function(value)
  return "Open: "..value
end

-- Dissect: Open
dissect.open = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open)
  local value = range:le_uint()
  local display = display.open(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.open, range, value, display)

  return offset + size_of.open
end

-- Size: Low Price
size_of.low_price = 4

-- Display: Low Price
display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
dissect.low_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.low_price)
  local value = range:le_uint()
  local display = display.low_price(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.low_price, range, value, display)

  return offset + size_of.low_price
end

-- Size: High Price
size_of.high_price = 4

-- Display: High Price
display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
dissect.high_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.high_price)
  local value = range:le_uint()
  local display = display.high_price(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.high_price, range, value, display)

  return offset + size_of.high_price
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.source_time_ns, range, value, display)

  return offset + size_of.source_time_ns
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.source_time, range, value, display)

  return offset + size_of.source_time
end

-- Calculate runtime size: Consolidated Stock Summary Message
size_of.consolidated_stock_summary_message = function(buffer, offset)
  local index = 0

  index = index + 35

  -- Calculate field size from count
  local close_price_count = buffer(offset + index - 1, 1):le_uint()
  index = index + close_price_count * 6

  return index
end

-- Display: Consolidated Stock Summary Message
display.consolidated_stock_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Stock Summary Message
dissect.consolidated_stock_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- High Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.low_price(buffer, index, packet, parent)

  -- Open: 4 Byte Unsigned Fixed Width Integer
  index = dissect.open(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.total_volume(buffer, index, packet, parent)

  -- Market Id Of High Price: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.market_id_of_high_price(buffer, index, packet, parent)

  -- Market Id Of Low Price: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.market_id_of_low_price(buffer, index, packet, parent)

  -- Market Id Of Open Price: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.market_id_of_open_price(buffer, index, packet, parent)

  -- Number Of Close Prices: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_close_prices(buffer, index, packet, parent)

  -- Close Price: Struct of 2 fields
  local close_price_count = buffer(index - 1, 1):le_uint()
  for i = 1, close_price_count do
    index = dissect.close_price(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Consolidated Stock Summary Message
dissect.consolidated_stock_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.consolidated_stock_summary_message then
    local length = size_of.consolidated_stock_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.consolidated_stock_summary_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.consolidated_stock_summary_message, range, display)
  end

  return dissect.consolidated_stock_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Id
size_of.market_id = 2

-- Display: Market Id
display.market_id = function(value)
  if value == 0 then
    return "Market Id: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market Id: Nyse (1)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca (3)"
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
    return "Market Id: Nyse American (9)"
  end
  if value == 10 then
    return "Market Id: Nyse National (10)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
dissect.market_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id)
  local value = range:le_uint()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.market_id, range, value, display)

  return offset + size_of.market_id
end

-- Size: Trade Condition 4
size_of.trade_condition_4 = 1

-- Display: Trade Condition 4
display.trade_condition_4 = function(value)
  if value == " " then
    return "Trade Condition 4: Na (<whitespace>)"
  end
  if value == " " then
    return "Trade Condition 4: Regular Sale (<whitespace>)"
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
    return "Trade Condition 4: Rule127 Nyse Only Or Rule155 Nyse American Only (K)"
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
dissect.trade_condition_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_condition_4)
  local value = range:string()
  local display = display.trade_condition_4(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.trade_condition_4, range, value, display)

  return offset + size_of.trade_condition_4
end

-- Size: Trade Condition 3
size_of.trade_condition_3 = 1

-- Display: Trade Condition 3
display.trade_condition_3 = function(value)
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
dissect.trade_condition_3 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_condition_3)
  local value = range:string()
  local display = display.trade_condition_3(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.trade_condition_3, range, value, display)

  return offset + size_of.trade_condition_3
end

-- Size: Trade Condition 2
size_of.trade_condition_2 = 1

-- Display: Trade Condition 2
display.trade_condition_2 = function(value)
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
dissect.trade_condition_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_condition_2)
  local value = range:string()
  local display = display.trade_condition_2(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.trade_condition_2, range, value, display)

  return offset + size_of.trade_condition_2
end

-- Size: Trade Condition 1
size_of.trade_condition_1 = 1

-- Display: Trade Condition 1
display.trade_condition_1 = function(value)
  if value == " " then
    return "Trade Condition 1: Regular Sale (<whitespace>)"
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
dissect.trade_condition_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_condition_1)
  local value = range:string()
  local display = display.trade_condition_1(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.trade_condition_1, range, value, display)

  return offset + size_of.trade_condition_1
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volume)
  local value = range:le_uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.volume, range, value, display)

  return offset + size_of.volume
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:le_uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Trade Id
size_of.trade_id = 4

-- Display: Trade Id
display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
dissect.trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_id)
  local value = range:le_uint()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.trade_id, range, value, display)

  return offset + size_of.trade_id
end

-- Size: Original Trade Id
size_of.original_trade_id = 4

-- Display: Original Trade Id
display.original_trade_id = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
dissect.original_trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_trade_id)
  local value = range:le_uint()
  local display = display.original_trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.original_trade_id, range, value, display)

  return offset + size_of.original_trade_id
end

-- Display: Consolidated Trade Correction Message
display.consolidated_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Trade Correction Message
dissect.consolidated_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Original Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_trade_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Trade Condition 1: 1 Byte Ascii String Enum with 4 values
  index = dissect.trade_condition_1(buffer, index, packet, parent)

  -- Trade Condition 2: 1 Byte Ascii String Enum with 7 values
  index = dissect.trade_condition_2(buffer, index, packet, parent)

  -- Trade Condition 3: 1 Byte Ascii String Enum with 5 values
  index = dissect.trade_condition_3(buffer, index, packet, parent)

  -- Trade Condition 4: 1 Byte Ascii String Enum with 12 values
  index = dissect.trade_condition_4(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Correction Message
dissect.consolidated_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.consolidated_trade_correction_message then
    local range = buffer(offset, 38)
    local display = display.consolidated_trade_correction_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.consolidated_trade_correction_message, range, display)
  end

  return dissect.consolidated_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Display: Consolidated Trade Cancel Message
display.consolidated_trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Trade Cancel Message
dissect.consolidated_trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Cancel Message
dissect.consolidated_trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.consolidated_trade_cancel_message then
    local range = buffer(offset, 22)
    local display = display.consolidated_trade_cancel_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.consolidated_trade_cancel_message, range, display)
  end

  return dissect.consolidated_trade_cancel_message_fields(buffer, offset, packet, parent)
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.symbol_seq_num, range, value, display)

  return offset + size_of.symbol_seq_num
end

-- Display: Consolidated Trade Message
display.consolidated_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Trade Message
dissect.consolidated_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Trade Condition 1: 1 Byte Ascii String Enum with 4 values
  index = dissect.trade_condition_1(buffer, index, packet, parent)

  -- Trade Condition 2: 1 Byte Ascii String Enum with 7 values
  index = dissect.trade_condition_2(buffer, index, packet, parent)

  -- Trade Condition 3: 1 Byte Ascii String Enum with 5 values
  index = dissect.trade_condition_3(buffer, index, packet, parent)

  -- Trade Condition 4: 1 Byte Ascii String Enum with 12 values
  index = dissect.trade_condition_4(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Message
dissect.consolidated_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.consolidated_trade_message then
    local range = buffer(offset, 34)
    local display = display.consolidated_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.consolidated_trade_message, range, display)
  end

  return dissect.consolidated_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Rpi Indicator
size_of.rpi_indicator = 1

-- Display: Rpi Indicator
display.rpi_indicator = function(value)
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
dissect.rpi_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.rpi_indicator)
  local value = range:string()
  local display = display.rpi_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.rpi_indicator, range, value, display)

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
  if value == "OxOO" then
    return "Quote Condition: Empty Quote (OxOO)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
dissect.quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_condition)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.quote_condition, range, value, display)

  return offset + size_of.quote_condition
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.side, range, value, display)

  return offset + size_of.side
end

-- Display: Consolidated Single Sided Quote Message
display.consolidated_single_sided_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Single Sided Quote Message
dissect.consolidated_single_sided_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index = dissect.rpi_indicator(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Single Sided Quote Message
dissect.consolidated_single_sided_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.consolidated_single_sided_quote_message then
    local range = buffer(offset, 21)
    local display = display.consolidated_single_sided_quote_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.consolidated_single_sided_quote_message, range, display)
  end

  return dissect.consolidated_single_sided_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Id Of Best Bid
size_of.market_id_of_best_bid = 2

-- Display: Market Id Of Best Bid
display.market_id_of_best_bid = function(value)
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
dissect.market_id_of_best_bid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id_of_best_bid)
  local value = range:le_uint()
  local display = display.market_id_of_best_bid(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.market_id_of_best_bid, range, value, display)

  return offset + size_of.market_id_of_best_bid
end

-- Size: Market Id Of Best Ask
size_of.market_id_of_best_ask = 2

-- Display: Market Id Of Best Ask
display.market_id_of_best_ask = function(value)
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
dissect.market_id_of_best_ask = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id_of_best_ask)
  local value = range:le_uint()
  local display = display.market_id_of_best_ask(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.market_id_of_best_ask, range, value, display)

  return offset + size_of.market_id_of_best_ask
end

-- Size: Retail Pricing Indicator
size_of.retail_pricing_indicator = 1

-- Display: Retail Pricing Indicator
display.retail_pricing_indicator = function(value)
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
dissect.retail_pricing_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.retail_pricing_indicator)
  local value = range:le_uint()
  local display = display.retail_pricing_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.retail_pricing_indicator, range, value, display)

  return offset + size_of.retail_pricing_indicator
end

-- Size: Bid Quote Condition
size_of.bid_quote_condition = 1

-- Display: Bid Quote Condition
display.bid_quote_condition = function(value)
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
dissect.bid_quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_quote_condition)
  local value = range:string()
  local display = display.bid_quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.bid_quote_condition, range, value, display)

  return offset + size_of.bid_quote_condition
end

-- Size: Ask Quote Condition
size_of.ask_quote_condition = 1

-- Display: Ask Quote Condition
display.ask_quote_condition = function(value)
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
dissect.ask_quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_quote_condition)
  local value = range:string()
  local display = display.ask_quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.ask_quote_condition, range, value, display)

  return offset + size_of.ask_quote_condition
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.bid_volume, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.bid_price, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.ask_volume, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.ask_price, range, value, display)

  return offset + size_of.ask_price
end

-- Display: Bqt Message
display.bqt_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bqt Message
dissect.bqt_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_number(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Quote Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.ask_quote_condition(buffer, index, packet, parent)

  -- Bid Quote Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.bid_quote_condition(buffer, index, packet, parent)

  -- Retail Pricing Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.retail_pricing_indicator(buffer, index, packet, parent)

  -- Market Id Of Best Ask: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.market_id_of_best_ask(buffer, index, packet, parent)

  -- Market Id Of Best Bid: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.market_id_of_best_bid(buffer, index, packet, parent)

  return index
end

-- Dissect: Bqt Message
dissect.bqt_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bqt_message then
    local range = buffer(offset, 31)
    local display = display.bqt_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.bqt_message, range, display)
  end

  return dissect.bqt_message_fields(buffer, offset, packet, parent)
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.last_symbol_seq_num, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.last_seq_num, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.total_refresh_pkts, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.current_refresh_pkt, range, value, display)

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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.refresh_header_message, range, display)
  end

  return dissect.refresh_header_message_fields(buffer, offset, packet, parent)
end

-- Size: Session State
size_of.session_state = 1

-- Display: Session State
display.session_state = function(value)
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
dissect.session_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session_state)
  local value = range:string()
  local display = display.session_state(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.session_state, range, value, display)

  return offset + size_of.session_state
end

-- Size: Market State
size_of.market_state = 1

-- Display: Market State
display.market_state = function(value)
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
dissect.market_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_state)
  local value = range:string()
  local display = display.market_state(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.market_state, range, value, display)

  return offset + size_of.market_state
end

-- Size: Ssr State
size_of.ssr_state = 1

-- Display: Ssr State
display.ssr_state = function(value)
  if value == "" then
    return "Ssr State: No Short Sale Restriction In Effect (<whitespace>)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
dissect.ssr_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssr_state)
  local value = range:string()
  local display = display.ssr_state(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.ssr_state, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.time, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.ssr_triggering_volume, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.ssr_triggering_exchange_id, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.price_2, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.price_1, range, value, display)

  return offset + size_of.price_1
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.reserved_2, range, value, display)

  return offset + size_of.reserved_2
end

-- Size: Halt Condition
size_of.halt_condition = 1

-- Display: Halt Condition
display.halt_condition = function(value)
  if value == "" then
    return "Halt Condition: Security Not Delayedhalted (<whitespace>)"
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
dissect.halt_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.halt_condition)
  local value = range:string()
  local display = display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.halt_condition, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.security_status, range, value, display)

  return offset + size_of.security_status
end

-- Display: Consolidated Security Status Message
display.consolidated_security_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Security Status Message
dissect.consolidated_security_status_message_fields = function(buffer, offset, packet, parent)
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

  -- Halt Condition: 1 Byte Ascii String Enum with 11 values
  index = dissect.halt_condition(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

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

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index = dissect.ssr_state(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index = dissect.market_state(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String Enum with 3 values
  index = dissect.session_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Security Status Message
dissect.consolidated_security_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.consolidated_security_status_message then
    local range = buffer(offset, 42)
    local display = display.consolidated_security_status_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.consolidated_security_status_message, range, display)
  end

  return dissect.consolidated_security_status_message_fields(buffer, offset, packet, parent)
end

-- Display: Trade Session
display.trade_session = function(buffer, packet, parent)
  local display = ""

  -- Is Ok for late hours flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Ok for late hours|"
  end
  -- Is Ok for national hours flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Ok for national hours|"
  end
  -- Is Ok for morning hours flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Ok for morning hours|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Session
dissect.trade_session_bits = function(buffer, offset, packet, parent)

  -- Reserved: 5 Bit
  parent:add(nyse_bqt_xdp_v2_1_a.fields.reserved, buffer(offset, 1))

  -- Ok for late hours: 1 Bit
  parent:add(nyse_bqt_xdp_v2_1_a.fields.ok_for_late_hours, buffer(offset, 1))

  -- Ok for national hours: 1 Bit
  parent:add(nyse_bqt_xdp_v2_1_a.fields.ok_for_national_hours, buffer(offset, 1))

  -- Ok for morning hours: 1 Bit
  parent:add(nyse_bqt_xdp_v2_1_a.fields.ok_for_morning_hours, buffer(offset, 1))
end

-- Dissect: Trade Session
dissect.trade_session = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.trade_session(range, packet, parent)
  local element = parent:add_le(nyse_bqt_xdp_v2_1_a.fields.trade_session, range, display)

  if show.trade_session then
    dissect.trade_session_bits(buffer, offset, packet, element)
  end

  return offset + 1
end

-- Display: Consolidated Trading Session Change Message
display.consolidated_trading_session_change_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Trading Session Change Message
dissect.consolidated_trading_session_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Session: 1 Byte Unsigned Fixed Width Integer: Struct of 4 fields
  index = dissect.trade_session(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trading Session Change Message
dissect.consolidated_trading_session_change_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.consolidated_trading_session_change_message then
    local range = buffer(offset, 19)
    local display = display.consolidated_trading_session_change_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.consolidated_trading_session_change_message, range, display)
  end

  return dissect.consolidated_trading_session_change_message_fields(buffer, offset, packet, parent)
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.next_source_seq_num, range, value, display)

  return offset + size_of.next_source_seq_num
end

-- Display: Consolidated Symbol Clear Message
display.consolidated_symbol_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Symbol Clear Message
dissect.consolidated_symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.next_source_seq_num(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Symbol Clear Message
dissect.consolidated_symbol_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.consolidated_symbol_clear_message then
    local range = buffer(offset, 18)
    local display = display.consolidated_symbol_clear_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.consolidated_symbol_clear_message, range, display)
  end

  return dissect.consolidated_symbol_clear_message_fields(buffer, offset, packet, parent)
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.channel_id, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.product_id, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.end_seq_num, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.begin_seq_num, range, value, display)

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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.message_unavailable_message, range, display)
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.source_id, range, value, display)

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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.refresh_request_message, range, display)
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.retransmit_method, range, value, display)

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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.symbol_index_mapping_request_message, range, display)
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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.heartbeat_response_message, range, display)
  end

  return dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Status
size_of.status = 1

-- Display: Status
display.status = function(value)
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
    return "Status: Invalid Msg Type Or Mismatch Between Msg Type And Msg Size (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
dissect.status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.status)
  local value = range:string()
  local display = display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.status, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.request_seq_num, range, value, display)

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

  -- Status: 1 Byte Ascii String Enum with 10 values
  index = dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
dissect.request_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_response_message then
    local range = buffer(offset, 25)
    local display = display.request_response_message(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.request_response_message, range, display)
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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.retransmission_request_message, range, display)
  end

  return dissect.retransmission_request_message_fields(buffer, offset, packet, parent)
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.unit_of_trade, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.mpv, range, value, display)

  return offset + size_of.mpv
end

-- Size: Round Lot
size_of.round_lot = 1

-- Display: Round Lot
display.round_lot = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
dissect.round_lot = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.round_lot)
  local value = range:string()
  local display = display.round_lot(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.round_lot, range, value, display)

  return offset + size_of.round_lot
end

-- Size: Price Resolution
size_of.price_resolution = 1

-- Display: Price Resolution
display.price_resolution = function(value)
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
dissect.price_resolution = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_resolution)
  local value = range:le_uint()
  local display = display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.price_resolution, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.prev_close_volume, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.prev_close_price, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.lot_size, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.security_type, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.price_scale_code, range, value, display)

  return offset + size_of.price_scale_code
end

-- Size: Exchange Code
size_of.exchange_code = 1

-- Display: Exchange Code
display.exchange_code = function(value)
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
dissect.exchange_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exchange_code)
  local value = range:string()
  local display = display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.exchange_code, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.system_id, range, value, display)

  return offset + size_of.system_id
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.reserved_1, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.symbol, range, value, display)

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

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 8 values
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

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.symbol_index_mapping_message, range, display)
  end

  return dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.sequence_number_reset_message, range, display)
  end

  return dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Sequence Number Reset Message
  if code == 1 then
    return 10
  end
  -- Size of Symbol Index Mapping Message
  if code == 3 then
    return 40
  end
  -- Size of Retransmission Request Message
  if code == 10 then
    return 20
  end
  -- Size of Request Response Message
  if code == 11 then
    return 25
  end
  -- Size of Heartbeat Response Message
  if code == 12 then
    return 10
  end
  -- Size of Symbol Index Mapping Request Message
  if code == 13 then
    return 17
  end
  -- Size of Refresh Request Message
  if code == 15 then
    return 16
  end
  -- Size of Message Unavailable Message
  if code == 31 then
    return 10
  end
  -- Size of Consolidated Symbol Clear Message
  if code == 32 then
    return 18
  end
  -- Size of Consolidated Trading Session Change Message
  if code == 33 then
    return 19
  end
  -- Size of Consolidated Security Status Message
  if code == 34 then
    return 42
  end
  -- Size of Refresh Header Message
  if code == 35 then
    return 12
  end
  -- Size of Bqt Message
  if code == 142 then
    return 31
  end
  -- Size of Consolidated Single Sided Quote Message
  if code == 143 then
    return 21
  end
  -- Size of Consolidated Trade Message
  if code == 220 then
    return 34
  end
  -- Size of Consolidated Trade Cancel Message
  if code == 221 then
    return 22
  end
  -- Size of Consolidated Trade Correction Message
  if code == 222 then
    return 38
  end
  -- Size of Consolidated Stock Summary Message
  if code == 229 then
    return size_of.consolidated_stock_summary_message(buffer, offset)
  end
  -- Size of Consolidated Volume Message
  if code == 240 then
    return 14
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(buffer, offset, packet, parent, code)
  -- Dissect Sequence Number Reset Message
  if code == 1 then
    return dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if code == 3 then
    return dissect.symbol_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if code == 10 then
    return dissect.retransmission_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if code == 11 then
    return dissect.request_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if code == 12 then
    return dissect.heartbeat_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if code == 13 then
    return dissect.symbol_index_mapping_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if code == 15 then
    return dissect.refresh_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if code == 31 then
    return dissect.message_unavailable_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Symbol Clear Message
  if code == 32 then
    return dissect.consolidated_symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trading Session Change Message
  if code == 33 then
    return dissect.consolidated_trading_session_change_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Security Status Message
  if code == 34 then
    return dissect.consolidated_security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if code == 35 then
    return dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Bqt Message
  if code == 142 then
    return dissect.bqt_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Single Sided Quote Message
  if code == 143 then
    return dissect.consolidated_single_sided_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Message
  if code == 220 then
    return dissect.consolidated_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Cancel Message
  if code == 221 then
    return dissect.consolidated_trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Correction Message
  if code == 222 then
    return dissect.consolidated_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Stock Summary Message
  if code == 229 then
    return dissect.consolidated_stock_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Volume Message
  if code == 240 then
    return dissect.consolidated_volume_message(buffer, offset, packet, parent)
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
  local element = parent:add(nyse_bqt_xdp_v2_1_a.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 2

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.message_type, range, value, display)

  return offset + length, value
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.message_size, range, value, display)

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

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 19 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 4)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 19 branches
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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.message, range, display)
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.nanoseconds, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.timestamp, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.sequence_number, range, value, display)

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_bqt_xdp_v2_1_a.fields.message_count, range, value, display)

  return offset + length, value
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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.delivery_flag, range, value, display)

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

  parent:add(nyse_bqt_xdp_v2_1_a.fields.packet_size, range, value, display)

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
    parent = parent:add(nyse_bqt_xdp_v2_1_a.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end


  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_bqt_xdp_v2_1_a.init()
end

-- Dissector for Nyse Bqt Xdp 2.1.a
function nyse_bqt_xdp_v2_1_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_bqt_xdp_v2_1_a.name

  -- Dissect protocol
  local protocol = parent:add(nyse_bqt_xdp_v2_1_a, buffer(), nyse_bqt_xdp_v2_1_a.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_bqt_xdp_v2_1_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_bqt_xdp_v2_1_a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Bqt Xdp 2.1.a
local function nyse_bqt_xdp_v2_1_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_bqt_xdp_v2_1_a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_bqt_xdp_v2_1_a
  nyse_bqt_xdp_v2_1_a.dissector(buffer, packet, parent)

  return true
end

-- Register Nyse Bqt Xdp 2.1.a Heuristic
nyse_bqt_xdp_v2_1_a:register_heuristic("udp", nyse_bqt_xdp_v2_1_a_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 2.1.a
-- Date: Wednesday, April 4, 2018
-- Script:
-- Source Version: 1.5.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
