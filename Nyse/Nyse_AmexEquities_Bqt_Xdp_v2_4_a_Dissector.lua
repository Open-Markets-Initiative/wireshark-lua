-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse AmexEquities Bqt Xdp 2.4.a Protocol
local omi_nyse_amexequities_bqt_xdp_v2_4_a = Proto("Nyse.AmexEquities.Bqt.Xdp.v2.4.a.Lua", "Nyse AmexEquities Bqt Xdp 2.4.a")

-- Protocol table
local nyse_amexequities_bqt_xdp_v2_4_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse AmexEquities Bqt Xdp 2.4.a Fields
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ask_price = ProtoField.new("Ask Price", "nyse.amexequities.bqt.xdp.v2.4.a.askprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ask_quote_condition = ProtoField.new("Ask Quote Condition", "nyse.amexequities.bqt.xdp.v2.4.a.askquotecondition", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.amexequities.bqt.xdp.v2.4.a.askvolume", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.amexequities.bqt.xdp.v2.4.a.beginseqnum", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.bid_price = ProtoField.new("Bid Price", "nyse.amexequities.bqt.xdp.v2.4.a.bidprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.bid_quote_condition = ProtoField.new("Bid Quote Condition", "nyse.amexequities.bqt.xdp.v2.4.a.bidquotecondition", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.amexequities.bqt.xdp.v2.4.a.bidvolume", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.amexequities.bqt.xdp.v2.4.a.channelid", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.complete = ProtoField.new("Complete", "nyse.amexequities.bqt.xdp.v2.4.a.complete", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_first_price = ProtoField.new("Consolidated First Price", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedfirstprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_high_price = ProtoField.new("Consolidated High Price", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedhighprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_last_price = ProtoField.new("Consolidated Last Price", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedlastprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_low_price = ProtoField.new("Consolidated Low Price", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedlowprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.amexequities.bqt.xdp.v2.4.a.currentrefreshpkt", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.amexequities.bqt.xdp.v2.4.a.deliveryflag", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.amexequities.bqt.xdp.v2.4.a.endseqnum", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.amexequities.bqt.xdp.v2.4.a.exchangecode", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.exec_day_time = ProtoField.new("Exec Day Time", "nyse.amexequities.bqt.xdp.v2.4.a.execdaytime", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.exec_day_time_ns = ProtoField.new("Exec Day Time Ns", "nyse.amexequities.bqt.xdp.v2.4.a.execdaytimens", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.fractional_consolidated_volume = ProtoField.new("Fractional Consolidated Volume", "nyse.amexequities.bqt.xdp.v2.4.a.fractionalconsolidatedvolume", ftypes.UINT64)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.fractional_nyse_group_volume = ProtoField.new("Fractional Nyse Group Volume", "nyse.amexequities.bqt.xdp.v2.4.a.fractionalnysegroupvolume", ftypes.UINT64)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.fractional_volume = ProtoField.new("Fractional Volume", "nyse.amexequities.bqt.xdp.v2.4.a.fractionalvolume", ftypes.UINT64)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.amexequities.bqt.xdp.v2.4.a.haltcondition", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.id = ProtoField.new("Id", "nyse.amexequities.bqt.xdp.v2.4.a.id", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.amexequities.bqt.xdp.v2.4.a.lastseqnum", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.amexequities.bqt.xdp.v2.4.a.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.lot_size = ProtoField.new("Lot Size", "nyse.amexequities.bqt.xdp.v2.4.a.lotsize", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_id = ProtoField.new("Market Id", "nyse.amexequities.bqt.xdp.v2.4.a.marketid", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_id_of_best_ask = ProtoField.new("Market Id Of Best Ask", "nyse.amexequities.bqt.xdp.v2.4.a.marketidofbestask", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_id_of_best_bid = ProtoField.new("Market Id Of Best Bid", "nyse.amexequities.bqt.xdp.v2.4.a.marketidofbestbid", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_id_of_open_price = ProtoField.new("Market Id Of Open Price", "nyse.amexequities.bqt.xdp.v2.4.a.marketidofopenprice", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_state = ProtoField.new("Market State", "nyse.amexequities.bqt.xdp.v2.4.a.marketstate", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message = ProtoField.new("Message", "nyse.amexequities.bqt.xdp.v2.4.a.message", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_count = ProtoField.new("Message Count", "nyse.amexequities.bqt.xdp.v2.4.a.messagecount", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_header = ProtoField.new("Message Header", "nyse.amexequities.bqt.xdp.v2.4.a.messageheader", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_size = ProtoField.new("Message Size", "nyse.amexequities.bqt.xdp.v2.4.a.messagesize", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_type = ProtoField.new("Message Type", "nyse.amexequities.bqt.xdp.v2.4.a.messagetype", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.mpv = ProtoField.new("Mpv", "nyse.amexequities.bqt.xdp.v2.4.a.mpv", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.amexequities.bqt.xdp.v2.4.a.nanoseconds", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.amexequities.bqt.xdp.v2.4.a.nextsourceseqnum", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.num_close_prices = ProtoField.new("Num Close Prices", "nyse.amexequities.bqt.xdp.v2.4.a.numcloseprices", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_high_price = ProtoField.new("Nyse Group High Price", "nyse.amexequities.bqt.xdp.v2.4.a.nysegrouphighprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_low_price = ProtoField.new("Nyse Group Low Price", "nyse.amexequities.bqt.xdp.v2.4.a.nysegrouplowprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_high_price = ProtoField.new("Nyse Group Market Id Of High Price", "nyse.amexequities.bqt.xdp.v2.4.a.nysegroupmarketidofhighprice", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_low_price = ProtoField.new("Nyse Group Market Id Of Low Price", "nyse.amexequities.bqt.xdp.v2.4.a.nysegroupmarketidoflowprice", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_the_close = ProtoField.new("Nyse Group Market Id Of The Close", "nyse.amexequities.bqt.xdp.v2.4.a.nysegroupmarketidoftheclose", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.amexequities.bqt.xdp.v2.4.a.originaltradeid", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.packet = ProtoField.new("Packet", "nyse.amexequities.bqt.xdp.v2.4.a.packet", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.amexequities.bqt.xdp.v2.4.a.packetheader", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.amexequities.bqt.xdp.v2.4.a.packetsize", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.amexequities.bqt.xdp.v2.4.a.prevcloseprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.amexequities.bqt.xdp.v2.4.a.prevclosevolume", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price = ProtoField.new("Price", "nyse.amexequities.bqt.xdp.v2.4.a.price", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price_1 = ProtoField.new("Price 1", "nyse.amexequities.bqt.xdp.v2.4.a.price1", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price_2 = ProtoField.new("Price 2", "nyse.amexequities.bqt.xdp.v2.4.a.price2", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.amexequities.bqt.xdp.v2.4.a.priceresolution", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.amexequities.bqt.xdp.v2.4.a.pricescalecode", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.primary_listing_market_official_close_price = ProtoField.new("Primary Listing Market Official Close Price", "nyse.amexequities.bqt.xdp.v2.4.a.primarylistingmarketofficialcloseprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.primary_listing_market_official_open_price = ProtoField.new("Primary Listing Market Official Open Price", "nyse.amexequities.bqt.xdp.v2.4.a.primarylistingmarketofficialopenprice", ftypes.DOUBLE)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.prior_day_time = ProtoField.new("Prior Day Time", "nyse.amexequities.bqt.xdp.v2.4.a.priordaytime", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.prior_day_time_ns = ProtoField.new("Prior Day Time Ns", "nyse.amexequities.bqt.xdp.v2.4.a.priordaytimens", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.product_id = ProtoField.new("Product Id", "nyse.amexequities.bqt.xdp.v2.4.a.productid", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.amexequities.bqt.xdp.v2.4.a.quotecondition", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.reason = ProtoField.new("Reason", "nyse.amexequities.bqt.xdp.v2.4.a.reason", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.amexequities.bqt.xdp.v2.4.a.requestseqnum", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.reserved = ProtoField.new("Reserved", "nyse.amexequities.bqt.xdp.v2.4.a.reserved", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.amexequities.bqt.xdp.v2.4.a.reserved1", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.amexequities.bqt.xdp.v2.4.a.reserved2", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retail_interest_on_the_ask_side = ProtoField.new("Retail Interest On The Ask Side", "nyse.amexequities.bqt.xdp.v2.4.a.retailinterestontheaskside", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retail_interest_on_the_bid_side = ProtoField.new("Retail Interest On The Bid Side", "nyse.amexequities.bqt.xdp.v2.4.a.retailinterestonthebidside", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retail_pricing_indicator = ProtoField.new("Retail Pricing Indicator", "nyse.amexequities.bqt.xdp.v2.4.a.retailpricingindicator", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.amexequities.bqt.xdp.v2.4.a.retransmitmethod", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.round_lot = ProtoField.new("Round Lot", "nyse.amexequities.bqt.xdp.v2.4.a.roundlot", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.security_status = ProtoField.new("Security Status", "nyse.amexequities.bqt.xdp.v2.4.a.securitystatus", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.security_type = ProtoField.new("Security Type", "nyse.amexequities.bqt.xdp.v2.4.a.securitytype", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.amexequities.bqt.xdp.v2.4.a.sequencenumber", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.session_state = ProtoField.new("Session State", "nyse.amexequities.bqt.xdp.v2.4.a.sessionstate", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.side = ProtoField.new("Side", "nyse.amexequities.bqt.xdp.v2.4.a.side", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.source_id = ProtoField.new("Source Id", "nyse.amexequities.bqt.xdp.v2.4.a.sourceid", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.source_time = ProtoField.new("Source Time", "nyse.amexequities.bqt.xdp.v2.4.a.sourcetime", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.amexequities.bqt.xdp.v2.4.a.sourcetimens", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ssr_state = ProtoField.new("Ssr State", "nyse.amexequities.bqt.xdp.v2.4.a.ssrstate", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.amexequities.bqt.xdp.v2.4.a.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.amexequities.bqt.xdp.v2.4.a.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.status = ProtoField.new("Status", "nyse.amexequities.bqt.xdp.v2.4.a.status", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol = ProtoField.new("Symbol", "nyse.amexequities.bqt.xdp.v2.4.a.symbol", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.amexequities.bqt.xdp.v2.4.a.symbolindex", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.amexequities.bqt.xdp.v2.4.a.symbolseqnum", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_seq_number = ProtoField.new("Symbol Seq Number", "nyse.amexequities.bqt.xdp.v2.4.a.symbolseqnumber", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.system_id = ProtoField.new("System Id", "nyse.amexequities.bqt.xdp.v2.4.a.systemid", ftypes.UINT8)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.time = ProtoField.new("Time", "nyse.amexequities.bqt.xdp.v2.4.a.time", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.amexequities.bqt.xdp.v2.4.a.timestamp", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.amexequities.bqt.xdp.v2.4.a.totalrefreshpkts", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.amexequities.bqt.xdp.v2.4.a.tradecond1", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_cond_2 = ProtoField.new("Trade Cond 2", "nyse.amexequities.bqt.xdp.v2.4.a.tradecond2", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_cond_3 = ProtoField.new("Trade Cond 3", "nyse.amexequities.bqt.xdp.v2.4.a.tradecond3", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_cond_4 = ProtoField.new("Trade Cond 4", "nyse.amexequities.bqt.xdp.v2.4.a.tradecond4", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_condition_1 = ProtoField.new("Trade Condition 1", "nyse.amexequities.bqt.xdp.v2.4.a.tradecondition1", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_condition_2 = ProtoField.new("Trade Condition 2", "nyse.amexequities.bqt.xdp.v2.4.a.tradecondition2", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_condition_3 = ProtoField.new("Trade Condition 3", "nyse.amexequities.bqt.xdp.v2.4.a.tradecondition3", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_condition_4 = ProtoField.new("Trade Condition 4", "nyse.amexequities.bqt.xdp.v2.4.a.tradecondition4", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.amexequities.bqt.xdp.v2.4.a.tradeid", ftypes.UINT32)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.amexequities.bqt.xdp.v2.4.a.unitoftrade", ftypes.UINT16)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.volume = ProtoField.new("Volume", "nyse.amexequities.bqt.xdp.v2.4.a.volume", ftypes.UINT32)

-- Nyse AmexEquities Xdp Bqt 2.4.a Application Messages
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.best_quotes_message = ProtoField.new("Best Quotes Message", "nyse.amexequities.bqt.xdp.v2.4.a.bestquotesmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_fractional_stock_summary_message = ProtoField.new("Consolidated Fractional Stock Summary Message", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedfractionalstocksummarymessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_fractional_volume_message = ProtoField.new("Consolidated Fractional Volume Message", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedfractionalvolumemessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_single_sided_quote_message = ProtoField.new("Consolidated Single Sided Quote Message", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedsinglesidedquotemessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_trade_cancel_message = ProtoField.new("Consolidated Trade Cancel Message", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedtradecancelmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_trade_correction_message = ProtoField.new("Consolidated Trade Correction Message", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedtradecorrectionmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_trade_message = ProtoField.new("Consolidated Trade Message", "nyse.amexequities.bqt.xdp.v2.4.a.consolidatedtrademessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.amexequities.bqt.xdp.v2.4.a.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.amexequities.bqt.xdp.v2.4.a.messageunavailablemessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.amexequities.bqt.xdp.v2.4.a.refreshheadermessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.amexequities.bqt.xdp.v2.4.a.refreshrequestmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.amexequities.bqt.xdp.v2.4.a.requestresponsemessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.amexequities.bqt.xdp.v2.4.a.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.amexequities.bqt.xdp.v2.4.a.securitystatusmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.amexequities.bqt.xdp.v2.4.a.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.amexequities.bqt.xdp.v2.4.a.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.amexequities.bqt.xdp.v2.4.a.symbolclearmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.amexequities.bqt.xdp.v2.4.a.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.amexequities.bqt.xdp.v2.4.a.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trf_fractional_prior_day_trade_cancel_message = ProtoField.new("Trf Fractional Prior Day Trade Cancel Message", "nyse.amexequities.bqt.xdp.v2.4.a.trffractionalpriordaytradecancelmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trf_fractional_prior_day_trade_message = ProtoField.new("Trf Fractional Prior Day Trade Message", "nyse.amexequities.bqt.xdp.v2.4.a.trffractionalpriordaytrademessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trf_fractional_trade_correction_message = ProtoField.new("Trf Fractional Trade Correction Message", "nyse.amexequities.bqt.xdp.v2.4.a.trffractionaltradecorrectionmessage", ftypes.STRING)
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trf_fractional_trade_message = ProtoField.new("Trf Fractional Trade Message", "nyse.amexequities.bqt.xdp.v2.4.a.trffractionaltrademessage", ftypes.STRING)

-- Nyse AmexEquities Bqt Xdp 2.4.a generated fields
omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_index = ProtoField.new("Message Index", "nyse.amexequities.bqt.xdp.v2.4.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse AmexEquities Bqt Xdp 2.4.a Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.retail_pricing_indicator = true
show.message_index = true

-- Register Nyse AmexEquities Bqt Xdp 2.4.a Show Options
omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_retail_pricing_indicator = Pref.bool("Show Retail Pricing Indicator", show.retail_pricing_indicator, "Parse and add Retail Pricing Indicator to protocol tree")
omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_application_messages then
    show.application_messages = omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_application_messages
  end
  if show.message ~= omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_message then
    show.message = omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_message
  end
  if show.message_header ~= omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_message_header then
    show.message_header = omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_packet then
    show.packet = omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_packet_header then
    show.packet_header = omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_packet_header
  end
  if show.retail_pricing_indicator ~= omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_retail_pricing_indicator then
    show.retail_pricing_indicator = omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_retail_pricing_indicator
  end
  if show.message_index ~= omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_message_index then
    show.message_index = omi_nyse_amexequities_bqt_xdp_v2_4_a.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Nyse AmexEquities Bqt Xdp 2.4.a Fields
-----------------------------------------------------------------------

-- Ask Price
nyse_amexequities_bqt_xdp_v2_4_a.ask_price = {}

-- Size: Ask Price
nyse_amexequities_bqt_xdp_v2_4_a.ask_price.size = 4

-- Display: Ask Price
nyse_amexequities_bqt_xdp_v2_4_a.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nyse_amexequities_bqt_xdp_v2_4_a.ask_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Ask Price
nyse_amexequities_bqt_xdp_v2_4_a.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.ask_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.ask_quote_condition = {}

-- Size: Ask Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.ask_quote_condition.size = 1

-- Display: Ask Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.ask_quote_condition.display = function(value)
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
    return "Ask Quote Condition: Slow On The Bid And Ask Due To Set Slow List (W)"
  end

  return "Ask Quote Condition: Unknown("..value..")"
end

-- Dissect: Ask Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.ask_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.ask_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.ask_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ask_quote_condition, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_amexequities_bqt_xdp_v2_4_a.ask_volume = {}

-- Size: Ask Volume
nyse_amexequities_bqt_xdp_v2_4_a.ask_volume.size = 4

-- Display: Ask Volume
nyse_amexequities_bqt_xdp_v2_4_a.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_amexequities_bqt_xdp_v2_4_a.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_amexequities_bqt_xdp_v2_4_a.bid_price = {}

-- Size: Bid Price
nyse_amexequities_bqt_xdp_v2_4_a.bid_price.size = 4

-- Display: Bid Price
nyse_amexequities_bqt_xdp_v2_4_a.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nyse_amexequities_bqt_xdp_v2_4_a.bid_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Bid Price
nyse_amexequities_bqt_xdp_v2_4_a.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.bid_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.bid_quote_condition = {}

-- Size: Bid Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.bid_quote_condition.size = 1

-- Display: Bid Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.bid_quote_condition.display = function(value)
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
    return "Bid Quote Condition: Slow On The Bid And Ask Due To Set Slow List (W)"
  end

  return "Bid Quote Condition: Unknown("..value..")"
end

-- Dissect: Bid Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_amexequities_bqt_xdp_v2_4_a.bid_volume = {}

-- Size: Bid Volume
nyse_amexequities_bqt_xdp_v2_4_a.bid_volume.size = 4

-- Display: Bid Volume
nyse_amexequities_bqt_xdp_v2_4_a.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_amexequities_bqt_xdp_v2_4_a.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_amexequities_bqt_xdp_v2_4_a.channel_id = {}

-- Size: Channel Id
nyse_amexequities_bqt_xdp_v2_4_a.channel_id.size = 1

-- Display: Channel Id
nyse_amexequities_bqt_xdp_v2_4_a.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_amexequities_bqt_xdp_v2_4_a.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Complete
nyse_amexequities_bqt_xdp_v2_4_a.complete = {}

-- Size: Complete
nyse_amexequities_bqt_xdp_v2_4_a.complete.size = 1

-- Display: Complete
nyse_amexequities_bqt_xdp_v2_4_a.complete.display = function(value)
  if value == 0 then
    return "Complete: Normal Data Is Complete (0)"
  end
  if value == 1 then
    return "Complete: An Unrecoverable Gap Was Experienced In The Input Stream So Data May Not Be Complete (1)"
  end

  return "Complete: Unknown("..value..")"
end

-- Dissect: Complete
nyse_amexequities_bqt_xdp_v2_4_a.complete.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.complete.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.complete.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.complete, range, value, display)

  return offset + length, value
end

-- Consolidated First Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price = {}

-- Size: Consolidated First Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price.size = 4

-- Display: Consolidated First Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price.display = function(value)
  return "Consolidated First Price: "..value
end

-- Translate: Consolidated First Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Consolidated First Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_first_price, range, value, display)

  return offset + length, value
end

-- Consolidated High Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price = {}

-- Size: Consolidated High Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price.size = 4

-- Display: Consolidated High Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price.display = function(value)
  return "Consolidated High Price: "..value
end

-- Translate: Consolidated High Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Consolidated High Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_high_price, range, value, display)

  return offset + length, value
end

-- Consolidated Last Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price = {}

-- Size: Consolidated Last Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price.size = 4

-- Display: Consolidated Last Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price.display = function(value)
  return "Consolidated Last Price: "..value
end

-- Translate: Consolidated Last Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Consolidated Last Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_last_price, range, value, display)

  return offset + length, value
end

-- Consolidated Low Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price = {}

-- Size: Consolidated Low Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price.size = 4

-- Display: Consolidated Low Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price.display = function(value)
  return "Consolidated Low Price: "..value
end

-- Translate: Consolidated Low Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Consolidated Low Price
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_low_price, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_amexequities_bqt_xdp_v2_4_a.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_amexequities_bqt_xdp_v2_4_a.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_amexequities_bqt_xdp_v2_4_a.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_amexequities_bqt_xdp_v2_4_a.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_amexequities_bqt_xdp_v2_4_a.delivery_flag = {}

-- Size: Delivery Flag
nyse_amexequities_bqt_xdp_v2_4_a.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_amexequities_bqt_xdp_v2_4_a.delivery_flag.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num = {}

-- Size: End Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.size = 4

-- Display: End Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_amexequities_bqt_xdp_v2_4_a.exchange_code = {}

-- Size: Exchange Code
nyse_amexequities_bqt_xdp_v2_4_a.exchange_code.size = 1

-- Display: Exchange Code
nyse_amexequities_bqt_xdp_v2_4_a.exchange_code.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Exec Day Time
nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time = {}

-- Size: Exec Day Time
nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time.size = 4

-- Display: Exec Day Time
nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time.display = function(value)
  return "Exec Day Time: "..value
end

-- Dissect: Exec Day Time
nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.exec_day_time, range, value, display)

  return offset + length, value
end

-- Exec Day Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns = {}

-- Size: Exec Day Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns.size = 4

-- Display: Exec Day Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns.display = function(value)
  return "Exec Day Time Ns: "..value
end

-- Dissect: Exec Day Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.exec_day_time_ns, range, value, display)

  return offset + length, value
end

-- Fractional Consolidated Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_consolidated_volume = {}

-- Size: Fractional Consolidated Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_consolidated_volume.size = 8

-- Display: Fractional Consolidated Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_consolidated_volume.display = function(value)
  return "Fractional Consolidated Volume: "..value
end

-- Dissect: Fractional Consolidated Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_consolidated_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.fractional_consolidated_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.fractional_consolidated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.fractional_consolidated_volume, range, value, display)

  return offset + length, value
end

-- Fractional Nyse Group Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_nyse_group_volume = {}

-- Size: Fractional Nyse Group Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.size = 8

-- Display: Fractional Nyse Group Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.display = function(value)
  return "Fractional Nyse Group Volume: "..value
end

-- Dissect: Fractional Nyse Group Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.fractional_nyse_group_volume, range, value, display)

  return offset + length, value
end

-- Fractional Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume = {}

-- Size: Fractional Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.size = 8

-- Display: Fractional Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.display = function(value)
  return "Fractional Volume: "..value
end

-- Dissect: Fractional Volume
nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.fractional_volume, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_amexequities_bqt_xdp_v2_4_a.halt_condition = {}

-- Size: Halt Condition
nyse_amexequities_bqt_xdp_v2_4_a.halt_condition.size = 1

-- Display: Halt Condition
nyse_amexequities_bqt_xdp_v2_4_a.halt_condition.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Id
nyse_amexequities_bqt_xdp_v2_4_a.id = {}

-- Size: Id
nyse_amexequities_bqt_xdp_v2_4_a.id.size = 4

-- Display: Id
nyse_amexequities_bqt_xdp_v2_4_a.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_amexequities_bqt_xdp_v2_4_a.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.id, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.last_seq_num = {}

-- Size: Last Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_amexequities_bqt_xdp_v2_4_a.lot_size = {}

-- Size: Lot Size
nyse_amexequities_bqt_xdp_v2_4_a.lot_size.size = 2

-- Display: Lot Size
nyse_amexequities_bqt_xdp_v2_4_a.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_amexequities_bqt_xdp_v2_4_a.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_amexequities_bqt_xdp_v2_4_a.market_id = {}

-- Size: Market Id
nyse_amexequities_bqt_xdp_v2_4_a.market_id.size = 2

-- Display: Market Id
nyse_amexequities_bqt_xdp_v2_4_a.market_id.display = function(value)
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
  if value == 0 then
    return "Market Id: Nyse Group Bqt (0)"
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
  if value == 255 then
    return "Market Id: Nyse Trf (255)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Id Of Best Ask
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_ask = {}

-- Size: Market Id Of Best Ask
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_ask.size = 2

-- Display: Market Id Of Best Ask
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_ask.display = function(value)
  return "Market Id Of Best Ask: "..value
end

-- Dissect: Market Id Of Best Ask
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_ask.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_id_of_best_ask, range, value, display)

  return offset + length, value
end

-- Market Id Of Best Bid
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_bid = {}

-- Size: Market Id Of Best Bid
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_bid.size = 2

-- Display: Market Id Of Best Bid
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_bid.display = function(value)
  return "Market Id Of Best Bid: "..value
end

-- Dissect: Market Id Of Best Bid
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_bid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_id_of_best_bid, range, value, display)

  return offset + length, value
end

-- Market Id Of Open Price
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_open_price = {}

-- Size: Market Id Of Open Price
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_open_price.size = 2

-- Display: Market Id Of Open Price
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_open_price.display = function(value)
  return "Market Id Of Open Price: "..value
end

-- Dissect: Market Id Of Open Price
nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_open_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_id_of_open_price, range, value, display)

  return offset + length, value
end

-- Market State
nyse_amexequities_bqt_xdp_v2_4_a.market_state = {}

-- Size: Market State
nyse_amexequities_bqt_xdp_v2_4_a.market_state.size = 1

-- Display: Market State
nyse_amexequities_bqt_xdp_v2_4_a.market_state.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_amexequities_bqt_xdp_v2_4_a.message_count = {}

-- Size: Message Count
nyse_amexequities_bqt_xdp_v2_4_a.message_count.size = 1

-- Display: Message Count
nyse_amexequities_bqt_xdp_v2_4_a.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_amexequities_bqt_xdp_v2_4_a.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_amexequities_bqt_xdp_v2_4_a.message_size = {}

-- Size: Message Size
nyse_amexequities_bqt_xdp_v2_4_a.message_size.size = 2

-- Display: Message Size
nyse_amexequities_bqt_xdp_v2_4_a.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_amexequities_bqt_xdp_v2_4_a.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_amexequities_bqt_xdp_v2_4_a.message_type = {}

-- Size: Message Type
nyse_amexequities_bqt_xdp_v2_4_a.message_type.size = 2

-- Display: Message Type
nyse_amexequities_bqt_xdp_v2_4_a.message_type.display = function(value)
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
  if value == 142 then
    return "Message Type: Best Quotes Message (142)"
  end
  if value == 143 then
    return "Message Type: Consolidated Single Sided Quote Message (143)"
  end
  if value == 210 then
    return "Message Type: Trf Fractional Trade Message (210)"
  end
  if value == 220 then
    return "Message Type: Consolidated Trade Message (220)"
  end
  if value == 221 then
    return "Message Type: Consolidated Trade Cancel Message (221)"
  end
  if value == 212 then
    return "Message Type: Trf Fractional Trade Correction Message (212)"
  end
  if value == 222 then
    return "Message Type: Consolidated Trade Correction Message (222)"
  end
  if value == 213 then
    return "Message Type: Trf Fractional Prior Day Trade Message (213)"
  end
  if value == 214 then
    return "Message Type: Trf Fractional Prior Day Trade Cancel Message (214)"
  end
  if value == 202 then
    return "Message Type: Consolidated Fractional Stock Summary Message (202)"
  end
  if value == 201 then
    return "Message Type: Consolidated Fractional Volume Message (201)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_amexequities_bqt_xdp_v2_4_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_amexequities_bqt_xdp_v2_4_a.mpv = {}

-- Size: Mpv
nyse_amexequities_bqt_xdp_v2_4_a.mpv.size = 2

-- Display: Mpv
nyse_amexequities_bqt_xdp_v2_4_a.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_amexequities_bqt_xdp_v2_4_a.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_amexequities_bqt_xdp_v2_4_a.nanoseconds = {}

-- Size: Nanoseconds
nyse_amexequities_bqt_xdp_v2_4_a.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_amexequities_bqt_xdp_v2_4_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_amexequities_bqt_xdp_v2_4_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Num Close Prices
nyse_amexequities_bqt_xdp_v2_4_a.num_close_prices = {}

-- Size: Num Close Prices
nyse_amexequities_bqt_xdp_v2_4_a.num_close_prices.size = 1

-- Display: Num Close Prices
nyse_amexequities_bqt_xdp_v2_4_a.num_close_prices.display = function(value)
  return "Num Close Prices: "..value
end

-- Dissect: Num Close Prices
nyse_amexequities_bqt_xdp_v2_4_a.num_close_prices.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.num_close_prices.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.num_close_prices.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.num_close_prices, range, value, display)

  return offset + length, value
end

-- Nyse Group High Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price = {}

-- Size: Nyse Group High Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price.size = 4

-- Display: Nyse Group High Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price.display = function(value)
  return "Nyse Group High Price: "..value
end

-- Translate: Nyse Group High Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Nyse Group High Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_high_price, range, value, display)

  return offset + length, value
end

-- Nyse Group Low Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price = {}

-- Size: Nyse Group Low Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price.size = 4

-- Display: Nyse Group Low Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price.display = function(value)
  return "Nyse Group Low Price: "..value
end

-- Translate: Nyse Group Low Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Nyse Group Low Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_low_price, range, value, display)

  return offset + length, value
end

-- Nyse Group Market Id Of High Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price = {}

-- Size: Nyse Group Market Id Of High Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.size = 2

-- Display: Nyse Group Market Id Of High Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.display = function(value)
  return "Nyse Group Market Id Of High Price: "..value
end

-- Dissect: Nyse Group Market Id Of High Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_high_price, range, value, display)

  return offset + length, value
end

-- Nyse Group Market Id Of Low Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price = {}

-- Size: Nyse Group Market Id Of Low Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.size = 2

-- Display: Nyse Group Market Id Of Low Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.display = function(value)
  return "Nyse Group Market Id Of Low Price: "..value
end

-- Dissect: Nyse Group Market Id Of Low Price
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_low_price, range, value, display)

  return offset + length, value
end

-- Nyse Group Market Id Of The Close
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close = {}

-- Size: Nyse Group Market Id Of The Close
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.size = 2

-- Display: Nyse Group Market Id Of The Close
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.display = function(value)
  return "Nyse Group Market Id Of The Close: "..value
end

-- Dissect: Nyse Group Market Id Of The Close
nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_the_close, range, value, display)

  return offset + length, value
end

-- Original Trade Id
nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id = {}

-- Size: Original Trade Id
nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.size = 4

-- Display: Original Trade Id
nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_amexequities_bqt_xdp_v2_4_a.packet_size = {}

-- Size: Packet Size
nyse_amexequities_bqt_xdp_v2_4_a.packet_size.size = 2

-- Display: Packet Size
nyse_amexequities_bqt_xdp_v2_4_a.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_amexequities_bqt_xdp_v2_4_a.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price = {}

-- Size: Prev Close Price
nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Translate: Prev Close Price
nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Prev Close Price
nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_amexequities_bqt_xdp_v2_4_a.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_amexequities_bqt_xdp_v2_4_a.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_amexequities_bqt_xdp_v2_4_a.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_amexequities_bqt_xdp_v2_4_a.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_amexequities_bqt_xdp_v2_4_a.price = {}

-- Size: Price
nyse_amexequities_bqt_xdp_v2_4_a.price.size = 4

-- Display: Price
nyse_amexequities_bqt_xdp_v2_4_a.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nyse_amexequities_bqt_xdp_v2_4_a.price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price
nyse_amexequities_bqt_xdp_v2_4_a.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_amexequities_bqt_xdp_v2_4_a.price_1 = {}

-- Size: Price 1
nyse_amexequities_bqt_xdp_v2_4_a.price_1.size = 4

-- Display: Price 1
nyse_amexequities_bqt_xdp_v2_4_a.price_1.display = function(value)
  return "Price 1: "..value
end

-- Translate: Price 1
nyse_amexequities_bqt_xdp_v2_4_a.price_1.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 1
nyse_amexequities_bqt_xdp_v2_4_a.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.price_1.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_amexequities_bqt_xdp_v2_4_a.price_2 = {}

-- Size: Price 2
nyse_amexequities_bqt_xdp_v2_4_a.price_2.size = 4

-- Display: Price 2
nyse_amexequities_bqt_xdp_v2_4_a.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nyse_amexequities_bqt_xdp_v2_4_a.price_2.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 2
nyse_amexequities_bqt_xdp_v2_4_a.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.price_2.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_amexequities_bqt_xdp_v2_4_a.price_resolution = {}

-- Size: Price Resolution
nyse_amexequities_bqt_xdp_v2_4_a.price_resolution.size = 1

-- Display: Price Resolution
nyse_amexequities_bqt_xdp_v2_4_a.price_resolution.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_amexequities_bqt_xdp_v2_4_a.price_scale_code = {}

-- Size: Price Scale Code
nyse_amexequities_bqt_xdp_v2_4_a.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_amexequities_bqt_xdp_v2_4_a.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_amexequities_bqt_xdp_v2_4_a.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Official Close Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price = {}

-- Size: Primary Listing Market Official Close Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.size = 4

-- Display: Primary Listing Market Official Close Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.display = function(value)
  return "Primary Listing Market Official Close Price: "..value
end

-- Translate: Primary Listing Market Official Close Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Primary Listing Market Official Close Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.primary_listing_market_official_close_price, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Official Open Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price = {}

-- Size: Primary Listing Market Official Open Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.size = 4

-- Display: Primary Listing Market Official Open Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.display = function(value)
  return "Primary Listing Market Official Open Price: "..value
end

-- Translate: Primary Listing Market Official Open Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Primary Listing Market Official Open Price
nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.translate(raw)
  local display = nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.primary_listing_market_official_open_price, range, value, display)

  return offset + length, value
end

-- Prior Day Time
nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time = {}

-- Size: Prior Day Time
nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time.size = 4

-- Display: Prior Day Time
nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time.display = function(value)
  return "Prior Day Time: "..value
end

-- Dissect: Prior Day Time
nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.prior_day_time, range, value, display)

  return offset + length, value
end

-- Prior Day Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns = {}

-- Size: Prior Day Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns.size = 4

-- Display: Prior Day Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns.display = function(value)
  return "Prior Day Time Ns: "..value
end

-- Dissect: Prior Day Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.prior_day_time_ns, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_amexequities_bqt_xdp_v2_4_a.product_id = {}

-- Size: Product Id
nyse_amexequities_bqt_xdp_v2_4_a.product_id.size = 1

-- Display: Product Id
nyse_amexequities_bqt_xdp_v2_4_a.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_amexequities_bqt_xdp_v2_4_a.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.quote_condition = {}

-- Size: Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.quote_condition.size = 1

-- Display: Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.quote_condition.display = function(value)
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
    return "Quote Condition: Slow On The Bid And Ask Due To Set Slow List (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_amexequities_bqt_xdp_v2_4_a.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reason
nyse_amexequities_bqt_xdp_v2_4_a.reason = {}

-- Size: Reason
nyse_amexequities_bqt_xdp_v2_4_a.reason.size = 1

-- Display: Reason
nyse_amexequities_bqt_xdp_v2_4_a.reason.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.reason.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.reason, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.request_seq_num = {}

-- Size: Request Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_amexequities_bqt_xdp_v2_4_a.reserved_1 = {}

-- Size: Reserved 1
nyse_amexequities_bqt_xdp_v2_4_a.reserved_1.size = 1

-- Display: Reserved 1
nyse_amexequities_bqt_xdp_v2_4_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_amexequities_bqt_xdp_v2_4_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_amexequities_bqt_xdp_v2_4_a.reserved_2 = {}

-- Size: Reserved 2
nyse_amexequities_bqt_xdp_v2_4_a.reserved_2.size = 2

-- Display: Reserved 2
nyse_amexequities_bqt_xdp_v2_4_a.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_amexequities_bqt_xdp_v2_4_a.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_amexequities_bqt_xdp_v2_4_a.retransmit_method = {}

-- Size: Retransmit Method
nyse_amexequities_bqt_xdp_v2_4_a.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_amexequities_bqt_xdp_v2_4_a.retransmit_method.display = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_amexequities_bqt_xdp_v2_4_a.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_amexequities_bqt_xdp_v2_4_a.round_lot = {}

-- Size: Round Lot
nyse_amexequities_bqt_xdp_v2_4_a.round_lot.size = 1

-- Display: Round Lot
nyse_amexequities_bqt_xdp_v2_4_a.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_amexequities_bqt_xdp_v2_4_a.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_amexequities_bqt_xdp_v2_4_a.security_status = {}

-- Size: Security Status
nyse_amexequities_bqt_xdp_v2_4_a.security_status.size = 1

-- Display: Security Status
nyse_amexequities_bqt_xdp_v2_4_a.security_status.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_amexequities_bqt_xdp_v2_4_a.security_type = {}

-- Size: Security Type
nyse_amexequities_bqt_xdp_v2_4_a.security_type.size = 1

-- Display: Security Type
nyse_amexequities_bqt_xdp_v2_4_a.security_type.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_amexequities_bqt_xdp_v2_4_a.sequence_number = {}

-- Size: Sequence Number
nyse_amexequities_bqt_xdp_v2_4_a.sequence_number.size = 4

-- Display: Sequence Number
nyse_amexequities_bqt_xdp_v2_4_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_amexequities_bqt_xdp_v2_4_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session State
nyse_amexequities_bqt_xdp_v2_4_a.session_state = {}

-- Size: Session State
nyse_amexequities_bqt_xdp_v2_4_a.session_state.size = 1

-- Display: Session State
nyse_amexequities_bqt_xdp_v2_4_a.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_amexequities_bqt_xdp_v2_4_a.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.session_state, range, value, display)

  return offset + length, value
end

-- Side
nyse_amexequities_bqt_xdp_v2_4_a.side = {}

-- Size: Side
nyse_amexequities_bqt_xdp_v2_4_a.side.size = 1

-- Display: Side
nyse_amexequities_bqt_xdp_v2_4_a.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell Offer (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_amexequities_bqt_xdp_v2_4_a.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.side, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_amexequities_bqt_xdp_v2_4_a.source_id = {}

-- Size: Source Id
nyse_amexequities_bqt_xdp_v2_4_a.source_id.size = 10

-- Display: Source Id
nyse_amexequities_bqt_xdp_v2_4_a.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_amexequities_bqt_xdp_v2_4_a.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.source_id.size
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

  local display = nyse_amexequities_bqt_xdp_v2_4_a.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_amexequities_bqt_xdp_v2_4_a.source_time = {}

-- Size: Source Time
nyse_amexequities_bqt_xdp_v2_4_a.source_time.size = 4

-- Display: Source Time
nyse_amexequities_bqt_xdp_v2_4_a.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns = {}

-- Size: Source Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_amexequities_bqt_xdp_v2_4_a.ssr_state = {}

-- Size: Ssr State
nyse_amexequities_bqt_xdp_v2_4_a.ssr_state.size = 1

-- Display: Ssr State
nyse_amexequities_bqt_xdp_v2_4_a.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_amexequities_bqt_xdp_v2_4_a.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_exchange_id.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_amexequities_bqt_xdp_v2_4_a.status = {}

-- Size: Status
nyse_amexequities_bqt_xdp_v2_4_a.status.size = 1

-- Display: Status
nyse_amexequities_bqt_xdp_v2_4_a.status.display = function(value)
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
nyse_amexequities_bqt_xdp_v2_4_a.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_amexequities_bqt_xdp_v2_4_a.symbol = {}

-- Size: Symbol
nyse_amexequities_bqt_xdp_v2_4_a.symbol.size = 11

-- Display: Symbol
nyse_amexequities_bqt_xdp_v2_4_a.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_amexequities_bqt_xdp_v2_4_a.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.symbol.size
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

  local display = nyse_amexequities_bqt_xdp_v2_4_a.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index = {}

-- Size: Symbol Index
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size = 4

-- Display: Symbol Index
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Seq Number
nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number = {}

-- Size: Symbol Seq Number
nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.size = 4

-- Display: Symbol Seq Number
nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.display = function(value)
  return "Symbol Seq Number: "..value
end

-- Dissect: Symbol Seq Number
nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_seq_number, range, value, display)

  return offset + length, value
end

-- System Id
nyse_amexequities_bqt_xdp_v2_4_a.system_id = {}

-- Size: System Id
nyse_amexequities_bqt_xdp_v2_4_a.system_id.size = 1

-- Display: System Id
nyse_amexequities_bqt_xdp_v2_4_a.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_amexequities_bqt_xdp_v2_4_a.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_amexequities_bqt_xdp_v2_4_a.time = {}

-- Size: Time
nyse_amexequities_bqt_xdp_v2_4_a.time.size = 4

-- Display: Time
nyse_amexequities_bqt_xdp_v2_4_a.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_amexequities_bqt_xdp_v2_4_a.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.time, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_amexequities_bqt_xdp_v2_4_a.timestamp = {}

-- Size: Timestamp
nyse_amexequities_bqt_xdp_v2_4_a.timestamp.size = 4

-- Display: Timestamp
nyse_amexequities_bqt_xdp_v2_4_a.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_amexequities_bqt_xdp_v2_4_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_amexequities_bqt_xdp_v2_4_a.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_amexequities_bqt_xdp_v2_4_a.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_amexequities_bqt_xdp_v2_4_a.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_amexequities_bqt_xdp_v2_4_a.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Trade Cond 1
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1 = {}

-- Size: Trade Cond 1
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.size = 1

-- Display: Trade Cond 1
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.display = function(value)
  if value == "@" then
    return "Trade Cond 1: Regular Sale (@)"
  end
  if value == " " then
    return "Trade Cond 1: Regular Sale Trf Only (<whitespace>)"
  end
  if value == "C" then
    return "Trade Cond 1: Cash Trf Or Texas Only (C)"
  end
  if value == "R" then
    return "Trade Cond 1: Seller Trf Only (R)"
  end

  return "Trade Cond 1: Unknown("..value..")"
end

-- Dissect: Trade Cond 1
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_cond_1, range, value, display)

  return offset + length, value
end

-- Trade Cond 2
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2 = {}

-- Size: Trade Cond 2
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.size = 1

-- Display: Trade Cond 2
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.display = function(value)
  if value == " " then
    return "Trade Cond 2: Na (<whitespace>)"
  end
  if value == "F" then
    return "Trade Cond 2: Intermarket Sweep Order (F)"
  end
  if value == "O" then
    return "Trade Cond 2: Market Center Opening Trade (O)"
  end
  if value == "4" then
    return "Trade Cond 2: Derivatively Priced Trf Only (4)"
  end
  if value == "5" then
    return "Trade Cond 2: Reopening Trade (5)"
  end
  if value == "6" then
    return "Trade Cond 2: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Trade Cond 2: Qualified Contingent Trade Trf Or Texas Only (7)"
  end
  if value == "9" then
    return "Trade Cond 2: Corrected Consolidated Close (9)"
  end

  return "Trade Cond 2: Unknown("..value..")"
end

-- Dissect: Trade Cond 2
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_cond_2, range, value, display)

  return offset + length, value
end

-- Trade Cond 3
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3 = {}

-- Size: Trade Cond 3
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.size = 1

-- Display: Trade Cond 3
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.display = function(value)
  if value == " " then
    return "Trade Cond 3: Na (<whitespace>)"
  end
  if value == "T" then
    return "Trade Cond 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Trade Cond 3: Extended Hours Sold Out Of Sequence (U)"
  end
  if value == "Z" then
    return "Trade Cond 3: Sold (Z)"
  end

  return "Trade Cond 3: Unknown("..value..")"
end

-- Dissect: Trade Cond 3
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_cond_3, range, value, display)

  return offset + length, value
end

-- Trade Cond 4
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4 = {}

-- Size: Trade Cond 4
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.size = 1

-- Display: Trade Cond 4
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.display = function(value)
  if value == " " then
    return "Trade Cond 4: Na (<whitespace>)"
  end
  if value == "I" then
    return "Trade Cond 4: Odd Lot Trade (I)"
  end
  if value == "M" then
    return "Trade Cond 4: Official Closing Price (M)"
  end
  if value == "Q" then
    return "Trade Cond 4: Official Open Price (Q)"
  end
  if value == "V" then
    return "Trade Cond 4: Contingent Trade Trf Or Texas Only (V)"
  end
  if value == "P" then
    return "Trade Cond 4: Prior Reference Price Trf Only (P)"
  end
  if value == "W" then
    return "Trade Cond 4: Weighted Average Price Trf Only (W)"
  end

  return "Trade Cond 4: Unknown("..value..")"
end

-- Dissect: Trade Cond 4
nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_cond_4, range, value, display)

  return offset + length, value
end

-- Trade Condition 1
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1 = {}

-- Size: Trade Condition 1
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1.size = 1

-- Display: Trade Condition 1
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1.display = function(value)
  if value == "@" then
    return "Trade Condition 1: Regular Sale (@)"
  end
  if value == " " then
    return "Trade Condition 1: Regular Sale For Trf (<whitespace>)"
  end
  if value == "C" then
    return "Trade Condition 1: Cash Trf Or Texas Only (C)"
  end
  if value == "R" then
    return "Trade Condition 1: Seller Trf Only (R)"
  end

  return "Trade Condition 1: Unknown("..value..")"
end

-- Dissect: Trade Condition 1
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_condition_1, range, value, display)

  return offset + length, value
end

-- Trade Condition 2
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2 = {}

-- Size: Trade Condition 2
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2.size = 1

-- Display: Trade Condition 2
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2.display = function(value)
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
    return "Trade Condition 2: Derivatively Priced Trf Only (4)"
  end
  if value == "5" then
    return "Trade Condition 2: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Trade Condition 2: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Trade Condition 2: Qualified Contingent Trade Trf Or Texas Only (7)"
  end
  if value == "9" then
    return "Trade Condition 2: Corrected Last Sale Price (9)"
  end

  return "Trade Condition 2: Unknown("..value..")"
end

-- Dissect: Trade Condition 2
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_condition_2, range, value, display)

  return offset + length, value
end

-- Trade Condition 3
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3 = {}

-- Size: Trade Condition 3
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3.size = 1

-- Display: Trade Condition 3
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3.display = function(value)
  if value == " " then
    return "Trade Condition 3: Na (<whitespace>)"
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
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_condition_3, range, value, display)

  return offset + length, value
end

-- Trade Condition 4
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4 = {}

-- Size: Trade Condition 4
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4.size = 1

-- Display: Trade Condition 4
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4.display = function(value)
  if value == "@" then
    return "Trade Condition 4: Regular Sale (@)"
  end
  if value == " " then
    return "Trade Condition 4: Na (<whitespace>)"
  end
  if value == "I" then
    return "Trade Condition 4: Odd Lot Trade (I)"
  end
  if value == "M" then
    return "Trade Condition 4: Official Closing Price (M)"
  end
  if value == "Q" then
    return "Trade Condition 4: Official Open Price (Q)"
  end
  if value == "V" then
    return "Trade Condition 4: Contingent Trade Trf Or Texas Only (V)"
  end
  if value == "P" then
    return "Trade Condition 4: Prior Reference Price Trf Only (P)"
  end
  if value == "W" then
    return "Trade Condition 4: Weighted Average Price Trf Only (W)"
  end

  return "Trade Condition 4: Unknown("..value..")"
end

-- Dissect: Trade Condition 4
nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_condition_4, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_amexequities_bqt_xdp_v2_4_a.trade_id = {}

-- Size: Trade Id
nyse_amexequities_bqt_xdp_v2_4_a.trade_id.size = 4

-- Display: Trade Id
nyse_amexequities_bqt_xdp_v2_4_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_amexequities_bqt_xdp_v2_4_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_amexequities_bqt_xdp_v2_4_a.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_amexequities_bqt_xdp_v2_4_a.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_amexequities_bqt_xdp_v2_4_a.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_amexequities_bqt_xdp_v2_4_a.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Volume
nyse_amexequities_bqt_xdp_v2_4_a.volume = {}

-- Size: Volume
nyse_amexequities_bqt_xdp_v2_4_a.volume.size = 4

-- Display: Volume
nyse_amexequities_bqt_xdp_v2_4_a.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_amexequities_bqt_xdp_v2_4_a.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_bqt_xdp_v2_4_a.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse AmexEquities Bqt Xdp 2.4.a
-----------------------------------------------------------------------

-- Consolidated Fractional Volume Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message = {}

-- Size: Consolidated Fractional Volume Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.fractional_consolidated_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.reason.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.complete.size

-- Display: Consolidated Fractional Volume Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Fractional Volume Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Fractional Consolidated Volume: Binary
  index, fractional_consolidated_volume = nyse_amexequities_bqt_xdp_v2_4_a.fractional_consolidated_volume.dissect(buffer, index, packet, parent)

  -- Reason: Binary
  index, reason = nyse_amexequities_bqt_xdp_v2_4_a.reason.dissect(buffer, index, packet, parent)

  -- Complete: Binary
  index, complete = nyse_amexequities_bqt_xdp_v2_4_a.complete.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Fractional Volume Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_fractional_volume_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Fractional Stock Summary Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message = {}

-- Size: Consolidated Fractional Stock Summary Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_open_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.num_close_prices.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.complete.size

-- Display: Consolidated Fractional Stock Summary Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Fractional Stock Summary Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Nyse Group High Price: Binary
  index, nyse_group_high_price = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_high_price.dissect(buffer, index, packet, parent)

  -- Nyse Group Low Price: Binary
  index, nyse_group_low_price = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_low_price.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Official Open Price: Binary
  index, primary_listing_market_official_open_price = nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.dissect(buffer, index, packet, parent)

  -- Fractional Nyse Group Volume: Binary
  index, fractional_nyse_group_volume = nyse_amexequities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.dissect(buffer, index, packet, parent)

  -- Nyse Group Market Id Of High Price: Binary
  index, nyse_group_market_id_of_high_price = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.dissect(buffer, index, packet, parent)

  -- Nyse Group Market Id Of Low Price: Binary
  index, nyse_group_market_id_of_low_price = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.dissect(buffer, index, packet, parent)

  -- Market Id Of Open Price: Binary
  index, market_id_of_open_price = nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_open_price.dissect(buffer, index, packet, parent)

  -- Num Close Prices: Binary
  index, num_close_prices = nyse_amexequities_bqt_xdp_v2_4_a.num_close_prices.dissect(buffer, index, packet, parent)

  -- Nyse Group Market Id Of The Close: Binary
  index, nyse_group_market_id_of_the_close = nyse_amexequities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Official Close Price: Binary
  index, primary_listing_market_official_close_price = nyse_amexequities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: Binary
  index, consolidated_high_price = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: Binary
  index, consolidated_low_price = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated First Price: Binary
  index, consolidated_first_price = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_first_price.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: Binary
  index, consolidated_last_price = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Complete: Binary
  index, complete = nyse_amexequities_bqt_xdp_v2_4_a.complete.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Fractional Stock Summary Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_fractional_stock_summary_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Trf Fractional Prior Day Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message = {}

-- Size: Trf Fractional Prior Day Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns.size

-- Display: Trf Fractional Prior Day Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trf Fractional Prior Day Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_amexequities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_amexequities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Fractional Volume: Binary
  index, fractional_volume = nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.dissect(buffer, index, packet, parent)

  -- Prior Day Time: Binary
  index, prior_day_time = nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time.dissect(buffer, index, packet, parent)

  -- Prior Day Time Ns: Binary
  index, prior_day_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trf Fractional Prior Day Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trf_fractional_prior_day_trade_cancel_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trf Fractional Prior Day Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message = {}

-- Size: Trf Fractional Prior Day Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns.size

-- Display: Trf Fractional Prior Day Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trf Fractional Prior Day Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_amexequities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_amexequities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Fractional Volume: Binary
  index, fractional_volume = nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: ASCII
  index, trade_cond_2 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: ASCII
  index, trade_cond_3 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: ASCII
  index, trade_cond_4 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.dissect(buffer, index, packet, parent)

  -- Prior Day Time: Binary
  index, prior_day_time = nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time.dissect(buffer, index, packet, parent)

  -- Prior Day Time Ns: Binary
  index, prior_day_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.prior_day_time_ns.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trf Fractional Prior Day Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trf_fractional_prior_day_trade_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_correction_message = {}

-- Size: Consolidated Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id.size

-- Display: Consolidated Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_amexequities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_amexequities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexequities_bqt_xdp_v2_4_a.volume.dissect(buffer, index, packet, parent)

  -- Trade Condition 1: ASCII
  index, trade_condition_1 = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1.dissect(buffer, index, packet, parent)

  -- Trade Condition 2: ASCII
  index, trade_condition_2 = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2.dissect(buffer, index, packet, parent)

  -- Trade Condition 3: ASCII
  index, trade_condition_3 = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3.dissect(buffer, index, packet, parent)

  -- Trade Condition 4: ASCII
  index, trade_condition_4 = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_trade_correction_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trf Fractional Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message = {}

-- Size: Trf Fractional Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id.size

-- Display: Trf Fractional Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trf Fractional Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_amexequities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_amexequities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Fractional Volume: Binary
  index, fractional_volume = nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: ASCII
  index, trade_cond_2 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: ASCII
  index, trade_cond_3 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: ASCII
  index, trade_cond_4 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.dissect(buffer, index, packet, parent)

  -- Exec Day Time: Binary
  index, exec_day_time = nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time.dissect(buffer, index, packet, parent)

  -- Exec Day Time Ns: Binary
  index, exec_day_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trf Fractional Trade Correction Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trf_fractional_trade_correction_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message = {}

-- Size: Consolidated Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id.size

-- Display: Consolidated Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_amexequities_bqt_xdp_v2_4_a.original_trade_id.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Cancel Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_trade_cancel_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_message = {}

-- Size: Consolidated Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id.size

-- Display: Consolidated Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_amexequities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_amexequities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexequities_bqt_xdp_v2_4_a.volume.dissect(buffer, index, packet, parent)

  -- Trade Condition 1: ASCII
  index, trade_condition_1 = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_1.dissect(buffer, index, packet, parent)

  -- Trade Condition 2: ASCII
  index, trade_condition_2 = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_2.dissect(buffer, index, packet, parent)

  -- Trade Condition 3: ASCII
  index, trade_condition_3 = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_3.dissect(buffer, index, packet, parent)

  -- Trade Condition 4: ASCII
  index, trade_condition_4 = nyse_amexequities_bqt_xdp_v2_4_a.trade_condition_4.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_trade_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trf Fractional Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_message = {}

-- Size: Trf Fractional Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id.size

-- Display: Trf Fractional Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trf Fractional Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_amexequities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_amexequities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Fractional Volume: Binary
  index, fractional_volume = nyse_amexequities_bqt_xdp_v2_4_a.fractional_volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: ASCII
  index, trade_cond_2 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: ASCII
  index, trade_cond_3 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: ASCII
  index, trade_cond_4 = nyse_amexequities_bqt_xdp_v2_4_a.trade_cond_4.dissect(buffer, index, packet, parent)

  -- Exec Day Time: Binary
  index, exec_day_time = nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time.dissect(buffer, index, packet, parent)

  -- Exec Day Time Ns: Binary
  index, exec_day_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.exec_day_time_ns.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trf Fractional Trade Message
nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.trf_fractional_trade_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Pricing Indicator
nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator = {}

-- Size: Retail Pricing Indicator
nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.size = 1

-- Display: Retail Pricing Indicator
nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Retail Interest On The Bid Side flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Retail Interest On The Bid Side"
  end
  -- Is Retail Interest On The Ask Side flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Retail Interest On The Ask Side"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Retail Pricing Indicator
nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.bits = function(range, value, packet, parent)

  -- Retail Interest On The Bid Side: 1 Bit
  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retail_interest_on_the_bid_side, range, value)

  -- Retail Interest On The Ask Side: 1 Bit
  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retail_interest_on_the_ask_side, range, value)

  -- Reserved: 6 Bit
  parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.reserved, range, value)
end

-- Dissect: Retail Pricing Indicator
nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retail_pricing_indicator, range, display)

  if show.retail_pricing_indicator then
    nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Consolidated Single Sided Quote Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message = {}

-- Size: Consolidated Single Sided Quote Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.side.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.quote_condition.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id.size

-- Display: Consolidated Single Sided Quote Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Single Sided Quote Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_amexequities_bqt_xdp_v2_4_a.side.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_amexequities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexequities_bqt_xdp_v2_4_a.volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_amexequities_bqt_xdp_v2_4_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Retail Pricing Indicator: Struct of 3 fields
  index, retail_pricing_indicator = nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Single Sided Quote Message
nyse_amexequities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.consolidated_single_sided_quote_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Quotes Message
nyse_amexequities_bqt_xdp_v2_4_a.best_quotes_message = {}

-- Size: Best Quotes Message
nyse_amexequities_bqt_xdp_v2_4_a.best_quotes_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.ask_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.ask_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.bid_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.bid_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.ask_quote_condition.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.bid_quote_condition.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_ask.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_bid.size

-- Display: Best Quotes Message
nyse_amexequities_bqt_xdp_v2_4_a.best_quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Quotes Message
nyse_amexequities_bqt_xdp_v2_4_a.best_quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary
  index, ask_price = nyse_amexequities_bqt_xdp_v2_4_a.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: Binary
  index, ask_volume = nyse_amexequities_bqt_xdp_v2_4_a.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary
  index, bid_price = nyse_amexequities_bqt_xdp_v2_4_a.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: Binary
  index, bid_volume = nyse_amexequities_bqt_xdp_v2_4_a.bid_volume.dissect(buffer, index, packet, parent)

  -- Ask Quote Condition: ASCII
  index, ask_quote_condition = nyse_amexequities_bqt_xdp_v2_4_a.ask_quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Quote Condition: ASCII
  index, bid_quote_condition = nyse_amexequities_bqt_xdp_v2_4_a.bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Retail Pricing Indicator: Struct of 3 fields
  index, retail_pricing_indicator = nyse_amexequities_bqt_xdp_v2_4_a.retail_pricing_indicator.dissect(buffer, index, packet, parent)

  -- Market Id Of Best Ask: Binary
  index, market_id_of_best_ask = nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_ask.dissect(buffer, index, packet, parent)

  -- Market Id Of Best Bid: Binary
  index, market_id_of_best_bid = nyse_amexequities_bqt_xdp_v2_4_a.market_id_of_best_bid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Quotes Message
nyse_amexequities_bqt_xdp_v2_4_a.best_quotes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.best_quotes_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.best_quotes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.best_quotes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.best_quotes_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_amexequities_bqt_xdp_v2_4_a.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_amexequities_bqt_xdp_v2_4_a.heartbeat_response_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_id.size

-- Display: Heartbeat Response Message
nyse_amexequities_bqt_xdp_v2_4_a.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_amexequities_bqt_xdp_v2_4_a.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_bqt_xdp_v2_4_a.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_amexequities_bqt_xdp_v2_4_a.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_amexequities_bqt_xdp_v2_4_a.request_response_message = {}

-- Size: Request Response Message
nyse_amexequities_bqt_xdp_v2_4_a.request_response_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.request_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.product_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.channel_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.status.size

-- Display: Request Response Message
nyse_amexequities_bqt_xdp_v2_4_a.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_amexequities_bqt_xdp_v2_4_a.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_bqt_xdp_v2_4_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_bqt_xdp_v2_4_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_bqt_xdp_v2_4_a.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_amexequities_bqt_xdp_v2_4_a.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_amexequities_bqt_xdp_v2_4_a.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.request_response_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_header_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.current_refresh_pkt.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.total_refresh_pkts.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.last_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_amexequities_bqt_xdp_v2_4_a.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_amexequities_bqt_xdp_v2_4_a.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_amexequities_bqt_xdp_v2_4_a.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_amexequities_bqt_xdp_v2_4_a.message_unavailable_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.product_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.channel_id.size

-- Display: Message Unavailable Message
nyse_amexequities_bqt_xdp_v2_4_a.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_amexequities_bqt_xdp_v2_4_a.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_bqt_xdp_v2_4_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_bqt_xdp_v2_4_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_amexequities_bqt_xdp_v2_4_a.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_request_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.product_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.channel_id.size

-- Display: Refresh Request Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_bqt_xdp_v2_4_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_bqt_xdp_v2_4_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_bqt_xdp_v2_4_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_amexequities_bqt_xdp_v2_4_a.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_request_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.product_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.channel_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_bqt_xdp_v2_4_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_bqt_xdp_v2_4_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_bqt_xdp_v2_4_a.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_amexequities_bqt_xdp_v2_4_a.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_amexequities_bqt_xdp_v2_4_a.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_amexequities_bqt_xdp_v2_4_a.retransmission_request_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.product_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.channel_id.size

-- Display: Retransmission Request Message
nyse_amexequities_bqt_xdp_v2_4_a.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_amexequities_bqt_xdp_v2_4_a.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexequities_bqt_xdp_v2_4_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_bqt_xdp_v2_4_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_bqt_xdp_v2_4_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_amexequities_bqt_xdp_v2_4_a.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_amexequities_bqt_xdp_v2_4_a.security_status_message = {}

-- Size: Security Status Message
nyse_amexequities_bqt_xdp_v2_4_a.security_status_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.security_status.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.halt_condition.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.reserved_2.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price_1.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price_2.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_exchange_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.ssr_state.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_state.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.session_state.size

-- Display: Security Status Message
nyse_amexequities_bqt_xdp_v2_4_a.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_amexequities_bqt_xdp_v2_4_a.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_amexequities_bqt_xdp_v2_4_a.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_amexequities_bqt_xdp_v2_4_a.halt_condition.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_amexequities_bqt_xdp_v2_4_a.reserved_2.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_amexequities_bqt_xdp_v2_4_a.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_amexequities_bqt_xdp_v2_4_a.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_amexequities_bqt_xdp_v2_4_a.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_amexequities_bqt_xdp_v2_4_a.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_amexequities_bqt_xdp_v2_4_a.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_amexequities_bqt_xdp_v2_4_a.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_amexequities_bqt_xdp_v2_4_a.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_amexequities_bqt_xdp_v2_4_a.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.security_status_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_clear_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.next_source_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id.size

-- Display: Symbol Clear Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.next_source_seq_num.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.reserved_1.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.market_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.system_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.exchange_code.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price_scale_code.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.security_type.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.lot_size.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.prev_close_volume.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.price_resolution.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.round_lot.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.mpv.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.unit_of_trade.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_amexequities_bqt_xdp_v2_4_a.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_amexequities_bqt_xdp_v2_4_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexequities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_amexequities_bqt_xdp_v2_4_a.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_amexequities_bqt_xdp_v2_4_a.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_amexequities_bqt_xdp_v2_4_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_amexequities_bqt_xdp_v2_4_a.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_amexequities_bqt_xdp_v2_4_a.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_amexequities_bqt_xdp_v2_4_a.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_amexequities_bqt_xdp_v2_4_a.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_amexequities_bqt_xdp_v2_4_a.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_amexequities_bqt_xdp_v2_4_a.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_amexequities_bqt_xdp_v2_4_a.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: Binary
  index, unit_of_trade = nyse_amexequities_bqt_xdp_v2_4_a.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_amexequities_bqt_xdp_v2_4_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_amexequities_bqt_xdp_v2_4_a.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_amexequities_bqt_xdp_v2_4_a.source_time_reference_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size

-- Display: Source Time Reference Message
nyse_amexequities_bqt_xdp_v2_4_a.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_amexequities_bqt_xdp_v2_4_a.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_amexequities_bqt_xdp_v2_4_a.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexequities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_amexequities_bqt_xdp_v2_4_a.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_amexequities_bqt_xdp_v2_4_a.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_amexequities_bqt_xdp_v2_4_a.sequence_number_reset_message.size =
  nyse_amexequities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.product_id.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.channel_id.size

-- Display: Sequence Number Reset Message
nyse_amexequities_bqt_xdp_v2_4_a.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_amexequities_bqt_xdp_v2_4_a.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexequities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexequities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexequities_bqt_xdp_v2_4_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexequities_bqt_xdp_v2_4_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_amexequities_bqt_xdp_v2_4_a.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_amexequities_bqt_xdp_v2_4_a.payload = {}

-- Dissect: Payload
nyse_amexequities_bqt_xdp_v2_4_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_amexequities_bqt_xdp_v2_4_a.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_amexequities_bqt_xdp_v2_4_a.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_amexequities_bqt_xdp_v2_4_a.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_amexequities_bqt_xdp_v2_4_a.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_amexequities_bqt_xdp_v2_4_a.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_amexequities_bqt_xdp_v2_4_a.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_amexequities_bqt_xdp_v2_4_a.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_amexequities_bqt_xdp_v2_4_a.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_amexequities_bqt_xdp_v2_4_a.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_amexequities_bqt_xdp_v2_4_a.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_amexequities_bqt_xdp_v2_4_a.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Quotes Message
  if message_type == 142 then
    return nyse_amexequities_bqt_xdp_v2_4_a.best_quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Single Sided Quote Message
  if message_type == 143 then
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trf Fractional Trade Message
  if message_type == 210 then
    return nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Message
  if message_type == 220 then
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Cancel Message
  if message_type == 221 then
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trf Fractional Trade Correction Message
  if message_type == 212 then
    return nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Correction Message
  if message_type == 222 then
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trf Fractional Prior Day Trade Message
  if message_type == 213 then
    return nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trf Fractional Prior Day Trade Cancel Message
  if message_type == 214 then
    return nyse_amexequities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Fractional Stock Summary Message
  if message_type == 202 then
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Fractional Volume Message
  if message_type == 201 then
    return nyse_amexequities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_amexequities_bqt_xdp_v2_4_a.message_header = {}

-- Size: Message Header
nyse_amexequities_bqt_xdp_v2_4_a.message_header.size =
  nyse_amexequities_bqt_xdp_v2_4_a.message_size.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.message_type.size

-- Display: Message Header
nyse_amexequities_bqt_xdp_v2_4_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_amexequities_bqt_xdp_v2_4_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_amexequities_bqt_xdp_v2_4_a.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 23 values
  index, message_type = nyse_amexequities_bqt_xdp_v2_4_a.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_amexequities_bqt_xdp_v2_4_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_header, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_amexequities_bqt_xdp_v2_4_a.message = {}

-- Display: Message
nyse_amexequities_bqt_xdp_v2_4_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_amexequities_bqt_xdp_v2_4_a.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_amexequities_bqt_xdp_v2_4_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 23 branches
  index = nyse_amexequities_bqt_xdp_v2_4_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_amexequities_bqt_xdp_v2_4_a.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.message, buffer(offset, 0))
    local current = nyse_amexequities_bqt_xdp_v2_4_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_amexequities_bqt_xdp_v2_4_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
nyse_amexequities_bqt_xdp_v2_4_a.packet_header = {}

-- Size: Packet Header
nyse_amexequities_bqt_xdp_v2_4_a.packet_header.size =
  nyse_amexequities_bqt_xdp_v2_4_a.packet_size.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.delivery_flag.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.message_count.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.sequence_number.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.timestamp.size + 
  nyse_amexequities_bqt_xdp_v2_4_a.nanoseconds.size

-- Display: Packet Header
nyse_amexequities_bqt_xdp_v2_4_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_amexequities_bqt_xdp_v2_4_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_amexequities_bqt_xdp_v2_4_a.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_amexequities_bqt_xdp_v2_4_a.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_amexequities_bqt_xdp_v2_4_a.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_amexequities_bqt_xdp_v2_4_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_amexequities_bqt_xdp_v2_4_a.timestamp.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_amexequities_bqt_xdp_v2_4_a.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_amexequities_bqt_xdp_v2_4_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_amexequities_bqt_xdp_v2_4_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_bqt_xdp_v2_4_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_bqt_xdp_v2_4_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_amexequities_bqt_xdp_v2_4_a.packet = {}

-- Verify required size of Udp packet
nyse_amexequities_bqt_xdp_v2_4_a.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_amexequities_bqt_xdp_v2_4_a.packet_header.size
end

-- Dissect Packet
nyse_amexequities_bqt_xdp_v2_4_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_amexequities_bqt_xdp_v2_4_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_amexequities_bqt_xdp_v2_4_a.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_amexequities_bqt_xdp_v2_4_a.init()
end

-- Dissector for Nyse AmexEquities Bqt Xdp 2.4.a
function omi_nyse_amexequities_bqt_xdp_v2_4_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_amexequities_bqt_xdp_v2_4_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_amexequities_bqt_xdp_v2_4_a, buffer(), omi_nyse_amexequities_bqt_xdp_v2_4_a.description, "("..buffer:len().." Bytes)")
  return nyse_amexequities_bqt_xdp_v2_4_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_amexequities_bqt_xdp_v2_4_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse AmexEquities Bqt Xdp 2.4.a (Udp)
local function omi_nyse_amexequities_bqt_xdp_v2_4_a_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_amexequities_bqt_xdp_v2_4_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_amexequities_bqt_xdp_v2_4_a
  omi_nyse_amexequities_bqt_xdp_v2_4_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse AmexEquities Bqt Xdp 2.4.a
omi_nyse_amexequities_bqt_xdp_v2_4_a:register_heuristic("udp", omi_nyse_amexequities_bqt_xdp_v2_4_a_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.4.a
--   Date: Thursday, March 5, 2026
--   Specification: NYSE_BQT_Client_Specification.pdf
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
