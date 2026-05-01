-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseEquities IntegratedFeed Pillar 2.5.a Protocol
local omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a = Proto("Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.Lua", "Nyse NyseEquities IntegratedFeed Pillar 2.5.a")

-- Protocol table
local nyse_nyseequities_integratedfeed_pillar_v2_5_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseEquities IntegratedFeed Pillar 2.5.a Fields
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctioninterestclearingprice", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.auction_status = ProtoField.new("Auction Status", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctionstatus", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.auction_time = ProtoField.new("Auction Time", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctiontime", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.auction_type = ProtoField.new("Auction Type", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctiontype", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.beginseqnum", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.channelid", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.close = ProtoField.new("Close", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.close", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.continuousbookclearingprice", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.cross_id = ProtoField.new("Cross Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.crossid", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.cross_type = ProtoField.new("Cross Type", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.crosstype", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.currentrefreshpkt", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.deliveryflag", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.endseqnum", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.exchangecode", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.firm_id = ProtoField.new("Firm Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.firmid", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.freeze_status = ProtoField.new("Freeze Status", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.freezestatus", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.haltcondition", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.high_price = ProtoField.new("High Price", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.highprice", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.id = ProtoField.new("Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.id", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.imbalanceside", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.indicativematchprice", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.lastseqnum", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.lot_size = ProtoField.new("Lot Size", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.lotsize", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.low_price = ProtoField.new("Low Price", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.lowprice", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.lowercollar", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.market_id = ProtoField.new("Market Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.marketid", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.marketimbalanceqty", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.market_state = ProtoField.new("Market State", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.marketstate", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message = ProtoField.new("Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.message", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_header = ProtoField.new("Message Header", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.messageheader", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_size = ProtoField.new("Message Size", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.messagesize", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_type = ProtoField.new("Message Type", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.messagetype", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.mpv = ProtoField.new("Mpv", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.mpv", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.nanoseconds", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.new_order_id = ProtoField.new("New Order Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.neworderid", ftypes.UINT64)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.new_price_parity_splits = ProtoField.new("New Price Parity Splits", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.newpriceparitysplits", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.nextsourceseqnum", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.num_extensions = ProtoField.new("Num Extensions", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.numextensions", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.numbermsgs", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.open = ProtoField.new("Open", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.open", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.order_id = ProtoField.new("Order Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderid", ftypes.UINT64)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.packet = ProtoField.new("Packet", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.packet", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.packetheader", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.pairedqty", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.pktsize", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.position_change = ProtoField.new("Position Change", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.positionchange", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.prevcloseprice", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.prevclosevolume", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.prev_price_parity_splits = ProtoField.new("Prev Price Parity Splits", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.prevpriceparitysplits", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price = ProtoField.new("Price", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price_1 = ProtoField.new("Price 1", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price1", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price_2 = ProtoField.new("Price 2", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price2", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.priceresolution", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.pricescalecode", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.printable_flag = ProtoField.new("Printable Flag", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.printableflag", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.product_id = ProtoField.new("Product Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.productid", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reference_price = ProtoField.new("Reference Price", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.referenceprice", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.requestseqnum", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved1", ftypes.BYTES)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reserved_11 = ProtoField.new("Reserved 11", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved11", ftypes.BYTES)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved2", ftypes.BYTES)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved4", ftypes.BYTES)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.retransmitmethod", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.round_lot = ProtoField.new("Round Lot", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.roundlot", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.rpiindicator", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.seconds = ProtoField.new("Seconds", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.seconds", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.security_status = ProtoField.new("Security Status", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.securitystatus", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.security_type = ProtoField.new("Security Type", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.securitytype", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.send_time = ProtoField.new("Send Time", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sendtime", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.seq_num = ProtoField.new("Seq Num", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.seqnum", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.session_state = ProtoField.new("Session State", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sessionstate", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.side = ProtoField.new("Side", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.side", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.significant_imbalance = ProtoField.new("Significant Imbalance", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.significantimbalance", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.source_id = ProtoField.new("Source Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourceid", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.source_time = ProtoField.new("Source Time", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetime", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrfilingprice", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.ssr_state = ProtoField.new("Ssr State", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrstate", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.status = ProtoField.new("Status", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.status", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol = ProtoField.new("Symbol", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbol", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.system_id = ProtoField.new("System Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.systemid", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.time = ProtoField.new("Time", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.time", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.totalimbalanceqty", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.totalrefreshpkts", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.total_volume = ProtoField.new("Total Volume", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.totalvolume", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond1", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cond_2 = ProtoField.new("Trade Cond 2", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond2", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cond_3 = ProtoField.new("Trade Cond 3", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond3", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cond_4 = ProtoField.new("Trade Cond 4", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond4", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradeid", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.unitoftrade", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.unpaired_qty = ProtoField.new("Unpaired Qty", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.unpairedqty", ftypes.UINT8)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.unpaired_side = ProtoField.new("Unpaired Side", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.unpairedside", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.uppercollar", ftypes.UINT32)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.volume = ProtoField.new("Volume", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.volume", ftypes.UINT32)

-- Nyse NyseEquities Pillar IntegratedFeed 2.5.a Application Messages
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.add_order_message = ProtoField.new("Add Order Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.addordermessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.add_order_refresh_message = ProtoField.new("Add Order Refresh Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.addorderrefreshmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.cross_correction_message = ProtoField.new("Cross Correction Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.crosscorrectionmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.crosstrademessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.delete_order_message = ProtoField.new("Delete Order Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.deleteordermessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.imbalancemessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.messageunavailablemessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.modify_order_message = ProtoField.new("Modify Order Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.modifyordermessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.non_displayed_trade_message = ProtoField.new("Non Displayed Trade Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.nondisplayedtrademessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.order_execution_message = ProtoField.new("Order Execution Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderexecutionmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.refreshheadermessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.refreshrequestmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.replace_order_message = ProtoField.new("Replace Order Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.replaceordermessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.requestresponsemessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.retailpriceimprovementmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.securitystatusmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.stock_summary_message = ProtoField.new("Stock Summary Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.stocksummarymessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolclearmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecancelmessage", ftypes.STRING)

-- Nyse NyseEquities IntegratedFeed Pillar 2.5.a generated fields
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_index = ProtoField.new("Message Index", "nyse.nyseequities.integratedfeed.pillar.v2.5.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse NyseEquities IntegratedFeed Pillar 2.5.a Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.send_time = true
show.message_index = true

-- Register Nyse NyseEquities IntegratedFeed Pillar 2.5.a Show Options
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_application_messages then
    show.application_messages = omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_application_messages
  end
  if show.message ~= omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_message then
    show.message = omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_message
  end
  if show.message_header ~= omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_message_header then
    show.message_header = omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_packet then
    show.packet = omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_packet_header then
    show.packet_header = omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_packet_header
  end
  if show.send_time ~= omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_send_time then
    show.send_time = omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_send_time
  end
  if show.message_index ~= omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_message_index then
    show.message_index = omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Nyse NyseEquities IntegratedFeed Pillar 2.5.a Fields
-----------------------------------------------------------------------

-- Auction Interest Clearing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_interest_clearing_price = {}

-- Size: Auction Interest Clearing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_interest_clearing_price.size = 4

-- Display: Auction Interest Clearing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_interest_clearing_price.display = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Dissect: Auction Interest Clearing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_interest_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_interest_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_interest_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Auction Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_status = {}

-- Size: Auction Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_status.size = 1

-- Display: Auction Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_status.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_time = {}

-- Size: Auction Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_time.size = 2

-- Display: Auction Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_time.display = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_type = {}

-- Size: Auction Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_type.size = 1

-- Display: Auction Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Early Opening Auction Non Nyse Only (O)"
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
    return "Auction Type: Regulatory Closing Imbalance (R)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id = {}

-- Size: Channel Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.size = 1

-- Display: Channel Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Close
nyse_nyseequities_integratedfeed_pillar_v2_5_a.close = {}

-- Size: Close
nyse_nyseequities_integratedfeed_pillar_v2_5_a.close.size = 4

-- Display: Close
nyse_nyseequities_integratedfeed_pillar_v2_5_a.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_nyseequities_integratedfeed_pillar_v2_5_a.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.close, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Cross Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id = {}

-- Size: Cross Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id.size = 4

-- Display: Cross Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_type = {}

-- Size: Cross Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_type.size = 1

-- Display: Cross Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_type.display = function(value)
  if value == "E" then
    return "Cross Type: Market Center Early Opening Auction (E)"
  end
  if value == "O" then
    return "Cross Type: Market Center Opening Auction (O)"
  end
  if value == "5" then
    return "Cross Type: Market Center Reopening Auction (5)"
  end
  if value == "6" then
    return "Cross Type: Market Center Closing Auction (6)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_nyseequities_integratedfeed_pillar_v2_5_a.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_nyseequities_integratedfeed_pillar_v2_5_a.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_nyseequities_integratedfeed_pillar_v2_5_a.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_nyseequities_integratedfeed_pillar_v2_5_a.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_nyseequities_integratedfeed_pillar_v2_5_a.delivery_flag = {}

-- Size: Delivery Flag
nyse_nyseequities_integratedfeed_pillar_v2_5_a.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_nyseequities_integratedfeed_pillar_v2_5_a.delivery_flag.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num = {}

-- Size: End Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.size = 4

-- Display: End Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_nyseequities_integratedfeed_pillar_v2_5_a.exchange_code = {}

-- Size: Exchange Code
nyse_nyseequities_integratedfeed_pillar_v2_5_a.exchange_code.size = 1

-- Display: Exchange Code
nyse_nyseequities_integratedfeed_pillar_v2_5_a.exchange_code.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Firm Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id = {}

-- Size: Firm Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id.size = 5

-- Display: Firm Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Freeze Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.freeze_status = {}

-- Size: Freeze Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.freeze_status.size = 1

-- Display: Freeze Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.freeze_status.display = function(value)
  if value == 0 then
    return "Freeze Status: Imbalance Freeze Not In Effect (0)"
  end
  if value == 1 then
    return "Freeze Status: Imbalance Freeze Is In Effect (1)"
  end

  return "Freeze Status: Unknown("..value..")"
end

-- Dissect: Freeze Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.freeze_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.freeze_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.freeze_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_nyseequities_integratedfeed_pillar_v2_5_a.halt_condition = {}

-- Size: Halt Condition
nyse_nyseequities_integratedfeed_pillar_v2_5_a.halt_condition.size = 1

-- Display: Halt Condition
nyse_nyseequities_integratedfeed_pillar_v2_5_a.halt_condition.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- High Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.high_price = {}

-- Size: High Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.high_price.size = 4

-- Display: High Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.high_price, range, value, display)

  return offset + length, value
end

-- Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.id = {}

-- Size: Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.id.size = 4

-- Display: Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_side = {}

-- Size: Imbalance Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_side.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.indicative_match_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_seq_num = {}

-- Size: Last Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.lot_size = {}

-- Size: Lot Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.lot_size.size = 2

-- Display: Lot Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.low_price = {}

-- Size: Low Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.low_price.size = 4

-- Display: Low Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_nyseequities_integratedfeed_pillar_v2_5_a.lower_collar = {}

-- Size: Lower Collar
nyse_nyseequities_integratedfeed_pillar_v2_5_a.lower_collar.size = 4

-- Display: Lower Collar
nyse_nyseequities_integratedfeed_pillar_v2_5_a.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_nyseequities_integratedfeed_pillar_v2_5_a.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_id = {}

-- Size: Market Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_id.size = 2

-- Display: Market Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_id.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Market State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_state = {}

-- Size: Market State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_state.size = 1

-- Display: Market State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_state.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_size = {}

-- Size: Message Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_size.size = 2

-- Display: Message Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_type = {}

-- Size: Message Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_type.size = 2

-- Display: Message Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_type.display = function(value)
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
  if value == 100 then
    return "Message Type: Add Order Message (100)"
  end
  if value == 101 then
    return "Message Type: Modify Order Message (101)"
  end
  if value == 102 then
    return "Message Type: Delete Order Message (102)"
  end
  if value == 103 then
    return "Message Type: Order Execution Message (103)"
  end
  if value == 104 then
    return "Message Type: Replace Order Message (104)"
  end
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end
  if value == 106 then
    return "Message Type: Add Order Refresh Message (106)"
  end
  if value == 110 then
    return "Message Type: Non Displayed Trade Message (110)"
  end
  if value == 111 then
    return "Message Type: Cross Trade Message (111)"
  end
  if value == 112 then
    return "Message Type: Trade Cancel Message (112)"
  end
  if value == 113 then
    return "Message Type: Cross Correction Message (113)"
  end
  if value == 114 then
    return "Message Type: Retail Price Improvement Message (114)"
  end
  if value == 223 then
    return "Message Type: Stock Summary Message (223)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_nyseequities_integratedfeed_pillar_v2_5_a.mpv = {}

-- Size: Mpv
nyse_nyseequities_integratedfeed_pillar_v2_5_a.mpv.size = 2

-- Display: Mpv
nyse_nyseequities_integratedfeed_pillar_v2_5_a.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_nyseequities_integratedfeed_pillar_v2_5_a.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_nyseequities_integratedfeed_pillar_v2_5_a.nanoseconds = {}

-- Size: Nanoseconds
nyse_nyseequities_integratedfeed_pillar_v2_5_a.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_nyseequities_integratedfeed_pillar_v2_5_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_nyseequities_integratedfeed_pillar_v2_5_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Order Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_order_id = {}

-- Size: New Order Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_order_id.size = 8

-- Display: New Order Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_order_id.display = function(value)
  return "New Order Id: "..value
end

-- Dissect: New Order Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.new_order_id, range, value, display)

  return offset + length, value
end

-- New Price Parity Splits
nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_price_parity_splits = {}

-- Size: New Price Parity Splits
nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_price_parity_splits.size = 1

-- Display: New Price Parity Splits
nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_price_parity_splits.display = function(value)
  return "New Price Parity Splits: "..value
end

-- Dissect: New Price Parity Splits
nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_price_parity_splits.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_price_parity_splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_price_parity_splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.new_price_parity_splits, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Num Extensions
nyse_nyseequities_integratedfeed_pillar_v2_5_a.num_extensions = {}

-- Size: Num Extensions
nyse_nyseequities_integratedfeed_pillar_v2_5_a.num_extensions.size = 1

-- Display: Num Extensions
nyse_nyseequities_integratedfeed_pillar_v2_5_a.num_extensions.display = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
nyse_nyseequities_integratedfeed_pillar_v2_5_a.num_extensions.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.num_extensions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.num_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_nyseequities_integratedfeed_pillar_v2_5_a.number_msgs = {}

-- Size: Number Msgs
nyse_nyseequities_integratedfeed_pillar_v2_5_a.number_msgs.size = 1

-- Display: Number Msgs
nyse_nyseequities_integratedfeed_pillar_v2_5_a.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_nyseequities_integratedfeed_pillar_v2_5_a.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Open
nyse_nyseequities_integratedfeed_pillar_v2_5_a.open = {}

-- Size: Open
nyse_nyseequities_integratedfeed_pillar_v2_5_a.open.size = 4

-- Display: Open
nyse_nyseequities_integratedfeed_pillar_v2_5_a.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_nyseequities_integratedfeed_pillar_v2_5_a.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.open.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.open, range, value, display)

  return offset + length, value
end

-- Order Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id = {}

-- Size: Order Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.size = 8

-- Display: Order Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.order_id, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.paired_qty = {}

-- Size: Paired Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.paired_qty.size = 4

-- Display: Paired Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.pkt_size = {}

-- Size: Pkt Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.pkt_size.size = 2

-- Display: Pkt Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_nyseequities_integratedfeed_pillar_v2_5_a.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Position Change
nyse_nyseequities_integratedfeed_pillar_v2_5_a.position_change = {}

-- Size: Position Change
nyse_nyseequities_integratedfeed_pillar_v2_5_a.position_change.size = 1

-- Display: Position Change
nyse_nyseequities_integratedfeed_pillar_v2_5_a.position_change.display = function(value)
  if value == 0 then
    return "Position Change: Kept (0)"
  end
  if value == 1 then
    return "Position Change: Lost (1)"
  end

  return "Position Change: Unknown("..value..")"
end

-- Dissect: Position Change
nyse_nyseequities_integratedfeed_pillar_v2_5_a.position_change.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.position_change.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.position_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.position_change, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_price = {}

-- Size: Prev Close Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Prev Price Parity Splits
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_price_parity_splits = {}

-- Size: Prev Price Parity Splits
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_price_parity_splits.size = 1

-- Display: Prev Price Parity Splits
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_price_parity_splits.display = function(value)
  return "Prev Price Parity Splits: "..value
end

-- Dissect: Prev Price Parity Splits
nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_price_parity_splits.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_price_parity_splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_price_parity_splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.prev_price_parity_splits, range, value, display)

  return offset + length, value
end

-- Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price = {}

-- Size: Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.size = 4

-- Display: Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_1 = {}

-- Size: Price 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_1.size = 4

-- Display: Price 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_2 = {}

-- Size: Price 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_2.size = 4

-- Display: Price 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_resolution = {}

-- Size: Price Resolution
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_resolution.size = 1

-- Display: Price Resolution
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_resolution.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_scale_code = {}

-- Size: Price Scale Code
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Printable Flag
nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag = {}

-- Size: Printable Flag
nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag.size = 1

-- Display: Printable Flag
nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag.display = function(value)
  if value == 0 then
    return "Printable Flag: Not Printed (0)"
  end
  if value == 1 then
    return "Printable Flag: Printed (1)"
  end

  return "Printable Flag: Unknown("..value..")"
end

-- Dissect: Printable Flag
nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.printable_flag, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id = {}

-- Size: Product Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.size = 1

-- Display: Product Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reference Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reference_price = {}

-- Size: Reference Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reference_price.size = 4

-- Display: Reference Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_seq_num = {}

-- Size: Request Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_1 = {}

-- Size: Reserved 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_1.size = 1

-- Display: Reserved 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 11
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11 = {}

-- Size: Reserved 11
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.size = 1

-- Display: Reserved 11
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.display = function(value)
  return "Reserved 11: "..value
end

-- Dissect: Reserved 11
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reserved_11, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_2 = {}

-- Size: Reserved 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_2.size = 2

-- Display: Reserved 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_4 = {}

-- Size: Reserved 4
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_4.size = 4

-- Display: Reserved 4
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmit_method = {}

-- Size: Retransmit Method
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmit_method.display = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_nyseequities_integratedfeed_pillar_v2_5_a.round_lot = {}

-- Size: Round Lot
nyse_nyseequities_integratedfeed_pillar_v2_5_a.round_lot.size = 1

-- Display: Round Lot
nyse_nyseequities_integratedfeed_pillar_v2_5_a.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_nyseequities_integratedfeed_pillar_v2_5_a.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Rpi Indicator
nyse_nyseequities_integratedfeed_pillar_v2_5_a.rpi_indicator = {}

-- Size: Rpi Indicator
nyse_nyseequities_integratedfeed_pillar_v2_5_a.rpi_indicator.size = 1

-- Display: Rpi Indicator
nyse_nyseequities_integratedfeed_pillar_v2_5_a.rpi_indicator.display = function(value)
  if value == " " then
    return "Rpi Indicator: No Retail Interest (<whitespace>)"
  end
  if value == "A" then
    return "Rpi Indicator: Retail Interest On The Bid Side (A)"
  end
  if value == "B" then
    return "Rpi Indicator: Retail Interest On The Offer Side (B)"
  end
  if value == "C" then
    return "Rpi Indicator: Retail Interest On The Bid And Offer Sides (C)"
  end

  return "Rpi Indicator: Unknown("..value..")"
end

-- Dissect: Rpi Indicator
nyse_nyseequities_integratedfeed_pillar_v2_5_a.rpi_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.rpi_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.rpi_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_nyseequities_integratedfeed_pillar_v2_5_a.seconds = {}

-- Size: Seconds
nyse_nyseequities_integratedfeed_pillar_v2_5_a.seconds.size = 4

-- Display: Seconds
nyse_nyseequities_integratedfeed_pillar_v2_5_a.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_nyseequities_integratedfeed_pillar_v2_5_a.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status = {}

-- Size: Security Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status.size = 1

-- Display: Security Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_type = {}

-- Size: Security Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_type.size = 1

-- Display: Security Type
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_type.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.seq_num = {}

-- Size: Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.seq_num.size = 4

-- Display: Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.session_state = {}

-- Size: Session State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.session_state.size = 1

-- Display: Session State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.session_state, range, value, display)

  return offset + length, value
end

-- Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.side = {}

-- Size: Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.size = 1

-- Display: Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.side, range, value, display)

  return offset + length, value
end

-- Significant Imbalance
nyse_nyseequities_integratedfeed_pillar_v2_5_a.significant_imbalance = {}

-- Size: Significant Imbalance
nyse_nyseequities_integratedfeed_pillar_v2_5_a.significant_imbalance.size = 1

-- Display: Significant Imbalance
nyse_nyseequities_integratedfeed_pillar_v2_5_a.significant_imbalance.display = function(value)
  if value == " " then
    return "Significant Imbalance: Default (<whitespace>)"
  end
  if value == "Y" then
    return "Significant Imbalance: The Current Imbalance Is Significant (Y)"
  end

  return "Significant Imbalance: Unknown("..value..")"
end

-- Dissect: Significant Imbalance
nyse_nyseequities_integratedfeed_pillar_v2_5_a.significant_imbalance.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.significant_imbalance.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.significant_imbalance.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.significant_imbalance, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id = {}

-- Size: Source Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.size = 10

-- Display: Source Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time = {}

-- Size: Source Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.size = 4

-- Display: Source Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns = {}

-- Size: Source Time Ns
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr Filing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_filing_price = {}

-- Size: Ssr Filing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_filing_price.size = 4

-- Display: Ssr Filing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_filing_price.display = function(value)
  return "Ssr Filing Price: "..value
end

-- Dissect: Ssr Filing Price
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_filing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_filing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_filing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_state = {}

-- Size: Ssr State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_state.size = 1

-- Display: Ssr State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_exchange_id.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.status = {}

-- Size: Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.status.size = 1

-- Display: Status
nyse_nyseequities_integratedfeed_pillar_v2_5_a.status.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol = {}

-- Size: Symbol
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol.size = 11

-- Display: Symbol
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index = {}

-- Size: Symbol Index
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size = 4

-- Display: Symbol Index
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.system_id = {}

-- Size: System Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.system_id.size = 1

-- Display: System Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.time = {}

-- Size: Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.time.size = 4

-- Display: Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.time, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Total Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_volume = {}

-- Size: Total Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_volume.size = 4

-- Display: Total Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Cond 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1 = {}

-- Size: Trade Cond 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1.size = 1

-- Display: Trade Cond 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1.display = function(value)
  if value == "@" then
    return "Trade Cond 1: Regular Sale (@)"
  end
  if value == "C" then
    return "Trade Cond 1: Cash (C)"
  end
  if value == "N" then
    return "Trade Cond 1: Next Day Trade (N)"
  end

  return "Trade Cond 1: Unknown("..value..")"
end

-- Dissect: Trade Cond 1
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cond_1, range, value, display)

  return offset + length, value
end

-- Trade Cond 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2 = {}

-- Size: Trade Cond 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2.size = 1

-- Display: Trade Cond 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2.display = function(value)
  if value == " " then
    return "Trade Cond 2: Not Available (<whitespace>)"
  end
  if value == "F" then
    return "Trade Cond 2: Intermarket Sweep Order (F)"
  end
  if value == "O" then
    return "Trade Cond 2: Market Center Opening Trade (O)"
  end
  if value == "5" then
    return "Trade Cond 2: Reopening Trade (5)"
  end
  if value == "6" then
    return "Trade Cond 2: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Trade Cond 2: Qualified Contingent Trade (7)"
  end

  return "Trade Cond 2: Unknown("..value..")"
end

-- Dissect: Trade Cond 2
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cond_2, range, value, display)

  return offset + length, value
end

-- Trade Cond 3
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3 = {}

-- Size: Trade Cond 3
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3.size = 1

-- Display: Trade Cond 3
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3.display = function(value)
  if value == " " then
    return "Trade Cond 3: Not Available (<whitespace>)"
  end
  if value == "T" then
    return "Trade Cond 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Trade Cond 3: Extended Hours Sold (U)"
  end
  if value == "Z" then
    return "Trade Cond 3: Sold (Z)"
  end

  return "Trade Cond 3: Unknown("..value..")"
end

-- Dissect: Trade Cond 3
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cond_3, range, value, display)

  return offset + length, value
end

-- Trade Cond 4
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4 = {}

-- Size: Trade Cond 4
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4.size = 1

-- Display: Trade Cond 4
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4.display = function(value)
  if value == " " then
    return "Trade Cond 4: Not Available (<whitespace>)"
  end
  if value == "I" then
    return "Trade Cond 4: Odd Lot Trade (I)"
  end
  if value == "V" then
    return "Trade Cond 4: Contingent Trade (V)"
  end

  return "Trade Cond 4: Unknown("..value..")"
end

-- Dissect: Trade Cond 4
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cond_4, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id = {}

-- Size: Trade Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.size = 4

-- Display: Trade Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Unpaired Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_qty = {}

-- Size: Unpaired Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_qty.size = 1

-- Display: Unpaired Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_qty.display = function(value)
  return "Unpaired Qty: "..value
end

-- Dissect: Unpaired Qty
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.unpaired_qty, range, value, display)

  return offset + length, value
end

-- Unpaired Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_side = {}

-- Size: Unpaired Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_side.size = 1

-- Display: Unpaired Side
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_side.display = function(value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.unpaired_side, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_nyseequities_integratedfeed_pillar_v2_5_a.upper_collar = {}

-- Size: Upper Collar
nyse_nyseequities_integratedfeed_pillar_v2_5_a.upper_collar.size = 4

-- Display: Upper Collar
nyse_nyseequities_integratedfeed_pillar_v2_5_a.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_nyseequities_integratedfeed_pillar_v2_5_a.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume = {}

-- Size: Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size = 4

-- Display: Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse NyseEquities IntegratedFeed Pillar 2.5.a
-----------------------------------------------------------------------

-- Stock Summary Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.stock_summary_message = {}

-- Size: Stock Summary Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.stock_summary_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.high_price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.low_price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.open.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.close.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_volume.size

-- Display: Stock Summary Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.stock_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Summary Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.stock_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- High Price: 4 Byte Unsigned Fixed Width Integer
  index, high_price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: 4 Byte Unsigned Fixed Width Integer
  index, low_price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.low_price.dissect(buffer, index, packet, parent)

  -- Open: 4 Byte Unsigned Fixed Width Integer
  index, open = nyse_nyseequities_integratedfeed_pillar_v2_5_a.open.dissect(buffer, index, packet, parent)

  -- Close: 4 Byte Unsigned Fixed Width Integer
  index, close = nyse_nyseequities_integratedfeed_pillar_v2_5_a.close.dissect(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Summary Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.stock_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.stock_summary_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.stock_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.stock_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.stock_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Price Improvement Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retail_price_improvement_message = {}

-- Size: Retail Price Improvement Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retail_price_improvement_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.rpi_indicator.size

-- Display: Retail Price Improvement Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index, rpi_indicator = nyse_nyseequities_integratedfeed_pillar_v2_5_a.rpi_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Correction Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_correction_message = {}

-- Size: Cross Correction Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_correction_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size

-- Display: Cross Correction Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Correction Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Correction Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.cross_correction_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cancel_message = {}

-- Size: Trade Cancel Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cancel_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.size

-- Display: Trade Cancel Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.trade_cancel_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_trade_message = {}

-- Size: Cross Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_trade_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_type.size

-- Display: Cross Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.cross_trade_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Non Displayed Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.non_displayed_trade_message = {}

-- Size: Non Displayed Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.non_displayed_trade_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4.size

-- Display: Non Displayed Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.non_displayed_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Non Displayed Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.non_displayed_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.dissect(buffer, index, packet, parent)

  -- Printable Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, printable_flag = nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 3 values
  index, trade_cond_1 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 6 values
  index, trade_cond_2 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: 1 Byte Ascii String Enum with 4 values
  index, trade_cond_3 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: 1 Byte Ascii String Enum with 3 values
  index, trade_cond_4 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Displayed Trade Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.non_displayed_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.non_displayed_trade_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.non_displayed_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.non_displayed_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.non_displayed_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Refresh Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_refresh_message = {}

-- Size: Add Order Refresh Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_refresh_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.size

-- Display: Add Order Refresh Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Refresh Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.dissect(buffer, index, packet, parent)

  -- Firm Id: 5 Byte Ascii String
  index, firm_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id.dissect(buffer, index, packet, parent)

  -- Reserved 11: 1 Byte
  index, reserved_11 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Refresh Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.add_order_refresh_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_message = {}

-- Size: Imbalance Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.reference_price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.paired_qty.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_imbalance_qty.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_imbalance_qty.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_time.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_type.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_side.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.continuous_book_clearing_price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_interest_clearing_price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_filing_price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.indicative_match_price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.upper_collar.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.lower_collar.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_status.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.freeze_status.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.num_extensions.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_qty.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_side.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.significant_imbalance.size

-- Display: Imbalance Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, reference_price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reference_price.dissect(buffer, index, packet, parent)

  -- Paired Qty: 4 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_nyseequities_integratedfeed_pillar_v2_5_a.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, total_imbalance_qty = nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, market_imbalance_qty = nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Auction Time: 2 Byte Unsigned Fixed Width Integer
  index, auction_time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_time.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 6 values
  index, auction_type = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, continuous_book_clearing_price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, auction_interest_clearing_price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_interest_clearing_price.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: 4 Byte Unsigned Fixed Width Integer
  index, ssr_filing_price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_filing_price.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: 4 Byte Unsigned Fixed Width Integer
  index, indicative_match_price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: 4 Byte Unsigned Fixed Width Integer
  index, upper_collar = nyse_nyseequities_integratedfeed_pillar_v2_5_a.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: 4 Byte Unsigned Fixed Width Integer
  index, lower_collar = nyse_nyseequities_integratedfeed_pillar_v2_5_a.lower_collar.dissect(buffer, index, packet, parent)

  -- Auction Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, auction_status = nyse_nyseequities_integratedfeed_pillar_v2_5_a.auction_status.dissect(buffer, index, packet, parent)

  -- Freeze Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, freeze_status = nyse_nyseequities_integratedfeed_pillar_v2_5_a.freeze_status.dissect(buffer, index, packet, parent)

  -- Num Extensions: 1 Byte Unsigned Fixed Width Integer
  index, num_extensions = nyse_nyseequities_integratedfeed_pillar_v2_5_a.num_extensions.dissect(buffer, index, packet, parent)

  -- Unpaired Qty: 1 Byte Unsigned Fixed Width Integer
  index, unpaired_qty = nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_qty.dissect(buffer, index, packet, parent)

  -- Unpaired Side: 1 Byte Ascii String Enum with 3 values
  index, unpaired_side = nyse_nyseequities_integratedfeed_pillar_v2_5_a.unpaired_side.dissect(buffer, index, packet, parent)

  -- Significant Imbalance: 1 Byte Ascii String Enum with 2 values
  index, significant_imbalance = nyse_nyseequities_integratedfeed_pillar_v2_5_a.significant_imbalance.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.replace_order_message = {}

-- Size: Replace Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.replace_order_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_order_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_price_parity_splits.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_price_parity_splits.size

-- Display: Replace Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.dissect(buffer, index, packet, parent)

  -- New Order Id: 8 Byte Unsigned Fixed Width Integer
  index, new_order_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_order_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.dissect(buffer, index, packet, parent)

  -- Prev Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, prev_price_parity_splits = nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_price_parity_splits.dissect(buffer, index, packet, parent)

  -- New Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, new_price_parity_splits = nyse_nyseequities_integratedfeed_pillar_v2_5_a.new_price_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.replace_order_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_execution_message = {}

-- Size: Order Execution Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_execution_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4.size

-- Display: Order Execution Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.dissect(buffer, index, packet, parent)

  -- Printable Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, printable_flag = nyse_nyseequities_integratedfeed_pillar_v2_5_a.printable_flag.dissect(buffer, index, packet, parent)

  -- Reserved 11: 1 Byte
  index, reserved_11 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 3 values
  index, trade_cond_1 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 6 values
  index, trade_cond_2 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: 1 Byte Ascii String Enum with 4 values
  index, trade_cond_3 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: 1 Byte Ascii String Enum with 3 values
  index, trade_cond_4 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cond_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.order_execution_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.delete_order_message = {}

-- Size: Delete Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.delete_order_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.size

-- Display: Delete Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 11: 1 Byte
  index, reserved_11 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.delete_order_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.modify_order_message = {}

-- Size: Modify Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.modify_order_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.position_change.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.size

-- Display: Modify Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.dissect(buffer, index, packet, parent)

  -- Position Change: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, position_change = nyse_nyseequities_integratedfeed_pillar_v2_5_a.position_change.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.dissect(buffer, index, packet, parent)

  -- Reserved 11: 1 Byte
  index, reserved_11 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.modify_order_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_message = {}

-- Size: Add Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.size

-- Display: Add Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.volume.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_nyseequities_integratedfeed_pillar_v2_5_a.side.dissect(buffer, index, packet, parent)

  -- Firm Id: 5 Byte Ascii String
  index, firm_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.firm_id.dissect(buffer, index, packet, parent)

  -- Reserved 11: 1 Byte
  index, reserved_11 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_11.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.add_order_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_header_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.current_refresh_pkt.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_refresh_pkts.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_nyseequities_integratedfeed_pillar_v2_5_a.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_nyseequities_integratedfeed_pillar_v2_5_a.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status_message = {}

-- Size: Security Status Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.halt_condition.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_4.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_1.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_2.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_exchange_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_volume.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.time.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_state.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_state.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.session_state.size

-- Display: Security Status Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 12 values
  index, security_status = nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 16 values
  index, halt_condition = nyse_nyseequities_integratedfeed_pillar_v2_5_a.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 19 values
  index, ssr_triggering_exchange_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.time.dissect(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index, ssr_state = nyse_nyseequities_integratedfeed_pillar_v2_5_a.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_state.dissect(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String
  index, session_state = nyse_nyseequities_integratedfeed_pillar_v2_5_a.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.security_status_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_clear_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_unavailable_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.size

-- Display: Message Unavailable Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_request_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.size

-- Display: Refresh Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_request_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, retransmit_method = nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.heartbeat_response_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.size

-- Display: Heartbeat Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_response_message = {}

-- Size: Request Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_response_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.status.size

-- Display: Request Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 9 values
  index, status = nyse_nyseequities_integratedfeed_pillar_v2_5_a.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.request_response_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmission_request_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.size

-- Display: Retransmission Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_1.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.system_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.exchange_code.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_scale_code.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_type.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.lot_size.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_price.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_volume.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_resolution.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.round_lot.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.mpv.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.unit_of_trade.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, market_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 7 values
  index, exchange_code = nyse_nyseequities_integratedfeed_pillar_v2_5_a.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_nyseequities_integratedfeed_pillar_v2_5_a.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_nyseequities_integratedfeed_pillar_v2_5_a.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_nyseequities_integratedfeed_pillar_v2_5_a.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
  index, round_lot = nyse_nyseequities_integratedfeed_pillar_v2_5_a.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_nyseequities_integratedfeed_pillar_v2_5_a.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_nyseequities_integratedfeed_pillar_v2_5_a.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_nyseequities_integratedfeed_pillar_v2_5_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_reference_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.size

-- Display: Source Time Reference Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.sequence_number_reset_message.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.size

-- Display: Sequence Number Reset Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_nyseequities_integratedfeed_pillar_v2_5_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_nyseequities_integratedfeed_pillar_v2_5_a.payload = {}

-- Dissect: Payload
nyse_nyseequities_integratedfeed_pillar_v2_5_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 100 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 101 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 102 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 103 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if message_type == 104 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Refresh Message
  if message_type == 106 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.add_order_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Non Displayed Trade Message
  if message_type == 110 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.non_displayed_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == 111 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == 112 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Correction Message
  if message_type == 113 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.cross_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if message_type == 114 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.retail_price_improvement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Summary Message
  if message_type == 223 then
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.stock_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_header = {}

-- Size: Message Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_header.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_size.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_type.size

-- Display: Message Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_header, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message = {}

-- Display: Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_nyseequities_integratedfeed_pillar_v2_5_a.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.message, buffer(offset, 0))
    local current = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_integratedfeed_pillar_v2_5_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time = {}

-- Size: Send Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.seconds.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.nanoseconds.size

-- Display: Send Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time.display = function(packet, parent, value)
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
nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_nyseequities_integratedfeed_pillar_v2_5_a.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_nyseequities_integratedfeed_pillar_v2_5_a.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.send_time, buffer(offset, 0))
    local index, value = nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header = {}

-- Size: Packet Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header.size =
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.pkt_size.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.delivery_flag.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.number_msgs.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.seq_num.size + 
  nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time.size

-- Display: Packet Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_nyseequities_integratedfeed_pillar_v2_5_a.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_nyseequities_integratedfeed_pillar_v2_5_a.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_nyseequities_integratedfeed_pillar_v2_5_a.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_nyseequities_integratedfeed_pillar_v2_5_a.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_nyseequities_integratedfeed_pillar_v2_5_a.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet = {}

-- Verify required size of Udp packet
nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header.size
end

-- Dissect Packet
nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_nyseequities_integratedfeed_pillar_v2_5_a.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.init()
end

-- Dissector for Nyse NyseEquities IntegratedFeed Pillar 2.5.a
function omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a, buffer(), omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.description, "("..buffer:len().." Bytes)")
  return nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse NyseEquities IntegratedFeed Pillar 2.5.a (Udp)
local function omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nyseequities_integratedfeed_pillar_v2_5_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a
  omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse NyseEquities IntegratedFeed Pillar 2.5.a
omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a:register_heuristic("udp", omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a_udp_heuristic)

-- Register Nyse NyseEquities IntegratedFeed Pillar 2.5.a on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_nyseequities_integratedfeed_pillar_v2_5_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.5.a
--   Date: Wednesday, November 30, 2022
--   Specification: NYSE_Pillar_Integrated_Feed_Client_Specification.pdf
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
