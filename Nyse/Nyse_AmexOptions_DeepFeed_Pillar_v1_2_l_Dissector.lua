-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse AmexOptions DeepFeed Pillar 1.2.l Protocol
local omi_nyse_amexoptions_deepfeed_pillar_v1_2_l = Proto("Nyse.AmexOptions.DeepFeed.Pillar.v1.2.l.Lua", "Nyse AmexOptions DeepFeed Pillar 1.2.l")

-- Protocol table
local nyse_amexoptions_deepfeed_pillar_v1_2_l = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse AmexOptions DeepFeed Pillar 1.2.l Fields
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.auction_id = ProtoField.new("Auction Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.auctionid", ftypes.UINT64)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.amexoptions.deepfeed.pillar.v1.2.l.auctioninterestclearingprice", ftypes.DOUBLE)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.auction_status = ProtoField.new("Auction Status", "nyse.amexoptions.deepfeed.pillar.v1.2.l.auctionstatus", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.auction_type = ProtoField.new("Auction Type", "nyse.amexoptions.deepfeed.pillar.v1.2.l.auctiontype", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.amexoptions.deepfeed.pillar.v1.2.l.beginseqnum", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.capacity = ProtoField.new("Capacity", "nyse.amexoptions.deepfeed.pillar.v1.2.l.capacity", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.channel_id = ProtoField.new("Channel Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.channelid", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.close = ProtoField.new("Close", "nyse.amexoptions.deepfeed.pillar.v1.2.l.close", ftypes.INT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.closing_only_indicator = ProtoField.new("Closing Only Indicator", "nyse.amexoptions.deepfeed.pillar.v1.2.l.closingonlyindicator", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.complex_series_index_mapping_leg = ProtoField.new("Complex Series Index Mapping Leg", "nyse.amexoptions.deepfeed.pillar.v1.2.l.complexseriesindexmappingleg", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.amexoptions.deepfeed.pillar.v1.2.l.continuousbookclearingprice", ftypes.DOUBLE)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.amexoptions.deepfeed.pillar.v1.2.l.contractmultiplier", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.cross_id = ProtoField.new("Cross Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.crossid", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.cross_type = ProtoField.new("Cross Type", "nyse.amexoptions.deepfeed.pillar.v1.2.l.crosstype", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.amexoptions.deepfeed.pillar.v1.2.l.currentrefreshpkt", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.cust_indicator = ProtoField.new("Cust Indicator", "nyse.amexoptions.deepfeed.pillar.v1.2.l.custindicator", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.amexoptions.deepfeed.pillar.v1.2.l.deliveryflag", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.amexoptions.deepfeed.pillar.v1.2.l.endseqnum", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.amexoptions.deepfeed.pillar.v1.2.l.exchangecode", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.firm_id = ProtoField.new("Firm Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.firmid", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.amexoptions.deepfeed.pillar.v1.2.l.haltcondition", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.high_price = ProtoField.new("High Price", "nyse.amexoptions.deepfeed.pillar.v1.2.l.highprice", ftypes.DOUBLE)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.id = ProtoField.new("Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.id", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.amexoptions.deepfeed.pillar.v1.2.l.imbalanceside", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.amexoptions.deepfeed.pillar.v1.2.l.indicativematchprice", ftypes.DOUBLE)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.amexoptions.deepfeed.pillar.v1.2.l.lastseqnum", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.amexoptions.deepfeed.pillar.v1.2.l.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "nyse.amexoptions.deepfeed.pillar.v1.2.l.legratioqty", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.leg_security_type = ProtoField.new("Leg Security Type", "nyse.amexoptions.deepfeed.pillar.v1.2.l.legsecuritytype", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.leg_side = ProtoField.new("Leg Side", "nyse.amexoptions.deepfeed.pillar.v1.2.l.legside", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.lot_size = ProtoField.new("Lot Size", "nyse.amexoptions.deepfeed.pillar.v1.2.l.lotsize", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.low_price = ProtoField.new("Low Price", "nyse.amexoptions.deepfeed.pillar.v1.2.l.lowprice", ftypes.DOUBLE)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.amexoptions.deepfeed.pillar.v1.2.l.lowercollar", ftypes.INT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.market_id = ProtoField.new("Market Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.marketid", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.amexoptions.deepfeed.pillar.v1.2.l.marketimbalanceqty", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.market_state = ProtoField.new("Market State", "nyse.amexoptions.deepfeed.pillar.v1.2.l.marketstate", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.amexoptions.deepfeed.pillar.v1.2.l.maturitydate", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message = ProtoField.new("Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.message", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_header = ProtoField.new("Message Header", "nyse.amexoptions.deepfeed.pillar.v1.2.l.messageheader", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_size = ProtoField.new("Message Size", "nyse.amexoptions.deepfeed.pillar.v1.2.l.messagesize", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_type = ProtoField.new("Message Type", "nyse.amexoptions.deepfeed.pillar.v1.2.l.messagetype", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.amexoptions.deepfeed.pillar.v1.2.l.nanoseconds", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.new_order_id = ProtoField.new("New Order Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.neworderid", ftypes.UINT64)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.amexoptions.deepfeed.pillar.v1.2.l.nextsourceseqnum", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.no_of_legs = ProtoField.new("No Of Legs", "nyse.amexoptions.deepfeed.pillar.v1.2.l.nooflegs", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.non_displayed_trade_trade_cond_1 = ProtoField.new("Non Displayed Trade Trade Cond 1", "nyse.amexoptions.deepfeed.pillar.v1.2.l.nondisplayedtradetradecond1", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.amexoptions.deepfeed.pillar.v1.2.l.numbermsgs", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.open = ProtoField.new("Open", "nyse.amexoptions.deepfeed.pillar.v1.2.l.open", ftypes.INT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.option_symbol_root = ProtoField.new("Option Symbol Root", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsymbolroot", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_status_halt_condition = ProtoField.new("Options Status Halt Condition", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsstatushaltcondition", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.order_id = ProtoField.new("Order Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.orderid", ftypes.UINT64)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.packet = ProtoField.new("Packet", "nyse.amexoptions.deepfeed.pillar.v1.2.l.packet", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.packet_header = ProtoField.new("Packet Header", "nyse.amexoptions.deepfeed.pillar.v1.2.l.packetheader", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.amexoptions.deepfeed.pillar.v1.2.l.pairedqty", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.participant = ProtoField.new("Participant", "nyse.amexoptions.deepfeed.pillar.v1.2.l.participant", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.amexoptions.deepfeed.pillar.v1.2.l.pktsize", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.position_change = ProtoField.new("Position Change", "nyse.amexoptions.deepfeed.pillar.v1.2.l.positionchange", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.amexoptions.deepfeed.pillar.v1.2.l.prevcloseprice", ftypes.DOUBLE)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.amexoptions.deepfeed.pillar.v1.2.l.prevclosevolume", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price = ProtoField.new("Price", "nyse.amexoptions.deepfeed.pillar.v1.2.l.price", ftypes.DOUBLE)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_1 = ProtoField.new("Price 1", "nyse.amexoptions.deepfeed.pillar.v1.2.l.price1", ftypes.DOUBLE)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_2 = ProtoField.new("Price 2", "nyse.amexoptions.deepfeed.pillar.v1.2.l.price2", ftypes.DOUBLE)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.amexoptions.deepfeed.pillar.v1.2.l.priceresolution", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.amexoptions.deepfeed.pillar.v1.2.l.pricescalecode", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_type = ProtoField.new("Price Type", "nyse.amexoptions.deepfeed.pillar.v1.2.l.pricetype", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.printable_flag = ProtoField.new("Printable Flag", "nyse.amexoptions.deepfeed.pillar.v1.2.l.printableflag", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.product_id = ProtoField.new("Product Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.productid", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.amexoptions.deepfeed.pillar.v1.2.l.putorcall", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.amexoptions.deepfeed.pillar.v1.2.l.requestseqnum", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.amexoptions.deepfeed.pillar.v1.2.l.reserved1", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.amexoptions.deepfeed.pillar.v1.2.l.reserved2", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.reserved_3 = ProtoField.new("Reserved 3", "nyse.amexoptions.deepfeed.pillar.v1.2.l.reserved3", ftypes.BYTES)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.amexoptions.deepfeed.pillar.v1.2.l.reserved4", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.amexoptions.deepfeed.pillar.v1.2.l.retransmitmethod", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.rfq_side = ProtoField.new("Rfq Side", "nyse.amexoptions.deepfeed.pillar.v1.2.l.rfqside", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.rfq_status = ProtoField.new("Rfq Status", "nyse.amexoptions.deepfeed.pillar.v1.2.l.rfqstatus", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.round_lot = ProtoField.new("Round Lot", "nyse.amexoptions.deepfeed.pillar.v1.2.l.roundlot", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.seconds = ProtoField.new("Seconds", "nyse.amexoptions.deepfeed.pillar.v1.2.l.seconds", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.security_status = ProtoField.new("Security Status", "nyse.amexoptions.deepfeed.pillar.v1.2.l.securitystatus", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.security_type = ProtoField.new("Security Type", "nyse.amexoptions.deepfeed.pillar.v1.2.l.securitytype", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.send_time = ProtoField.new("Send Time", "nyse.amexoptions.deepfeed.pillar.v1.2.l.sendtime", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.seq_num = ProtoField.new("Seq Num", "nyse.amexoptions.deepfeed.pillar.v1.2.l.seqnum", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.series_index = ProtoField.new("Series Index", "nyse.amexoptions.deepfeed.pillar.v1.2.l.seriesindex", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.series_seq_num = ProtoField.new("Series Seq Num", "nyse.amexoptions.deepfeed.pillar.v1.2.l.seriesseqnum", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.series_status = ProtoField.new("Series Status", "nyse.amexoptions.deepfeed.pillar.v1.2.l.seriesstatus", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.series_type = ProtoField.new("Series Type", "nyse.amexoptions.deepfeed.pillar.v1.2.l.seriestype", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.session_state = ProtoField.new("Session State", "nyse.amexoptions.deepfeed.pillar.v1.2.l.sessionstate", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.side = ProtoField.new("Side", "nyse.amexoptions.deepfeed.pillar.v1.2.l.side", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.source_id = ProtoField.new("Source Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.sourceid", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.source_time = ProtoField.new("Source Time", "nyse.amexoptions.deepfeed.pillar.v1.2.l.sourcetime", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.amexoptions.deepfeed.pillar.v1.2.l.sourcetimens", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.ssr_state = ProtoField.new("Ssr State", "nyse.amexoptions.deepfeed.pillar.v1.2.l.ssrstate", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.amexoptions.deepfeed.pillar.v1.2.l.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.status = ProtoField.new("Status", "nyse.amexoptions.deepfeed.pillar.v1.2.l.status", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.strike_price = ProtoField.new("Strike Price", "nyse.amexoptions.deepfeed.pillar.v1.2.l.strikeprice", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol = ProtoField.new("Symbol", "nyse.amexoptions.deepfeed.pillar.v1.2.l.symbol", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.amexoptions.deepfeed.pillar.v1.2.l.symbolindex", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.amexoptions.deepfeed.pillar.v1.2.l.symbolseqnum", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.system_id = ProtoField.new("System Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.systemid", ftypes.UINT8)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.time = ProtoField.new("Time", "nyse.amexoptions.deepfeed.pillar.v1.2.l.time", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.amexoptions.deepfeed.pillar.v1.2.l.totalimbalanceqty", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.total_quantity = ProtoField.new("Total Quantity", "nyse.amexoptions.deepfeed.pillar.v1.2.l.totalquantity", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.amexoptions.deepfeed.pillar.v1.2.l.totalrefreshpkts", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.total_volume = ProtoField.new("Total Volume", "nyse.amexoptions.deepfeed.pillar.v1.2.l.totalvolume", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.amexoptions.deepfeed.pillar.v1.2.l.tradecond1", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.trade_id = ProtoField.new("Trade Id", "nyse.amexoptions.deepfeed.pillar.v1.2.l.tradeid", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.type = ProtoField.new("Type", "nyse.amexoptions.deepfeed.pillar.v1.2.l.type", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.underlying_index = ProtoField.new("Underlying Index", "nyse.amexoptions.deepfeed.pillar.v1.2.l.underlyingindex", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nyse.amexoptions.deepfeed.pillar.v1.2.l.underlyingsymbol", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.amexoptions.deepfeed.pillar.v1.2.l.uppercollar", ftypes.INT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.volume = ProtoField.new("Volume", "nyse.amexoptions.deepfeed.pillar.v1.2.l.volume", ftypes.UINT32)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.working_price = ProtoField.new("Working Price", "nyse.amexoptions.deepfeed.pillar.v1.2.l.workingprice", ftypes.DOUBLE)

-- Nyse AmexOptions Pillar DeepFeed 1.2.l Application Messages
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.complex_series_index_mapping_message = ProtoField.new("Complex Series Index Mapping Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.complexseriesindexmappingmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.messageunavailablemessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_add_order_message = ProtoField.new("Options Add Order Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsaddordermessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_add_order_refresh_message = ProtoField.new("Options Add Order Refresh Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsaddorderrefreshmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionscrosstrademessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_delete_order_message = ProtoField.new("Options Delete Order Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsdeleteordermessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_imbalance_message = ProtoField.new("Options Imbalance Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsimbalancemessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_modify_order_message = ProtoField.new("Options Modify Order Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsmodifyordermessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_non_displayed_trade_message = ProtoField.new("Options Non Displayed Trade Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsnondisplayedtrademessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_order_execution_message = ProtoField.new("Options Order Execution Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsorderexecutionmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_outright_series_summary_message = ProtoField.new("Options Outright Series Summary Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsoutrightseriessummarymessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_replace_order_message = ProtoField.new("Options Replace Order Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsreplaceordermessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_series_rfq_message = ProtoField.new("Options Series Rfq Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsseriesrfqmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_status_message = ProtoField.new("Options Status Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionsstatusmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_trade_cancel_message = ProtoField.new("Options Trade Cancel Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.optionstradecancelmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.outright_series_index_mapping_message = ProtoField.new("Outright Series Index Mapping Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.outrightseriesindexmappingmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.refreshheadermessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.refreshrequestmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.requestresponsemessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.securitystatusmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.symbolclearmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.amexoptions.deepfeed.pillar.v1.2.l.symbolindexmappingrequestmessage", ftypes.STRING)

-- Nyse AmexOptions DeepFeed Pillar 1.2.l generated fields
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.complex_series_index_mapping_leg_index = ProtoField.new("Complex Series Index Mapping Leg Index", "nyse.amexoptions.deepfeed.pillar.v1.2.l.complexseriesindexmappinglegindex", ftypes.UINT16)
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_index = ProtoField.new("Message Index", "nyse.amexoptions.deepfeed.pillar.v1.2.l.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse AmexOptions DeepFeed Pillar 1.2.l Element Dissection Options
show.complex_series_index_mapping_leg = true
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.send_time = true
show.message_index = true
show.complex_series_index_mapping_leg_index = true

-- Register Nyse AmexOptions DeepFeed Pillar 1.2.l Show Options
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_complex_series_index_mapping_leg = Pref.bool("Show Complex Series Index Mapping Leg", show.complex_series_index_mapping_leg, "Parse and add Complex Series Index Mapping Leg to protocol tree")
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_complex_series_index_mapping_leg_index = Pref.bool("Show Complex Series Index Mapping Leg Index", show.complex_series_index_mapping_leg_index, "Show generated complex series index mapping leg index in protocol tree")

-- Handle changed preferences
function omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_application_messages then
    show.application_messages = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_application_messages
  end
  if show.complex_series_index_mapping_leg ~= omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_complex_series_index_mapping_leg then
    show.complex_series_index_mapping_leg = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_complex_series_index_mapping_leg
  end
  if show.message ~= omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_message then
    show.message = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_message
  end
  if show.message_header ~= omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_message_header then
    show.message_header = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_packet then
    show.packet = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_packet_header then
    show.packet_header = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_packet_header
  end
  if show.send_time ~= omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_send_time then
    show.send_time = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_send_time
  end
  if show.message_index ~= omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_message_index then
    show.message_index = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_message_index
  end
  if show.complex_series_index_mapping_leg_index ~= omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_complex_series_index_mapping_leg_index then
    show.complex_series_index_mapping_leg_index = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.prefs.show_complex_series_index_mapping_leg_index
  end
end


-----------------------------------------------------------------------
-- Nyse AmexOptions DeepFeed Pillar 1.2.l Fields
-----------------------------------------------------------------------

-- Auction Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_id = {}

-- Size: Auction Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_id.size = 8

-- Display: Auction Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Interest Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price = {}

-- Size: Auction Interest Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price.size = 4

-- Display: Auction Interest Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price.display = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Translate: Auction Interest Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Auction Interest Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Auction Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_status = {}

-- Size: Auction Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_status.size = 1

-- Display: Auction Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_status.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_type = {}

-- Size: Auction Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_type.size = 1

-- Display: Auction Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_type.display = function(value)
  if value == "M" then
    return "Auction Type: Core Opening Auction (M)"
  end
  if value == "H" then
    return "Auction Type: Reopening Auction Halt Resume (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Capacity
nyse_amexoptions_deepfeed_pillar_v1_2_l.capacity = {}

-- Size: Capacity
nyse_amexoptions_deepfeed_pillar_v1_2_l.capacity.size = 1

-- Display: Capacity
nyse_amexoptions_deepfeed_pillar_v1_2_l.capacity.display = function(value)
  if value == " " then
    return "Capacity: Na Space Or 0 X 20 (<whitespace>)"
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.capacity, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id = {}

-- Size: Channel Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.size = 1

-- Display: Channel Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Close
nyse_amexoptions_deepfeed_pillar_v1_2_l.close = {}

-- Size: Close
nyse_amexoptions_deepfeed_pillar_v1_2_l.close.size = 4

-- Display: Close
nyse_amexoptions_deepfeed_pillar_v1_2_l.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_amexoptions_deepfeed_pillar_v1_2_l.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.close.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.close, range, value, display)

  return offset + length, value
end

-- Closing Only Indicator
nyse_amexoptions_deepfeed_pillar_v1_2_l.closing_only_indicator = {}

-- Size: Closing Only Indicator
nyse_amexoptions_deepfeed_pillar_v1_2_l.closing_only_indicator.size = 1

-- Display: Closing Only Indicator
nyse_amexoptions_deepfeed_pillar_v1_2_l.closing_only_indicator.display = function(value)
  if value == "0" then
    return "Closing Only Indicator: Standard Series (0)"
  end
  if value == "1" then
    return "Closing Only Indicator: Closing Only Series (1)"
  end

  return "Closing Only Indicator: Unknown("..value..")"
end

-- Dissect: Closing Only Indicator
nyse_amexoptions_deepfeed_pillar_v1_2_l.closing_only_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.closing_only_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.closing_only_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.closing_only_indicator, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Translate: Continuous Book Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Continuous Book Clearing Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
nyse_amexoptions_deepfeed_pillar_v1_2_l.contract_multiplier = {}

-- Size: Contract Multiplier
nyse_amexoptions_deepfeed_pillar_v1_2_l.contract_multiplier.size = 2

-- Display: Contract Multiplier
nyse_amexoptions_deepfeed_pillar_v1_2_l.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_amexoptions_deepfeed_pillar_v1_2_l.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Cross Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_id = {}

-- Size: Cross Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_id.size = 4

-- Display: Cross Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_type = {}

-- Size: Cross Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_type.size = 1

-- Display: Cross Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Market Center Opening Auction (O)"
  end
  if value == "5" then
    return "Cross Type: Market Center Reopening Auction (5)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_amexoptions_deepfeed_pillar_v1_2_l.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_amexoptions_deepfeed_pillar_v1_2_l.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_amexoptions_deepfeed_pillar_v1_2_l.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_amexoptions_deepfeed_pillar_v1_2_l.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Cust Indicator
nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator = {}

-- Size: Cust Indicator
nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.size = 1

-- Display: Cust Indicator
nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.display = function(value)
  if value == "C" then
    return "Cust Indicator: Customer (C)"
  end
  if value == "N" then
    return "Cust Indicator: Noncustomer (N)"
  end
  if value == "D" then
    return "Cust Indicator: Derived For Future Use (D)"
  end

  return "Cust Indicator: Unknown("..value..")"
end

-- Dissect: Cust Indicator
nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.cust_indicator, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_amexoptions_deepfeed_pillar_v1_2_l.delivery_flag = {}

-- Size: Delivery Flag
nyse_amexoptions_deepfeed_pillar_v1_2_l.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_amexoptions_deepfeed_pillar_v1_2_l.delivery_flag.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num = {}

-- Size: End Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.size = 4

-- Display: End Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_amexoptions_deepfeed_pillar_v1_2_l.exchange_code = {}

-- Size: Exchange Code
nyse_amexoptions_deepfeed_pillar_v1_2_l.exchange_code.size = 1

-- Display: Exchange Code
nyse_amexoptions_deepfeed_pillar_v1_2_l.exchange_code.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Firm Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id = {}

-- Size: Firm Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id.size = 5

-- Display: Firm Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id: No Value"
  end

  return "Firm Id: "..value
end

-- Dissect: Firm Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id.size
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

  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_amexoptions_deepfeed_pillar_v1_2_l.halt_condition = {}

-- Size: Halt Condition
nyse_amexoptions_deepfeed_pillar_v1_2_l.halt_condition.size = 1

-- Display: Halt Condition
nyse_amexoptions_deepfeed_pillar_v1_2_l.halt_condition.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- High Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price = {}

-- Size: High Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price.size = 4

-- Display: High Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: High Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.high_price, range, value, display)

  return offset + length, value
end

-- Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.id = {}

-- Size: Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.id.size = 4

-- Display: Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.imbalance_side = {}

-- Size: Imbalance Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.imbalance_side.display = function(value)
  if value == "B" then
    return "Imbalance Side: Buy Side (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell Side (S)"
  end
  if value == " " then
    return "Imbalance Side: Space Or 0 X 20 Indicates No Imbalance (<whitespace>)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Translate: Indicative Match Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Indicative Match Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.last_seq_num = {}

-- Size: Last Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_ratio_qty.size = 2

-- Display: Leg Ratio Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Security Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_security_type = {}

-- Size: Leg Security Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_security_type.size = 1

-- Display: Leg Security Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_security_type.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_side = {}

-- Size: Leg Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_side.size = 1

-- Display: Leg Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: Buy (B)"
  end
  if value == "S" then
    return "Leg Side: Sell (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.lot_size = {}

-- Size: Lot Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.lot_size.size = 2

-- Display: Lot Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price = {}

-- Size: Low Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price.size = 4

-- Display: Low Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Low Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_amexoptions_deepfeed_pillar_v1_2_l.lower_collar = {}

-- Size: Lower Collar
nyse_amexoptions_deepfeed_pillar_v1_2_l.lower_collar.size = 4

-- Display: Lower Collar
nyse_amexoptions_deepfeed_pillar_v1_2_l.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_amexoptions_deepfeed_pillar_v1_2_l.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id = {}

-- Size: Market Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.size = 2

-- Display: Market Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Market State
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state = {}

-- Size: Market State
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state.size = 1

-- Display: Market State
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.market_state, range, value, display)

  return offset + length, value
end

-- Maturity Date
nyse_amexoptions_deepfeed_pillar_v1_2_l.maturity_date = {}

-- Size: Maturity Date
nyse_amexoptions_deepfeed_pillar_v1_2_l.maturity_date.size = 6

-- Display: Maturity Date
nyse_amexoptions_deepfeed_pillar_v1_2_l.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_amexoptions_deepfeed_pillar_v1_2_l.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.maturity_date.size
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

  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_size = {}

-- Size: Message Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_size.size = 2

-- Display: Message Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_type = {}

-- Size: Message Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_type.size = 2

-- Display: Message Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_type.display = function(value)
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
  if value == 300 then
    return "Message Type: Options Add Order Message (300)"
  end
  if value == 301 then
    return "Message Type: Options Modify Order Message (301)"
  end
  if value == 302 then
    return "Message Type: Options Delete Order Message (302)"
  end
  if value == 303 then
    return "Message Type: Options Order Execution Message (303)"
  end
  if value == 304 then
    return "Message Type: Options Replace Order Message (304)"
  end
  if value == 305 then
    return "Message Type: Options Imbalance Message (305)"
  end
  if value == 306 then
    return "Message Type: Options Add Order Refresh Message (306)"
  end
  if value == 307 then
    return "Message Type: Options Series Rfq Message (307)"
  end
  if value == 310 then
    return "Message Type: Options Non Displayed Trade Message (310)"
  end
  if value == 311 then
    return "Message Type: Options Cross Trade Message (311)"
  end
  if value == 312 then
    return "Message Type: Options Trade Cancel Message (312)"
  end
  if value == 323 then
    return "Message Type: Options Outright Series Summary Message (323)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_amexoptions_deepfeed_pillar_v1_2_l.nanoseconds = {}

-- Size: Nanoseconds
nyse_amexoptions_deepfeed_pillar_v1_2_l.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_amexoptions_deepfeed_pillar_v1_2_l.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_amexoptions_deepfeed_pillar_v1_2_l.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Order Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.new_order_id = {}

-- Size: New Order Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.new_order_id.size = 8

-- Display: New Order Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.new_order_id.display = function(value)
  return "New Order Id: "..value
end

-- Dissect: New Order Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.new_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.new_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.new_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.new_order_id, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- No Of Legs
nyse_amexoptions_deepfeed_pillar_v1_2_l.no_of_legs = {}

-- Size: No Of Legs
nyse_amexoptions_deepfeed_pillar_v1_2_l.no_of_legs.size = 2

-- Display: No Of Legs
nyse_amexoptions_deepfeed_pillar_v1_2_l.no_of_legs.display = function(value)
  return "No Of Legs: "..value
end

-- Dissect: No Of Legs
nyse_amexoptions_deepfeed_pillar_v1_2_l.no_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.no_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.no_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.no_of_legs, range, value, display)

  return offset + length, value
end

-- Non Displayed Trade Trade Cond 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.non_displayed_trade_trade_cond_1 = {}

-- Size: Non Displayed Trade Trade Cond 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.non_displayed_trade_trade_cond_1.size = 1

-- Display: Non Displayed Trade Trade Cond 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.non_displayed_trade_trade_cond_1.display = function(value)
  if value == "a" then
    return "Non Displayed Trade Trade Cond 1: Outright Series Orderquote Trading Electronically With A Outright Series Cube Order Or Outright Series Cube Order Trading Electronically With Outright Series Cube Contra Order (a)"
  end
  if value == "c" then
    return "Non Displayed Trade Trade Cond 1: Trading Of An Outright Series Qcc Order Or Customer To Customer Cross Order (c)"
  end
  if value == "e" then
    return "Non Displayed Trade Trade Cond 1: Outright Series Floor Trade (e)"
  end
  if value == "I" then
    return "Non Displayed Trade Trade Cond 1: All Outright Series Electronic Trades Excluding Away Market Executions That Were Not Part Of Certain Transactions (I)"
  end
  if value == "S" then
    return "Non Displayed Trade Trade Cond 1: All Outright Series Trades Generated As Part Of An Intermarket Sweep Order (S)"
  end
  if value == "D" then
    return "Non Displayed Trade Trade Cond 1: Transaction Is Being Reported Late But Is In The Correct Sequence (D)"
  end
  if value == "f" then
    return "Non Displayed Trade Trade Cond 1: Complex Order Trades That Were Not Part Of Certain Transactions (f)"
  end
  if value == "g" then
    return "Non Displayed Trade Trade Cond 1: Complex Order Trading Electronically With A Complex Cube Order Or Complex Cube Order Trading Electronically With Complex Cube Contra Order (g)"
  end
  if value == "h" then
    return "Non Displayed Trade Trade Cond 1: Trading Of A Complex Qcc Order Or Customer To Customer Cross Order (h)"
  end
  if value == "i" then
    return "Non Displayed Trade Trade Cond 1: Complex Order To Complex Order Floor Trade (i)"
  end
  if value == "j" then
    return "Non Displayed Trade Trade Cond 1: Complex Order Trading Electronically With The Outright Series Ordersquotes (j)"
  end
  if value == "m" then
    return "Non Displayed Trade Trade Cond 1: Complex Order To Outright Series Order Floor Trade (m)"
  end
  if value == "p" then
    return "Non Displayed Trade Trade Cond 1: Complex Order With Stock To Complex Order With Stock Floor Trade (p)"
  end
  if value == "s" then
    return "Non Displayed Trade Trade Cond 1: Complex Order With Stock To Outright Series Order Floor Trade (s)"
  end
  if value == "H" then
    return "Non Displayed Trade Trade Cond 1: Late Report Of The Opening Trade In The Correct Sequence (H)"
  end
  if value == "F" then
    return "Non Displayed Trade Trade Cond 1: Late Report Of The Opening Trade Out Of Sequence (F)"
  end
  if value == "B" then
    return "Non Displayed Trade Trade Cond 1: Transaction Is Being Reported Late And Is Out Of Sequence (B)"
  end

  return "Non Displayed Trade Trade Cond 1: Unknown("..value..")"
end

-- Dissect: Non Displayed Trade Trade Cond 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.non_displayed_trade_trade_cond_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.non_displayed_trade_trade_cond_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.non_displayed_trade_trade_cond_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.non_displayed_trade_trade_cond_1, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_amexoptions_deepfeed_pillar_v1_2_l.number_msgs = {}

-- Size: Number Msgs
nyse_amexoptions_deepfeed_pillar_v1_2_l.number_msgs.size = 1

-- Display: Number Msgs
nyse_amexoptions_deepfeed_pillar_v1_2_l.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_amexoptions_deepfeed_pillar_v1_2_l.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Open
nyse_amexoptions_deepfeed_pillar_v1_2_l.open = {}

-- Size: Open
nyse_amexoptions_deepfeed_pillar_v1_2_l.open.size = 4

-- Display: Open
nyse_amexoptions_deepfeed_pillar_v1_2_l.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_amexoptions_deepfeed_pillar_v1_2_l.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.open.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.open, range, value, display)

  return offset + length, value
end

-- Option Symbol Root
nyse_amexoptions_deepfeed_pillar_v1_2_l.option_symbol_root = {}

-- Size: Option Symbol Root
nyse_amexoptions_deepfeed_pillar_v1_2_l.option_symbol_root.size = 6

-- Display: Option Symbol Root
nyse_amexoptions_deepfeed_pillar_v1_2_l.option_symbol_root.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Option Symbol Root: No Value"
  end

  return "Option Symbol Root: "..value
end

-- Dissect: Option Symbol Root
nyse_amexoptions_deepfeed_pillar_v1_2_l.option_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.option_symbol_root.size
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

  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.option_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.option_symbol_root, range, value, display)

  return offset + length, value
end

-- Options Status Halt Condition
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_halt_condition = {}

-- Size: Options Status Halt Condition
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_halt_condition.size = 1

-- Display: Options Status Halt Condition
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_halt_condition.display = function(value)
  if value == "~" then
    return "Options Status Halt Condition: Series Not Delayedhalted (~)"
  end
  if value == "h" then
    return "Options Status Halt Condition: Option Series Is Halted (h)"
  end

  return "Options Status Halt Condition: Unknown("..value..")"
end

-- Dissect: Options Status Halt Condition
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_status_halt_condition, range, value, display)

  return offset + length, value
end

-- Order Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id = {}

-- Size: Order Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.size = 8

-- Display: Order Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.order_id, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.paired_qty = {}

-- Size: Paired Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.paired_qty.size = 4

-- Display: Paired Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Participant
nyse_amexoptions_deepfeed_pillar_v1_2_l.participant = {}

-- Size: Participant
nyse_amexoptions_deepfeed_pillar_v1_2_l.participant.size = 4

-- Display: Participant
nyse_amexoptions_deepfeed_pillar_v1_2_l.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nyse_amexoptions_deepfeed_pillar_v1_2_l.participant.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.participant.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.participant, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.pkt_size = {}

-- Size: Pkt Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.pkt_size.size = 2

-- Display: Pkt Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_amexoptions_deepfeed_pillar_v1_2_l.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Position Change
nyse_amexoptions_deepfeed_pillar_v1_2_l.position_change = {}

-- Size: Position Change
nyse_amexoptions_deepfeed_pillar_v1_2_l.position_change.size = 1

-- Display: Position Change
nyse_amexoptions_deepfeed_pillar_v1_2_l.position_change.display = function(value)
  return "Position Change: "..value
end

-- Dissect: Position Change
nyse_amexoptions_deepfeed_pillar_v1_2_l.position_change.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.position_change.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.position_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.position_change, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price = {}

-- Size: Prev Close Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Translate: Prev Close Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Prev Close Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.price = {}

-- Size: Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.price.size = 4

-- Display: Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1 = {}

-- Size: Price 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1.size = 4

-- Display: Price 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1.display = function(value)
  return "Price 1: "..value
end

-- Translate: Price 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2 = {}

-- Size: Price 2
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2.size = 4

-- Display: Price 2
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 2
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_resolution = {}

-- Size: Price Resolution
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_resolution.size = 1

-- Display: Price Resolution
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_resolution.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code = {}

-- Size: Price Scale Code
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Price Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_type = {}

-- Size: Price Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_type.size = 1

-- Display: Price Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_type.display = function(value)
  if value == 0 then
    return "Price Type: Strike Price Is Amount (0)"
  end
  if value == 1 then
    return "Price Type: Strike Price Is Amount (1)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.price_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.price_type, range, value, display)

  return offset + length, value
end

-- Printable Flag
nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag = {}

-- Size: Printable Flag
nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag.size = 1

-- Display: Printable Flag
nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag.display = function(value)
  if value == 0 then
    return "Printable Flag: Trade Not Included In Total Volume (0)"
  end
  if value == 1 then
    return "Printable Flag: Trade Included In Total Volume (1)"
  end

  return "Printable Flag: Unknown("..value..")"
end

-- Dissect: Printable Flag
nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.printable_flag, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id = {}

-- Size: Product Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.size = 1

-- Display: Product Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.product_id, range, value, display)

  return offset + length, value
end

-- Put Or Call
nyse_amexoptions_deepfeed_pillar_v1_2_l.put_or_call = {}

-- Size: Put Or Call
nyse_amexoptions_deepfeed_pillar_v1_2_l.put_or_call.size = 1

-- Display: Put Or Call
nyse_amexoptions_deepfeed_pillar_v1_2_l.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_amexoptions_deepfeed_pillar_v1_2_l.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.request_seq_num = {}

-- Size: Request Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1 = {}

-- Size: Reserved 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.size = 1

-- Display: Reserved 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2 = {}

-- Size: Reserved 2
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.size = 2

-- Display: Reserved 2
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3 = {}

-- Size: Reserved 3
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3.size = 3

-- Display: Reserved 3
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4 = {}

-- Size: Reserved 4
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.size = 4

-- Display: Reserved 4
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmit_method = {}

-- Size: Retransmit Method
nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmit_method.display = function(value)
  if value == 0 then
    return "Retransmit Method: Deliver Via Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Rfq Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_side = {}

-- Size: Rfq Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_side.size = 1

-- Display: Rfq Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_side.display = function(value)
  if value == "B" then
    return "Rfq Side: Buy (B)"
  end
  if value == "S" then
    return "Rfq Side: Sell (S)"
  end

  return "Rfq Side: Unknown("..value..")"
end

-- Dissect: Rfq Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.rfq_side, range, value, display)

  return offset + length, value
end

-- Rfq Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_status = {}

-- Size: Rfq Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_status.size = 1

-- Display: Rfq Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_status.display = function(value)
  if value == "O" then
    return "Rfq Status: Start Of Rfq Auction (O)"
  end
  if value == "Q" then
    return "Rfq Status: End Of Rfq Auction (Q)"
  end

  return "Rfq Status: Unknown("..value..")"
end

-- Dissect: Rfq Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.rfq_status, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_amexoptions_deepfeed_pillar_v1_2_l.round_lot = {}

-- Size: Round Lot
nyse_amexoptions_deepfeed_pillar_v1_2_l.round_lot.size = 1

-- Display: Round Lot
nyse_amexoptions_deepfeed_pillar_v1_2_l.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_amexoptions_deepfeed_pillar_v1_2_l.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_amexoptions_deepfeed_pillar_v1_2_l.seconds = {}

-- Size: Seconds
nyse_amexoptions_deepfeed_pillar_v1_2_l.seconds.size = 4

-- Display: Seconds
nyse_amexoptions_deepfeed_pillar_v1_2_l.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_amexoptions_deepfeed_pillar_v1_2_l.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status = {}

-- Size: Security Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status.size = 1

-- Display: Security Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_type = {}

-- Size: Security Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_type.size = 1

-- Display: Security Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_type.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.seq_num = {}

-- Size: Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.seq_num.size = 4

-- Display: Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Series Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index = {}

-- Size: Series Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size = 4

-- Display: Series Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.display = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.series_index, range, value, display)

  return offset + length, value
end

-- Series Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num = {}

-- Size: Series Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size = 4

-- Display: Series Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.display = function(value)
  return "Series Seq Num: "..value
end

-- Dissect: Series Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.series_seq_num, range, value, display)

  return offset + length, value
end

-- Series Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_status = {}

-- Size: Series Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_status.size = 1

-- Display: Series Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_status.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.series_status, range, value, display)

  return offset + length, value
end

-- Series Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_type = {}

-- Size: Series Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_type.size = 1

-- Display: Series Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_type.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.series_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.series_type, range, value, display)

  return offset + length, value
end

-- Session State
nyse_amexoptions_deepfeed_pillar_v1_2_l.session_state = {}

-- Size: Session State
nyse_amexoptions_deepfeed_pillar_v1_2_l.session_state.size = 1

-- Display: Session State
nyse_amexoptions_deepfeed_pillar_v1_2_l.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_amexoptions_deepfeed_pillar_v1_2_l.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.session_state, range, value, display)

  return offset + length, value
end

-- Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.side = {}

-- Size: Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.side.size = 1

-- Display: Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_amexoptions_deepfeed_pillar_v1_2_l.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.side, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id = {}

-- Size: Source Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.size = 10

-- Display: Source Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.size
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

  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time = {}

-- Size: Source Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size = 4

-- Display: Source Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns = {}

-- Size: Source Time Ns
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_state = {}

-- Size: Ssr State
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_state.size = 1

-- Display: Ssr State
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_exchange_id.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.status = {}

-- Size: Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.status.size = 1

-- Display: Status
nyse_amexoptions_deepfeed_pillar_v1_2_l.status.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.strike_price = {}

-- Size: Strike Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.strike_price.size = 10

-- Display: Strike Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.strike_price.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.strike_price.size
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

  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol = {}

-- Size: Symbol
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol.size = 11

-- Display: Symbol
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol.size
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

  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index = {}

-- Size: Symbol Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.size = 4

-- Display: Symbol Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id = {}

-- Size: System Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.size = 1

-- Display: System Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.time = {}

-- Size: Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.time.size = 4

-- Display: Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.time, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Quantity
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_quantity = {}

-- Size: Total Quantity
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_quantity.size = 4

-- Display: Total Quantity
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_quantity.display = function(value)
  return "Total Quantity: "..value
end

-- Dissect: Total Quantity
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.total_quantity, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Total Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_volume = {}

-- Size: Total Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_volume.size = 4

-- Display: Total Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Cond 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_cond_1 = {}

-- Size: Trade Cond 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_cond_1.size = 1

-- Display: Trade Cond 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_cond_1.display = function(value)
  if value == "a" then
    return "Trade Cond 1: Outright Series Orderquote Trading Electronically With A Outright Series Cube Order Or Outright Series Cube Order Trading Electronically With Outright Series Cube Contra Order (a)"
  end
  if value == "c" then
    return "Trade Cond 1: Trading Of An Outright Series Qcc Order Or Customer To Customer Cross Order (c)"
  end
  if value == "e" then
    return "Trade Cond 1: Outright Series Floor Trade (e)"
  end
  if value == "I" then
    return "Trade Cond 1: All Outright Series Electronic Trades Excluding Away Market Executions That Were Not Part Of Certain Transactions (I)"
  end
  if value == "S" then
    return "Trade Cond 1: All Outright Series Trades Generated As Part Of An Intermarket Sweep Order (S)"
  end
  if value == "D" then
    return "Trade Cond 1: Transaction Is Being Reported Late But Is In The Correct Sequence (D)"
  end
  if value == "f" then
    return "Trade Cond 1: Complex Order Trades That Were Not Part Of Certain Transactions (f)"
  end
  if value == "g" then
    return "Trade Cond 1: Complex Order Trading Electronically With A Complex Cube Order Or Complex Cube Order Trading Electronically With Complex Cube Contra Order (g)"
  end
  if value == "h" then
    return "Trade Cond 1: Trading Of A Complex Qcc Order Or Customer To Customer Cross Order (h)"
  end
  if value == "i" then
    return "Trade Cond 1: Complex Order To Complex Order Floor Trade (i)"
  end
  if value == "j" then
    return "Trade Cond 1: Complex Order Trading Electronically With The Outright Series Ordersquotes (j)"
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

  return "Trade Cond 1: Unknown("..value..")"
end

-- Dissect: Trade Cond 1
nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_cond_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_cond_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_cond_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.trade_cond_1, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id = {}

-- Size: Trade Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.size = 4

-- Display: Trade Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.type = {}

-- Size: Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.type.size = 1

-- Display: Type
nyse_amexoptions_deepfeed_pillar_v1_2_l.type.display = function(value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.type, range, value, display)

  return offset + length, value
end

-- Underlying Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_index = {}

-- Size: Underlying Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_index.size = 4

-- Display: Underlying Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_index.display = function(value)
  return "Underlying Index: "..value
end

-- Dissect: Underlying Index
nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.underlying_index, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_symbol = {}

-- Size: Underlying Symbol
nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_symbol.size = 11

-- Display: Underlying Symbol
nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_symbol.size
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

  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_amexoptions_deepfeed_pillar_v1_2_l.upper_collar = {}

-- Size: Upper Collar
nyse_amexoptions_deepfeed_pillar_v1_2_l.upper_collar.size = 4

-- Display: Upper Collar
nyse_amexoptions_deepfeed_pillar_v1_2_l.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_amexoptions_deepfeed_pillar_v1_2_l.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.volume = {}

-- Size: Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.size = 4

-- Display: Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.volume, range, value, display)

  return offset + length, value
end

-- Working Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price = {}

-- Size: Working Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price.size = 4

-- Display: Working Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Working Price
nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price.translate(raw)
  local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse AmexOptions DeepFeed Pillar 1.2.l
-----------------------------------------------------------------------

-- Options Outright Series Summary Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_outright_series_summary_message = {}

-- Size: Options Outright Series Summary Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_outright_series_summary_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.open.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.close.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.total_volume.size

-- Display: Options Outright Series Summary Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_outright_series_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Outright Series Summary Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_outright_series_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- High Price: Signed Binary
  index, high_price = nyse_amexoptions_deepfeed_pillar_v1_2_l.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Signed Binary
  index, low_price = nyse_amexoptions_deepfeed_pillar_v1_2_l.low_price.dissect(buffer, index, packet, parent)

  -- Open: Signed Binary
  index, open = nyse_amexoptions_deepfeed_pillar_v1_2_l.open.dissect(buffer, index, packet, parent)

  -- Close: Signed Binary
  index, close = nyse_amexoptions_deepfeed_pillar_v1_2_l.close.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Outright Series Summary Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_outright_series_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_outright_series_summary_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_outright_series_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_outright_series_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_outright_series_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Cancel Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_trade_cancel_message = {}

-- Size: Options Trade Cancel Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_trade_cancel_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.size

-- Display: Options Trade Cancel Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Cancel Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Cancel Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_trade_cancel_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Cross Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_cross_trade_message = {}

-- Size: Options Cross Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_cross_trade_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_type.size

-- Display: Options Cross Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Cross Id: Binary
  index, cross_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.dissect(buffer, index, packet, parent)

  -- Cross Type: ASCII
  index, cross_type = nyse_amexoptions_deepfeed_pillar_v1_2_l.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_cross_trade_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Non Displayed Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_non_displayed_trade_message = {}

-- Size: Options Non Displayed Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_non_displayed_trade_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.non_displayed_trade_trade_cond_1.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price_type.size

-- Display: Options Non Displayed Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_non_displayed_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Non Displayed Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_non_displayed_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.dissect(buffer, index, packet, parent)

  -- Printable Flag: Binary
  index, printable_flag = nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag.dissect(buffer, index, packet, parent)

  -- Non Displayed Trade Trade Cond 1: ASCII
  index, non_displayed_trade_trade_cond_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.non_displayed_trade_trade_cond_1.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary
  index, reserved_3 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3.dissect(buffer, index, packet, parent)

  -- Price Type: Binary
  index, price_type = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Non Displayed Trade Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_non_displayed_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_non_displayed_trade_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_non_displayed_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_non_displayed_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_non_displayed_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Series Rfq Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_series_rfq_message = {}

-- Size: Options Series Rfq Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_series_rfq_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_side.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.type.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.capacity.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.total_quantity.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.participant.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_status.size

-- Display: Options Series Rfq Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_series_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Series Rfq Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_series_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Rfq Side: ASCII
  index, rfq_side = nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_side.dissect(buffer, index, packet, parent)

  -- Type: ASCII
  index, type = nyse_amexoptions_deepfeed_pillar_v1_2_l.type.dissect(buffer, index, packet, parent)

  -- Capacity: ASCII
  index, capacity = nyse_amexoptions_deepfeed_pillar_v1_2_l.capacity.dissect(buffer, index, packet, parent)

  -- Total Quantity: Binary
  index, total_quantity = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_quantity.dissect(buffer, index, packet, parent)

  -- Working Price: Signed Binary
  index, working_price = nyse_amexoptions_deepfeed_pillar_v1_2_l.working_price.dissect(buffer, index, packet, parent)

  -- Participant: Binary
  index, participant = nyse_amexoptions_deepfeed_pillar_v1_2_l.participant.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_id.dissect(buffer, index, packet, parent)

  -- Rfq Status: ASCII
  index, rfq_status = nyse_amexoptions_deepfeed_pillar_v1_2_l.rfq_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Series Rfq Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_series_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_series_rfq_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_series_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_series_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_series_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Add Order Refresh Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_refresh_message = {}

-- Size: Options Add Order Refresh Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_refresh_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.side.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.size

-- Display: Options Add Order Refresh Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Add Order Refresh Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_amexoptions_deepfeed_pillar_v1_2_l.side.dissect(buffer, index, packet, parent)

  -- Firm Id: ASCII
  index, firm_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.dissect(buffer, index, packet, parent)

  -- Cust Indicator: ASCII
  index, cust_indicator = nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Add Order Refresh Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_add_order_refresh_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Imbalance Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_imbalance_message = {}

-- Size: Options Imbalance Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_imbalance_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.paired_qty.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.total_imbalance_qty.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.market_imbalance_qty.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_type.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.imbalance_side.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.upper_collar.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.lower_collar.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_status.size

-- Display: Options Imbalance Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Imbalance Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.dissect(buffer, index, packet, parent)

  -- Paired Qty: Binary
  index, paired_qty = nyse_amexoptions_deepfeed_pillar_v1_2_l.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: Binary
  index, total_imbalance_qty = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: Binary
  index, market_imbalance_qty = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.dissect(buffer, index, packet, parent)

  -- Auction Type: ASCII
  index, auction_type = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: ASCII
  index, imbalance_side = nyse_amexoptions_deepfeed_pillar_v1_2_l.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: Signed Binary
  index, continuous_book_clearing_price = nyse_amexoptions_deepfeed_pillar_v1_2_l.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: Signed Binary
  index, auction_interest_clearing_price = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_interest_clearing_price.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: Signed Binary
  index, indicative_match_price = nyse_amexoptions_deepfeed_pillar_v1_2_l.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: Signed Binary
  index, upper_collar = nyse_amexoptions_deepfeed_pillar_v1_2_l.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: Signed Binary
  index, lower_collar = nyse_amexoptions_deepfeed_pillar_v1_2_l.lower_collar.dissect(buffer, index, packet, parent)

  -- Auction Status: Binary
  index, auction_status = nyse_amexoptions_deepfeed_pillar_v1_2_l.auction_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Imbalance Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_imbalance_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Replace Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_replace_order_message = {}

-- Size: Options Replace Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_replace_order_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.new_order_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.side.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.size

-- Display: Options Replace Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Replace Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.dissect(buffer, index, packet, parent)

  -- New Order Id: Binary
  index, new_order_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.new_order_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_amexoptions_deepfeed_pillar_v1_2_l.side.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.dissect(buffer, index, packet, parent)

  -- Cust Indicator: ASCII
  index, cust_indicator = nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Replace Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_replace_order_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Order Execution Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_order_execution_message = {}

-- Size: Options Order Execution Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_order_execution_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_cond_1.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3.size

-- Display: Options Order Execution Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Order Execution Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.dissect(buffer, index, packet, parent)

  -- Printable Flag: Binary
  index, printable_flag = nyse_amexoptions_deepfeed_pillar_v1_2_l.printable_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary
  index, reserved_3 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Order Execution Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_order_execution_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Delete Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_delete_order_message = {}

-- Size: Options Delete Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_delete_order_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.size

-- Display: Options Delete Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Delete Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Delete Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_delete_order_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Modify Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_modify_order_message = {}

-- Size: Options Modify Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_modify_order_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.position_change.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.side.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.size

-- Display: Options Modify Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Modify Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.dissect(buffer, index, packet, parent)

  -- Position Change: Binary
  index, position_change = nyse_amexoptions_deepfeed_pillar_v1_2_l.position_change.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_amexoptions_deepfeed_pillar_v1_2_l.side.dissect(buffer, index, packet, parent)

  -- Cust Indicator: ASCII
  index, cust_indicator = nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Modify Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_modify_order_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Add Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_message = {}

-- Size: Options Add Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.side.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.size

-- Display: Options Add Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Add Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.order_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_amexoptions_deepfeed_pillar_v1_2_l.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_amexoptions_deepfeed_pillar_v1_2_l.side.dissect(buffer, index, packet, parent)

  -- Firm Id: ASCII
  index, firm_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.firm_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.dissect(buffer, index, packet, parent)

  -- Cust Indicator: ASCII
  index, cust_indicator = nyse_amexoptions_deepfeed_pillar_v1_2_l.cust_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Add Order Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_add_order_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.heartbeat_response_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.size

-- Display: Heartbeat Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.request_response_message = {}

-- Size: Request Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.request_response_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.request_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.status.size

-- Display: Request Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_amexoptions_deepfeed_pillar_v1_2_l.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.request_response_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_unavailable_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.size

-- Display: Message Unavailable Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_request_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_request_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.size

-- Display: Refresh Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_header_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.current_refresh_pkt.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.total_refresh_pkts.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.last_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_amexoptions_deepfeed_pillar_v1_2_l.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_amexoptions_deepfeed_pillar_v1_2_l.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmission_request_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.size

-- Display: Retransmission Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Series Index Mapping Leg
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_leg = {}

-- Size: Complex Series Index Mapping Leg
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_leg.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_ratio_qty.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_side.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_security_type.size

-- Display: Complex Series Index Mapping Leg
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Index Mapping Leg
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_leg.fields = function(buffer, offset, packet, parent, complex_series_index_mapping_leg_index)
  local index = offset

  -- Implicit Complex Series Index Mapping Leg Index
  if complex_series_index_mapping_leg_index ~= nil and show.complex_series_index_mapping_leg_index then
    local iteration = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.complex_series_index_mapping_leg_index, complex_series_index_mapping_leg_index)
    iteration:set_generated()
  end

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: Binary
  index, leg_ratio_qty = nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: ASCII
  index, leg_side = nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Security Type: ASCII
  index, leg_security_type = nyse_amexoptions_deepfeed_pillar_v1_2_l.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Series Index Mapping Leg
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_leg.dissect = function(buffer, offset, packet, parent, complex_series_index_mapping_leg_index)
  if show.complex_series_index_mapping_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.complex_series_index_mapping_leg, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_leg.fields(buffer, offset, packet, parent, complex_series_index_mapping_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_leg.fields(buffer, offset, packet, parent, complex_series_index_mapping_leg_index)
  end
end

-- Complex Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_message = {}

-- Calculate size of: Complex Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size

  index = index + nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.size

  index = index + nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.size

  index = index + nyse_amexoptions_deepfeed_pillar_v1_2_l.no_of_legs.size

  -- Calculate field size from count
  local complex_series_index_mapping_leg_count = buffer(offset + index - 2, 2):le_uint()
  index = index + complex_series_index_mapping_leg_count * 8

  return index
end

-- Display: Complex Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.dissect(buffer, index, packet, parent)

  -- No Of Legs: Binary
  index, no_of_legs = nyse_amexoptions_deepfeed_pillar_v1_2_l.no_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Series Index Mapping Leg
  for complex_series_index_mapping_leg_index = 1, no_of_legs do
    index, complex_series_index_mapping_leg = nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_leg.dissect(buffer, index, packet, parent, complex_series_index_mapping_leg_index)
  end

  return index
end

-- Dissect: Complex Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.complex_series_index_mapping_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_message = {}

-- Size: Options Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_status.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_halt_condition.size

-- Display: Options Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_seq_num.dissect(buffer, index, packet, parent)

  -- Series Status: ASCII
  index, series_status = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_status.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state.dissect(buffer, index, packet, parent)

  -- Options Status Halt Condition: ASCII
  index, options_status_halt_condition = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_halt_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.options_status_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Outright Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.outright_series_index_mapping_message = {}

-- Size: Outright Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.outright_series_index_mapping_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.series_type.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.option_symbol_root.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_symbol.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.contract_multiplier.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.maturity_date.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.put_or_call.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.strike_price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.closing_only_indicator.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.size

-- Display: Outright Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.outright_series_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.outright_series_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: Binary
  index, series_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_index.dissect(buffer, index, packet, parent)

  -- Series Type: Binary
  index, series_type = nyse_amexoptions_deepfeed_pillar_v1_2_l.series_type.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.dissect(buffer, index, packet, parent)

  -- Option Symbol Root: ASCII
  index, option_symbol_root = nyse_amexoptions_deepfeed_pillar_v1_2_l.option_symbol_root.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: ASCII
  index, underlying_symbol = nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Index: Binary
  index, underlying_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.underlying_index.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: Binary
  index, contract_multiplier = nyse_amexoptions_deepfeed_pillar_v1_2_l.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Maturity Date: ASCII
  index, maturity_date = nyse_amexoptions_deepfeed_pillar_v1_2_l.maturity_date.dissect(buffer, index, packet, parent)

  -- Put Or Call: Binary
  index, put_or_call = nyse_amexoptions_deepfeed_pillar_v1_2_l.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: ASCII
  index, strike_price = nyse_amexoptions_deepfeed_pillar_v1_2_l.strike_price.dissect(buffer, index, packet, parent)

  -- Closing Only Indicator: ASCII
  index, closing_only_indicator = nyse_amexoptions_deepfeed_pillar_v1_2_l.closing_only_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.outright_series_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.outright_series_index_mapping_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.outright_series_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status_message = {}

-- Size: Security Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.halt_condition.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_exchange_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_volume.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.time.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_state.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.session_state.size

-- Display: Security Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_amexoptions_deepfeed_pillar_v1_2_l.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_amexoptions_deepfeed_pillar_v1_2_l.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_amexoptions_deepfeed_pillar_v1_2_l.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_amexoptions_deepfeed_pillar_v1_2_l.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.security_status_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_clear_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.exchange_code.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.security_type.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.lot_size.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_volume.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.price_resolution.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.round_lot.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_amexoptions_deepfeed_pillar_v1_2_l.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_amexoptions_deepfeed_pillar_v1_2_l.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_amexoptions_deepfeed_pillar_v1_2_l.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_amexoptions_deepfeed_pillar_v1_2_l.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_amexoptions_deepfeed_pillar_v1_2_l.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_amexoptions_deepfeed_pillar_v1_2_l.round_lot.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_amexoptions_deepfeed_pillar_v1_2_l.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_reference_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size

-- Display: Source Time Reference Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_amexoptions_deepfeed_pillar_v1_2_l.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.sequence_number_reset_message.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.size

-- Display: Sequence Number Reset Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_amexoptions_deepfeed_pillar_v1_2_l.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_amexoptions_deepfeed_pillar_v1_2_l.payload = {}

-- Dissect: Payload
nyse_amexoptions_deepfeed_pillar_v1_2_l.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Index Mapping Message
  if message_type == 50 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.outright_series_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Status Message
  if message_type == 51 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Series Index Mapping Message
  if message_type == 60 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.complex_series_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Add Order Message
  if message_type == 300 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Modify Order Message
  if message_type == 301 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Delete Order Message
  if message_type == 302 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Order Execution Message
  if message_type == 303 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Replace Order Message
  if message_type == 304 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Imbalance Message
  if message_type == 305 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Add Order Refresh Message
  if message_type == 306 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_add_order_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Series Rfq Message
  if message_type == 307 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_series_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Non Displayed Trade Message
  if message_type == 310 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_non_displayed_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if message_type == 311 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Cancel Message
  if message_type == 312 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Outright Series Summary Message
  if message_type == 323 then
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.options_outright_series_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_header = {}

-- Size: Message Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_header.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.message_size.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.message_type.size

-- Display: Message Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 27 values
  index, message_type = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_header, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.message = {}

-- Display: Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_amexoptions_deepfeed_pillar_v1_2_l.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 27 branches
  index = nyse_amexoptions_deepfeed_pillar_v1_2_l.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_amexoptions_deepfeed_pillar_v1_2_l.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.message, buffer(offset, 0))
    local current = nyse_amexoptions_deepfeed_pillar_v1_2_l.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_amexoptions_deepfeed_pillar_v1_2_l.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time = {}

-- Size: Send Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.seconds.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.nanoseconds.size

-- Display: Send Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time.display = function(packet, parent, value)
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
nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_amexoptions_deepfeed_pillar_v1_2_l.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_amexoptions_deepfeed_pillar_v1_2_l.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.send_time, buffer(offset, 0))
    local index, value = nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.packet_header = {}

-- Size: Packet Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.packet_header.size =
  nyse_amexoptions_deepfeed_pillar_v1_2_l.pkt_size.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.delivery_flag.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.number_msgs.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.seq_num.size + 
  nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time.size

-- Display: Packet Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_amexoptions_deepfeed_pillar_v1_2_l.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_amexoptions_deepfeed_pillar_v1_2_l.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_amexoptions_deepfeed_pillar_v1_2_l.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_amexoptions_deepfeed_pillar_v1_2_l.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_amexoptions_deepfeed_pillar_v1_2_l.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_amexoptions_deepfeed_pillar_v1_2_l.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.fields.packet_header, buffer(offset, 0))
    local index = nyse_amexoptions_deepfeed_pillar_v1_2_l.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexoptions_deepfeed_pillar_v1_2_l.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexoptions_deepfeed_pillar_v1_2_l.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_amexoptions_deepfeed_pillar_v1_2_l.packet = {}

-- Dissect Packet
nyse_amexoptions_deepfeed_pillar_v1_2_l.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_amexoptions_deepfeed_pillar_v1_2_l.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_amexoptions_deepfeed_pillar_v1_2_l.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.init()
end

-- Dissector for Nyse AmexOptions DeepFeed Pillar 1.2.l
function omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_amexoptions_deepfeed_pillar_v1_2_l, buffer(), omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.description, "("..buffer:len().." Bytes)")
  return nyse_amexoptions_deepfeed_pillar_v1_2_l.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_amexoptions_deepfeed_pillar_v1_2_l)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Udp packet
nyse_amexoptions_deepfeed_pillar_v1_2_l.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse AmexOptions DeepFeed Pillar 1.2.l (Udp)
local function omi_nyse_amexoptions_deepfeed_pillar_v1_2_l_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_amexoptions_deepfeed_pillar_v1_2_l.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_amexoptions_deepfeed_pillar_v1_2_l
  omi_nyse_amexoptions_deepfeed_pillar_v1_2_l.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse AmexOptions DeepFeed Pillar 1.2.l
omi_nyse_amexoptions_deepfeed_pillar_v1_2_l:register_heuristic("udp", omi_nyse_amexoptions_deepfeed_pillar_v1_2_l_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.2.l
--   Date: Tuesday, November 18, 2025
--   Specification: PILLAR_DEEP_Client_Specification.pdf
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
