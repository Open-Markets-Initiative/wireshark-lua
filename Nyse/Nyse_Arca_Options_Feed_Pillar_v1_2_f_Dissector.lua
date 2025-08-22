-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Arca Options Feed Pillar 1.2.f Protocol
local nyse_arca_options_feed_pillar_v1_2_f = Proto("Nyse.Arca.Options.Feed.Pillar.v1.2.f.Lua", "Nyse Arca Options Feed Pillar 1.2.f")

-- Component Tables
local show = {}
local format = {}
local nyse_arca_options_feed_pillar_v1_2_f_display = {}
local nyse_arca_options_feed_pillar_v1_2_f_dissect = {}
local nyse_arca_options_feed_pillar_v1_2_f_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Arca Options Feed Pillar 1.2.f Fields
nyse_arca_options_feed_pillar_v1_2_f.fields.auction_id = ProtoField.new("Auction Id", "nyse.arca.options.feed.pillar.v1.2.f.auctionid", ftypes.UINT64)
nyse_arca_options_feed_pillar_v1_2_f.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.arca.options.feed.pillar.v1.2.f.auctioninterestclearingprice", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.auction_status = ProtoField.new("Auction Status", "nyse.arca.options.feed.pillar.v1.2.f.auctionstatus", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.auction_type = ProtoField.new("Auction Type", "nyse.arca.options.feed.pillar.v1.2.f.auctiontype", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.arca.options.feed.pillar.v1.2.f.beginseqnum", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.capacity = ProtoField.new("Capacity", "nyse.arca.options.feed.pillar.v1.2.f.capacity", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.channel_id = ProtoField.new("Channel Id", "nyse.arca.options.feed.pillar.v1.2.f.channelid", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.close = ProtoField.new("Close", "nyse.arca.options.feed.pillar.v1.2.f.close", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.closing_only_indicator = ProtoField.new("Closing Only Indicator", "nyse.arca.options.feed.pillar.v1.2.f.closingonlyindicator", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.arca.options.feed.pillar.v1.2.f.continuousbookclearingprice", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.arca.options.feed.pillar.v1.2.f.contractmultiplier", ftypes.UINT16)
nyse_arca_options_feed_pillar_v1_2_f.fields.cross_id = ProtoField.new("Cross Id", "nyse.arca.options.feed.pillar.v1.2.f.crossid", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.cross_type = ProtoField.new("Cross Type", "nyse.arca.options.feed.pillar.v1.2.f.crosstype", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.arca.options.feed.pillar.v1.2.f.currentrefreshpkt", ftypes.UINT16)
nyse_arca_options_feed_pillar_v1_2_f.fields.cust_indicator = ProtoField.new("Cust Indicator", "nyse.arca.options.feed.pillar.v1.2.f.custindicator", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arca.options.feed.pillar.v1.2.f.deliveryflag", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.arca.options.feed.pillar.v1.2.f.endseqnum", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.arca.options.feed.pillar.v1.2.f.exchangecode", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.firm_id = ProtoField.new("Firm Id", "nyse.arca.options.feed.pillar.v1.2.f.firmid", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.arca.options.feed.pillar.v1.2.f.haltcondition", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.high_price = ProtoField.new("High Price", "nyse.arca.options.feed.pillar.v1.2.f.highprice", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.id = ProtoField.new("Id", "nyse.arca.options.feed.pillar.v1.2.f.id", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.arca.options.feed.pillar.v1.2.f.imbalanceside", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.arca.options.feed.pillar.v1.2.f.indicativematchprice", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.arca.options.feed.pillar.v1.2.f.lastseqnum", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.arca.options.feed.pillar.v1.2.f.lastsymbolseqnum", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.lot_size = ProtoField.new("Lot Size", "nyse.arca.options.feed.pillar.v1.2.f.lotsize", ftypes.UINT16)
nyse_arca_options_feed_pillar_v1_2_f.fields.low_price = ProtoField.new("Low Price", "nyse.arca.options.feed.pillar.v1.2.f.lowprice", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.arca.options.feed.pillar.v1.2.f.lowercollar", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.market_id = ProtoField.new("Market Id", "nyse.arca.options.feed.pillar.v1.2.f.marketid", ftypes.UINT16)
nyse_arca_options_feed_pillar_v1_2_f.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.arca.options.feed.pillar.v1.2.f.marketimbalanceqty", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.market_state = ProtoField.new("Market State", "nyse.arca.options.feed.pillar.v1.2.f.marketstate", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.arca.options.feed.pillar.v1.2.f.maturitydate", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.message = ProtoField.new("Message", "nyse.arca.options.feed.pillar.v1.2.f.message", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.message_count = ProtoField.new("Message Count", "nyse.arca.options.feed.pillar.v1.2.f.messagecount", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.message_header = ProtoField.new("Message Header", "nyse.arca.options.feed.pillar.v1.2.f.messageheader", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.message_size = ProtoField.new("Message Size", "nyse.arca.options.feed.pillar.v1.2.f.messagesize", ftypes.UINT16)
nyse_arca_options_feed_pillar_v1_2_f.fields.message_type = ProtoField.new("Message Type", "nyse.arca.options.feed.pillar.v1.2.f.messagetype", ftypes.UINT16)
nyse_arca_options_feed_pillar_v1_2_f.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arca.options.feed.pillar.v1.2.f.nanoseconds", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.new_order_id = ProtoField.new("New Order Id", "nyse.arca.options.feed.pillar.v1.2.f.neworderid", ftypes.UINT64)
nyse_arca_options_feed_pillar_v1_2_f.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.arca.options.feed.pillar.v1.2.f.nextsourceseqnum", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.open = ProtoField.new("Open", "nyse.arca.options.feed.pillar.v1.2.f.open", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.option_symbol_root = ProtoField.new("Option Symbol Root", "nyse.arca.options.feed.pillar.v1.2.f.optionsymbolroot", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.order_id = ProtoField.new("Order Id", "nyse.arca.options.feed.pillar.v1.2.f.orderid", ftypes.UINT64)
nyse_arca_options_feed_pillar_v1_2_f.fields.packet = ProtoField.new("Packet", "nyse.arca.options.feed.pillar.v1.2.f.packet", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.packet_header = ProtoField.new("Packet Header", "nyse.arca.options.feed.pillar.v1.2.f.packetheader", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.packet_size = ProtoField.new("Packet Size", "nyse.arca.options.feed.pillar.v1.2.f.packetsize", ftypes.UINT16)
nyse_arca_options_feed_pillar_v1_2_f.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.arca.options.feed.pillar.v1.2.f.pairedqty", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.participant = ProtoField.new("Participant", "nyse.arca.options.feed.pillar.v1.2.f.participant", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.payload = ProtoField.new("Payload", "nyse.arca.options.feed.pillar.v1.2.f.payload", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.position_change = ProtoField.new("Position Change", "nyse.arca.options.feed.pillar.v1.2.f.positionchange", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.arca.options.feed.pillar.v1.2.f.prevcloseprice", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.arca.options.feed.pillar.v1.2.f.prevclosevolume", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.price = ProtoField.new("Price", "nyse.arca.options.feed.pillar.v1.2.f.price", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.price_1 = ProtoField.new("Price 1", "nyse.arca.options.feed.pillar.v1.2.f.price1", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.price_2 = ProtoField.new("Price 2", "nyse.arca.options.feed.pillar.v1.2.f.price2", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.arca.options.feed.pillar.v1.2.f.priceresolution", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.arca.options.feed.pillar.v1.2.f.pricescalecode", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.price_type = ProtoField.new("Price Type", "nyse.arca.options.feed.pillar.v1.2.f.pricetype", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.printable_flag = ProtoField.new("Printable Flag", "nyse.arca.options.feed.pillar.v1.2.f.printableflag", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.product_id = ProtoField.new("Product Id", "nyse.arca.options.feed.pillar.v1.2.f.productid", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.arca.options.feed.pillar.v1.2.f.putorcall", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.arca.options.feed.pillar.v1.2.f.requestseqnum", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arca.options.feed.pillar.v1.2.f.reserved1", ftypes.BYTES)
nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.arca.options.feed.pillar.v1.2.f.reserved2", ftypes.BYTES)
nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_3 = ProtoField.new("Reserved 3", "nyse.arca.options.feed.pillar.v1.2.f.reserved3", ftypes.BYTES)
nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.arca.options.feed.pillar.v1.2.f.reserved4", ftypes.BYTES)
nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_6 = ProtoField.new("Reserved 6", "nyse.arca.options.feed.pillar.v1.2.f.reserved6", ftypes.BYTES)
nyse_arca_options_feed_pillar_v1_2_f.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.arca.options.feed.pillar.v1.2.f.retransmitmethod", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.rfq_status = ProtoField.new("Rfq Status", "nyse.arca.options.feed.pillar.v1.2.f.rfqstatus", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.round_lot = ProtoField.new("Round Lot", "nyse.arca.options.feed.pillar.v1.2.f.roundlot", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.security_status = ProtoField.new("Security Status", "nyse.arca.options.feed.pillar.v1.2.f.securitystatus", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.security_type = ProtoField.new("Security Type", "nyse.arca.options.feed.pillar.v1.2.f.securitytype", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.arca.options.feed.pillar.v1.2.f.sequencenumber", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.series_index = ProtoField.new("Series Index", "nyse.arca.options.feed.pillar.v1.2.f.seriesindex", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.series_seq_num = ProtoField.new("Series Seq Num", "nyse.arca.options.feed.pillar.v1.2.f.seriesseqnum", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.series_type = ProtoField.new("Series Type", "nyse.arca.options.feed.pillar.v1.2.f.seriestype", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.session_state = ProtoField.new("Session State", "nyse.arca.options.feed.pillar.v1.2.f.sessionstate", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.side = ProtoField.new("Side", "nyse.arca.options.feed.pillar.v1.2.f.side", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.source_id = ProtoField.new("Source Id", "nyse.arca.options.feed.pillar.v1.2.f.sourceid", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.source_time = ProtoField.new("Source Time", "nyse.arca.options.feed.pillar.v1.2.f.sourcetime", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.arca.options.feed.pillar.v1.2.f.sourcetimens", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.ssr_state = ProtoField.new("Ssr State", "nyse.arca.options.feed.pillar.v1.2.f.ssrstate", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.arca.options.feed.pillar.v1.2.f.ssrtriggeringexchangeid", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.arca.options.feed.pillar.v1.2.f.ssrtriggeringvolume", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.status = ProtoField.new("Status", "nyse.arca.options.feed.pillar.v1.2.f.status", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.strike_price = ProtoField.new("Strike Price", "nyse.arca.options.feed.pillar.v1.2.f.strikeprice", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.symbol = ProtoField.new("Symbol", "nyse.arca.options.feed.pillar.v1.2.f.symbol", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.arca.options.feed.pillar.v1.2.f.symbolindex", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.arca.options.feed.pillar.v1.2.f.symbolseqnum", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.system_id = ProtoField.new("System Id", "nyse.arca.options.feed.pillar.v1.2.f.systemid", ftypes.UINT8)
nyse_arca_options_feed_pillar_v1_2_f.fields.time = ProtoField.new("Time", "nyse.arca.options.feed.pillar.v1.2.f.time", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.timestamp = ProtoField.new("Timestamp", "nyse.arca.options.feed.pillar.v1.2.f.timestamp", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.arca.options.feed.pillar.v1.2.f.totalimbalanceqty", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.total_quantity = ProtoField.new("Total Quantity", "nyse.arca.options.feed.pillar.v1.2.f.totalquantity", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.arca.options.feed.pillar.v1.2.f.totalrefreshpkts", ftypes.UINT16)
nyse_arca_options_feed_pillar_v1_2_f.fields.total_volume = ProtoField.new("Total Volume", "nyse.arca.options.feed.pillar.v1.2.f.totalvolume", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.arca.options.feed.pillar.v1.2.f.tradecond1", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.trade_id = ProtoField.new("Trade Id", "nyse.arca.options.feed.pillar.v1.2.f.tradeid", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.type = ProtoField.new("Type", "nyse.arca.options.feed.pillar.v1.2.f.type", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.underlying_index = ProtoField.new("Underlying Index", "nyse.arca.options.feed.pillar.v1.2.f.underlyingindex", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nyse.arca.options.feed.pillar.v1.2.f.underlyingsymbol", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.arca.options.feed.pillar.v1.2.f.uppercollar", ftypes.INT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.volume = ProtoField.new("Volume", "nyse.arca.options.feed.pillar.v1.2.f.volume", ftypes.UINT32)
nyse_arca_options_feed_pillar_v1_2_f.fields.working_price = ProtoField.new("Working Price", "nyse.arca.options.feed.pillar.v1.2.f.workingprice", ftypes.INT32)

-- Nyse Arca Options Feed Pillar 1.2.f messages
nyse_arca_options_feed_pillar_v1_2_f.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.arca.options.feed.pillar.v1.2.f.heartbeatresponsemessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.arca.options.feed.pillar.v1.2.f.messageunavailablemessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_add_order_message = ProtoField.new("Options Add Order Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsaddordermessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_add_order_refresh_message = ProtoField.new("Options Add Order Refresh Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsaddorderrefreshmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nyse.arca.options.feed.pillar.v1.2.f.optionscrosstrademessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_delete_order_message_message = ProtoField.new("Options Delete Order Message Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsdeleteordermessagemessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_imbalance_message_message = ProtoField.new("Options Imbalance Message Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsimbalancemessagemessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_modify_order_message = ProtoField.new("Options Modify Order Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsmodifyordermessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_non_displayed_trade_message = ProtoField.new("Options Non Displayed Trade Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsnondisplayedtrademessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_order_execution_message_message = ProtoField.new("Options Order Execution Message Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsorderexecutionmessagemessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_outright_series_summary_message = ProtoField.new("Options Outright Series Summary Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsoutrightseriessummarymessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_replace_order_message_message = ProtoField.new("Options Replace Order Message Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsreplaceordermessagemessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_series_rfq_message = ProtoField.new("Options Series Rfq Message", "nyse.arca.options.feed.pillar.v1.2.f.optionsseriesrfqmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.options_trade_cancel_message = ProtoField.new("Options Trade Cancel Message", "nyse.arca.options.feed.pillar.v1.2.f.optionstradecancelmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.outright_series_index_mapping = ProtoField.new("Outright Series Index Mapping", "nyse.arca.options.feed.pillar.v1.2.f.outrightseriesindexmapping", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.arca.options.feed.pillar.v1.2.f.refreshheadermessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.arca.options.feed.pillar.v1.2.f.refreshrequestmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.arca.options.feed.pillar.v1.2.f.requestresponsemessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.arca.options.feed.pillar.v1.2.f.retransmissionrequestmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.arca.options.feed.pillar.v1.2.f.securitystatusmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.arca.options.feed.pillar.v1.2.f.sequencenumberresetmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.arca.options.feed.pillar.v1.2.f.symbolclearmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.arca.options.feed.pillar.v1.2.f.symbolindexmappingmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.arca.options.feed.pillar.v1.2.f.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_arca_options_feed_pillar_v1_2_f.fields.time_reference_message = ProtoField.new("Time Reference Message", "nyse.arca.options.feed.pillar.v1.2.f.timereferencemessage", ftypes.STRING)

-- Nyse Arca Options Feed Pillar 1.2.f generated fields
nyse_arca_options_feed_pillar_v1_2_f.fields.message_index = ProtoField.new("Message Index", "nyse.arca.options.feed.pillar.v1.2.f.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Arca Options Feed Pillar 1.2.f Element Dissection Options
show.heartbeat_response_message = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.options_add_order_message = true
show.options_add_order_refresh_message = true
show.options_cross_trade_message = true
show.options_delete_order_message_message = true
show.options_imbalance_message_message = true
show.options_modify_order_message = true
show.options_non_displayed_trade_message = true
show.options_order_execution_message_message = true
show.options_outright_series_summary_message = true
show.options_replace_order_message_message = true
show.options_series_rfq_message = true
show.options_trade_cancel_message = true
show.outright_series_index_mapping = true
show.packet = true
show.packet_header = true
show.refresh_header_message = true
show.refresh_request_message = true
show.request_response_message = true
show.retransmission_request_message = true
show.security_status_message = true
show.sequence_number_reset_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.time_reference_message = true
show.payload = false

-- Register Nyse Arca Options Feed Pillar 1.2.f Show Options
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_add_order_message = Pref.bool("Show Options Add Order Message", show.options_add_order_message, "Parse and add Options Add Order Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_add_order_refresh_message = Pref.bool("Show Options Add Order Refresh Message", show.options_add_order_refresh_message, "Parse and add Options Add Order Refresh Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_cross_trade_message = Pref.bool("Show Options Cross Trade Message", show.options_cross_trade_message, "Parse and add Options Cross Trade Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_delete_order_message_message = Pref.bool("Show Options Delete Order Message Message", show.options_delete_order_message_message, "Parse and add Options Delete Order Message Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_imbalance_message_message = Pref.bool("Show Options Imbalance Message Message", show.options_imbalance_message_message, "Parse and add Options Imbalance Message Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_modify_order_message = Pref.bool("Show Options Modify Order Message", show.options_modify_order_message, "Parse and add Options Modify Order Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_non_displayed_trade_message = Pref.bool("Show Options Non Displayed Trade Message", show.options_non_displayed_trade_message, "Parse and add Options Non Displayed Trade Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_order_execution_message_message = Pref.bool("Show Options Order Execution Message Message", show.options_order_execution_message_message, "Parse and add Options Order Execution Message Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_outright_series_summary_message = Pref.bool("Show Options Outright Series Summary Message", show.options_outright_series_summary_message, "Parse and add Options Outright Series Summary Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_replace_order_message_message = Pref.bool("Show Options Replace Order Message Message", show.options_replace_order_message_message, "Parse and add Options Replace Order Message Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_series_rfq_message = Pref.bool("Show Options Series Rfq Message", show.options_series_rfq_message, "Parse and add Options Series Rfq Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_trade_cancel_message = Pref.bool("Show Options Trade Cancel Message", show.options_trade_cancel_message, "Parse and add Options Trade Cancel Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_outright_series_index_mapping = Pref.bool("Show Outright Series Index Mapping", show.outright_series_index_mapping, "Parse and add Outright Series Index Mapping to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_time_reference_message = Pref.bool("Show Time Reference Message", show.time_reference_message, "Parse and add Time Reference Message to protocol tree")
nyse_arca_options_feed_pillar_v1_2_f.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_arca_options_feed_pillar_v1_2_f.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat_response_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_message then
    show.message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_message_header then
    show.message_header = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_message_unavailable_message then
    show.message_unavailable_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_message_unavailable_message
    changed = true
  end
  if show.options_add_order_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_add_order_message then
    show.options_add_order_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_add_order_message
    changed = true
  end
  if show.options_add_order_refresh_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_add_order_refresh_message then
    show.options_add_order_refresh_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_add_order_refresh_message
    changed = true
  end
  if show.options_cross_trade_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_cross_trade_message then
    show.options_cross_trade_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_cross_trade_message
    changed = true
  end
  if show.options_delete_order_message_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_delete_order_message_message then
    show.options_delete_order_message_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_delete_order_message_message
    changed = true
  end
  if show.options_imbalance_message_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_imbalance_message_message then
    show.options_imbalance_message_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_imbalance_message_message
    changed = true
  end
  if show.options_modify_order_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_modify_order_message then
    show.options_modify_order_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_modify_order_message
    changed = true
  end
  if show.options_non_displayed_trade_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_non_displayed_trade_message then
    show.options_non_displayed_trade_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_non_displayed_trade_message
    changed = true
  end
  if show.options_order_execution_message_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_order_execution_message_message then
    show.options_order_execution_message_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_order_execution_message_message
    changed = true
  end
  if show.options_outright_series_summary_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_outright_series_summary_message then
    show.options_outright_series_summary_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_outright_series_summary_message
    changed = true
  end
  if show.options_replace_order_message_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_replace_order_message_message then
    show.options_replace_order_message_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_replace_order_message_message
    changed = true
  end
  if show.options_series_rfq_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_series_rfq_message then
    show.options_series_rfq_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_series_rfq_message
    changed = true
  end
  if show.options_trade_cancel_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_trade_cancel_message then
    show.options_trade_cancel_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_options_trade_cancel_message
    changed = true
  end
  if show.outright_series_index_mapping ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_outright_series_index_mapping then
    show.outright_series_index_mapping = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_outright_series_index_mapping
    changed = true
  end
  if show.packet ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_packet then
    show.packet = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_packet_header then
    show.packet_header = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_refresh_header_message then
    show.refresh_header_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_refresh_request_message then
    show.refresh_request_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_request_response_message then
    show.request_response_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_retransmission_request_message then
    show.retransmission_request_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_security_status_message then
    show.security_status_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.symbol_clear_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_symbol_clear_message then
    show.symbol_clear_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.time_reference_message ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_time_reference_message then
    show.time_reference_message = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_time_reference_message
    changed = true
  end
  if show.payload ~= nyse_arca_options_feed_pillar_v1_2_f.prefs.show_payload then
    show.payload = nyse_arca_options_feed_pillar_v1_2_f.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Arca Options Feed Pillar 1.2.f
-----------------------------------------------------------------------

-- Size: Total Volume
nyse_arca_options_feed_pillar_v1_2_f_size_of.total_volume = 4

-- Display: Total Volume
nyse_arca_options_feed_pillar_v1_2_f_display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_arca_options_feed_pillar_v1_2_f_dissect.total_volume = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.total_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.total_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Size: Close
nyse_arca_options_feed_pillar_v1_2_f_size_of.close = 4

-- Display: Close
nyse_arca_options_feed_pillar_v1_2_f_display.close = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_arca_options_feed_pillar_v1_2_f_dissect.close = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.close
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.close(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.close, range, value, display)

  return offset + length, value
end

-- Size: Open
nyse_arca_options_feed_pillar_v1_2_f_size_of.open = 4

-- Display: Open
nyse_arca_options_feed_pillar_v1_2_f_display.open = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_arca_options_feed_pillar_v1_2_f_dissect.open = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.open
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.open(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.open, range, value, display)

  return offset + length, value
end

-- Size: Low Price
nyse_arca_options_feed_pillar_v1_2_f_size_of.low_price = 4

-- Display: Low Price
nyse_arca_options_feed_pillar_v1_2_f_display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_arca_options_feed_pillar_v1_2_f_dissect.low_price = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.low_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.low_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
nyse_arca_options_feed_pillar_v1_2_f_size_of.high_price = 4

-- Display: High Price
nyse_arca_options_feed_pillar_v1_2_f_display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_arca_options_feed_pillar_v1_2_f_dissect.high_price = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.high_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.high_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Series Index
nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index = 4

-- Display: Series Index
nyse_arca_options_feed_pillar_v1_2_f_display.series_index = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.series_index(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.series_index, range, value, display)

  return offset + length, value
end

-- Size: Source Time Ns
nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns = 4

-- Display: Source Time Ns
nyse_arca_options_feed_pillar_v1_2_f_display.source_time_ns = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.source_time_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Outright Series Summary Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_outright_series_summary_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.high_price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.low_price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.open

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.close

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.total_volume

  return index
end

-- Display: Options Outright Series Summary Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_outright_series_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Outright Series Summary Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_outright_series_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- High Price: 4 Byte Signed Fixed Width Integer
  index, high_price = nyse_arca_options_feed_pillar_v1_2_f_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 4 Byte Signed Fixed Width Integer
  index, low_price = nyse_arca_options_feed_pillar_v1_2_f_dissect.low_price(buffer, index, packet, parent)

  -- Open: 4 Byte Signed Fixed Width Integer
  index, open = nyse_arca_options_feed_pillar_v1_2_f_dissect.open(buffer, index, packet, parent)

  -- Close: 4 Byte Signed Fixed Width Integer
  index, close = nyse_arca_options_feed_pillar_v1_2_f_dissect.close(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_arca_options_feed_pillar_v1_2_f_dissect.total_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Outright Series Summary Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_outright_series_summary_message = function(buffer, offset, packet, parent)
  if show.options_outright_series_summary_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_outright_series_summary_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_outright_series_summary_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_outright_series_summary_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_outright_series_summary_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Trade Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.trade_id = 4

-- Display: Trade Id
nyse_arca_options_feed_pillar_v1_2_f_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Series Seq Num
nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num = 4

-- Display: Series Seq Num
nyse_arca_options_feed_pillar_v1_2_f_display.series_seq_num = function(value)
  return "Series Seq Num: "..value
end

-- Dissect: Series Seq Num
nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.series_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.series_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Trade Cancel Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.trade_id

  return index
end

-- Display: Options Trade Cancel Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_trade_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Cancel Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Cancel Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_trade_cancel_message = function(buffer, offset, packet, parent)
  if show.options_trade_cancel_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_trade_cancel_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_trade_cancel_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_trade_cancel_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_trade_cancel_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Cross Type
nyse_arca_options_feed_pillar_v1_2_f_size_of.cross_type = 1

-- Display: Cross Type
nyse_arca_options_feed_pillar_v1_2_f_display.cross_type = function(value)
  if value == "0" then
    return "Cross Type: Market Center Opening Auction (0)"
  end
  if value == "5" then
    return "Cross Type: Market Center Reopening Auction (5)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nyse_arca_options_feed_pillar_v1_2_f_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Volume
nyse_arca_options_feed_pillar_v1_2_f_size_of.volume = 4

-- Display: Volume
nyse_arca_options_feed_pillar_v1_2_f_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_arca_options_feed_pillar_v1_2_f_dissect.volume = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price
nyse_arca_options_feed_pillar_v1_2_f_size_of.price = 4

-- Display: Price
nyse_arca_options_feed_pillar_v1_2_f_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_arca_options_feed_pillar_v1_2_f_dissect.price = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Cross Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.cross_id = 4

-- Display: Cross Id
nyse_arca_options_feed_pillar_v1_2_f_display.cross_id = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.cross_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.cross_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.cross_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Cross Trade Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.cross_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.volume

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.cross_type

  return index
end

-- Display: Options Cross Trade Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_cross_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, cross_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.cross_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_arca_options_feed_pillar_v1_2_f_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_arca_options_feed_pillar_v1_2_f_dissect.volume(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 2 values
  index, cross_type = nyse_arca_options_feed_pillar_v1_2_f_dissect.cross_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_cross_trade_message = function(buffer, offset, packet, parent)
  if show.options_cross_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_cross_trade_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_cross_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_cross_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_cross_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Price Type
nyse_arca_options_feed_pillar_v1_2_f_size_of.price_type = 1

-- Display: Price Type
nyse_arca_options_feed_pillar_v1_2_f_display.price_type = function(value)
  if value == 0 then
    return "Price Type: Strike Price Is Amount (0)"
  end
  if value == 1 then
    return "Price Type: Strike Price Is Amount (1)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
nyse_arca_options_feed_pillar_v1_2_f_dissect.price_type = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.price_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.price_type, range, value, display)

  return offset + length, value
end

-- Size: Reserved 3
nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_3 = 3

-- Display: Reserved 3
nyse_arca_options_feed_pillar_v1_2_f_display.reserved_3 = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_3 = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.reserved_3(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Size: Trade Cond 1
nyse_arca_options_feed_pillar_v1_2_f_size_of.trade_cond_1 = 1

-- Display: Trade Cond 1
nyse_arca_options_feed_pillar_v1_2_f_display.trade_cond_1 = function(value)
  return "Trade Cond 1: "..value
end

-- Dissect: Trade Cond 1
nyse_arca_options_feed_pillar_v1_2_f_dissect.trade_cond_1 = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.trade_cond_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.trade_cond_1(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.trade_cond_1, range, value, display)

  return offset + length, value
end

-- Size: Printable Flag
nyse_arca_options_feed_pillar_v1_2_f_size_of.printable_flag = 1

-- Display: Printable Flag
nyse_arca_options_feed_pillar_v1_2_f_display.printable_flag = function(value)
  if value == 0 then
    return "Printable Flag: Trade Not Included In Total Volume (0)"
  end
  if value == 1 then
    return "Printable Flag: Trade Included In Total Volume (1)"
  end

  return "Printable Flag: Unknown("..value..")"
end

-- Dissect: Printable Flag
nyse_arca_options_feed_pillar_v1_2_f_dissect.printable_flag = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.printable_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.printable_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.printable_flag, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Non Displayed Trade Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_non_displayed_trade_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.trade_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.volume

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.printable_flag

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.trade_cond_1

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_3

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price_type

  return index
end

-- Display: Options Non Displayed Trade Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_non_displayed_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Non Displayed Trade Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_non_displayed_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_arca_options_feed_pillar_v1_2_f_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_arca_options_feed_pillar_v1_2_f_dissect.volume(buffer, index, packet, parent)

  -- Printable Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, printable_flag = nyse_arca_options_feed_pillar_v1_2_f_dissect.printable_flag(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String
  index, trade_cond_1 = nyse_arca_options_feed_pillar_v1_2_f_dissect.trade_cond_1(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte
  index, reserved_3 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_3(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_type = nyse_arca_options_feed_pillar_v1_2_f_dissect.price_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Non Displayed Trade Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_non_displayed_trade_message = function(buffer, offset, packet, parent)
  if show.options_non_displayed_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_non_displayed_trade_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_non_displayed_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_non_displayed_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_non_displayed_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Rfq Status
nyse_arca_options_feed_pillar_v1_2_f_size_of.rfq_status = 1

-- Display: Rfq Status
nyse_arca_options_feed_pillar_v1_2_f_display.rfq_status = function(value)
  if value == "O" then
    return "Rfq Status: Start (O)"
  end
  if value == "Q" then
    return "Rfq Status: End (Q)"
  end

  return "Rfq Status: Unknown("..value..")"
end

-- Dissect: Rfq Status
nyse_arca_options_feed_pillar_v1_2_f_dissect.rfq_status = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.rfq_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.rfq_status(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.rfq_status, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_id = 8

-- Display: Auction Id
nyse_arca_options_feed_pillar_v1_2_f_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Size: Participant
nyse_arca_options_feed_pillar_v1_2_f_size_of.participant = 4

-- Display: Participant
nyse_arca_options_feed_pillar_v1_2_f_display.participant = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nyse_arca_options_feed_pillar_v1_2_f_dissect.participant = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.participant
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.participant(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.participant, range, value, display)

  return offset + length, value
end

-- Size: Working Price
nyse_arca_options_feed_pillar_v1_2_f_size_of.working_price = 4

-- Display: Working Price
nyse_arca_options_feed_pillar_v1_2_f_display.working_price = function(value)
  return "Working Price: "..value
end

-- Dissect: Working Price
nyse_arca_options_feed_pillar_v1_2_f_dissect.working_price = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.working_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.working_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.working_price, range, value, display)

  return offset + length, value
end

-- Size: Total Quantity
nyse_arca_options_feed_pillar_v1_2_f_size_of.total_quantity = 4

-- Display: Total Quantity
nyse_arca_options_feed_pillar_v1_2_f_display.total_quantity = function(value)
  return "Total Quantity: "..value
end

-- Dissect: Total Quantity
nyse_arca_options_feed_pillar_v1_2_f_dissect.total_quantity = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.total_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.total_quantity(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.total_quantity, range, value, display)

  return offset + length, value
end

-- Size: Capacity
nyse_arca_options_feed_pillar_v1_2_f_size_of.capacity = 1

-- Display: Capacity
nyse_arca_options_feed_pillar_v1_2_f_display.capacity = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.capacity = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.capacity(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.capacity, range, value, display)

  return offset + length, value
end

-- Size: Type
nyse_arca_options_feed_pillar_v1_2_f_size_of.type = 1

-- Display: Type
nyse_arca_options_feed_pillar_v1_2_f_display.type = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.type = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.type, range, value, display)

  return offset + length, value
end

-- Size: Side
nyse_arca_options_feed_pillar_v1_2_f_size_of.side = 1

-- Display: Side
nyse_arca_options_feed_pillar_v1_2_f_display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_arca_options_feed_pillar_v1_2_f_dissect.side = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.side(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Series Rfq Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_series_rfq_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.side

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.type

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.capacity

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.total_quantity

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.working_price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.participant

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.rfq_status

  return index
end

-- Display: Options Series Rfq Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_series_rfq_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Series Rfq Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_series_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_arca_options_feed_pillar_v1_2_f_dissect.side(buffer, index, packet, parent)

  -- Type: 1 Byte Ascii String Enum with 5 values
  index, type = nyse_arca_options_feed_pillar_v1_2_f_dissect.type(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 6 values
  index, capacity = nyse_arca_options_feed_pillar_v1_2_f_dissect.capacity(buffer, index, packet, parent)

  -- Total Quantity: 4 Byte Unsigned Fixed Width Integer
  index, total_quantity = nyse_arca_options_feed_pillar_v1_2_f_dissect.total_quantity(buffer, index, packet, parent)

  -- Working Price: 4 Byte Signed Fixed Width Integer
  index, working_price = nyse_arca_options_feed_pillar_v1_2_f_dissect.working_price(buffer, index, packet, parent)

  -- Participant: 4 Byte Unsigned Fixed Width Integer
  index, participant = nyse_arca_options_feed_pillar_v1_2_f_dissect.participant(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.auction_id(buffer, index, packet, parent)

  -- Rfq Status: 1 Byte Ascii String Enum with 2 values
  index, rfq_status = nyse_arca_options_feed_pillar_v1_2_f_dissect.rfq_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Series Rfq Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_series_rfq_message = function(buffer, offset, packet, parent)
  if show.options_series_rfq_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_series_rfq_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_series_rfq_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_series_rfq_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_series_rfq_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Cust Indicator
nyse_arca_options_feed_pillar_v1_2_f_size_of.cust_indicator = 1

-- Display: Cust Indicator
nyse_arca_options_feed_pillar_v1_2_f_display.cust_indicator = function(value)
  if value == "C" then
    return "Cust Indicator: Customer (C)"
  end
  if value == "N" then
    return "Cust Indicator: Noncustomer (N)"
  end
  if value == "D" then
    return "Cust Indicator: Derived (D)"
  end

  return "Cust Indicator: Unknown("..value..")"
end

-- Dissect: Cust Indicator
nyse_arca_options_feed_pillar_v1_2_f_dissect.cust_indicator = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.cust_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.cust_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.cust_indicator, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_1 = 1

-- Display: Reserved 1
nyse_arca_options_feed_pillar_v1_2_f_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Firm Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.firm_id = 5

-- Display: Firm Id
nyse_arca_options_feed_pillar_v1_2_f_display.firm_id = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.firm_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.firm_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.firm_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.order_id = 8

-- Display: Order Id
nyse_arca_options_feed_pillar_v1_2_f_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.order_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.order_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Add Order Refresh Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_add_order_refresh_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.order_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.volume

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.side

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.firm_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_1

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.cust_indicator

  return index
end

-- Display: Options Add Order Refresh Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_add_order_refresh_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Add Order Refresh Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_refresh_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.order_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_arca_options_feed_pillar_v1_2_f_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_arca_options_feed_pillar_v1_2_f_dissect.volume(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_arca_options_feed_pillar_v1_2_f_dissect.side(buffer, index, packet, parent)

  -- Firm Id: 5 Byte Ascii String
  index, firm_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.firm_id(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_1(buffer, index, packet, parent)

  -- Cust Indicator: 1 Byte Ascii String Enum with 3 values
  index, cust_indicator = nyse_arca_options_feed_pillar_v1_2_f_dissect.cust_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Add Order Refresh Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_refresh_message = function(buffer, offset, packet, parent)
  if show.options_add_order_refresh_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_add_order_refresh_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_refresh_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_add_order_refresh_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_refresh_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Auction Status
nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_status = 1

-- Display: Auction Status
nyse_arca_options_feed_pillar_v1_2_f_display.auction_status = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.auction_status = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.auction_status(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Size: Lower Collar
nyse_arca_options_feed_pillar_v1_2_f_size_of.lower_collar = 4

-- Display: Lower Collar
nyse_arca_options_feed_pillar_v1_2_f_display.lower_collar = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_arca_options_feed_pillar_v1_2_f_dissect.lower_collar = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.lower_collar
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.lower_collar(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Size: Upper Collar
nyse_arca_options_feed_pillar_v1_2_f_size_of.upper_collar = 4

-- Display: Upper Collar
nyse_arca_options_feed_pillar_v1_2_f_display.upper_collar = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_arca_options_feed_pillar_v1_2_f_dissect.upper_collar = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.upper_collar
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.upper_collar(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Size: Indicative Match Price
nyse_arca_options_feed_pillar_v1_2_f_size_of.indicative_match_price = 4

-- Display: Indicative Match Price
nyse_arca_options_feed_pillar_v1_2_f_display.indicative_match_price = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_arca_options_feed_pillar_v1_2_f_dissect.indicative_match_price = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.indicative_match_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.indicative_match_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Size: Reserved 4
nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_4 = 4

-- Display: Reserved 4
nyse_arca_options_feed_pillar_v1_2_f_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Auction Interest Clearing Price
nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_interest_clearing_price = 4

-- Display: Auction Interest Clearing Price
nyse_arca_options_feed_pillar_v1_2_f_display.auction_interest_clearing_price = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Dissect: Auction Interest Clearing Price
nyse_arca_options_feed_pillar_v1_2_f_dissect.auction_interest_clearing_price = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_interest_clearing_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.auction_interest_clearing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Continuous Book Clearing Price
nyse_arca_options_feed_pillar_v1_2_f_size_of.continuous_book_clearing_price = 4

-- Display: Continuous Book Clearing Price
nyse_arca_options_feed_pillar_v1_2_f_display.continuous_book_clearing_price = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_arca_options_feed_pillar_v1_2_f_dissect.continuous_book_clearing_price = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.continuous_book_clearing_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.continuous_book_clearing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Side
nyse_arca_options_feed_pillar_v1_2_f_size_of.imbalance_side = 1

-- Display: Imbalance Side
nyse_arca_options_feed_pillar_v1_2_f_display.imbalance_side = function(value)
  if value == "B" then
    return "Imbalance Side: Buy Side (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell Side (S)"
  end
  if value == "-" then
    return "Imbalance Side: Indicates No Imbalance (-)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
nyse_arca_options_feed_pillar_v1_2_f_dissect.imbalance_side = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.imbalance_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.imbalance_side(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_type = 1

-- Display: Auction Type
nyse_arca_options_feed_pillar_v1_2_f_display.auction_type = function(value)
  if value == "m" then
    return "Auction Type: Core Opening Auction (m)"
  end
  if value == "h" then
    return "Auction Type: Reopening Auction (h)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_arca_options_feed_pillar_v1_2_f_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Reserved 2
nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_2 = 2

-- Display: Reserved 2
nyse_arca_options_feed_pillar_v1_2_f_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Size: Market Imbalance Qty
nyse_arca_options_feed_pillar_v1_2_f_size_of.market_imbalance_qty = 4

-- Display: Market Imbalance Qty
nyse_arca_options_feed_pillar_v1_2_f_display.market_imbalance_qty = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_arca_options_feed_pillar_v1_2_f_dissect.market_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.market_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.market_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Total Imbalance Qty
nyse_arca_options_feed_pillar_v1_2_f_size_of.total_imbalance_qty = 4

-- Display: Total Imbalance Qty
nyse_arca_options_feed_pillar_v1_2_f_display.total_imbalance_qty = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_arca_options_feed_pillar_v1_2_f_dissect.total_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.total_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.total_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Paired Qty
nyse_arca_options_feed_pillar_v1_2_f_size_of.paired_qty = 4

-- Display: Paired Qty
nyse_arca_options_feed_pillar_v1_2_f_display.paired_qty = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_arca_options_feed_pillar_v1_2_f_dissect.paired_qty = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.paired_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.paired_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Imbalance Message Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_imbalance_message_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_4

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.paired_qty

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.total_imbalance_qty

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.market_imbalance_qty

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_2

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_type

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.imbalance_side

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.continuous_book_clearing_price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_interest_clearing_price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_4

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.indicative_match_price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.upper_collar

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.lower_collar

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.auction_status

  return index
end

-- Display: Options Imbalance Message Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_imbalance_message_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Imbalance Message Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_imbalance_message_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_4(buffer, index, packet, parent)

  -- Paired Qty: 4 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_arca_options_feed_pillar_v1_2_f_dissect.paired_qty(buffer, index, packet, parent)

  -- Total Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, total_imbalance_qty = nyse_arca_options_feed_pillar_v1_2_f_dissect.total_imbalance_qty(buffer, index, packet, parent)

  -- Market Imbalance Qty: 4 Byte Unsigned Fixed Width Integer
  index, market_imbalance_qty = nyse_arca_options_feed_pillar_v1_2_f_dissect.market_imbalance_qty(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_2(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 2 values
  index, auction_type = nyse_arca_options_feed_pillar_v1_2_f_dissect.auction_type(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = nyse_arca_options_feed_pillar_v1_2_f_dissect.imbalance_side(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: 4 Byte Signed Fixed Width Integer
  index, continuous_book_clearing_price = nyse_arca_options_feed_pillar_v1_2_f_dissect.continuous_book_clearing_price(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: 4 Byte Signed Fixed Width Integer
  index, auction_interest_clearing_price = nyse_arca_options_feed_pillar_v1_2_f_dissect.auction_interest_clearing_price(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_4(buffer, index, packet, parent)

  -- Indicative Match Price: 4 Byte Signed Fixed Width Integer
  index, indicative_match_price = nyse_arca_options_feed_pillar_v1_2_f_dissect.indicative_match_price(buffer, index, packet, parent)

  -- Upper Collar: 4 Byte Signed Fixed Width Integer
  index, upper_collar = nyse_arca_options_feed_pillar_v1_2_f_dissect.upper_collar(buffer, index, packet, parent)

  -- Lower Collar: 4 Byte Signed Fixed Width Integer
  index, lower_collar = nyse_arca_options_feed_pillar_v1_2_f_dissect.lower_collar(buffer, index, packet, parent)

  -- Auction Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, auction_status = nyse_arca_options_feed_pillar_v1_2_f_dissect.auction_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Imbalance Message Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_imbalance_message_message = function(buffer, offset, packet, parent)
  if show.options_imbalance_message_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_imbalance_message_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_imbalance_message_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_imbalance_message_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_imbalance_message_message_fields(buffer, offset, packet, element)
  end
end

-- Size: New Order Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.new_order_id = 8

-- Display: New Order Id
nyse_arca_options_feed_pillar_v1_2_f_display.new_order_id = function(value)
  return "New Order Id: "..value
end

-- Dissect: New Order Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.new_order_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.new_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.new_order_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.new_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Replace Order Message Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_replace_order_message_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.order_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.new_order_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.volume

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.side

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_1

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.cust_indicator

  return index
end

-- Display: Options Replace Order Message Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_replace_order_message_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Replace Order Message Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_replace_order_message_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.order_id(buffer, index, packet, parent)

  -- New Order Id: 8 Byte Unsigned Fixed Width Integer
  index, new_order_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.new_order_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_arca_options_feed_pillar_v1_2_f_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_arca_options_feed_pillar_v1_2_f_dissect.volume(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_arca_options_feed_pillar_v1_2_f_dissect.side(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_1(buffer, index, packet, parent)

  -- Cust Indicator: 1 Byte Ascii String Enum with 3 values
  index, cust_indicator = nyse_arca_options_feed_pillar_v1_2_f_dissect.cust_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Replace Order Message Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_replace_order_message_message = function(buffer, offset, packet, parent)
  if show.options_replace_order_message_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_replace_order_message_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_replace_order_message_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_replace_order_message_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_replace_order_message_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Options Order Execution Message Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_order_execution_message_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.order_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_1

  return index
end

-- Display: Options Order Execution Message Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_order_execution_message_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Order Execution Message Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_order_execution_message_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.order_id(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Order Execution Message Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_order_execution_message_message = function(buffer, offset, packet, parent)
  if show.options_order_execution_message_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_order_execution_message_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_order_execution_message_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_order_execution_message_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_order_execution_message_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Options Delete Order Message Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_delete_order_message_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.order_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_1

  return index
end

-- Display: Options Delete Order Message Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_delete_order_message_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Delete Order Message Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_delete_order_message_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.order_id(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Delete Order Message Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_delete_order_message_message = function(buffer, offset, packet, parent)
  if show.options_delete_order_message_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_delete_order_message_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_delete_order_message_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_delete_order_message_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_delete_order_message_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Position Change
nyse_arca_options_feed_pillar_v1_2_f_size_of.position_change = 1

-- Display: Position Change
nyse_arca_options_feed_pillar_v1_2_f_display.position_change = function(value)
  return "Position Change: "..value
end

-- Dissect: Position Change
nyse_arca_options_feed_pillar_v1_2_f_dissect.position_change = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.position_change
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.position_change(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.position_change, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Modify Order Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_modify_order_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.order_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.volume

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.position_change

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.side

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.cust_indicator

  return index
end

-- Display: Options Modify Order Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_modify_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Modify Order Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.order_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_arca_options_feed_pillar_v1_2_f_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_arca_options_feed_pillar_v1_2_f_dissect.volume(buffer, index, packet, parent)

  -- Position Change: 1 Byte Unsigned Fixed Width Integer
  index, position_change = nyse_arca_options_feed_pillar_v1_2_f_dissect.position_change(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_arca_options_feed_pillar_v1_2_f_dissect.side(buffer, index, packet, parent)

  -- Cust Indicator: 1 Byte Ascii String Enum with 3 values
  index, cust_indicator = nyse_arca_options_feed_pillar_v1_2_f_dissect.cust_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Modify Order Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_modify_order_message = function(buffer, offset, packet, parent)
  if show.options_modify_order_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_modify_order_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_modify_order_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_modify_order_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_modify_order_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Options Add Order Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.options_add_order_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.order_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.volume

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.side

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.firm_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_1

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.cust_indicator

  return index
end

-- Display: Options Add Order Message
nyse_arca_options_feed_pillar_v1_2_f_display.options_add_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Add Order Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_seq_num(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.order_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_arca_options_feed_pillar_v1_2_f_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_arca_options_feed_pillar_v1_2_f_dissect.volume(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_arca_options_feed_pillar_v1_2_f_dissect.side(buffer, index, packet, parent)

  -- Firm Id: 5 Byte Ascii String
  index, firm_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.firm_id(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_1(buffer, index, packet, parent)

  -- Cust Indicator: 1 Byte Ascii String Enum with 3 values
  index, cust_indicator = nyse_arca_options_feed_pillar_v1_2_f_dissect.cust_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Add Order Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_message = function(buffer, offset, packet, parent)
  if show.options_add_order_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.options_add_order_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.options_add_order_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Closing Only Indicator
nyse_arca_options_feed_pillar_v1_2_f_size_of.closing_only_indicator = 1

-- Display: Closing Only Indicator
nyse_arca_options_feed_pillar_v1_2_f_display.closing_only_indicator = function(value)
  if value == "0" then
    return "Closing Only Indicator: Standard Series (0)"
  end
  if value == "1" then
    return "Closing Only Indicator: Call (1)"
  end

  return "Closing Only Indicator: Unknown("..value..")"
end

-- Dissect: Closing Only Indicator
nyse_arca_options_feed_pillar_v1_2_f_dissect.closing_only_indicator = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.closing_only_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.closing_only_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.closing_only_indicator, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
nyse_arca_options_feed_pillar_v1_2_f_size_of.strike_price = 10

-- Display: Strike Price
nyse_arca_options_feed_pillar_v1_2_f_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nyse_arca_options_feed_pillar_v1_2_f_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.strike_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Put Or Call
nyse_arca_options_feed_pillar_v1_2_f_size_of.put_or_call = 1

-- Display: Put Or Call
nyse_arca_options_feed_pillar_v1_2_f_display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_arca_options_feed_pillar_v1_2_f_dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
nyse_arca_options_feed_pillar_v1_2_f_size_of.maturity_date = 6

-- Display: Maturity Date
nyse_arca_options_feed_pillar_v1_2_f_display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_arca_options_feed_pillar_v1_2_f_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Contract Multiplier
nyse_arca_options_feed_pillar_v1_2_f_size_of.contract_multiplier = 2

-- Display: Contract Multiplier
nyse_arca_options_feed_pillar_v1_2_f_display.contract_multiplier = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_arca_options_feed_pillar_v1_2_f_dissect.contract_multiplier = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.contract_multiplier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.contract_multiplier(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Price Scale Code
nyse_arca_options_feed_pillar_v1_2_f_size_of.price_scale_code = 1

-- Display: Price Scale Code
nyse_arca_options_feed_pillar_v1_2_f_display.price_scale_code = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.price_scale_code = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.price_scale_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Size: Underlying Index
nyse_arca_options_feed_pillar_v1_2_f_size_of.underlying_index = 4

-- Display: Underlying Index
nyse_arca_options_feed_pillar_v1_2_f_display.underlying_index = function(value)
  return "Underlying Index: "..value
end

-- Dissect: Underlying Index
nyse_arca_options_feed_pillar_v1_2_f_dissect.underlying_index = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.underlying_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.underlying_index(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.underlying_index, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
nyse_arca_options_feed_pillar_v1_2_f_size_of.underlying_symbol = 11

-- Display: Underlying Symbol
nyse_arca_options_feed_pillar_v1_2_f_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nyse_arca_options_feed_pillar_v1_2_f_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Option Symbol Root
nyse_arca_options_feed_pillar_v1_2_f_size_of.option_symbol_root = 6

-- Display: Option Symbol Root
nyse_arca_options_feed_pillar_v1_2_f_display.option_symbol_root = function(value)
  return "Option Symbol Root: "..value
end

-- Dissect: Option Symbol Root
nyse_arca_options_feed_pillar_v1_2_f_dissect.option_symbol_root = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.option_symbol_root
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.option_symbol_root(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.option_symbol_root, range, value, display)

  return offset + length, value
end

-- Size: System Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.system_id = 1

-- Display: System Id
nyse_arca_options_feed_pillar_v1_2_f_display.system_id = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.system_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.system_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.system_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.system_id, range, value, display)

  return offset + length, value
end

-- Size: Market Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.market_id = 2

-- Display: Market Id
nyse_arca_options_feed_pillar_v1_2_f_display.market_id = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.market_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Series Type
nyse_arca_options_feed_pillar_v1_2_f_size_of.series_type = 1

-- Display: Series Type
nyse_arca_options_feed_pillar_v1_2_f_display.series_type = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.series_type = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.series_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.series_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.series_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Outright Series Index Mapping
nyse_arca_options_feed_pillar_v1_2_f_size_of.outright_series_index_mapping = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.series_type

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.market_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.system_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.option_symbol_root

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.underlying_symbol

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.underlying_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price_scale_code

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.contract_multiplier

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.maturity_date

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.put_or_call

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.strike_price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.closing_only_indicator

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_1

  return index
end

-- Display: Outright Series Index Mapping
nyse_arca_options_feed_pillar_v1_2_f_display.outright_series_index_mapping = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Index Mapping
nyse_arca_options_feed_pillar_v1_2_f_dissect.outright_series_index_mapping_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_index(buffer, index, packet, parent)

  -- Series Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, series_type = nyse_arca_options_feed_pillar_v1_2_f_dissect.series_type(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer
  index, market_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.system_id(buffer, index, packet, parent)

  -- Option Symbol Root: 6 Byte Ascii String
  index, option_symbol_root = nyse_arca_options_feed_pillar_v1_2_f_dissect.option_symbol_root(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index, underlying_symbol = nyse_arca_options_feed_pillar_v1_2_f_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.underlying_index(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_scale_code = nyse_arca_options_feed_pillar_v1_2_f_dissect.price_scale_code(buffer, index, packet, parent)

  -- Contract Multiplier: 2 Byte Unsigned Fixed Width Integer
  index, contract_multiplier = nyse_arca_options_feed_pillar_v1_2_f_dissect.contract_multiplier(buffer, index, packet, parent)

  -- Maturity Date: 6 Byte Ascii String
  index, maturity_date = nyse_arca_options_feed_pillar_v1_2_f_dissect.maturity_date(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = nyse_arca_options_feed_pillar_v1_2_f_dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: 10 Byte Ascii String
  index, strike_price = nyse_arca_options_feed_pillar_v1_2_f_dissect.strike_price(buffer, index, packet, parent)

  -- Closing Only Indicator: 1 Byte Ascii String Enum with 2 values
  index, closing_only_indicator = nyse_arca_options_feed_pillar_v1_2_f_dissect.closing_only_indicator(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Index Mapping
nyse_arca_options_feed_pillar_v1_2_f_dissect.outright_series_index_mapping = function(buffer, offset, packet, parent)
  if show.outright_series_index_mapping then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.outright_series_index_mapping, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.outright_series_index_mapping_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.outright_series_index_mapping(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.outright_series_index_mapping_fields(buffer, offset, packet, element)
  end
end

-- Size: Last Symbol Seq Num
nyse_arca_options_feed_pillar_v1_2_f_size_of.last_symbol_seq_num = 4

-- Display: Last Symbol Seq Num
nyse_arca_options_feed_pillar_v1_2_f_display.last_symbol_seq_num = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_arca_options_feed_pillar_v1_2_f_dissect.last_symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.last_symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.last_symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Last Seq Num
nyse_arca_options_feed_pillar_v1_2_f_size_of.last_seq_num = 4

-- Display: Last Seq Num
nyse_arca_options_feed_pillar_v1_2_f_display.last_seq_num = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_arca_options_feed_pillar_v1_2_f_dissect.last_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.last_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.last_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Total Refresh Pkts
nyse_arca_options_feed_pillar_v1_2_f_size_of.total_refresh_pkts = 2

-- Display: Total Refresh Pkts
nyse_arca_options_feed_pillar_v1_2_f_display.total_refresh_pkts = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_arca_options_feed_pillar_v1_2_f_dissect.total_refresh_pkts = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.total_refresh_pkts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.total_refresh_pkts(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Size: Current Refresh Pkt
nyse_arca_options_feed_pillar_v1_2_f_size_of.current_refresh_pkt = 2

-- Display: Current Refresh Pkt
nyse_arca_options_feed_pillar_v1_2_f_display.current_refresh_pkt = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_arca_options_feed_pillar_v1_2_f_dissect.current_refresh_pkt = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.current_refresh_pkt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.current_refresh_pkt(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Header Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.refresh_header_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.current_refresh_pkt

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.total_refresh_pkts

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.last_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.last_symbol_seq_num

  return index
end

-- Display: Refresh Header Message
nyse_arca_options_feed_pillar_v1_2_f_display.refresh_header_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_header_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_arca_options_feed_pillar_v1_2_f_dissect.current_refresh_pkt(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_arca_options_feed_pillar_v1_2_f_dissect.total_refresh_pkts(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.last_seq_num(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.last_symbol_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_header_message = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_header_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.refresh_header_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_header_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Session State
nyse_arca_options_feed_pillar_v1_2_f_size_of.session_state = 1

-- Display: Session State
nyse_arca_options_feed_pillar_v1_2_f_display.session_state = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_arca_options_feed_pillar_v1_2_f_dissect.session_state = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.session_state
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.session_state(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.session_state, range, value, display)

  return offset + length, value
end

-- Size: Market State
nyse_arca_options_feed_pillar_v1_2_f_size_of.market_state = 1

-- Display: Market State
nyse_arca_options_feed_pillar_v1_2_f_display.market_state = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.market_state = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.market_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.market_state(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.market_state, range, value, display)

  return offset + length, value
end

-- Size: Ssr State
nyse_arca_options_feed_pillar_v1_2_f_size_of.ssr_state = 1

-- Display: Ssr State
nyse_arca_options_feed_pillar_v1_2_f_display.ssr_state = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_arca_options_feed_pillar_v1_2_f_dissect.ssr_state = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.ssr_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.ssr_state(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Size: Time
nyse_arca_options_feed_pillar_v1_2_f_size_of.time = 4

-- Display: Time
nyse_arca_options_feed_pillar_v1_2_f_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_arca_options_feed_pillar_v1_2_f_dissect.time = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.time(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.time, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Volume
nyse_arca_options_feed_pillar_v1_2_f_size_of.ssr_triggering_volume = 4

-- Display: Ssr Triggering Volume
nyse_arca_options_feed_pillar_v1_2_f_display.ssr_triggering_volume = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_arca_options_feed_pillar_v1_2_f_dissect.ssr_triggering_volume = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.ssr_triggering_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.ssr_triggering_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Size: Ssr Triggering Exchange Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.ssr_triggering_exchange_id = 1

-- Display: Ssr Triggering Exchange Id
nyse_arca_options_feed_pillar_v1_2_f_display.ssr_triggering_exchange_id = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.ssr_triggering_exchange_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.ssr_triggering_exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.ssr_triggering_exchange_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Size: Price 2
nyse_arca_options_feed_pillar_v1_2_f_size_of.price_2 = 4

-- Display: Price 2
nyse_arca_options_feed_pillar_v1_2_f_display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_arca_options_feed_pillar_v1_2_f_dissect.price_2 = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.price_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.price_2(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.price_2, range, value, display)

  return offset + length, value
end

-- Size: Price 1
nyse_arca_options_feed_pillar_v1_2_f_size_of.price_1 = 4

-- Display: Price 1
nyse_arca_options_feed_pillar_v1_2_f_display.price_1 = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_arca_options_feed_pillar_v1_2_f_dissect.price_1 = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.price_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.price_1(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.price_1, range, value, display)

  return offset + length, value
end

-- Size: Halt Condition
nyse_arca_options_feed_pillar_v1_2_f_size_of.halt_condition = 1

-- Display: Halt Condition
nyse_arca_options_feed_pillar_v1_2_f_display.halt_condition = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.halt_condition = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.halt_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Status
nyse_arca_options_feed_pillar_v1_2_f_size_of.security_status = 1

-- Display: Security Status
nyse_arca_options_feed_pillar_v1_2_f_display.security_status = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.security_status = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.security_status, range, value, display)

  return offset + length, value
end

-- Size: Symbol Seq Num
nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
nyse_arca_options_feed_pillar_v1_2_f_display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index = 4

-- Display: Symbol Index
nyse_arca_options_feed_pillar_v1_2_f_display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Source Time
nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time = 4

-- Display: Source Time
nyse_arca_options_feed_pillar_v1_2_f_display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.source_time(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.source_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.security_status_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.security_status

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.halt_condition

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_4

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price_1

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price_2

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.ssr_triggering_exchange_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.ssr_triggering_volume

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.time

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.ssr_state

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.market_state

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.session_state

  return index
end

-- Display: Security Status Message
nyse_arca_options_feed_pillar_v1_2_f_display.security_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 14 values
  index, security_status = nyse_arca_options_feed_pillar_v1_2_f_dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 16 values
  index, halt_condition = nyse_arca_options_feed_pillar_v1_2_f_dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_4(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_arca_options_feed_pillar_v1_2_f_dissect.price_1(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_arca_options_feed_pillar_v1_2_f_dissect.price_2(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 21 values
  index, ssr_triggering_exchange_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.ssr_triggering_exchange_id(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_arca_options_feed_pillar_v1_2_f_dissect.ssr_triggering_volume(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_arca_options_feed_pillar_v1_2_f_dissect.time(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index, ssr_state = nyse_arca_options_feed_pillar_v1_2_f_dissect.ssr_state(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_arca_options_feed_pillar_v1_2_f_dissect.market_state(buffer, index, packet, parent)

  -- Session State: 1 Byte Unsigned Fixed Width Integer
  index, session_state = nyse_arca_options_feed_pillar_v1_2_f_dissect.session_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.security_status_message = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.security_status_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.security_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.security_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.security_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Next Source Seq Num
nyse_arca_options_feed_pillar_v1_2_f_size_of.next_source_seq_num = 4

-- Display: Next Source Seq Num
nyse_arca_options_feed_pillar_v1_2_f_display.next_source_seq_num = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_arca_options_feed_pillar_v1_2_f_dissect.next_source_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.next_source_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.next_source_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Clear Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_clear_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.next_source_seq_num

  return index
end

-- Display: Symbol Clear Message
nyse_arca_options_feed_pillar_v1_2_f_display.symbol_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.next_source_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_clear_message = function(buffer, offset, packet, parent)
  if show.symbol_clear_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_clear_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.symbol_clear_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_clear_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Channel Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.channel_id = 1

-- Display: Channel Id
nyse_arca_options_feed_pillar_v1_2_f_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.product_id = 1

-- Display: Product Id
nyse_arca_options_feed_pillar_v1_2_f_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.product_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.product_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: End Seq Num
nyse_arca_options_feed_pillar_v1_2_f_size_of.end_seq_num = 4

-- Display: End Seq Num
nyse_arca_options_feed_pillar_v1_2_f_display.end_seq_num = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_arca_options_feed_pillar_v1_2_f_dissect.end_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.end_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.end_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Begin Seq Num
nyse_arca_options_feed_pillar_v1_2_f_size_of.begin_seq_num = 4

-- Display: Begin Seq Num
nyse_arca_options_feed_pillar_v1_2_f_display.begin_seq_num = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_arca_options_feed_pillar_v1_2_f_dissect.begin_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.begin_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.begin_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Unavailable Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.message_unavailable_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.begin_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.end_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.product_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.channel_id

  return index
end

-- Display: Message Unavailable Message
nyse_arca_options_feed_pillar_v1_2_f_display.message_unavailable_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.message_unavailable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.end_seq_num(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.message_unavailable_message = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.message_unavailable_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.message_unavailable_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.message_unavailable_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Source Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.source_id = 10

-- Display: Source Id
nyse_arca_options_feed_pillar_v1_2_f_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.source_id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.source_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.source_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Request Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.refresh_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.product_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.channel_id

  return index
end

-- Display: Refresh Request Message
nyse_arca_options_feed_pillar_v1_2_f_display.refresh_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_request_message = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_request_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.refresh_request_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_request_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Retransmit Method
nyse_arca_options_feed_pillar_v1_2_f_size_of.retransmit_method = 1

-- Display: Retransmit Method
nyse_arca_options_feed_pillar_v1_2_f_display.retransmit_method = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_arca_options_feed_pillar_v1_2_f_dissect.retransmit_method = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.retransmit_method
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.retransmit_method(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Request Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index_mapping_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.product_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.channel_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.retransmit_method

  return index
end

-- Display: Symbol Index Mapping Request Message
nyse_arca_options_feed_pillar_v1_2_f_display.symbol_index_mapping_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.channel_id(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer
  index, retransmit_method = nyse_arca_options_feed_pillar_v1_2_f_dissect.retransmit_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_request_message = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.symbol_index_mapping_request_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Heartbeat Response Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.heartbeat_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_id

  return index
end

-- Display: Heartbeat Response Message
nyse_arca_options_feed_pillar_v1_2_f_display.heartbeat_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.heartbeat_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.heartbeat_response_message = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.heartbeat_response_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.heartbeat_response_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.heartbeat_response_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Status
nyse_arca_options_feed_pillar_v1_2_f_size_of.status = 1

-- Display: Status
nyse_arca_options_feed_pillar_v1_2_f_display.status = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.status = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.status, range, value, display)

  return offset + length, value
end

-- Size: Request Seq Num
nyse_arca_options_feed_pillar_v1_2_f_size_of.request_seq_num = 4

-- Display: Request Seq Num
nyse_arca_options_feed_pillar_v1_2_f_display.request_seq_num = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_arca_options_feed_pillar_v1_2_f_dissect.request_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.request_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.request_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Response Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.request_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.request_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.begin_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.end_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.product_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.channel_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.status

  return index
end

-- Display: Request Response Message
nyse_arca_options_feed_pillar_v1_2_f_display.request_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.request_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.request_seq_num(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.channel_id(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 10 values
  index, status = nyse_arca_options_feed_pillar_v1_2_f_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.request_response_message = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.request_response_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.request_response_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.request_response_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.request_response_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Retransmission Request Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.retransmission_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.begin_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.end_seq_num

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.product_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.channel_id

  return index
end

-- Display: Retransmission Request Message
nyse_arca_options_feed_pillar_v1_2_f_display.retransmission_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.retransmission_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.begin_seq_num(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_options_feed_pillar_v1_2_f_dissect.end_seq_num(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_id(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.retransmission_request_message = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.retransmission_request_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.retransmission_request_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.retransmission_request_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reserved 6
nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_6 = 6

-- Display: Reserved 6
nyse_arca_options_feed_pillar_v1_2_f_display.reserved_6 = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_6 = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_6
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.reserved_6(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Size: Round Lot
nyse_arca_options_feed_pillar_v1_2_f_size_of.round_lot = 1

-- Display: Round Lot
nyse_arca_options_feed_pillar_v1_2_f_display.round_lot = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_arca_options_feed_pillar_v1_2_f_dissect.round_lot = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.round_lot
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.round_lot(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Size: Price Resolution
nyse_arca_options_feed_pillar_v1_2_f_size_of.price_resolution = 1

-- Display: Price Resolution
nyse_arca_options_feed_pillar_v1_2_f_display.price_resolution = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.price_resolution = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.price_resolution
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Volume
nyse_arca_options_feed_pillar_v1_2_f_size_of.prev_close_volume = 4

-- Display: Prev Close Volume
nyse_arca_options_feed_pillar_v1_2_f_display.prev_close_volume = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_arca_options_feed_pillar_v1_2_f_dissect.prev_close_volume = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.prev_close_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.prev_close_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Price
nyse_arca_options_feed_pillar_v1_2_f_size_of.prev_close_price = 4

-- Display: Prev Close Price
nyse_arca_options_feed_pillar_v1_2_f_display.prev_close_price = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_arca_options_feed_pillar_v1_2_f_dissect.prev_close_price = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.prev_close_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.prev_close_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
nyse_arca_options_feed_pillar_v1_2_f_size_of.lot_size = 2

-- Display: Lot Size
nyse_arca_options_feed_pillar_v1_2_f_display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_arca_options_feed_pillar_v1_2_f_dissect.lot_size = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.lot_size(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Security Type
nyse_arca_options_feed_pillar_v1_2_f_size_of.security_type = 1

-- Display: Security Type
nyse_arca_options_feed_pillar_v1_2_f_display.security_type = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.security_type = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
nyse_arca_options_feed_pillar_v1_2_f_size_of.exchange_code = 1

-- Display: Exchange Code
nyse_arca_options_feed_pillar_v1_2_f_display.exchange_code = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.exchange_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Size: Symbol
nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol = 11

-- Display: Symbol
nyse_arca_options_feed_pillar_v1_2_f_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Index Mapping Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index_mapping_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_1

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.market_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.system_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.exchange_code

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price_scale_code

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.security_type

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.lot_size

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.prev_close_price

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.prev_close_volume

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.price_resolution

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.round_lot

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_6

  return index
end

-- Display: Symbol Index Mapping Message
nyse_arca_options_feed_pillar_v1_2_f_display.symbol_index_mapping_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_1(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer
  index, market_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 8 values
  index, exchange_code = nyse_arca_options_feed_pillar_v1_2_f_dissect.exchange_code(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_scale_code = nyse_arca_options_feed_pillar_v1_2_f_dissect.price_scale_code(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_arca_options_feed_pillar_v1_2_f_dissect.security_type(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_arca_options_feed_pillar_v1_2_f_dissect.lot_size(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_arca_options_feed_pillar_v1_2_f_dissect.prev_close_price(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_arca_options_feed_pillar_v1_2_f_dissect.prev_close_volume(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_arca_options_feed_pillar_v1_2_f_dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
  index, round_lot = nyse_arca_options_feed_pillar_v1_2_f_dissect.round_lot(buffer, index, packet, parent)

  -- Reserved 6: 6 Byte
  index, reserved_6 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_message = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.symbol_index_mapping_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Id
nyse_arca_options_feed_pillar_v1_2_f_size_of.id = 4

-- Display: Id
nyse_arca_options_feed_pillar_v1_2_f_display.id = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_arca_options_feed_pillar_v1_2_f_dissect.id = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Reference Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.time_reference_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.reserved_4

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time

  return index
end

-- Display: Time Reference Message
nyse_arca_options_feed_pillar_v1_2_f_display.time_reference_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.time_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_arca_options_feed_pillar_v1_2_f_dissect.id(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_feed_pillar_v1_2_f_dissect.reserved_4(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.time_reference_message = function(buffer, offset, packet, parent)
  if show.time_reference_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.time_reference_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.time_reference_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.time_reference_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.time_reference_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Sequence Number Reset Message
nyse_arca_options_feed_pillar_v1_2_f_size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.source_time_ns

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.product_id

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.channel_id

  return index
end

-- Display: Sequence Number Reset Message
nyse_arca_options_feed_pillar_v1_2_f_display.sequence_number_reset_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_feed_pillar_v1_2_f_dissect.source_time_ns(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_feed_pillar_v1_2_f_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.sequence_number_reset_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.sequence_number_reset_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.sequence_number_reset_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
nyse_arca_options_feed_pillar_v1_2_f_size_of.payload = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.sequence_number_reset_message(buffer, offset)
  end
  -- Size of Time Reference Message
  if message_type == 2 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.time_reference_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index_mapping_message(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.retransmission_request_message(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.request_response_message(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.heartbeat_response_message(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_index_mapping_request_message(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.refresh_request_message(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.message_unavailable_message(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.symbol_clear_message(buffer, offset)
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.security_status_message(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.refresh_header_message(buffer, offset)
  end
  -- Size of Outright Series Index Mapping
  if message_type == 50 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.outright_series_index_mapping(buffer, offset)
  end
  -- Size of Outright Series Index Mapping
  if message_type == 51 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.outright_series_index_mapping(buffer, offset)
  end
  -- Size of Options Add Order Message
  if message_type == 300 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_add_order_message(buffer, offset)
  end
  -- Size of Options Modify Order Message
  if message_type == 301 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_modify_order_message(buffer, offset)
  end
  -- Size of Options Delete Order Message Message
  if message_type == 302 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_delete_order_message_message(buffer, offset)
  end
  -- Size of Options Order Execution Message Message
  if message_type == 303 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_order_execution_message_message(buffer, offset)
  end
  -- Size of Options Replace Order Message Message
  if message_type == 304 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_replace_order_message_message(buffer, offset)
  end
  -- Size of Options Imbalance Message Message
  if message_type == 305 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_imbalance_message_message(buffer, offset)
  end
  -- Size of Options Add Order Refresh Message
  if message_type == 306 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_add_order_refresh_message(buffer, offset)
  end
  -- Size of Options Series Rfq Message
  if message_type == 307 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_series_rfq_message(buffer, offset)
  end
  -- Size of Options Non Displayed Trade Message
  if message_type == 310 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_non_displayed_trade_message(buffer, offset)
  end
  -- Size of Options Cross Trade Message
  if message_type == 311 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_cross_trade_message(buffer, offset)
  end
  -- Size of Options Trade Cancel Message
  if message_type == 312 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_trade_cancel_message(buffer, offset)
  end
  -- Size of Options Outright Series Summary Message
  if message_type == 323 then
    return nyse_arca_options_feed_pillar_v1_2_f_size_of.options_outright_series_summary_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_arca_options_feed_pillar_v1_2_f_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_arca_options_feed_pillar_v1_2_f_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Time Reference Message
  if message_type == 2 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.time_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.retransmission_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.request_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.heartbeat_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_index_mapping_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.message_unavailable_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Index Mapping
  if message_type == 50 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.outright_series_index_mapping(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Index Mapping
  if message_type == 51 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.outright_series_index_mapping(buffer, offset, packet, parent)
  end
  -- Dissect Options Add Order Message
  if message_type == 300 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Modify Order Message
  if message_type == 301 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Delete Order Message Message
  if message_type == 302 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_delete_order_message_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Order Execution Message Message
  if message_type == 303 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_order_execution_message_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Replace Order Message Message
  if message_type == 304 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_replace_order_message_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Imbalance Message Message
  if message_type == 305 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_imbalance_message_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Add Order Refresh Message
  if message_type == 306 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_add_order_refresh_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Series Rfq Message
  if message_type == 307 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_series_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Non Displayed Trade Message
  if message_type == 310 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_non_displayed_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if message_type == 311 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Cancel Message
  if message_type == 312 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Outright Series Summary Message
  if message_type == 323 then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.options_outright_series_summary_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_arca_options_feed_pillar_v1_2_f_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_arca_options_feed_pillar_v1_2_f_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.payload(buffer, packet, parent)
  local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.payload, range, display)

  return nyse_arca_options_feed_pillar_v1_2_f_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nyse_arca_options_feed_pillar_v1_2_f_size_of.message_type = 2

-- Display: Message Type
nyse_arca_options_feed_pillar_v1_2_f_display.message_type = function(value)
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
    return "Message Type: Outright Series Index Mapping (50)"
  end
  if value == 51 then
    return "Message Type: Outright Series Index Mapping (51)"
  end
  if value == 300 then
    return "Message Type: Options Add Order Message (300)"
  end
  if value == 301 then
    return "Message Type: Options Modify Order Message (301)"
  end
  if value == 302 then
    return "Message Type: Options Delete Order Message Message (302)"
  end
  if value == 303 then
    return "Message Type: Options Order Execution Message Message (303)"
  end
  if value == 304 then
    return "Message Type: Options Replace Order Message Message (304)"
  end
  if value == 305 then
    return "Message Type: Options Imbalance Message Message (305)"
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
nyse_arca_options_feed_pillar_v1_2_f_size_of.message_size = 2

-- Display: Message Size
nyse_arca_options_feed_pillar_v1_2_f_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_arca_options_feed_pillar_v1_2_f_dissect.message_size = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.message_size(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nyse_arca_options_feed_pillar_v1_2_f_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.message_size

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.message_type

  return index
end

-- Display: Message Header
nyse_arca_options_feed_pillar_v1_2_f_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_arca_options_feed_pillar_v1_2_f_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_arca_options_feed_pillar_v1_2_f_dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 26 values
  index, message_type = nyse_arca_options_feed_pillar_v1_2_f_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_arca_options_feed_pillar_v1_2_f_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.message_header, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
nyse_arca_options_feed_pillar_v1_2_f_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_arca_options_feed_pillar_v1_2_f_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 26 branches
  index = nyse_arca_options_feed_pillar_v1_2_f_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_arca_options_feed_pillar_v1_2_f_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.message, buffer(offset, 0))
    local current = nyse_arca_options_feed_pillar_v1_2_f_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arca_options_feed_pillar_v1_2_f_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Nanoseconds
nyse_arca_options_feed_pillar_v1_2_f_size_of.nanoseconds = 4

-- Display: Nanoseconds
nyse_arca_options_feed_pillar_v1_2_f_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_arca_options_feed_pillar_v1_2_f_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nyse_arca_options_feed_pillar_v1_2_f_size_of.timestamp = 4

-- Display: Timestamp
nyse_arca_options_feed_pillar_v1_2_f_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_arca_options_feed_pillar_v1_2_f_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nyse_arca_options_feed_pillar_v1_2_f_size_of.sequence_number = 4

-- Display: Sequence Number
nyse_arca_options_feed_pillar_v1_2_f_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_arca_options_feed_pillar_v1_2_f_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Count
nyse_arca_options_feed_pillar_v1_2_f_size_of.message_count = 1

-- Display: Message Count
nyse_arca_options_feed_pillar_v1_2_f_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_arca_options_feed_pillar_v1_2_f_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
nyse_arca_options_feed_pillar_v1_2_f_size_of.delivery_flag = 1

-- Display: Delivery Flag
nyse_arca_options_feed_pillar_v1_2_f_display.delivery_flag = function(value)
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
nyse_arca_options_feed_pillar_v1_2_f_dissect.delivery_flag = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.delivery_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
nyse_arca_options_feed_pillar_v1_2_f_size_of.packet_size = 2

-- Display: Packet Size
nyse_arca_options_feed_pillar_v1_2_f_display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_arca_options_feed_pillar_v1_2_f_dissect.packet_size = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_feed_pillar_v1_2_f_size_of.packet_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_feed_pillar_v1_2_f_display.packet_size(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nyse_arca_options_feed_pillar_v1_2_f_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.packet_size

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.delivery_flag

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.message_count

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.sequence_number

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.timestamp

  index = index + nyse_arca_options_feed_pillar_v1_2_f_size_of.nanoseconds

  return index
end

-- Display: Packet Header
nyse_arca_options_feed_pillar_v1_2_f_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_arca_options_feed_pillar_v1_2_f_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_arca_options_feed_pillar_v1_2_f_dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_arca_options_feed_pillar_v1_2_f_dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_arca_options_feed_pillar_v1_2_f_dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_arca_options_feed_pillar_v1_2_f_dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_arca_options_feed_pillar_v1_2_f_dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_arca_options_feed_pillar_v1_2_f_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_arca_options_feed_pillar_v1_2_f_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_arca_options_feed_pillar_v1_2_f.fields.packet_header, buffer(offset, 0))
    local index = nyse_arca_options_feed_pillar_v1_2_f_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_arca_options_feed_pillar_v1_2_f_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_arca_options_feed_pillar_v1_2_f_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
nyse_arca_options_feed_pillar_v1_2_f_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_arca_options_feed_pillar_v1_2_f_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_arca_options_feed_pillar_v1_2_f_dissect.message(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_arca_options_feed_pillar_v1_2_f.init()
end

-- Dissector for Nyse Arca Options Feed Pillar 1.2.f
function nyse_arca_options_feed_pillar_v1_2_f.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_arca_options_feed_pillar_v1_2_f.name

  -- Dissect protocol
  local protocol = parent:add(nyse_arca_options_feed_pillar_v1_2_f, buffer(), nyse_arca_options_feed_pillar_v1_2_f.description, "("..buffer:len().." Bytes)")
  return nyse_arca_options_feed_pillar_v1_2_f_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_arca_options_feed_pillar_v1_2_f)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_arca_options_feed_pillar_v1_2_f_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Arca Options Feed Pillar 1.2.f
local function nyse_arca_options_feed_pillar_v1_2_f_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_arca_options_feed_pillar_v1_2_f_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_arca_options_feed_pillar_v1_2_f
  nyse_arca_options_feed_pillar_v1_2_f.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Arca Options Feed Pillar 1.2.f
nyse_arca_options_feed_pillar_v1_2_f:register_heuristic("udp", nyse_arca_options_feed_pillar_v1_2_f_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.2.f
--   Date: Friday, April 29, 2022
--   Specification: PILLAR_DEEP_Client_Specification.pdf
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
