-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g Protocol
local omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g = Proto("Omi.Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g", "Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g")

-- Protocol table
local nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g Fields
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.auctioninterestclearingprice", ftypes.INT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_status = ProtoField.new("Auction Status", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.auctionstatus", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_time = ProtoField.new("Auction Time", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.auctiontime", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_type = ProtoField.new("Auction Type", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.auctiontype", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.channel_id = ProtoField.new("Channel Id", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.channelid", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.continuousbookclearingprice", ftypes.INT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.currentrefreshpkt", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.deliveryflag", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.eth_eligible = ProtoField.new("Eth Eligible", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.etheligible", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.exchangecode", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.firm_id = ProtoField.new("Firm Id", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.firmid", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.freeze_status = ProtoField.new("Freeze Status", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.freezestatus", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.haltcondition", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.id = ProtoField.new("Id", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.id", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.imbalanceside", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.indicativematchprice", ftypes.INT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.lastseqnum", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.late_close_eligible = ProtoField.new("Late Close Eligible", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.latecloseeligible", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.lot_size = ProtoField.new("Lot Size", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.lotsize", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.lowercollar", ftypes.INT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.market_id = ProtoField.new("Market Id", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.marketid", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.marketimbalanceqty", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.market_state = ProtoField.new("Market State", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.marketstate", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_size = ProtoField.new("Message Size", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.messagesize", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_type = ProtoField.new("Message Type", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.messagetype", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.mpv = ProtoField.new("Mpv", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.mpv", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.nanoseconds", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.num_extensions = ProtoField.new("Num Extensions", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.numextensions", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.numbermsgs", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.order_id = ProtoField.new("Order Id", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.orderid", ftypes.UINT64)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.pairedqty", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.pktsize", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.prevcloseprice", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.prevclosevolume", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price = ProtoField.new("Price", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.price", ftypes.INT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_1 = ProtoField.new("Price 1", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.price1", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_2 = ProtoField.new("Price 2", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.price2", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.priceresolution", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.pricescalecode", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.product_id = ProtoField.new("Product Id", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.productid", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.reference_price = ProtoField.new("Reference Price", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.referenceprice", ftypes.INT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.reserved1", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.reserved4", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.round_lot = ProtoField.new("Round Lot", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.roundlot", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.seconds = ProtoField.new("Seconds", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.seconds", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.security_status = ProtoField.new("Security Status", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.securitystatus", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.security_type = ProtoField.new("Security Type", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.securitytype", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.seq_num = ProtoField.new("Seq Num", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.seqnum", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.session_state = ProtoField.new("Session State", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sessionstate", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.side = ProtoField.new("Side", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.side", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.source_time = ProtoField.new("Source Time", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.ssrfilingprice", ftypes.INT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_state = ProtoField.new("Ssr State", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.ssrstate", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.symbol = ProtoField.new("Symbol", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbol", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.system_id = ProtoField.new("System Id", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.systemid", ftypes.UINT8)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.time = ProtoField.new("Time", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.time", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.totalimbalanceqty", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.totalrefreshpkts", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.unitoftrade", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.unpaired_qty = ProtoField.new("Unpaired Qty", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.unpairedqty", ftypes.UINT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.unpaired_side = ProtoField.new("Unpaired Side", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.unpairedside", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.uppercollar", ftypes.INT32)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.volume = ProtoField.new("Volume", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.volume", ftypes.UINT32)

-- Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g Headers
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message = ProtoField.new("Message", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.message", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_header = ProtoField.new("Message Header", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.messageheader", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.packet = ProtoField.new("Packet", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.packet", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.packet_header = ProtoField.new("Packet Header", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.packetheader", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.send_time = ProtoField.new("Send Time", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sendtime", ftypes.STRING)

-- Nyse ArcaEquities IntegratedFeedRefresh 2.5.g Application Messages
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.add_order_refresh_message = ProtoField.new("Add Order Refresh Message", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.addorderrefreshmessage", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.imbalancemessage", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.refreshheadermessage", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.securitystatusmessage", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolindexmappingmessage", ftypes.STRING)

-- Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g generated fields
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_index = ProtoField.new("Message Index", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.messageindex", ftypes.UINT16)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.messagesequencenumber", ftypes.UINT64)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_interest_clearing_price_calculate = ProtoField.new("Auction Interest Clearing Price Calculate", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.auctioninterestclearingpricecalculate", ftypes.DOUBLE)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.continuous_book_clearing_price_calculate = ProtoField.new("Continuous Book Clearing Price Calculate", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.continuousbookclearingpricecalculate", ftypes.DOUBLE)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.indicative_match_price_calculate = ProtoField.new("Indicative Match Price Calculate", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.indicativematchpricecalculate", ftypes.DOUBLE)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.lower_collar_calculate = ProtoField.new("Lower Collar Calculate", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.lowercollarcalculate", ftypes.DOUBLE)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_calculate = ProtoField.new("Price Calculate", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.pricecalculate", ftypes.DOUBLE)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.reference_price_calculate = ProtoField.new("Reference Price Calculate", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.referencepricecalculate", ftypes.DOUBLE)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.timestamp = ProtoField.new("Timestamp", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.timestamp", ftypes.UINT64)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_filing_price_calculate = ProtoField.new("SSR Filing Price Calculate", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.ssrfilingpricecalculate", ftypes.DOUBLE)
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.upper_collar_calculate = ProtoField.new("Upper Collar Calculate", "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.uppercollarcalculate", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g Formatting
-----------------------------------------------------------------------

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_timestamp = true

-- Reference Price Calculate format (true = decimal-scaled, false = raw mantissa)
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g Element Dissection Options
show.records = true
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g Show Options
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.resolve_records = Pref.bool("Symbol Index Mapping Message", show.records, "Cache records and resolve cross-packet lookups")
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

-- Handle changed preferences
function omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs_changed()

  -- Check if preferences have changed
  if show.records ~= omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.resolve_records then
    show.records = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.resolve_records
  end
  if show.application_messages ~= omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_application_messages then
    show.application_messages = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_headers then
    show.headers = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_headers
  end
  if show.structs ~= omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_structs then
    show.structs = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_structs
  end
  if show.indexes ~= omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_indexes then
    show.indexes = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_indexes
  end
  if show.sequences ~= omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_sequences then
    show.sequences = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.show_sequences
  end
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_timestamp ~= omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.format_timestamp then
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_timestamp = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.format_timestamp
  end
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals ~= omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.format_decimals then
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prefs.format_decimals
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation = {}
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.data = function(packet)
  local key = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.key(packet)
  local data = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.flows[key]
  if data == nil then
    data = { source_time = { last = nil, frames = {} }, symbol_index_mapping_message = {} }
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current = nil


-----------------------------------------------------------------------
-- Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g Fields
-----------------------------------------------------------------------

-- Auction Interest Clearing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price = {}

-- Size: Auction Interest Clearing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price.size = 4

-- Display: Auction Interest Clearing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price.display = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Dissect: Auction Interest Clearing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Auction Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_status = {}

-- Size: Auction Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_status.size = 1

-- Display: Auction Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_status.display = function(value)
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_time = {}

-- Size: Auction Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_time.size = 2

-- Display: Auction Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_time.display = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_type = {}

-- Size: Auction Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_type.size = 1

-- Display: Auction Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_type.display = function(value)
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.channel_id = {}

-- Size: Channel Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.channel_id.size = 1

-- Display: Channel Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.delivery_flag = {}

-- Size: Delivery Flag
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.delivery_flag.display = function(value)
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Eth Eligible
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.eth_eligible = {}

-- Size: Eth Eligible
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.eth_eligible.size = 1

-- Display: Eth Eligible
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.eth_eligible.display = function(value)
  if value == 0 then
    return "Eth Eligible: Not Eligible (0)"
  end
  if value == 1 then
    return "Eth Eligible: Eligible (1)"
  end

  return "Eth Eligible: Unknown("..value..")"
end

-- Dissect: Eth Eligible
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.eth_eligible.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.eth_eligible.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.eth_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.eth_eligible, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.exchange_code = {}

-- Size: Exchange Code
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.exchange_code.size = 1

-- Display: Exchange Code
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.exchange_code.display = function(value)
  if value == "F" then
    return "Exchange Code: Txse (F)"
  end
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Firm Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.firm_id = {}

-- Size: Firm Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.firm_id.size = 5

-- Display: Firm Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id: No Value"
  end

  return "Firm Id: "..value
end

-- Dissect: Firm Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.firm_id.size
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

  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Freeze Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.freeze_status = {}

-- Size: Freeze Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.freeze_status.size = 1

-- Display: Freeze Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.freeze_status.display = function(value)
  if value == 0 then
    return "Freeze Status: Imbalance Freeze Not In Effect (0)"
  end
  if value == 1 then
    return "Freeze Status: Imbalance Freeze Is In Effect (1)"
  end

  return "Freeze Status: Unknown("..value..")"
end

-- Dissect: Freeze Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.freeze_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.freeze_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.freeze_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.halt_condition = {}

-- Size: Halt Condition
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.halt_condition.size = 1

-- Display: Halt Condition
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.halt_condition.display = function(value)
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
    return "Halt Condition: Sip Outage Material Sip Latency Or Extraordinary Market Activity (A)"
  end
  if value == "C" then
    return "Halt Condition: Regulatory Concern (C)"
  end
  if value == "E" then
    return "Halt Condition: Merger Effective (E)"
  end
  if value == "F" then
    return "Halt Condition: Etf Iiv Etf Component Prices Not Available (F)"
  end
  if value == "N" then
    return "Halt Condition: Corporate Action (N)"
  end
  if value == "O" then
    return "Halt Condition: New Security Offering (O)"
  end
  if value == "V" then
    return "Halt Condition: Primary Listing Exchange Discretionary Halt (V)"
  end
  if value == "6" then
    return "Halt Condition: Suspend Operational Halt (6)"
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.id = {}

-- Size: Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.id.size = 4

-- Display: Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_side = {}

-- Size: Imbalance Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_side.display = function(value)
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_seq_num = {}

-- Size: Last Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Late Close Eligible
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.late_close_eligible = {}

-- Size: Late Close Eligible
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.late_close_eligible.size = 1

-- Display: Late Close Eligible
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.late_close_eligible.display = function(value)
  if value == 0 then
    return "Late Close Eligible: Not Eligible (0)"
  end
  if value == 1 then
    return "Late Close Eligible: Eligible (1)"
  end

  return "Late Close Eligible: Unknown("..value..")"
end

-- Dissect: Late Close Eligible
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.late_close_eligible.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.late_close_eligible.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.late_close_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.late_close_eligible, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lot_size = {}

-- Size: Lot Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lot_size.size = 2

-- Display: Lot Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar = {}

-- Size: Lower Collar
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar.size = 4

-- Display: Lower Collar
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_id = {}

-- Size: Market Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_id.size = 2

-- Display: Market Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_id.display = function(value)
  if value == 1 then
    return "Market Id: Nyse Equities (1)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca Equities (3)"
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Market State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_state = {}

-- Size: Market State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_state.size = 1

-- Display: Market State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_state.display = function(value)
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_size = {}

-- Size: Message Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_size.size = 2

-- Display: Message Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_type = {}

-- Size: Message Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_type.size = 2

-- Display: Message Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Source Time Reference Message (2)"
  end
  if value == 3 then
    return "Message Type: Symbol Index Mapping Message (3)"
  end
  if value == 34 then
    return "Message Type: Security Status Message (34)"
  end
  if value == 35 then
    return "Message Type: Refresh Header Message (35)"
  end
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end
  if value == 106 then
    return "Message Type: Add Order Refresh Message (106)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.mpv = {}

-- Size: Mpv
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.mpv.size = 2

-- Display: Mpv
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.nanoseconds = {}

-- Size: Nanoseconds
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Num Extensions
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.num_extensions = {}

-- Size: Num Extensions
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.num_extensions.size = 1

-- Display: Num Extensions
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.num_extensions.display = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.num_extensions.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.num_extensions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.num_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.number_msgs = {}

-- Size: Number Msgs
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.number_msgs.size = 1

-- Display: Number Msgs
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Order Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.order_id = {}

-- Size: Order Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.order_id.size = 8

-- Display: Order Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.order_id, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.paired_qty = {}

-- Size: Paired Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.paired_qty.size = 4

-- Display: Paired Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.pkt_size = {}

-- Size: Pkt Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.pkt_size.size = 2

-- Display: Pkt Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_price = {}

-- Size: Prev Close Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price = {}

-- Size: Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price.size = 4

-- Display: Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_1 = {}

-- Size: Price 1
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_1.size = 4

-- Display: Price 1
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_2 = {}

-- Size: Price 2
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_2.size = 4

-- Display: Price 2
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_resolution = {}

-- Size: Price Resolution
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_resolution.size = 1

-- Display: Price Resolution
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_resolution.display = function(value)
  return "Price Resolution: "..value
end

-- Dissect: Price Resolution
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_scale_code = {}

-- Size: Price Scale Code
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.product_id = {}

-- Size: Product Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.product_id.size = 1

-- Display: Product Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reference Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price = {}

-- Size: Reference Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price.size = 4

-- Display: Reference Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1 = {}

-- Size: Reserved 1
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.size = 1

-- Display: Reserved 1
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_4 = {}

-- Size: Reserved 4
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_4.size = 4

-- Display: Reserved 4
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.round_lot = {}

-- Size: Round Lot
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.round_lot.size = 1

-- Display: Round Lot
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seconds = {}

-- Size: Seconds
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seconds.size = 4

-- Display: Seconds
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status = {}

-- Size: Security Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status.size = 1

-- Display: Security Status
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status.display = function(value)
  if value == "4" then
    return "Security Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Security Status: Resume (5)"
  end
  if value == "6" then
    return "Security Status: Suspend Operational Halt (6)"
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_type = {}

-- Size: Security Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_type.size = 1

-- Display: Security Type
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_type.display = function(value)
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seq_num = {}

-- Size: Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seq_num.size = 4

-- Display: Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.session_state = {}

-- Size: Session State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.session_state.size = 1

-- Display: Session State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.session_state, range, value, display)

  return offset + length, value
end

-- Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.side = {}

-- Size: Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.side.size = 1

-- Display: Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.side, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time = {}

-- Size: Source Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.size = 4

-- Store: Source Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = nil

-- Generated: Source Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.generated = function(value, range, packet, parent)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.display(value)
  local source_time = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.source_time, range, value, display)
  source_time:set_generated()
end

-- Display: Source Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns = {}

-- Size: Source Time Ns
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr Filing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price = {}

-- Size: Ssr Filing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price.size = 4

-- Display: Ssr Filing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price.display = function(value)
  return "Ssr Filing Price: "..value
end

-- Dissect: Ssr Filing Price
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_state = {}

-- Size: Ssr State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_state.size = 1

-- Display: Ssr State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_exchange_id.display = function(value)
  if value == "A" then
    return "Ssr Triggering Exchange Id: Nyse American (A)"
  end
  if value == "B" then
    return "Ssr Triggering Exchange Id: Nasdaq Oms Tx (B)"
  end
  if value == "C" then
    return "Ssr Triggering Exchange Id: Nyse National (C)"
  end
  if value == "D" then
    return "Ssr Triggering Exchange Id: Finra (D)"
  end
  if value == "G" then
    return "Ssr Triggering Exchange Id: N 24 X (G)"
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol = {}

-- Size: Symbol
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol.size = 11

-- Display: Symbol
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol.size
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

  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index = {}

-- Size: Symbol Index
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.size = 4

-- Display: Symbol Index
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.display(value, buffer, offset, packet, parent)

  if not show.records then
    parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.symbol_index, range, value, display)

    return offset + length, value
  end

  -- Lookup Symbol Index Mapping Message record
  local record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current.symbol_index_mapping_message[value]
  if record ~= nil and record.symbol ~= nil then
    display = "Symbol Index: " .. tostring(record.symbol) .. " (" .. tostring(value) .. ")"
  end

  local field_tree = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.symbol_index, range, value, display)

  if record ~= nil then
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.current = record
    if record.symbol_index ~= nil then
      local entry_symbol_index = field_tree:add("Symbol Index: " .. tostring(record.symbol_index))
      entry_symbol_index:set_generated()
    end
    if record.symbol ~= nil then
      local entry_symbol = field_tree:add("Symbol: " .. tostring(record.symbol))
      entry_symbol:set_generated()
    end
    if record.price_scale_code ~= nil then
      local entry_price_scale_code = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
      entry_price_scale_code:set_generated()
    end
  end

  return offset + length, value, record
end

-- Symbol Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.system_id = {}

-- Size: System Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.system_id.size = 1

-- Display: System Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.time = {}

-- Size: Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.time.size = 4

-- Display: Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.time, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Unpaired Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_qty = {}

-- Size: Unpaired Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_qty.size = 4

-- Display: Unpaired Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_qty.display = function(value)
  return "Unpaired Qty: "..value
end

-- Dissect: Unpaired Qty
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.unpaired_qty, range, value, display)

  return offset + length, value
end

-- Unpaired Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_side = {}

-- Size: Unpaired Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_side.size = 1

-- Display: Unpaired Side
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_side.display = function(value)
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.unpaired_side, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar = {}

-- Size: Upper Collar
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar.size = 4

-- Display: Upper Collar
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.volume = {}

-- Size: Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.volume.size = 4

-- Display: Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.volume, range, value, display)

  return offset + length, value
end

-- Auction Interest Clearing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price_calculate = {}

-- Display: Auction Interest Clearing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price_calculate.display = function(value)
  return "Auction Interest Clearing Price Calculate: " .. string.format("%g", value)
end

-- Composite: Auction Interest Clearing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_interest_clearing_price_calculate, range, value, display)
  local mantissa_display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price.display(mantissa)

  field_tree:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.auction_interest_clearing_price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Auction Interest Clearing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals then
    local record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price.dissect(buffer, offset, packet, parent)
end

-- Continuous Book Clearing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price_calculate = {}

-- Display: Continuous Book Clearing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price_calculate.display = function(value)
  return "Continuous Book Clearing Price Calculate: " .. string.format("%g", value)
end

-- Composite: Continuous Book Clearing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.continuous_book_clearing_price_calculate, range, value, display)
  local mantissa_display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price.display(mantissa)

  field_tree:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.continuous_book_clearing_price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Continuous Book Clearing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals then
    local record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price.dissect(buffer, offset, packet, parent)
end

-- Indicative Match Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price_calculate = {}

-- Display: Indicative Match Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price_calculate.display = function(value)
  return "Indicative Match Price Calculate: " .. string.format("%g", value)
end

-- Composite: Indicative Match Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.indicative_match_price_calculate, range, value, display)
  local mantissa_display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price.display(mantissa)

  field_tree:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.indicative_match_price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Indicative Match Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals then
    local record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price.dissect(buffer, offset, packet, parent)
end

-- Lower Collar Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar_calculate = {}

-- Display: Lower Collar Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar_calculate.display = function(value)
  return "Lower Collar Calculate: " .. string.format("%g", value)
end

-- Composite: Lower Collar Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar_calculate.display(value)
  local field_tree = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.lower_collar_calculate, range, value, display)
  local mantissa_display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar.display(mantissa)

  field_tree:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.lower_collar, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Lower Collar Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals then
    local record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar.dissect(buffer, offset, packet, parent)
end

-- Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_calculate = {}

-- Display: Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_calculate.display = function(value)
  return "Price Calculate: " .. string.format("%g", value)
end

-- Composite: Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price_calculate, range, value, display)
  local mantissa_display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price.display(mantissa)

  field_tree:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals then
    local record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price.dissect(buffer, offset, packet, parent)
end

-- Reference Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price_calculate = {}

-- Display: Reference Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price_calculate.display = function(value)
  return "Reference Price Calculate: " .. string.format("%g", value)
end

-- Composite: Reference Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.reference_price_calculate, range, value, display)
  local mantissa_display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price.display(mantissa)

  field_tree:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.reference_price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Reference Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals then
    local record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price.dissect(buffer, offset, packet, parent)
end

-- Timestamp
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp = {}

-- Translate: Timestamp
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.translate = function(source_time_ns, stored_source_time)
  return UInt64.new(stored_source_time * 1000000000 + source_time_ns)
end

-- Display: Timestamp
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.display = function(source_time_ns, stored_source_time)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_source_time)..string.format("%09d", source_time_ns)
end

-- Composite: Timestamp
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.composite = function(buffer, offset, stored_source_time, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.size
  local range = buffer(offset, length)
  local source_time_ns = range:le_uint()
  local value = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.translate(source_time_ns, stored_source_time)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.display(source_time_ns, stored_source_time, packet)
  parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.timestamp, range, value, display)

  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.generated(stored_source_time, range, packet, parent)

  display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.display(source_time_ns)
  parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.source_time_ns, range, source_time_ns, display)

  return offset + length, value
end

-- Dissect: Timestamp
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.dissect = function(buffer, offset, packet, parent)
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_timestamp then
    local stored_source_time = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current

    if stored_source_time ~= nil then
      return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.composite(buffer, offset, stored_source_time, packet, parent)
    end
  end

  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.dissect(buffer, offset, packet, parent)
end

-- SSR Filing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price_calculate = {}

-- Display: SSR Filing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price_calculate.display = function(value)
  return "SSR Filing Price Calculate: " .. string.format("%g", value)
end

-- Composite: SSR Filing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_filing_price_calculate, range, value, display)
  local mantissa_display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price.display(mantissa)

  field_tree:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.ssr_filing_price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: SSR Filing Price Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals then
    local record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price.dissect(buffer, offset, packet, parent)
end

-- Upper Collar Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar_calculate = {}

-- Display: Upper Collar Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar_calculate.display = function(value)
  return "Upper Collar Calculate: " .. string.format("%g", value)
end

-- Composite: Upper Collar Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar_calculate.display(value)
  local field_tree = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.upper_collar_calculate, range, value, display)
  local mantissa_display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar.display(mantissa)

  field_tree:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.upper_collar, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Upper Collar Calculate
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.format_decimals then
    local record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g
-----------------------------------------------------------------------

-- Add Order Refresh Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.add_order_refresh_message = {}

-- Size: Add Order Refresh Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.add_order_refresh_message.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.order_id.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.volume.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.side.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.firm_id.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.size

-- Display: Add Order Refresh Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.add_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Refresh Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.add_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_calculate.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.side.dissect(buffer, index, packet, parent)

  -- Firm Id: ASCII
  index, firm_id = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.firm_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  return index
end

-- Dissect: Add Order Refresh Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.add_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.add_order_refresh_message, buffer(offset, 0))
    local index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.add_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.add_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.add_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_message = {}

-- Size: Imbalance Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_message.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.paired_qty.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_imbalance_qty.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_imbalance_qty.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_time.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_type.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_side.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_status.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.freeze_status.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.num_extensions.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_qty.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_side.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.size

-- Display: Imbalance Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary
  index, reference_price = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reference_price_calculate.dissect(buffer, index, packet, parent)

  -- Paired Qty: Binary
  index, paired_qty = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: Binary
  index, total_imbalance_qty = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: Binary
  index, market_imbalance_qty = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Auction Time: Binary
  index, auction_time = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_time.dissect(buffer, index, packet, parent)

  -- Auction Type: ASCII
  index, auction_type = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: ASCII
  index, imbalance_side = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: Binary
  index, continuous_book_clearing_price = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.continuous_book_clearing_price_calculate.dissect(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: Binary
  index, auction_interest_clearing_price = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_interest_clearing_price_calculate.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: Binary
  index, ssr_filing_price = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_filing_price_calculate.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: Binary
  index, indicative_match_price = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.indicative_match_price_calculate.dissect(buffer, index, packet, parent)

  -- Upper Collar: Binary
  index, upper_collar = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.upper_collar_calculate.dissect(buffer, index, packet, parent)

  -- Lower Collar: Binary
  index, lower_collar = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lower_collar_calculate.dissect(buffer, index, packet, parent)

  -- Auction Status: Binary
  index, auction_status = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.auction_status.dissect(buffer, index, packet, parent)

  -- Freeze Status: Binary
  index, freeze_status = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.freeze_status.dissect(buffer, index, packet, parent)

  -- Num Extensions: Binary
  index, num_extensions = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.num_extensions.dissect(buffer, index, packet, parent)

  -- Unpaired Qty: Binary
  index, unpaired_qty = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_qty.dissect(buffer, index, packet, parent)

  -- Unpaired Side: ASCII
  index, unpaired_side = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unpaired_side.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  return index
end

-- Dissect: Imbalance Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.refresh_header_message.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.current_refresh_pkt.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_refresh_pkts.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_seq_num.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status_message = {}

-- Size: Security Status Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status_message.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.halt_condition.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_4.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_1.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_2.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_exchange_id.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_volume.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.time.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_state.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_state.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.session_state.size

-- Display: Security Status Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.session_state.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  return index
end

-- Dissect: Security Status Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.security_status_message, buffer(offset, 0))
    local index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_id.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.system_id.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.exchange_code.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_scale_code.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_type.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lot_size.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_price.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_volume.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_resolution.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.round_lot.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.mpv.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unit_of_trade.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.late_close_eligible.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.eth_eligible.size

-- Display: Symbol Index Mapping Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: ASCII
  index, reserved_1 = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: Binary
  index, unit_of_trade = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Late Close Eligible: Binary
  index, late_close_eligible = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.late_close_eligible.dissect(buffer, index, packet, parent)

  -- Eth Eligible: Binary
  index, eth_eligible = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.eth_eligible.dissect(buffer, index, packet, parent)

  -- Cache Symbol Index Mapping Message record by symbol_index
  if show.records and not packet.visited then
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current.symbol_index_mapping_message[symbol_index] = {
      symbol_index = symbol_index,
      symbol = symbol,
      price_scale_code = price_scale_code,
    }
  end

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_reference_message.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.id.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.size

-- Display: Source Time Reference Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  return index
end

-- Dissect: Source Time Reference Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence_number_reset_message.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_ns.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.product_id.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.channel_id.size

-- Display: Sequence Number Reset Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.channel_id.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.payload = {}

-- Dissect: Payload
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Refresh Message
  if message_type == 106 then
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.add_order_refresh_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_header = {}

-- Size: Message Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_header.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_size.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_type.size

-- Display: Message Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_header, buffer(offset, 0))
    local index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message = {}

-- Display: Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence ~= nil then
    local sequence = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message_sequence_number, UInt64.new(nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.message, buffer(offset, 0))
    local current = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time = {}

-- Size: Send Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seconds.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.nanoseconds.size

-- Display: Send Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time.display = function(packet, parent, value)
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
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.send_time, buffer(offset, 0))
    local index, value = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header = {}

-- Size: Packet Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header.size =
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.pkt_size.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.delivery_flag.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.number_msgs.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seq_num.size + 
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time.size

-- Display: Packet Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.send_time.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.sequence = seq_num

  return index
end

-- Dissect: Packet Header
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.fields.packet_header, buffer(offset, 0))
    local index = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet = {}

-- Verify required size of Udp packet
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header.size
end

-- Dissect Packet
nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.data(packet)
  if not packet.visited then
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
  end
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.init()
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.source_time.current = nil
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.current = nil
  nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.conversation.flows = {}
end

-- Dissector for Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g
function omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g, buffer(), omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.description, "("..buffer:len().." Bytes)")
  return nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g (Udp)
local function omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g
  omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g
omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g:register_heuristic("udp", omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g_udp_heuristic)

-- Register Nyse ArcaEquities IntegratedFeedRefresh Pillar 2.5.g for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nyse_arcaequities_integratedfeedrefresh_pillar_v2_5_g)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.5.g
--   Date: Thursday, October 23, 2025
--   Specification: NYSE_Pillar_Integrated_Feed_Client_Specification.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
