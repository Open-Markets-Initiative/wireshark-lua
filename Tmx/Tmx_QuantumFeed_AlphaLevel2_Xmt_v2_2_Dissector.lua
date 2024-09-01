-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel2 Xmt 2.2 Protocol
local tmx_quantumfeed_alphalevel2_xmt_v2_2 = Proto("Tmx.QuantumFeed.AlphaLevel2.Xmt.v2.2.Lua", "Tmx QuantumFeed AlphaLevel2 Xmt 2.2")

-- Component Tables
local show = {}
local format = {}
local tmx_quantumfeed_alphalevel2_xmt_v2_2_display = {}
local tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect = {}
local tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel2 Xmt 2.2 Fields
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.quantumfeed.alphalevel2.xmt.v2.2.ackrequiredpossdup", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.board_lot = ProtoField.new("Board Lot", "tmx.quantumfeed.alphalevel2.xmt.v2.2.boardlot", ftypes.UINT16)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.body = ProtoField.new("Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.body", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.body_header = ProtoField.new("Body Header", "tmx.quantumfeed.alphalevel2.xmt.v2.2.bodyheader", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.body_message = ProtoField.new("Body Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.bodymessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.broker_number = ProtoField.new("Broker Number", "tmx.quantumfeed.alphalevel2.xmt.v2.2.brokernumber", ftypes.UINT16)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.business_header = ProtoField.new("Business Header", "tmx.quantumfeed.alphalevel2.xmt.v2.2.businessheader", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.buy_broker_number = ProtoField.new("Buy Broker Number", "tmx.quantumfeed.alphalevel2.xmt.v2.2.buybrokernumber", ftypes.UINT16)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.buy_display_volume = ProtoField.new("Buy Display Volume", "tmx.quantumfeed.alphalevel2.xmt.v2.2.buydisplayvolume", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.buy_order_id = ProtoField.new("Buy Order Id", "tmx.quantumfeed.alphalevel2.xmt.v2.2.buyorderid", ftypes.UINT64)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.bypass = ProtoField.new("Bypass", "tmx.quantumfeed.alphalevel2.xmt.v2.2.bypass", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.comment = ProtoField.new("Comment", "tmx.quantumfeed.alphalevel2.xmt.v2.2.comment", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.cross_type = ProtoField.new("Cross Type", "tmx.quantumfeed.alphalevel2.xmt.v2.2.crosstype", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.currency = ProtoField.new("Currency", "tmx.quantumfeed.alphalevel2.xmt.v2.2.currency", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.cusip = ProtoField.new("Cusip", "tmx.quantumfeed.alphalevel2.xmt.v2.2.cusip", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.face_value = ProtoField.new("Face Value", "tmx.quantumfeed.alphalevel2.xmt.v2.2.facevalue", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.frame_header = ProtoField.new("Frame Header", "tmx.quantumfeed.alphalevel2.xmt.v2.2.frameheader", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.initiated_by = ProtoField.new("Initiated By", "tmx.quantumfeed.alphalevel2.xmt.v2.2.initiatedby", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.is_dark = ProtoField.new("Is Dark", "tmx.quantumfeed.alphalevel2.xmt.v2.2.isdark", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.last_sale = ProtoField.new("Last Sale", "tmx.quantumfeed.alphalevel2.xmt.v2.2.lastsale", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.listing_market = ProtoField.new("Listing Market", "tmx.quantumfeed.alphalevel2.xmt.v2.2.listingmarket", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.market_state = ProtoField.new("Market State", "tmx.quantumfeed.alphalevel2.xmt.v2.2.marketstate", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.market_state_update_body = ProtoField.new("Market State Update Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.marketstateupdatebody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.market_state_update_message = ProtoField.new("Market State Update Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.marketstateupdatemessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.message_length = ProtoField.new("Message Length", "tmx.quantumfeed.alphalevel2.xmt.v2.2.messagelength", ftypes.UINT16)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.min_po_qty = ProtoField.new("Min Po Qty", "tmx.quantumfeed.alphalevel2.xmt.v2.2.minpoqty", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.msg_length = ProtoField.new("Msg Length", "tmx.quantumfeed.alphalevel2.xmt.v2.2.msglength", ftypes.UINT16)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.msg_type = ProtoField.new("Msg Type", "tmx.quantumfeed.alphalevel2.xmt.v2.2.msgtype", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.msg_version = ProtoField.new("Msg Version", "tmx.quantumfeed.alphalevel2.xmt.v2.2.msgversion", ftypes.UINT8)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.num_body = ProtoField.new("Num Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.numbody", ftypes.UINT8)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_book_body = ProtoField.new("Order Book Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.orderbookbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_book_message = ProtoField.new("Order Book Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.orderbookmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_booked_body = ProtoField.new("Order Booked Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.orderbookedbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_booked_message = ProtoField.new("Order Booked Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.orderbookedmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_cancelled_body = ProtoField.new("Order Cancelled Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.ordercancelledbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.ordercancelledmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_id = ProtoField.new("Order Id", "tmx.quantumfeed.alphalevel2.xmt.v2.2.orderid", ftypes.UINT64)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_price_time_assigned_body = ProtoField.new("Order Price Time Assigned Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.orderpricetimeassignedbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_price_time_assigned_message = ProtoField.new("Order Price Time Assigned Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.orderpricetimeassignedmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_side = ProtoField.new("Order Side", "tmx.quantumfeed.alphalevel2.xmt.v2.2.orderside", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.orig_trade_number = ProtoField.new("Orig Trade Number", "tmx.quantumfeed.alphalevel2.xmt.v2.2.origtradenumber", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.packet = ProtoField.new("Packet", "tmx.quantumfeed.alphalevel2.xmt.v2.2.packet", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.price = ProtoField.new("Price", "tmx.quantumfeed.alphalevel2.xmt.v2.2.price", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.priority_time_stamp = ProtoField.new("Priority Time Stamp", "tmx.quantumfeed.alphalevel2.xmt.v2.2.prioritytimestamp", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.product_type = ProtoField.new("Product Type", "tmx.quantumfeed.alphalevel2.xmt.v2.2.producttype", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.quantumfeed.alphalevel2.xmt.v2.2.protocolname", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.quantumfeed.alphalevel2.xmt.v2.2.protocolversion", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sell_broker_number = ProtoField.new("Sell Broker Number", "tmx.quantumfeed.alphalevel2.xmt.v2.2.sellbrokernumber", ftypes.UINT16)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sell_display_volume = ProtoField.new("Sell Display Volume", "tmx.quantumfeed.alphalevel2.xmt.v2.2.selldisplayvolume", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sell_order_id = ProtoField.new("Sell Order Id", "tmx.quantumfeed.alphalevel2.xmt.v2.2.sellorderid", ftypes.UINT64)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.quantumfeed.alphalevel2.xmt.v2.2.sequence0", ftypes.UINT8)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.quantumfeed.alphalevel2.xmt.v2.2.sequence1", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.session_id = ProtoField.new("Session Id", "tmx.quantumfeed.alphalevel2.xmt.v2.2.sessionid", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.settlement_date = ProtoField.new("Settlement Date", "tmx.quantumfeed.alphalevel2.xmt.v2.2.settlementdate", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.quantumfeed.alphalevel2.xmt.v2.2.settlementterms", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.source_id = ProtoField.new("Source Id", "tmx.quantumfeed.alphalevel2.xmt.v2.2.sourceid", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.quantumfeed.alphalevel2.xmt.v2.2.startofframe", ftypes.INT8)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stock_group = ProtoField.new("Stock Group", "tmx.quantumfeed.alphalevel2.xmt.v2.2.stockgroup", ftypes.UINT8)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stock_state = ProtoField.new("Stock State", "tmx.quantumfeed.alphalevel2.xmt.v2.2.stockstate", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stock_status_body = ProtoField.new("Stock Status Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.stockstatusbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stock_status_message = ProtoField.new("Stock Status Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.stockstatusmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stream_id = ProtoField.new("Stream Id", "tmx.quantumfeed.alphalevel2.xmt.v2.2.streamid", ftypes.UINT16)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.symbol = ProtoField.new("Symbol", "tmx.quantumfeed.alphalevel2.xmt.v2.2.symbol", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.symbol_status_body = ProtoField.new("Symbol Status Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.symbolstatusbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.symbolstatusmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.quantumfeed.alphalevel2.xmt.v2.2.testsymbol", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_cancelled_body = ProtoField.new("Trade Cancelled Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradecancelledbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_cancelled_message = ProtoField.new("Trade Cancelled Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradecancelledmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_cancelled_terms_body = ProtoField.new("Trade Cancelled Terms Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradecancelledtermsbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_cancelled_terms_message = ProtoField.new("Trade Cancelled Terms Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradecancelledtermsmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_correction_body = ProtoField.new("Trade Correction Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradecorrectionbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradecorrectionmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_correction_terms_body = ProtoField.new("Trade Correction Terms Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradecorrectiontermsbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_correction_terms_message = ProtoField.new("Trade Correction Terms Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradecorrectiontermsmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_number = ProtoField.new("Trade Number", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradenumber", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_report_body = ProtoField.new("Trade Report Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradereportbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_report_message = ProtoField.new("Trade Report Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradereportmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_report_terms_body = ProtoField.new("Trade Report Terms Body", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradereporttermsbody", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_report_terms_message = ProtoField.new("Trade Report Terms Message", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradereporttermsmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradetimestamp", ftypes.UINT32)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.quantumfeed.alphalevel2.xmt.v2.2.tradingsystemtimestamp", ftypes.UINT64)
tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.volume = ProtoField.new("Volume", "tmx.quantumfeed.alphalevel2.xmt.v2.2.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel2 Xmt 2.2 Element Dissection Options
show.body = true
show.body_header = true
show.business_header = true
show.frame_header = true
show.market_state_update_body = true
show.market_state_update_message = true
show.order_book_body = true
show.order_book_message = true
show.order_booked_body = true
show.order_booked_message = true
show.order_cancelled_body = true
show.order_cancelled_message = true
show.order_price_time_assigned_body = true
show.order_price_time_assigned_message = true
show.packet = true
show.stock_status_body = true
show.stock_status_message = true
show.symbol_status_body = true
show.symbol_status_message = true
show.trade_cancelled_body = true
show.trade_cancelled_message = true
show.trade_cancelled_terms_body = true
show.trade_cancelled_terms_message = true
show.trade_correction_body = true
show.trade_correction_message = true
show.trade_correction_terms_body = true
show.trade_correction_terms_message = true
show.trade_report_body = true
show.trade_report_message = true
show.trade_report_terms_body = true
show.trade_report_terms_message = true
show.body_message = false

-- Register Tmx QuantumFeed AlphaLevel2 Xmt 2.2 Show Options
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_body = Pref.bool("Show Body", show.body, "Parse and add Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_body_header = Pref.bool("Show Body Header", show.body_header, "Parse and add Body Header to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_business_header = Pref.bool("Show Business Header", show.business_header, "Parse and add Business Header to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_frame_header = Pref.bool("Show Frame Header", show.frame_header, "Parse and add Frame Header to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_market_state_update_body = Pref.bool("Show Market State Update Body", show.market_state_update_body, "Parse and add Market State Update Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_market_state_update_message = Pref.bool("Show Market State Update Message", show.market_state_update_message, "Parse and add Market State Update Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_book_body = Pref.bool("Show Order Book Body", show.order_book_body, "Parse and add Order Book Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_book_message = Pref.bool("Show Order Book Message", show.order_book_message, "Parse and add Order Book Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_booked_body = Pref.bool("Show Order Booked Body", show.order_booked_body, "Parse and add Order Booked Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_booked_message = Pref.bool("Show Order Booked Message", show.order_booked_message, "Parse and add Order Booked Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_cancelled_body = Pref.bool("Show Order Cancelled Body", show.order_cancelled_body, "Parse and add Order Cancelled Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_cancelled_message = Pref.bool("Show Order Cancelled Message", show.order_cancelled_message, "Parse and add Order Cancelled Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_price_time_assigned_body = Pref.bool("Show Order Price Time Assigned Body", show.order_price_time_assigned_body, "Parse and add Order Price Time Assigned Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_price_time_assigned_message = Pref.bool("Show Order Price Time Assigned Message", show.order_price_time_assigned_message, "Parse and add Order Price Time Assigned Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_stock_status_body = Pref.bool("Show Stock Status Body", show.stock_status_body, "Parse and add Stock Status Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_stock_status_message = Pref.bool("Show Stock Status Message", show.stock_status_message, "Parse and add Stock Status Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_symbol_status_body = Pref.bool("Show Symbol Status Body", show.symbol_status_body, "Parse and add Symbol Status Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_symbol_status_message = Pref.bool("Show Symbol Status Message", show.symbol_status_message, "Parse and add Symbol Status Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_body = Pref.bool("Show Trade Cancelled Body", show.trade_cancelled_body, "Parse and add Trade Cancelled Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_message = Pref.bool("Show Trade Cancelled Message", show.trade_cancelled_message, "Parse and add Trade Cancelled Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_terms_body = Pref.bool("Show Trade Cancelled Terms Body", show.trade_cancelled_terms_body, "Parse and add Trade Cancelled Terms Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_terms_message = Pref.bool("Show Trade Cancelled Terms Message", show.trade_cancelled_terms_message, "Parse and add Trade Cancelled Terms Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_body = Pref.bool("Show Trade Correction Body", show.trade_correction_body, "Parse and add Trade Correction Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_terms_body = Pref.bool("Show Trade Correction Terms Body", show.trade_correction_terms_body, "Parse and add Trade Correction Terms Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_terms_message = Pref.bool("Show Trade Correction Terms Message", show.trade_correction_terms_message, "Parse and add Trade Correction Terms Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_body = Pref.bool("Show Trade Report Body", show.trade_report_body, "Parse and add Trade Report Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_terms_body = Pref.bool("Show Trade Report Terms Body", show.trade_report_terms_body, "Parse and add Trade Report Terms Body to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_terms_message = Pref.bool("Show Trade Report Terms Message", show.trade_report_terms_message, "Parse and add Trade Report Terms Message to protocol tree")
tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_body_message = Pref.bool("Show Body Message", show.body_message, "Parse and add Body Message to protocol tree")

-- Handle changed preferences
function tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_body then
    show.body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_body
    changed = true
  end
  if show.body_header ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_body_header then
    show.body_header = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_body_header
    changed = true
  end
  if show.business_header ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_business_header then
    show.business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_business_header
    changed = true
  end
  if show.frame_header ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_frame_header then
    show.frame_header = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_frame_header
    changed = true
  end
  if show.market_state_update_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_market_state_update_body then
    show.market_state_update_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_market_state_update_body
    changed = true
  end
  if show.market_state_update_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_market_state_update_message then
    show.market_state_update_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_market_state_update_message
    changed = true
  end
  if show.order_book_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_book_body then
    show.order_book_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_book_body
    changed = true
  end
  if show.order_book_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_book_message then
    show.order_book_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_book_message
    changed = true
  end
  if show.order_booked_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_booked_body then
    show.order_booked_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_booked_body
    changed = true
  end
  if show.order_booked_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_booked_message then
    show.order_booked_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_booked_message
    changed = true
  end
  if show.order_cancelled_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_cancelled_body then
    show.order_cancelled_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_cancelled_body
    changed = true
  end
  if show.order_cancelled_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_cancelled_message then
    show.order_cancelled_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_cancelled_message
    changed = true
  end
  if show.order_price_time_assigned_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_price_time_assigned_body then
    show.order_price_time_assigned_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_price_time_assigned_body
    changed = true
  end
  if show.order_price_time_assigned_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_price_time_assigned_message then
    show.order_price_time_assigned_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_order_price_time_assigned_message
    changed = true
  end
  if show.packet ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_packet then
    show.packet = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_packet
    changed = true
  end
  if show.stock_status_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_stock_status_body then
    show.stock_status_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_stock_status_body
    changed = true
  end
  if show.stock_status_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_stock_status_message then
    show.stock_status_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_stock_status_message
    changed = true
  end
  if show.symbol_status_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_symbol_status_body then
    show.symbol_status_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_symbol_status_body
    changed = true
  end
  if show.symbol_status_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_symbol_status_message then
    show.symbol_status_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_symbol_status_message
    changed = true
  end
  if show.trade_cancelled_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_body then
    show.trade_cancelled_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_body
    changed = true
  end
  if show.trade_cancelled_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_message then
    show.trade_cancelled_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_message
    changed = true
  end
  if show.trade_cancelled_terms_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_terms_body then
    show.trade_cancelled_terms_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_terms_body
    changed = true
  end
  if show.trade_cancelled_terms_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_terms_message then
    show.trade_cancelled_terms_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_cancelled_terms_message
    changed = true
  end
  if show.trade_correction_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_body then
    show.trade_correction_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_body
    changed = true
  end
  if show.trade_correction_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_message then
    show.trade_correction_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_message
    changed = true
  end
  if show.trade_correction_terms_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_terms_body then
    show.trade_correction_terms_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_terms_body
    changed = true
  end
  if show.trade_correction_terms_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_terms_message then
    show.trade_correction_terms_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_correction_terms_message
    changed = true
  end
  if show.trade_report_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_body then
    show.trade_report_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_body
    changed = true
  end
  if show.trade_report_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_message then
    show.trade_report_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_message
    changed = true
  end
  if show.trade_report_terms_body ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_terms_body then
    show.trade_report_terms_body = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_terms_body
    changed = true
  end
  if show.trade_report_terms_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_terms_message then
    show.trade_report_terms_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_trade_report_terms_message
    changed = true
  end
  if show.body_message ~= tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_body_message then
    show.body_message = tmx_quantumfeed_alphalevel2_xmt_v2_2.prefs.show_body_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Tmx QuantumFeed AlphaLevel2 Xmt 2.2
-----------------------------------------------------------------------

-- Size: Trading System Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp = 8

-- Display: Trading System Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trading_system_time_stamp = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Trading System Time Stamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trading System Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trading_system_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trading_system_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.cross_type = 1

-- Display: Cross Type
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.cross_type = function(value)
  if value == "I" then
    return "Cross Type: Internal (I)"
  end
  if value == "B" then
    return "Cross Type: Basis (B)"
  end
  if value == "C" then
    return "Cross Type: Contingent (C)"
  end
  if value == "D" then
    return "Cross Type: Derivative Related (D)"
  end
  if value == "R" then
    return "Cross Type: Regular (R)"
  end
  if value == "V" then
    return "Cross Type: Volume Weighted Average Price (V)"
  end
  if value == " " then
    return "Cross Type: Default (<whitespace>)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Settlement Date
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.settlement_date = 4

-- Display: Settlement Date
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.settlement_date = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.settlement_date = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.settlement_date(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Settlement Terms
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.settlement_terms = 1

-- Display: Settlement Terms
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.settlement_terms = function(value)
  if value == "C" then
    return "Settlement Terms: Cash (C)"
  end
  if value == "N" then
    return "Settlement Terms: Nn (N)"
  end
  if value == "M" then
    return "Settlement Terms: Ms (M)"
  end
  if value == "T" then
    return "Settlement Terms: Ct (T)"
  end
  if value == "D" then
    return "Settlement Terms: Xalid Settlement Date (D)"
  end
  if value == " " then
    return "Settlement Terms: No Settlement Terms (<whitespace>)"
  end

  return "Settlement Terms: Unknown("..value..")"
end

-- Dissect: Settlement Terms
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.settlement_terms = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.settlement_terms
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.settlement_terms(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Size: Trade Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_time_stamp = 4

-- Display: Trade Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_time_stamp = function(value)
  return "Trade Time Stamp: "..value
end

-- Dissect: Trade Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_time_stamp = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Orig Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.orig_trade_number = 4

-- Display: Orig Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.orig_trade_number = function(value)
  return "Orig Trade Number: "..value
end

-- Dissect: Orig Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.orig_trade_number = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.orig_trade_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.orig_trade_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.orig_trade_number, range, value, display)

  return offset + length, value
end

-- Size: Initiated By
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.initiated_by = 1

-- Display: Initiated By
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.initiated_by = function(value)
  if value == "B" then
    return "Initiated By: Buy Side (B)"
  end
  if value == "S" then
    return "Initiated By: Sell Side (S)"
  end
  if value == "S" then
    return "Initiated By: Both Sides (S)"
  end

  return "Initiated By: Unknown("..value..")"
end

-- Dissect: Initiated By
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.initiated_by = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.initiated_by
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.initiated_by(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.initiated_by, range, value, display)

  return offset + length, value
end

-- Size: Sell Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_broker_number = 2

-- Display: Sell Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sell_broker_number = function(value)
  return "Sell Broker Number: "..value
end

-- Dissect: Sell Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_broker_number = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sell_broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sell_broker_number, range, value, display)

  return offset + length, value
end

-- Size: Buy Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_broker_number = 2

-- Display: Buy Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.buy_broker_number = function(value)
  return "Buy Broker Number: "..value
end

-- Dissect: Buy Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_broker_number = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.buy_broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.buy_broker_number, range, value, display)

  return offset + length, value
end

-- Size: Volume
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.volume = 4

-- Display: Volume
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.volume = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.price = 8

-- Display: Price
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.price = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_number = 4

-- Display: Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_number = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_number = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Size: Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol = 12

-- Display: Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Correction Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_terms_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.price

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.initiated_by

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.orig_trade_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_time_stamp

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.settlement_terms

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.settlement_date

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.cross_type

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Correction Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_correction_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_broker_number(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_broker_number(buffer, index, packet, parent)

  -- Initiated By: 1 Byte Ascii String Enum with 3 values
  index, initiated_by = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.initiated_by(buffer, index, packet, parent)

  -- Orig Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.orig_trade_number(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.settlement_terms(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, settlement_date = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.settlement_date(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.cross_type(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_terms_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_correction_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_correction_terms_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_terms_body_fields(buffer, offset, packet, parent)
end

-- Size: Sequence 1
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sequence_1 = 4

-- Display: Sequence 1
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sequence_1 = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sequence_1 = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sequence_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sequence_1(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Size: Sequence 0
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sequence_0 = 1

-- Display: Sequence 0
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sequence_0 = function(value)
  return "Sequence 0: "..value
end

-- Dissect: Sequence 0
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sequence_0 = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sequence_0
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sequence_0(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Size: Stream Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stream_id = 2

-- Display: Stream Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stream_id = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stream_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stream_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stream_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Size: Source Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.source_id = 1

-- Display: Source Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.source_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.source_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.source_id, range, value, display)

  return offset + length, value
end

-- Size: Msg Version
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.msg_version = 1

-- Display: Msg Version
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.msg_version = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.msg_version = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.msg_version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.msg_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Business Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.msg_version

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.source_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stream_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sequence_0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sequence_1

  return index
end

-- Display: Business Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.business_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Business Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: 1 Byte Unsigned Fixed Width Integer
  index, msg_version = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.msg_version(buffer, index, packet, parent)

  -- Source Id: 1 Byte Ascii String
  index, source_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.source_id(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stream_id(buffer, index, packet, parent)

  -- Sequence 0: 1 Byte Unsigned Fixed Width Integer
  index, sequence_0 = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sequence_0(buffer, index, packet, parent)

  -- Sequence 1: 4 Byte Unsigned Fixed Width Integer
  index, sequence_1 = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sequence_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.business_header then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.business_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.business_header, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Correction Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_terms_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_terms_body(buffer, offset + index)

  return index
end

-- Display: Trade Correction Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_correction_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Trade Correction Terms Body: Struct of 13 fields
  index, trade_correction_terms_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_terms_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_correction_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_correction_terms_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_terms_message_fields(buffer, offset, packet, parent)
end

-- Size: Is Dark
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.is_dark = 1

-- Display: Is Dark
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.is_dark = function(value)
  return "Is Dark: "..value
end

-- Dissect: Is Dark
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.is_dark = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.is_dark
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.is_dark(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Size: Bypass
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.bypass = 1

-- Display: Bypass
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.bypass = function(value)
  if value == "Y" then
    return "Bypass: Yes (Y)"
  end
  if value == "N" then
    return "Bypass: No (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.bypass = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.bypass
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.bypass(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.bypass, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Correction Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.price

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.initiated_by

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.orig_trade_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.bypass

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_time_stamp

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.cross_type

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.is_dark

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Correction Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_correction_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_broker_number(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_broker_number(buffer, index, packet, parent)

  -- Initiated By: 1 Byte Ascii String Enum with 3 values
  index, initiated_by = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.initiated_by(buffer, index, packet, parent)

  -- Orig Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.orig_trade_number(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.bypass(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.cross_type(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String
  index, is_dark = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.is_dark(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_correction_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_correction_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Correction Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_body(buffer, offset + index)

  return index
end

-- Display: Trade Correction Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Trade Correction Body: Struct of 13 fields
  index, trade_correction_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_correction_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_correction_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancelled Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_terms_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Cancelled Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_cancelled_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_number(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_terms_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_cancelled_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_cancelled_terms_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_terms_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancelled Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_terms_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_terms_body(buffer, offset + index)

  return index
end

-- Display: Trade Cancelled Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_cancelled_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Trade Cancelled Terms Body: Struct of 3 fields
  index, trade_cancelled_terms_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_terms_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_cancelled_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_cancelled_terms_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_terms_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancelled Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Cancelled Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_cancelled_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_number(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_cancelled_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_cancelled_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_body(buffer, offset + index)

  return index
end

-- Display: Trade Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Trade Cancelled Body: Struct of 3 fields
  index, trade_cancelled_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_cancelled_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_cancelled_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Size: Sell Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_display_volume = 4

-- Display: Sell Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sell_display_volume = function(value)
  return "Sell Display Volume: "..value
end

-- Dissect: Sell Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_display_volume = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_display_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sell_display_volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sell_display_volume, range, value, display)

  return offset + length, value
end

-- Size: Sell Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_order_id = 8

-- Display: Sell Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sell_order_id = function(value)
  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_order_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.sell_order_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Size: Buy Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_display_volume = 4

-- Display: Buy Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.buy_display_volume = function(value)
  return "Buy Display Volume: "..value
end

-- Dissect: Buy Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_display_volume = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_display_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.buy_display_volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.buy_display_volume, range, value, display)

  return offset + length, value
end

-- Size: Buy Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_order_id = 8

-- Display: Buy Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.buy_order_id = function(value)
  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_order_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.buy_order_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_terms_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.price

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_order_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_display_volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_order_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_display_volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_time_stamp

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.settlement_terms

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.settlement_date

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.cross_type

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Report Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_report_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_broker_number(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Unsigned Fixed Width Integer
  index, buy_order_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_order_id(buffer, index, packet, parent)

  -- Buy Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, buy_display_volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_display_volume(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_broker_number(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Unsigned Fixed Width Integer
  index, sell_order_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_order_id(buffer, index, packet, parent)

  -- Sell Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, sell_display_volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_display_volume(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.settlement_terms(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, settlement_date = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.settlement_date(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.cross_type(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Terms Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_terms_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_report_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_report_terms_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_terms_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Report Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_terms_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_terms_body(buffer, offset + index)

  return index
end

-- Display: Trade Report Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_report_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Trade Report Terms Body: Struct of 15 fields
  index, trade_report_terms_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_terms_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_report_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_report_terms_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_terms_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Report Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.price

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_order_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.buy_display_volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_order_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.sell_display_volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.bypass

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_time_stamp

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.cross_type

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.is_dark

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Report Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_report_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_broker_number(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Unsigned Fixed Width Integer
  index, buy_order_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_order_id(buffer, index, packet, parent)

  -- Buy Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, buy_display_volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.buy_display_volume(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_broker_number(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Unsigned Fixed Width Integer
  index, sell_order_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_order_id(buffer, index, packet, parent)

  -- Sell Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, sell_display_volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.sell_display_volume(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.bypass(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.cross_type(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String
  index, is_dark = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.is_dark(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_report_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_report_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Report Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_body(buffer, offset + index)

  return index
end

-- Display: Trade Report Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Trade Report Body: Struct of 15 fields
  index, trade_report_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.trade_report_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.trade_report_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_message_fields(buffer, offset, packet, parent)
end

-- Size: Stock State
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_state = 2

-- Display: Stock State
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stock_state = function(value)
  if value == "AS" then
    return "Stock State: Authorized Halted (AS)"
  end
  if value == "IS" then
    return "Stock State: Inhibited Halted (IS)"
  end
  if value == "A" then
    return "Stock State: Authorized (A)"
  end
  if value == "I" then
    return "Stock State: Inhibited (I)"
  end

  return "Stock State: Unknown("..value..")"
end

-- Dissect: Stock State
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_state = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stock_state(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Size: Comment
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.comment = 40

-- Display: Comment
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.comment = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.comment = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.comment
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.comment(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.comment, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Status Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_status_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.comment

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_state

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Stock Status Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stock_status_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Status Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_status_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Comment: 40 Byte Ascii String
  index, comment = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.comment(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_state(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_status_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_status_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_status_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stock_status_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stock_status_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_status_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Stock Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_status_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_status_body(buffer, offset + index)

  return index
end

-- Display: Stock Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stock_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Stock Status Body: Struct of 4 fields
  index, stock_status_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_status_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_status_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stock_status_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stock_status_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Priority Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.priority_time_stamp = 4

-- Display: Priority Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.priority_time_stamp = function(value)
  return "Priority Time Stamp: "..value
end

-- Dissect: Priority Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.priority_time_stamp = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.priority_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.priority_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.priority_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_id = 8

-- Display: Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Order Side
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_side = 1

-- Display: Order Side
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_side = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_side = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_side(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_side, range, value, display)

  return offset + length, value
end

-- Size: Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.broker_number = 2

-- Display: Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.broker_number = function(value)
  return "Broker Number: "..value
end

-- Dissect: Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.broker_number = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.broker_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Price Time Assigned Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_price_time_assigned_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_side

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.price

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.priority_time_stamp

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Order Price Time Assigned Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_price_time_assigned_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Price Time Assigned Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_price_time_assigned_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.volume(buffer, index, packet, parent)

  -- Priority Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.priority_time_stamp(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Time Assigned Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_price_time_assigned_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_price_time_assigned_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_price_time_assigned_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_price_time_assigned_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_price_time_assigned_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_price_time_assigned_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Price Time Assigned Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_price_time_assigned_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_price_time_assigned_body(buffer, offset + index)

  return index
end

-- Display: Order Price Time Assigned Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_price_time_assigned_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Price Time Assigned Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_price_time_assigned_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Order Price Time Assigned Body: Struct of 8 fields
  index, order_price_time_assigned_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_price_time_assigned_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Time Assigned Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_price_time_assigned_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_price_time_assigned_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_price_time_assigned_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_price_time_assigned_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_price_time_assigned_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_price_time_assigned_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancelled Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_cancelled_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_side

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Order Cancelled Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_cancelled_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancelled Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_cancelled_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_id(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_cancelled_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancelled_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_cancelled_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_cancelled_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_cancelled_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_cancelled_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_cancelled_body(buffer, offset + index)

  return index
end

-- Display: Order Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Order Cancelled Body: Struct of 5 fields
  index, order_cancelled_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_cancelled_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancelled_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_cancelled_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_cancelled_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Booked Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_booked_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_side

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.price

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.priority_time_stamp

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Order Booked Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_booked_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Booked Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_booked_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.volume(buffer, index, packet, parent)

  -- Priority Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.priority_time_stamp(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Booked Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_booked_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_booked_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_booked_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_booked_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_booked_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_booked_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Booked Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_booked_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_booked_body(buffer, offset + index)

  return index
end

-- Display: Order Booked Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_booked_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Booked Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_booked_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Order Booked Body: Struct of 8 fields
  index, order_booked_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_booked_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Booked Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_booked_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_booked_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_booked_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_booked_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_booked_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_booked_message_fields(buffer, offset, packet, parent)
end

-- Size: Stock Group
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_group = 1

-- Display: Stock Group
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stock_group = function(value)
  return "Stock Group: "..value
end

-- Dissect: Stock Group
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_group = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.stock_group(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Size: Market State
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.market_state = 1

-- Display: Market State
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.market_state = function(value)
  if value == "P" then
    return "Market State: Preopen (P)"
  end
  if value == "O" then
    return "Market State: Opening (O)"
  end
  if value == "S" then
    return "Market State: Open (S)"
  end
  if value == "C" then
    return "Market State: Closed (C)"
  end
  if value == "R" then
    return "Market State: Extended Hours Open (R)"
  end
  if value == "F" then
    return "Market State: Extended Hours Close (F)"
  end
  if value == "N" then
    return "Market State: Extended Hours Cxls (N)"
  end
  if value == "M" then
    return "Market State: Moc Imbalance (M)"
  end
  if value == "A" then
    return "Market State: Ccp Determination (A)"
  end
  if value == "E" then
    return "Market State: Price Movement Extension (E)"
  end
  if value == "L" then
    return "Market State: Closing (L)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.market_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.market_state(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.market_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market State Update Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.market_state_update_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.market_state

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_group

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Market State Update Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.market_state_update_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market State Update Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state_update_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market State: 1 Byte Ascii String Enum with 11 values
  index, market_state = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer
  index, stock_group = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_group(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Update Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state_update_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_state_update_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.market_state_update_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.market_state_update_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.market_state_update_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state_update_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market State Update Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.market_state_update_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.market_state_update_body(buffer, offset + index)

  return index
end

-- Display: Market State Update Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.market_state_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market State Update Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Market State Update Body: Struct of 3 fields
  index, market_state_update_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state_update_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Update Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_state_update_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.market_state_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.market_state_update_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.market_state_update_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Book Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_book_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.broker_number

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_side

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.price

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.volume

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.priority_time_stamp

  return index
end

-- Display: Order Book Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_book_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_book_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.volume(buffer, index, packet, parent)

  -- Priority Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.priority_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_book_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_book_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_book_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_book_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_book_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Book Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_book_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_book_body(buffer, offset + index)

  return index
end

-- Display: Order Book Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_book_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Order Book Body: Struct of 7 fields
  index, order_book_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_book_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_book_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_book_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.order_book_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.order_book_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_book_message_fields(buffer, offset, packet, parent)
end

-- Size: Test Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.test_symbol = 1

-- Display: Test Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.test_symbol = function(value)
  if value == "Y" then
    return "Test Symbol: Yes (Y)"
  end
  if value == "N" then
    return "Test Symbol: No (N)"
  end

  return "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.test_symbol = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.test_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.test_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Size: Min Po Qty
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.min_po_qty = 4

-- Display: Min Po Qty
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.min_po_qty = function(value)
  return "Min Po Qty: "..value
end

-- Dissect: Min Po Qty
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.min_po_qty = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.min_po_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.min_po_qty(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.min_po_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Sale
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.last_sale = 8

-- Display: Last Sale
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.last_sale = function(value)
  return "Last Sale: "..value
end

-- Translate: Last Sale
translate.last_sale = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Sale
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.last_sale = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.last_sale
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.last_sale(raw)
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.last_sale(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Size: Face Value
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.face_value = 8

-- Display: Face Value
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.face_value = function(value)
  return "Face Value: "..value
end

-- Translate: Face Value
translate.face_value = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Face Value
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.face_value = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.face_value
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.face_value(raw)
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.face_value(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.face_value, range, value, display)

  return offset + length, value
end

-- Size: Currency
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.currency = 1

-- Display: Currency
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.currency = function(value)
  if value == "U" then
    return "Currency: Usd (U)"
  end
  if value == "C" then
    return "Currency: Cad (C)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.currency = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.currency(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Board Lot
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.board_lot = 2

-- Display: Board Lot
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.board_lot = function(value)
  return "Board Lot: "..value
end

-- Dissect: Board Lot
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.board_lot = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.board_lot
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.board_lot(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Size: Cusip
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.cusip = 12

-- Display: Cusip
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.cusip = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.cusip = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.cusip
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.cusip(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.cusip, range, value, display)

  return offset + length, value
end

-- Size: Product Type
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.product_type = 1

-- Display: Product Type
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.product_type = function(value)
  if value == "B" then
    return "Product Type: Debenture (B)"
  end
  if value == "E" then
    return "Product Type: Equity (E)"
  end
  if value == "M" then
    return "Product Type: Mutual Fund (M)"
  end
  if value == "F" then
    return "Product Type: Etf (F)"
  end

  return "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.product_type = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.product_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.product_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.product_type, range, value, display)

  return offset + length, value
end

-- Size: Listing Market
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.listing_market = 1

-- Display: Listing Market
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.listing_market = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Tsxv (V)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.listing_market = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.listing_market
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.listing_market(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Status Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol_status_body = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_group

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.listing_market

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.product_type

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.cusip

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.board_lot

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.currency

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.face_value

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.last_sale

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.min_po_qty

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_state

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.test_symbol

  return index
end

-- Display: Symbol Status Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.symbol_status_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Status Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol_status_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer
  index, stock_group = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_group(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 2 values
  index, listing_market = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.listing_market(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 4 values
  index, product_type = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.product_type(buffer, index, packet, parent)

  -- Cusip: 12 Byte Ascii String
  index, cusip = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.cusip(buffer, index, packet, parent)

  -- Board Lot: 2 Byte Unsigned Fixed Width Integer
  index, board_lot = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.board_lot(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 2 values
  index, currency = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.currency(buffer, index, packet, parent)

  -- Face Value: 8 Byte Unsigned Fixed Width Integer
  index, face_value = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.face_value(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.last_sale(buffer, index, packet, parent)

  -- Min Po Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_po_qty = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.min_po_qty(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_state(buffer, index, packet, parent)

  -- Test Symbol: 1 Byte Ascii String Enum with 2 values
  index, test_symbol = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.test_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol_status_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_status_body then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol_status_body(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.symbol_status_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.symbol_status_body, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol_status_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Symbol Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol_status_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.business_header(buffer, offset + index)

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol_status_body(buffer, offset + index)

  return index
end

-- Display: Symbol Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.symbol_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Symbol Status Body: Struct of 12 fields
  index, symbol_status_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol_status_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_status_message then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.symbol_status_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.symbol_status_message, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol_status_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Body Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.body_message = function(buffer, offset, msg_type)
  -- Size of Symbol Status Message
  if msg_type == "J" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.symbol_status_message(buffer, offset)
  end
  -- Size of Order Book Message
  if msg_type == "G" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_book_message(buffer, offset)
  end
  -- Size of Market State Update Message
  if msg_type == "E" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.market_state_update_message(buffer, offset)
  end
  -- Size of Order Booked Message
  if msg_type == "P" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_booked_message(buffer, offset)
  end
  -- Size of Order Cancelled Message
  if msg_type == "Q" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_cancelled_message(buffer, offset)
  end
  -- Size of Order Price Time Assigned Message
  if msg_type == "R" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.order_price_time_assigned_message(buffer, offset)
  end
  -- Size of Stock Status Message
  if msg_type == "I" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.stock_status_message(buffer, offset)
  end
  -- Size of Trade Report Message
  if msg_type == "S" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_message(buffer, offset)
  end
  -- Size of Trade Report Terms Message
  if msg_type == "P" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_report_terms_message(buffer, offset)
  end
  -- Size of Trade Cancelled Message
  if msg_type == "T" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_message(buffer, offset)
  end
  -- Size of Trade Cancelled Terms Message
  if msg_type == "q" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_cancelled_terms_message(buffer, offset)
  end
  -- Size of Trade Correction Message
  if msg_type == "U" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_message(buffer, offset)
  end
  -- Size of Trade Correction Terms Message
  if msg_type == "r" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.trade_correction_terms_message(buffer, offset)
  end

  return 0
end

-- Display: Body Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.body_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Body Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_message_branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Symbol Status Message
  if msg_type == "J" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.symbol_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Message
  if msg_type == "G" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_book_message(buffer, offset, packet, parent)
  end
  -- Dissect Market State Update Message
  if msg_type == "E" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.market_state_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Booked Message
  if msg_type == "P" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_booked_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if msg_type == "Q" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Price Time Assigned Message
  if msg_type == "R" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.order_price_time_assigned_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if msg_type == "I" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.stock_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if msg_type == "S" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Terms Message
  if msg_type == "P" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_report_terms_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Message
  if msg_type == "T" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Terms Message
  if msg_type == "q" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_cancelled_terms_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if msg_type == "U" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Terms Message
  if msg_type == "r" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.trade_correction_terms_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Body Message
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_message = function(buffer, offset, packet, parent, msg_type)
  if not show.body_message then
    return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_message_branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.body_message(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.body_message(buffer, packet, parent)
  local element = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.body_message, range, display)

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_message_branches(buffer, offset, packet, parent, msg_type)
end

-- Size: Msg Type
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.msg_type = 1

-- Display: Msg Type
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.msg_type = function(value)
  if value == "J" then
    return "Msg Type: Symbol Status Message (J)"
  end
  if value == "G" then
    return "Msg Type: Order Book Message (G)"
  end
  if value == "E" then
    return "Msg Type: Market State Update Message (E)"
  end
  if value == "P" then
    return "Msg Type: Order Booked Message (P)"
  end
  if value == "Q" then
    return "Msg Type: Order Cancelled Message (Q)"
  end
  if value == "R" then
    return "Msg Type: Order Price Time Assigned Message (R)"
  end
  if value == "I" then
    return "Msg Type: Stock Status Message (I)"
  end
  if value == "S" then
    return "Msg Type: Trade Report Message (S)"
  end
  if value == "P" then
    return "Msg Type: Trade Report Terms Message (P)"
  end
  if value == "T" then
    return "Msg Type: Trade Cancelled Message (T)"
  end
  if value == "q" then
    return "Msg Type: Trade Cancelled Terms Message (q)"
  end
  if value == "U" then
    return "Msg Type: Trade Correction Message (U)"
  end
  if value == "r" then
    return "Msg Type: Trade Correction Terms Message (r)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.msg_type = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.msg_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.msg_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Size: Msg Length
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.msg_length = 2

-- Display: Msg Length
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.msg_length = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.msg_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Body Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.body_header = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.msg_length

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.msg_type

  return index
end

-- Display: Body Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.body_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Body Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.msg_length(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Ascii String Enum with 13 values
  index, msg_type = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.msg_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.body_header then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.body_header(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.body_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.body_header, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_header_fields(buffer, offset, packet, parent)
end

-- Display: Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_fields = function(buffer, offset, packet, parent, size_of_body)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_header(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 1, 1):string()

  -- Body Message: Runtime Type with 13 branches
  index = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_message(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body = function(buffer, offset, packet, parent, size_of_body)
  -- Optionally add struct element to protocol tree
  if show.body then
    local range = buffer(offset, size_of_body)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.body, range, display)
  end

  tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body_fields(buffer, offset, packet, parent, size_of_body)

  return offset + size_of_body
end

-- Size: Num Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.num_body = 1

-- Display: Num Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.num_body = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.num_body = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.num_body
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.num_body(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.num_body, range, value, display)

  return offset + length, value
end

-- Size: Ack Required Poss Dup
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.ack_required_poss_dup = 1

-- Display: Ack Required Poss Dup
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.ack_required_poss_dup = function(value)
  if value == "A" then
    return "Ack Required Poss Dup: Receiver Needs To Ack (A)"
  end
  if value == "D" then
    return "Ack Required Poss Dup: Possible Duplicates (D)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.ack_required_poss_dup = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.ack_required_poss_dup
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.ack_required_poss_dup(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Size: Session Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.session_id = 4

-- Display: Session Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.session_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.session_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Message Length
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.message_length = 2

-- Display: Message Length
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.message_length = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.message_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Protocol Version
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.protocol_version = 1

-- Display: Protocol Version
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.protocol_version = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.protocol_version = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.protocol_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.protocol_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Size: Protocol Name
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.protocol_name = 1

-- Display: Protocol Name
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.protocol_name = function(value)
  return "Protocol Name: "..value
end

-- Dissect: Protocol Name
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.protocol_name = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.protocol_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.protocol_name(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Size: Start Of Frame
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.start_of_frame = 1

-- Display: Start Of Frame
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.start_of_frame = function(value)
  return "Start Of Frame: "..value
end

-- Dissect: Start Of Frame
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.start_of_frame = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.start_of_frame
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.start_of_frame(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Calculate size of: Frame Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.frame_header = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.start_of_frame

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.protocol_name

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.protocol_version

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.message_length

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.session_id

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.ack_required_poss_dup

  index = index + tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.num_body

  return index
end

-- Display: Frame Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_display.frame_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Frame Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.frame_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: 1 Byte Fixed Width Integer
  index, start_of_frame = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.start_of_frame(buffer, index, packet, parent)

  -- Protocol Name: 1 Byte Ascii String
  index, protocol_name = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.protocol_name(buffer, index, packet, parent)

  -- Protocol Version: 1 Byte Ascii String
  index, protocol_version = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.protocol_version(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.message_length(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.session_id(buffer, index, packet, parent)

  -- Ack Required Poss Dup: 1 Byte Ascii String Enum with 2 values
  index, ack_required_poss_dup = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.ack_required_poss_dup(buffer, index, packet, parent)

  -- Num Body: 1 Byte Unsigned Fixed Width Integer
  index, num_body = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.num_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.frame_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.frame_header then
    local length = tmx_quantumfeed_alphalevel2_xmt_v2_2_size_of.frame_header(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_2_display.frame_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2.fields.frame_header, range, display)
  end

  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.frame_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.frame_header(buffer, index, packet, parent)

    -- Dependency element: Msg Length
    local msg_length = buffer(index, 2):le_uint()

    -- Body: Struct of 2 fields
    index = tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.body(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function tmx_quantumfeed_alphalevel2_xmt_v2_2.init()
end

-- Dissector for Tmx QuantumFeed AlphaLevel2 Xmt 2.2
function tmx_quantumfeed_alphalevel2_xmt_v2_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = tmx_quantumfeed_alphalevel2_xmt_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(tmx_quantumfeed_alphalevel2_xmt_v2_2, buffer(), tmx_quantumfeed_alphalevel2_xmt_v2_2.description, "("..buffer:len().." Bytes)")
  return tmx_quantumfeed_alphalevel2_xmt_v2_2_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, tmx_quantumfeed_alphalevel2_xmt_v2_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.tmx_quantumfeed_alphalevel2_xmt_v2_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Tmx QuantumFeed AlphaLevel2 Xmt 2.2
local function tmx_quantumfeed_alphalevel2_xmt_v2_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.tmx_quantumfeed_alphalevel2_xmt_v2_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = tmx_quantumfeed_alphalevel2_xmt_v2_2
  tmx_quantumfeed_alphalevel2_xmt_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx QuantumFeed AlphaLevel2 Xmt 2.2
tmx_quantumfeed_alphalevel2_xmt_v2_2:register_heuristic("udp", tmx_quantumfeed_alphalevel2_xmt_v2_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 2.2
--   Date: Monday, April 17, 2023
--   Specification: alpha_level_2_tmx_quantumfeed_business_message_specifications-v2-2-0.pdf
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
