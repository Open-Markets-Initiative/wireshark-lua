-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse ArcaOptions TopFeed Pillar 1.2.j Protocol
local omi_nyse_arcaoptions_topfeed_pillar_v1_2_j = Proto("Nyse.ArcaOptions.TopFeed.Pillar.v1.2.j.Lua", "Nyse ArcaOptions TopFeed Pillar 1.2.j")

-- Protocol table
local nyse_arcaoptions_topfeed_pillar_v1_2_j = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse ArcaOptions TopFeed Pillar 1.2.j Fields
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ask_customer_volume = ProtoField.new("Ask Customer Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.j.askcustomervolume", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ask_price = ProtoField.new("Ask Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.askprice", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.j.askvolume", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.auction_id = ProtoField.new("Auction Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.auctionid", ftypes.UINT64)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.auctioninterestclearingprice", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.auction_status = ProtoField.new("Auction Status", "nyse.arcaoptions.topfeed.pillar.v1.2.j.auctionstatus", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.auction_type = ProtoField.new("Auction Type", "nyse.arcaoptions.topfeed.pillar.v1.2.j.auctiontype", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.j.beginseqnum", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.bid_customer_volume = ProtoField.new("Bid Customer Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.j.bidcustomervolume", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.bid_price = ProtoField.new("Bid Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.bidprice", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.j.bidvolume", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.capacity = ProtoField.new("Capacity", "nyse.arcaoptions.topfeed.pillar.v1.2.j.capacity", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.channel_id = ProtoField.new("Channel Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.channelid", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.close = ProtoField.new("Close", "nyse.arcaoptions.topfeed.pillar.v1.2.j.close", ftypes.INT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.closing_only_indicator = ProtoField.new("Closing Only Indicator", "nyse.arcaoptions.topfeed.pillar.v1.2.j.closingonlyindicator", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.complex_series_index_mapping_leg = ProtoField.new("Complex Series Index Mapping Leg", "nyse.arcaoptions.topfeed.pillar.v1.2.j.complexseriesindexmappingleg", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.continuousbookclearingprice", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.arcaoptions.topfeed.pillar.v1.2.j.contractmultiplier", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.arcaoptions.topfeed.pillar.v1.2.j.currentrefreshpkt", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arcaoptions.topfeed.pillar.v1.2.j.deliveryflag", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.j.endseqnum", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.arcaoptions.topfeed.pillar.v1.2.j.exchangecode", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.arcaoptions.topfeed.pillar.v1.2.j.haltcondition", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.high_price = ProtoField.new("High Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.highprice", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.id = ProtoField.new("Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.id", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.arcaoptions.topfeed.pillar.v1.2.j.imbalanceside", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.indicativematchprice", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.j.lastseqnum", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.j.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "nyse.arcaoptions.topfeed.pillar.v1.2.j.legratioqty", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.leg_security_type = ProtoField.new("Leg Security Type", "nyse.arcaoptions.topfeed.pillar.v1.2.j.legsecuritytype", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.leg_side = ProtoField.new("Leg Side", "nyse.arcaoptions.topfeed.pillar.v1.2.j.legside", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.lot_size = ProtoField.new("Lot Size", "nyse.arcaoptions.topfeed.pillar.v1.2.j.lotsize", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.low_price = ProtoField.new("Low Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.lowprice", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.arcaoptions.topfeed.pillar.v1.2.j.lowercollar", ftypes.INT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.market_id = ProtoField.new("Market Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.marketid", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.arcaoptions.topfeed.pillar.v1.2.j.marketimbalanceqty", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.market_state = ProtoField.new("Market State", "nyse.arcaoptions.topfeed.pillar.v1.2.j.marketstate", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.arcaoptions.topfeed.pillar.v1.2.j.maturitydate", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message = ProtoField.new("Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.message", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_header = ProtoField.new("Message Header", "nyse.arcaoptions.topfeed.pillar.v1.2.j.messageheader", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_size = ProtoField.new("Message Size", "nyse.arcaoptions.topfeed.pillar.v1.2.j.messagesize", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_type = ProtoField.new("Message Type", "nyse.arcaoptions.topfeed.pillar.v1.2.j.messagetype", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arcaoptions.topfeed.pillar.v1.2.j.nanoseconds", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.j.nextsourceseqnum", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.no_of_legs = ProtoField.new("No Of Legs", "nyse.arcaoptions.topfeed.pillar.v1.2.j.nooflegs", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.arcaoptions.topfeed.pillar.v1.2.j.numbermsgs", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.open = ProtoField.new("Open", "nyse.arcaoptions.topfeed.pillar.v1.2.j.open", ftypes.INT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.option_symbol_root = ProtoField.new("Option Symbol Root", "nyse.arcaoptions.topfeed.pillar.v1.2.j.optionsymbolroot", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_status_halt_condition = ProtoField.new("Options Status Halt Condition", "nyse.arcaoptions.topfeed.pillar.v1.2.j.optionsstatushaltcondition", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.originaltradeid", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.packet = ProtoField.new("Packet", "nyse.arcaoptions.topfeed.pillar.v1.2.j.packet", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.packet_header = ProtoField.new("Packet Header", "nyse.arcaoptions.topfeed.pillar.v1.2.j.packetheader", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.arcaoptions.topfeed.pillar.v1.2.j.pairedqty", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.participant = ProtoField.new("Participant", "nyse.arcaoptions.topfeed.pillar.v1.2.j.participant", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.arcaoptions.topfeed.pillar.v1.2.j.pktsize", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.prevcloseprice", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.j.prevclosevolume", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price = ProtoField.new("Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.price", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price_1 = ProtoField.new("Price 1", "nyse.arcaoptions.topfeed.pillar.v1.2.j.price1", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price_2 = ProtoField.new("Price 2", "nyse.arcaoptions.topfeed.pillar.v1.2.j.price2", ftypes.DOUBLE)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.arcaoptions.topfeed.pillar.v1.2.j.priceresolution", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.arcaoptions.topfeed.pillar.v1.2.j.pricescalecode", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.product_id = ProtoField.new("Product Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.productid", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.arcaoptions.topfeed.pillar.v1.2.j.putorcall", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.arcaoptions.topfeed.pillar.v1.2.j.quotecondition", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.j.requestseqnum", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arcaoptions.topfeed.pillar.v1.2.j.reserved1", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.arcaoptions.topfeed.pillar.v1.2.j.reserved2", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.arcaoptions.topfeed.pillar.v1.2.j.reserved4", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.arcaoptions.topfeed.pillar.v1.2.j.retransmitmethod", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.rfq_status = ProtoField.new("Rfq Status", "nyse.arcaoptions.topfeed.pillar.v1.2.j.rfqstatus", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.round_lot = ProtoField.new("Round Lot", "nyse.arcaoptions.topfeed.pillar.v1.2.j.roundlot", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.seconds = ProtoField.new("Seconds", "nyse.arcaoptions.topfeed.pillar.v1.2.j.seconds", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.security_status = ProtoField.new("Security Status", "nyse.arcaoptions.topfeed.pillar.v1.2.j.securitystatus", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.security_type = ProtoField.new("Security Type", "nyse.arcaoptions.topfeed.pillar.v1.2.j.securitytype", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.send_time = ProtoField.new("Send Time", "nyse.arcaoptions.topfeed.pillar.v1.2.j.sendtime", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.seq_num = ProtoField.new("Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.j.seqnum", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_index = ProtoField.new("Series Index", "nyse.arcaoptions.topfeed.pillar.v1.2.j.seriesindex", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_seq_num = ProtoField.new("Series Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.j.seriesseqnum", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_status = ProtoField.new("Series Status", "nyse.arcaoptions.topfeed.pillar.v1.2.j.seriesstatus", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_type = ProtoField.new("Series Type", "nyse.arcaoptions.topfeed.pillar.v1.2.j.seriestype", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.session_state = ProtoField.new("Session State", "nyse.arcaoptions.topfeed.pillar.v1.2.j.sessionstate", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.side = ProtoField.new("Side", "nyse.arcaoptions.topfeed.pillar.v1.2.j.side", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.source_id = ProtoField.new("Source Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.sourceid", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.source_time = ProtoField.new("Source Time", "nyse.arcaoptions.topfeed.pillar.v1.2.j.sourcetime", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.arcaoptions.topfeed.pillar.v1.2.j.sourcetimens", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ssr_state = ProtoField.new("Ssr State", "nyse.arcaoptions.topfeed.pillar.v1.2.j.ssrstate", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.j.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.status = ProtoField.new("Status", "nyse.arcaoptions.topfeed.pillar.v1.2.j.status", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.strike_price = ProtoField.new("Strike Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.strikeprice", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol = ProtoField.new("Symbol", "nyse.arcaoptions.topfeed.pillar.v1.2.j.symbol", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.arcaoptions.topfeed.pillar.v1.2.j.symbolindex", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.j.symbolseqnum", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.system_id = ProtoField.new("System Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.systemid", ftypes.UINT8)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.time = ProtoField.new("Time", "nyse.arcaoptions.topfeed.pillar.v1.2.j.time", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.arcaoptions.topfeed.pillar.v1.2.j.totalimbalanceqty", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.total_quantity = ProtoField.new("Total Quantity", "nyse.arcaoptions.topfeed.pillar.v1.2.j.totalquantity", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.arcaoptions.topfeed.pillar.v1.2.j.totalrefreshpkts", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.total_volume = ProtoField.new("Total Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.j.totalvolume", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.arcaoptions.topfeed.pillar.v1.2.j.tradecond1", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.trade_cond_2 = ProtoField.new("Trade Cond 2", "nyse.arcaoptions.topfeed.pillar.v1.2.j.tradecond2", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.trade_cond_4 = ProtoField.new("Trade Cond 4", "nyse.arcaoptions.topfeed.pillar.v1.2.j.tradecond4", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.trade_id = ProtoField.new("Trade Id", "nyse.arcaoptions.topfeed.pillar.v1.2.j.tradeid", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.type = ProtoField.new("Type", "nyse.arcaoptions.topfeed.pillar.v1.2.j.type", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.underlying_index = ProtoField.new("Underlying Index", "nyse.arcaoptions.topfeed.pillar.v1.2.j.underlyingindex", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nyse.arcaoptions.topfeed.pillar.v1.2.j.underlyingsymbol", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.arcaoptions.topfeed.pillar.v1.2.j.uppercollar", ftypes.INT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.volume = ProtoField.new("Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.j.volume", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.working_price = ProtoField.new("Working Price", "nyse.arcaoptions.topfeed.pillar.v1.2.j.workingprice", ftypes.DOUBLE)

-- Nyse ArcaOptions Pillar TopFeed 1.2.j Application Messages
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.complex_series_index_mapping_message = ProtoField.new("Complex Series Index Mapping Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.complexseriesindexmappingmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.messageunavailablemessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_imbalance_message = ProtoField.new("Options Imbalance Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.optionsimbalancemessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_quote_message = ProtoField.new("Options Quote Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.optionsquotemessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_status_message = ProtoField.new("Options Status Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.optionsstatusmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_trade_cancel_message = ProtoField.new("Options Trade Cancel Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.optionstradecancelmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_trade_correction_message = ProtoField.new("Options Trade Correction Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.optionstradecorrectionmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_trade_message = ProtoField.new("Options Trade Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.optionstrademessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.outright_series_index_mapping_message = ProtoField.new("Outright Series Index Mapping Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.outrightseriesindexmappingmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.outright_series_summary_message = ProtoField.new("Outright Series Summary Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.outrightseriessummarymessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.refreshheadermessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.refreshrequestmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.requestresponsemessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.securitystatusmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_rfq_message = ProtoField.new("Series Rfq Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.seriesrfqmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.symbolclearmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.arcaoptions.topfeed.pillar.v1.2.j.symbolindexmappingrequestmessage", ftypes.STRING)

-- Nyse ArcaOptions TopFeed Pillar 1.2.j generated fields
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.complex_series_index_mapping_leg_index = ProtoField.new("Complex Series Index Mapping Leg Index", "nyse.arcaoptions.topfeed.pillar.v1.2.j.complexseriesindexmappinglegindex", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_index = ProtoField.new("Message Index", "nyse.arcaoptions.topfeed.pillar.v1.2.j.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse ArcaOptions TopFeed Pillar 1.2.j Element Dissection Options
show.complex_series_index_mapping_leg = true
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.send_time = true
show.message_index = true
show.complex_series_index_mapping_leg_index = true

-- Register Nyse ArcaOptions TopFeed Pillar 1.2.j Show Options
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_complex_series_index_mapping_leg = Pref.bool("Show Complex Series Index Mapping Leg", show.complex_series_index_mapping_leg, "Parse and add Complex Series Index Mapping Leg to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_complex_series_index_mapping_leg_index = Pref.bool("Show Complex Series Index Mapping Leg Index", show.complex_series_index_mapping_leg_index, "Show generated complex series index mapping leg index in protocol tree")

-- Handle changed preferences
function omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_application_messages then
    show.application_messages = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_application_messages
  end
  if show.complex_series_index_mapping_leg ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_complex_series_index_mapping_leg then
    show.complex_series_index_mapping_leg = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_complex_series_index_mapping_leg
  end
  if show.message ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_message then
    show.message = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_message
  end
  if show.message_header ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_message_header then
    show.message_header = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_packet then
    show.packet = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_packet_header then
    show.packet_header = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_packet_header
  end
  if show.send_time ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_send_time then
    show.send_time = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_send_time
  end
  if show.message_index ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_message_index then
    show.message_index = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_message_index
  end
  if show.complex_series_index_mapping_leg_index ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_complex_series_index_mapping_leg_index then
    show.complex_series_index_mapping_leg_index = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.prefs.show_complex_series_index_mapping_leg_index
  end
end


-----------------------------------------------------------------------
-- Nyse ArcaOptions TopFeed Pillar 1.2.j Fields
-----------------------------------------------------------------------

-- Ask Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_customer_volume = {}

-- Size: Ask Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_customer_volume.size = 4

-- Display: Ask Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_customer_volume.display = function(value)
  return "Ask Customer Volume: "..value
end

-- Dissect: Ask Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ask_customer_volume, range, value, display)

  return offset + length, value
end

-- Ask Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price = {}

-- Size: Ask Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price.size = 4

-- Display: Ask Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Ask Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_volume = {}

-- Size: Ask Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_volume.size = 4

-- Display: Ask Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Auction Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_id = {}

-- Size: Auction Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_id.size = 8

-- Display: Auction Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Interest Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price = {}

-- Size: Auction Interest Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price.size = 4

-- Display: Auction Interest Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price.display = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Translate: Auction Interest Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Auction Interest Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Auction Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_status = {}

-- Size: Auction Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_status.size = 1

-- Display: Auction Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_status.display = function(value)
  if value == 0 then
    return "Auction Status: Will Run As Usual (0)"
  end
  if value == 4 then
    return "Auction Status: Auction Will Not Run Because Legal Width Quote Does Not Exist (4)"
  end
  if value == 5 then
    return "Auction Status: Auction Will Not Run Because Market Maker Quote Is Not Received (5)"
  end

  return "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_type = {}

-- Size: Auction Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_type.size = 1

-- Display: Auction Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_type.display = function(value)
  if value == "M" then
    return "Auction Type: Core Opening Auction (M)"
  end
  if value == "H" then
    return "Auction Type: Reopening Auction Halt Resume (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Bid Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_customer_volume = {}

-- Size: Bid Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_customer_volume.size = 4

-- Display: Bid Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_customer_volume.display = function(value)
  return "Bid Customer Volume: "..value
end

-- Dissect: Bid Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.bid_customer_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price = {}

-- Size: Bid Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price.size = 4

-- Display: Bid Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Bid Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_volume = {}

-- Size: Bid Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_volume.size = 4

-- Display: Bid Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Capacity
nyse_arcaoptions_topfeed_pillar_v1_2_j.capacity = {}

-- Size: Capacity
nyse_arcaoptions_topfeed_pillar_v1_2_j.capacity.size = 1

-- Display: Capacity
nyse_arcaoptions_topfeed_pillar_v1_2_j.capacity.display = function(value)
  if value == " " then
    return "Capacity: Na (<whitespace>)"
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
  if value == "5" then
    return "Capacity: Away Market Maker (5)"
  end
  if value == "8" then
    return "Capacity: Professional Customer (8)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nyse_arcaoptions_topfeed_pillar_v1_2_j.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.capacity, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id = {}

-- Size: Channel Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.size = 1

-- Display: Channel Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Close
nyse_arcaoptions_topfeed_pillar_v1_2_j.close = {}

-- Size: Close
nyse_arcaoptions_topfeed_pillar_v1_2_j.close.size = 4

-- Display: Close
nyse_arcaoptions_topfeed_pillar_v1_2_j.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_arcaoptions_topfeed_pillar_v1_2_j.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.close.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.close, range, value, display)

  return offset + length, value
end

-- Closing Only Indicator
nyse_arcaoptions_topfeed_pillar_v1_2_j.closing_only_indicator = {}

-- Size: Closing Only Indicator
nyse_arcaoptions_topfeed_pillar_v1_2_j.closing_only_indicator.size = 1

-- Display: Closing Only Indicator
nyse_arcaoptions_topfeed_pillar_v1_2_j.closing_only_indicator.display = function(value)
  if value == "0" then
    return "Closing Only Indicator: Standard Series (0)"
  end
  if value == "1" then
    return "Closing Only Indicator: Closing Only Series (1)"
  end

  return "Closing Only Indicator: Unknown("..value..")"
end

-- Dissect: Closing Only Indicator
nyse_arcaoptions_topfeed_pillar_v1_2_j.closing_only_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.closing_only_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.closing_only_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.closing_only_indicator, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Translate: Continuous Book Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Continuous Book Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
nyse_arcaoptions_topfeed_pillar_v1_2_j.contract_multiplier = {}

-- Size: Contract Multiplier
nyse_arcaoptions_topfeed_pillar_v1_2_j.contract_multiplier.size = 2

-- Display: Contract Multiplier
nyse_arcaoptions_topfeed_pillar_v1_2_j.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_arcaoptions_topfeed_pillar_v1_2_j.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_arcaoptions_topfeed_pillar_v1_2_j.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_arcaoptions_topfeed_pillar_v1_2_j.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_arcaoptions_topfeed_pillar_v1_2_j.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_arcaoptions_topfeed_pillar_v1_2_j.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_arcaoptions_topfeed_pillar_v1_2_j.delivery_flag = {}

-- Size: Delivery Flag
nyse_arcaoptions_topfeed_pillar_v1_2_j.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_arcaoptions_topfeed_pillar_v1_2_j.delivery_flag.display = function(value)
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num = {}

-- Size: End Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.size = 4

-- Display: End Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_arcaoptions_topfeed_pillar_v1_2_j.exchange_code = {}

-- Size: Exchange Code
nyse_arcaoptions_topfeed_pillar_v1_2_j.exchange_code.size = 1

-- Display: Exchange Code
nyse_arcaoptions_topfeed_pillar_v1_2_j.exchange_code.display = function(value)
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
  if value == " " then
    return "Exchange Code: Otc Or Index Based Product Space Or 0 X 20 (<whitespace>)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_arcaoptions_topfeed_pillar_v1_2_j.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.halt_condition = {}

-- Size: Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.halt_condition.size = 1

-- Display: Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.halt_condition.display = function(value)
  if value == "~" then
    return "Halt Condition: Security Not Delayedhalted (~)"
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- High Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price = {}

-- Size: High Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price.size = 4

-- Display: High Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: High Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.high_price, range, value, display)

  return offset + length, value
end

-- Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.id = {}

-- Size: Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.id.size = 4

-- Display: Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.imbalance_side = {}

-- Size: Imbalance Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.imbalance_side.display = function(value)
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Translate: Indicative Match Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Indicative Match Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.last_seq_num = {}

-- Size: Last Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_ratio_qty.size = 2

-- Display: Leg Ratio Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_security_type = {}

-- Size: Leg Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_security_type.size = 1

-- Display: Leg Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Options Series Leg (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity Stock Leg (E)"
  end
  if value == "F" then
    return "Leg Security Type: Options Flex Leg (F)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_side = {}

-- Size: Leg Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_side.size = 1

-- Display: Leg Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: Buy (B)"
  end
  if value == "S" then
    return "Leg Side: Sell (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.lot_size = {}

-- Size: Lot Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.lot_size.size = 2

-- Display: Lot Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price = {}

-- Size: Low Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price.size = 4

-- Display: Low Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Low Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_arcaoptions_topfeed_pillar_v1_2_j.lower_collar = {}

-- Size: Lower Collar
nyse_arcaoptions_topfeed_pillar_v1_2_j.lower_collar.size = 4

-- Display: Lower Collar
nyse_arcaoptions_topfeed_pillar_v1_2_j.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_arcaoptions_topfeed_pillar_v1_2_j.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id = {}

-- Size: Market Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.size = 2

-- Display: Market Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.display = function(value)
  if value == 1 then
    return "Market Id: Nyse Equities (1)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca Equities (3)"
  end
  if value == 4 then
    return "Market Id: Nyse Arca Options (4)"
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Market State
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state = {}

-- Size: Market State
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state.size = 1

-- Display: Market State
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state.display = function(value)
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.market_state, range, value, display)

  return offset + length, value
end

-- Maturity Date
nyse_arcaoptions_topfeed_pillar_v1_2_j.maturity_date = {}

-- Size: Maturity Date
nyse_arcaoptions_topfeed_pillar_v1_2_j.maturity_date.size = 6

-- Display: Maturity Date
nyse_arcaoptions_topfeed_pillar_v1_2_j.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_arcaoptions_topfeed_pillar_v1_2_j.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.maturity_date.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_size = {}

-- Size: Message Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_size.size = 2

-- Display: Message Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_type = {}

-- Size: Message Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_type.size = 2

-- Display: Message Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_type.display = function(value)
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
  if value == 50 then
    return "Message Type: Outright Series Index Mapping Message (50)"
  end
  if value == 51 then
    return "Message Type: Options Status Message (51)"
  end
  if value == 60 then
    return "Message Type: Complex Series Index Mapping Message (60)"
  end
  if value == 10 then
    return "Message Type: Retransmission Request Message (10)"
  end
  if value == 35 then
    return "Message Type: Refresh Header Message (35)"
  end
  if value == 15 then
    return "Message Type: Refresh Request Message (15)"
  end
  if value == 13 then
    return "Message Type: Symbol Index Mapping Request Message (13)"
  end
  if value == 31 then
    return "Message Type: Message Unavailable Message (31)"
  end
  if value == 11 then
    return "Message Type: Request Response Message (11)"
  end
  if value == 12 then
    return "Message Type: Heartbeat Response Message (12)"
  end
  if value == 340 then
    return "Message Type: Options Quote Message (340)"
  end
  if value == 320 then
    return "Message Type: Options Trade Message (320)"
  end
  if value == 321 then
    return "Message Type: Options Trade Cancel Message (321)"
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_arcaoptions_topfeed_pillar_v1_2_j.nanoseconds = {}

-- Size: Nanoseconds
nyse_arcaoptions_topfeed_pillar_v1_2_j.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_arcaoptions_topfeed_pillar_v1_2_j.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_arcaoptions_topfeed_pillar_v1_2_j.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- No Of Legs
nyse_arcaoptions_topfeed_pillar_v1_2_j.no_of_legs = {}

-- Size: No Of Legs
nyse_arcaoptions_topfeed_pillar_v1_2_j.no_of_legs.size = 2

-- Display: No Of Legs
nyse_arcaoptions_topfeed_pillar_v1_2_j.no_of_legs.display = function(value)
  return "No Of Legs: "..value
end

-- Dissect: No Of Legs
nyse_arcaoptions_topfeed_pillar_v1_2_j.no_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.no_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.no_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.no_of_legs, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_arcaoptions_topfeed_pillar_v1_2_j.number_msgs = {}

-- Size: Number Msgs
nyse_arcaoptions_topfeed_pillar_v1_2_j.number_msgs.size = 1

-- Display: Number Msgs
nyse_arcaoptions_topfeed_pillar_v1_2_j.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_arcaoptions_topfeed_pillar_v1_2_j.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Open
nyse_arcaoptions_topfeed_pillar_v1_2_j.open = {}

-- Size: Open
nyse_arcaoptions_topfeed_pillar_v1_2_j.open.size = 4

-- Display: Open
nyse_arcaoptions_topfeed_pillar_v1_2_j.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_arcaoptions_topfeed_pillar_v1_2_j.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.open.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.open, range, value, display)

  return offset + length, value
end

-- Option Symbol Root
nyse_arcaoptions_topfeed_pillar_v1_2_j.option_symbol_root = {}

-- Size: Option Symbol Root
nyse_arcaoptions_topfeed_pillar_v1_2_j.option_symbol_root.size = 6

-- Display: Option Symbol Root
nyse_arcaoptions_topfeed_pillar_v1_2_j.option_symbol_root.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Option Symbol Root: No Value"
  end

  return "Option Symbol Root: "..value
end

-- Dissect: Option Symbol Root
nyse_arcaoptions_topfeed_pillar_v1_2_j.option_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.option_symbol_root.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.option_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.option_symbol_root, range, value, display)

  return offset + length, value
end

-- Options Status Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_halt_condition = {}

-- Size: Options Status Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_halt_condition.size = 1

-- Display: Options Status Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_halt_condition.display = function(value)
  if value == "~" then
    return "Options Status Halt Condition: Series Not Delayedhalted (~)"
  end
  if value == "h" then
    return "Options Status Halt Condition: Option Series Is Halted (h)"
  end

  return "Options Status Halt Condition: Unknown("..value..")"
end

-- Dissect: Options Status Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_status_halt_condition, range, value, display)

  return offset + length, value
end

-- Original Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id = {}

-- Size: Original Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id.size = 4

-- Display: Original Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.paired_qty = {}

-- Size: Paired Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.paired_qty.size = 4

-- Display: Paired Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Participant
nyse_arcaoptions_topfeed_pillar_v1_2_j.participant = {}

-- Size: Participant
nyse_arcaoptions_topfeed_pillar_v1_2_j.participant.size = 4

-- Display: Participant
nyse_arcaoptions_topfeed_pillar_v1_2_j.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nyse_arcaoptions_topfeed_pillar_v1_2_j.participant.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.participant.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.participant, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.pkt_size = {}

-- Size: Pkt Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.pkt_size.size = 2

-- Display: Pkt Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_arcaoptions_topfeed_pillar_v1_2_j.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price = {}

-- Size: Prev Close Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Translate: Prev Close Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Prev Close Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.price = {}

-- Size: Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.price.size = 4

-- Display: Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1 = {}

-- Size: Price 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1.size = 4

-- Display: Price 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1.display = function(value)
  return "Price 1: "..value
end

-- Translate: Price 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2 = {}

-- Size: Price 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2.size = 4

-- Display: Price 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_resolution = {}

-- Size: Price Resolution
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_resolution.size = 1

-- Display: Price Resolution
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_resolution.display = function(value)
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code = {}

-- Size: Price Scale Code
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code.display = function(value)
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id = {}

-- Size: Product Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.size = 1

-- Display: Product Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.product_id, range, value, display)

  return offset + length, value
end

-- Put Or Call
nyse_arcaoptions_topfeed_pillar_v1_2_j.put_or_call = {}

-- Size: Put Or Call
nyse_arcaoptions_topfeed_pillar_v1_2_j.put_or_call.size = 1

-- Display: Put Or Call
nyse_arcaoptions_topfeed_pillar_v1_2_j.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_arcaoptions_topfeed_pillar_v1_2_j.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.quote_condition = {}

-- Size: Quote Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.quote_condition.size = 1

-- Display: Quote Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.quote_condition.display = function(value)
  if value == "1" then
    return "Quote Condition: Regular Trading (1)"
  end
  if value == "3" then
    return "Quote Condition: Trading Halted (3)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_arcaoptions_topfeed_pillar_v1_2_j.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.request_seq_num = {}

-- Size: Request Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1 = {}

-- Size: Reserved 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.size = 1

-- Display: Reserved 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2 = {}

-- Size: Reserved 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.size = 2

-- Display: Reserved 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4 = {}

-- Size: Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.size = 4

-- Display: Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmit_method = {}

-- Size: Retransmit Method
nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmit_method.display = function(value)
  if value == 0 then
    return "Retransmit Method: Deliver Via Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Rfq Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.rfq_status = {}

-- Size: Rfq Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.rfq_status.size = 1

-- Display: Rfq Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.rfq_status.display = function(value)
  if value == "O" then
    return "Rfq Status: Start Of Rfq Auction (O)"
  end
  if value == "Q" then
    return "Rfq Status: End Of Rfq Auction (Q)"
  end

  return "Rfq Status: Unknown("..value..")"
end

-- Dissect: Rfq Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.rfq_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.rfq_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.rfq_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.rfq_status, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_arcaoptions_topfeed_pillar_v1_2_j.round_lot = {}

-- Size: Round Lot
nyse_arcaoptions_topfeed_pillar_v1_2_j.round_lot.size = 1

-- Display: Round Lot
nyse_arcaoptions_topfeed_pillar_v1_2_j.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_arcaoptions_topfeed_pillar_v1_2_j.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_arcaoptions_topfeed_pillar_v1_2_j.seconds = {}

-- Size: Seconds
nyse_arcaoptions_topfeed_pillar_v1_2_j.seconds.size = 4

-- Display: Seconds
nyse_arcaoptions_topfeed_pillar_v1_2_j.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_arcaoptions_topfeed_pillar_v1_2_j.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status = {}

-- Size: Security Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status.size = 1

-- Display: Security Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status.display = function(value)
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_type = {}

-- Size: Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_type.size = 1

-- Display: Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_type.display = function(value)
  if value == "A" then
    return "Security Type: American Depositary Receipts (A)"
  end
  if value == "C" then
    return "Security Type: Common Stock (C)"
  end
  if value == "D" then
    return "Security Type: Debentures (D)"
  end
  if value == "E" then
    return "Security Type: Exchange Traded Funds (E)"
  end
  if value == "F" then
    return "Security Type: Foreign (F)"
  end
  if value == "H" then
    return "Security Type: American Depositary Shares (H)"
  end
  if value == "I" then
    return "Security Type: Units (I)"
  end
  if value == "L" then
    return "Security Type: Index Linked Notes (L)"
  end
  if value == "M" then
    return "Security Type: Other Blank (M)"
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
    return "Security Type: Shares Of Beneficial Interest (S)"
  end
  if value == "T" then
    return "Security Type: Test (T)"
  end
  if value == "U" then
    return "Security Type: Closed End Fund (U)"
  end
  if value == "W" then
    return "Security Type: Warrants (W)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.seq_num = {}

-- Size: Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.seq_num.size = 4

-- Display: Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Series Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index = {}

-- Size: Series Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size = 4

-- Display: Series Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.display = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_index, range, value, display)

  return offset + length, value
end

-- Series Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num = {}

-- Size: Series Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.size = 4

-- Display: Series Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.display = function(value)
  return "Series Seq Num: "..value
end

-- Dissect: Series Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_seq_num, range, value, display)

  return offset + length, value
end

-- Series Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_status = {}

-- Size: Series Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_status.size = 1

-- Display: Series Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_status.display = function(value)
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_status, range, value, display)

  return offset + length, value
end

-- Series Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_type = {}

-- Size: Series Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_type.size = 1

-- Display: Series Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_type.display = function(value)
  if value == 0 then
    return "Series Type: Standard (0)"
  end
  if value == 1 then
    return "Series Type: Flex (1)"
  end
  if value == 2 then
    return "Series Type: Flex Percentage (2)"
  end

  return "Series Type: Unknown("..value..")"
end

-- Dissect: Series Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_type, range, value, display)

  return offset + length, value
end

-- Session State
nyse_arcaoptions_topfeed_pillar_v1_2_j.session_state = {}

-- Size: Session State
nyse_arcaoptions_topfeed_pillar_v1_2_j.session_state.size = 1

-- Display: Session State
nyse_arcaoptions_topfeed_pillar_v1_2_j.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_arcaoptions_topfeed_pillar_v1_2_j.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.session_state, range, value, display)

  return offset + length, value
end

-- Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.side = {}

-- Size: Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.side.size = 1

-- Display: Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_arcaoptions_topfeed_pillar_v1_2_j.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.side, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id = {}

-- Size: Source Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.size = 10

-- Display: Source Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time = {}

-- Size: Source Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size = 4

-- Display: Source Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns = {}

-- Size: Source Time Ns
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_state = {}

-- Size: Ssr State
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_state.size = 1

-- Display: Ssr State
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_exchange_id.display = function(value)
  if value == " " then
    return "Ssr Triggering Exchange Id: Na Space Or 0 X 20 (<whitespace>)"
  end
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
  if value == "I" then
    return "Ssr Triggering Exchange Id: Ise (I)"
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.status = {}

-- Size: Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.status.size = 1

-- Display: Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.status.display = function(value)
  if value == "0" then
    return "Status: Message Was Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected Due To An Invalid Source Id (1)"
  end
  if value == "3" then
    return "Status: Rejected Due To Maximum Sequence Range (3)"
  end
  if value == "4" then
    return "Status: Rejected Due To Maximum Request In A Day (4)"
  end
  if value == "5" then
    return "Status: Rejected Due To Maximum Number Of Refresh Requests In A Day (5)"
  end
  if value == "6" then
    return "Status: Rejected Request Message Seq Num Ttl Is Too Old (6)"
  end
  if value == "7" then
    return "Status: Rejected Due To An Invalid Channel Id (7)"
  end
  if value == "8" then
    return "Status: Rejected Due To An Invalid Product Id (8)"
  end
  if value == "9" then
    return "Status: Rejected Due To Invalid Msg Type Or Mismatch Between Msg Type And Msg Size (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_arcaoptions_topfeed_pillar_v1_2_j.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.strike_price = {}

-- Size: Strike Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.strike_price.size = 10

-- Display: Strike Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.strike_price.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.strike_price.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol = {}

-- Size: Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol.size = 11

-- Display: Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index = {}

-- Size: Symbol Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.size = 4

-- Display: Symbol Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id = {}

-- Size: System Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.size = 1

-- Display: System Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.time = {}

-- Size: Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.time.size = 4

-- Display: Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.time, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Quantity
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_quantity = {}

-- Size: Total Quantity
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_quantity.size = 4

-- Display: Total Quantity
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_quantity.display = function(value)
  return "Total Quantity: "..value
end

-- Dissect: Total Quantity
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.total_quantity, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Total Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_volume = {}

-- Size: Total Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_volume.size = 4

-- Display: Total Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Cond 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1 = {}

-- Size: Trade Cond 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1.size = 1

-- Display: Trade Cond 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1.display = function(value)
  if value == "a" then
    return "Trade Cond 1: Outright Series Cube Order Trade (a)"
  end
  if value == "c" then
    return "Trade Cond 1: Outright Series Qcc Order Or Customer To Customer Cross Order (c)"
  end
  if value == "e" then
    return "Trade Cond 1: Outright Series Floor Trade (e)"
  end
  if value == "I" then
    return "Trade Cond 1: All Outright Series Electronic Trades (I)"
  end
  if value == "S" then
    return "Trade Cond 1: Intermarket Sweep Order (S)"
  end
  if value == "f" then
    return "Trade Cond 1: Complex Order Trades Not Part Of Cubeqc Celectronic With Outright (f)"
  end
  if value == "g" then
    return "Trade Cond 1: Complex Cube Order Trade (g)"
  end
  if value == "h" then
    return "Trade Cond 1: Complex Qcc Order Or Customer To Customer Cross Order (h)"
  end
  if value == "i" then
    return "Trade Cond 1: Complex Order To Complex Order Floor Trade (i)"
  end
  if value == "j" then
    return "Trade Cond 1: Complex Order Trading Electronically With Outright Series (j)"
  end
  if value == "m" then
    return "Trade Cond 1: Complex Order To Outright Series Order Floor Trade (m)"
  end
  if value == "p" then
    return "Trade Cond 1: Complex Order With Stock To Complex Order With Stock Floor Trade (p)"
  end
  if value == "s" then
    return "Trade Cond 1: Complex Order With Stock To Outright Series Order Floor Trade (s)"
  end
  if value == "H" then
    return "Trade Cond 1: Late Report Of Opening Trade Correct Sequence (H)"
  end
  if value == "F" then
    return "Trade Cond 1: Late Report Of Opening Trade Out Of Sequence (F)"
  end
  if value == "D" then
    return "Trade Cond 1: Transaction Reported Late Correct Sequence (D)"
  end
  if value == "B" then
    return "Trade Cond 1: Transaction Reported Late Out Of Sequence (B)"
  end

  return "Trade Cond 1: Unknown("..value..")"
end

-- Dissect: Trade Cond 1
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.trade_cond_1, range, value, display)

  return offset + length, value
end

-- Trade Cond 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_2 = {}

-- Size: Trade Cond 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_2.size = 1

-- Display: Trade Cond 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_2.display = function(value)
  if value == " " then
    return "Trade Cond 2: Na (<whitespace>)"
  end
  if value == "O" then
    return "Trade Cond 2: Market Center Opening Trade (O)"
  end
  if value == "5" then
    return "Trade Cond 2: Reopening Trade (5)"
  end

  return "Trade Cond 2: Unknown("..value..")"
end

-- Dissect: Trade Cond 2
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.trade_cond_2, range, value, display)

  return offset + length, value
end

-- Trade Cond 4
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_4 = {}

-- Size: Trade Cond 4
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_4.size = 1

-- Display: Trade Cond 4
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_4.display = function(value)
  if value == " " then
    return "Trade Cond 4: Na (<whitespace>)"
  end
  if value == "Q" then
    return "Trade Cond 4: Official Open Price (Q)"
  end

  return "Trade Cond 4: Unknown("..value..")"
end

-- Dissect: Trade Cond 4
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.trade_cond_4, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id = {}

-- Size: Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id.size = 4

-- Display: Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.type = {}

-- Size: Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.type.size = 1

-- Display: Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.type.display = function(value)
  if value == "B" then
    return "Type: Bold Outright Only (B)"
  end
  if value == "C" then
    return "Type: Coa Complex Only (C)"
  end
  if value == "F" then
    return "Type: Flex Price Improvement Cube (F)"
  end
  if value == "L" then
    return "Type: Flex Aon Solicitation Cube (L)"
  end
  if value == "P" then
    return "Type: Price Improvement Cube (P)"
  end
  if value == "S" then
    return "Type: Aon Solicitation Cube (S)"
  end

  return "Type: Unknown("..value..")"
end

-- Dissect: Type
nyse_arcaoptions_topfeed_pillar_v1_2_j.type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.type, range, value, display)

  return offset + length, value
end

-- Underlying Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_index = {}

-- Size: Underlying Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_index.size = 4

-- Display: Underlying Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_index.display = function(value)
  return "Underlying Index: "..value
end

-- Dissect: Underlying Index
nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.underlying_index, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_symbol = {}

-- Size: Underlying Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_symbol.size = 11

-- Display: Underlying Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_symbol.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_arcaoptions_topfeed_pillar_v1_2_j.upper_collar = {}

-- Size: Upper Collar
nyse_arcaoptions_topfeed_pillar_v1_2_j.upper_collar.size = 4

-- Display: Upper Collar
nyse_arcaoptions_topfeed_pillar_v1_2_j.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_arcaoptions_topfeed_pillar_v1_2_j.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.volume = {}

-- Size: Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.volume.size = 4

-- Display: Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_arcaoptions_topfeed_pillar_v1_2_j.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.volume, range, value, display)

  return offset + length, value
end

-- Working Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price = {}

-- Size: Working Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price.size = 4

-- Display: Working Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Working Price
nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price.translate(raw)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse ArcaOptions TopFeed Pillar 1.2.j
-----------------------------------------------------------------------

-- Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_summary_message = {}

-- Size: Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_summary_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.open.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.close.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.total_volume.size

-- Display: Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- High Price: Signed Binary
  index, high_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Signed Binary
  index, low_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.low_price.dissect(buffer, index, packet, parent)

  -- Open: Signed Binary
  index, open = nyse_arcaoptions_topfeed_pillar_v1_2_j.open.dissect(buffer, index, packet, parent)

  -- Close: Signed Binary
  index, close = nyse_arcaoptions_topfeed_pillar_v1_2_j.close.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.outright_series_summary_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_rfq_message = {}

-- Size: Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_rfq_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.side.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.type.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.capacity.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.total_quantity.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.participant.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.rfq_status.size

-- Display: Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_arcaoptions_topfeed_pillar_v1_2_j.side.dissect(buffer, index, packet, parent)

  -- Type: ASCII
  index, type = nyse_arcaoptions_topfeed_pillar_v1_2_j.type.dissect(buffer, index, packet, parent)

  -- Capacity: ASCII
  index, capacity = nyse_arcaoptions_topfeed_pillar_v1_2_j.capacity.dissect(buffer, index, packet, parent)

  -- Total Quantity: Binary
  index, total_quantity = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_quantity.dissect(buffer, index, packet, parent)

  -- Working Price: Signed Binary
  index, working_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.working_price.dissect(buffer, index, packet, parent)

  -- Participant: Binary
  index, participant = nyse_arcaoptions_topfeed_pillar_v1_2_j.participant.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_id.dissect(buffer, index, packet, parent)

  -- Rfq Status: ASCII
  index, rfq_status = nyse_arcaoptions_topfeed_pillar_v1_2_j.rfq_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.series_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.series_rfq_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.series_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_imbalance_message = {}

-- Size: Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_imbalance_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.paired_qty.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.total_imbalance_qty.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.market_imbalance_qty.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_type.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.imbalance_side.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.upper_collar.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.lower_collar.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_status.size

-- Display: Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.dissect(buffer, index, packet, parent)

  -- Paired Qty: Binary
  index, paired_qty = nyse_arcaoptions_topfeed_pillar_v1_2_j.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: Binary
  index, total_imbalance_qty = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: Binary
  index, market_imbalance_qty = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.dissect(buffer, index, packet, parent)

  -- Auction Type: ASCII
  index, auction_type = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: ASCII
  index, imbalance_side = nyse_arcaoptions_topfeed_pillar_v1_2_j.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: Signed Binary
  index, continuous_book_clearing_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: Signed Binary
  index, auction_interest_clearing_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_interest_clearing_price.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: Signed Binary
  index, indicative_match_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: Signed Binary
  index, upper_collar = nyse_arcaoptions_topfeed_pillar_v1_2_j.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: Signed Binary
  index, lower_collar = nyse_arcaoptions_topfeed_pillar_v1_2_j.lower_collar.dissect(buffer, index, packet, parent)

  -- Auction Status: Binary
  index, auction_status = nyse_arcaoptions_topfeed_pillar_v1_2_j.auction_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_imbalance_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_correction_message = {}

-- Size: Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_correction_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.size

-- Display: Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_arcaoptions_topfeed_pillar_v1_2_j.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_arcaoptions_topfeed_pillar_v1_2_j.volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_trade_correction_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_cancel_message = {}

-- Size: Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_cancel_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id.size

-- Display: Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.original_trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_trade_cancel_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_message = {}

-- Size: Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_2.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_4.size

-- Display: Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_arcaoptions_topfeed_pillar_v1_2_j.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_arcaoptions_topfeed_pillar_v1_2_j.volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: ASCII
  index, trade_cond_2 = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: ASCII
  index, trade_cond_4 = nyse_arcaoptions_topfeed_pillar_v1_2_j.trade_cond_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_trade_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_quote_message = {}

-- Size: Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_quote_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.quote_condition.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_customer_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_customer_volume.size

-- Display: Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: Signed Binary
  index, ask_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: Binary
  index, ask_volume = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: Signed Binary
  index, bid_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: Binary
  index, bid_volume = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_arcaoptions_topfeed_pillar_v1_2_j.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.dissect(buffer, index, packet, parent)

  -- Ask Customer Volume: Binary
  index, ask_customer_volume = nyse_arcaoptions_topfeed_pillar_v1_2_j.ask_customer_volume.dissect(buffer, index, packet, parent)

  -- Bid Customer Volume: Binary
  index, bid_customer_volume = nyse_arcaoptions_topfeed_pillar_v1_2_j.bid_customer_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_quote_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.heartbeat_response_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.size

-- Display: Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.request_response_message = {}

-- Size: Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.request_response_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.request_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.status.size

-- Display: Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_arcaoptions_topfeed_pillar_v1_2_j.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.request_response_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_unavailable_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.size

-- Display: Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_request_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_request_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.size

-- Display: Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_header_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.current_refresh_pkt.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.total_refresh_pkts.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.last_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_arcaoptions_topfeed_pillar_v1_2_j.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_arcaoptions_topfeed_pillar_v1_2_j.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmission_request_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.size

-- Display: Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Series Index Mapping Leg
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_leg = {}

-- Size: Complex Series Index Mapping Leg
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_leg.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_ratio_qty.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_side.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_security_type.size

-- Display: Complex Series Index Mapping Leg
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Index Mapping Leg
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_leg.fields = function(buffer, offset, packet, parent, complex_series_index_mapping_leg_index)
  local index = offset

  -- Implicit Complex Series Index Mapping Leg Index
  if complex_series_index_mapping_leg_index ~= nil and show.complex_series_index_mapping_leg_index then
    local iteration = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.complex_series_index_mapping_leg_index, complex_series_index_mapping_leg_index)
    iteration:set_generated()
  end

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: Binary
  index, leg_ratio_qty = nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: ASCII
  index, leg_side = nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Security Type: ASCII
  index, leg_security_type = nyse_arcaoptions_topfeed_pillar_v1_2_j.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Series Index Mapping Leg
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_leg.dissect = function(buffer, offset, packet, parent, complex_series_index_mapping_leg_index)
  if show.complex_series_index_mapping_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.complex_series_index_mapping_leg, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_leg.fields(buffer, offset, packet, parent, complex_series_index_mapping_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_leg.fields(buffer, offset, packet, parent, complex_series_index_mapping_leg_index)
  end
end

-- Complex Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_message = {}

-- Calculate size of: Complex Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size

  index = index + nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.size

  index = index + nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.size

  index = index + nyse_arcaoptions_topfeed_pillar_v1_2_j.no_of_legs.size

  -- Calculate field size from count
  local complex_series_index_mapping_leg_count = buffer(offset + index - 2, 2):le_uint()
  index = index + complex_series_index_mapping_leg_count * 8

  return index
end

-- Display: Complex Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.dissect(buffer, index, packet, parent)

  -- No Of Legs: Binary
  index, no_of_legs = nyse_arcaoptions_topfeed_pillar_v1_2_j.no_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Series Index Mapping Leg
  for complex_series_index_mapping_leg_index = 1, no_of_legs do
    index, complex_series_index_mapping_leg = nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_leg.dissect(buffer, index, packet, parent, complex_series_index_mapping_leg_index)
  end

  return index
end

-- Dissect: Complex Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.complex_series_index_mapping_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_message = {}

-- Size: Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_status.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_halt_condition.size

-- Display: Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_seq_num.dissect(buffer, index, packet, parent)

  -- Series Status: ASCII
  index, series_status = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_status.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state.dissect(buffer, index, packet, parent)

  -- Options Status Halt Condition: ASCII
  index, options_status_halt_condition = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_halt_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.options_status_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_index_mapping_message = {}

-- Size: Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_index_mapping_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.series_type.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.option_symbol_root.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_symbol.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.contract_multiplier.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.maturity_date.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.put_or_call.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.strike_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.closing_only_indicator.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.size

-- Display: Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_index.dissect(buffer, index, packet, parent)

  -- Series Type: Binary
  index, series_type = nyse_arcaoptions_topfeed_pillar_v1_2_j.series_type.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.dissect(buffer, index, packet, parent)

  -- Option Symbol Root: ASCII
  index, option_symbol_root = nyse_arcaoptions_topfeed_pillar_v1_2_j.option_symbol_root.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: ASCII
  index, underlying_symbol = nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Index: Binary
  index, underlying_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.underlying_index.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: Binary
  index, contract_multiplier = nyse_arcaoptions_topfeed_pillar_v1_2_j.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Maturity Date: ASCII
  index, maturity_date = nyse_arcaoptions_topfeed_pillar_v1_2_j.maturity_date.dissect(buffer, index, packet, parent)

  -- Put Or Call: Binary
  index, put_or_call = nyse_arcaoptions_topfeed_pillar_v1_2_j.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: ASCII
  index, strike_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.strike_price.dissect(buffer, index, packet, parent)

  -- Closing Only Indicator: ASCII
  index, closing_only_indicator = nyse_arcaoptions_topfeed_pillar_v1_2_j.closing_only_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.outright_series_index_mapping_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status_message = {}

-- Size: Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.halt_condition.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_exchange_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_state.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.session_state.size

-- Display: Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_arcaoptions_topfeed_pillar_v1_2_j.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_arcaoptions_topfeed_pillar_v1_2_j.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_arcaoptions_topfeed_pillar_v1_2_j.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_arcaoptions_topfeed_pillar_v1_2_j.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.security_status_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_clear_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.exchange_code.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.security_type.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.lot_size.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.price_resolution.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.round_lot.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_arcaoptions_topfeed_pillar_v1_2_j.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_arcaoptions_topfeed_pillar_v1_2_j.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_arcaoptions_topfeed_pillar_v1_2_j.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_arcaoptions_topfeed_pillar_v1_2_j.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_arcaoptions_topfeed_pillar_v1_2_j.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_arcaoptions_topfeed_pillar_v1_2_j.round_lot.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_arcaoptions_topfeed_pillar_v1_2_j.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_reference_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size

-- Display: Source Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_arcaoptions_topfeed_pillar_v1_2_j.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.sequence_number_reset_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.size

-- Display: Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_j.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_arcaoptions_topfeed_pillar_v1_2_j.payload = {}

-- Dissect: Payload
nyse_arcaoptions_topfeed_pillar_v1_2_j.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Index Mapping Message
  if message_type == 50 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Status Message
  if message_type == 51 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Series Index Mapping Message
  if message_type == 60 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.complex_series_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Quote Message
  if message_type == 340 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Message
  if message_type == 320 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Cancel Message
  if message_type == 321 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Correction Message
  if message_type == 322 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Imbalance Message
  if message_type == 305 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.options_imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Rfq Message
  if message_type == 307 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.series_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Summary Message
  if message_type == 323 then
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.outright_series_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_header = {}

-- Size: Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_header.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.message_size.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.message_type.size

-- Display: Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, message_type = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_header, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.message = {}

-- Display: Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_arcaoptions_topfeed_pillar_v1_2_j.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 22 branches
  index = nyse_arcaoptions_topfeed_pillar_v1_2_j.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_arcaoptions_topfeed_pillar_v1_2_j.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.message, buffer(offset, 0))
    local current = nyse_arcaoptions_topfeed_pillar_v1_2_j.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_topfeed_pillar_v1_2_j.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time = {}

-- Size: Send Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.seconds.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.nanoseconds.size

-- Display: Send Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time.display = function(packet, parent, value)
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
nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_arcaoptions_topfeed_pillar_v1_2_j.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_arcaoptions_topfeed_pillar_v1_2_j.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.send_time, buffer(offset, 0))
    local index, value = nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header = {}

-- Size: Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_j.pkt_size.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.delivery_flag.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.number_msgs.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time.size

-- Display: Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_arcaoptions_topfeed_pillar_v1_2_j.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_arcaoptions_topfeed_pillar_v1_2_j.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_arcaoptions_topfeed_pillar_v1_2_j.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_j.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_arcaoptions_topfeed_pillar_v1_2_j.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.fields.packet_header, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_arcaoptions_topfeed_pillar_v1_2_j.packet = {}

-- Verify required size of Udp packet
nyse_arcaoptions_topfeed_pillar_v1_2_j.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header.size
end

-- Dissect Packet
nyse_arcaoptions_topfeed_pillar_v1_2_j.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_arcaoptions_topfeed_pillar_v1_2_j.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_arcaoptions_topfeed_pillar_v1_2_j.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.init()
end

-- Dissector for Nyse ArcaOptions TopFeed Pillar 1.2.j
function omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_j, buffer(), omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.description, "("..buffer:len().." Bytes)")
  return nyse_arcaoptions_topfeed_pillar_v1_2_j.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse ArcaOptions TopFeed Pillar 1.2.j (Udp)
local function omi_nyse_arcaoptions_topfeed_pillar_v1_2_j_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_arcaoptions_topfeed_pillar_v1_2_j.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arcaoptions_topfeed_pillar_v1_2_j
  omi_nyse_arcaoptions_topfeed_pillar_v1_2_j.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse ArcaOptions TopFeed Pillar 1.2.j
omi_nyse_arcaoptions_topfeed_pillar_v1_2_j:register_heuristic("udp", omi_nyse_arcaoptions_topfeed_pillar_v1_2_j_udp_heuristic)

-- Register Nyse ArcaOptions TopFeed Pillar 1.2.j on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_arcaoptions_topfeed_pillar_v1_2_j)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.2.j
--   Date: Tuesday, November 18, 2025
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
