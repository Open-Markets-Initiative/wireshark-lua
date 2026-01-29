-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Arca Options TopFeed Pillar 1.2.c Protocol
local omi_nyse_arca_options_topfeed_pillar_v1_2_c = Proto("Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.Lua", "Nyse Arca Options TopFeed Pillar 1.2.c")

-- Protocol table
local nyse_arca_options_topfeed_pillar_v1_2_c = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Arca Options TopFeed Pillar 1.2.c Fields
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ask_customer_volume = ProtoField.new("Ask Customer Volume", "nyse.arca.options.topfeed.pillar.v1.2.c.askcustomervolume", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ask_price = ProtoField.new("Ask Price", "nyse.arca.options.topfeed.pillar.v1.2.c.askprice", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.arca.options.topfeed.pillar.v1.2.c.askvolume", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.auction_id = ProtoField.new("Auction Id", "nyse.arca.options.topfeed.pillar.v1.2.c.auctionid", ftypes.UINT64)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.arca.options.topfeed.pillar.v1.2.c.auctioninterestclearingprice", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.auction_status = ProtoField.new("Auction Status", "nyse.arca.options.topfeed.pillar.v1.2.c.auctionstatus", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.auction_type = ProtoField.new("Auction Type", "nyse.arca.options.topfeed.pillar.v1.2.c.auctiontype", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.arca.options.topfeed.pillar.v1.2.c.beginseqnum", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.bid_customer_volume = ProtoField.new("Bid Customer Volume", "nyse.arca.options.topfeed.pillar.v1.2.c.bidcustomervolume", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.bid_price = ProtoField.new("Bid Price", "nyse.arca.options.topfeed.pillar.v1.2.c.bidprice", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.arca.options.topfeed.pillar.v1.2.c.bidvolume", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.capacity = ProtoField.new("Capacity", "nyse.arca.options.topfeed.pillar.v1.2.c.capacity", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.channel_id = ProtoField.new("Channel Id", "nyse.arca.options.topfeed.pillar.v1.2.c.channelid", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.close = ProtoField.new("Close", "nyse.arca.options.topfeed.pillar.v1.2.c.close", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.closing_only_indicator = ProtoField.new("Closing Only Indicator", "nyse.arca.options.topfeed.pillar.v1.2.c.closingonlyindicator", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.arca.options.topfeed.pillar.v1.2.c.continuousbookclearingprice", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.arca.options.topfeed.pillar.v1.2.c.contractmultiplier", ftypes.UINT16)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.correction_condition = ProtoField.new("Correction Condition", "nyse.arca.options.topfeed.pillar.v1.2.c.correctioncondition", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.arca.options.topfeed.pillar.v1.2.c.currentrefreshpkt", ftypes.UINT16)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arca.options.topfeed.pillar.v1.2.c.deliveryflag", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.arca.options.topfeed.pillar.v1.2.c.endseqnum", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.arca.options.topfeed.pillar.v1.2.c.exchangecode", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.arca.options.topfeed.pillar.v1.2.c.haltcondition", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.high_price = ProtoField.new("High Price", "nyse.arca.options.topfeed.pillar.v1.2.c.highprice", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.id = ProtoField.new("Id", "nyse.arca.options.topfeed.pillar.v1.2.c.id", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.arca.options.topfeed.pillar.v1.2.c.imbalanceside", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.arca.options.topfeed.pillar.v1.2.c.indicativematchprice", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.arca.options.topfeed.pillar.v1.2.c.lastseqnum", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.arca.options.topfeed.pillar.v1.2.c.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.lot_size = ProtoField.new("Lot Size", "nyse.arca.options.topfeed.pillar.v1.2.c.lotsize", ftypes.UINT16)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.low_price = ProtoField.new("Low Price", "nyse.arca.options.topfeed.pillar.v1.2.c.lowprice", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.arca.options.topfeed.pillar.v1.2.c.lowercollar", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.market_id = ProtoField.new("Market Id", "nyse.arca.options.topfeed.pillar.v1.2.c.marketid", ftypes.UINT16)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.arca.options.topfeed.pillar.v1.2.c.marketimbalanceqty", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.market_state = ProtoField.new("Market State", "nyse.arca.options.topfeed.pillar.v1.2.c.marketstate", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.arca.options.topfeed.pillar.v1.2.c.maturitydate", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message = ProtoField.new("Message", "nyse.arca.options.topfeed.pillar.v1.2.c.message", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_header = ProtoField.new("Message Header", "nyse.arca.options.topfeed.pillar.v1.2.c.messageheader", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_size = ProtoField.new("Message Size", "nyse.arca.options.topfeed.pillar.v1.2.c.messagesize", ftypes.UINT16)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_type = ProtoField.new("Message Type", "nyse.arca.options.topfeed.pillar.v1.2.c.messagetype", ftypes.UINT16)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arca.options.topfeed.pillar.v1.2.c.nanoseconds", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.arca.options.topfeed.pillar.v1.2.c.nextsourceseqnum", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.arca.options.topfeed.pillar.v1.2.c.numbermsgs", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.offical = ProtoField.new("Offical", "nyse.arca.options.topfeed.pillar.v1.2.c.offical", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.open = ProtoField.new("Open", "nyse.arca.options.topfeed.pillar.v1.2.c.open", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.opening = ProtoField.new("Opening", "nyse.arca.options.topfeed.pillar.v1.2.c.opening", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.option_symbol_root = ProtoField.new("Option Symbol Root", "nyse.arca.options.topfeed.pillar.v1.2.c.optionsymbolroot", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.arca.options.topfeed.pillar.v1.2.c.originaltradeid", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.packet = ProtoField.new("Packet", "nyse.arca.options.topfeed.pillar.v1.2.c.packet", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.packet_header = ProtoField.new("Packet Header", "nyse.arca.options.topfeed.pillar.v1.2.c.packetheader", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.arca.options.topfeed.pillar.v1.2.c.pairedqty", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.participant = ProtoField.new("Participant", "nyse.arca.options.topfeed.pillar.v1.2.c.participant", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.payload = ProtoField.new("Payload", "nyse.arca.options.topfeed.pillar.v1.2.c.payload", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.arca.options.topfeed.pillar.v1.2.c.pktsize", ftypes.UINT16)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.arca.options.topfeed.pillar.v1.2.c.prevcloseprice", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.arca.options.topfeed.pillar.v1.2.c.prevclosevolume", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price = ProtoField.new("Price", "nyse.arca.options.topfeed.pillar.v1.2.c.price", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price_1 = ProtoField.new("Price 1", "nyse.arca.options.topfeed.pillar.v1.2.c.price1", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price_2 = ProtoField.new("Price 2", "nyse.arca.options.topfeed.pillar.v1.2.c.price2", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.arca.options.topfeed.pillar.v1.2.c.priceresolution", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.arca.options.topfeed.pillar.v1.2.c.pricescalecode", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.product_id = ProtoField.new("Product Id", "nyse.arca.options.topfeed.pillar.v1.2.c.productid", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.arca.options.topfeed.pillar.v1.2.c.putorcall", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.arca.options.topfeed.pillar.v1.2.c.quotecondition", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.arca.options.topfeed.pillar.v1.2.c.requestseqnum", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arca.options.topfeed.pillar.v1.2.c.reserved1", ftypes.BYTES)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.arca.options.topfeed.pillar.v1.2.c.reserved2", ftypes.BYTES)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_3 = ProtoField.new("Reserved 3", "nyse.arca.options.topfeed.pillar.v1.2.c.reserved3", ftypes.BYTES)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.arca.options.topfeed.pillar.v1.2.c.reserved4", ftypes.BYTES)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_6 = ProtoField.new("Reserved 6", "nyse.arca.options.topfeed.pillar.v1.2.c.reserved6", ftypes.BYTES)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.arca.options.topfeed.pillar.v1.2.c.retransmitmethod", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.rfq_status = ProtoField.new("Rfq Status", "nyse.arca.options.topfeed.pillar.v1.2.c.rfqstatus", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.round_lot = ProtoField.new("Round Lot", "nyse.arca.options.topfeed.pillar.v1.2.c.roundlot", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.seconds = ProtoField.new("Seconds", "nyse.arca.options.topfeed.pillar.v1.2.c.seconds", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.security_status = ProtoField.new("Security Status", "nyse.arca.options.topfeed.pillar.v1.2.c.securitystatus", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.security_type = ProtoField.new("Security Type", "nyse.arca.options.topfeed.pillar.v1.2.c.securitytype", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.send_time = ProtoField.new("Send Time", "nyse.arca.options.topfeed.pillar.v1.2.c.sendtime", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.seq_num = ProtoField.new("Seq Num", "nyse.arca.options.topfeed.pillar.v1.2.c.seqnum", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series = ProtoField.new("Series", "nyse.arca.options.topfeed.pillar.v1.2.c.series", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_index = ProtoField.new("Series Index", "nyse.arca.options.topfeed.pillar.v1.2.c.seriesindex", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_seq_num = ProtoField.new("Series Seq Num", "nyse.arca.options.topfeed.pillar.v1.2.c.seriesseqnum", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_status = ProtoField.new("Series Status", "nyse.arca.options.topfeed.pillar.v1.2.c.seriesstatus", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_type = ProtoField.new("Series Type", "nyse.arca.options.topfeed.pillar.v1.2.c.seriestype", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.session_state = ProtoField.new("Session State", "nyse.arca.options.topfeed.pillar.v1.2.c.sessionstate", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.side = ProtoField.new("Side", "nyse.arca.options.topfeed.pillar.v1.2.c.side", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.source_id = ProtoField.new("Source Id", "nyse.arca.options.topfeed.pillar.v1.2.c.sourceid", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.source_time = ProtoField.new("Source Time", "nyse.arca.options.topfeed.pillar.v1.2.c.sourcetime", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.arca.options.topfeed.pillar.v1.2.c.sourcetimens", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ssr_state = ProtoField.new("Ssr State", "nyse.arca.options.topfeed.pillar.v1.2.c.ssrstate", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.arca.options.topfeed.pillar.v1.2.c.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.arca.options.topfeed.pillar.v1.2.c.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.status = ProtoField.new("Status", "nyse.arca.options.topfeed.pillar.v1.2.c.status", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.strike_price = ProtoField.new("Strike Price", "nyse.arca.options.topfeed.pillar.v1.2.c.strikeprice", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol = ProtoField.new("Symbol", "nyse.arca.options.topfeed.pillar.v1.2.c.symbol", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.arca.options.topfeed.pillar.v1.2.c.symbolindex", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.arca.options.topfeed.pillar.v1.2.c.symbolseqnum", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.system_id = ProtoField.new("System Id", "nyse.arca.options.topfeed.pillar.v1.2.c.systemid", ftypes.UINT8)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.time = ProtoField.new("Time", "nyse.arca.options.topfeed.pillar.v1.2.c.time", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.arca.options.topfeed.pillar.v1.2.c.totalimbalanceqty", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.total_quantity = ProtoField.new("Total Quantity", "nyse.arca.options.topfeed.pillar.v1.2.c.totalquantity", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.arca.options.topfeed.pillar.v1.2.c.totalrefreshpkts", ftypes.UINT16)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.total_volume = ProtoField.new("Total Volume", "nyse.arca.options.topfeed.pillar.v1.2.c.totalvolume", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.trade_condition = ProtoField.new("Trade Condition", "nyse.arca.options.topfeed.pillar.v1.2.c.tradecondition", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.trade_id = ProtoField.new("Trade Id", "nyse.arca.options.topfeed.pillar.v1.2.c.tradeid", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.transaction = ProtoField.new("Transaction", "nyse.arca.options.topfeed.pillar.v1.2.c.transaction", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.type = ProtoField.new("Type", "nyse.arca.options.topfeed.pillar.v1.2.c.type", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.underlying_index = ProtoField.new("Underlying Index", "nyse.arca.options.topfeed.pillar.v1.2.c.underlyingindex", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nyse.arca.options.topfeed.pillar.v1.2.c.underlyingsymbol", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.arca.options.topfeed.pillar.v1.2.c.uppercollar", ftypes.INT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.volume = ProtoField.new("Volume", "nyse.arca.options.topfeed.pillar.v1.2.c.volume", ftypes.UINT32)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.working_price = ProtoField.new("Working Price", "nyse.arca.options.topfeed.pillar.v1.2.c.workingprice", ftypes.INT32)

-- Nyse Arca Options TopFeed Pillar 1.2.c messages
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.arca.options.topfeed.pillar.v1.2.c.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.arca.options.topfeed.pillar.v1.2.c.messageunavailablemessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_imbalance_message = ProtoField.new("Options Imbalance Message", "nyse.arca.options.topfeed.pillar.v1.2.c.optionsimbalancemessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_quote_message = ProtoField.new("Options Quote Message", "nyse.arca.options.topfeed.pillar.v1.2.c.optionsquotemessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_status_message = ProtoField.new("Options Status Message", "nyse.arca.options.topfeed.pillar.v1.2.c.optionsstatusmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_trade_cancel_message = ProtoField.new("Options Trade Cancel Message", "nyse.arca.options.topfeed.pillar.v1.2.c.optionstradecancelmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_trade_correction_message = ProtoField.new("Options Trade Correction Message", "nyse.arca.options.topfeed.pillar.v1.2.c.optionstradecorrectionmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_trade_message = ProtoField.new("Options Trade Message", "nyse.arca.options.topfeed.pillar.v1.2.c.optionstrademessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.outright_series_index_mapping_message = ProtoField.new("Outright Series Index Mapping Message", "nyse.arca.options.topfeed.pillar.v1.2.c.outrightseriesindexmappingmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.outright_series_summary_message = ProtoField.new("Outright Series Summary Message", "nyse.arca.options.topfeed.pillar.v1.2.c.outrightseriessummarymessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.arca.options.topfeed.pillar.v1.2.c.refreshheadermessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.arca.options.topfeed.pillar.v1.2.c.refreshrequestmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.arca.options.topfeed.pillar.v1.2.c.requestresponsemessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.arca.options.topfeed.pillar.v1.2.c.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.arca.options.topfeed.pillar.v1.2.c.securitystatusmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.arca.options.topfeed.pillar.v1.2.c.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_rfq_message = ProtoField.new("Series Rfq Message", "nyse.arca.options.topfeed.pillar.v1.2.c.seriesrfqmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.arca.options.topfeed.pillar.v1.2.c.symbolclearmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.arca.options.topfeed.pillar.v1.2.c.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.arca.options.topfeed.pillar.v1.2.c.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.time_reference_message = ProtoField.new("Time Reference Message", "nyse.arca.options.topfeed.pillar.v1.2.c.timereferencemessage", ftypes.STRING)

-- Nyse Arca Options TopFeed Pillar 1.2.c generated fields
omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_index = ProtoField.new("Message Index", "nyse.arca.options.topfeed.pillar.v1.2.c.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Arca Options TopFeed Pillar 1.2.c Element Dissection Options
show.correction_condition = true
show.heartbeat_response_message = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.options_imbalance_message = true
show.options_quote_message = true
show.options_status_message = true
show.options_trade_cancel_message = true
show.options_trade_correction_message = true
show.options_trade_message = true
show.outright_series_index_mapping_message = true
show.outright_series_summary_message = true
show.packet = true
show.packet_header = true
show.refresh_header_message = true
show.refresh_request_message = true
show.request_response_message = true
show.retransmission_request_message = true
show.security_status_message = true
show.send_time = true
show.sequence_number_reset_message = true
show.series_rfq_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.time_reference_message = true
show.trade_condition = true
show.payload = false

-- Register Nyse Arca Options TopFeed Pillar 1.2.c Show Options
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_correction_condition = Pref.bool("Show Correction Condition", show.correction_condition, "Parse and add Correction Condition to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_imbalance_message = Pref.bool("Show Options Imbalance Message", show.options_imbalance_message, "Parse and add Options Imbalance Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_quote_message = Pref.bool("Show Options Quote Message", show.options_quote_message, "Parse and add Options Quote Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_status_message = Pref.bool("Show Options Status Message", show.options_status_message, "Parse and add Options Status Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_trade_cancel_message = Pref.bool("Show Options Trade Cancel Message", show.options_trade_cancel_message, "Parse and add Options Trade Cancel Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_trade_correction_message = Pref.bool("Show Options Trade Correction Message", show.options_trade_correction_message, "Parse and add Options Trade Correction Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_trade_message = Pref.bool("Show Options Trade Message", show.options_trade_message, "Parse and add Options Trade Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_outright_series_index_mapping_message = Pref.bool("Show Outright Series Index Mapping Message", show.outright_series_index_mapping_message, "Parse and add Outright Series Index Mapping Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_outright_series_summary_message = Pref.bool("Show Outright Series Summary Message", show.outright_series_summary_message, "Parse and add Outright Series Summary Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_series_rfq_message = Pref.bool("Show Series Rfq Message", show.series_rfq_message, "Parse and add Series Rfq Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_time_reference_message = Pref.bool("Show Time Reference Message", show.time_reference_message, "Parse and add Time Reference Message to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_trade_condition = Pref.bool("Show Trade Condition", show.trade_condition, "Parse and add Trade Condition to protocol tree")
omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.correction_condition ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_correction_condition then
    show.correction_condition = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_correction_condition
    changed = true
  end
  if show.heartbeat_response_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_message then
    show.message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_message_header then
    show.message_header = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_message_unavailable_message then
    show.message_unavailable_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_message_unavailable_message
    changed = true
  end
  if show.options_imbalance_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_imbalance_message then
    show.options_imbalance_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_imbalance_message
    changed = true
  end
  if show.options_quote_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_quote_message then
    show.options_quote_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_quote_message
    changed = true
  end
  if show.options_status_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_status_message then
    show.options_status_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_status_message
    changed = true
  end
  if show.options_trade_cancel_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_trade_cancel_message then
    show.options_trade_cancel_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_trade_cancel_message
    changed = true
  end
  if show.options_trade_correction_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_trade_correction_message then
    show.options_trade_correction_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_trade_correction_message
    changed = true
  end
  if show.options_trade_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_trade_message then
    show.options_trade_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_options_trade_message
    changed = true
  end
  if show.outright_series_index_mapping_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_outright_series_index_mapping_message then
    show.outright_series_index_mapping_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_outright_series_index_mapping_message
    changed = true
  end
  if show.outright_series_summary_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_outright_series_summary_message then
    show.outright_series_summary_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_outright_series_summary_message
    changed = true
  end
  if show.packet ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_packet then
    show.packet = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_packet_header then
    show.packet_header = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_refresh_header_message then
    show.refresh_header_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_refresh_request_message then
    show.refresh_request_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_request_response_message then
    show.request_response_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_retransmission_request_message then
    show.retransmission_request_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_security_status_message then
    show.security_status_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_security_status_message
    changed = true
  end
  if show.send_time ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_send_time then
    show.send_time = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_send_time
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.series_rfq_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_series_rfq_message then
    show.series_rfq_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_series_rfq_message
    changed = true
  end
  if show.symbol_clear_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_symbol_clear_message then
    show.symbol_clear_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.time_reference_message ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_time_reference_message then
    show.time_reference_message = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_time_reference_message
    changed = true
  end
  if show.trade_condition ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_trade_condition then
    show.trade_condition = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_trade_condition
    changed = true
  end
  if show.payload ~= omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_payload then
    show.payload = omi_nyse_arca_options_topfeed_pillar_v1_2_c.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Arca Options TopFeed Pillar 1.2.c
-----------------------------------------------------------------------

-- Total Volume
nyse_arca_options_topfeed_pillar_v1_2_c.total_volume = {}

-- Size: Total Volume
nyse_arca_options_topfeed_pillar_v1_2_c.total_volume.size = 4

-- Display: Total Volume
nyse_arca_options_topfeed_pillar_v1_2_c.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_arca_options_topfeed_pillar_v1_2_c.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Close
nyse_arca_options_topfeed_pillar_v1_2_c.close = {}

-- Size: Close
nyse_arca_options_topfeed_pillar_v1_2_c.close.size = 4

-- Display: Close
nyse_arca_options_topfeed_pillar_v1_2_c.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_arca_options_topfeed_pillar_v1_2_c.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.close.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.close, range, value, display)

  return offset + length, value
end

-- Open
nyse_arca_options_topfeed_pillar_v1_2_c.open = {}

-- Size: Open
nyse_arca_options_topfeed_pillar_v1_2_c.open.size = 4

-- Display: Open
nyse_arca_options_topfeed_pillar_v1_2_c.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_arca_options_topfeed_pillar_v1_2_c.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.open.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.open, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_arca_options_topfeed_pillar_v1_2_c.low_price = {}

-- Size: Low Price
nyse_arca_options_topfeed_pillar_v1_2_c.low_price.size = 4

-- Display: Low Price
nyse_arca_options_topfeed_pillar_v1_2_c.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_arca_options_topfeed_pillar_v1_2_c.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.low_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.low_price, range, value, display)

  return offset + length, value
end

-- High Price
nyse_arca_options_topfeed_pillar_v1_2_c.high_price = {}

-- Size: High Price
nyse_arca_options_topfeed_pillar_v1_2_c.high_price.size = 4

-- Display: High Price
nyse_arca_options_topfeed_pillar_v1_2_c.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_arca_options_topfeed_pillar_v1_2_c.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.high_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.high_price, range, value, display)

  return offset + length, value
end

-- Series Index
nyse_arca_options_topfeed_pillar_v1_2_c.series_index = {}

-- Size: Series Index
nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size = 4

-- Display: Series Index
nyse_arca_options_topfeed_pillar_v1_2_c.series_index.display = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_index, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns = {}

-- Size: Source Time Ns
nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_arca_options_topfeed_pillar_v1_2_c.source_time = {}

-- Size: Source Time
nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size = 4

-- Display: Source Time
nyse_arca_options_topfeed_pillar_v1_2_c.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.source_time, range, value, display)

  return offset + length, value
end

-- Outright Series Summary Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message = {}

-- Size: Outright Series Summary Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.high_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.low_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.open.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.close.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.total_volume.size

-- Display: Outright Series Summary Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Summary Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- High Price: 4 Byte Signed Fixed Width Integer
  index, high_price = nyse_arca_options_topfeed_pillar_v1_2_c.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: 4 Byte Signed Fixed Width Integer
  index, low_price = nyse_arca_options_topfeed_pillar_v1_2_c.low_price.dissect(buffer, index, packet, parent)

  -- Open: 4 Byte Signed Fixed Width Integer
  index, open = nyse_arca_options_topfeed_pillar_v1_2_c.open.dissect(buffer, index, packet, parent)

  -- Close: 4 Byte Signed Fixed Width Integer
  index, close = nyse_arca_options_topfeed_pillar_v1_2_c.close.dissect(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_arca_options_topfeed_pillar_v1_2_c.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Summary Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.outright_series_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.outright_series_summary_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Rfq Status
nyse_arca_options_topfeed_pillar_v1_2_c.rfq_status = {}

-- Size: Rfq Status
nyse_arca_options_topfeed_pillar_v1_2_c.rfq_status.size = 1

-- Display: Rfq Status
nyse_arca_options_topfeed_pillar_v1_2_c.rfq_status.display = function(value)
  if value == "O" then
    return "Rfq Status: Start (O)"
  end
  if value == "Q" then
    return "Rfq Status: End (Q)"
  end

  return "Rfq Status: Unknown("..value..")"
end

-- Dissect: Rfq Status
nyse_arca_options_topfeed_pillar_v1_2_c.rfq_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.rfq_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.rfq_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.rfq_status, range, value, display)

  return offset + length, value
end

-- Auction Id
nyse_arca_options_topfeed_pillar_v1_2_c.auction_id = {}

-- Size: Auction Id
nyse_arca_options_topfeed_pillar_v1_2_c.auction_id.size = 8

-- Display: Auction Id
nyse_arca_options_topfeed_pillar_v1_2_c.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nyse_arca_options_topfeed_pillar_v1_2_c.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Participant
nyse_arca_options_topfeed_pillar_v1_2_c.participant = {}

-- Size: Participant
nyse_arca_options_topfeed_pillar_v1_2_c.participant.size = 4

-- Display: Participant
nyse_arca_options_topfeed_pillar_v1_2_c.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nyse_arca_options_topfeed_pillar_v1_2_c.participant.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.participant.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.participant, range, value, display)

  return offset + length, value
end

-- Working Price
nyse_arca_options_topfeed_pillar_v1_2_c.working_price = {}

-- Size: Working Price
nyse_arca_options_topfeed_pillar_v1_2_c.working_price.size = 4

-- Display: Working Price
nyse_arca_options_topfeed_pillar_v1_2_c.working_price.display = function(value)
  return "Working Price: "..value
end

-- Dissect: Working Price
nyse_arca_options_topfeed_pillar_v1_2_c.working_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.working_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.working_price, range, value, display)

  return offset + length, value
end

-- Total Quantity
nyse_arca_options_topfeed_pillar_v1_2_c.total_quantity = {}

-- Size: Total Quantity
nyse_arca_options_topfeed_pillar_v1_2_c.total_quantity.size = 4

-- Display: Total Quantity
nyse_arca_options_topfeed_pillar_v1_2_c.total_quantity.display = function(value)
  return "Total Quantity: "..value
end

-- Dissect: Total Quantity
nyse_arca_options_topfeed_pillar_v1_2_c.total_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.total_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.total_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.total_quantity, range, value, display)

  return offset + length, value
end

-- Capacity
nyse_arca_options_topfeed_pillar_v1_2_c.capacity = {}

-- Size: Capacity
nyse_arca_options_topfeed_pillar_v1_2_c.capacity.size = 1

-- Display: Capacity
nyse_arca_options_topfeed_pillar_v1_2_c.capacity.display = function(value)
  if value == " " then
    return "Capacity: Not Specified (<whitespace>)"
  end
  if value == "0" then
    return "Capacity: Customer (0)"
  end
  if value == "1" then
    return "Capacity: Firm (1)"
  end
  if value == "2" then
    return "Capacity: Broker Dealer (2)"
  end
  if value == "3" then
    return "Capacity: Market Maker (3)"
  end
  if value == "8" then
    return "Capacity: Professional Customer (8)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nyse_arca_options_topfeed_pillar_v1_2_c.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.capacity, range, value, display)

  return offset + length, value
end

-- Type
nyse_arca_options_topfeed_pillar_v1_2_c.type = {}

-- Size: Type
nyse_arca_options_topfeed_pillar_v1_2_c.type.size = 1

-- Display: Type
nyse_arca_options_topfeed_pillar_v1_2_c.type.display = function(value)
  if value == "P" then
    return "Type: Price Improvement (P)"
  end
  if value == "F" then
    return "Type: Facilitation (F)"
  end
  if value == "S" then
    return "Type: Solicitation (S)"
  end
  if value == "B" then
    return "Type: Bold (B)"
  end
  if value == "C" then
    return "Type: Coa (C)"
  end

  return "Type: Unknown("..value..")"
end

-- Dissect: Type
nyse_arca_options_topfeed_pillar_v1_2_c.type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.type, range, value, display)

  return offset + length, value
end

-- Side
nyse_arca_options_topfeed_pillar_v1_2_c.side = {}

-- Size: Side
nyse_arca_options_topfeed_pillar_v1_2_c.side.size = 1

-- Display: Side
nyse_arca_options_topfeed_pillar_v1_2_c.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_arca_options_topfeed_pillar_v1_2_c.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.side, range, value, display)

  return offset + length, value
end

-- Series Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num = {}

-- Size: Series Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.size = 4

-- Display: Series Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.display = function(value)
  return "Series Seq Num: "..value
end

-- Dissect: Series Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_seq_num, range, value, display)

  return offset + length, value
end

-- Series Rfq Message
nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message = {}

-- Size: Series Rfq Message
nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.side.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.type.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.capacity.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.total_quantity.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.working_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.participant.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.auction_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.rfq_status.size

-- Display: Series Rfq Message
nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Rfq Message
nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_arca_options_topfeed_pillar_v1_2_c.side.dissect(buffer, index, packet, parent)

  -- Type: 1 Byte Ascii String Enum with 5 values
  index, type = nyse_arca_options_topfeed_pillar_v1_2_c.type.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 6 values
  index, capacity = nyse_arca_options_topfeed_pillar_v1_2_c.capacity.dissect(buffer, index, packet, parent)

  -- Total Quantity: 4 Byte Unsigned Fixed Width Integer
  index, total_quantity = nyse_arca_options_topfeed_pillar_v1_2_c.total_quantity.dissect(buffer, index, packet, parent)

  -- Working Price: 4 Byte Signed Fixed Width Integer
  index, working_price = nyse_arca_options_topfeed_pillar_v1_2_c.working_price.dissect(buffer, index, packet, parent)

  -- Participant: 4 Byte Unsigned Fixed Width Integer
  index, participant = nyse_arca_options_topfeed_pillar_v1_2_c.participant.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = nyse_arca_options_topfeed_pillar_v1_2_c.auction_id.dissect(buffer, index, packet, parent)

  -- Rfq Status: 1 Byte Ascii String Enum with 2 values
  index, rfq_status = nyse_arca_options_topfeed_pillar_v1_2_c.rfq_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Rfq Message
nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.series_rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_rfq_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Status
nyse_arca_options_topfeed_pillar_v1_2_c.auction_status = {}

-- Size: Auction Status
nyse_arca_options_topfeed_pillar_v1_2_c.auction_status.size = 1

-- Display: Auction Status
nyse_arca_options_topfeed_pillar_v1_2_c.auction_status.display = function(value)
  if value == 0 then
    return "Auction Status: Usual (0)"
  end
  if value == 4 then
    return "Auction Status: Legal Width Quote Does Not Exist (4)"
  end
  if value == 5 then
    return "Auction Status: Market Maker Quote Is Not Received (5)"
  end

  return "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nyse_arca_options_topfeed_pillar_v1_2_c.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_arca_options_topfeed_pillar_v1_2_c.lower_collar = {}

-- Size: Lower Collar
nyse_arca_options_topfeed_pillar_v1_2_c.lower_collar.size = 4

-- Display: Lower Collar
nyse_arca_options_topfeed_pillar_v1_2_c.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_arca_options_topfeed_pillar_v1_2_c.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_arca_options_topfeed_pillar_v1_2_c.upper_collar = {}

-- Size: Upper Collar
nyse_arca_options_topfeed_pillar_v1_2_c.upper_collar.size = 4

-- Display: Upper Collar
nyse_arca_options_topfeed_pillar_v1_2_c.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_arca_options_topfeed_pillar_v1_2_c.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_arca_options_topfeed_pillar_v1_2_c.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_arca_options_topfeed_pillar_v1_2_c.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_arca_options_topfeed_pillar_v1_2_c.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_arca_options_topfeed_pillar_v1_2_c.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.indicative_match_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4 = {}

-- Size: Reserved 4
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.size = 4

-- Display: Reserved 4
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Auction Interest Clearing Price
nyse_arca_options_topfeed_pillar_v1_2_c.auction_interest_clearing_price = {}

-- Size: Auction Interest Clearing Price
nyse_arca_options_topfeed_pillar_v1_2_c.auction_interest_clearing_price.size = 4

-- Display: Auction Interest Clearing Price
nyse_arca_options_topfeed_pillar_v1_2_c.auction_interest_clearing_price.display = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Dissect: Auction Interest Clearing Price
nyse_arca_options_topfeed_pillar_v1_2_c.auction_interest_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.auction_interest_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.auction_interest_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_arca_options_topfeed_pillar_v1_2_c.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_arca_options_topfeed_pillar_v1_2_c.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_arca_options_topfeed_pillar_v1_2_c.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_arca_options_topfeed_pillar_v1_2_c.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_arca_options_topfeed_pillar_v1_2_c.imbalance_side = {}

-- Size: Imbalance Side
nyse_arca_options_topfeed_pillar_v1_2_c.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_arca_options_topfeed_pillar_v1_2_c.imbalance_side.display = function(value)
  if value == "B" then
    return "Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Imbalance Side: No Imbalance (<whitespace>)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
nyse_arca_options_topfeed_pillar_v1_2_c.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_arca_options_topfeed_pillar_v1_2_c.auction_type = {}

-- Size: Auction Type
nyse_arca_options_topfeed_pillar_v1_2_c.auction_type.size = 1

-- Display: Auction Type
nyse_arca_options_topfeed_pillar_v1_2_c.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Reopening (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_arca_options_topfeed_pillar_v1_2_c.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_2 = {}

-- Size: Reserved 2
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_2.size = 2

-- Display: Reserved 2
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_arca_options_topfeed_pillar_v1_2_c.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_arca_options_topfeed_pillar_v1_2_c.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_arca_options_topfeed_pillar_v1_2_c.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_arca_options_topfeed_pillar_v1_2_c.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_arca_options_topfeed_pillar_v1_2_c.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_arca_options_topfeed_pillar_v1_2_c.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_arca_options_topfeed_pillar_v1_2_c.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_arca_options_topfeed_pillar_v1_2_c.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_arca_options_topfeed_pillar_v1_2_c.paired_qty = {}

-- Size: Paired Qty
nyse_arca_options_topfeed_pillar_v1_2_c.paired_qty.size = 4

-- Display: Paired Qty
nyse_arca_options_topfeed_pillar_v1_2_c.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_arca_options_topfeed_pillar_v1_2_c.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Options Imbalance Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message = {}

-- Size: Options Imbalance Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.paired_qty.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.total_imbalance_qty.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.market_imbalance_qty.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_2.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.auction_type.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.imbalance_side.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.continuous_book_clearing_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.auction_interest_clearing_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.indicative_match_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.upper_collar.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.lower_collar.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.auction_status.size

-- Display: Options Imbalance Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Imbalance Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.dissect(buffer, index, packet, parent)

  -- Paired Qty: 4 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_arca_options_topfeed_pillar_v1_2_c.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, total_imbalance_qty = nyse_arca_options_topfeed_pillar_v1_2_c.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, market_imbalance_qty = nyse_arca_options_topfeed_pillar_v1_2_c.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_2.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 2 values
  index, auction_type = nyse_arca_options_topfeed_pillar_v1_2_c.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = nyse_arca_options_topfeed_pillar_v1_2_c.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: 4 Byte Signed Fixed Width Integer
  index, continuous_book_clearing_price = nyse_arca_options_topfeed_pillar_v1_2_c.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: 4 Byte Signed Fixed Width Integer
  index, auction_interest_clearing_price = nyse_arca_options_topfeed_pillar_v1_2_c.auction_interest_clearing_price.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: 4 Byte Signed Fixed Width Integer
  index, indicative_match_price = nyse_arca_options_topfeed_pillar_v1_2_c.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: 4 Byte Signed Fixed Width Integer
  index, upper_collar = nyse_arca_options_topfeed_pillar_v1_2_c.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: 4 Byte Signed Fixed Width Integer
  index, lower_collar = nyse_arca_options_topfeed_pillar_v1_2_c.lower_collar.dissect(buffer, index, packet, parent)

  -- Auction Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, auction_status = nyse_arca_options_topfeed_pillar_v1_2_c.auction_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Imbalance Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.options_imbalance_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_imbalance_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 3
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_3 = {}

-- Size: Reserved 3
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_3.size = 3

-- Display: Reserved 3
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Transaction
nyse_arca_options_topfeed_pillar_v1_2_c.transaction = {}

-- Size: Transaction
nyse_arca_options_topfeed_pillar_v1_2_c.transaction.size = 1

-- Display: Transaction
nyse_arca_options_topfeed_pillar_v1_2_c.transaction.display = function(value)
  if value == "H" then
    return "Transaction: Opening Trade In Sequence (H)"
  end
  if value == "F" then
    return "Transaction: Opening Trade Out Of Sequence (F)"
  end
  if value == "D" then
    return "Transaction: In Sequence (D)"
  end
  if value == "B" then
    return "Transaction: Out Of Sequence (B)"
  end

  return "Transaction: Unknown("..value..")"
end

-- Dissect: Transaction
nyse_arca_options_topfeed_pillar_v1_2_c.transaction.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.transaction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.transaction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.transaction, range, value, display)

  return offset + length, value
end

-- Correction Condition
nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition = {}

-- Size: Correction Condition
nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.transaction.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_3.size

-- Display: Correction Condition
nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Correction Condition
nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction: 1 Byte Ascii String Enum with 4 values
  index, transaction = nyse_arca_options_topfeed_pillar_v1_2_c.transaction.dissect(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte
  index, reserved_3 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Correction Condition
nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition.dissect = function(buffer, offset, packet, parent)
  if show.correction_condition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.correction_condition, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition.fields(buffer, offset, packet, parent)
  end
end

-- Volume
nyse_arca_options_topfeed_pillar_v1_2_c.volume = {}

-- Size: Volume
nyse_arca_options_topfeed_pillar_v1_2_c.volume.size = 4

-- Display: Volume
nyse_arca_options_topfeed_pillar_v1_2_c.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_arca_options_topfeed_pillar_v1_2_c.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_arca_options_topfeed_pillar_v1_2_c.price = {}

-- Size: Price
nyse_arca_options_topfeed_pillar_v1_2_c.price.size = 4

-- Display: Price
nyse_arca_options_topfeed_pillar_v1_2_c.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_arca_options_topfeed_pillar_v1_2_c.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_arca_options_topfeed_pillar_v1_2_c.trade_id = {}

-- Size: Trade Id
nyse_arca_options_topfeed_pillar_v1_2_c.trade_id.size = 4

-- Display: Trade Id
nyse_arca_options_topfeed_pillar_v1_2_c.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_arca_options_topfeed_pillar_v1_2_c.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Original Trade Id
nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id = {}

-- Size: Original Trade Id
nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id.size = 4

-- Display: Original Trade Id
nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Options Trade Correction Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message = {}

-- Size: Options Trade Correction Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.trade_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.volume.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition.size

-- Display: Options Trade Correction Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Correction Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_id = nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_arca_options_topfeed_pillar_v1_2_c.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_arca_options_topfeed_pillar_v1_2_c.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_arca_options_topfeed_pillar_v1_2_c.volume.dissect(buffer, index, packet, parent)

  -- Correction Condition: Struct of 2 fields
  index, correction_condition = nyse_arca_options_topfeed_pillar_v1_2_c.correction_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Correction Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.options_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_trade_correction_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Cancel Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message = {}

-- Size: Options Trade Cancel Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id.size

-- Display: Options Trade Cancel Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Cancel Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_id = nyse_arca_options_topfeed_pillar_v1_2_c.original_trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Cancel Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.options_trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_trade_cancel_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Offical
nyse_arca_options_topfeed_pillar_v1_2_c.offical = {}

-- Size: Offical
nyse_arca_options_topfeed_pillar_v1_2_c.offical.size = 1

-- Display: Offical
nyse_arca_options_topfeed_pillar_v1_2_c.offical.display = function(value)
  return "Offical: "..value
end

-- Dissect: Offical
nyse_arca_options_topfeed_pillar_v1_2_c.offical.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.offical.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.offical.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.offical, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1 = {}

-- Size: Reserved 1
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.size = 1

-- Display: Reserved 1
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Opening
nyse_arca_options_topfeed_pillar_v1_2_c.opening = {}

-- Size: Opening
nyse_arca_options_topfeed_pillar_v1_2_c.opening.size = 1

-- Display: Opening
nyse_arca_options_topfeed_pillar_v1_2_c.opening.display = function(value)
  if value == " " then
    return "Opening: None (<whitespace>)"
  end
  if value == "O" then
    return "Opening: Market Center Opening Trade (O)"
  end
  if value == "5" then
    return "Opening: Reopening Trade (5)"
  end

  return "Opening: Unknown("..value..")"
end

-- Dissect: Opening
nyse_arca_options_topfeed_pillar_v1_2_c.opening.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.opening.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.opening, range, value, display)

  return offset + length, value
end

-- Series
nyse_arca_options_topfeed_pillar_v1_2_c.series = {}

-- Size: Series
nyse_arca_options_topfeed_pillar_v1_2_c.series.size = 1

-- Display: Series
nyse_arca_options_topfeed_pillar_v1_2_c.series.display = function(value)
  if value == "a" then
    return "Series: Cube (a)"
  end
  if value == "c" then
    return "Series: Occ (c)"
  end
  if value == "e" then
    return "Series: Floor Trade (e)"
  end
  if value == "I" then
    return "Series: Other Outright Series (I)"
  end
  if value == "S" then
    return "Series: Iso Sweep (S)"
  end
  if value == "D" then
    return "Series: After 90 Seconds (D)"
  end
  if value == "f" then
    return "Series: Complex Orders (f)"
  end
  if value == "f" then
    return "Series: Other Complex Orders (f)"
  end
  if value == "g" then
    return "Series: Complex Cube (g)"
  end
  if value == "H" then
    return "Series: Complex Qcc Order (H)"
  end
  if value == "i" then
    return "Series: Complex Floor Order (i)"
  end
  if value == "j" then
    return "Series: Complex Order Trading With The Outright Series (j)"
  end
  if value == "m" then
    return "Series: Complex Order To Outright Series Orderfloor Trade (m)"
  end
  if value == "p" then
    return "Series: Complex Order With Stock To Complex Order With Stock Floor Trade (p)"
  end
  if value == "s" then
    return "Series: Complex Order With Stock To Outright Series Order Floor Trade (s)"
  end

  return "Series: Unknown("..value..")"
end

-- Dissect: Series
nyse_arca_options_topfeed_pillar_v1_2_c.series.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.series.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series, range, value, display)

  return offset + length, value
end

-- Trade Condition
nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition = {}

-- Size: Trade Condition
nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.series.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.opening.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.offical.size

-- Display: Trade Condition
nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Condition
nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series: 1 Byte Ascii String Enum with 15 values
  index, series = nyse_arca_options_topfeed_pillar_v1_2_c.series.dissect(buffer, index, packet, parent)

  -- Opening: 1 Byte Ascii String Enum with 3 values
  index, opening = nyse_arca_options_topfeed_pillar_v1_2_c.opening.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.dissect(buffer, index, packet, parent)

  -- Offical: 1 Byte Ascii String
  index, offical = nyse_arca_options_topfeed_pillar_v1_2_c.offical.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Condition
nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition.dissect = function(buffer, offset, packet, parent)
  if show.trade_condition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.trade_condition, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message = {}

-- Size: Options Trade Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.trade_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.volume.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition.size

-- Display: Options Trade Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_arca_options_topfeed_pillar_v1_2_c.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_arca_options_topfeed_pillar_v1_2_c.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_arca_options_topfeed_pillar_v1_2_c.volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Struct of 4 fields
  index, trade_condition = nyse_arca_options_topfeed_pillar_v1_2_c.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.options_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_trade_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Customer Volume
nyse_arca_options_topfeed_pillar_v1_2_c.bid_customer_volume = {}

-- Size: Bid Customer Volume
nyse_arca_options_topfeed_pillar_v1_2_c.bid_customer_volume.size = 4

-- Display: Bid Customer Volume
nyse_arca_options_topfeed_pillar_v1_2_c.bid_customer_volume.display = function(value)
  return "Bid Customer Volume: "..value
end

-- Dissect: Bid Customer Volume
nyse_arca_options_topfeed_pillar_v1_2_c.bid_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.bid_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.bid_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.bid_customer_volume, range, value, display)

  return offset + length, value
end

-- Ask Customer Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ask_customer_volume = {}

-- Size: Ask Customer Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ask_customer_volume.size = 4

-- Display: Ask Customer Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ask_customer_volume.display = function(value)
  return "Ask Customer Volume: "..value
end

-- Dissect: Ask Customer Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ask_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.ask_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.ask_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ask_customer_volume, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_arca_options_topfeed_pillar_v1_2_c.quote_condition = {}

-- Size: Quote Condition
nyse_arca_options_topfeed_pillar_v1_2_c.quote_condition.size = 1

-- Display: Quote Condition
nyse_arca_options_topfeed_pillar_v1_2_c.quote_condition.display = function(value)
  if value == "1" then
    return "Quote Condition: Nyse Equities (1)"
  end
  if value == "3" then
    return "Quote Condition: Nyse Arca Equities (3)"
  end
  if value == "4" then
    return "Quote Condition: Nyse Arca Options (4)"
  end
  if value == "8" then
    return "Quote Condition: Nyse American Options (8)"
  end
  if value == "9" then
    return "Quote Condition: Nyse American Equities (9)"
  end
  if value == "10" then
    return "Quote Condition: Nyse National Equities (10)"
  end
  if value == "11" then
    return "Quote Condition: Nyse Chicago (11)"
  end
  if value == "1" then
    return "Quote Condition: Regular Trading (1)"
  end
  if value == "2" then
    return "Quote Condition: Rotation (2)"
  end
  if value == "3" then
    return "Quote Condition: Trading Halted (3)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_arca_options_topfeed_pillar_v1_2_c.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_arca_options_topfeed_pillar_v1_2_c.bid_volume = {}

-- Size: Bid Volume
nyse_arca_options_topfeed_pillar_v1_2_c.bid_volume.size = 4

-- Display: Bid Volume
nyse_arca_options_topfeed_pillar_v1_2_c.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_arca_options_topfeed_pillar_v1_2_c.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_arca_options_topfeed_pillar_v1_2_c.bid_price = {}

-- Size: Bid Price
nyse_arca_options_topfeed_pillar_v1_2_c.bid_price.size = 4

-- Display: Bid Price
nyse_arca_options_topfeed_pillar_v1_2_c.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_arca_options_topfeed_pillar_v1_2_c.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ask_volume = {}

-- Size: Ask Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ask_volume.size = 4

-- Display: Ask Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Ask Price
nyse_arca_options_topfeed_pillar_v1_2_c.ask_price = {}

-- Size: Ask Price
nyse_arca_options_topfeed_pillar_v1_2_c.ask_price.size = 4

-- Display: Ask Price
nyse_arca_options_topfeed_pillar_v1_2_c.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_arca_options_topfeed_pillar_v1_2_c.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Options Quote Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message = {}

-- Size: Options Quote Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.ask_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.ask_volume.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.bid_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.bid_volume.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.quote_condition.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.ask_customer_volume.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.bid_customer_volume.size

-- Display: Options Quote Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Quote Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index, ask_price = nyse_arca_options_topfeed_pillar_v1_2_c.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_arca_options_topfeed_pillar_v1_2_c.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = nyse_arca_options_topfeed_pillar_v1_2_c.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_arca_options_topfeed_pillar_v1_2_c.bid_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 10 values
  index, quote_condition = nyse_arca_options_topfeed_pillar_v1_2_c.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.dissect(buffer, index, packet, parent)

  -- Ask Customer Volume: 4 Byte Unsigned Fixed Width Integer
  index, ask_customer_volume = nyse_arca_options_topfeed_pillar_v1_2_c.ask_customer_volume.dissect(buffer, index, packet, parent)

  -- Bid Customer Volume: 4 Byte Unsigned Fixed Width Integer
  index, bid_customer_volume = nyse_arca_options_topfeed_pillar_v1_2_c.bid_customer_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Quote Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.options_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_quote_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Halt Condition
nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition = {}

-- Size: Halt Condition
nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition.size = 1

-- Display: Halt Condition
nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition.display = function(value)
  if value == "~" then
    return "Halt Condition: Security Not Delayed Or Halted (~)"
  end
  if value == "D" then
    return "Halt Condition: News Released (D)"
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
nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Market State
nyse_arca_options_topfeed_pillar_v1_2_c.market_state = {}

-- Size: Market State
nyse_arca_options_topfeed_pillar_v1_2_c.market_state.size = 1

-- Display: Market State
nyse_arca_options_topfeed_pillar_v1_2_c.market_state.display = function(value)
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
nyse_arca_options_topfeed_pillar_v1_2_c.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.market_state, range, value, display)

  return offset + length, value
end

-- Series Status
nyse_arca_options_topfeed_pillar_v1_2_c.series_status = {}

-- Size: Series Status
nyse_arca_options_topfeed_pillar_v1_2_c.series_status.size = 1

-- Display: Series Status
nyse_arca_options_topfeed_pillar_v1_2_c.series_status.display = function(value)
  if value == "4" then
    return "Series Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Series Status: Resume (5)"
  end
  if value == "6" then
    return "Series Status: Suspend (6)"
  end
  if value == "P" then
    return "Series Status: Preopening (P)"
  end
  if value == "B" then
    return "Series Status: Begin Accepting Orders (B)"
  end
  if value == "O" then
    return "Series Status: Core Session (O)"
  end
  if value == "X" then
    return "Series Status: Closed (X)"
  end

  return "Series Status: Unknown("..value..")"
end

-- Dissect: Series Status
nyse_arca_options_topfeed_pillar_v1_2_c.series_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.series_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_status, range, value, display)

  return offset + length, value
end

-- Options Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message = {}

-- Size: Options Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_status.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.market_state.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition.size

-- Display: Options Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Series Status: 1 Byte Ascii String Enum with 7 values
  index, series_status = nyse_arca_options_topfeed_pillar_v1_2_c.series_status.dissect(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_arca_options_topfeed_pillar_v1_2_c.market_state.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 16 values
  index, halt_condition = nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message.dissect = function(buffer, offset, packet, parent)
  if show.options_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.options_status_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Only Indicator
nyse_arca_options_topfeed_pillar_v1_2_c.closing_only_indicator = {}

-- Size: Closing Only Indicator
nyse_arca_options_topfeed_pillar_v1_2_c.closing_only_indicator.size = 1

-- Display: Closing Only Indicator
nyse_arca_options_topfeed_pillar_v1_2_c.closing_only_indicator.display = function(value)
  if value == "0" then
    return "Closing Only Indicator: Standard Series (0)"
  end
  if value == "1" then
    return "Closing Only Indicator: Call (1)"
  end

  return "Closing Only Indicator: Unknown("..value..")"
end

-- Dissect: Closing Only Indicator
nyse_arca_options_topfeed_pillar_v1_2_c.closing_only_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.closing_only_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.closing_only_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.closing_only_indicator, range, value, display)

  return offset + length, value
end

-- Strike Price
nyse_arca_options_topfeed_pillar_v1_2_c.strike_price = {}

-- Size: Strike Price
nyse_arca_options_topfeed_pillar_v1_2_c.strike_price.size = 10

-- Display: Strike Price
nyse_arca_options_topfeed_pillar_v1_2_c.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nyse_arca_options_topfeed_pillar_v1_2_c.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.strike_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Put Or Call
nyse_arca_options_topfeed_pillar_v1_2_c.put_or_call = {}

-- Size: Put Or Call
nyse_arca_options_topfeed_pillar_v1_2_c.put_or_call.size = 1

-- Display: Put Or Call
nyse_arca_options_topfeed_pillar_v1_2_c.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_arca_options_topfeed_pillar_v1_2_c.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Maturity Date
nyse_arca_options_topfeed_pillar_v1_2_c.maturity_date = {}

-- Size: Maturity Date
nyse_arca_options_topfeed_pillar_v1_2_c.maturity_date.size = 6

-- Display: Maturity Date
nyse_arca_options_topfeed_pillar_v1_2_c.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_arca_options_topfeed_pillar_v1_2_c.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.maturity_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
nyse_arca_options_topfeed_pillar_v1_2_c.contract_multiplier = {}

-- Size: Contract Multiplier
nyse_arca_options_topfeed_pillar_v1_2_c.contract_multiplier.size = 2

-- Display: Contract Multiplier
nyse_arca_options_topfeed_pillar_v1_2_c.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_arca_options_topfeed_pillar_v1_2_c.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code = {}

-- Size: Price Scale Code
nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code.display = function(value)
  if value == 6 then
    return "Price Scale Code: Low Priced Securities (6)"
  end
  if value == 4 then
    return "Price Scale Code: Medium Priced Securities (4)"
  end
  if value == 3 then
    return "Price Scale Code: High Priced Securities (3)"
  end

  return "Price Scale Code: Unknown("..value..")"
end

-- Dissect: Price Scale Code
nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Underlying Index
nyse_arca_options_topfeed_pillar_v1_2_c.underlying_index = {}

-- Size: Underlying Index
nyse_arca_options_topfeed_pillar_v1_2_c.underlying_index.size = 4

-- Display: Underlying Index
nyse_arca_options_topfeed_pillar_v1_2_c.underlying_index.display = function(value)
  return "Underlying Index: "..value
end

-- Dissect: Underlying Index
nyse_arca_options_topfeed_pillar_v1_2_c.underlying_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.underlying_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.underlying_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.underlying_index, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nyse_arca_options_topfeed_pillar_v1_2_c.underlying_symbol = {}

-- Size: Underlying Symbol
nyse_arca_options_topfeed_pillar_v1_2_c.underlying_symbol.size = 11

-- Display: Underlying Symbol
nyse_arca_options_topfeed_pillar_v1_2_c.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nyse_arca_options_topfeed_pillar_v1_2_c.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.underlying_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Option Symbol Root
nyse_arca_options_topfeed_pillar_v1_2_c.option_symbol_root = {}

-- Size: Option Symbol Root
nyse_arca_options_topfeed_pillar_v1_2_c.option_symbol_root.size = 6

-- Display: Option Symbol Root
nyse_arca_options_topfeed_pillar_v1_2_c.option_symbol_root.display = function(value)
  return "Option Symbol Root: "..value
end

-- Dissect: Option Symbol Root
nyse_arca_options_topfeed_pillar_v1_2_c.option_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.option_symbol_root.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.option_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.option_symbol_root, range, value, display)

  return offset + length, value
end

-- System Id
nyse_arca_options_topfeed_pillar_v1_2_c.system_id = {}

-- Size: System Id
nyse_arca_options_topfeed_pillar_v1_2_c.system_id.size = 1

-- Display: System Id
nyse_arca_options_topfeed_pillar_v1_2_c.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_arca_options_topfeed_pillar_v1_2_c.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.system_id, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_arca_options_topfeed_pillar_v1_2_c.market_id = {}

-- Size: Market Id
nyse_arca_options_topfeed_pillar_v1_2_c.market_id.size = 2

-- Display: Market Id
nyse_arca_options_topfeed_pillar_v1_2_c.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
nyse_arca_options_topfeed_pillar_v1_2_c.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.market_id, range, value, display)

  return offset + length, value
end

-- Series Type
nyse_arca_options_topfeed_pillar_v1_2_c.series_type = {}

-- Size: Series Type
nyse_arca_options_topfeed_pillar_v1_2_c.series_type.size = 1

-- Display: Series Type
nyse_arca_options_topfeed_pillar_v1_2_c.series_type.display = function(value)
  if value == 0 then
    return "Series Type: Standard (0)"
  end
  if value == 1 then
    return "Series Type: Flex (1)"
  end
  if value == 1 then
    return "Series Type: Flex Percentage (1)"
  end

  return "Series Type: Unknown("..value..")"
end

-- Dissect: Series Type
nyse_arca_options_topfeed_pillar_v1_2_c.series_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.series_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.series_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.series_type, range, value, display)

  return offset + length, value
end

-- Outright Series Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message = {}

-- Size: Outright Series Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.series_type.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.market_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.system_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.option_symbol_root.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.underlying_symbol.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.underlying_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.contract_multiplier.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.maturity_date.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.put_or_call.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.strike_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.closing_only_indicator.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.size

-- Display: Outright Series Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, series_type = nyse_arca_options_topfeed_pillar_v1_2_c.series_type.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer
  index, market_id = nyse_arca_options_topfeed_pillar_v1_2_c.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_arca_options_topfeed_pillar_v1_2_c.system_id.dissect(buffer, index, packet, parent)

  -- Option Symbol Root: 6 Byte Ascii String
  index, option_symbol_root = nyse_arca_options_topfeed_pillar_v1_2_c.option_symbol_root.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index, underlying_symbol = nyse_arca_options_topfeed_pillar_v1_2_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_index = nyse_arca_options_topfeed_pillar_v1_2_c.underlying_index.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_scale_code = nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: 2 Byte Unsigned Fixed Width Integer
  index, contract_multiplier = nyse_arca_options_topfeed_pillar_v1_2_c.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Maturity Date: 6 Byte Ascii String
  index, maturity_date = nyse_arca_options_topfeed_pillar_v1_2_c.maturity_date.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = nyse_arca_options_topfeed_pillar_v1_2_c.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: 10 Byte Ascii String
  index, strike_price = nyse_arca_options_topfeed_pillar_v1_2_c.strike_price.dissect(buffer, index, packet, parent)

  -- Closing Only Indicator: 1 Byte Ascii String Enum with 2 values
  index, closing_only_indicator = nyse_arca_options_topfeed_pillar_v1_2_c.closing_only_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.outright_series_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.outright_series_index_mapping_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Symbol Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.last_seq_num = {}

-- Size: Last Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_arca_options_topfeed_pillar_v1_2_c.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_arca_options_topfeed_pillar_v1_2_c.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_arca_options_topfeed_pillar_v1_2_c.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_arca_options_topfeed_pillar_v1_2_c.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_arca_options_topfeed_pillar_v1_2_c.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_arca_options_topfeed_pillar_v1_2_c.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_arca_options_topfeed_pillar_v1_2_c.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_arca_options_topfeed_pillar_v1_2_c.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Refresh Header Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.current_refresh_pkt.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.total_refresh_pkts.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.last_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_arca_options_topfeed_pillar_v1_2_c.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_arca_options_topfeed_pillar_v1_2_c.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Session State
nyse_arca_options_topfeed_pillar_v1_2_c.session_state = {}

-- Size: Session State
nyse_arca_options_topfeed_pillar_v1_2_c.session_state.size = 1

-- Display: Session State
nyse_arca_options_topfeed_pillar_v1_2_c.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_arca_options_topfeed_pillar_v1_2_c.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.session_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.session_state, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_state = {}

-- Size: Ssr State
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_state.size = 1

-- Display: Ssr State
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Time
nyse_arca_options_topfeed_pillar_v1_2_c.time = {}

-- Size: Time
nyse_arca_options_topfeed_pillar_v1_2_c.time.size = 4

-- Display: Time
nyse_arca_options_topfeed_pillar_v1_2_c.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_arca_options_topfeed_pillar_v1_2_c.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.time, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.display = function(value)
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
    return "Ssr Triggering Exchange Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Ssr Triggering Exchange Id: Cboe Bzx (Z)"
  end
  if value == "H" then
    return "Ssr Triggering Exchange Id: Miax (H)"
  end
  if value == "U" then
    return "Ssr Triggering Exchange Id: Memx (U)"
  end

  return "Ssr Triggering Exchange Id: Unknown("..value..")"
end

-- Dissect: Ssr Triggering Exchange Id
nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_arca_options_topfeed_pillar_v1_2_c.price_2 = {}

-- Size: Price 2
nyse_arca_options_topfeed_pillar_v1_2_c.price_2.size = 4

-- Display: Price 2
nyse_arca_options_topfeed_pillar_v1_2_c.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_arca_options_topfeed_pillar_v1_2_c.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_arca_options_topfeed_pillar_v1_2_c.price_1 = {}

-- Size: Price 1
nyse_arca_options_topfeed_pillar_v1_2_c.price_1.size = 4

-- Display: Price 1
nyse_arca_options_topfeed_pillar_v1_2_c.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_arca_options_topfeed_pillar_v1_2_c.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price_1, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_arca_options_topfeed_pillar_v1_2_c.security_status = {}

-- Size: Security Status
nyse_arca_options_topfeed_pillar_v1_2_c.security_status.size = 1

-- Display: Security Status
nyse_arca_options_topfeed_pillar_v1_2_c.security_status.display = function(value)
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
    return "Security Status: Late Session (L)"
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
nyse_arca_options_topfeed_pillar_v1_2_c.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.security_status, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index = {}

-- Size: Symbol Index
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.size = 4

-- Display: Symbol Index
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Security Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message = {}

-- Size: Security Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.symbol_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.security_status.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.price_1.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.price_2.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_volume.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.ssr_state.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.market_state.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.session_state.size

-- Display: Security Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 14 values
  index, security_status = nyse_arca_options_topfeed_pillar_v1_2_c.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 16 values
  index, halt_condition = nyse_arca_options_topfeed_pillar_v1_2_c.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_arca_options_topfeed_pillar_v1_2_c.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_arca_options_topfeed_pillar_v1_2_c.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 21 values
  index, ssr_triggering_exchange_id = nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_arca_options_topfeed_pillar_v1_2_c.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_arca_options_topfeed_pillar_v1_2_c.time.dissect(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index, ssr_state = nyse_arca_options_topfeed_pillar_v1_2_c.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_arca_options_topfeed_pillar_v1_2_c.market_state.dissect(buffer, index, packet, parent)

  -- Session State: 1 Byte Unsigned Fixed Width Integer
  index, session_state = nyse_arca_options_topfeed_pillar_v1_2_c.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.security_status_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Next Source Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Clear Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Id
nyse_arca_options_topfeed_pillar_v1_2_c.channel_id = {}

-- Size: Channel Id
nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.size = 1

-- Display: Channel Id
nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_arca_options_topfeed_pillar_v1_2_c.product_id = {}

-- Size: Product Id
nyse_arca_options_topfeed_pillar_v1_2_c.product_id.size = 1

-- Display: Product Id
nyse_arca_options_topfeed_pillar_v1_2_c.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_arca_options_topfeed_pillar_v1_2_c.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.product_id, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num = {}

-- Size: End Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.size = 4

-- Display: End Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Message Unavailable Message
nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.size

-- Display: Message Unavailable Message
nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Id
nyse_arca_options_topfeed_pillar_v1_2_c.source_id = {}

-- Size: Source Id
nyse_arca_options_topfeed_pillar_v1_2_c.source_id.size = 10

-- Display: Source Id
nyse_arca_options_topfeed_pillar_v1_2_c.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_arca_options_topfeed_pillar_v1_2_c.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.source_id, range, value, display)

  return offset + length, value
end

-- Refresh Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.size

-- Display: Refresh Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Method
nyse_arca_options_topfeed_pillar_v1_2_c.retransmit_method = {}

-- Size: Retransmit Method
nyse_arca_options_topfeed_pillar_v1_2_c.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_arca_options_topfeed_pillar_v1_2_c.retransmit_method.display = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_arca_options_topfeed_pillar_v1_2_c.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer
  index, retransmit_method = nyse_arca_options_topfeed_pillar_v1_2_c.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_id.size

-- Display: Heartbeat Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Status
nyse_arca_options_topfeed_pillar_v1_2_c.status = {}

-- Size: Status
nyse_arca_options_topfeed_pillar_v1_2_c.status.size = 1

-- Display: Status
nyse_arca_options_topfeed_pillar_v1_2_c.status.display = function(value)
  if value == "0" then
    return "Status: Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected (1)"
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
    return "Status: Invalid Msg Type Or Msg Size (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_arca_options_topfeed_pillar_v1_2_c.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.status, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.request_seq_num = {}

-- Size: Request Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Request Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message = {}

-- Size: Request Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.request_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.status.size

-- Display: Request Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 10 values
  index, status = nyse_arca_options_topfeed_pillar_v1_2_c.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.request_response_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.size

-- Display: Retransmission Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 6
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_6 = {}

-- Size: Reserved 6
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_6.size = 6

-- Display: Reserved 6
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
nyse_arca_options_topfeed_pillar_v1_2_c.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_arca_options_topfeed_pillar_v1_2_c.round_lot = {}

-- Size: Round Lot
nyse_arca_options_topfeed_pillar_v1_2_c.round_lot.size = 1

-- Display: Round Lot
nyse_arca_options_topfeed_pillar_v1_2_c.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_arca_options_topfeed_pillar_v1_2_c.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_arca_options_topfeed_pillar_v1_2_c.price_resolution = {}

-- Size: Price Resolution
nyse_arca_options_topfeed_pillar_v1_2_c.price_resolution.size = 1

-- Display: Price Resolution
nyse_arca_options_topfeed_pillar_v1_2_c.price_resolution.display = function(value)
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
nyse_arca_options_topfeed_pillar_v1_2_c.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_price = {}

-- Size: Prev Close Price
nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_arca_options_topfeed_pillar_v1_2_c.lot_size = {}

-- Size: Lot Size
nyse_arca_options_topfeed_pillar_v1_2_c.lot_size.size = 2

-- Display: Lot Size
nyse_arca_options_topfeed_pillar_v1_2_c.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_arca_options_topfeed_pillar_v1_2_c.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_arca_options_topfeed_pillar_v1_2_c.security_type = {}

-- Size: Security Type
nyse_arca_options_topfeed_pillar_v1_2_c.security_type.size = 1

-- Display: Security Type
nyse_arca_options_topfeed_pillar_v1_2_c.security_type.display = function(value)
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
nyse_arca_options_topfeed_pillar_v1_2_c.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.security_type, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_arca_options_topfeed_pillar_v1_2_c.exchange_code = {}

-- Size: Exchange Code
nyse_arca_options_topfeed_pillar_v1_2_c.exchange_code.size = 1

-- Display: Exchange Code
nyse_arca_options_topfeed_pillar_v1_2_c.exchange_code.display = function(value)
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
  if value == " " then
    return "Exchange Code: Otc Or Indexed Product (<whitespace>)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_arca_options_topfeed_pillar_v1_2_c.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_arca_options_topfeed_pillar_v1_2_c.symbol = {}

-- Size: Symbol
nyse_arca_options_topfeed_pillar_v1_2_c.symbol.size = 11

-- Display: Symbol
nyse_arca_options_topfeed_pillar_v1_2_c.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_arca_options_topfeed_pillar_v1_2_c.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.symbol.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.market_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.system_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.exchange_code.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.security_type.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.lot_size.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_price.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_volume.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.price_resolution.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.round_lot.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_6.size

-- Display: Symbol Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_arca_options_topfeed_pillar_v1_2_c.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer
  index, market_id = nyse_arca_options_topfeed_pillar_v1_2_c.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_arca_options_topfeed_pillar_v1_2_c.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 8 values
  index, exchange_code = nyse_arca_options_topfeed_pillar_v1_2_c.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_scale_code = nyse_arca_options_topfeed_pillar_v1_2_c.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_arca_options_topfeed_pillar_v1_2_c.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_arca_options_topfeed_pillar_v1_2_c.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_arca_options_topfeed_pillar_v1_2_c.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_arca_options_topfeed_pillar_v1_2_c.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
  index, round_lot = nyse_arca_options_topfeed_pillar_v1_2_c.round_lot.dissect(buffer, index, packet, parent)

  -- Reserved 6: 6 Byte
  index, reserved_6 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Id
nyse_arca_options_topfeed_pillar_v1_2_c.id = {}

-- Size: Id
nyse_arca_options_topfeed_pillar_v1_2_c.id.size = 4

-- Display: Id
nyse_arca_options_topfeed_pillar_v1_2_c.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_arca_options_topfeed_pillar_v1_2_c.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.id, range, value, display)

  return offset + length, value
end

-- Time Reference Message
nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message = {}

-- Size: Time Reference Message
nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size

-- Display: Time Reference Message
nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_arca_options_topfeed_pillar_v1_2_c.id.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_topfeed_pillar_v1_2_c.reserved_4.dissect(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.time_reference_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.time_reference_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.size

-- Display: Sequence Number Reset Message
nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_arca_options_topfeed_pillar_v1_2_c.payload = {}

-- Size: Payload
nyse_arca_options_topfeed_pillar_v1_2_c.payload.size = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message.size
  end
  -- Size of Time Reference Message
  if message_type == 2 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message.size
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message.size
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message.size
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message.size
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message.size
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.size
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message.size
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message.size
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message.size
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message.size
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message.size
  end
  -- Size of Outright Series Index Mapping Message
  if message_type == 50 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.size
  end
  -- Size of Options Status Message
  if message_type == 51 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message.size
  end
  -- Size of Options Quote Message
  if message_type == 340 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message.size
  end
  -- Size of Options Trade Message
  if message_type == 320 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message.size
  end
  -- Size of Options Trade Cancel Message
  if message_type == 322 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message.size
  end
  -- Size of Options Trade Correction Message
  if message_type == 322 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message.size
  end
  -- Size of Options Imbalance Message
  if message_type == 305 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message.size
  end
  -- Size of Series Rfq Message
  if message_type == 307 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message.size
  end
  -- Size of Outright Series Summary Message
  if message_type == 323 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message.size
  end

  return 0
end

-- Display: Payload
nyse_arca_options_topfeed_pillar_v1_2_c.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_arca_options_topfeed_pillar_v1_2_c.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Reference Message
  if message_type == 2 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Index Mapping Message
  if message_type == 50 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Status Message
  if message_type == 51 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Quote Message
  if message_type == 340 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Message
  if message_type == 320 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Cancel Message
  if message_type == 322 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Correction Message
  if message_type == 322 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Imbalance Message
  if message_type == 305 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.options_imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Rfq Message
  if message_type == 307 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.series_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Summary Message
  if message_type == 323 then
    return nyse_arca_options_topfeed_pillar_v1_2_c.outright_series_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_arca_options_topfeed_pillar_v1_2_c.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_arca_options_topfeed_pillar_v1_2_c.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_arca_options_topfeed_pillar_v1_2_c.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.payload, range, display)

  return nyse_arca_options_topfeed_pillar_v1_2_c.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nyse_arca_options_topfeed_pillar_v1_2_c.message_type = {}

-- Size: Message Type
nyse_arca_options_topfeed_pillar_v1_2_c.message_type.size = 2

-- Display: Message Type
nyse_arca_options_topfeed_pillar_v1_2_c.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Time Reference Message (2)"
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
  if value == 50 then
    return "Message Type: Outright Series Index Mapping Message (50)"
  end
  if value == 51 then
    return "Message Type: Options Status Message (51)"
  end
  if value == 340 then
    return "Message Type: Options Quote Message (340)"
  end
  if value == 320 then
    return "Message Type: Options Trade Message (320)"
  end
  if value == 322 then
    return "Message Type: Options Trade Cancel Message (322)"
  end
  if value == 322 then
    return "Message Type: Options Trade Correction Message (322)"
  end
  if value == 305 then
    return "Message Type: Options Imbalance Message (305)"
  end
  if value == 307 then
    return "Message Type: Series Rfq Message (307)"
  end
  if value == 323 then
    return "Message Type: Outright Series Summary Message (323)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_arca_options_topfeed_pillar_v1_2_c.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_arca_options_topfeed_pillar_v1_2_c.message_size = {}

-- Size: Message Size
nyse_arca_options_topfeed_pillar_v1_2_c.message_size.size = 2

-- Display: Message Size
nyse_arca_options_topfeed_pillar_v1_2_c.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_arca_options_topfeed_pillar_v1_2_c.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
nyse_arca_options_topfeed_pillar_v1_2_c.message_header = {}

-- Size: Message Header
nyse_arca_options_topfeed_pillar_v1_2_c.message_header.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.message_size.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.message_type.size

-- Display: Message Header
nyse_arca_options_topfeed_pillar_v1_2_c.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_arca_options_topfeed_pillar_v1_2_c.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_arca_options_topfeed_pillar_v1_2_c.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = nyse_arca_options_topfeed_pillar_v1_2_c.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_arca_options_topfeed_pillar_v1_2_c.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_header, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_arca_options_topfeed_pillar_v1_2_c.message = {}

-- Display: Message
nyse_arca_options_topfeed_pillar_v1_2_c.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_arca_options_topfeed_pillar_v1_2_c.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_arca_options_topfeed_pillar_v1_2_c.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = nyse_arca_options_topfeed_pillar_v1_2_c.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_arca_options_topfeed_pillar_v1_2_c.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.message, buffer(offset, 0))
    local current = nyse_arca_options_topfeed_pillar_v1_2_c.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arca_options_topfeed_pillar_v1_2_c.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Nanoseconds
nyse_arca_options_topfeed_pillar_v1_2_c.nanoseconds = {}

-- Size: Nanoseconds
nyse_arca_options_topfeed_pillar_v1_2_c.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_arca_options_topfeed_pillar_v1_2_c.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_arca_options_topfeed_pillar_v1_2_c.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_arca_options_topfeed_pillar_v1_2_c.seconds = {}

-- Size: Seconds
nyse_arca_options_topfeed_pillar_v1_2_c.seconds.size = 4

-- Display: Seconds
nyse_arca_options_topfeed_pillar_v1_2_c.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_arca_options_topfeed_pillar_v1_2_c.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.seconds, range, value, display)

  return offset + length, value
end

-- Send Time
nyse_arca_options_topfeed_pillar_v1_2_c.send_time = {}

-- Size: Send Time
nyse_arca_options_topfeed_pillar_v1_2_c.send_time.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.seconds.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.nanoseconds.size

-- Display: Send Time
nyse_arca_options_topfeed_pillar_v1_2_c.send_time.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Send Time
nyse_arca_options_topfeed_pillar_v1_2_c.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_arca_options_topfeed_pillar_v1_2_c.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_arca_options_topfeed_pillar_v1_2_c.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_arca_options_topfeed_pillar_v1_2_c.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.send_time, buffer(offset, 0))
    local index, value = nyse_arca_options_topfeed_pillar_v1_2_c.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.seq_num = {}

-- Size: Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.seq_num.size = 4

-- Display: Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_arca_options_topfeed_pillar_v1_2_c.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_arca_options_topfeed_pillar_v1_2_c.number_msgs = {}

-- Size: Number Msgs
nyse_arca_options_topfeed_pillar_v1_2_c.number_msgs.size = 1

-- Display: Number Msgs
nyse_arca_options_topfeed_pillar_v1_2_c.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_arca_options_topfeed_pillar_v1_2_c.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_arca_options_topfeed_pillar_v1_2_c.delivery_flag = {}

-- Size: Delivery Flag
nyse_arca_options_topfeed_pillar_v1_2_c.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_arca_options_topfeed_pillar_v1_2_c.delivery_flag.display = function(value)
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
nyse_arca_options_topfeed_pillar_v1_2_c.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_arca_options_topfeed_pillar_v1_2_c.pkt_size = {}

-- Size: Pkt Size
nyse_arca_options_topfeed_pillar_v1_2_c.pkt_size.size = 2

-- Display: Pkt Size
nyse_arca_options_topfeed_pillar_v1_2_c.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_arca_options_topfeed_pillar_v1_2_c.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_topfeed_pillar_v1_2_c.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_topfeed_pillar_v1_2_c.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_arca_options_topfeed_pillar_v1_2_c.packet_header = {}

-- Size: Packet Header
nyse_arca_options_topfeed_pillar_v1_2_c.packet_header.size =
  nyse_arca_options_topfeed_pillar_v1_2_c.pkt_size.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.delivery_flag.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.number_msgs.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.seq_num.size + 
  nyse_arca_options_topfeed_pillar_v1_2_c.send_time.size

-- Display: Packet Header
nyse_arca_options_topfeed_pillar_v1_2_c.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_arca_options_topfeed_pillar_v1_2_c.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_arca_options_topfeed_pillar_v1_2_c.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_arca_options_topfeed_pillar_v1_2_c.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_arca_options_topfeed_pillar_v1_2_c.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_arca_options_topfeed_pillar_v1_2_c.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_arca_options_topfeed_pillar_v1_2_c.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_arca_options_topfeed_pillar_v1_2_c.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c.fields.packet_header, buffer(offset, 0))
    local index = nyse_arca_options_topfeed_pillar_v1_2_c.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_topfeed_pillar_v1_2_c.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_topfeed_pillar_v1_2_c.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_arca_options_topfeed_pillar_v1_2_c.packet = {}

-- Dissect Packet
nyse_arca_options_topfeed_pillar_v1_2_c.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_arca_options_topfeed_pillar_v1_2_c.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_arca_options_topfeed_pillar_v1_2_c.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_arca_options_topfeed_pillar_v1_2_c.init()
end

-- Dissector for Nyse Arca Options TopFeed Pillar 1.2.c
function omi_nyse_arca_options_topfeed_pillar_v1_2_c.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_arca_options_topfeed_pillar_v1_2_c.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_arca_options_topfeed_pillar_v1_2_c, buffer(), omi_nyse_arca_options_topfeed_pillar_v1_2_c.description, "("..buffer:len().." Bytes)")
  return nyse_arca_options_topfeed_pillar_v1_2_c.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_arca_options_topfeed_pillar_v1_2_c)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_arca_options_topfeed_pillar_v1_2_c.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Arca Options TopFeed Pillar 1.2.c
local function omi_nyse_arca_options_topfeed_pillar_v1_2_c_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_arca_options_topfeed_pillar_v1_2_c.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arca_options_topfeed_pillar_v1_2_c
  omi_nyse_arca_options_topfeed_pillar_v1_2_c.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Arca Options TopFeed Pillar 1.2.c
omi_nyse_arca_options_topfeed_pillar_v1_2_c:register_heuristic("udp", omi_nyse_arca_options_topfeed_pillar_v1_2_c_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.2.c
--   Date: Monday, March 21, 2022
--   Specification: PILLAR_TOP_Client_Specification.pdf
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
