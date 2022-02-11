-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx QuantumFeed TsxTsxvLevel2 Xmt 3.6 Protocol
local tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6 = Proto("Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v3.6.Lua", "Tmx QuantumFeed TsxTsxvLevel2 Xmt 3.6")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx QuantumFeed TsxTsxvLevel2 Xmt 3.6 Fields
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.ackrequiredpossdup", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_cop_no_orders_body = ProtoField.new("Assign Cop No Orders Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.assigncopnoordersbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_cop_no_orders_message = ProtoField.new("Assign Cop No Orders Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.assigncopnoordersmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_cop_orders_body = ProtoField.new("Assign Cop Orders Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.assigncopordersbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_cop_orders_message = ProtoField.new("Assign Cop Orders Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.assigncopordersmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_limit_body = ProtoField.new("Assign Limit Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.assignlimitbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_limit_message = ProtoField.new("Assign Limit Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.assignlimitmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.board_lot = ProtoField.new("Board Lot", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.boardlot", ftypes.UINT16)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.body = ProtoField.new("Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.body", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.body_header = ProtoField.new("Body Header", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.bodyheader", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.body_message = ProtoField.new("Body Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.bodymessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.broker_number = ProtoField.new("Broker Number", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.brokernumber", ftypes.UINT16)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.business_header = ProtoField.new("Business Header", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.businessheader", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_broker_number = ProtoField.new("Buy Broker Number", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.buybrokernumber", ftypes.UINT16)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_display_volume = ProtoField.new("Buy Display Volume", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.buydisplayvolume", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_maximum_quantity = ProtoField.new("Buy Maximum Quantity", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.buymaximumquantity", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_minimum_quantity = ProtoField.new("Buy Minimum Quantity", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.buyminimumquantity", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_order_id = ProtoField.new("Buy Order Id", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.buyorderid", ftypes.UINT64)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.bypass = ProtoField.new("Bypass", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.bypass", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.calculated_opening_price = ProtoField.new("Calculated Opening Price", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.calculatedopeningprice", ftypes.DOUBLE)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.comment = ProtoField.new("Comment", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.comment", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_1 = ProtoField.new("Cop Limit 1", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit1", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_10 = ProtoField.new("Cop Limit 10", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit10", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_11 = ProtoField.new("Cop Limit 11", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit11", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_12 = ProtoField.new("Cop Limit 12", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit12", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_13 = ProtoField.new("Cop Limit 13", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit13", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_14 = ProtoField.new("Cop Limit 14", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit14", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_15 = ProtoField.new("Cop Limit 15", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit15", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_2 = ProtoField.new("Cop Limit 2", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit2", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_3 = ProtoField.new("Cop Limit 3", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit3", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_4 = ProtoField.new("Cop Limit 4", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit4", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_5 = ProtoField.new("Cop Limit 5", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit5", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_6 = ProtoField.new("Cop Limit 6", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit6", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_7 = ProtoField.new("Cop Limit 7", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit7", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_8 = ProtoField.new("Cop Limit 8", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit8", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_9 = ProtoField.new("Cop Limit 9", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coplimit9", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_1 = ProtoField.new("Cop Order 1", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder1", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_10 = ProtoField.new("Cop Order 10", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder10", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_11 = ProtoField.new("Cop Order 11", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder11", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_12 = ProtoField.new("Cop Order 12", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder12", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_13 = ProtoField.new("Cop Order 13", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder13", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_14 = ProtoField.new("Cop Order 14", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder14", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_15 = ProtoField.new("Cop Order 15", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder15", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_2 = ProtoField.new("Cop Order 2", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder2", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_3 = ProtoField.new("Cop Order 3", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder3", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_4 = ProtoField.new("Cop Order 4", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder4", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_5 = ProtoField.new("Cop Order 5", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder5", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_6 = ProtoField.new("Cop Order 6", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder6", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_7 = ProtoField.new("Cop Order 7", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder7", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_8 = ProtoField.new("Cop Order 8", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder8", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_9 = ProtoField.new("Cop Order 9", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.coporder9", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cross_type = ProtoField.new("Cross Type", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.crosstype", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.currency = ProtoField.new("Currency", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.currency", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cusip = ProtoField.new("Cusip", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.cusip", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.face_value = ProtoField.new("Face Value", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.facevalue", ftypes.DOUBLE)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.far_indicative_closing_price = ProtoField.new("Far Indicative Closing Price", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.farindicativeclosingprice", ftypes.DOUBLE)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.frame_header = ProtoField.new("Frame Header", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.frameheader", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.imbalance_reference_price = ProtoField.new("Imbalance Reference Price", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.imbalancereferenceprice", ftypes.DOUBLE)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.imbalance_side = ProtoField.new("Imbalance Side", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.imbalanceside", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.imbalancevolume", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.initiated_by = ProtoField.new("Initiated By", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.initiatedby", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.is_conditional = ProtoField.new("Is Conditional", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.isconditional", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.is_dark = ProtoField.new("Is Dark", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.isdark", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.is_mid_only = ProtoField.new("Is Mid Only", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.ismidonly", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.last_sale = ProtoField.new("Last Sale", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.lastsale", ftypes.DOUBLE)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.listing_market = ProtoField.new("Listing Market", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.listingmarket", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_order_imbalance_side = ProtoField.new("Market Order Imbalance Side", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.marketorderimbalanceside", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_order_imbalance_volume = ProtoField.new("Market Order Imbalance Volume", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.marketorderimbalancevolume", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_state = ProtoField.new("Market State", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.marketstate", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_state_update_body = ProtoField.new("Market State Update Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.marketstateupdatebody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_state_update_message = ProtoField.new("Market State Update Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.marketstateupdatemessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.message_length = ProtoField.new("Message Length", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.messagelength", ftypes.UINT16)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.moc_eligible = ProtoField.new("Moc Eligible", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.moceligible", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.moc_imbalance_body = ProtoField.new("Moc Imbalance Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.mocimbalancebody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.moc_imbalance_message = ProtoField.new("Moc Imbalance Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.mocimbalancemessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.msg_length = ProtoField.new("Msg Length", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.msglength", ftypes.UINT16)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.msg_type = ProtoField.new("Msg Type", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.msgtype", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.msg_version = ProtoField.new("Msg Version", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.msgversion", ftypes.UINT8)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.near_indicative_closing_price = ProtoField.new("Near Indicative Closing Price", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.nearindicativeclosingprice", ftypes.DOUBLE)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.non_resident = ProtoField.new("Non Resident", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.nonresident", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.num_body = ProtoField.new("Num Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.numbody", ftypes.UINT8)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_book_body = ProtoField.new("Order Book Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderbookbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_book_message = ProtoField.new("Order Book Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderbookmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_book_terms_body = ProtoField.new("Order Book Terms Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderbooktermsbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_book_terms_message = ProtoField.new("Order Book Terms Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderbooktermsmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_booked_body = ProtoField.new("Order Booked Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderbookedbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_booked_message = ProtoField.new("Order Booked Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderbookedmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_booked_terms_body = ProtoField.new("Order Booked Terms Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderbookedtermsbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_booked_terms_message = ProtoField.new("Order Booked Terms Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderbookedtermsmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_cancelled_body = ProtoField.new("Order Cancelled Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.ordercancelledbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.ordercancelledmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_cancelled_terms_body = ProtoField.new("Order Cancelled Terms Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.ordercancelledtermsbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_cancelled_terms_message = ProtoField.new("Order Cancelled Terms Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.ordercancelledtermsmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_id = ProtoField.new("Order Id", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderid", ftypes.UINT64)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_price_time_assigned_body = ProtoField.new("Order Price Time Assigned Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderpricetimeassignedbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_price_time_assigned_message = ProtoField.new("Order Price Time Assigned Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderpricetimeassignedmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_price_time_assigned_terms_body = ProtoField.new("Order Price Time Assigned Terms Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderpricetimeassignedtermsbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_price_time_assigned_terms_message = ProtoField.new("Order Price Time Assigned Terms Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderpricetimeassignedtermsmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_side = ProtoField.new("Order Side", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.orderside", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.orig_trade_number = ProtoField.new("Orig Trade Number", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.origtradenumber", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.packet = ProtoField.new("Packet", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.packet", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.paired_volume = ProtoField.new("Paired Volume", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.pairedvolume", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.price = ProtoField.new("Price", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.price", ftypes.DOUBLE)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.priority_time_stamp = ProtoField.new("Priority Time Stamp", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.prioritytimestamp", ftypes.UINT64)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.product_type = ProtoField.new("Product Type", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.producttype", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.protocolname", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.protocolversion", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_broker_number = ProtoField.new("Sell Broker Number", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.sellbrokernumber", ftypes.UINT16)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_display_volume = ProtoField.new("Sell Display Volume", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.selldisplayvolume", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_maximum_quantity = ProtoField.new("Sell Maximum Quantity", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.sellmaximumquantity", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_minimum_quantity = ProtoField.new("Sell Minimum Quantity", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.sellminimumquantity", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_order_id = ProtoField.new("Sell Order Id", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.sellorderid", ftypes.UINT64)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.sequence0", ftypes.UINT8)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.sequence1", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.session_id = ProtoField.new("Session Id", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.sessionid", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.settlement_date = ProtoField.new("Settlement Date", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.settlementdate", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.settlementterms", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.source_id = ProtoField.new("Source Id", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.sourceid", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.startofframe", ftypes.INT8)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stock_group = ProtoField.new("Stock Group", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.stockgroup", ftypes.UINT8)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stock_state = ProtoField.new("Stock State", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.stockstate", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stock_status_body = ProtoField.new("Stock Status Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.stockstatusbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stock_status_message = ProtoField.new("Stock Status Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.stockstatusmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stream_id = ProtoField.new("Stream Id", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.streamid", ftypes.UINT16)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.symbol = ProtoField.new("Symbol", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.symbol", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.symbol_status_body = ProtoField.new("Symbol Status Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.symbolstatusbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.symbolstatusmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.testsymbol", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_cancelled_body = ProtoField.new("Trade Cancelled Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradecancelledbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_cancelled_message = ProtoField.new("Trade Cancelled Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradecancelledmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_cancelled_terms_body = ProtoField.new("Trade Cancelled Terms Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradecancelledtermsbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_cancelled_terms_message = ProtoField.new("Trade Cancelled Terms Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradecancelledtermsmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_correction_body = ProtoField.new("Trade Correction Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradecorrectionbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradecorrectionmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_correction_terms_body = ProtoField.new("Trade Correction Terms Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradecorrectiontermsbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_correction_terms_message = ProtoField.new("Trade Correction Terms Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradecorrectiontermsmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_date = ProtoField.new("Trade Date", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradedate", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_number = ProtoField.new("Trade Number", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradenumber", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_report_body = ProtoField.new("Trade Report Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradereportbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_report_message = ProtoField.new("Trade Report Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradereportmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_report_terms_body = ProtoField.new("Trade Report Terms Body", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradereporttermsbody", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_report_terms_message = ProtoField.new("Trade Report Terms Message", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradereporttermsmessage", ftypes.STRING)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradetimestamp", ftypes.UINT32)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.tradingsystemtimestamp", ftypes.UINT64)
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.volume = ProtoField.new("Volume", "tmx.quantumfeed.tsxtsxvlevel2.xmt.v3.6.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Tmx QuantumFeed TsxTsxvLevel2 Xmt 3.6 Element Dissection Options
show.assign_cop_no_orders_body = true
show.assign_cop_no_orders_message = true
show.assign_cop_orders_body = true
show.assign_cop_orders_message = true
show.assign_limit_body = true
show.assign_limit_message = true
show.body = true
show.body_header = true
show.business_header = true
show.cop_limit_1 = true
show.cop_limit_10 = true
show.cop_limit_11 = true
show.cop_limit_12 = true
show.cop_limit_13 = true
show.cop_limit_14 = true
show.cop_limit_15 = true
show.cop_limit_2 = true
show.cop_limit_3 = true
show.cop_limit_4 = true
show.cop_limit_5 = true
show.cop_limit_6 = true
show.cop_limit_7 = true
show.cop_limit_8 = true
show.cop_limit_9 = true
show.cop_order_1 = true
show.cop_order_10 = true
show.cop_order_11 = true
show.cop_order_12 = true
show.cop_order_13 = true
show.cop_order_14 = true
show.cop_order_15 = true
show.cop_order_2 = true
show.cop_order_3 = true
show.cop_order_4 = true
show.cop_order_5 = true
show.cop_order_6 = true
show.cop_order_7 = true
show.cop_order_8 = true
show.cop_order_9 = true
show.frame_header = true
show.market_state_update_body = true
show.market_state_update_message = true
show.moc_imbalance_body = true
show.moc_imbalance_message = true
show.order_book_body = true
show.order_book_message = true
show.order_book_terms_body = true
show.order_book_terms_message = true
show.order_booked_body = true
show.order_booked_message = true
show.order_booked_terms_body = true
show.order_booked_terms_message = true
show.order_cancelled_body = true
show.order_cancelled_message = true
show.order_cancelled_terms_body = true
show.order_cancelled_terms_message = true
show.order_price_time_assigned_body = true
show.order_price_time_assigned_message = true
show.order_price_time_assigned_terms_body = true
show.order_price_time_assigned_terms_message = true
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

-- Register Tmx QuantumFeed TsxTsxvLevel2 Xmt 3.6 Show Options
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_no_orders_body = Pref.bool("Show Assign Cop No Orders Body", show.assign_cop_no_orders_body, "Parse and add Assign Cop No Orders Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_no_orders_message = Pref.bool("Show Assign Cop No Orders Message", show.assign_cop_no_orders_message, "Parse and add Assign Cop No Orders Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_orders_body = Pref.bool("Show Assign Cop Orders Body", show.assign_cop_orders_body, "Parse and add Assign Cop Orders Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_orders_message = Pref.bool("Show Assign Cop Orders Message", show.assign_cop_orders_message, "Parse and add Assign Cop Orders Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_limit_body = Pref.bool("Show Assign Limit Body", show.assign_limit_body, "Parse and add Assign Limit Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_limit_message = Pref.bool("Show Assign Limit Message", show.assign_limit_message, "Parse and add Assign Limit Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_body = Pref.bool("Show Body", show.body, "Parse and add Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_body_header = Pref.bool("Show Body Header", show.body_header, "Parse and add Body Header to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_business_header = Pref.bool("Show Business Header", show.business_header, "Parse and add Business Header to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_1 = Pref.bool("Show Cop Limit 1", show.cop_limit_1, "Parse and add Cop Limit 1 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_10 = Pref.bool("Show Cop Limit 10", show.cop_limit_10, "Parse and add Cop Limit 10 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_11 = Pref.bool("Show Cop Limit 11", show.cop_limit_11, "Parse and add Cop Limit 11 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_12 = Pref.bool("Show Cop Limit 12", show.cop_limit_12, "Parse and add Cop Limit 12 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_13 = Pref.bool("Show Cop Limit 13", show.cop_limit_13, "Parse and add Cop Limit 13 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_14 = Pref.bool("Show Cop Limit 14", show.cop_limit_14, "Parse and add Cop Limit 14 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_15 = Pref.bool("Show Cop Limit 15", show.cop_limit_15, "Parse and add Cop Limit 15 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_2 = Pref.bool("Show Cop Limit 2", show.cop_limit_2, "Parse and add Cop Limit 2 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_3 = Pref.bool("Show Cop Limit 3", show.cop_limit_3, "Parse and add Cop Limit 3 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_4 = Pref.bool("Show Cop Limit 4", show.cop_limit_4, "Parse and add Cop Limit 4 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_5 = Pref.bool("Show Cop Limit 5", show.cop_limit_5, "Parse and add Cop Limit 5 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_6 = Pref.bool("Show Cop Limit 6", show.cop_limit_6, "Parse and add Cop Limit 6 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_7 = Pref.bool("Show Cop Limit 7", show.cop_limit_7, "Parse and add Cop Limit 7 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_8 = Pref.bool("Show Cop Limit 8", show.cop_limit_8, "Parse and add Cop Limit 8 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_9 = Pref.bool("Show Cop Limit 9", show.cop_limit_9, "Parse and add Cop Limit 9 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_1 = Pref.bool("Show Cop Order 1", show.cop_order_1, "Parse and add Cop Order 1 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_10 = Pref.bool("Show Cop Order 10", show.cop_order_10, "Parse and add Cop Order 10 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_11 = Pref.bool("Show Cop Order 11", show.cop_order_11, "Parse and add Cop Order 11 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_12 = Pref.bool("Show Cop Order 12", show.cop_order_12, "Parse and add Cop Order 12 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_13 = Pref.bool("Show Cop Order 13", show.cop_order_13, "Parse and add Cop Order 13 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_14 = Pref.bool("Show Cop Order 14", show.cop_order_14, "Parse and add Cop Order 14 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_15 = Pref.bool("Show Cop Order 15", show.cop_order_15, "Parse and add Cop Order 15 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_2 = Pref.bool("Show Cop Order 2", show.cop_order_2, "Parse and add Cop Order 2 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_3 = Pref.bool("Show Cop Order 3", show.cop_order_3, "Parse and add Cop Order 3 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_4 = Pref.bool("Show Cop Order 4", show.cop_order_4, "Parse and add Cop Order 4 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_5 = Pref.bool("Show Cop Order 5", show.cop_order_5, "Parse and add Cop Order 5 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_6 = Pref.bool("Show Cop Order 6", show.cop_order_6, "Parse and add Cop Order 6 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_7 = Pref.bool("Show Cop Order 7", show.cop_order_7, "Parse and add Cop Order 7 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_8 = Pref.bool("Show Cop Order 8", show.cop_order_8, "Parse and add Cop Order 8 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_9 = Pref.bool("Show Cop Order 9", show.cop_order_9, "Parse and add Cop Order 9 to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_frame_header = Pref.bool("Show Frame Header", show.frame_header, "Parse and add Frame Header to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_market_state_update_body = Pref.bool("Show Market State Update Body", show.market_state_update_body, "Parse and add Market State Update Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_market_state_update_message = Pref.bool("Show Market State Update Message", show.market_state_update_message, "Parse and add Market State Update Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_moc_imbalance_body = Pref.bool("Show Moc Imbalance Body", show.moc_imbalance_body, "Parse and add Moc Imbalance Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_moc_imbalance_message = Pref.bool("Show Moc Imbalance Message", show.moc_imbalance_message, "Parse and add Moc Imbalance Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_body = Pref.bool("Show Order Book Body", show.order_book_body, "Parse and add Order Book Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_message = Pref.bool("Show Order Book Message", show.order_book_message, "Parse and add Order Book Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_terms_body = Pref.bool("Show Order Book Terms Body", show.order_book_terms_body, "Parse and add Order Book Terms Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_terms_message = Pref.bool("Show Order Book Terms Message", show.order_book_terms_message, "Parse and add Order Book Terms Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_body = Pref.bool("Show Order Booked Body", show.order_booked_body, "Parse and add Order Booked Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_message = Pref.bool("Show Order Booked Message", show.order_booked_message, "Parse and add Order Booked Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_terms_body = Pref.bool("Show Order Booked Terms Body", show.order_booked_terms_body, "Parse and add Order Booked Terms Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_terms_message = Pref.bool("Show Order Booked Terms Message", show.order_booked_terms_message, "Parse and add Order Booked Terms Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_body = Pref.bool("Show Order Cancelled Body", show.order_cancelled_body, "Parse and add Order Cancelled Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_message = Pref.bool("Show Order Cancelled Message", show.order_cancelled_message, "Parse and add Order Cancelled Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_terms_body = Pref.bool("Show Order Cancelled Terms Body", show.order_cancelled_terms_body, "Parse and add Order Cancelled Terms Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_terms_message = Pref.bool("Show Order Cancelled Terms Message", show.order_cancelled_terms_message, "Parse and add Order Cancelled Terms Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_body = Pref.bool("Show Order Price Time Assigned Body", show.order_price_time_assigned_body, "Parse and add Order Price Time Assigned Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_message = Pref.bool("Show Order Price Time Assigned Message", show.order_price_time_assigned_message, "Parse and add Order Price Time Assigned Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_terms_body = Pref.bool("Show Order Price Time Assigned Terms Body", show.order_price_time_assigned_terms_body, "Parse and add Order Price Time Assigned Terms Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_terms_message = Pref.bool("Show Order Price Time Assigned Terms Message", show.order_price_time_assigned_terms_message, "Parse and add Order Price Time Assigned Terms Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_stock_status_body = Pref.bool("Show Stock Status Body", show.stock_status_body, "Parse and add Stock Status Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_stock_status_message = Pref.bool("Show Stock Status Message", show.stock_status_message, "Parse and add Stock Status Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_symbol_status_body = Pref.bool("Show Symbol Status Body", show.symbol_status_body, "Parse and add Symbol Status Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_symbol_status_message = Pref.bool("Show Symbol Status Message", show.symbol_status_message, "Parse and add Symbol Status Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_body = Pref.bool("Show Trade Cancelled Body", show.trade_cancelled_body, "Parse and add Trade Cancelled Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_message = Pref.bool("Show Trade Cancelled Message", show.trade_cancelled_message, "Parse and add Trade Cancelled Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_terms_body = Pref.bool("Show Trade Cancelled Terms Body", show.trade_cancelled_terms_body, "Parse and add Trade Cancelled Terms Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_terms_message = Pref.bool("Show Trade Cancelled Terms Message", show.trade_cancelled_terms_message, "Parse and add Trade Cancelled Terms Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_body = Pref.bool("Show Trade Correction Body", show.trade_correction_body, "Parse and add Trade Correction Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_terms_body = Pref.bool("Show Trade Correction Terms Body", show.trade_correction_terms_body, "Parse and add Trade Correction Terms Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_terms_message = Pref.bool("Show Trade Correction Terms Message", show.trade_correction_terms_message, "Parse and add Trade Correction Terms Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_body = Pref.bool("Show Trade Report Body", show.trade_report_body, "Parse and add Trade Report Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_terms_body = Pref.bool("Show Trade Report Terms Body", show.trade_report_terms_body, "Parse and add Trade Report Terms Body to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_terms_message = Pref.bool("Show Trade Report Terms Message", show.trade_report_terms_message, "Parse and add Trade Report Terms Message to protocol tree")
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_body_message = Pref.bool("Show Body Message", show.body_message, "Parse and add Body Message to protocol tree")

-- Handle changed preferences
function tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.assign_cop_no_orders_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_no_orders_body then
    show.assign_cop_no_orders_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_no_orders_body
    changed = true
  end
  if show.assign_cop_no_orders_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_no_orders_message then
    show.assign_cop_no_orders_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_no_orders_message
    changed = true
  end
  if show.assign_cop_orders_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_orders_body then
    show.assign_cop_orders_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_orders_body
    changed = true
  end
  if show.assign_cop_orders_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_orders_message then
    show.assign_cop_orders_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_cop_orders_message
    changed = true
  end
  if show.assign_limit_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_limit_body then
    show.assign_limit_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_limit_body
    changed = true
  end
  if show.assign_limit_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_limit_message then
    show.assign_limit_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_assign_limit_message
    changed = true
  end
  if show.body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_body then
    show.body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_body
    changed = true
  end
  if show.body_header ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_body_header then
    show.body_header = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_body_header
    changed = true
  end
  if show.business_header ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_business_header then
    show.business_header = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_business_header
    changed = true
  end
  if show.cop_limit_1 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_1 then
    show.cop_limit_1 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_1
    changed = true
  end
  if show.cop_limit_10 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_10 then
    show.cop_limit_10 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_10
    changed = true
  end
  if show.cop_limit_11 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_11 then
    show.cop_limit_11 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_11
    changed = true
  end
  if show.cop_limit_12 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_12 then
    show.cop_limit_12 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_12
    changed = true
  end
  if show.cop_limit_13 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_13 then
    show.cop_limit_13 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_13
    changed = true
  end
  if show.cop_limit_14 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_14 then
    show.cop_limit_14 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_14
    changed = true
  end
  if show.cop_limit_15 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_15 then
    show.cop_limit_15 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_15
    changed = true
  end
  if show.cop_limit_2 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_2 then
    show.cop_limit_2 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_2
    changed = true
  end
  if show.cop_limit_3 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_3 then
    show.cop_limit_3 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_3
    changed = true
  end
  if show.cop_limit_4 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_4 then
    show.cop_limit_4 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_4
    changed = true
  end
  if show.cop_limit_5 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_5 then
    show.cop_limit_5 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_5
    changed = true
  end
  if show.cop_limit_6 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_6 then
    show.cop_limit_6 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_6
    changed = true
  end
  if show.cop_limit_7 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_7 then
    show.cop_limit_7 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_7
    changed = true
  end
  if show.cop_limit_8 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_8 then
    show.cop_limit_8 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_8
    changed = true
  end
  if show.cop_limit_9 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_9 then
    show.cop_limit_9 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_limit_9
    changed = true
  end
  if show.cop_order_1 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_1 then
    show.cop_order_1 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_1
    changed = true
  end
  if show.cop_order_10 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_10 then
    show.cop_order_10 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_10
    changed = true
  end
  if show.cop_order_11 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_11 then
    show.cop_order_11 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_11
    changed = true
  end
  if show.cop_order_12 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_12 then
    show.cop_order_12 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_12
    changed = true
  end
  if show.cop_order_13 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_13 then
    show.cop_order_13 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_13
    changed = true
  end
  if show.cop_order_14 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_14 then
    show.cop_order_14 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_14
    changed = true
  end
  if show.cop_order_15 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_15 then
    show.cop_order_15 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_15
    changed = true
  end
  if show.cop_order_2 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_2 then
    show.cop_order_2 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_2
    changed = true
  end
  if show.cop_order_3 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_3 then
    show.cop_order_3 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_3
    changed = true
  end
  if show.cop_order_4 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_4 then
    show.cop_order_4 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_4
    changed = true
  end
  if show.cop_order_5 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_5 then
    show.cop_order_5 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_5
    changed = true
  end
  if show.cop_order_6 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_6 then
    show.cop_order_6 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_6
    changed = true
  end
  if show.cop_order_7 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_7 then
    show.cop_order_7 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_7
    changed = true
  end
  if show.cop_order_8 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_8 then
    show.cop_order_8 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_8
    changed = true
  end
  if show.cop_order_9 ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_9 then
    show.cop_order_9 = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_cop_order_9
    changed = true
  end
  if show.frame_header ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_frame_header then
    show.frame_header = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_frame_header
    changed = true
  end
  if show.market_state_update_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_market_state_update_body then
    show.market_state_update_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_market_state_update_body
    changed = true
  end
  if show.market_state_update_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_market_state_update_message then
    show.market_state_update_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_market_state_update_message
    changed = true
  end
  if show.moc_imbalance_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_moc_imbalance_body then
    show.moc_imbalance_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_moc_imbalance_body
    changed = true
  end
  if show.moc_imbalance_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_moc_imbalance_message then
    show.moc_imbalance_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_moc_imbalance_message
    changed = true
  end
  if show.order_book_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_body then
    show.order_book_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_body
    changed = true
  end
  if show.order_book_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_message then
    show.order_book_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_message
    changed = true
  end
  if show.order_book_terms_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_terms_body then
    show.order_book_terms_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_terms_body
    changed = true
  end
  if show.order_book_terms_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_terms_message then
    show.order_book_terms_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_book_terms_message
    changed = true
  end
  if show.order_booked_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_body then
    show.order_booked_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_body
    changed = true
  end
  if show.order_booked_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_message then
    show.order_booked_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_message
    changed = true
  end
  if show.order_booked_terms_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_terms_body then
    show.order_booked_terms_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_terms_body
    changed = true
  end
  if show.order_booked_terms_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_terms_message then
    show.order_booked_terms_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_booked_terms_message
    changed = true
  end
  if show.order_cancelled_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_body then
    show.order_cancelled_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_body
    changed = true
  end
  if show.order_cancelled_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_message then
    show.order_cancelled_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_message
    changed = true
  end
  if show.order_cancelled_terms_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_terms_body then
    show.order_cancelled_terms_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_terms_body
    changed = true
  end
  if show.order_cancelled_terms_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_terms_message then
    show.order_cancelled_terms_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_cancelled_terms_message
    changed = true
  end
  if show.order_price_time_assigned_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_body then
    show.order_price_time_assigned_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_body
    changed = true
  end
  if show.order_price_time_assigned_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_message then
    show.order_price_time_assigned_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_message
    changed = true
  end
  if show.order_price_time_assigned_terms_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_terms_body then
    show.order_price_time_assigned_terms_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_terms_body
    changed = true
  end
  if show.order_price_time_assigned_terms_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_terms_message then
    show.order_price_time_assigned_terms_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_order_price_time_assigned_terms_message
    changed = true
  end
  if show.packet ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_packet then
    show.packet = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_packet
    changed = true
  end
  if show.stock_status_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_stock_status_body then
    show.stock_status_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_stock_status_body
    changed = true
  end
  if show.stock_status_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_stock_status_message then
    show.stock_status_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_stock_status_message
    changed = true
  end
  if show.symbol_status_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_symbol_status_body then
    show.symbol_status_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_symbol_status_body
    changed = true
  end
  if show.symbol_status_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_symbol_status_message then
    show.symbol_status_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_symbol_status_message
    changed = true
  end
  if show.trade_cancelled_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_body then
    show.trade_cancelled_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_body
    changed = true
  end
  if show.trade_cancelled_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_message then
    show.trade_cancelled_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_message
    changed = true
  end
  if show.trade_cancelled_terms_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_terms_body then
    show.trade_cancelled_terms_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_terms_body
    changed = true
  end
  if show.trade_cancelled_terms_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_terms_message then
    show.trade_cancelled_terms_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_cancelled_terms_message
    changed = true
  end
  if show.trade_correction_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_body then
    show.trade_correction_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_body
    changed = true
  end
  if show.trade_correction_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_message then
    show.trade_correction_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_message
    changed = true
  end
  if show.trade_correction_terms_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_terms_body then
    show.trade_correction_terms_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_terms_body
    changed = true
  end
  if show.trade_correction_terms_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_terms_message then
    show.trade_correction_terms_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_correction_terms_message
    changed = true
  end
  if show.trade_report_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_body then
    show.trade_report_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_body
    changed = true
  end
  if show.trade_report_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_message then
    show.trade_report_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_message
    changed = true
  end
  if show.trade_report_terms_body ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_terms_body then
    show.trade_report_terms_body = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_terms_body
    changed = true
  end
  if show.trade_report_terms_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_terms_message then
    show.trade_report_terms_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_trade_report_terms_message
    changed = true
  end
  if show.body_message ~= tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_body_message then
    show.body_message = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.prefs.show_body_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Tmx QuantumFeed TsxTsxvLevel2 Xmt 3.6
-----------------------------------------------------------------------

-- Size: Trading System Time Stamp
size_of.trading_system_time_stamp = 8

-- Display: Trading System Time Stamp
display.trading_system_time_stamp = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Trading System Time Stamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trading System Time Stamp
dissect.trading_system_time_stamp = function(buffer, offset, packet, parent)
  local length = size_of.trading_system_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trading_system_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trading_system_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
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
  if value == "S" then
    return "Cross Type: V Special Trading Session (S)"
  end
  if value == "V" then
    return "Cross Type: Volume Weighted Average Price (V)"
  end
  if value == " " then
    return "Cross Type: Default Trade Was Not A Cross (<whitespace>)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local length = size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Settlement Date
size_of.settlement_date = 4

-- Display: Settlement Date
display.settlement_date = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
dissect.settlement_date = function(buffer, offset, packet, parent)
  local length = size_of.settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.settlement_date(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Settlement Terms
size_of.settlement_terms = 1

-- Display: Settlement Terms
display.settlement_terms = function(value)
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
    return "Settlement Terms: Valid Settlement Date (D)"
  end
  if value == " " then
    return "Settlement Terms: No Settlement Terms (<whitespace>)"
  end

  return "Settlement Terms: Unknown("..value..")"
end

-- Dissect: Settlement Terms
dissect.settlement_terms = function(buffer, offset, packet, parent)
  local length = size_of.settlement_terms
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settlement_terms(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Size: Non Resident
size_of.non_resident = 1

-- Display: Non Resident
display.non_resident = function(value)
  if value == "Y" then
    return "Non Resident: Yes (Y)"
  end
  if value == "N" then
    return "Non Resident: No (N)"
  end

  return "Non Resident: Unknown("..value..")"
end

-- Dissect: Non Resident
dissect.non_resident = function(buffer, offset, packet, parent)
  local length = size_of.non_resident
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.non_resident(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.non_resident, range, value, display)

  return offset + length, value
end

-- Size: Trade Time Stamp
size_of.trade_time_stamp = 4

-- Display: Trade Time Stamp
display.trade_time_stamp = function(value)
  return "Trade Time Stamp: "..value
end

-- Dissect: Trade Time Stamp
dissect.trade_time_stamp = function(buffer, offset, packet, parent)
  local length = size_of.trade_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Orig Trade Number
size_of.orig_trade_number = 4

-- Display: Orig Trade Number
display.orig_trade_number = function(value)
  return "Orig Trade Number: "..value
end

-- Dissect: Orig Trade Number
dissect.orig_trade_number = function(buffer, offset, packet, parent)
  local length = size_of.orig_trade_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.orig_trade_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.orig_trade_number, range, value, display)

  return offset + length, value
end

-- Size: Initiated By
size_of.initiated_by = 1

-- Display: Initiated By
display.initiated_by = function(value)
  if value == "B" then
    return "Initiated By: Buy (B)"
  end
  if value == "S" then
    return "Initiated By: Sell (S)"
  end
  if value == "C" then
    return "Initiated By: Both (C)"
  end

  return "Initiated By: Unknown("..value..")"
end

-- Dissect: Initiated By
dissect.initiated_by = function(buffer, offset, packet, parent)
  local length = size_of.initiated_by
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.initiated_by(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.initiated_by, range, value, display)

  return offset + length, value
end

-- Size: Sell Broker Number
size_of.sell_broker_number = 2

-- Display: Sell Broker Number
display.sell_broker_number = function(value)
  return "Sell Broker Number: "..value
end

-- Dissect: Sell Broker Number
dissect.sell_broker_number = function(buffer, offset, packet, parent)
  local length = size_of.sell_broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sell_broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_broker_number, range, value, display)

  return offset + length, value
end

-- Size: Buy Broker Number
size_of.buy_broker_number = 2

-- Display: Buy Broker Number
display.buy_broker_number = function(value)
  return "Buy Broker Number: "..value
end

-- Dissect: Buy Broker Number
dissect.buy_broker_number = function(buffer, offset, packet, parent)
  local length = size_of.buy_broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.buy_broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_broker_number, range, value, display)

  return offset + length, value
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local length = size_of.volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Trade Number
size_of.trade_number = 4

-- Display: Trade Number
display.trade_number = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
dissect.trade_number = function(buffer, offset, packet, parent)
  local length = size_of.trade_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 12

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Correction Terms Body
size_of.trade_correction_terms_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.trade_number

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.buy_broker_number

  index = index + size_of.sell_broker_number

  index = index + size_of.initiated_by

  index = index + size_of.orig_trade_number

  index = index + size_of.trade_time_stamp

  index = index + size_of.non_resident

  index = index + size_of.settlement_terms

  index = index + size_of.settlement_date

  index = index + size_of.cross_type

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Correction Terms Body
display.trade_correction_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Terms Body
dissect.trade_correction_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = dissect.buy_broker_number(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = dissect.sell_broker_number(buffer, index, packet, parent)

  -- Initiated By: 1 Byte Ascii String Enum with 3 values
  index, initiated_by = dissect.initiated_by(buffer, index, packet, parent)

  -- Orig Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_number = dissect.orig_trade_number(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Non Resident: 1 Byte Ascii String Enum with 2 values
  index, non_resident = dissect.non_resident(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = dissect.settlement_terms(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, settlement_date = dissect.settlement_date(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Terms Body
dissect.trade_correction_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_terms_body then
    local length = size_of.trade_correction_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_correction_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_correction_terms_body, range, display)
  end

  return dissect.trade_correction_terms_body_fields(buffer, offset, packet, parent)
end

-- Size: Sequence 1
size_of.sequence_1 = 4

-- Display: Sequence 1
display.sequence_1 = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
dissect.sequence_1 = function(buffer, offset, packet, parent)
  local length = size_of.sequence_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sequence_1(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Size: Sequence 0
size_of.sequence_0 = 1

-- Display: Sequence 0
display.sequence_0 = function(value)
  return "Sequence 0: "..value
end

-- Dissect: Sequence 0
dissect.sequence_0 = function(buffer, offset, packet, parent)
  local length = size_of.sequence_0
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sequence_0(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Size: Stream Id
size_of.stream_id = 2

-- Display: Stream Id
display.stream_id = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
dissect.stream_id = function(buffer, offset, packet, parent)
  local length = size_of.stream_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.stream_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Size: Source Id
size_of.source_id = 1

-- Display: Source Id
display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
dissect.source_id = function(buffer, offset, packet, parent)
  local length = size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.source_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.source_id, range, value, display)

  return offset + length, value
end

-- Size: Msg Version
size_of.msg_version = 1

-- Display: Msg Version
display.msg_version = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
dissect.msg_version = function(buffer, offset, packet, parent)
  local length = size_of.msg_version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.msg_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Business Header
size_of.business_header = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_version

  index = index + size_of.source_id

  index = index + size_of.stream_id

  index = index + size_of.sequence_0

  index = index + size_of.sequence_1

  return index
end

-- Display: Business Header
display.business_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Business Header
dissect.business_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: 1 Byte Unsigned Fixed Width Integer
  index, msg_version = dissect.msg_version(buffer, index, packet, parent)

  -- Source Id: 1 Byte Ascii String
  index, source_id = dissect.source_id(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = dissect.stream_id(buffer, index, packet, parent)

  -- Sequence 0: 1 Byte Unsigned Fixed Width Integer
  index, sequence_0 = dissect.sequence_0(buffer, index, packet, parent)

  -- Sequence 1: 4 Byte Unsigned Fixed Width Integer
  index, sequence_1 = dissect.sequence_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
dissect.business_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.business_header then
    local length = size_of.business_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.business_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.business_header, range, display)
  end

  return dissect.business_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Correction Terms Message
size_of.trade_correction_terms_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.trade_correction_terms_body(buffer, offset + index)

  return index
end

-- Display: Trade Correction Terms Message
display.trade_correction_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Terms Message
dissect.trade_correction_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Trade Correction Terms Body: Struct of 14 fields
  index, trade_correction_terms_body = dissect.trade_correction_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Terms Message
dissect.trade_correction_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_terms_message then
    local length = size_of.trade_correction_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_correction_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_correction_terms_message, range, display)
  end

  return dissect.trade_correction_terms_message_fields(buffer, offset, packet, parent)
end

-- Size: Is Conditional
size_of.is_conditional = 1

-- Display: Is Conditional
display.is_conditional = function(value)
  if value == "Y" then
    return "Is Conditional: Yes (Y)"
  end
  if value == "N" then
    return "Is Conditional: No (N)"
  end

  return "Is Conditional: Unknown("..value..")"
end

-- Dissect: Is Conditional
dissect.is_conditional = function(buffer, offset, packet, parent)
  local length = size_of.is_conditional
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_conditional(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.is_conditional, range, value, display)

  return offset + length, value
end

-- Size: Is Dark
size_of.is_dark = 1

-- Display: Is Dark
display.is_dark = function(value)
  if value == "Y" then
    return "Is Dark: Yes (Y)"
  end
  if value == "N" then
    return "Is Dark: No (N)"
  end

  return "Is Dark: Unknown("..value..")"
end

-- Dissect: Is Dark
dissect.is_dark = function(buffer, offset, packet, parent)
  local length = size_of.is_dark
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_dark(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Size: Is Mid Only
size_of.is_mid_only = 1

-- Display: Is Mid Only
display.is_mid_only = function(value)
  if value == "Y" then
    return "Is Mid Only: Yes (Y)"
  end
  if value == "N" then
    return "Is Mid Only: No (N)"
  end

  return "Is Mid Only: Unknown("..value..")"
end

-- Dissect: Is Mid Only
dissect.is_mid_only = function(buffer, offset, packet, parent)
  local length = size_of.is_mid_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_mid_only(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.is_mid_only, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
size_of.trade_date = 4

-- Display: Trade Date
display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
dissect.trade_date = function(buffer, offset, packet, parent)
  local length = size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_date(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Product Type
size_of.product_type = 1

-- Display: Product Type
display.product_type = function(value)
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
  if value == "U" then
    return "Product Type: Us Equity (U)"
  end
  if value == "O" then
    return "Product Type: Bond (O)"
  end

  return "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
dissect.product_type = function(buffer, offset, packet, parent)
  local length = size_of.product_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.product_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.product_type, range, value, display)

  return offset + length, value
end

-- Size: Listing Market
size_of.listing_market = 1

-- Display: Listing Market
display.listing_market = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Tsx Venture (V)"
  end
  if value == "N" then
    return "Listing Market: Tsx Na Vex (N)"
  end
  if value == "Q" then
    return "Listing Market: Nasdaq (Q)"
  end
  if value == "S" then
    return "Listing Market: Nyse (S)"
  end
  if value == "M" then
    return "Listing Market: Nyse Mkt (M)"
  end
  if value == "X" then
    return "Listing Market: N No Market (X)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
dissect.listing_market = function(buffer, offset, packet, parent)
  local length = size_of.listing_market
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.listing_market(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Size: Bypass
size_of.bypass = 1

-- Display: Bypass
display.bypass = function(value)
  if value == "Y" then
    return "Bypass: The Order Is A Bypass (Y)"
  end
  if value == "N" then
    return "Bypass: The Order Is Not A Bypass (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
dissect.bypass = function(buffer, offset, packet, parent)
  local length = size_of.bypass
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bypass(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.bypass, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Correction Body
size_of.trade_correction_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.trade_number

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.buy_broker_number

  index = index + size_of.sell_broker_number

  index = index + size_of.initiated_by

  index = index + size_of.orig_trade_number

  index = index + size_of.bypass

  index = index + size_of.trade_time_stamp

  index = index + size_of.cross_type

  index = index + size_of.trading_system_time_stamp

  index = index + size_of.listing_market

  index = index + size_of.product_type

  index = index + size_of.trade_date

  index = index + size_of.is_mid_only

  index = index + size_of.is_dark

  index = index + size_of.is_conditional

  return index
end

-- Display: Trade Correction Body
display.trade_correction_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Body
dissect.trade_correction_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = dissect.buy_broker_number(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = dissect.sell_broker_number(buffer, index, packet, parent)

  -- Initiated By: 1 Byte Ascii String Enum with 3 values
  index, initiated_by = dissect.initiated_by(buffer, index, packet, parent)

  -- Orig Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_number = dissect.orig_trade_number(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = dissect.bypass(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = dissect.listing_market(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = dissect.product_type(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Is Mid Only: 1 Byte Ascii String Enum with 2 values
  index, is_mid_only = dissect.is_mid_only(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String Enum with 2 values
  index, is_dark = dissect.is_dark(buffer, index, packet, parent)

  -- Is Conditional: 1 Byte Ascii String Enum with 2 values
  index, is_conditional = dissect.is_conditional(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Body
dissect.trade_correction_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_body then
    local length = size_of.trade_correction_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_correction_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_correction_body, range, display)
  end

  return dissect.trade_correction_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Correction Message
size_of.trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.trade_correction_body(buffer, offset + index)

  return index
end

-- Display: Trade Correction Message
display.trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Message
dissect.trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Trade Correction Body: Struct of 18 fields
  index, trade_correction_body = dissect.trade_correction_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
dissect.trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_message then
    local length = size_of.trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_correction_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_correction_message, range, display)
  end

  return dissect.trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancelled Terms Body
size_of.trade_cancelled_terms_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.trade_number

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Cancelled Terms Body
display.trade_cancelled_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Terms Body
dissect.trade_cancelled_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Terms Body
dissect.trade_cancelled_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_terms_body then
    local length = size_of.trade_cancelled_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_cancelled_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_cancelled_terms_body, range, display)
  end

  return dissect.trade_cancelled_terms_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancelled Terms Message
size_of.trade_cancelled_terms_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.trade_cancelled_terms_body(buffer, offset + index)

  return index
end

-- Display: Trade Cancelled Terms Message
display.trade_cancelled_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Terms Message
dissect.trade_cancelled_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Trade Cancelled Terms Body: Struct of 3 fields
  index, trade_cancelled_terms_body = dissect.trade_cancelled_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Terms Message
dissect.trade_cancelled_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_terms_message then
    local length = size_of.trade_cancelled_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_cancelled_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_cancelled_terms_message, range, display)
  end

  return dissect.trade_cancelled_terms_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancelled Body
size_of.trade_cancelled_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.trade_number

  index = index + size_of.trading_system_time_stamp

  index = index + size_of.listing_market

  index = index + size_of.product_type

  index = index + size_of.trade_date

  return index
end

-- Display: Trade Cancelled Body
display.trade_cancelled_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Body
dissect.trade_cancelled_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = dissect.listing_market(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = dissect.product_type(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Body
dissect.trade_cancelled_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_body then
    local length = size_of.trade_cancelled_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_cancelled_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_cancelled_body, range, display)
  end

  return dissect.trade_cancelled_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancelled Message
size_of.trade_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.trade_cancelled_body(buffer, offset + index)

  return index
end

-- Display: Trade Cancelled Message
display.trade_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Message
dissect.trade_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Trade Cancelled Body: Struct of 6 fields
  index, trade_cancelled_body = dissect.trade_cancelled_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Message
dissect.trade_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_message then
    local length = size_of.trade_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_cancelled_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_cancelled_message, range, display)
  end

  return dissect.trade_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Size: Sell Display Volume
size_of.sell_display_volume = 4

-- Display: Sell Display Volume
display.sell_display_volume = function(value)
  return "Sell Display Volume: "..value
end

-- Dissect: Sell Display Volume
dissect.sell_display_volume = function(buffer, offset, packet, parent)
  local length = size_of.sell_display_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sell_display_volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_display_volume, range, value, display)

  return offset + length, value
end

-- Size: Sell Order Id
size_of.sell_order_id = 8

-- Display: Sell Order Id
display.sell_order_id = function(value)
  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
dissect.sell_order_id = function(buffer, offset, packet, parent)
  local length = size_of.sell_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.sell_order_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Size: Buy Display Volume
size_of.buy_display_volume = 4

-- Display: Buy Display Volume
display.buy_display_volume = function(value)
  return "Buy Display Volume: "..value
end

-- Dissect: Buy Display Volume
dissect.buy_display_volume = function(buffer, offset, packet, parent)
  local length = size_of.buy_display_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.buy_display_volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_display_volume, range, value, display)

  return offset + length, value
end

-- Size: Buy Order Id
size_of.buy_order_id = 8

-- Display: Buy Order Id
display.buy_order_id = function(value)
  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
dissect.buy_order_id = function(buffer, offset, packet, parent)
  local length = size_of.buy_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.buy_order_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report Terms Body
size_of.trade_report_terms_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.trade_number

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.buy_broker_number

  index = index + size_of.buy_order_id

  index = index + size_of.buy_display_volume

  index = index + size_of.sell_broker_number

  index = index + size_of.sell_order_id

  index = index + size_of.sell_display_volume

  index = index + size_of.trade_time_stamp

  index = index + size_of.non_resident

  index = index + size_of.settlement_terms

  index = index + size_of.settlement_date

  index = index + size_of.cross_type

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Report Terms Body
display.trade_report_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Terms Body
dissect.trade_report_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = dissect.buy_broker_number(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Unsigned Fixed Width Integer
  index, buy_order_id = dissect.buy_order_id(buffer, index, packet, parent)

  -- Buy Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, buy_display_volume = dissect.buy_display_volume(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = dissect.sell_broker_number(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Unsigned Fixed Width Integer
  index, sell_order_id = dissect.sell_order_id(buffer, index, packet, parent)

  -- Sell Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, sell_display_volume = dissect.sell_display_volume(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Non Resident: 1 Byte Ascii String Enum with 2 values
  index, non_resident = dissect.non_resident(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = dissect.settlement_terms(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, settlement_date = dissect.settlement_date(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Terms Body
dissect.trade_report_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_terms_body then
    local length = size_of.trade_report_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_report_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_report_terms_body, range, display)
  end

  return dissect.trade_report_terms_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Report Terms Message
size_of.trade_report_terms_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.trade_report_terms_body(buffer, offset + index)

  return index
end

-- Display: Trade Report Terms Message
display.trade_report_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Terms Message
dissect.trade_report_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Trade Report Terms Body: Struct of 16 fields
  index, trade_report_terms_body = dissect.trade_report_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Terms Message
dissect.trade_report_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_terms_message then
    local length = size_of.trade_report_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_report_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_report_terms_message, range, display)
  end

  return dissect.trade_report_terms_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Report Body
size_of.trade_report_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.trade_number

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.buy_broker_number

  index = index + size_of.buy_order_id

  index = index + size_of.buy_display_volume

  index = index + size_of.sell_broker_number

  index = index + size_of.sell_order_id

  index = index + size_of.sell_display_volume

  index = index + size_of.bypass

  index = index + size_of.trade_time_stamp

  index = index + size_of.cross_type

  index = index + size_of.trading_system_time_stamp

  index = index + size_of.listing_market

  index = index + size_of.product_type

  index = index + size_of.trade_date

  index = index + size_of.is_mid_only

  index = index + size_of.is_dark

  index = index + size_of.is_conditional

  return index
end

-- Display: Trade Report Body
display.trade_report_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Body
dissect.trade_report_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = dissect.buy_broker_number(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Unsigned Fixed Width Integer
  index, buy_order_id = dissect.buy_order_id(buffer, index, packet, parent)

  -- Buy Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, buy_display_volume = dissect.buy_display_volume(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = dissect.sell_broker_number(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Unsigned Fixed Width Integer
  index, sell_order_id = dissect.sell_order_id(buffer, index, packet, parent)

  -- Sell Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, sell_display_volume = dissect.sell_display_volume(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = dissect.bypass(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = dissect.listing_market(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = dissect.product_type(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Is Mid Only: 1 Byte Ascii String Enum with 2 values
  index, is_mid_only = dissect.is_mid_only(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String Enum with 2 values
  index, is_dark = dissect.is_dark(buffer, index, packet, parent)

  -- Is Conditional: 1 Byte Ascii String Enum with 2 values
  index, is_conditional = dissect.is_conditional(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Body
dissect.trade_report_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_body then
    local length = size_of.trade_report_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_report_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_report_body, range, display)
  end

  return dissect.trade_report_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Report Message
size_of.trade_report_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.trade_report_body(buffer, offset + index)

  return index
end

-- Display: Trade Report Message
display.trade_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report Message
dissect.trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Trade Report Body: Struct of 20 fields
  index, trade_report_body = dissect.trade_report_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
dissect.trade_report_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report_message then
    local length = size_of.trade_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_report_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.trade_report_message, range, display)
  end

  return dissect.trade_report_message_fields(buffer, offset, packet, parent)
end

-- Size: Stock State
size_of.stock_state = 2

-- Display: Stock State
display.stock_state = function(value)
  if value == "AR" then
    return "Stock State: Authorized Delayed (AR)"
  end
  if value == "IR" then
    return "Stock State: Inhibited Delayed (IR)"
  end
  if value == "AS" then
    return "Stock State: Authorized Halted (AS)"
  end
  if value == "IS" then
    return "Stock State: Inhibited Halted (IS)"
  end
  if value == "AE" then
    return "Stock State: Authorized Price Movement Delayed (AE)"
  end
  if value == "IE" then
    return "Stock State: Inhibited Price Movement Delayed (IE)"
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
dissect.stock_state = function(buffer, offset, packet, parent)
  local length = size_of.stock_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.stock_state(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Size: Comment
size_of.comment = 40

-- Display: Comment
display.comment = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
dissect.comment = function(buffer, offset, packet, parent)
  local length = size_of.comment
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.comment(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.comment, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Status Body
size_of.stock_status_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.comment

  index = index + size_of.stock_state

  index = index + size_of.trading_system_time_stamp

  index = index + size_of.listing_market

  index = index + size_of.product_type

  return index
end

-- Display: Stock Status Body
display.stock_status_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Status Body
dissect.stock_status_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Comment: 40 Byte Ascii String
  index, comment = dissect.comment(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 8 values
  index, stock_state = dissect.stock_state(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = dissect.listing_market(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = dissect.product_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Body
dissect.stock_status_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_status_body then
    local length = size_of.stock_status_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stock_status_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stock_status_body, range, display)
  end

  return dissect.stock_status_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Stock Status Message
size_of.stock_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.stock_status_body(buffer, offset + index)

  return index
end

-- Display: Stock Status Message
display.stock_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Status Message
dissect.stock_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Stock Status Body: Struct of 6 fields
  index, stock_status_body = dissect.stock_status_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
dissect.stock_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_status_message then
    local length = size_of.stock_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stock_status_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stock_status_message, range, display)
  end

  return dissect.stock_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Priority Time Stamp
size_of.priority_time_stamp = 8

-- Display: Priority Time Stamp
display.priority_time_stamp = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000
  local microseconds = value:tonumber()%1000000

  return "Priority Time Stamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", microseconds)
end

-- Dissect: Priority Time Stamp
dissect.priority_time_stamp = function(buffer, offset, packet, parent)
  local length = size_of.priority_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.priority_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.priority_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local length = size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Order Side
size_of.order_side = 1

-- Display: Order Side
display.order_side = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
dissect.order_side = function(buffer, offset, packet, parent)
  local length = size_of.order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.order_side(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_side, range, value, display)

  return offset + length, value
end

-- Size: Broker Number
size_of.broker_number = 2

-- Display: Broker Number
display.broker_number = function(value)
  return "Broker Number: "..value
end

-- Dissect: Broker Number
dissect.broker_number = function(buffer, offset, packet, parent)
  local length = size_of.broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.broker_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Price Time Assigned Terms Body
size_of.order_price_time_assigned_terms_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.broker_number

  index = index + size_of.order_side

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.priority_time_stamp

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Order Price Time Assigned Terms Body
display.order_price_time_assigned_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Price Time Assigned Terms Body
dissect.order_price_time_assigned_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = dissect.priority_time_stamp(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Time Assigned Terms Body
dissect.order_price_time_assigned_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_price_time_assigned_terms_body then
    local length = size_of.order_price_time_assigned_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_price_time_assigned_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_price_time_assigned_terms_body, range, display)
  end

  return dissect.order_price_time_assigned_terms_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Price Time Assigned Terms Message
size_of.order_price_time_assigned_terms_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.order_price_time_assigned_terms_body(buffer, offset + index)

  return index
end

-- Display: Order Price Time Assigned Terms Message
display.order_price_time_assigned_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Price Time Assigned Terms Message
dissect.order_price_time_assigned_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Order Price Time Assigned Terms Body: Struct of 8 fields
  index, order_price_time_assigned_terms_body = dissect.order_price_time_assigned_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Time Assigned Terms Message
dissect.order_price_time_assigned_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_price_time_assigned_terms_message then
    local length = size_of.order_price_time_assigned_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_price_time_assigned_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_price_time_assigned_terms_message, range, display)
  end

  return dissect.order_price_time_assigned_terms_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Price Time Assigned Body
size_of.order_price_time_assigned_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.broker_number

  index = index + size_of.order_side

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.priority_time_stamp

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Order Price Time Assigned Body
display.order_price_time_assigned_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Price Time Assigned Body
dissect.order_price_time_assigned_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = dissect.priority_time_stamp(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Time Assigned Body
dissect.order_price_time_assigned_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_price_time_assigned_body then
    local length = size_of.order_price_time_assigned_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_price_time_assigned_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_price_time_assigned_body, range, display)
  end

  return dissect.order_price_time_assigned_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Price Time Assigned Message
size_of.order_price_time_assigned_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.order_price_time_assigned_body(buffer, offset + index)

  return index
end

-- Display: Order Price Time Assigned Message
display.order_price_time_assigned_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Price Time Assigned Message
dissect.order_price_time_assigned_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Order Price Time Assigned Body: Struct of 8 fields
  index, order_price_time_assigned_body = dissect.order_price_time_assigned_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Time Assigned Message
dissect.order_price_time_assigned_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_price_time_assigned_message then
    local length = size_of.order_price_time_assigned_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_price_time_assigned_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_price_time_assigned_message, range, display)
  end

  return dissect.order_price_time_assigned_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancelled Terms Body
size_of.order_cancelled_terms_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.broker_number

  index = index + size_of.order_side

  index = index + size_of.order_id

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Order Cancelled Terms Body
display.order_cancelled_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancelled Terms Body
dissect.order_cancelled_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Terms Body
dissect.order_cancelled_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancelled_terms_body then
    local length = size_of.order_cancelled_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancelled_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_cancelled_terms_body, range, display)
  end

  return dissect.order_cancelled_terms_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancelled Terms Message
size_of.order_cancelled_terms_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.order_cancelled_terms_body(buffer, offset + index)

  return index
end

-- Display: Order Cancelled Terms Message
display.order_cancelled_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancelled Terms Message
dissect.order_cancelled_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Order Cancelled Terms Body: Struct of 5 fields
  index, order_cancelled_terms_body = dissect.order_cancelled_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Terms Message
dissect.order_cancelled_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancelled_terms_message then
    local length = size_of.order_cancelled_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancelled_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_cancelled_terms_message, range, display)
  end

  return dissect.order_cancelled_terms_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancelled Body
size_of.order_cancelled_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.broker_number

  index = index + size_of.order_side

  index = index + size_of.order_id

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Order Cancelled Body
display.order_cancelled_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancelled Body
dissect.order_cancelled_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Body
dissect.order_cancelled_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancelled_body then
    local length = size_of.order_cancelled_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancelled_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_cancelled_body, range, display)
  end

  return dissect.order_cancelled_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancelled Message
size_of.order_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.order_cancelled_body(buffer, offset + index)

  return index
end

-- Display: Order Cancelled Message
display.order_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancelled Message
dissect.order_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Order Cancelled Body: Struct of 5 fields
  index, order_cancelled_body = dissect.order_cancelled_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Message
dissect.order_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancelled_message then
    local length = size_of.order_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancelled_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_cancelled_message, range, display)
  end

  return dissect.order_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Booked Terms Body
size_of.order_booked_terms_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.broker_number

  index = index + size_of.order_side

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.non_resident

  index = index + size_of.settlement_terms

  index = index + size_of.settlement_date

  index = index + size_of.priority_time_stamp

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Order Booked Terms Body
display.order_booked_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Booked Terms Body
dissect.order_booked_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Non Resident: 1 Byte Ascii String Enum with 2 values
  index, non_resident = dissect.non_resident(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = dissect.settlement_terms(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, settlement_date = dissect.settlement_date(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = dissect.priority_time_stamp(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Booked Terms Body
dissect.order_booked_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_booked_terms_body then
    local length = size_of.order_booked_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_booked_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_booked_terms_body, range, display)
  end

  return dissect.order_booked_terms_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Booked Terms Message
size_of.order_booked_terms_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.order_booked_terms_body(buffer, offset + index)

  return index
end

-- Display: Order Booked Terms Message
display.order_booked_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Booked Terms Message
dissect.order_booked_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Order Booked Terms Body: Struct of 11 fields
  index, order_booked_terms_body = dissect.order_booked_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Booked Terms Message
dissect.order_booked_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_booked_terms_message then
    local length = size_of.order_booked_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_booked_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_booked_terms_message, range, display)
  end

  return dissect.order_booked_terms_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Booked Body
size_of.order_booked_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.broker_number

  index = index + size_of.order_side

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.priority_time_stamp

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Order Booked Body
display.order_booked_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Booked Body
dissect.order_booked_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = dissect.priority_time_stamp(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Booked Body
dissect.order_booked_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_booked_body then
    local length = size_of.order_booked_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_booked_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_booked_body, range, display)
  end

  return dissect.order_booked_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Booked Message
size_of.order_booked_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.order_booked_body(buffer, offset + index)

  return index
end

-- Display: Order Booked Message
display.order_booked_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Booked Message
dissect.order_booked_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Order Booked Body: Struct of 8 fields
  index, order_booked_body = dissect.order_booked_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Booked Message
dissect.order_booked_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_booked_message then
    local length = size_of.order_booked_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_booked_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_booked_message, range, display)
  end

  return dissect.order_booked_message_fields(buffer, offset, packet, parent)
end

-- Size: Far Indicative Closing Price
size_of.far_indicative_closing_price = 8

-- Display: Far Indicative Closing Price
display.far_indicative_closing_price = function(value)
  return "Far Indicative Closing Price: "..value
end

-- Translate: Far Indicative Closing Price
translate.far_indicative_closing_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Far Indicative Closing Price
dissect.far_indicative_closing_price = function(buffer, offset, packet, parent)
  local length = size_of.far_indicative_closing_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.far_indicative_closing_price(raw)
  local display = display.far_indicative_closing_price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.far_indicative_closing_price, range, value, display)

  return offset + length, value
end

-- Size: Near Indicative Closing Price
size_of.near_indicative_closing_price = 8

-- Display: Near Indicative Closing Price
display.near_indicative_closing_price = function(value)
  return "Near Indicative Closing Price: "..value
end

-- Translate: Near Indicative Closing Price
translate.near_indicative_closing_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Near Indicative Closing Price
dissect.near_indicative_closing_price = function(buffer, offset, packet, parent)
  local length = size_of.near_indicative_closing_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.near_indicative_closing_price(raw)
  local display = display.near_indicative_closing_price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.near_indicative_closing_price, range, value, display)

  return offset + length, value
end

-- Size: Market Order Imbalance Side
size_of.market_order_imbalance_side = 1

-- Display: Market Order Imbalance Side
display.market_order_imbalance_side = function(value)
  if value == "B" then
    return "Market Order Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Market Order Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Market Order Imbalance Side: No Imbalance Exists (<whitespace>)"
  end

  return "Market Order Imbalance Side: Unknown("..value..")"
end

-- Dissect: Market Order Imbalance Side
dissect.market_order_imbalance_side = function(buffer, offset, packet, parent)
  local length = size_of.market_order_imbalance_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_order_imbalance_side(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_order_imbalance_side, range, value, display)

  return offset + length, value
end

-- Size: Market Order Imbalance Volume
size_of.market_order_imbalance_volume = 4

-- Display: Market Order Imbalance Volume
display.market_order_imbalance_volume = function(value)
  return "Market Order Imbalance Volume: "..value
end

-- Dissect: Market Order Imbalance Volume
dissect.market_order_imbalance_volume = function(buffer, offset, packet, parent)
  local length = size_of.market_order_imbalance_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.market_order_imbalance_volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_order_imbalance_volume, range, value, display)

  return offset + length, value
end

-- Size: Paired Volume
size_of.paired_volume = 4

-- Display: Paired Volume
display.paired_volume = function(value)
  return "Paired Volume: "..value
end

-- Dissect: Paired Volume
dissect.paired_volume = function(buffer, offset, packet, parent)
  local length = size_of.paired_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.paired_volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.paired_volume, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Reference Price
size_of.imbalance_reference_price = 8

-- Display: Imbalance Reference Price
display.imbalance_reference_price = function(value)
  return "Imbalance Reference Price: "..value
end

-- Translate: Imbalance Reference Price
translate.imbalance_reference_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Imbalance Reference Price
dissect.imbalance_reference_price = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_reference_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.imbalance_reference_price(raw)
  local display = display.imbalance_reference_price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.imbalance_reference_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Volume
size_of.imbalance_volume = 4

-- Display: Imbalance Volume
display.imbalance_volume = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
dissect.imbalance_volume = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.imbalance_volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Side
size_of.imbalance_side = 1

-- Display: Imbalance Side
display.imbalance_side = function(value)
  if value == "B" then
    return "Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Imbalance Side: No Imbalance Exists (<whitespace>)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
dissect.imbalance_side = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.imbalance_side(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Moc Imbalance Body
size_of.moc_imbalance_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.imbalance_side

  index = index + size_of.imbalance_volume

  index = index + size_of.trading_system_time_stamp

  index = index + size_of.imbalance_reference_price

  index = index + size_of.paired_volume

  index = index + size_of.market_order_imbalance_volume

  index = index + size_of.market_order_imbalance_side

  index = index + size_of.near_indicative_closing_price

  index = index + size_of.far_indicative_closing_price

  return index
end

-- Display: Moc Imbalance Body
display.moc_imbalance_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Moc Imbalance Body
dissect.moc_imbalance_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = dissect.imbalance_side(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_volume = dissect.imbalance_volume(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  -- Imbalance Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_reference_price = dissect.imbalance_reference_price(buffer, index, packet, parent)

  -- Paired Volume: 4 Byte Unsigned Fixed Width Integer
  index, paired_volume = dissect.paired_volume(buffer, index, packet, parent)

  -- Market Order Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, market_order_imbalance_volume = dissect.market_order_imbalance_volume(buffer, index, packet, parent)

  -- Market Order Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, market_order_imbalance_side = dissect.market_order_imbalance_side(buffer, index, packet, parent)

  -- Near Indicative Closing Price: 8 Byte Unsigned Fixed Width Integer
  index, near_indicative_closing_price = dissect.near_indicative_closing_price(buffer, index, packet, parent)

  -- Far Indicative Closing Price: 8 Byte Unsigned Fixed Width Integer
  index, far_indicative_closing_price = dissect.far_indicative_closing_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Moc Imbalance Body
dissect.moc_imbalance_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.moc_imbalance_body then
    local length = size_of.moc_imbalance_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.moc_imbalance_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.moc_imbalance_body, range, display)
  end

  return dissect.moc_imbalance_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Moc Imbalance Message
size_of.moc_imbalance_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.moc_imbalance_body(buffer, offset + index)

  return index
end

-- Display: Moc Imbalance Message
display.moc_imbalance_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Moc Imbalance Message
dissect.moc_imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Moc Imbalance Body: Struct of 10 fields
  index, moc_imbalance_body = dissect.moc_imbalance_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Moc Imbalance Message
dissect.moc_imbalance_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.moc_imbalance_message then
    local length = size_of.moc_imbalance_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.moc_imbalance_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.moc_imbalance_message, range, display)
  end

  return dissect.moc_imbalance_message_fields(buffer, offset, packet, parent)
end

-- Size: Stock Group
size_of.stock_group = 1

-- Display: Stock Group
display.stock_group = function(value)
  return "Stock Group: "..value
end

-- Dissect: Stock Group
dissect.stock_group = function(buffer, offset, packet, parent)
  local length = size_of.stock_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.stock_group(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Size: Market State
size_of.market_state = 1

-- Display: Market State
display.market_state = function(value)
  if value == "P" then
    return "Market State: Preopen (P)"
  end
  if value == "O" then
    return "Market State: Opening (O)"
  end
  if value == "S" then
    return "Market State: Open (S)"
  end
  if value == "M" then
    return "Market State: Moc Imbalance (M)"
  end
  if value == "T" then
    return "Market State: Moc Freeze (T)"
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
  if value == "N" then
    return "Market State: Extended Hours Cxls (N)"
  end
  if value == "R" then
    return "Market State: Extended Hours Open (R)"
  end
  if value == "C" then
    return "Market State: Closed (C)"
  end
  if value == "J" then
    return "Market State: Nav Ex Closed (J)"
  end
  if value == "G" then
    return "Market State: Nav Ex Order Entry (G)"
  end
  if value == "H" then
    return "Market State: Nav Ex Order Entry Close (H)"
  end
  if value == "K" then
    return "Market State: Nav Ex Am Execution (K)"
  end
  if value == "X" then
    return "Market State: Nav Ex Pm Execution (X)"
  end
  if value == "Y" then
    return "Market State: Nav Ex Close (Y)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
dissect.market_state = function(buffer, offset, packet, parent)
  local length = size_of.market_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_state(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market State Update Body
size_of.market_state_update_body = function(buffer, offset)
  local index = 0

  index = index + size_of.market_state

  index = index + size_of.stock_group

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Market State Update Body
display.market_state_update_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market State Update Body
dissect.market_state_update_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market State: 1 Byte Ascii String Enum with 17 values
  index, market_state = dissect.market_state(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer
  index, stock_group = dissect.stock_group(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Update Body
dissect.market_state_update_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_state_update_body then
    local length = size_of.market_state_update_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_state_update_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_state_update_body, range, display)
  end

  return dissect.market_state_update_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market State Update Message
size_of.market_state_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.market_state_update_body(buffer, offset + index)

  return index
end

-- Display: Market State Update Message
display.market_state_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market State Update Message
dissect.market_state_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Market State Update Body: Struct of 3 fields
  index, market_state_update_body = dissect.market_state_update_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Update Message
dissect.market_state_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_state_update_message then
    local length = size_of.market_state_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_state_update_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.market_state_update_message, range, display)
  end

  return dissect.market_state_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 15
size_of.cop_limit_15 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 15
display.cop_limit_15 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 15
dissect.cop_limit_15_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 15
dissect.cop_limit_15 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_15 then
    local length = size_of.cop_limit_15(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_15(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_15, range, display)
  end

  return dissect.cop_limit_15_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 14
size_of.cop_limit_14 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 14
display.cop_limit_14 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 14
dissect.cop_limit_14_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 14
dissect.cop_limit_14 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_14 then
    local length = size_of.cop_limit_14(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_14(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_14, range, display)
  end

  return dissect.cop_limit_14_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 13
size_of.cop_limit_13 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 13
display.cop_limit_13 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 13
dissect.cop_limit_13_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 13
dissect.cop_limit_13 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_13 then
    local length = size_of.cop_limit_13(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_13(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_13, range, display)
  end

  return dissect.cop_limit_13_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 12
size_of.cop_limit_12 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 12
display.cop_limit_12 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 12
dissect.cop_limit_12_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 12
dissect.cop_limit_12 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_12 then
    local length = size_of.cop_limit_12(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_12(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_12, range, display)
  end

  return dissect.cop_limit_12_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 11
size_of.cop_limit_11 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 11
display.cop_limit_11 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 11
dissect.cop_limit_11_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 11
dissect.cop_limit_11 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_11 then
    local length = size_of.cop_limit_11(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_11(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_11, range, display)
  end

  return dissect.cop_limit_11_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 10
size_of.cop_limit_10 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 10
display.cop_limit_10 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 10
dissect.cop_limit_10_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 10
dissect.cop_limit_10 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_10 then
    local length = size_of.cop_limit_10(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_10(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_10, range, display)
  end

  return dissect.cop_limit_10_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 9
size_of.cop_limit_9 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 9
display.cop_limit_9 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 9
dissect.cop_limit_9_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 9
dissect.cop_limit_9 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_9 then
    local length = size_of.cop_limit_9(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_9(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_9, range, display)
  end

  return dissect.cop_limit_9_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 8
size_of.cop_limit_8 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 8
display.cop_limit_8 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 8
dissect.cop_limit_8_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 8
dissect.cop_limit_8 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_8 then
    local length = size_of.cop_limit_8(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_8(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_8, range, display)
  end

  return dissect.cop_limit_8_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 7
size_of.cop_limit_7 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 7
display.cop_limit_7 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 7
dissect.cop_limit_7_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 7
dissect.cop_limit_7 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_7 then
    local length = size_of.cop_limit_7(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_7(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_7, range, display)
  end

  return dissect.cop_limit_7_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 6
size_of.cop_limit_6 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 6
display.cop_limit_6 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 6
dissect.cop_limit_6_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 6
dissect.cop_limit_6 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_6 then
    local length = size_of.cop_limit_6(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_6(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_6, range, display)
  end

  return dissect.cop_limit_6_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 5
size_of.cop_limit_5 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 5
display.cop_limit_5 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 5
dissect.cop_limit_5_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 5
dissect.cop_limit_5 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_5 then
    local length = size_of.cop_limit_5(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_5(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_5, range, display)
  end

  return dissect.cop_limit_5_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 4
size_of.cop_limit_4 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 4
display.cop_limit_4 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 4
dissect.cop_limit_4_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 4
dissect.cop_limit_4 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_4 then
    local length = size_of.cop_limit_4(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_4(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_4, range, display)
  end

  return dissect.cop_limit_4_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 3
size_of.cop_limit_3 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 3
display.cop_limit_3 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 3
dissect.cop_limit_3_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 3
dissect.cop_limit_3 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_3 then
    local length = size_of.cop_limit_3(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_3(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_3, range, display)
  end

  return dissect.cop_limit_3_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 2
size_of.cop_limit_2 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 2
display.cop_limit_2 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 2
dissect.cop_limit_2_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 2
dissect.cop_limit_2 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_2 then
    local length = size_of.cop_limit_2(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_2(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_2, range, display)
  end

  return dissect.cop_limit_2_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Limit 1
size_of.cop_limit_1 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Cop Limit 1
display.cop_limit_1 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Limit 1
dissect.cop_limit_1_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit 1
dissect.cop_limit_1 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_limit_1 then
    local length = size_of.cop_limit_1(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_limit_1(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_limit_1, range, display)
  end

  return dissect.cop_limit_1_fields(buffer, offset, packet, parent)
end

-- Size: Calculated Opening Price
size_of.calculated_opening_price = 8

-- Display: Calculated Opening Price
display.calculated_opening_price = function(value)
  return "Calculated Opening Price: "..value
end

-- Translate: Calculated Opening Price
translate.calculated_opening_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Calculated Opening Price
dissect.calculated_opening_price = function(buffer, offset, packet, parent)
  local length = size_of.calculated_opening_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.calculated_opening_price(raw)
  local display = display.calculated_opening_price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.calculated_opening_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Assign Limit Body
size_of.assign_limit_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.calculated_opening_price

  index = index + size_of.order_side

  index = index + size_of.cop_limit_1(buffer, offset + index)

  index = index + size_of.cop_limit_2(buffer, offset + index)

  index = index + size_of.cop_limit_3(buffer, offset + index)

  index = index + size_of.cop_limit_4(buffer, offset + index)

  index = index + size_of.cop_limit_5(buffer, offset + index)

  index = index + size_of.cop_limit_6(buffer, offset + index)

  index = index + size_of.cop_limit_7(buffer, offset + index)

  index = index + size_of.cop_limit_8(buffer, offset + index)

  index = index + size_of.cop_limit_9(buffer, offset + index)

  index = index + size_of.cop_limit_10(buffer, offset + index)

  index = index + size_of.cop_limit_11(buffer, offset + index)

  index = index + size_of.cop_limit_12(buffer, offset + index)

  index = index + size_of.cop_limit_13(buffer, offset + index)

  index = index + size_of.cop_limit_14(buffer, offset + index)

  index = index + size_of.cop_limit_15(buffer, offset + index)

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Assign Limit Body
display.assign_limit_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Assign Limit Body
dissect.assign_limit_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Calculated Opening Price: 8 Byte Unsigned Fixed Width Integer
  index, calculated_opening_price = dissect.calculated_opening_price(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Cop Limit 1: Struct of 3 fields
  index, cop_limit_1 = dissect.cop_limit_1(buffer, index, packet, parent)

  -- Cop Limit 2: Struct of 3 fields
  index, cop_limit_2 = dissect.cop_limit_2(buffer, index, packet, parent)

  -- Cop Limit 3: Struct of 3 fields
  index, cop_limit_3 = dissect.cop_limit_3(buffer, index, packet, parent)

  -- Cop Limit 4: Struct of 3 fields
  index, cop_limit_4 = dissect.cop_limit_4(buffer, index, packet, parent)

  -- Cop Limit 5: Struct of 3 fields
  index, cop_limit_5 = dissect.cop_limit_5(buffer, index, packet, parent)

  -- Cop Limit 6: Struct of 3 fields
  index, cop_limit_6 = dissect.cop_limit_6(buffer, index, packet, parent)

  -- Cop Limit 7: Struct of 3 fields
  index, cop_limit_7 = dissect.cop_limit_7(buffer, index, packet, parent)

  -- Cop Limit 8: Struct of 3 fields
  index, cop_limit_8 = dissect.cop_limit_8(buffer, index, packet, parent)

  -- Cop Limit 9: Struct of 3 fields
  index, cop_limit_9 = dissect.cop_limit_9(buffer, index, packet, parent)

  -- Cop Limit 10: Struct of 3 fields
  index, cop_limit_10 = dissect.cop_limit_10(buffer, index, packet, parent)

  -- Cop Limit 11: Struct of 3 fields
  index, cop_limit_11 = dissect.cop_limit_11(buffer, index, packet, parent)

  -- Cop Limit 12: Struct of 3 fields
  index, cop_limit_12 = dissect.cop_limit_12(buffer, index, packet, parent)

  -- Cop Limit 13: Struct of 3 fields
  index, cop_limit_13 = dissect.cop_limit_13(buffer, index, packet, parent)

  -- Cop Limit 14: Struct of 3 fields
  index, cop_limit_14 = dissect.cop_limit_14(buffer, index, packet, parent)

  -- Cop Limit 15: Struct of 3 fields
  index, cop_limit_15 = dissect.cop_limit_15(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Assign Limit Body
dissect.assign_limit_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.assign_limit_body then
    local length = size_of.assign_limit_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.assign_limit_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_limit_body, range, display)
  end

  return dissect.assign_limit_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Assign Limit Message
size_of.assign_limit_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.assign_limit_body(buffer, offset + index)

  return index
end

-- Display: Assign Limit Message
display.assign_limit_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Assign Limit Message
dissect.assign_limit_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Assign Limit Body: Struct of 19 fields
  index, assign_limit_body = dissect.assign_limit_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Assign Limit Message
dissect.assign_limit_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.assign_limit_message then
    local length = size_of.assign_limit_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.assign_limit_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_limit_message, range, display)
  end

  return dissect.assign_limit_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Assign Cop No Orders Body
size_of.assign_cop_no_orders_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.calculated_opening_price

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Assign Cop No Orders Body
display.assign_cop_no_orders_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Assign Cop No Orders Body
dissect.assign_cop_no_orders_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Calculated Opening Price: 8 Byte Unsigned Fixed Width Integer
  index, calculated_opening_price = dissect.calculated_opening_price(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Assign Cop No Orders Body
dissect.assign_cop_no_orders_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.assign_cop_no_orders_body then
    local length = size_of.assign_cop_no_orders_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.assign_cop_no_orders_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_cop_no_orders_body, range, display)
  end

  return dissect.assign_cop_no_orders_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Assign Cop No Orders Message
size_of.assign_cop_no_orders_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.assign_cop_no_orders_body(buffer, offset + index)

  return index
end

-- Display: Assign Cop No Orders Message
display.assign_cop_no_orders_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Assign Cop No Orders Message
dissect.assign_cop_no_orders_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Assign Cop No Orders Body: Struct of 3 fields
  index, assign_cop_no_orders_body = dissect.assign_cop_no_orders_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Assign Cop No Orders Message
dissect.assign_cop_no_orders_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.assign_cop_no_orders_message then
    local length = size_of.assign_cop_no_orders_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.assign_cop_no_orders_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_cop_no_orders_message, range, display)
  end

  return dissect.assign_cop_no_orders_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 15
size_of.cop_order_15 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 15
display.cop_order_15 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 15
dissect.cop_order_15_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 15
dissect.cop_order_15 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_15 then
    local length = size_of.cop_order_15(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_15(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_15, range, display)
  end

  return dissect.cop_order_15_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 14
size_of.cop_order_14 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 14
display.cop_order_14 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 14
dissect.cop_order_14_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 14
dissect.cop_order_14 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_14 then
    local length = size_of.cop_order_14(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_14(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_14, range, display)
  end

  return dissect.cop_order_14_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 13
size_of.cop_order_13 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 13
display.cop_order_13 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 13
dissect.cop_order_13_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 13
dissect.cop_order_13 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_13 then
    local length = size_of.cop_order_13(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_13(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_13, range, display)
  end

  return dissect.cop_order_13_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 12
size_of.cop_order_12 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 12
display.cop_order_12 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 12
dissect.cop_order_12_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 12
dissect.cop_order_12 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_12 then
    local length = size_of.cop_order_12(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_12(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_12, range, display)
  end

  return dissect.cop_order_12_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 11
size_of.cop_order_11 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 11
display.cop_order_11 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 11
dissect.cop_order_11_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 11
dissect.cop_order_11 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_11 then
    local length = size_of.cop_order_11(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_11(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_11, range, display)
  end

  return dissect.cop_order_11_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 10
size_of.cop_order_10 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 10
display.cop_order_10 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 10
dissect.cop_order_10_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 10
dissect.cop_order_10 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_10 then
    local length = size_of.cop_order_10(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_10(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_10, range, display)
  end

  return dissect.cop_order_10_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 9
size_of.cop_order_9 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 9
display.cop_order_9 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 9
dissect.cop_order_9_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 9
dissect.cop_order_9 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_9 then
    local length = size_of.cop_order_9(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_9(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_9, range, display)
  end

  return dissect.cop_order_9_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 8
size_of.cop_order_8 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 8
display.cop_order_8 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 8
dissect.cop_order_8_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 8
dissect.cop_order_8 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_8 then
    local length = size_of.cop_order_8(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_8(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_8, range, display)
  end

  return dissect.cop_order_8_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 7
size_of.cop_order_7 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 7
display.cop_order_7 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 7
dissect.cop_order_7_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 7
dissect.cop_order_7 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_7 then
    local length = size_of.cop_order_7(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_7(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_7, range, display)
  end

  return dissect.cop_order_7_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 6
size_of.cop_order_6 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 6
display.cop_order_6 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 6
dissect.cop_order_6_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 6
dissect.cop_order_6 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_6 then
    local length = size_of.cop_order_6(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_6(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_6, range, display)
  end

  return dissect.cop_order_6_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 5
size_of.cop_order_5 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 5
display.cop_order_5 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 5
dissect.cop_order_5_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 5
dissect.cop_order_5 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_5 then
    local length = size_of.cop_order_5(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_5(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_5, range, display)
  end

  return dissect.cop_order_5_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 4
size_of.cop_order_4 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 4
display.cop_order_4 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 4
dissect.cop_order_4_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 4
dissect.cop_order_4 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_4 then
    local length = size_of.cop_order_4(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_4(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_4, range, display)
  end

  return dissect.cop_order_4_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 3
size_of.cop_order_3 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 3
display.cop_order_3 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 3
dissect.cop_order_3_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 3
dissect.cop_order_3 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_3 then
    local length = size_of.cop_order_3(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_3(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_3, range, display)
  end

  return dissect.cop_order_3_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 2
size_of.cop_order_2 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 2
display.cop_order_2 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 2
dissect.cop_order_2_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 2
dissect.cop_order_2 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_2 then
    local length = size_of.cop_order_2(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_2(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_2, range, display)
  end

  return dissect.cop_order_2_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cop Order 1
size_of.cop_order_1 = function(buffer, offset)
  local index = 0

  index = index + size_of.broker_number

  index = index + size_of.order_id

  return index
end

-- Display: Cop Order 1
display.cop_order_1 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cop Order 1
dissect.cop_order_1_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order 1
dissect.cop_order_1 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cop_order_1 then
    local length = size_of.cop_order_1(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cop_order_1(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cop_order_1, range, display)
  end

  return dissect.cop_order_1_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Assign Cop Orders Body
size_of.assign_cop_orders_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.calculated_opening_price

  index = index + size_of.order_side

  index = index + size_of.cop_order_1(buffer, offset + index)

  index = index + size_of.cop_order_2(buffer, offset + index)

  index = index + size_of.cop_order_3(buffer, offset + index)

  index = index + size_of.cop_order_4(buffer, offset + index)

  index = index + size_of.cop_order_5(buffer, offset + index)

  index = index + size_of.cop_order_6(buffer, offset + index)

  index = index + size_of.cop_order_7(buffer, offset + index)

  index = index + size_of.cop_order_8(buffer, offset + index)

  index = index + size_of.cop_order_9(buffer, offset + index)

  index = index + size_of.cop_order_10(buffer, offset + index)

  index = index + size_of.cop_order_11(buffer, offset + index)

  index = index + size_of.cop_order_12(buffer, offset + index)

  index = index + size_of.cop_order_13(buffer, offset + index)

  index = index + size_of.cop_order_14(buffer, offset + index)

  index = index + size_of.cop_order_15(buffer, offset + index)

  index = index + size_of.trading_system_time_stamp

  return index
end

-- Display: Assign Cop Orders Body
display.assign_cop_orders_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Assign Cop Orders Body
dissect.assign_cop_orders_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Calculated Opening Price: 8 Byte Unsigned Fixed Width Integer
  index, calculated_opening_price = dissect.calculated_opening_price(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Cop Order 1: Struct of 2 fields
  index, cop_order_1 = dissect.cop_order_1(buffer, index, packet, parent)

  -- Cop Order 2: Struct of 2 fields
  index, cop_order_2 = dissect.cop_order_2(buffer, index, packet, parent)

  -- Cop Order 3: Struct of 2 fields
  index, cop_order_3 = dissect.cop_order_3(buffer, index, packet, parent)

  -- Cop Order 4: Struct of 2 fields
  index, cop_order_4 = dissect.cop_order_4(buffer, index, packet, parent)

  -- Cop Order 5: Struct of 2 fields
  index, cop_order_5 = dissect.cop_order_5(buffer, index, packet, parent)

  -- Cop Order 6: Struct of 2 fields
  index, cop_order_6 = dissect.cop_order_6(buffer, index, packet, parent)

  -- Cop Order 7: Struct of 2 fields
  index, cop_order_7 = dissect.cop_order_7(buffer, index, packet, parent)

  -- Cop Order 8: Struct of 2 fields
  index, cop_order_8 = dissect.cop_order_8(buffer, index, packet, parent)

  -- Cop Order 9: Struct of 2 fields
  index, cop_order_9 = dissect.cop_order_9(buffer, index, packet, parent)

  -- Cop Order 10: Struct of 2 fields
  index, cop_order_10 = dissect.cop_order_10(buffer, index, packet, parent)

  -- Cop Order 11: Struct of 2 fields
  index, cop_order_11 = dissect.cop_order_11(buffer, index, packet, parent)

  -- Cop Order 12: Struct of 2 fields
  index, cop_order_12 = dissect.cop_order_12(buffer, index, packet, parent)

  -- Cop Order 13: Struct of 2 fields
  index, cop_order_13 = dissect.cop_order_13(buffer, index, packet, parent)

  -- Cop Order 14: Struct of 2 fields
  index, cop_order_14 = dissect.cop_order_14(buffer, index, packet, parent)

  -- Cop Order 15: Struct of 2 fields
  index, cop_order_15 = dissect.cop_order_15(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Assign Cop Orders Body
dissect.assign_cop_orders_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.assign_cop_orders_body then
    local length = size_of.assign_cop_orders_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.assign_cop_orders_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_cop_orders_body, range, display)
  end

  return dissect.assign_cop_orders_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Assign Cop Orders Message
size_of.assign_cop_orders_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.assign_cop_orders_body(buffer, offset + index)

  return index
end

-- Display: Assign Cop Orders Message
display.assign_cop_orders_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Assign Cop Orders Message
dissect.assign_cop_orders_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Assign Cop Orders Body: Struct of 19 fields
  index, assign_cop_orders_body = dissect.assign_cop_orders_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Assign Cop Orders Message
dissect.assign_cop_orders_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.assign_cop_orders_message then
    local length = size_of.assign_cop_orders_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.assign_cop_orders_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.assign_cop_orders_message, range, display)
  end

  return dissect.assign_cop_orders_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Book Terms Body
size_of.order_book_terms_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.broker_number

  index = index + size_of.order_side

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.non_resident

  index = index + size_of.settlement_terms

  index = index + size_of.settlement_date

  index = index + size_of.priority_time_stamp

  return index
end

-- Display: Order Book Terms Body
display.order_book_terms_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Terms Body
dissect.order_book_terms_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Non Resident: 1 Byte Ascii String Enum with 2 values
  index, non_resident = dissect.non_resident(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = dissect.settlement_terms(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, settlement_date = dissect.settlement_date(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = dissect.priority_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Terms Body
dissect.order_book_terms_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_terms_body then
    local length = size_of.order_book_terms_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_book_terms_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_book_terms_body, range, display)
  end

  return dissect.order_book_terms_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Book Terms Message
size_of.order_book_terms_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.order_book_terms_body(buffer, offset + index)

  return index
end

-- Display: Order Book Terms Message
display.order_book_terms_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Terms Message
dissect.order_book_terms_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Order Book Terms Body: Struct of 10 fields
  index, order_book_terms_body = dissect.order_book_terms_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Terms Message
dissect.order_book_terms_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_terms_message then
    local length = size_of.order_book_terms_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_book_terms_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_book_terms_message, range, display)
  end

  return dissect.order_book_terms_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Book Body
size_of.order_book_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.broker_number

  index = index + size_of.order_side

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.non_resident

  index = index + size_of.settlement_terms

  index = index + size_of.settlement_date

  index = index + size_of.priority_time_stamp

  return index
end

-- Display: Order Book Body
display.order_book_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Body
dissect.order_book_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = dissect.broker_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Non Resident: 1 Byte Ascii String Enum with 2 values
  index, non_resident = dissect.non_resident(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = dissect.settlement_terms(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, settlement_date = dissect.settlement_date(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = dissect.priority_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Body
dissect.order_book_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_body then
    local length = size_of.order_book_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_book_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_book_body, range, display)
  end

  return dissect.order_book_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Book Message
size_of.order_book_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.order_book_body(buffer, offset + index)

  return index
end

-- Display: Order Book Message
display.order_book_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Message
dissect.order_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Order Book Body: Struct of 10 fields
  index, order_book_body = dissect.order_book_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Message
dissect.order_book_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_message then
    local length = size_of.order_book_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_book_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.order_book_message, range, display)
  end

  return dissect.order_book_message_fields(buffer, offset, packet, parent)
end

-- Size: Moc Eligible
size_of.moc_eligible = 1

-- Display: Moc Eligible
display.moc_eligible = function(value)
  if value == "Y" then
    return "Moc Eligible: Yes (Y)"
  end
  if value == "N" then
    return "Moc Eligible: No (N)"
  end

  return "Moc Eligible: Unknown("..value..")"
end

-- Dissect: Moc Eligible
dissect.moc_eligible = function(buffer, offset, packet, parent)
  local length = size_of.moc_eligible
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.moc_eligible(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.moc_eligible, range, value, display)

  return offset + length, value
end

-- Size: Test Symbol
size_of.test_symbol = 1

-- Display: Test Symbol
display.test_symbol = function(value)
  if value == "Y" then
    return "Test Symbol: Yes (Y)"
  end
  if value == "N" then
    return "Test Symbol: No (N)"
  end

  return "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
dissect.test_symbol = function(buffer, offset, packet, parent)
  local length = size_of.test_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.test_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Size: Sell Minimum Quantity
size_of.sell_minimum_quantity = 4

-- Display: Sell Minimum Quantity
display.sell_minimum_quantity = function(value)
  return "Sell Minimum Quantity: "..value
end

-- Dissect: Sell Minimum Quantity
dissect.sell_minimum_quantity = function(buffer, offset, packet, parent)
  local length = size_of.sell_minimum_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sell_minimum_quantity(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_minimum_quantity, range, value, display)

  return offset + length, value
end

-- Size: Sell Maximum Quantity
size_of.sell_maximum_quantity = 4

-- Display: Sell Maximum Quantity
display.sell_maximum_quantity = function(value)
  return "Sell Maximum Quantity: "..value
end

-- Dissect: Sell Maximum Quantity
dissect.sell_maximum_quantity = function(buffer, offset, packet, parent)
  local length = size_of.sell_maximum_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sell_maximum_quantity(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.sell_maximum_quantity, range, value, display)

  return offset + length, value
end

-- Size: Buy Minimum Quantity
size_of.buy_minimum_quantity = 4

-- Display: Buy Minimum Quantity
display.buy_minimum_quantity = function(value)
  return "Buy Minimum Quantity: "..value
end

-- Dissect: Buy Minimum Quantity
dissect.buy_minimum_quantity = function(buffer, offset, packet, parent)
  local length = size_of.buy_minimum_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.buy_minimum_quantity(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_minimum_quantity, range, value, display)

  return offset + length, value
end

-- Size: Buy Maximum Quantity
size_of.buy_maximum_quantity = 4

-- Display: Buy Maximum Quantity
display.buy_maximum_quantity = function(value)
  return "Buy Maximum Quantity: "..value
end

-- Dissect: Buy Maximum Quantity
dissect.buy_maximum_quantity = function(buffer, offset, packet, parent)
  local length = size_of.buy_maximum_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.buy_maximum_quantity(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.buy_maximum_quantity, range, value, display)

  return offset + length, value
end

-- Size: Last Sale
size_of.last_sale = 8

-- Display: Last Sale
display.last_sale = function(value)
  return "Last Sale: "..value
end

-- Translate: Last Sale
translate.last_sale = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Sale
dissect.last_sale = function(buffer, offset, packet, parent)
  local length = size_of.last_sale
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.last_sale(raw)
  local display = display.last_sale(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Size: Face Value
size_of.face_value = 8

-- Display: Face Value
display.face_value = function(value)
  return "Face Value: "..value
end

-- Translate: Face Value
translate.face_value = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Face Value
dissect.face_value = function(buffer, offset, packet, parent)
  local length = size_of.face_value
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.face_value(raw)
  local display = display.face_value(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.face_value, range, value, display)

  return offset + length, value
end

-- Size: Currency
size_of.currency = 1

-- Display: Currency
display.currency = function(value)
  if value == "U" then
    return "Currency: Usd (U)"
  end
  if value == "C" then
    return "Currency: Cad (C)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Board Lot
size_of.board_lot = 2

-- Display: Board Lot
display.board_lot = function(value)
  return "Board Lot: "..value
end

-- Dissect: Board Lot
dissect.board_lot = function(buffer, offset, packet, parent)
  local length = size_of.board_lot
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.board_lot(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Size: Cusip
size_of.cusip = 12

-- Display: Cusip
display.cusip = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
dissect.cusip = function(buffer, offset, packet, parent)
  local length = size_of.cusip
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cusip(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.cusip, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Status Body
size_of.symbol_status_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.stock_group

  index = index + size_of.cusip

  index = index + size_of.board_lot

  index = index + size_of.currency

  index = index + size_of.face_value

  index = index + size_of.last_sale

  index = index + size_of.listing_market

  index = index + size_of.product_type

  index = index + size_of.buy_maximum_quantity

  index = index + size_of.buy_minimum_quantity

  index = index + size_of.sell_maximum_quantity

  index = index + size_of.sell_minimum_quantity

  index = index + size_of.stock_state

  index = index + size_of.test_symbol

  index = index + size_of.moc_eligible

  return index
end

-- Display: Symbol Status Body
display.symbol_status_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Status Body
dissect.symbol_status_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer
  index, stock_group = dissect.stock_group(buffer, index, packet, parent)

  -- Cusip: 12 Byte Ascii String
  index, cusip = dissect.cusip(buffer, index, packet, parent)

  -- Board Lot: 2 Byte Unsigned Fixed Width Integer
  index, board_lot = dissect.board_lot(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 2 values
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Face Value: 8 Byte Unsigned Fixed Width Integer
  index, face_value = dissect.face_value(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = dissect.last_sale(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = dissect.listing_market(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = dissect.product_type(buffer, index, packet, parent)

  -- Buy Maximum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, buy_maximum_quantity = dissect.buy_maximum_quantity(buffer, index, packet, parent)

  -- Buy Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, buy_minimum_quantity = dissect.buy_minimum_quantity(buffer, index, packet, parent)

  -- Sell Maximum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, sell_maximum_quantity = dissect.sell_maximum_quantity(buffer, index, packet, parent)

  -- Sell Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, sell_minimum_quantity = dissect.sell_minimum_quantity(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 8 values
  index, stock_state = dissect.stock_state(buffer, index, packet, parent)

  -- Test Symbol: 1 Byte Ascii String Enum with 2 values
  index, test_symbol = dissect.test_symbol(buffer, index, packet, parent)

  -- Moc Eligible: 1 Byte Ascii String Enum with 2 values
  index, moc_eligible = dissect.moc_eligible(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Body
dissect.symbol_status_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_status_body then
    local length = size_of.symbol_status_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol_status_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.symbol_status_body, range, display)
  end

  return dissect.symbol_status_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Symbol Status Message
size_of.symbol_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.symbol_status_body(buffer, offset + index)

  return index
end

-- Display: Symbol Status Message
display.symbol_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Status Message
dissect.symbol_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Symbol Status Body: Struct of 16 fields
  index, symbol_status_body = dissect.symbol_status_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
dissect.symbol_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_status_message then
    local length = size_of.symbol_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol_status_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.symbol_status_message, range, display)
  end

  return dissect.symbol_status_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Body Message
size_of.body_message = function(buffer, offset, msg_type)
  -- Size of Symbol Status Message
  if msg_type == "J" then
    return size_of.symbol_status_message(buffer, offset)
  end
  -- Size of Order Book Message
  if msg_type == "G" then
    return size_of.order_book_message(buffer, offset)
  end
  -- Size of Order Book Terms Message
  if msg_type == "j" then
    return size_of.order_book_terms_message(buffer, offset)
  end
  -- Size of Assign Cop Orders Message
  if msg_type == "A" then
    return size_of.assign_cop_orders_message(buffer, offset)
  end
  -- Size of Assign Cop No Orders Message
  if msg_type == "B" then
    return size_of.assign_cop_no_orders_message(buffer, offset)
  end
  -- Size of Assign Limit Message
  if msg_type == "C" then
    return size_of.assign_limit_message(buffer, offset)
  end
  -- Size of Market State Update Message
  if msg_type == "E" then
    return size_of.market_state_update_message(buffer, offset)
  end
  -- Size of Moc Imbalance Message
  if msg_type == "F" then
    return size_of.moc_imbalance_message(buffer, offset)
  end
  -- Size of Order Booked Message
  if msg_type == "P" then
    return size_of.order_booked_message(buffer, offset)
  end
  -- Size of Order Booked Terms Message
  if msg_type == "m" then
    return size_of.order_booked_terms_message(buffer, offset)
  end
  -- Size of Order Cancelled Message
  if msg_type == "Q" then
    return size_of.order_cancelled_message(buffer, offset)
  end
  -- Size of Order Cancelled Terms Message
  if msg_type == "n" then
    return size_of.order_cancelled_terms_message(buffer, offset)
  end
  -- Size of Order Price Time Assigned Message
  if msg_type == "R" then
    return size_of.order_price_time_assigned_message(buffer, offset)
  end
  -- Size of Order Price Time Assigned Terms Message
  if msg_type == "o" then
    return size_of.order_price_time_assigned_terms_message(buffer, offset)
  end
  -- Size of Stock Status Message
  if msg_type == "I" then
    return size_of.stock_status_message(buffer, offset)
  end
  -- Size of Trade Report Message
  if msg_type == "S" then
    return size_of.trade_report_message(buffer, offset)
  end
  -- Size of Trade Report Terms Message
  if msg_type == "P" then
    return size_of.trade_report_terms_message(buffer, offset)
  end
  -- Size of Trade Cancelled Message
  if msg_type == "T" then
    return size_of.trade_cancelled_message(buffer, offset)
  end
  -- Size of Trade Cancelled Terms Message
  if msg_type == "q" then
    return size_of.trade_cancelled_terms_message(buffer, offset)
  end
  -- Size of Trade Correction Message
  if msg_type == "U" then
    return size_of.trade_correction_message(buffer, offset)
  end
  -- Size of Trade Correction Terms Message
  if msg_type == "r" then
    return size_of.trade_correction_terms_message(buffer, offset)
  end

  return 0
end

-- Display: Body Message
display.body_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Body Message
dissect.body_message_branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Symbol Status Message
  if msg_type == "J" then
    return dissect.symbol_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Message
  if msg_type == "G" then
    return dissect.order_book_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Terms Message
  if msg_type == "j" then
    return dissect.order_book_terms_message(buffer, offset, packet, parent)
  end
  -- Dissect Assign Cop Orders Message
  if msg_type == "A" then
    return dissect.assign_cop_orders_message(buffer, offset, packet, parent)
  end
  -- Dissect Assign Cop No Orders Message
  if msg_type == "B" then
    return dissect.assign_cop_no_orders_message(buffer, offset, packet, parent)
  end
  -- Dissect Assign Limit Message
  if msg_type == "C" then
    return dissect.assign_limit_message(buffer, offset, packet, parent)
  end
  -- Dissect Market State Update Message
  if msg_type == "E" then
    return dissect.market_state_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Moc Imbalance Message
  if msg_type == "F" then
    return dissect.moc_imbalance_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Booked Message
  if msg_type == "P" then
    return dissect.order_booked_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Booked Terms Message
  if msg_type == "m" then
    return dissect.order_booked_terms_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if msg_type == "Q" then
    return dissect.order_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Terms Message
  if msg_type == "n" then
    return dissect.order_cancelled_terms_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Price Time Assigned Message
  if msg_type == "R" then
    return dissect.order_price_time_assigned_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Price Time Assigned Terms Message
  if msg_type == "o" then
    return dissect.order_price_time_assigned_terms_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if msg_type == "I" then
    return dissect.stock_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if msg_type == "S" then
    return dissect.trade_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Terms Message
  if msg_type == "P" then
    return dissect.trade_report_terms_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Message
  if msg_type == "T" then
    return dissect.trade_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Terms Message
  if msg_type == "q" then
    return dissect.trade_cancelled_terms_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if msg_type == "U" then
    return dissect.trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Terms Message
  if msg_type == "r" then
    return dissect.trade_correction_terms_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Body Message
dissect.body_message = function(buffer, offset, packet, parent, msg_type)
  if not show.body_message then
    return dissect.body_message_branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.body_message(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.body_message(buffer, packet, parent)
  local element = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.body_message, range, display)

  return dissect.body_message_branches(buffer, offset, packet, parent, msg_type)
end

-- Size: Msg Type
size_of.msg_type = 1

-- Display: Msg Type
display.msg_type = function(value)
  if value == "J" then
    return "Msg Type: Symbol Status Message (J)"
  end
  if value == "G" then
    return "Msg Type: Order Book Message (G)"
  end
  if value == "j" then
    return "Msg Type: Order Book Terms Message (j)"
  end
  if value == "A" then
    return "Msg Type: Assign Cop Orders Message (A)"
  end
  if value == "B" then
    return "Msg Type: Assign Cop No Orders Message (B)"
  end
  if value == "C" then
    return "Msg Type: Assign Limit Message (C)"
  end
  if value == "E" then
    return "Msg Type: Market State Update Message (E)"
  end
  if value == "F" then
    return "Msg Type: Moc Imbalance Message (F)"
  end
  if value == "P" then
    return "Msg Type: Order Booked Message (P)"
  end
  if value == "m" then
    return "Msg Type: Order Booked Terms Message (m)"
  end
  if value == "Q" then
    return "Msg Type: Order Cancelled Message (Q)"
  end
  if value == "n" then
    return "Msg Type: Order Cancelled Terms Message (n)"
  end
  if value == "R" then
    return "Msg Type: Order Price Time Assigned Message (R)"
  end
  if value == "o" then
    return "Msg Type: Order Price Time Assigned Terms Message (o)"
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
dissect.msg_type = function(buffer, offset, packet, parent)
  local length = size_of.msg_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.msg_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Size: Msg Length
size_of.msg_length = 2

-- Display: Msg Length
display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
dissect.msg_length = function(buffer, offset, packet, parent)
  local length = size_of.msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.msg_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Body Header
size_of.body_header = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_length

  index = index + size_of.msg_type

  return index
end

-- Display: Body Header
display.body_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Body Header
dissect.body_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = dissect.msg_length(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Ascii String Enum with 21 values
  index, msg_type = dissect.msg_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
dissect.body_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.body_header then
    local length = size_of.body_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.body_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.body_header, range, display)
  end

  return dissect.body_header_fields(buffer, offset, packet, parent)
end

-- Display: Body
display.body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Body
dissect.body_fields = function(buffer, offset, packet, parent, size_of_body)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = dissect.body_header(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 1, 1):string()

  -- Body Message: Runtime Type with 21 branches
  index = dissect.body_message(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Body
dissect.body = function(buffer, offset, packet, parent, size_of_body)
  -- Optionally add struct element to protocol tree
  if show.body then
    local range = buffer(offset, size_of_body)
    local display = display.body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.body, range, display)
  end

  dissect.body_fields(buffer, offset, packet, parent, size_of_body)

  return offset + size_of_body
end

-- Size: Num Body
size_of.num_body = 1

-- Display: Num Body
display.num_body = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
dissect.num_body = function(buffer, offset, packet, parent)
  local length = size_of.num_body
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.num_body(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.num_body, range, value, display)

  return offset + length, value
end

-- Size: Ack Required Poss Dup
size_of.ack_required_poss_dup = 1

-- Display: Ack Required Poss Dup
display.ack_required_poss_dup = function(value)
  if value == "A" then
    return "Ack Required Poss Dup: Receiver Needs To Ack (A)"
  end
  if value == "D" then
    return "Ack Required Poss Dup: Possible Duplicates (D)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
dissect.ack_required_poss_dup = function(buffer, offset, packet, parent)
  local length = size_of.ack_required_poss_dup
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ack_required_poss_dup(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Size: Session Id
size_of.session_id = 4

-- Display: Session Id
display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
dissect.session_id = function(buffer, offset, packet, parent)
  local length = size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Protocol Version
size_of.protocol_version = 1

-- Display: Protocol Version
display.protocol_version = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
dissect.protocol_version = function(buffer, offset, packet, parent)
  local length = size_of.protocol_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.protocol_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Size: Protocol Name
size_of.protocol_name = 1

-- Display: Protocol Name
display.protocol_name = function(value)
  return "Protocol Name: "..value
end

-- Dissect: Protocol Name
dissect.protocol_name = function(buffer, offset, packet, parent)
  local length = size_of.protocol_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.protocol_name(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Size: Start Of Frame
size_of.start_of_frame = 1

-- Display: Start Of Frame
display.start_of_frame = function(value)
  return "Start Of Frame: "..value
end

-- Dissect: Start Of Frame
dissect.start_of_frame = function(buffer, offset, packet, parent)
  local length = size_of.start_of_frame
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.start_of_frame(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Calculate size of: Frame Header
size_of.frame_header = function(buffer, offset)
  local index = 0

  index = index + size_of.start_of_frame

  index = index + size_of.protocol_name

  index = index + size_of.protocol_version

  index = index + size_of.message_length

  index = index + size_of.session_id

  index = index + size_of.ack_required_poss_dup

  index = index + size_of.num_body

  return index
end

-- Display: Frame Header
display.frame_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Frame Header
dissect.frame_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: 1 Byte Fixed Width Integer
  index, start_of_frame = dissect.start_of_frame(buffer, index, packet, parent)

  -- Protocol Name: 1 Byte Ascii String
  index, protocol_name = dissect.protocol_name(buffer, index, packet, parent)

  -- Protocol Version: 1 Byte Ascii String
  index, protocol_version = dissect.protocol_version(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = dissect.session_id(buffer, index, packet, parent)

  -- Ack Required Poss Dup: 1 Byte Ascii String Enum with 2 values
  index, ack_required_poss_dup = dissect.ack_required_poss_dup(buffer, index, packet, parent)

  -- Num Body: 1 Byte Unsigned Fixed Width Integer
  index, num_body = dissect.num_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
dissect.frame_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.frame_header then
    local length = size_of.frame_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.frame_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.fields.frame_header, range, display)
  end

  return dissect.frame_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = dissect.frame_header(buffer, index, packet, parent)

    -- Dependency element: Msg Length
    local msg_length = buffer(index, 2):le_uint()

    -- Body: Struct of 2 fields
    index = dissect.body(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.init()
end

-- Dissector for Tmx QuantumFeed TsxTsxvLevel2 Xmt 3.6
function tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.name

  -- Dissect protocol
  local protocol = parent:add(tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6, buffer(), tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Tmx QuantumFeed TsxTsxvLevel2 Xmt 3.6
local function tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6
  tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx QuantumFeed TsxTsxvLevel2 Xmt 3.6
tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6:register_heuristic("udp", tmx_quantumfeed_tsxtsxvlevel2_xmt_v3_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 3.6
--   Date: Tuesday, October 20, 2020
--   Specification: tsx_tsxv_level_2_quantumfeed_business_message_specifications-v3-6-0.pdf
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
