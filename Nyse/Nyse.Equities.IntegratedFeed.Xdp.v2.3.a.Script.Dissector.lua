-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities IntegratedFeed Xdp 2.3.a Protocol
local nyse_equities_integratedfeed_xdp_v2_3_a = Proto("Nyse.Equities.IntegratedFeed.Xdp.v2.3.a.Lua", "Nyse Equities IntegratedFeed Xdp 2.3.a")

-- Component Tables
local show = {}
local format = {}
local nyse_equities_integratedfeed_xdp_v2_3_a_display = {}
local nyse_equities_integratedfeed_xdp_v2_3_a_dissect = {}
local nyse_equities_integratedfeed_xdp_v2_3_a_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities IntegratedFeed Xdp 2.3.a Fields
nyse_equities_integratedfeed_xdp_v2_3_a.fields.add_order_message = ProtoField.new("Add Order Message", "nyse.equities.integratedfeed.xdp.v2.3.a.addordermessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.add_order_refresh_message = ProtoField.new("Add Order Refresh Message", "nyse.equities.integratedfeed.xdp.v2.3.a.addorderrefreshmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_status = ProtoField.new("Auction Status", "nyse.equities.integratedfeed.xdp.v2.3.a.auctionstatus", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_time = ProtoField.new("Auction Time", "nyse.equities.integratedfeed.xdp.v2.3.a.auctiontime", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_type = ProtoField.new("Auction Type", "nyse.equities.integratedfeed.xdp.v2.3.a.auctiontype", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.beginseqnum", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.equities.integratedfeed.xdp.v2.3.a.channelid", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.close = ProtoField.new("Close", "nyse.equities.integratedfeed.xdp.v2.3.a.close", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.closing_only_clearing_price = ProtoField.new("Closing Only Clearing Price", "nyse.equities.integratedfeed.xdp.v2.3.a.closingonlyclearingprice", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.equities.integratedfeed.xdp.v2.3.a.continuousbookclearingprice", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_correction_message = ProtoField.new("Cross Correction Message", "nyse.equities.integratedfeed.xdp.v2.3.a.crosscorrectionmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_id = ProtoField.new("Cross Id", "nyse.equities.integratedfeed.xdp.v2.3.a.crossid", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nyse.equities.integratedfeed.xdp.v2.3.a.crosstrademessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_type = ProtoField.new("Cross Type", "nyse.equities.integratedfeed.xdp.v2.3.a.crosstype", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.equities.integratedfeed.xdp.v2.3.a.currentrefreshpkt", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.db_exec_id = ProtoField.new("Db Exec Id", "nyse.equities.integratedfeed.xdp.v2.3.a.dbexecid", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.delete_order_message = ProtoField.new("Delete Order Message", "nyse.equities.integratedfeed.xdp.v2.3.a.deleteordermessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.integratedfeed.xdp.v2.3.a.deliveryflag", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.endseqnum", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.equities.integratedfeed.xdp.v2.3.a.exchangecode", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.firm_id = ProtoField.new("Firm Id", "nyse.equities.integratedfeed.xdp.v2.3.a.firmid", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.freeze_status = ProtoField.new("Freeze Status", "nyse.equities.integratedfeed.xdp.v2.3.a.freezestatus", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.equities.integratedfeed.xdp.v2.3.a.haltcondition", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.equities.integratedfeed.xdp.v2.3.a.heartbeatresponsemessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.high_price = ProtoField.new("High Price", "nyse.equities.integratedfeed.xdp.v2.3.a.highprice", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.id = ProtoField.new("Id", "nyse.equities.integratedfeed.xdp.v2.3.a.id", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.equities.integratedfeed.xdp.v2.3.a.imbalancemessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.equities.integratedfeed.xdp.v2.3.a.imbalanceside", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.equities.integratedfeed.xdp.v2.3.a.indicativematchprice", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.lastseqnum", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.lastsymbolseqnum", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.lot_size = ProtoField.new("Lot Size", "nyse.equities.integratedfeed.xdp.v2.3.a.lotsize", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.low_price = ProtoField.new("Low Price", "nyse.equities.integratedfeed.xdp.v2.3.a.lowprice", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.equities.integratedfeed.xdp.v2.3.a.lowercollar", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_id = ProtoField.new("Market Id", "nyse.equities.integratedfeed.xdp.v2.3.a.marketid", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.equities.integratedfeed.xdp.v2.3.a.marketimbalanceqty", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_state = ProtoField.new("Market State", "nyse.equities.integratedfeed.xdp.v2.3.a.marketstate", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.message = ProtoField.new("Message", "nyse.equities.integratedfeed.xdp.v2.3.a.message", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_count = ProtoField.new("Message Count", "nyse.equities.integratedfeed.xdp.v2.3.a.messagecount", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_header = ProtoField.new("Message Header", "nyse.equities.integratedfeed.xdp.v2.3.a.messageheader", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_size = ProtoField.new("Message Size", "nyse.equities.integratedfeed.xdp.v2.3.a.messagesize", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_type = ProtoField.new("Message Type", "nyse.equities.integratedfeed.xdp.v2.3.a.messagetype", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.equities.integratedfeed.xdp.v2.3.a.messageunavailablemessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.modify_order_message = ProtoField.new("Modify Order Message", "nyse.equities.integratedfeed.xdp.v2.3.a.modifyordermessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.mpv = ProtoField.new("Mpv", "nyse.equities.integratedfeed.xdp.v2.3.a.mpv", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.integratedfeed.xdp.v2.3.a.nanoseconds", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.new_order_id = ProtoField.new("New Order Id", "nyse.equities.integratedfeed.xdp.v2.3.a.neworderid", ftypes.UINT64)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.new_price_parity_splits = ProtoField.new("New Price Parity Splits", "nyse.equities.integratedfeed.xdp.v2.3.a.newpriceparitysplits", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.nextsourceseqnum", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.non_displayed_trade_message = ProtoField.new("Non Displayed Trade Message", "nyse.equities.integratedfeed.xdp.v2.3.a.nondisplayedtrademessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.num_extensions = ProtoField.new("Num Extensions", "nyse.equities.integratedfeed.xdp.v2.3.a.numextensions", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.num_parity_splits = ProtoField.new("Num Parity Splits", "nyse.equities.integratedfeed.xdp.v2.3.a.numparitysplits", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.open = ProtoField.new("Open", "nyse.equities.integratedfeed.xdp.v2.3.a.open", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.order_execution_message = ProtoField.new("Order Execution Message", "nyse.equities.integratedfeed.xdp.v2.3.a.orderexecutionmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.order_id = ProtoField.new("Order Id", "nyse.equities.integratedfeed.xdp.v2.3.a.orderid", ftypes.UINT64)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet = ProtoField.new("Packet", "nyse.equities.integratedfeed.xdp.v2.3.a.packet", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.integratedfeed.xdp.v2.3.a.packetheader", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.integratedfeed.xdp.v2.3.a.packetsize", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.equities.integratedfeed.xdp.v2.3.a.pairedqty", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.payload = ProtoField.new("Payload", "nyse.equities.integratedfeed.xdp.v2.3.a.payload", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.position_change = ProtoField.new("Position Change", "nyse.equities.integratedfeed.xdp.v2.3.a.positionchange", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.equities.integratedfeed.xdp.v2.3.a.prevcloseprice", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.equities.integratedfeed.xdp.v2.3.a.prevclosevolume", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_price_parity_splits = ProtoField.new("Prev Price Parity Splits", "nyse.equities.integratedfeed.xdp.v2.3.a.prevpriceparitysplits", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.price = ProtoField.new("Price", "nyse.equities.integratedfeed.xdp.v2.3.a.price", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_1 = ProtoField.new("Price 1", "nyse.equities.integratedfeed.xdp.v2.3.a.price1", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_2 = ProtoField.new("Price 2", "nyse.equities.integratedfeed.xdp.v2.3.a.price2", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.equities.integratedfeed.xdp.v2.3.a.priceresolution", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.equities.integratedfeed.xdp.v2.3.a.pricescalecode", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.printable_flag = ProtoField.new("Printable Flag", "nyse.equities.integratedfeed.xdp.v2.3.a.printableflag", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.product_id = ProtoField.new("Product Id", "nyse.equities.integratedfeed.xdp.v2.3.a.productid", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.reference_price = ProtoField.new("Reference Price", "nyse.equities.integratedfeed.xdp.v2.3.a.referenceprice", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.equities.integratedfeed.xdp.v2.3.a.refreshheadermessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.equities.integratedfeed.xdp.v2.3.a.refreshrequestmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.replace_order_message = ProtoField.new("Replace Order Message", "nyse.equities.integratedfeed.xdp.v2.3.a.replaceordermessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.equities.integratedfeed.xdp.v2.3.a.requestresponsemessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.requestseqnum", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.equities.integratedfeed.xdp.v2.3.a.reserved1", ftypes.BYTES)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.equities.integratedfeed.xdp.v2.3.a.reserved2", ftypes.BYTES)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.equities.integratedfeed.xdp.v2.3.a.reserved4", ftypes.BYTES)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "nyse.equities.integratedfeed.xdp.v2.3.a.retailpriceimprovementmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.equities.integratedfeed.xdp.v2.3.a.retransmissionrequestmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.equities.integratedfeed.xdp.v2.3.a.retransmitmethod", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.round_lot = ProtoField.new("Round Lot", "nyse.equities.integratedfeed.xdp.v2.3.a.roundlot", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.equities.integratedfeed.xdp.v2.3.a.rpiindicator", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_status = ProtoField.new("Security Status", "nyse.equities.integratedfeed.xdp.v2.3.a.securitystatus", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.equities.integratedfeed.xdp.v2.3.a.securitystatusmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_type = ProtoField.new("Security Type", "nyse.equities.integratedfeed.xdp.v2.3.a.securitytype", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.integratedfeed.xdp.v2.3.a.sequencenumber", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.equities.integratedfeed.xdp.v2.3.a.sequencenumberresetmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.session_state = ProtoField.new("Session State", "nyse.equities.integratedfeed.xdp.v2.3.a.sessionstate", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.side = ProtoField.new("Side", "nyse.equities.integratedfeed.xdp.v2.3.a.side", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_id = ProtoField.new("Source Id", "nyse.equities.integratedfeed.xdp.v2.3.a.sourceid", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time = ProtoField.new("Source Time", "nyse.equities.integratedfeed.xdp.v2.3.a.sourcetime", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.integratedfeed.xdp.v2.3.a.sourcetimens", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.equities.integratedfeed.xdp.v2.3.a.sourcetimereferencemessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.equities.integratedfeed.xdp.v2.3.a.ssrfilingprice", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_state = ProtoField.new("Ssr State", "nyse.equities.integratedfeed.xdp.v2.3.a.ssrstate", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.equities.integratedfeed.xdp.v2.3.a.ssrtriggeringexchangeid", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.equities.integratedfeed.xdp.v2.3.a.ssrtriggeringvolume", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.status = ProtoField.new("Status", "nyse.equities.integratedfeed.xdp.v2.3.a.status", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.stock_summary_message = ProtoField.new("Stock Summary Message", "nyse.equities.integratedfeed.xdp.v2.3.a.stocksummarymessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol = ProtoField.new("Symbol", "nyse.equities.integratedfeed.xdp.v2.3.a.symbol", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolclearmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolindex", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolindexmappingmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolseqnum", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.system_id = ProtoField.new("System Id", "nyse.equities.integratedfeed.xdp.v2.3.a.systemid", ftypes.UINT8)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.time = ProtoField.new("Time", "nyse.equities.integratedfeed.xdp.v2.3.a.time", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.integratedfeed.xdp.v2.3.a.timestamp", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.equities.integratedfeed.xdp.v2.3.a.totalimbalanceqty", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.equities.integratedfeed.xdp.v2.3.a.totalrefreshpkts", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_volume = ProtoField.new("Total Volume", "nyse.equities.integratedfeed.xdp.v2.3.a.totalvolume", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "nyse.equities.integratedfeed.xdp.v2.3.a.tradecancelmessage", ftypes.STRING)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.equities.integratedfeed.xdp.v2.3.a.tradeid", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.equities.integratedfeed.xdp.v2.3.a.unitoftrade", ftypes.UINT16)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.equities.integratedfeed.xdp.v2.3.a.uppercollar", ftypes.UINT32)
nyse_equities_integratedfeed_xdp_v2_3_a.fields.volume = ProtoField.new("Volume", "nyse.equities.integratedfeed.xdp.v2.3.a.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Equities IntegratedFeed Xdp 2.3.a Element Dissection Options
show.add_order_message = true
show.add_order_refresh_message = true
show.cross_correction_message = true
show.cross_trade_message = true
show.delete_order_message = true
show.heartbeat_response_message = true
show.imbalance_message = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.modify_order_message = true
show.non_displayed_trade_message = true
show.order_execution_message = true
show.packet = true
show.packet_header = true
show.refresh_header_message = true
show.refresh_request_message = true
show.replace_order_message = true
show.request_response_message = true
show.retail_price_improvement_message = true
show.retransmission_request_message = true
show.security_status_message = true
show.sequence_number_reset_message = true
show.source_time_reference_message = true
show.stock_summary_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.trade_cancel_message = true
show.payload = false

-- Register Nyse Equities IntegratedFeed Xdp 2.3.a Show Options
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_refresh_message = Pref.bool("Show Add Order Refresh Message", show.add_order_refresh_message, "Parse and add Add Order Refresh Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_correction_message = Pref.bool("Show Cross Correction Message", show.cross_correction_message, "Parse and add Cross Correction Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_imbalance_message = Pref.bool("Show Imbalance Message", show.imbalance_message, "Parse and add Imbalance Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_non_displayed_trade_message = Pref.bool("Show Non Displayed Trade Message", show.non_displayed_trade_message, "Parse and add Non Displayed Trade Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_order_execution_message = Pref.bool("Show Order Execution Message", show.order_execution_message, "Parse and add Order Execution Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retail_price_improvement_message = Pref.bool("Show Retail Price Improvement Message", show.retail_price_improvement_message, "Parse and add Retail Price Improvement Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_source_time_reference_message = Pref.bool("Show Source Time Reference Message", show.source_time_reference_message, "Parse and add Source Time Reference Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_stock_summary_message = Pref.bool("Show Stock Summary Message", show.stock_summary_message, "Parse and add Stock Summary Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_equities_integratedfeed_xdp_v2_3_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_message then
    show.add_order_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_message
    changed = true
  end
  if show.add_order_refresh_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_refresh_message then
    show.add_order_refresh_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_refresh_message
    changed = true
  end
  if show.cross_correction_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_correction_message then
    show.cross_correction_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_correction_message
    changed = true
  end
  if show.cross_trade_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_trade_message then
    show.cross_trade_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_trade_message
    changed = true
  end
  if show.delete_order_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_delete_order_message then
    show.delete_order_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_delete_order_message
    changed = true
  end
  if show.heartbeat_response_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.imbalance_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_imbalance_message then
    show.imbalance_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_imbalance_message
    changed = true
  end
  if show.message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message then
    show.message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_header then
    show.message_header = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_unavailable_message then
    show.message_unavailable_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_unavailable_message
    changed = true
  end
  if show.modify_order_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_modify_order_message then
    show.modify_order_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_modify_order_message
    changed = true
  end
  if show.non_displayed_trade_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_non_displayed_trade_message then
    show.non_displayed_trade_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_non_displayed_trade_message
    changed = true
  end
  if show.order_execution_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_order_execution_message then
    show.order_execution_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_order_execution_message
    changed = true
  end
  if show.packet ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet then
    show.packet = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet_header then
    show.packet_header = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_header_message then
    show.refresh_header_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_request_message then
    show.refresh_request_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_request_message
    changed = true
  end
  if show.replace_order_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_replace_order_message then
    show.replace_order_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_replace_order_message
    changed = true
  end
  if show.request_response_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_request_response_message then
    show.request_response_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_request_response_message
    changed = true
  end
  if show.retail_price_improvement_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retail_price_improvement_message then
    show.retail_price_improvement_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retail_price_improvement_message
    changed = true
  end
  if show.retransmission_request_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retransmission_request_message then
    show.retransmission_request_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_security_status_message then
    show.security_status_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.source_time_reference_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_source_time_reference_message then
    show.source_time_reference_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_source_time_reference_message
    changed = true
  end
  if show.stock_summary_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_stock_summary_message then
    show.stock_summary_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_stock_summary_message
    changed = true
  end
  if show.symbol_clear_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_clear_message then
    show.symbol_clear_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.trade_cancel_message ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_trade_cancel_message then
    show.trade_cancel_message = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_trade_cancel_message
    changed = true
  end
  if show.payload ~= nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_payload then
    show.payload = nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Equities IntegratedFeed Xdp 2.3.a
-----------------------------------------------------------------------

-- Size: Total Volume
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.total_volume = 4

-- Display: Total Volume
nyse_equities_integratedfeed_xdp_v2_3_a_display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.total_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.total_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.total_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Size: Close
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.close = 4

-- Display: Close
nyse_equities_integratedfeed_xdp_v2_3_a_display.close = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.close = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.close
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.close(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.close, range, value, display)

  return offset + length, value
end

-- Size: Open
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.open = 4

-- Display: Open
nyse_equities_integratedfeed_xdp_v2_3_a_display.open = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.open = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.open
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.open(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.open, range, value, display)

  return offset + length, value
end

-- Size: Low Price
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.low_price = 4

-- Display: Low Price
nyse_equities_integratedfeed_xdp_v2_3_a_display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.low_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.low_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.low_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.high_price = 4

-- Display: High Price
nyse_equities_integratedfeed_xdp_v2_3_a_display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.high_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.high_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.high_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index = 4

-- Display: Symbol Index
nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Source Time Ns
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns = 4

-- Display: Source Time Ns
nyse_equities_integratedfeed_xdp_v2_3_a_display.source_time_ns = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.source_time_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Size: Source Time
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time = 4

-- Display: Source Time
nyse_equities_integratedfeed_xdp_v2_3_a_display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.source_time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Summary Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.stock_summary_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.high_price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.low_price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.open

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.close

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.total_volume

  return index
end

-- Display: Stock Summary Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.stock_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Summary Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.stock_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- High Price: 4 Byte Unsigned Fixed Width Integer
  index, high_price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 4 Byte Unsigned Fixed Width Integer
  index, low_price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.low_price(buffer, index, packet, parent)

  -- Open: 4 Byte Unsigned Fixed Width Integer
  index, open = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.open(buffer, index, packet, parent)

  -- Close: 4 Byte Unsigned Fixed Width Integer
  index, close = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.close(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.total_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Summary Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.stock_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_summary_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.stock_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.stock_summary_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.stock_summary_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.stock_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Db Exec Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.db_exec_id = 4

-- Display: Db Exec Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.db_exec_id = function(value)
  return "Db Exec Id: "..value
end

-- Dissect: Db Exec Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.db_exec_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.db_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.db_exec_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.db_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Printable Flag
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.printable_flag = 1

-- Display: Printable Flag
nyse_equities_integratedfeed_xdp_v2_3_a_display.printable_flag = function(value)
  if value == 0 then
    return "Printable Flag: Not Printed (0)"
  end
  if value == 1 then
    return "Printable Flag: Printed (1)"
  end

  return "Printable Flag: Unknown("..value..")"
end

-- Dissect: Printable Flag
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.printable_flag = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.printable_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.printable_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.printable_flag, range, value, display)

  return offset + length, value
end

-- Size: Volume
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume = 4

-- Display: Volume
nyse_equities_integratedfeed_xdp_v2_3_a_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price = 4

-- Display: Price
nyse_equities_integratedfeed_xdp_v2_3_a_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.trade_id = 4

-- Display: Trade Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Non Displayed Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.non_displayed_trade_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.trade_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.printable_flag

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.db_exec_id

  return index
end

-- Display: Non Displayed Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.non_displayed_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Non Displayed Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.non_displayed_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.volume(buffer, index, packet, parent)

  -- Printable Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, printable_flag = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.printable_flag(buffer, index, packet, parent)

  -- Db Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, db_exec_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.db_exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Displayed Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.non_displayed_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.non_displayed_trade_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.non_displayed_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.non_displayed_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.non_displayed_trade_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.non_displayed_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Num Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.num_parity_splits = 1

-- Display: Num Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a_display.num_parity_splits = function(value)
  return "Num Parity Splits: "..value
end

-- Dissect: Num Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.num_parity_splits = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.num_parity_splits
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.num_parity_splits(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.num_parity_splits, range, value, display)

  return offset + length, value
end

-- Size: Order Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_id = 8

-- Display: Order Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.order_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Execution Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_execution_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.trade_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.printable_flag

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.num_parity_splits

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.db_exec_id

  return index
end

-- Display: Order Execution Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.order_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Execution Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.volume(buffer, index, packet, parent)

  -- Printable Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, printable_flag = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.printable_flag(buffer, index, packet, parent)

  -- Num Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, num_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.num_parity_splits(buffer, index, packet, parent)

  -- Db Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, db_exec_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.db_exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_execution_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.order_execution_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.order_execution_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Num Extensions
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.num_extensions = 1

-- Display: Num Extensions
nyse_equities_integratedfeed_xdp_v2_3_a_display.num_extensions = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.num_extensions = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.num_extensions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.num_extensions(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Size: Freeze Status
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.freeze_status = 1

-- Display: Freeze Status
nyse_equities_integratedfeed_xdp_v2_3_a_display.freeze_status = function(value)
  if value == 0 then
    return "Freeze Status: No Imbalance Freeze (0)"
  end
  if value == 1 then
    return "Freeze Status: Imbalance Freeze (1)"
  end

  return "Freeze Status: Unknown("..value..")"
end

-- Dissect: Freeze Status
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.freeze_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.freeze_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.freeze_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Size: Auction Status
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.auction_status = 1

-- Display: Auction Status
nyse_equities_integratedfeed_xdp_v2_3_a_display.auction_status = function(value)
  if value == 0 then
    return "Auction Status: Will Run Open Close (0)"
  end
  if value == 1 then
    return "Auction Status: Will Run Interest (1)"
  end
  if value == 2 then
    return "Auction Status: Will Not Run Imbalance (2)"
  end
  if value == 3 then
    return "Auction Status: Will Not Run Transition To Closing (3)"
  end

  return "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.auction_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.auction_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.auction_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Size: Lower Collar
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.lower_collar = 4

-- Display: Lower Collar
nyse_equities_integratedfeed_xdp_v2_3_a_display.lower_collar = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.lower_collar = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.lower_collar
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.lower_collar(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Size: Upper Collar
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.upper_collar = 4

-- Display: Upper Collar
nyse_equities_integratedfeed_xdp_v2_3_a_display.upper_collar = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.upper_collar = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.upper_collar
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.upper_collar(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Size: Indicative Match Price
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.indicative_match_price = 4

-- Display: Indicative Match Price
nyse_equities_integratedfeed_xdp_v2_3_a_display.indicative_match_price = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.indicative_match_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.indicative_match_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.indicative_match_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Size: Ssr Filing Price
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_filing_price = 4

-- Display: Ssr Filing Price
nyse_equities_integratedfeed_xdp_v2_3_a_display.ssr_filing_price = function(value)
  return "Ssr Filing Price: "..value
end

-- Dissect: Ssr Filing Price
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.ssr_filing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_filing_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.ssr_filing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Size: Closing Only Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.closing_only_clearing_price = 4

-- Display: Closing Only Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a_display.closing_only_clearing_price = function(value)
  return "Closing Only Clearing Price: "..value
end

-- Dissect: Closing Only Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.closing_only_clearing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.closing_only_clearing_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.closing_only_clearing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.closing_only_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Continuous Book Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.continuous_book_clearing_price = 4

-- Display: Continuous Book Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a_display.continuous_book_clearing_price = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.continuous_book_clearing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.continuous_book_clearing_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.continuous_book_clearing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Side
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.imbalance_side = 1

-- Display: Imbalance Side
nyse_equities_integratedfeed_xdp_v2_3_a_display.imbalance_side = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.imbalance_side = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.imbalance_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.imbalance_side(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.auction_type = 1

-- Display: Auction Type
nyse_equities_integratedfeed_xdp_v2_3_a_display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Early Opening (O)"
  end
  if value == "M" then
    return "Auction Type: Core Opening (M)"
  end
  if value == "H" then
    return "Auction Type: Reopening (H)"
  end
  if value == "C" then
    return "Auction Type: Closing (C)"
  end
  if value == "R" then
    return "Auction Type: Regulatory Imbalance (R)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Auction Time
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.auction_time = 2

-- Display: Auction Time
nyse_equities_integratedfeed_xdp_v2_3_a_display.auction_time = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.auction_time = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.auction_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.auction_time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Size: Market Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.market_imbalance_qty = 4

-- Display: Market Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a_display.market_imbalance_qty = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.market_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.market_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.market_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Total Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.total_imbalance_qty = 4

-- Display: Total Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a_display.total_imbalance_qty = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.total_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.total_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.total_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Paired Qty
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.paired_qty = 4

-- Display: Paired Qty
nyse_equities_integratedfeed_xdp_v2_3_a_display.paired_qty = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.paired_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.paired_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.paired_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reference_price = 4

-- Display: Reference Price
nyse_equities_integratedfeed_xdp_v2_3_a_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reference_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Imbalance Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.imbalance_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reference_price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.paired_qty

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.total_imbalance_qty

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.market_imbalance_qty

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.auction_time

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.auction_type

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.imbalance_side

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.continuous_book_clearing_price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.closing_only_clearing_price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_filing_price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.indicative_match_price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.upper_collar

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.lower_collar

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.auction_status

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.freeze_status

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.num_extensions

  return index
end

-- Display: Imbalance Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.imbalance_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, reference_price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.reference_price(buffer, index, packet, parent)

  -- Paired Qty: 4 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.paired_qty(buffer, index, packet, parent)

  -- Total Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, total_imbalance_qty = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.total_imbalance_qty(buffer, index, packet, parent)

  -- Market Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, market_imbalance_qty = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.market_imbalance_qty(buffer, index, packet, parent)

  -- Auction Time: 2 Byte Unsigned Fixed Width Integer
  index, auction_time = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.auction_time(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 5 values
  index, auction_type = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.auction_type(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.imbalance_side(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, continuous_book_clearing_price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.continuous_book_clearing_price(buffer, index, packet, parent)

  -- Closing Only Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, closing_only_clearing_price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.closing_only_clearing_price(buffer, index, packet, parent)

  -- Ssr Filing Price: 4 Byte Unsigned Fixed Width Integer
  index, ssr_filing_price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.ssr_filing_price(buffer, index, packet, parent)

  -- Indicative Match Price: 4 Byte Unsigned Fixed Width Integer
  index, indicative_match_price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.indicative_match_price(buffer, index, packet, parent)

  -- Upper Collar: 4 Byte Unsigned Fixed Width Integer
  index, upper_collar = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.upper_collar(buffer, index, packet, parent)

  -- Lower Collar: 4 Byte Unsigned Fixed Width Integer
  index, lower_collar = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.lower_collar(buffer, index, packet, parent)

  -- Auction Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, auction_status = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.auction_status(buffer, index, packet, parent)

  -- Freeze Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, freeze_status = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.freeze_status(buffer, index, packet, parent)

  -- Num Extensions: 1 Byte Unsigned Fixed Width Integer
  index, num_extensions = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.num_extensions(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.imbalance_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.imbalance_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.imbalance_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.imbalance_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.imbalance_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.imbalance_message_fields(buffer, offset, packet, parent)
end

-- Size: Firm Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.firm_id = 5

-- Display: Firm Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.firm_id = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.firm_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.firm_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.firm_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Size: Side
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.side = 1

-- Display: Side
nyse_equities_integratedfeed_xdp_v2_3_a_display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.side = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.side(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Refresh Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.add_order_refresh_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.side

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.firm_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.num_parity_splits

  return index
end

-- Display: Add Order Refresh Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.add_order_refresh_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Refresh Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.add_order_refresh_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.volume(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.side(buffer, index, packet, parent)

  -- Firm Id: 5 Byte Ascii String
  index, firm_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.firm_id(buffer, index, packet, parent)

  -- Num Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, num_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.num_parity_splits(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Refresh Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.add_order_refresh_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_refresh_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.add_order_refresh_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.add_order_refresh_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.add_order_refresh_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.add_order_refresh_message_fields(buffer, offset, packet, parent)
end

-- Size: Rpi Indicator
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.rpi_indicator = 1

-- Display: Rpi Indicator
nyse_equities_integratedfeed_xdp_v2_3_a_display.rpi_indicator = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.rpi_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.rpi_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.rpi_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retail Price Improvement Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.retail_price_improvement_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.rpi_indicator

  return index
end

-- Display: Retail Price Improvement Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.retail_price_improvement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retail_price_improvement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index, rpi_indicator = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.rpi_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retail_price_improvement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retail_price_improvement_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.retail_price_improvement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.retail_price_improvement_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.retail_price_improvement_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retail_price_improvement_message_fields(buffer, offset, packet, parent)
end

-- Size: Cross Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_id = 4

-- Display: Cross Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.cross_id = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.cross_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Correction Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_correction_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume

  return index
end

-- Display: Cross Correction Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.cross_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Correction Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_id(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Correction Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_correction_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.cross_correction_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_correction_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Cross Type
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_type = 1

-- Display: Cross Type
nyse_equities_integratedfeed_xdp_v2_3_a_display.cross_type = function(value)
  if value == "E" then
    return "Cross Type: Early Opening (E)"
  end
  if value == "O" then
    return "Cross Type: Opening (O)"
  end
  if value == "5" then
    return "Cross Type: Reopening (5)"
  end
  if value == "6" then
    return "Cross Type: Closing (6)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_type

  return index
end

-- Display: Cross Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.cross_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.volume(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_trade_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.cross_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_trade_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancel Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.trade_id

  return index
end

-- Display: Trade Cancel Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.trade_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.trade_cancel_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.trade_cancel_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.num_parity_splits

  return index
end

-- Display: Delete Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_id(buffer, index, packet, parent)

  -- Num Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, num_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.num_parity_splits(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.delete_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.delete_order_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.delete_order_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Size: New Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.new_price_parity_splits = 1

-- Display: New Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a_display.new_price_parity_splits = function(value)
  return "New Price Parity Splits: "..value
end

-- Dissect: New Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.new_price_parity_splits = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.new_price_parity_splits
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.new_price_parity_splits(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.new_price_parity_splits, range, value, display)

  return offset + length, value
end

-- Size: Prev Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_price_parity_splits = 1

-- Display: Prev Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a_display.prev_price_parity_splits = function(value)
  return "Prev Price Parity Splits: "..value
end

-- Dissect: Prev Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.prev_price_parity_splits = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_price_parity_splits
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.prev_price_parity_splits(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_price_parity_splits, range, value, display)

  return offset + length, value
end

-- Size: New Order Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.new_order_id = 8

-- Display: New Order Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.new_order_id = function(value)
  return "New Order Id: "..value
end

-- Dissect: New Order Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.new_order_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.new_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.new_order_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.new_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replace Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.replace_order_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.new_order_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_price_parity_splits

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.new_price_parity_splits

  return index
end

-- Display: Replace Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.replace_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replace Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.replace_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_id(buffer, index, packet, parent)

  -- New Order Id: 8 Byte Unsigned Fixed Width Integer
  index, new_order_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.new_order_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.volume(buffer, index, packet, parent)

  -- Prev Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, prev_price_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.prev_price_parity_splits(buffer, index, packet, parent)

  -- New Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, new_price_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.new_price_parity_splits(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.replace_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replace_order_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.replace_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.replace_order_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.replace_order_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.replace_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Position Change
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.position_change = 1

-- Display: Position Change
nyse_equities_integratedfeed_xdp_v2_3_a_display.position_change = function(value)
  if value == 0 then
    return "Position Change: Kept (0)"
  end
  if value == 1 then
    return "Position Change: Lost (1)"
  end

  return "Position Change: Unknown("..value..")"
end

-- Dissect: Position Change
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.position_change = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.position_change
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.position_change(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.position_change, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.modify_order_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.position_change

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_price_parity_splits

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.new_price_parity_splits

  return index
end

-- Display: Modify Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.volume(buffer, index, packet, parent)

  -- Position Change: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, position_change = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.position_change(buffer, index, packet, parent)

  -- Prev Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, prev_price_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.prev_price_parity_splits(buffer, index, packet, parent)

  -- New Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, new_price_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.new_price_parity_splits(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.modify_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.modify_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.modify_order_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.modify_order_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.modify_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.add_order_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.volume

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.side

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.firm_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.num_parity_splits

  return index
end

-- Display: Add Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.add_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.add_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.volume(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.side(buffer, index, packet, parent)

  -- Firm Id: 5 Byte Ascii String
  index, firm_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.firm_id(buffer, index, packet, parent)

  -- Num Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, num_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.num_parity_splits(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.add_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.add_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.add_order_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.add_order_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.add_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.last_symbol_seq_num = 4

-- Display: Last Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_display.last_symbol_seq_num = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.last_symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.last_symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.last_symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Last Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.last_seq_num = 4

-- Display: Last Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_display.last_seq_num = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.last_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.last_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.last_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Total Refresh Pkts
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.total_refresh_pkts = 2

-- Display: Total Refresh Pkts
nyse_equities_integratedfeed_xdp_v2_3_a_display.total_refresh_pkts = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.total_refresh_pkts = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.total_refresh_pkts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.total_refresh_pkts(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Size: Current Refresh Pkt
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.current_refresh_pkt = 2

-- Display: Current Refresh Pkt
nyse_equities_integratedfeed_xdp_v2_3_a_display.current_refresh_pkt = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.current_refresh_pkt = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.current_refresh_pkt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.current_refresh_pkt(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Header Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.refresh_header_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.current_refresh_pkt

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.total_refresh_pkts

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.last_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.last_symbol_seq_num

  return index
end

-- Display: Refresh Header Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.refresh_header_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.refresh_header_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.current_refresh_pkt(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.total_refresh_pkts(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.last_seq_num(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.last_symbol_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.refresh_header_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_header_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.refresh_header_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.refresh_header_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.refresh_header_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.refresh_header_message_fields(buffer, offset, packet, parent)
end

-- Size: Session State
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.session_state = 1

-- Display: Session State
nyse_equities_integratedfeed_xdp_v2_3_a_display.session_state = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.session_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.session_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.session_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.session_state, range, value, display)

  return offset + length, value
end

-- Size: Market State
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.market_state = 1

-- Display: Market State
nyse_equities_integratedfeed_xdp_v2_3_a_display.market_state = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.market_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.market_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.market_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Size: Ssr State
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_state = 1

-- Display: Ssr State
nyse_equities_integratedfeed_xdp_v2_3_a_display.ssr_state = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.ssr_state = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.ssr_state(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Size: Time
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.time = 4

-- Display: Time
nyse_equities_integratedfeed_xdp_v2_3_a_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.time = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.time, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Volume
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_triggering_volume = 4

-- Display: Ssr Triggering Volume
nyse_equities_integratedfeed_xdp_v2_3_a_display.ssr_triggering_volume = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.ssr_triggering_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_triggering_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.ssr_triggering_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Exchange Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_triggering_exchange_id = 1

-- Display: Ssr Triggering Exchange Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.ssr_triggering_exchange_id = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.ssr_triggering_exchange_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_triggering_exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.ssr_triggering_exchange_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Size: Price 2
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_2 = 4

-- Display: Price 2
nyse_equities_integratedfeed_xdp_v2_3_a_display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.price_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_2, range, value, display)

  return offset + length, value
end

-- Size: Price 1
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_1 = 4

-- Display: Price 1
nyse_equities_integratedfeed_xdp_v2_3_a_display.price_1 = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.price_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_1, range, value, display)

  return offset + length, value
end

-- Size: Reserved 4
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reserved_4 = 4

-- Display: Reserved 4
nyse_equities_integratedfeed_xdp_v2_3_a_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Halt Condition
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.halt_condition = 1

-- Display: Halt Condition
nyse_equities_integratedfeed_xdp_v2_3_a_display.halt_condition = function(value)
  if value == "~" then
    return "Halt Condition: Security Not Delayedhalted (~)"
  end
  if value == " " then
    return "Halt Condition: Not Delayedhalted Nyse Tape A Only (<whitespace>)"
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
  if value == "S" then
    return "Halt Condition: Related Security Not Used (S)"
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.halt_condition = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.halt_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Status
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.security_status = 1

-- Display: Security Status
nyse_equities_integratedfeed_xdp_v2_3_a_display.security_status = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.security_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.security_status_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.security_status

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.halt_condition

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reserved_4

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_1

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_2

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_triggering_exchange_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_triggering_volume

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.time

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.ssr_state

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.market_state

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.session_state

  return index
end

-- Display: Security Status Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.security_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index, security_status = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 12 values
  index, halt_condition = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.reserved_4(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price_1(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price_2(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 18 values
  index, ssr_triggering_exchange_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.ssr_triggering_exchange_id(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.ssr_triggering_volume(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.time(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index, ssr_state = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.ssr_state(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.market_state(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String
  index, session_state = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.session_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.security_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_status_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.security_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.security_status_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_status_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.security_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Next Source Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.next_source_seq_num = 4

-- Display: Next Source Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_display.next_source_seq_num = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.next_source_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.next_source_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.next_source_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Clear Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_clear_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.next_source_seq_num

  return index
end

-- Display: Symbol Clear Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.next_source_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_clear_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_clear_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_clear_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_clear_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: Channel Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.channel_id = 1

-- Display: Channel Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.product_id = 1

-- Display: Product Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.product_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.product_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: End Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.end_seq_num = 4

-- Display: End Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_display.end_seq_num = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.end_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.end_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.end_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Begin Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.begin_seq_num = 4

-- Display: Begin Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_display.begin_seq_num = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.begin_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.begin_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.begin_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Unavailable Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_unavailable_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.begin_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.end_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.product_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.channel_id

  return index
end

-- Display: Message Unavailable Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.message_unavailable_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_unavailable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.end_seq_num(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_unavailable_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_unavailable_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_unavailable_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.message_unavailable_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_unavailable_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_unavailable_message_fields(buffer, offset, packet, parent)
end

-- Size: Source Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_id = 10

-- Display: Source Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.source_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.refresh_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.product_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.channel_id

  return index
end

-- Display: Refresh Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.refresh_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.refresh_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.refresh_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_request_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.refresh_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.refresh_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.refresh_request_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.refresh_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Retransmit Method
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.retransmit_method = 1

-- Display: Retransmit Method
nyse_equities_integratedfeed_xdp_v2_3_a_display.retransmit_method = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retransmit_method = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.retransmit_method
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.retransmit_method(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index_mapping_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.product_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.channel_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.retransmit_method

  return index
end

-- Display: Symbol Index Mapping Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_index_mapping_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index_mapping_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.channel_id(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, retransmit_method = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retransmit_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index_mapping_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_index_mapping_request_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index_mapping_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_index_mapping_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index_mapping_request_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat Response Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.heartbeat_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_id

  return index
end

-- Display: Heartbeat Response Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.heartbeat_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.heartbeat_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.heartbeat_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat_response_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.heartbeat_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.heartbeat_response_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.heartbeat_response_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Status
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.status = 1

-- Display: Status
nyse_equities_integratedfeed_xdp_v2_3_a_display.status = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.status = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.status, range, value, display)

  return offset + length, value
end

-- Size: Request Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.request_seq_num = 4

-- Display: Request Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_display.request_seq_num = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.request_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.request_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.request_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Response Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.request_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.request_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.begin_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.end_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.product_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.channel_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.status

  return index
end

-- Display: Request Response Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.request_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.request_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.request_seq_num(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.channel_id(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 10 values
  index, status = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.request_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_response_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.request_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.request_response_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.request_response_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.request_response_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Retransmission Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.retransmission_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.begin_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.end_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.product_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.channel_id

  return index
end

-- Display: Retransmission Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.retransmission_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retransmission_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retransmission_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmission_request_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.retransmission_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.retransmission_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.retransmission_request_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retransmission_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 2
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reserved_2 = 2

-- Display: Reserved 2
nyse_equities_integratedfeed_xdp_v2_3_a_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reserved_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Trade
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.unit_of_trade = 2

-- Display: Unit Of Trade
nyse_equities_integratedfeed_xdp_v2_3_a_display.unit_of_trade = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.unit_of_trade = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.unit_of_trade
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.unit_of_trade(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Size: Mpv
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.mpv = 2

-- Display: Mpv
nyse_equities_integratedfeed_xdp_v2_3_a_display.mpv = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.mpv = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.mpv
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.mpv(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Round Lot
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.round_lot = 1

-- Display: Round Lot
nyse_equities_integratedfeed_xdp_v2_3_a_display.round_lot = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.round_lot = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.round_lot
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.round_lot(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Size: Price Resolution
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_resolution = 1

-- Display: Price Resolution
nyse_equities_integratedfeed_xdp_v2_3_a_display.price_resolution = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price_resolution = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_resolution
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Volume
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_close_volume = 4

-- Display: Prev Close Volume
nyse_equities_integratedfeed_xdp_v2_3_a_display.prev_close_volume = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.prev_close_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_close_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.prev_close_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Price
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_close_price = 4

-- Display: Prev Close Price
nyse_equities_integratedfeed_xdp_v2_3_a_display.prev_close_price = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.prev_close_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_close_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.prev_close_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.lot_size = 2

-- Display: Lot Size
nyse_equities_integratedfeed_xdp_v2_3_a_display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.lot_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.lot_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Security Type
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.security_type = 1

-- Display: Security Type
nyse_equities_integratedfeed_xdp_v2_3_a_display.security_type = function(value)
  if value == "A" then
    return "Security Type: Common Stock (A)"
  end
  if value == "B" then
    return "Security Type: Preferred Stock (B)"
  end
  if value == "C" then
    return "Security Type: Warrant (C)"
  end
  if value == "D" then
    return "Security Type: Right (D)"
  end
  if value == "E" then
    return "Security Type: Corporate Bond (E)"
  end
  if value == "F" then
    return "Security Type: Treasury Bond (F)"
  end
  if value == "G" then
    return "Security Type: Structured Product (G)"
  end
  if value == "H" then
    return "Security Type: Adr Common (H)"
  end
  if value == "I" then
    return "Security Type: Adr Preferred (I)"
  end
  if value == "J" then
    return "Security Type: Adr Warrants (J)"
  end
  if value == "K" then
    return "Security Type: Adr Rights (K)"
  end
  if value == "L" then
    return "Security Type: Adr Corporate Bond (L)"
  end
  if value == "M" then
    return "Security Type: Ny Registered Share (M)"
  end
  if value == "N" then
    return "Security Type: Global Registered Share (N)"
  end
  if value == "O" then
    return "Security Type: Index (O)"
  end
  if value == "P" then
    return "Security Type: Fund (P)"
  end
  if value == "Q" then
    return "Security Type: Basket (Q)"
  end
  if value == "R" then
    return "Security Type: Unit (R)"
  end
  if value == "S" then
    return "Security Type: Liquidating Trust (S)"
  end
  if value == "U" then
    return "Security Type: Unknown (U)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.security_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Price Scale Code
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_scale_code = 1

-- Display: Price Scale Code
nyse_equities_integratedfeed_xdp_v2_3_a_display.price_scale_code = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price_scale_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_scale_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.exchange_code = 1

-- Display: Exchange Code
nyse_equities_integratedfeed_xdp_v2_3_a_display.exchange_code = function(value)
  if value == "A" then
    return "Exchange Code: Nyse American (A)"
  end
  if value == "C" then
    return "Exchange Code: Nyse National (C)"
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
    return "Exchange Code: Bats (Z)"
  end
  if value == "B" then
    return "Exchange Code: Global Otc (B)"
  end
  if value == "U" then
    return "Exchange Code: Otcbb (U)"
  end
  if value == "V" then
    return "Exchange Code: Other Otc (V)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.exchange_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Size: System Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.system_id = 1

-- Display: System Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.system_id = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.system_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.system_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.system_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.system_id, range, value, display)

  return offset + length, value
end

-- Size: Market Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.market_id = 2

-- Display: Market Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.market_id = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.market_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reserved_1 = 1

-- Display: Reserved 1
nyse_equities_integratedfeed_xdp_v2_3_a_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Symbol
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol = 11

-- Display: Symbol
nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index_mapping_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reserved_1

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.market_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.system_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.exchange_code

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_scale_code

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.security_type

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.lot_size

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_close_price

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.prev_close_volume

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.price_resolution

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.round_lot

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.mpv

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.unit_of_trade

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.reserved_2

  return index
end

-- Display: Symbol Index Mapping Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_index_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.reserved_1(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, market_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 10 values
  index, exchange_code = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.exchange_code(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price_scale_code(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 20 values
  index, security_type = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.security_type(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.lot_size(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.prev_close_price(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.prev_close_volume(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
  index, round_lot = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.round_lot(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.mpv(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.unit_of_trade(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_index_mapping_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index_mapping_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.symbol_index_mapping_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index_mapping_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
end

-- Size: Id
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.id = 4

-- Display: Id
nyse_equities_integratedfeed_xdp_v2_3_a_display.id = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.id = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Source Time Reference Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_reference_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_seq_num

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time

  return index
end

-- Display: Source Time Reference Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.source_time_reference_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.id(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.source_time_reference_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_reference_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.source_time_reference_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time_reference_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_reference_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sequence Number Reset Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_ns

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.product_id

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.channel_id

  return index
end

-- Display: Sequence Number Reset Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.sequence_number_reset_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequence_number_reset_message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.sequence_number_reset_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.sequence_number_reset_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.sequence_number_reset_message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.payload = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.sequence_number_reset_message(buffer, offset)
  end
  -- Size of Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.source_time_reference_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index_mapping_message(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.retransmission_request_message(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.request_response_message(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.heartbeat_response_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_index_mapping_request_message(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.refresh_request_message(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_unavailable_message(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.symbol_clear_message(buffer, offset)
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.security_status_message(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.refresh_header_message(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == 100 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.add_order_message(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == 101 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.modify_order_message(buffer, offset)
  end
  -- Size of Replace Order Message
  if message_type == 104 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.replace_order_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 102 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.delete_order_message(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == 112 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.trade_cancel_message(buffer, offset)
  end
  -- Size of Cross Trade Message
  if message_type == 111 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_trade_message(buffer, offset)
  end
  -- Size of Cross Correction Message
  if message_type == 113 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.cross_correction_message(buffer, offset)
  end
  -- Size of Retail Price Improvement Message
  if message_type == 114 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.retail_price_improvement_message(buffer, offset)
  end
  -- Size of Add Order Refresh Message
  if message_type == 106 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.add_order_refresh_message(buffer, offset)
  end
  -- Size of Imbalance Message
  if message_type == 105 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.imbalance_message(buffer, offset)
  end
  -- Size of Order Execution Message
  if message_type == 103 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.order_execution_message(buffer, offset)
  end
  -- Size of Non Displayed Trade Message
  if message_type == 110 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.non_displayed_trade_message(buffer, offset)
  end
  -- Size of Stock Summary Message
  if message_type == 223 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_size_of.stock_summary_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_equities_integratedfeed_xdp_v2_3_a_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.source_time_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retransmission_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.request_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.heartbeat_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_index_mapping_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.refresh_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_unavailable_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 100 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.add_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 101 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if message_type == 104 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.replace_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 102 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == 112 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == 111 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Correction Message
  if message_type == 113 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.cross_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if message_type == 114 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.retail_price_improvement_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Refresh Message
  if message_type == 106 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.add_order_refresh_message(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.imbalance_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 103 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.order_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Non Displayed Trade Message
  if message_type == 110 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.non_displayed_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Summary Message
  if message_type == 223 then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.stock_summary_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.payload(buffer, packet, parent)
  local element = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.payload, range, display)

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_type = 2

-- Display: Message Type
nyse_equities_integratedfeed_xdp_v2_3_a_display.message_type = function(value)
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
  if value == 104 then
    return "Message Type: Replace Order Message (104)"
  end
  if value == 102 then
    return "Message Type: Delete Order Message (102)"
  end
  if value == 112 then
    return "Message Type: Trade Cancel Message (112)"
  end
  if value == 111 then
    return "Message Type: Cross Trade Message (111)"
  end
  if value == 113 then
    return "Message Type: Cross Correction Message (113)"
  end
  if value == 114 then
    return "Message Type: Retail Price Improvement Message (114)"
  end
  if value == 106 then
    return "Message Type: Add Order Refresh Message (106)"
  end
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end
  if value == 103 then
    return "Message Type: Order Execution Message (103)"
  end
  if value == 110 then
    return "Message Type: Non Displayed Trade Message (110)"
  end
  if value == 223 then
    return "Message Type: Stock Summary Message (223)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_size = 2

-- Display: Message Size
nyse_equities_integratedfeed_xdp_v2_3_a_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.message_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_size

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_type

  return index
end

-- Display: Message Header
nyse_equities_integratedfeed_xdp_v2_3_a_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_header, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nyse_equities_integratedfeed_xdp_v2_3_a_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.message(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Nanoseconds
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.nanoseconds = 4

-- Display: Nanoseconds
nyse_equities_integratedfeed_xdp_v2_3_a_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.timestamp = 4

-- Display: Timestamp
nyse_equities_integratedfeed_xdp_v2_3_a_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.sequence_number = 4

-- Display: Sequence Number
nyse_equities_integratedfeed_xdp_v2_3_a_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Count
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_count = 1

-- Display: Message Count
nyse_equities_integratedfeed_xdp_v2_3_a_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.delivery_flag = 1

-- Display: Delivery Flag
nyse_equities_integratedfeed_xdp_v2_3_a_display.delivery_flag = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.delivery_flag = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.delivery_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.packet_size = 2

-- Display: Packet Size
nyse_equities_integratedfeed_xdp_v2_3_a_display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.packet_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.packet_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.packet_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nyse_equities_integratedfeed_xdp_v2_3_a_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.packet_size

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.delivery_flag

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.message_count

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.sequence_number

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.timestamp

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a_size_of.nanoseconds

  return index
end

-- Display: Packet Header
nyse_equities_integratedfeed_xdp_v2_3_a_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a_display.packet_header(buffer, packet, parent)
    parent = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet_header, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
nyse_equities_integratedfeed_xdp_v2_3_a_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = nyse_equities_integratedfeed_xdp_v2_3_a_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_equities_integratedfeed_xdp_v2_3_a.init()
end

-- Dissector for Nyse Equities IntegratedFeed Xdp 2.3.a
function nyse_equities_integratedfeed_xdp_v2_3_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_equities_integratedfeed_xdp_v2_3_a.name

  -- Dissect protocol
  local protocol = parent:add(nyse_equities_integratedfeed_xdp_v2_3_a, buffer(), nyse_equities_integratedfeed_xdp_v2_3_a.description, "("..buffer:len().." Bytes)")
  return nyse_equities_integratedfeed_xdp_v2_3_a_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_equities_integratedfeed_xdp_v2_3_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_equities_integratedfeed_xdp_v2_3_a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities IntegratedFeed Xdp 2.3.a
local function nyse_equities_integratedfeed_xdp_v2_3_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_equities_integratedfeed_xdp_v2_3_a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_equities_integratedfeed_xdp_v2_3_a
  nyse_equities_integratedfeed_xdp_v2_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities IntegratedFeed Xdp 2.3.a
nyse_equities_integratedfeed_xdp_v2_3_a:register_heuristic("udp", nyse_equities_integratedfeed_xdp_v2_3_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.3.a
--   Date: Friday, October 25, 2019
--   Specification: XDP_Integrated_Feed_Client_Specification_v2.3a.pdf
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
