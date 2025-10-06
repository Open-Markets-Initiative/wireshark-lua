-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities IntegratedFeed Xdp 2.3.a Protocol
local omi_nyse_equities_integratedfeed_xdp_v2_3_a = Proto("Nyse.Equities.IntegratedFeed.Xdp.v2.3.a.Lua", "Nyse Equities IntegratedFeed Xdp 2.3.a")

-- Protocol table
local nyse_equities_integratedfeed_xdp_v2_3_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities IntegratedFeed Xdp 2.3.a Fields
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.add_order_message = ProtoField.new("Add Order Message", "nyse.equities.integratedfeed.xdp.v2.3.a.addordermessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.add_order_refresh_message = ProtoField.new("Add Order Refresh Message", "nyse.equities.integratedfeed.xdp.v2.3.a.addorderrefreshmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_status = ProtoField.new("Auction Status", "nyse.equities.integratedfeed.xdp.v2.3.a.auctionstatus", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_time = ProtoField.new("Auction Time", "nyse.equities.integratedfeed.xdp.v2.3.a.auctiontime", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_type = ProtoField.new("Auction Type", "nyse.equities.integratedfeed.xdp.v2.3.a.auctiontype", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.beginseqnum", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.equities.integratedfeed.xdp.v2.3.a.channelid", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.close = ProtoField.new("Close", "nyse.equities.integratedfeed.xdp.v2.3.a.close", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.closing_only_clearing_price = ProtoField.new("Closing Only Clearing Price", "nyse.equities.integratedfeed.xdp.v2.3.a.closingonlyclearingprice", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.equities.integratedfeed.xdp.v2.3.a.continuousbookclearingprice", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_correction_message = ProtoField.new("Cross Correction Message", "nyse.equities.integratedfeed.xdp.v2.3.a.crosscorrectionmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_id = ProtoField.new("Cross Id", "nyse.equities.integratedfeed.xdp.v2.3.a.crossid", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nyse.equities.integratedfeed.xdp.v2.3.a.crosstrademessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_type = ProtoField.new("Cross Type", "nyse.equities.integratedfeed.xdp.v2.3.a.crosstype", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.equities.integratedfeed.xdp.v2.3.a.currentrefreshpkt", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.db_exec_id = ProtoField.new("Db Exec Id", "nyse.equities.integratedfeed.xdp.v2.3.a.dbexecid", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.delete_order_message = ProtoField.new("Delete Order Message", "nyse.equities.integratedfeed.xdp.v2.3.a.deleteordermessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.integratedfeed.xdp.v2.3.a.deliveryflag", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.endseqnum", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.equities.integratedfeed.xdp.v2.3.a.exchangecode", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.firm_id = ProtoField.new("Firm Id", "nyse.equities.integratedfeed.xdp.v2.3.a.firmid", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.freeze_status = ProtoField.new("Freeze Status", "nyse.equities.integratedfeed.xdp.v2.3.a.freezestatus", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.equities.integratedfeed.xdp.v2.3.a.haltcondition", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.equities.integratedfeed.xdp.v2.3.a.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.high_price = ProtoField.new("High Price", "nyse.equities.integratedfeed.xdp.v2.3.a.highprice", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.id = ProtoField.new("Id", "nyse.equities.integratedfeed.xdp.v2.3.a.id", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.equities.integratedfeed.xdp.v2.3.a.imbalancemessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.equities.integratedfeed.xdp.v2.3.a.imbalanceside", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.equities.integratedfeed.xdp.v2.3.a.indicativematchprice", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.lastseqnum", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.lot_size = ProtoField.new("Lot Size", "nyse.equities.integratedfeed.xdp.v2.3.a.lotsize", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.low_price = ProtoField.new("Low Price", "nyse.equities.integratedfeed.xdp.v2.3.a.lowprice", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.equities.integratedfeed.xdp.v2.3.a.lowercollar", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_id = ProtoField.new("Market Id", "nyse.equities.integratedfeed.xdp.v2.3.a.marketid", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.equities.integratedfeed.xdp.v2.3.a.marketimbalanceqty", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_state = ProtoField.new("Market State", "nyse.equities.integratedfeed.xdp.v2.3.a.marketstate", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message = ProtoField.new("Message", "nyse.equities.integratedfeed.xdp.v2.3.a.message", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_count = ProtoField.new("Message Count", "nyse.equities.integratedfeed.xdp.v2.3.a.messagecount", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_header = ProtoField.new("Message Header", "nyse.equities.integratedfeed.xdp.v2.3.a.messageheader", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_size = ProtoField.new("Message Size", "nyse.equities.integratedfeed.xdp.v2.3.a.messagesize", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_type = ProtoField.new("Message Type", "nyse.equities.integratedfeed.xdp.v2.3.a.messagetype", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.equities.integratedfeed.xdp.v2.3.a.messageunavailablemessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.modify_order_message = ProtoField.new("Modify Order Message", "nyse.equities.integratedfeed.xdp.v2.3.a.modifyordermessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.mpv = ProtoField.new("Mpv", "nyse.equities.integratedfeed.xdp.v2.3.a.mpv", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.integratedfeed.xdp.v2.3.a.nanoseconds", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.new_order_id = ProtoField.new("New Order Id", "nyse.equities.integratedfeed.xdp.v2.3.a.neworderid", ftypes.UINT64)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.new_price_parity_splits = ProtoField.new("New Price Parity Splits", "nyse.equities.integratedfeed.xdp.v2.3.a.newpriceparitysplits", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.nextsourceseqnum", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.non_displayed_trade_message = ProtoField.new("Non Displayed Trade Message", "nyse.equities.integratedfeed.xdp.v2.3.a.nondisplayedtrademessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.num_extensions = ProtoField.new("Num Extensions", "nyse.equities.integratedfeed.xdp.v2.3.a.numextensions", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.num_parity_splits = ProtoField.new("Num Parity Splits", "nyse.equities.integratedfeed.xdp.v2.3.a.numparitysplits", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.open = ProtoField.new("Open", "nyse.equities.integratedfeed.xdp.v2.3.a.open", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.order_execution_message = ProtoField.new("Order Execution Message", "nyse.equities.integratedfeed.xdp.v2.3.a.orderexecutionmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.order_id = ProtoField.new("Order Id", "nyse.equities.integratedfeed.xdp.v2.3.a.orderid", ftypes.UINT64)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet = ProtoField.new("Packet", "nyse.equities.integratedfeed.xdp.v2.3.a.packet", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.integratedfeed.xdp.v2.3.a.packetheader", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.integratedfeed.xdp.v2.3.a.packetsize", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.equities.integratedfeed.xdp.v2.3.a.pairedqty", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.payload = ProtoField.new("Payload", "nyse.equities.integratedfeed.xdp.v2.3.a.payload", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.position_change = ProtoField.new("Position Change", "nyse.equities.integratedfeed.xdp.v2.3.a.positionchange", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.equities.integratedfeed.xdp.v2.3.a.prevcloseprice", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.equities.integratedfeed.xdp.v2.3.a.prevclosevolume", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_price_parity_splits = ProtoField.new("Prev Price Parity Splits", "nyse.equities.integratedfeed.xdp.v2.3.a.prevpriceparitysplits", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price = ProtoField.new("Price", "nyse.equities.integratedfeed.xdp.v2.3.a.price", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_1 = ProtoField.new("Price 1", "nyse.equities.integratedfeed.xdp.v2.3.a.price1", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_2 = ProtoField.new("Price 2", "nyse.equities.integratedfeed.xdp.v2.3.a.price2", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.equities.integratedfeed.xdp.v2.3.a.priceresolution", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.equities.integratedfeed.xdp.v2.3.a.pricescalecode", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.printable_flag = ProtoField.new("Printable Flag", "nyse.equities.integratedfeed.xdp.v2.3.a.printableflag", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.product_id = ProtoField.new("Product Id", "nyse.equities.integratedfeed.xdp.v2.3.a.productid", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.reference_price = ProtoField.new("Reference Price", "nyse.equities.integratedfeed.xdp.v2.3.a.referenceprice", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.equities.integratedfeed.xdp.v2.3.a.refreshheadermessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.equities.integratedfeed.xdp.v2.3.a.refreshrequestmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.replace_order_message = ProtoField.new("Replace Order Message", "nyse.equities.integratedfeed.xdp.v2.3.a.replaceordermessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.equities.integratedfeed.xdp.v2.3.a.requestresponsemessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.requestseqnum", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.equities.integratedfeed.xdp.v2.3.a.reserved1", ftypes.BYTES)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.equities.integratedfeed.xdp.v2.3.a.reserved2", ftypes.BYTES)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.equities.integratedfeed.xdp.v2.3.a.reserved4", ftypes.BYTES)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "nyse.equities.integratedfeed.xdp.v2.3.a.retailpriceimprovementmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.equities.integratedfeed.xdp.v2.3.a.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.equities.integratedfeed.xdp.v2.3.a.retransmitmethod", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.round_lot = ProtoField.new("Round Lot", "nyse.equities.integratedfeed.xdp.v2.3.a.roundlot", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.equities.integratedfeed.xdp.v2.3.a.rpiindicator", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_status = ProtoField.new("Security Status", "nyse.equities.integratedfeed.xdp.v2.3.a.securitystatus", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.equities.integratedfeed.xdp.v2.3.a.securitystatusmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_type = ProtoField.new("Security Type", "nyse.equities.integratedfeed.xdp.v2.3.a.securitytype", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.integratedfeed.xdp.v2.3.a.sequencenumber", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.equities.integratedfeed.xdp.v2.3.a.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.session_state = ProtoField.new("Session State", "nyse.equities.integratedfeed.xdp.v2.3.a.sessionstate", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.side = ProtoField.new("Side", "nyse.equities.integratedfeed.xdp.v2.3.a.side", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_id = ProtoField.new("Source Id", "nyse.equities.integratedfeed.xdp.v2.3.a.sourceid", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time = ProtoField.new("Source Time", "nyse.equities.integratedfeed.xdp.v2.3.a.sourcetime", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.integratedfeed.xdp.v2.3.a.sourcetimens", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.equities.integratedfeed.xdp.v2.3.a.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.equities.integratedfeed.xdp.v2.3.a.ssrfilingprice", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_state = ProtoField.new("Ssr State", "nyse.equities.integratedfeed.xdp.v2.3.a.ssrstate", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.equities.integratedfeed.xdp.v2.3.a.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.equities.integratedfeed.xdp.v2.3.a.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.status = ProtoField.new("Status", "nyse.equities.integratedfeed.xdp.v2.3.a.status", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.stock_summary_message = ProtoField.new("Stock Summary Message", "nyse.equities.integratedfeed.xdp.v2.3.a.stocksummarymessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol = ProtoField.new("Symbol", "nyse.equities.integratedfeed.xdp.v2.3.a.symbol", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolclearmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolindex", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.integratedfeed.xdp.v2.3.a.symbolseqnum", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.system_id = ProtoField.new("System Id", "nyse.equities.integratedfeed.xdp.v2.3.a.systemid", ftypes.UINT8)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.time = ProtoField.new("Time", "nyse.equities.integratedfeed.xdp.v2.3.a.time", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.integratedfeed.xdp.v2.3.a.timestamp", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.equities.integratedfeed.xdp.v2.3.a.totalimbalanceqty", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.equities.integratedfeed.xdp.v2.3.a.totalrefreshpkts", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_volume = ProtoField.new("Total Volume", "nyse.equities.integratedfeed.xdp.v2.3.a.totalvolume", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "nyse.equities.integratedfeed.xdp.v2.3.a.tradecancelmessage", ftypes.STRING)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.equities.integratedfeed.xdp.v2.3.a.tradeid", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.equities.integratedfeed.xdp.v2.3.a.unitoftrade", ftypes.UINT16)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.equities.integratedfeed.xdp.v2.3.a.uppercollar", ftypes.UINT32)
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.volume = ProtoField.new("Volume", "nyse.equities.integratedfeed.xdp.v2.3.a.volume", ftypes.UINT32)

-- Nyse Equities IntegratedFeed Xdp 2.3.a generated fields
omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_index = ProtoField.new("Message Index", "nyse.equities.integratedfeed.xdp.v2.3.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_refresh_message = Pref.bool("Show Add Order Refresh Message", show.add_order_refresh_message, "Parse and add Add Order Refresh Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_correction_message = Pref.bool("Show Cross Correction Message", show.cross_correction_message, "Parse and add Cross Correction Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_imbalance_message = Pref.bool("Show Imbalance Message", show.imbalance_message, "Parse and add Imbalance Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_non_displayed_trade_message = Pref.bool("Show Non Displayed Trade Message", show.non_displayed_trade_message, "Parse and add Non Displayed Trade Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_order_execution_message = Pref.bool("Show Order Execution Message", show.order_execution_message, "Parse and add Order Execution Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retail_price_improvement_message = Pref.bool("Show Retail Price Improvement Message", show.retail_price_improvement_message, "Parse and add Retail Price Improvement Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_source_time_reference_message = Pref.bool("Show Source Time Reference Message", show.source_time_reference_message, "Parse and add Source Time Reference Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_stock_summary_message = Pref.bool("Show Stock Summary Message", show.stock_summary_message, "Parse and add Stock Summary Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_message then
    show.add_order_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_message
    changed = true
  end
  if show.add_order_refresh_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_refresh_message then
    show.add_order_refresh_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_add_order_refresh_message
    changed = true
  end
  if show.cross_correction_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_correction_message then
    show.cross_correction_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_correction_message
    changed = true
  end
  if show.cross_trade_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_trade_message then
    show.cross_trade_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_cross_trade_message
    changed = true
  end
  if show.delete_order_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_delete_order_message then
    show.delete_order_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_delete_order_message
    changed = true
  end
  if show.heartbeat_response_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.imbalance_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_imbalance_message then
    show.imbalance_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_imbalance_message
    changed = true
  end
  if show.message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message then
    show.message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_header then
    show.message_header = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_unavailable_message then
    show.message_unavailable_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_message_unavailable_message
    changed = true
  end
  if show.modify_order_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_modify_order_message then
    show.modify_order_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_modify_order_message
    changed = true
  end
  if show.non_displayed_trade_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_non_displayed_trade_message then
    show.non_displayed_trade_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_non_displayed_trade_message
    changed = true
  end
  if show.order_execution_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_order_execution_message then
    show.order_execution_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_order_execution_message
    changed = true
  end
  if show.packet ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet then
    show.packet = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet_header then
    show.packet_header = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_header_message then
    show.refresh_header_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_request_message then
    show.refresh_request_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_refresh_request_message
    changed = true
  end
  if show.replace_order_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_replace_order_message then
    show.replace_order_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_replace_order_message
    changed = true
  end
  if show.request_response_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_request_response_message then
    show.request_response_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_request_response_message
    changed = true
  end
  if show.retail_price_improvement_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retail_price_improvement_message then
    show.retail_price_improvement_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retail_price_improvement_message
    changed = true
  end
  if show.retransmission_request_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retransmission_request_message then
    show.retransmission_request_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_security_status_message then
    show.security_status_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.source_time_reference_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_source_time_reference_message then
    show.source_time_reference_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_source_time_reference_message
    changed = true
  end
  if show.stock_summary_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_stock_summary_message then
    show.stock_summary_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_stock_summary_message
    changed = true
  end
  if show.symbol_clear_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_clear_message then
    show.symbol_clear_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_trade_cancel_message
    changed = true
  end
  if show.payload ~= omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_payload then
    show.payload = omi_nyse_equities_integratedfeed_xdp_v2_3_a.prefs.show_payload
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

-- Total Volume
nyse_equities_integratedfeed_xdp_v2_3_a.total_volume = {}

-- Size Of: Total Volume
nyse_equities_integratedfeed_xdp_v2_3_a.total_volume.size = 4

-- Display: Total Volume
nyse_equities_integratedfeed_xdp_v2_3_a.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_equities_integratedfeed_xdp_v2_3_a.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Close
nyse_equities_integratedfeed_xdp_v2_3_a.close = {}

-- Size Of: Close
nyse_equities_integratedfeed_xdp_v2_3_a.close.size = 4

-- Display: Close
nyse_equities_integratedfeed_xdp_v2_3_a.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_equities_integratedfeed_xdp_v2_3_a.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.close, range, value, display)

  return offset + length, value
end

-- Open
nyse_equities_integratedfeed_xdp_v2_3_a.open = {}

-- Size Of: Open
nyse_equities_integratedfeed_xdp_v2_3_a.open.size = 4

-- Display: Open
nyse_equities_integratedfeed_xdp_v2_3_a.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_equities_integratedfeed_xdp_v2_3_a.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.open.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.open, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_equities_integratedfeed_xdp_v2_3_a.low_price = {}

-- Size Of: Low Price
nyse_equities_integratedfeed_xdp_v2_3_a.low_price.size = 4

-- Display: Low Price
nyse_equities_integratedfeed_xdp_v2_3_a.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_equities_integratedfeed_xdp_v2_3_a.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.low_price, range, value, display)

  return offset + length, value
end

-- High Price
nyse_equities_integratedfeed_xdp_v2_3_a.high_price = {}

-- Size Of: High Price
nyse_equities_integratedfeed_xdp_v2_3_a.high_price.size = 4

-- Display: High Price
nyse_equities_integratedfeed_xdp_v2_3_a.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_equities_integratedfeed_xdp_v2_3_a.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.high_price, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index = {}

-- Size Of: Symbol Index
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size = 4

-- Display: Symbol Index
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns = {}

-- Size Of: Source Time Ns
nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_equities_integratedfeed_xdp_v2_3_a.source_time = {}

-- Size Of: Source Time
nyse_equities_integratedfeed_xdp_v2_3_a.source_time.size = 4

-- Display: Source Time
nyse_equities_integratedfeed_xdp_v2_3_a.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_equities_integratedfeed_xdp_v2_3_a.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Stock Summary Message
nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message = {}

-- Size Of: Stock Summary Message
nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.high_price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.low_price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.open.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.close.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.total_volume.size;

-- Display: Stock Summary Message
nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Summary Message
nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- High Price: 4 Byte Unsigned Fixed Width Integer
  index, high_price = nyse_equities_integratedfeed_xdp_v2_3_a.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: 4 Byte Unsigned Fixed Width Integer
  index, low_price = nyse_equities_integratedfeed_xdp_v2_3_a.low_price.dissect(buffer, index, packet, parent)

  -- Open: 4 Byte Unsigned Fixed Width Integer
  index, open = nyse_equities_integratedfeed_xdp_v2_3_a.open.dissect(buffer, index, packet, parent)

  -- Close: 4 Byte Unsigned Fixed Width Integer
  index, close = nyse_equities_integratedfeed_xdp_v2_3_a.close.dissect(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_equities_integratedfeed_xdp_v2_3_a.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Summary Message
nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.stock_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.stock_summary_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Db Exec Id
nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id = {}

-- Size Of: Db Exec Id
nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id.size = 4

-- Display: Db Exec Id
nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id.display = function(value)
  return "Db Exec Id: "..value
end

-- Dissect: Db Exec Id
nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.db_exec_id, range, value, display)

  return offset + length, value
end

-- Printable Flag
nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag = {}

-- Size Of: Printable Flag
nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag.size = 1

-- Display: Printable Flag
nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag.display = function(value)
  if value == 0 then
    return "Printable Flag: Not Printed (0)"
  end
  if value == 1 then
    return "Printable Flag: Printed (1)"
  end

  return "Printable Flag: Unknown("..value..")"
end

-- Dissect: Printable Flag
nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.printable_flag, range, value, display)

  return offset + length, value
end

-- Volume
nyse_equities_integratedfeed_xdp_v2_3_a.volume = {}

-- Size Of: Volume
nyse_equities_integratedfeed_xdp_v2_3_a.volume.size = 4

-- Display: Volume
nyse_equities_integratedfeed_xdp_v2_3_a.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_equities_integratedfeed_xdp_v2_3_a.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_equities_integratedfeed_xdp_v2_3_a.price = {}

-- Size Of: Price
nyse_equities_integratedfeed_xdp_v2_3_a.price.size = 4

-- Display: Price
nyse_equities_integratedfeed_xdp_v2_3_a.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_equities_integratedfeed_xdp_v2_3_a.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_equities_integratedfeed_xdp_v2_3_a.trade_id = {}

-- Size Of: Trade Id
nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.size = 4

-- Display: Trade Id
nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num = {}

-- Size Of: Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Non Displayed Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message = {}

-- Size Of: Non Displayed Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.volume.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id.size;

-- Display: Non Displayed Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Non Displayed Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a.volume.dissect(buffer, index, packet, parent)

  -- Printable Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, printable_flag = nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag.dissect(buffer, index, packet, parent)

  -- Db Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, db_exec_id = nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Displayed Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.non_displayed_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.non_displayed_trade_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Num Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits = {}

-- Size Of: Num Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.size = 1

-- Display: Num Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.display = function(value)
  return "Num Parity Splits: "..value
end

-- Dissect: Num Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.num_parity_splits, range, value, display)

  return offset + length, value
end

-- Order Id
nyse_equities_integratedfeed_xdp_v2_3_a.order_id = {}

-- Size Of: Order Id
nyse_equities_integratedfeed_xdp_v2_3_a.order_id.size = 8

-- Display: Order Id
nyse_equities_integratedfeed_xdp_v2_3_a.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_equities_integratedfeed_xdp_v2_3_a.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Execution Message
nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message = {}

-- Size Of: Order Execution Message
nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.order_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.volume.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id.size;

-- Display: Order Execution Message
nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a.volume.dissect(buffer, index, packet, parent)

  -- Printable Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, printable_flag = nyse_equities_integratedfeed_xdp_v2_3_a.printable_flag.dissect(buffer, index, packet, parent)

  -- Num Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, num_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.dissect(buffer, index, packet, parent)

  -- Db Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, db_exec_id = nyse_equities_integratedfeed_xdp_v2_3_a.db_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.order_execution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.order_execution_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Num Extensions
nyse_equities_integratedfeed_xdp_v2_3_a.num_extensions = {}

-- Size Of: Num Extensions
nyse_equities_integratedfeed_xdp_v2_3_a.num_extensions.size = 1

-- Display: Num Extensions
nyse_equities_integratedfeed_xdp_v2_3_a.num_extensions.display = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
nyse_equities_integratedfeed_xdp_v2_3_a.num_extensions.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.num_extensions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.num_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Freeze Status
nyse_equities_integratedfeed_xdp_v2_3_a.freeze_status = {}

-- Size Of: Freeze Status
nyse_equities_integratedfeed_xdp_v2_3_a.freeze_status.size = 1

-- Display: Freeze Status
nyse_equities_integratedfeed_xdp_v2_3_a.freeze_status.display = function(value)
  if value == 0 then
    return "Freeze Status: No Imbalance Freeze (0)"
  end
  if value == 1 then
    return "Freeze Status: Imbalance Freeze (1)"
  end

  return "Freeze Status: Unknown("..value..")"
end

-- Dissect: Freeze Status
nyse_equities_integratedfeed_xdp_v2_3_a.freeze_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.freeze_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.freeze_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Auction Status
nyse_equities_integratedfeed_xdp_v2_3_a.auction_status = {}

-- Size Of: Auction Status
nyse_equities_integratedfeed_xdp_v2_3_a.auction_status.size = 1

-- Display: Auction Status
nyse_equities_integratedfeed_xdp_v2_3_a.auction_status.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_equities_integratedfeed_xdp_v2_3_a.lower_collar = {}

-- Size Of: Lower Collar
nyse_equities_integratedfeed_xdp_v2_3_a.lower_collar.size = 4

-- Display: Lower Collar
nyse_equities_integratedfeed_xdp_v2_3_a.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_equities_integratedfeed_xdp_v2_3_a.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_equities_integratedfeed_xdp_v2_3_a.upper_collar = {}

-- Size Of: Upper Collar
nyse_equities_integratedfeed_xdp_v2_3_a.upper_collar.size = 4

-- Display: Upper Collar
nyse_equities_integratedfeed_xdp_v2_3_a.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_equities_integratedfeed_xdp_v2_3_a.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_equities_integratedfeed_xdp_v2_3_a.indicative_match_price = {}

-- Size Of: Indicative Match Price
nyse_equities_integratedfeed_xdp_v2_3_a.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_equities_integratedfeed_xdp_v2_3_a.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_equities_integratedfeed_xdp_v2_3_a.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.indicative_match_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Ssr Filing Price
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_filing_price = {}

-- Size Of: Ssr Filing Price
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_filing_price.size = 4

-- Display: Ssr Filing Price
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_filing_price.display = function(value)
  return "Ssr Filing Price: "..value
end

-- Dissect: Ssr Filing Price
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_filing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_filing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_filing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Closing Only Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a.closing_only_clearing_price = {}

-- Size Of: Closing Only Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a.closing_only_clearing_price.size = 4

-- Display: Closing Only Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a.closing_only_clearing_price.display = function(value)
  return "Closing Only Clearing Price: "..value
end

-- Dissect: Closing Only Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a.closing_only_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.closing_only_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.closing_only_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.closing_only_clearing_price, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a.continuous_book_clearing_price = {}

-- Size Of: Continuous Book Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_equities_integratedfeed_xdp_v2_3_a.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_side = {}

-- Size Of: Imbalance Side
nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_side.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_equities_integratedfeed_xdp_v2_3_a.auction_type = {}

-- Size Of: Auction Type
nyse_equities_integratedfeed_xdp_v2_3_a.auction_type.size = 1

-- Display: Auction Type
nyse_equities_integratedfeed_xdp_v2_3_a.auction_type.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Auction Time
nyse_equities_integratedfeed_xdp_v2_3_a.auction_time = {}

-- Size Of: Auction Time
nyse_equities_integratedfeed_xdp_v2_3_a.auction_time.size = 2

-- Display: Auction Time
nyse_equities_integratedfeed_xdp_v2_3_a.auction_time.display = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_equities_integratedfeed_xdp_v2_3_a.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a.market_imbalance_qty = {}

-- Size Of: Market Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a.total_imbalance_qty = {}

-- Size Of: Total Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_equities_integratedfeed_xdp_v2_3_a.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_equities_integratedfeed_xdp_v2_3_a.paired_qty = {}

-- Size Of: Paired Qty
nyse_equities_integratedfeed_xdp_v2_3_a.paired_qty.size = 4

-- Display: Paired Qty
nyse_equities_integratedfeed_xdp_v2_3_a.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_equities_integratedfeed_xdp_v2_3_a.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Reference Price
nyse_equities_integratedfeed_xdp_v2_3_a.reference_price = {}

-- Size Of: Reference Price
nyse_equities_integratedfeed_xdp_v2_3_a.reference_price.size = 4

-- Display: Reference Price
nyse_equities_integratedfeed_xdp_v2_3_a.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nyse_equities_integratedfeed_xdp_v2_3_a.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Imbalance Message
nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message = {}

-- Size Of: Imbalance Message
nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.reference_price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.paired_qty.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.total_imbalance_qty.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.market_imbalance_qty.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.auction_time.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.auction_type.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_side.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.continuous_book_clearing_price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.closing_only_clearing_price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.ssr_filing_price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.indicative_match_price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.upper_collar.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.lower_collar.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.auction_status.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.freeze_status.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.num_extensions.size;

-- Display: Imbalance Message
nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, reference_price = nyse_equities_integratedfeed_xdp_v2_3_a.reference_price.dissect(buffer, index, packet, parent)

  -- Paired Qty: 4 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_equities_integratedfeed_xdp_v2_3_a.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, total_imbalance_qty = nyse_equities_integratedfeed_xdp_v2_3_a.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, market_imbalance_qty = nyse_equities_integratedfeed_xdp_v2_3_a.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Auction Time: 2 Byte Unsigned Fixed Width Integer
  index, auction_time = nyse_equities_integratedfeed_xdp_v2_3_a.auction_time.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 5 values
  index, auction_type = nyse_equities_integratedfeed_xdp_v2_3_a.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, continuous_book_clearing_price = nyse_equities_integratedfeed_xdp_v2_3_a.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Closing Only Clearing Price: 4 Byte Unsigned Fixed Width Integer
  index, closing_only_clearing_price = nyse_equities_integratedfeed_xdp_v2_3_a.closing_only_clearing_price.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: 4 Byte Unsigned Fixed Width Integer
  index, ssr_filing_price = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_filing_price.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: 4 Byte Unsigned Fixed Width Integer
  index, indicative_match_price = nyse_equities_integratedfeed_xdp_v2_3_a.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: 4 Byte Unsigned Fixed Width Integer
  index, upper_collar = nyse_equities_integratedfeed_xdp_v2_3_a.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: 4 Byte Unsigned Fixed Width Integer
  index, lower_collar = nyse_equities_integratedfeed_xdp_v2_3_a.lower_collar.dissect(buffer, index, packet, parent)

  -- Auction Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, auction_status = nyse_equities_integratedfeed_xdp_v2_3_a.auction_status.dissect(buffer, index, packet, parent)

  -- Freeze Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, freeze_status = nyse_equities_integratedfeed_xdp_v2_3_a.freeze_status.dissect(buffer, index, packet, parent)

  -- Num Extensions: 1 Byte Unsigned Fixed Width Integer
  index, num_extensions = nyse_equities_integratedfeed_xdp_v2_3_a.num_extensions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.imbalance_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Firm Id
nyse_equities_integratedfeed_xdp_v2_3_a.firm_id = {}

-- Size Of: Firm Id
nyse_equities_integratedfeed_xdp_v2_3_a.firm_id.size = 5

-- Display: Firm Id
nyse_equities_integratedfeed_xdp_v2_3_a.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nyse_equities_integratedfeed_xdp_v2_3_a.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Side
nyse_equities_integratedfeed_xdp_v2_3_a.side = {}

-- Size Of: Side
nyse_equities_integratedfeed_xdp_v2_3_a.side.size = 1

-- Display: Side
nyse_equities_integratedfeed_xdp_v2_3_a.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_equities_integratedfeed_xdp_v2_3_a.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.side, range, value, display)

  return offset + length, value
end

-- Add Order Refresh Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message = {}

-- Size Of: Add Order Refresh Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.order_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.volume.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.side.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.firm_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.size;

-- Display: Add Order Refresh Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Refresh Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a.volume.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_equities_integratedfeed_xdp_v2_3_a.side.dissect(buffer, index, packet, parent)

  -- Firm Id: 5 Byte Ascii String
  index, firm_id = nyse_equities_integratedfeed_xdp_v2_3_a.firm_id.dissect(buffer, index, packet, parent)

  -- Num Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, num_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Refresh Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_refresh_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.add_order_refresh_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Rpi Indicator
nyse_equities_integratedfeed_xdp_v2_3_a.rpi_indicator = {}

-- Size Of: Rpi Indicator
nyse_equities_integratedfeed_xdp_v2_3_a.rpi_indicator.size = 1

-- Display: Rpi Indicator
nyse_equities_integratedfeed_xdp_v2_3_a.rpi_indicator.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.rpi_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.rpi_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.rpi_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement Message
nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message = {}

-- Size Of: Retail Price Improvement Message
nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.rpi_indicator.size;

-- Display: Retail Price Improvement Message
nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Rpi Indicator: 1 Byte Ascii String Enum with 4 values
  index, rpi_indicator = nyse_equities_integratedfeed_xdp_v2_3_a.rpi_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.retail_price_improvement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Id
nyse_equities_integratedfeed_xdp_v2_3_a.cross_id = {}

-- Size Of: Cross Id
nyse_equities_integratedfeed_xdp_v2_3_a.cross_id.size = 4

-- Display: Cross Id
nyse_equities_integratedfeed_xdp_v2_3_a.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nyse_equities_integratedfeed_xdp_v2_3_a.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Correction Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message = {}

-- Size Of: Cross Correction Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.cross_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.volume.size;

-- Display: Cross Correction Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Correction Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nyse_equities_integratedfeed_xdp_v2_3_a.cross_id.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Correction Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.cross_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_correction_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Type
nyse_equities_integratedfeed_xdp_v2_3_a.cross_type = {}

-- Size Of: Cross Type
nyse_equities_integratedfeed_xdp_v2_3_a.cross_type.size = 1

-- Display: Cross Type
nyse_equities_integratedfeed_xdp_v2_3_a.cross_type.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Cross Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message = {}

-- Size Of: Cross Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.cross_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.volume.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.cross_type.size;

-- Display: Cross Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nyse_equities_integratedfeed_xdp_v2_3_a.cross_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a.volume.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nyse_equities_integratedfeed_xdp_v2_3_a.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.cross_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.cross_trade_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message = {}

-- Size Of: Trade Cancel Message
nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.size;

-- Display: Trade Cancel Message
nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_equities_integratedfeed_xdp_v2_3_a.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.trade_cancel_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message = {}

-- Size Of: Delete Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.order_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.size;

-- Display: Delete Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Num Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, num_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.delete_order_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- New Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits = {}

-- Size Of: New Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits.size = 1

-- Display: New Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits.display = function(value)
  return "New Price Parity Splits: "..value
end

-- Dissect: New Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.new_price_parity_splits, range, value, display)

  return offset + length, value
end

-- Prev Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits = {}

-- Size Of: Prev Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits.size = 1

-- Display: Prev Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits.display = function(value)
  return "Prev Price Parity Splits: "..value
end

-- Dissect: Prev Price Parity Splits
nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_price_parity_splits, range, value, display)

  return offset + length, value
end

-- New Order Id
nyse_equities_integratedfeed_xdp_v2_3_a.new_order_id = {}

-- Size Of: New Order Id
nyse_equities_integratedfeed_xdp_v2_3_a.new_order_id.size = 8

-- Display: New Order Id
nyse_equities_integratedfeed_xdp_v2_3_a.new_order_id.display = function(value)
  return "New Order Id: "..value
end

-- Dissect: New Order Id
nyse_equities_integratedfeed_xdp_v2_3_a.new_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.new_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.new_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.new_order_id, range, value, display)

  return offset + length, value
end

-- Replace Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message = {}

-- Size Of: Replace Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.order_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.new_order_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.volume.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits.size;

-- Display: Replace Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a.order_id.dissect(buffer, index, packet, parent)

  -- New Order Id: 8 Byte Unsigned Fixed Width Integer
  index, new_order_id = nyse_equities_integratedfeed_xdp_v2_3_a.new_order_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a.volume.dissect(buffer, index, packet, parent)

  -- Prev Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, prev_price_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits.dissect(buffer, index, packet, parent)

  -- New Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, new_price_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.replace_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.replace_order_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Position Change
nyse_equities_integratedfeed_xdp_v2_3_a.position_change = {}

-- Size Of: Position Change
nyse_equities_integratedfeed_xdp_v2_3_a.position_change.size = 1

-- Display: Position Change
nyse_equities_integratedfeed_xdp_v2_3_a.position_change.display = function(value)
  if value == 0 then
    return "Position Change: Kept (0)"
  end
  if value == 1 then
    return "Position Change: Lost (1)"
  end

  return "Position Change: Unknown("..value..")"
end

-- Dissect: Position Change
nyse_equities_integratedfeed_xdp_v2_3_a.position_change.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.position_change.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.position_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.position_change, range, value, display)

  return offset + length, value
end

-- Modify Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message = {}

-- Size Of: Modify Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.order_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.volume.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.position_change.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits.size;

-- Display: Modify Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a.volume.dissect(buffer, index, packet, parent)

  -- Position Change: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, position_change = nyse_equities_integratedfeed_xdp_v2_3_a.position_change.dissect(buffer, index, packet, parent)

  -- Prev Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, prev_price_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a.prev_price_parity_splits.dissect(buffer, index, packet, parent)

  -- New Price Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, new_price_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a.new_price_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.modify_order_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message = {}

-- Size Of: Add Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.order_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.volume.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.side.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.firm_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.size;

-- Display: Add Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_integratedfeed_xdp_v2_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nyse_equities_integratedfeed_xdp_v2_3_a.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_equities_integratedfeed_xdp_v2_3_a.volume.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_equities_integratedfeed_xdp_v2_3_a.side.dissect(buffer, index, packet, parent)

  -- Firm Id: 5 Byte Ascii String
  index, firm_id = nyse_equities_integratedfeed_xdp_v2_3_a.firm_id.dissect(buffer, index, packet, parent)

  -- Num Parity Splits: 1 Byte Unsigned Fixed Width Integer
  index, num_parity_splits = nyse_equities_integratedfeed_xdp_v2_3_a.num_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.add_order_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.last_symbol_seq_num = {}

-- Size Of: Last Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.last_seq_num = {}

-- Size Of: Last Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_equities_integratedfeed_xdp_v2_3_a.total_refresh_pkts = {}

-- Size Of: Total Refresh Pkts
nyse_equities_integratedfeed_xdp_v2_3_a.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_equities_integratedfeed_xdp_v2_3_a.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_equities_integratedfeed_xdp_v2_3_a.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_equities_integratedfeed_xdp_v2_3_a.current_refresh_pkt = {}

-- Size Of: Current Refresh Pkt
nyse_equities_integratedfeed_xdp_v2_3_a.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_equities_integratedfeed_xdp_v2_3_a.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_equities_integratedfeed_xdp_v2_3_a.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Refresh Header Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message = {}

-- Size Of: Refresh Header Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.current_refresh_pkt.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.total_refresh_pkts.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.last_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.last_symbol_seq_num.size;

-- Display: Refresh Header Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_equities_integratedfeed_xdp_v2_3_a.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_equities_integratedfeed_xdp_v2_3_a.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Session State
nyse_equities_integratedfeed_xdp_v2_3_a.session_state = {}

-- Size Of: Session State
nyse_equities_integratedfeed_xdp_v2_3_a.session_state.size = 1

-- Display: Session State
nyse_equities_integratedfeed_xdp_v2_3_a.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_equities_integratedfeed_xdp_v2_3_a.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.session_state, range, value, display)

  return offset + length, value
end

-- Market State
nyse_equities_integratedfeed_xdp_v2_3_a.market_state = {}

-- Size Of: Market State
nyse_equities_integratedfeed_xdp_v2_3_a.market_state.size = 1

-- Display: Market State
nyse_equities_integratedfeed_xdp_v2_3_a.market_state.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_state = {}

-- Size Of: Ssr State
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_state.size = 1

-- Display: Ssr State
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Time
nyse_equities_integratedfeed_xdp_v2_3_a.time = {}

-- Size Of: Time
nyse_equities_integratedfeed_xdp_v2_3_a.time.size = 4

-- Display: Time
nyse_equities_integratedfeed_xdp_v2_3_a.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_equities_integratedfeed_xdp_v2_3_a.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.time, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_volume = {}

-- Size Of: Ssr Triggering Volume
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_exchange_id = {}

-- Size Of: Ssr Triggering Exchange Id
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_exchange_id.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_equities_integratedfeed_xdp_v2_3_a.price_2 = {}

-- Size Of: Price 2
nyse_equities_integratedfeed_xdp_v2_3_a.price_2.size = 4

-- Display: Price 2
nyse_equities_integratedfeed_xdp_v2_3_a.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_equities_integratedfeed_xdp_v2_3_a.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_equities_integratedfeed_xdp_v2_3_a.price_1 = {}

-- Size Of: Price 1
nyse_equities_integratedfeed_xdp_v2_3_a.price_1.size = 4

-- Display: Price 1
nyse_equities_integratedfeed_xdp_v2_3_a.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_equities_integratedfeed_xdp_v2_3_a.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_4 = {}

-- Size Of: Reserved 4
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_4.size = 4

-- Display: Reserved 4
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_equities_integratedfeed_xdp_v2_3_a.halt_condition = {}

-- Size Of: Halt Condition
nyse_equities_integratedfeed_xdp_v2_3_a.halt_condition.size = 1

-- Display: Halt Condition
nyse_equities_integratedfeed_xdp_v2_3_a.halt_condition.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_equities_integratedfeed_xdp_v2_3_a.security_status = {}

-- Size Of: Security Status
nyse_equities_integratedfeed_xdp_v2_3_a.security_status.size = 1

-- Display: Security Status
nyse_equities_integratedfeed_xdp_v2_3_a.security_status.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Status Message
nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message = {}

-- Size Of: Security Status Message
nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.security_status.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.halt_condition.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.reserved_4.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price_1.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price_2.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_exchange_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_volume.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.time.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.ssr_state.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.market_state.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.session_state.size;

-- Display: Security Status Message
nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index, security_status = nyse_equities_integratedfeed_xdp_v2_3_a.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 12 values
  index, halt_condition = nyse_equities_integratedfeed_xdp_v2_3_a.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_integratedfeed_xdp_v2_3_a.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_equities_integratedfeed_xdp_v2_3_a.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_equities_integratedfeed_xdp_v2_3_a.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 18 values
  index, ssr_triggering_exchange_id = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_equities_integratedfeed_xdp_v2_3_a.time.dissect(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index, ssr_state = nyse_equities_integratedfeed_xdp_v2_3_a.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_equities_integratedfeed_xdp_v2_3_a.market_state.dissect(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String
  index, session_state = nyse_equities_integratedfeed_xdp_v2_3_a.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_status_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Next Source Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.next_source_seq_num = {}

-- Size Of: Next Source Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Clear Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message = {}

-- Size Of: Symbol Clear Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.next_source_seq_num.size;

-- Display: Symbol Clear Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Id
nyse_equities_integratedfeed_xdp_v2_3_a.channel_id = {}

-- Size Of: Channel Id
nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.size = 1

-- Display: Channel Id
nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_equities_integratedfeed_xdp_v2_3_a.product_id = {}

-- Size Of: Product Id
nyse_equities_integratedfeed_xdp_v2_3_a.product_id.size = 1

-- Display: Product Id
nyse_equities_integratedfeed_xdp_v2_3_a.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_equities_integratedfeed_xdp_v2_3_a.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num = {}

-- Size Of: End Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.size = 4

-- Display: End Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num = {}

-- Size Of: Begin Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Message Unavailable Message
nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message = {}

-- Size Of: Message Unavailable Message
nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.product_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.size;

-- Display: Message Unavailable Message
nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Id
nyse_equities_integratedfeed_xdp_v2_3_a.source_id = {}

-- Size Of: Source Id
nyse_equities_integratedfeed_xdp_v2_3_a.source_id.size = 10

-- Display: Source Id
nyse_equities_integratedfeed_xdp_v2_3_a.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_equities_integratedfeed_xdp_v2_3_a.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_id, range, value, display)

  return offset + length, value
end

-- Refresh Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message = {}

-- Size Of: Refresh Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.product_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.size;

-- Display: Refresh Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Method
nyse_equities_integratedfeed_xdp_v2_3_a.retransmit_method = {}

-- Size Of: Retransmit Method
nyse_equities_integratedfeed_xdp_v2_3_a.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_equities_integratedfeed_xdp_v2_3_a.retransmit_method.display = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_equities_integratedfeed_xdp_v2_3_a.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message = {}

-- Size Of: Symbol Index Mapping Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.product_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.retransmit_method.size;

-- Display: Symbol Index Mapping Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, retransmit_method = nyse_equities_integratedfeed_xdp_v2_3_a.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message = {}

-- Size Of: Heartbeat Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_id.size;

-- Display: Heartbeat Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Status
nyse_equities_integratedfeed_xdp_v2_3_a.status = {}

-- Size Of: Status
nyse_equities_integratedfeed_xdp_v2_3_a.status.size = 1

-- Display: Status
nyse_equities_integratedfeed_xdp_v2_3_a.status.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.status, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.request_seq_num = {}

-- Size Of: Request Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_equities_integratedfeed_xdp_v2_3_a.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Request Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message = {}

-- Size Of: Request Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.request_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.product_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.status.size;

-- Display: Request Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 10 values
  index, status = nyse_equities_integratedfeed_xdp_v2_3_a.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.request_response_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message = {}

-- Size Of: Retransmission Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.product_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.size;

-- Display: Retransmission Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_equities_integratedfeed_xdp_v2_3_a.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 2
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_2 = {}

-- Size Of: Reserved 2
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_2.size = 2

-- Display: Reserved 2
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_equities_integratedfeed_xdp_v2_3_a.unit_of_trade = {}

-- Size Of: Unit Of Trade
nyse_equities_integratedfeed_xdp_v2_3_a.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_equities_integratedfeed_xdp_v2_3_a.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_equities_integratedfeed_xdp_v2_3_a.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_equities_integratedfeed_xdp_v2_3_a.mpv = {}

-- Size Of: Mpv
nyse_equities_integratedfeed_xdp_v2_3_a.mpv.size = 2

-- Display: Mpv
nyse_equities_integratedfeed_xdp_v2_3_a.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_equities_integratedfeed_xdp_v2_3_a.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.mpv, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_equities_integratedfeed_xdp_v2_3_a.round_lot = {}

-- Size Of: Round Lot
nyse_equities_integratedfeed_xdp_v2_3_a.round_lot.size = 1

-- Display: Round Lot
nyse_equities_integratedfeed_xdp_v2_3_a.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_equities_integratedfeed_xdp_v2_3_a.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_equities_integratedfeed_xdp_v2_3_a.price_resolution = {}

-- Size Of: Price Resolution
nyse_equities_integratedfeed_xdp_v2_3_a.price_resolution.size = 1

-- Display: Price Resolution
nyse_equities_integratedfeed_xdp_v2_3_a.price_resolution.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_volume = {}

-- Size Of: Prev Close Volume
nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_price = {}

-- Size Of: Prev Close Price
nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_equities_integratedfeed_xdp_v2_3_a.lot_size = {}

-- Size Of: Lot Size
nyse_equities_integratedfeed_xdp_v2_3_a.lot_size.size = 2

-- Display: Lot Size
nyse_equities_integratedfeed_xdp_v2_3_a.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_equities_integratedfeed_xdp_v2_3_a.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_equities_integratedfeed_xdp_v2_3_a.security_type = {}

-- Size Of: Security Type
nyse_equities_integratedfeed_xdp_v2_3_a.security_type.size = 1

-- Display: Security Type
nyse_equities_integratedfeed_xdp_v2_3_a.security_type.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_equities_integratedfeed_xdp_v2_3_a.price_scale_code = {}

-- Size Of: Price Scale Code
nyse_equities_integratedfeed_xdp_v2_3_a.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_equities_integratedfeed_xdp_v2_3_a.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_equities_integratedfeed_xdp_v2_3_a.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_equities_integratedfeed_xdp_v2_3_a.exchange_code = {}

-- Size Of: Exchange Code
nyse_equities_integratedfeed_xdp_v2_3_a.exchange_code.size = 1

-- Display: Exchange Code
nyse_equities_integratedfeed_xdp_v2_3_a.exchange_code.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- System Id
nyse_equities_integratedfeed_xdp_v2_3_a.system_id = {}

-- Size Of: System Id
nyse_equities_integratedfeed_xdp_v2_3_a.system_id.size = 1

-- Display: System Id
nyse_equities_integratedfeed_xdp_v2_3_a.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_equities_integratedfeed_xdp_v2_3_a.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.system_id, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_equities_integratedfeed_xdp_v2_3_a.market_id = {}

-- Size Of: Market Id
nyse_equities_integratedfeed_xdp_v2_3_a.market_id.size = 2

-- Display: Market Id
nyse_equities_integratedfeed_xdp_v2_3_a.market_id.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_1 = {}

-- Size Of: Reserved 1
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_1.size = 1

-- Display: Reserved 1
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_equities_integratedfeed_xdp_v2_3_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_equities_integratedfeed_xdp_v2_3_a.symbol = {}

-- Size Of: Symbol
nyse_equities_integratedfeed_xdp_v2_3_a.symbol.size = 11

-- Display: Symbol
nyse_equities_integratedfeed_xdp_v2_3_a.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_equities_integratedfeed_xdp_v2_3_a.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message = {}

-- Size Of: Symbol Index Mapping Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.reserved_1.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.market_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.system_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.exchange_code.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price_scale_code.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.security_type.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.lot_size.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_price.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_volume.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.price_resolution.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.round_lot.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.mpv.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.unit_of_trade.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.reserved_2.size;

-- Display: Symbol Index Mapping Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_equities_integratedfeed_xdp_v2_3_a.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_equities_integratedfeed_xdp_v2_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, market_id = nyse_equities_integratedfeed_xdp_v2_3_a.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_equities_integratedfeed_xdp_v2_3_a.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 10 values
  index, exchange_code = nyse_equities_integratedfeed_xdp_v2_3_a.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_equities_integratedfeed_xdp_v2_3_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 20 values
  index, security_type = nyse_equities_integratedfeed_xdp_v2_3_a.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_equities_integratedfeed_xdp_v2_3_a.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_equities_integratedfeed_xdp_v2_3_a.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_equities_integratedfeed_xdp_v2_3_a.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
  index, round_lot = nyse_equities_integratedfeed_xdp_v2_3_a.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: 2 Byte Unsigned Fixed Width Integer
  index, mpv = nyse_equities_integratedfeed_xdp_v2_3_a.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: 2 Byte Unsigned Fixed Width Integer
  index, unit_of_trade = nyse_equities_integratedfeed_xdp_v2_3_a.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_equities_integratedfeed_xdp_v2_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Id
nyse_equities_integratedfeed_xdp_v2_3_a.id = {}

-- Size Of: Id
nyse_equities_integratedfeed_xdp_v2_3_a.id.size = 4

-- Display: Id
nyse_equities_integratedfeed_xdp_v2_3_a.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_equities_integratedfeed_xdp_v2_3_a.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.id, range, value, display)

  return offset + length, value
end

-- Source Time Reference Message
nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message = {}

-- Size Of: Source Time Reference Message
nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time.size;

-- Display: Source Time Reference Message
nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_equities_integratedfeed_xdp_v2_3_a.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_equities_integratedfeed_xdp_v2_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.source_time_reference_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message = {}

-- Size Of: Sequence Number Reset Message
nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.product_id.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.size;

-- Display: Sequence Number Reset Message
nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_equities_integratedfeed_xdp_v2_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_equities_integratedfeed_xdp_v2_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_equities_integratedfeed_xdp_v2_3_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_equities_integratedfeed_xdp_v2_3_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_equities_integratedfeed_xdp_v2_3_a.payload = {}

-- Calculate runtime size of: Payload
nyse_equities_integratedfeed_xdp_v2_3_a.payload.size = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message.size(buffer, offset)
  end
  -- Size of Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message.size(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message.size(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message.size(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message.size(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message.size(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message.size(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message.size(buffer, offset)
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message.size(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message.size(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == 100 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message.size(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == 101 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message.size(buffer, offset)
  end
  -- Size of Replace Order Message
  if message_type == 104 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message.size(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 102 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == 112 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message.size(buffer, offset)
  end
  -- Size of Cross Trade Message
  if message_type == 111 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message.size(buffer, offset)
  end
  -- Size of Cross Correction Message
  if message_type == 113 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message.size(buffer, offset)
  end
  -- Size of Retail Price Improvement Message
  if message_type == 114 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message.size(buffer, offset)
  end
  -- Size of Add Order Refresh Message
  if message_type == 106 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message.size(buffer, offset)
  end
  -- Size of Imbalance Message
  if message_type == 105 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message.size(buffer, offset)
  end
  -- Size of Order Execution Message
  if message_type == 103 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message.size(buffer, offset)
  end
  -- Size of Non Displayed Trade Message
  if message_type == 110 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message.size(buffer, offset)
  end
  -- Size of Stock Summary Message
  if message_type == 223 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_equities_integratedfeed_xdp_v2_3_a.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_equities_integratedfeed_xdp_v2_3_a.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 100 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 101 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if message_type == 104 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 102 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == 112 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == 111 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Correction Message
  if message_type == 113 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.cross_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if message_type == 114 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.retail_price_improvement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Refresh Message
  if message_type == 106 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.add_order_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 103 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Non Displayed Trade Message
  if message_type == 110 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.non_displayed_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Summary Message
  if message_type == 223 then
    return nyse_equities_integratedfeed_xdp_v2_3_a.stock_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_equities_integratedfeed_xdp_v2_3_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_equities_integratedfeed_xdp_v2_3_a.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_integratedfeed_xdp_v2_3_a.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.payload, range, display)

  return nyse_equities_integratedfeed_xdp_v2_3_a.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nyse_equities_integratedfeed_xdp_v2_3_a.message_type = {}

-- Size Of: Message Type
nyse_equities_integratedfeed_xdp_v2_3_a.message_type.size = 2

-- Display: Message Type
nyse_equities_integratedfeed_xdp_v2_3_a.message_type.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_equities_integratedfeed_xdp_v2_3_a.message_size = {}

-- Size Of: Message Size
nyse_equities_integratedfeed_xdp_v2_3_a.message_size.size = 2

-- Display: Message Size
nyse_equities_integratedfeed_xdp_v2_3_a.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_equities_integratedfeed_xdp_v2_3_a.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
nyse_equities_integratedfeed_xdp_v2_3_a.message_header = {}

-- Size Of: Message Header
nyse_equities_integratedfeed_xdp_v2_3_a.message_header.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.message_size.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.message_type.size;

-- Display: Message Header
nyse_equities_integratedfeed_xdp_v2_3_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_equities_integratedfeed_xdp_v2_3_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_equities_integratedfeed_xdp_v2_3_a.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = nyse_equities_integratedfeed_xdp_v2_3_a.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_equities_integratedfeed_xdp_v2_3_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_header, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_equities_integratedfeed_xdp_v2_3_a.message = {}

-- Calculate size of: Message
nyse_equities_integratedfeed_xdp_v2_3_a.message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_integratedfeed_xdp_v2_3_a.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + nyse_equities_integratedfeed_xdp_v2_3_a.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nyse_equities_integratedfeed_xdp_v2_3_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_equities_integratedfeed_xdp_v2_3_a.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_equities_integratedfeed_xdp_v2_3_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = nyse_equities_integratedfeed_xdp_v2_3_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_equities_integratedfeed_xdp_v2_3_a.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nyse_equities_integratedfeed_xdp_v2_3_a.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message, range, display)
  end

  return nyse_equities_integratedfeed_xdp_v2_3_a.message.fields(buffer, offset, packet, parent)
end

-- Nanoseconds
nyse_equities_integratedfeed_xdp_v2_3_a.nanoseconds = {}

-- Size Of: Nanoseconds
nyse_equities_integratedfeed_xdp_v2_3_a.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_equities_integratedfeed_xdp_v2_3_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_equities_integratedfeed_xdp_v2_3_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_equities_integratedfeed_xdp_v2_3_a.timestamp = {}

-- Size Of: Timestamp
nyse_equities_integratedfeed_xdp_v2_3_a.timestamp.size = 4

-- Display: Timestamp
nyse_equities_integratedfeed_xdp_v2_3_a.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_integratedfeed_xdp_v2_3_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number = {}

-- Size Of: Sequence Number
nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number.size = 4

-- Display: Sequence Number
nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_equities_integratedfeed_xdp_v2_3_a.message_count = {}

-- Size Of: Message Count
nyse_equities_integratedfeed_xdp_v2_3_a.message_count.size = 1

-- Display: Message Count
nyse_equities_integratedfeed_xdp_v2_3_a.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_equities_integratedfeed_xdp_v2_3_a.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_equities_integratedfeed_xdp_v2_3_a.delivery_flag = {}

-- Size Of: Delivery Flag
nyse_equities_integratedfeed_xdp_v2_3_a.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_equities_integratedfeed_xdp_v2_3_a.delivery_flag.display = function(value)
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
nyse_equities_integratedfeed_xdp_v2_3_a.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_equities_integratedfeed_xdp_v2_3_a.packet_size = {}

-- Size Of: Packet Size
nyse_equities_integratedfeed_xdp_v2_3_a.packet_size.size = 2

-- Display: Packet Size
nyse_equities_integratedfeed_xdp_v2_3_a.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_equities_integratedfeed_xdp_v2_3_a.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_integratedfeed_xdp_v2_3_a.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_integratedfeed_xdp_v2_3_a.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_equities_integratedfeed_xdp_v2_3_a.packet_header = {}

-- Size Of: Packet Header
nyse_equities_integratedfeed_xdp_v2_3_a.packet_header.size =
  nyse_equities_integratedfeed_xdp_v2_3_a.packet_size.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.delivery_flag.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.message_count.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.timestamp.size + 
  nyse_equities_integratedfeed_xdp_v2_3_a.nanoseconds.size;

-- Display: Packet Header
nyse_equities_integratedfeed_xdp_v2_3_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_equities_integratedfeed_xdp_v2_3_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_equities_integratedfeed_xdp_v2_3_a.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_equities_integratedfeed_xdp_v2_3_a.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_equities_integratedfeed_xdp_v2_3_a.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_equities_integratedfeed_xdp_v2_3_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_integratedfeed_xdp_v2_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_equities_integratedfeed_xdp_v2_3_a.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_equities_integratedfeed_xdp_v2_3_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_equities_integratedfeed_xdp_v2_3_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_integratedfeed_xdp_v2_3_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_integratedfeed_xdp_v2_3_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_equities_integratedfeed_xdp_v2_3_a.packet = {}

-- Dissect Packet
nyse_equities_integratedfeed_xdp_v2_3_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_equities_integratedfeed_xdp_v2_3_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = nyse_equities_integratedfeed_xdp_v2_3_a.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_equities_integratedfeed_xdp_v2_3_a.init()
end

-- Dissector for Nyse Equities IntegratedFeed Xdp 2.3.a
function omi_nyse_equities_integratedfeed_xdp_v2_3_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_equities_integratedfeed_xdp_v2_3_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_equities_integratedfeed_xdp_v2_3_a, buffer(), omi_nyse_equities_integratedfeed_xdp_v2_3_a.description, "("..buffer:len().." Bytes)")
  return nyse_equities_integratedfeed_xdp_v2_3_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_equities_integratedfeed_xdp_v2_3_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_equities_integratedfeed_xdp_v2_3_a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities IntegratedFeed Xdp 2.3.a
local function omi_nyse_equities_integratedfeed_xdp_v2_3_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_equities_integratedfeed_xdp_v2_3_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_equities_integratedfeed_xdp_v2_3_a
  omi_nyse_equities_integratedfeed_xdp_v2_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities IntegratedFeed Xdp 2.3.a
omi_nyse_equities_integratedfeed_xdp_v2_3_a:register_heuristic("udp", omi_nyse_equities_integratedfeed_xdp_v2_3_a_heuristic)

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
