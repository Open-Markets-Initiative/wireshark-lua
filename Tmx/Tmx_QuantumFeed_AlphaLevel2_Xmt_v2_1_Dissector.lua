-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel2 Xmt 2.1 Protocol
local omi_tmx_quantumfeed_alphalevel2_xmt_v2_1 = Proto("Tmx.QuantumFeed.AlphaLevel2.Xmt.v2.1.Lua", "Tmx QuantumFeed AlphaLevel2 Xmt 2.1")

-- Protocol table
local tmx_quantumfeed_alphalevel2_xmt_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel2 Xmt 2.1 Fields
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.quantumfeed.alphalevel2.xmt.v2.1.ackrequiredpossdup", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.board_lot = ProtoField.new("Board Lot", "tmx.quantumfeed.alphalevel2.xmt.v2.1.boardlot", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.body = ProtoField.new("Body", "tmx.quantumfeed.alphalevel2.xmt.v2.1.body", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.body_header = ProtoField.new("Body Header", "tmx.quantumfeed.alphalevel2.xmt.v2.1.bodyheader", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.body_message = ProtoField.new("Body Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.bodymessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.broker_number = ProtoField.new("Broker Number", "tmx.quantumfeed.alphalevel2.xmt.v2.1.brokernumber", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.business_header = ProtoField.new("Business Header", "tmx.quantumfeed.alphalevel2.xmt.v2.1.businessheader", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.business_message = ProtoField.new("Business Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.businessmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.buy_broker_number = ProtoField.new("Buy Broker Number", "tmx.quantumfeed.alphalevel2.xmt.v2.1.buybrokernumber", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.buy_display_volume = ProtoField.new("Buy Display Volume", "tmx.quantumfeed.alphalevel2.xmt.v2.1.buydisplayvolume", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.buy_order_id = ProtoField.new("Buy Order Id", "tmx.quantumfeed.alphalevel2.xmt.v2.1.buyorderid", ftypes.UINT64)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.bypass = ProtoField.new("Bypass", "tmx.quantumfeed.alphalevel2.xmt.v2.1.bypass", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.comment = ProtoField.new("Comment", "tmx.quantumfeed.alphalevel2.xmt.v2.1.comment", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.cross_type = ProtoField.new("Cross Type", "tmx.quantumfeed.alphalevel2.xmt.v2.1.crosstype", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.currency = ProtoField.new("Currency", "tmx.quantumfeed.alphalevel2.xmt.v2.1.currency", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.cusip = ProtoField.new("Cusip", "tmx.quantumfeed.alphalevel2.xmt.v2.1.cusip", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.face_value = ProtoField.new("Face Value", "tmx.quantumfeed.alphalevel2.xmt.v2.1.facevalue", ftypes.DOUBLE)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.frame_header = ProtoField.new("Frame Header", "tmx.quantumfeed.alphalevel2.xmt.v2.1.frameheader", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.initiated_by = ProtoField.new("Initiated By", "tmx.quantumfeed.alphalevel2.xmt.v2.1.initiatedby", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.is_dark = ProtoField.new("Is Dark", "tmx.quantumfeed.alphalevel2.xmt.v2.1.isdark", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.last_sale = ProtoField.new("Last Sale", "tmx.quantumfeed.alphalevel2.xmt.v2.1.lastsale", ftypes.DOUBLE)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.listing_market = ProtoField.new("Listing Market", "tmx.quantumfeed.alphalevel2.xmt.v2.1.listingmarket", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.market_state = ProtoField.new("Market State", "tmx.quantumfeed.alphalevel2.xmt.v2.1.marketstate", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.message_length = ProtoField.new("Message Length", "tmx.quantumfeed.alphalevel2.xmt.v2.1.messagelength", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.min_po_qty = ProtoField.new("Min Po Qty", "tmx.quantumfeed.alphalevel2.xmt.v2.1.minpoqty", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.msg_length = ProtoField.new("Msg Length", "tmx.quantumfeed.alphalevel2.xmt.v2.1.msglength", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.msg_type = ProtoField.new("Msg Type", "tmx.quantumfeed.alphalevel2.xmt.v2.1.msgtype", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.msg_version = ProtoField.new("Msg Version", "tmx.quantumfeed.alphalevel2.xmt.v2.1.msgversion", ftypes.UINT8)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.num_body = ProtoField.new("Num Body", "tmx.quantumfeed.alphalevel2.xmt.v2.1.numbody", ftypes.UINT8)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_id = ProtoField.new("Order Id", "tmx.quantumfeed.alphalevel2.xmt.v2.1.orderid", ftypes.UINT64)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_side = ProtoField.new("Order Side", "tmx.quantumfeed.alphalevel2.xmt.v2.1.orderside", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.orig_trade_number = ProtoField.new("Orig Trade Number", "tmx.quantumfeed.alphalevel2.xmt.v2.1.origtradenumber", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.packet = ProtoField.new("Packet", "tmx.quantumfeed.alphalevel2.xmt.v2.1.packet", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.price = ProtoField.new("Price", "tmx.quantumfeed.alphalevel2.xmt.v2.1.price", ftypes.DOUBLE)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.priority_time_stamp = ProtoField.new("Priority Time Stamp", "tmx.quantumfeed.alphalevel2.xmt.v2.1.prioritytimestamp", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.product_type = ProtoField.new("Product Type", "tmx.quantumfeed.alphalevel2.xmt.v2.1.producttype", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.quantumfeed.alphalevel2.xmt.v2.1.protocolname", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.quantumfeed.alphalevel2.xmt.v2.1.protocolversion", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sell_broker_number = ProtoField.new("Sell Broker Number", "tmx.quantumfeed.alphalevel2.xmt.v2.1.sellbrokernumber", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sell_display_volume = ProtoField.new("Sell Display Volume", "tmx.quantumfeed.alphalevel2.xmt.v2.1.selldisplayvolume", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sell_order_id = ProtoField.new("Sell Order Id", "tmx.quantumfeed.alphalevel2.xmt.v2.1.sellorderid", ftypes.UINT64)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.quantumfeed.alphalevel2.xmt.v2.1.sequence0", ftypes.UINT8)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.quantumfeed.alphalevel2.xmt.v2.1.sequence1", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.session_id = ProtoField.new("Session Id", "tmx.quantumfeed.alphalevel2.xmt.v2.1.sessionid", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.settlement_date = ProtoField.new("Settlement Date", "tmx.quantumfeed.alphalevel2.xmt.v2.1.settlementdate", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.quantumfeed.alphalevel2.xmt.v2.1.settlementterms", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.source_id = ProtoField.new("Source Id", "tmx.quantumfeed.alphalevel2.xmt.v2.1.sourceid", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.quantumfeed.alphalevel2.xmt.v2.1.startofframe", ftypes.INT8)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.stock_group = ProtoField.new("Stock Group", "tmx.quantumfeed.alphalevel2.xmt.v2.1.stockgroup", ftypes.UINT8)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.stock_state = ProtoField.new("Stock State", "tmx.quantumfeed.alphalevel2.xmt.v2.1.stockstate", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.stream_id = ProtoField.new("Stream Id", "tmx.quantumfeed.alphalevel2.xmt.v2.1.streamid", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.symbol = ProtoField.new("Symbol", "tmx.quantumfeed.alphalevel2.xmt.v2.1.symbol", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.quantumfeed.alphalevel2.xmt.v2.1.testsymbol", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_number = ProtoField.new("Trade Number", "tmx.quantumfeed.alphalevel2.xmt.v2.1.tradenumber", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.quantumfeed.alphalevel2.xmt.v2.1.tradetimestamp", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.quantumfeed.alphalevel2.xmt.v2.1.tradingsystemtimestamp", ftypes.UINT64)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.volume = ProtoField.new("Volume", "tmx.quantumfeed.alphalevel2.xmt.v2.1.volume", ftypes.UINT32)

-- Tmx QuantumFeed AlphaLevel2 Xmt 2.1 messages
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.market_state_update_message = ProtoField.new("Market State Update Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.marketstateupdatemessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_book_message = ProtoField.new("Order Book Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.orderbookmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_booked_message = ProtoField.new("Order Booked Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.orderbookedmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.ordercancelledmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_price_time_assigned_message = ProtoField.new("Order Price Time Assigned Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.orderpricetimeassignedmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.stock_status_message = ProtoField.new("Stock Status Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.stockstatusmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.symbolstatusmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_cancelled_message = ProtoField.new("Trade Cancelled Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.tradecancelledmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_cancelled_terms_message = ProtoField.new("Trade Cancelled Terms Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.tradecancelledtermsmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.tradecorrectionmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_correction_terms_message = ProtoField.new("Trade Correction Terms Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.tradecorrectiontermsmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_report_message = ProtoField.new("Trade Report Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.tradereportmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_report_terms_message = ProtoField.new("Trade Report Terms Message", "tmx.quantumfeed.alphalevel2.xmt.v2.1.tradereporttermsmessage", ftypes.STRING)

-- Tmx QuantumFeed AlphaLevel2 Xmt 2.1 generated fields
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.body_index = ProtoField.new("Body Index", "tmx.quantumfeed.alphalevel2.xmt.v2.1.bodyindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx QuantumFeed AlphaLevel2 Xmt 2.1 Element Dissection Options
show.body = true
show.body_header = true
show.body_message = true
show.business_header = true
show.frame_header = true
show.market_state_update_message = true
show.order_book_message = true
show.order_booked_message = true
show.order_cancelled_message = true
show.order_price_time_assigned_message = true
show.packet = true
show.stock_status_message = true
show.symbol_status_message = true
show.trade_cancelled_message = true
show.trade_cancelled_terms_message = true
show.trade_correction_message = true
show.trade_correction_terms_message = true
show.trade_report_message = true
show.trade_report_terms_message = true
show.business_message = false

-- Register Tmx QuantumFeed AlphaLevel2 Xmt 2.1 Show Options
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_body = Pref.bool("Show Body", show.body, "Parse and add Body to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_body_header = Pref.bool("Show Body Header", show.body_header, "Parse and add Body Header to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_body_message = Pref.bool("Show Body Message", show.body_message, "Parse and add Body Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_business_header = Pref.bool("Show Business Header", show.business_header, "Parse and add Business Header to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_frame_header = Pref.bool("Show Frame Header", show.frame_header, "Parse and add Frame Header to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_market_state_update_message = Pref.bool("Show Market State Update Message", show.market_state_update_message, "Parse and add Market State Update Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_book_message = Pref.bool("Show Order Book Message", show.order_book_message, "Parse and add Order Book Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_booked_message = Pref.bool("Show Order Booked Message", show.order_booked_message, "Parse and add Order Booked Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_cancelled_message = Pref.bool("Show Order Cancelled Message", show.order_cancelled_message, "Parse and add Order Cancelled Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_price_time_assigned_message = Pref.bool("Show Order Price Time Assigned Message", show.order_price_time_assigned_message, "Parse and add Order Price Time Assigned Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_stock_status_message = Pref.bool("Show Stock Status Message", show.stock_status_message, "Parse and add Stock Status Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_symbol_status_message = Pref.bool("Show Symbol Status Message", show.symbol_status_message, "Parse and add Symbol Status Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_cancelled_message = Pref.bool("Show Trade Cancelled Message", show.trade_cancelled_message, "Parse and add Trade Cancelled Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_cancelled_terms_message = Pref.bool("Show Trade Cancelled Terms Message", show.trade_cancelled_terms_message, "Parse and add Trade Cancelled Terms Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_correction_terms_message = Pref.bool("Show Trade Correction Terms Message", show.trade_correction_terms_message, "Parse and add Trade Correction Terms Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_report_terms_message = Pref.bool("Show Trade Report Terms Message", show.trade_report_terms_message, "Parse and add Trade Report Terms Message to protocol tree")
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_business_message = Pref.bool("Show Business Message", show.business_message, "Parse and add Business Message to protocol tree")

-- Handle changed preferences
function omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.body ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_body then
    show.body = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_body
    changed = true
  end
  if show.body_header ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_body_header then
    show.body_header = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_body_header
    changed = true
  end
  if show.body_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_body_message then
    show.body_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_body_message
    changed = true
  end
  if show.business_header ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_business_header then
    show.business_header = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_business_header
    changed = true
  end
  if show.frame_header ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_frame_header then
    show.frame_header = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_frame_header
    changed = true
  end
  if show.market_state_update_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_market_state_update_message then
    show.market_state_update_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_market_state_update_message
    changed = true
  end
  if show.order_book_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_book_message then
    show.order_book_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_book_message
    changed = true
  end
  if show.order_booked_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_booked_message then
    show.order_booked_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_booked_message
    changed = true
  end
  if show.order_cancelled_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_cancelled_message then
    show.order_cancelled_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_cancelled_message
    changed = true
  end
  if show.order_price_time_assigned_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_price_time_assigned_message then
    show.order_price_time_assigned_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_order_price_time_assigned_message
    changed = true
  end
  if show.packet ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_packet then
    show.packet = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_packet
    changed = true
  end
  if show.stock_status_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_stock_status_message then
    show.stock_status_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_stock_status_message
    changed = true
  end
  if show.symbol_status_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_symbol_status_message then
    show.symbol_status_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_symbol_status_message
    changed = true
  end
  if show.trade_cancelled_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_cancelled_message then
    show.trade_cancelled_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_cancelled_message
    changed = true
  end
  if show.trade_cancelled_terms_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_cancelled_terms_message then
    show.trade_cancelled_terms_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_cancelled_terms_message
    changed = true
  end
  if show.trade_correction_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_correction_message then
    show.trade_correction_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_correction_message
    changed = true
  end
  if show.trade_correction_terms_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_correction_terms_message then
    show.trade_correction_terms_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_correction_terms_message
    changed = true
  end
  if show.trade_report_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_report_message then
    show.trade_report_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_report_message
    changed = true
  end
  if show.trade_report_terms_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_report_terms_message then
    show.trade_report_terms_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_trade_report_terms_message
    changed = true
  end
  if show.business_message ~= omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_business_message then
    show.business_message = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.prefs.show_business_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Dissect Tmx QuantumFeed AlphaLevel2 Xmt 2.1
-----------------------------------------------------------------------

-- Trading System Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp = {}

-- Size: Trading System Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size = 8

-- Display: Trading System Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trading System Time Stamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trading System Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trading_system_time_stamp, range, value, display)

  return offset + length, value
end

-- Cross Type
tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type = {}

-- Size: Cross Type
tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.size = 1

-- Display: Cross Type
tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.display = function(value)
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
tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Settlement Date
tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date = {}

-- Size: Settlement Date
tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date.size = 4

-- Display: Settlement Date
tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date.display = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Settlement Terms
tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms = {}

-- Size: Settlement Terms
tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms.size = 1

-- Display: Settlement Terms
tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms.display = function(value)
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
tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Trade Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp = {}

-- Size: Trade Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.size = 4

-- Display: Trade Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.display = function(value)
  return "Trade Time Stamp: "..value
end

-- Dissect: Trade Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Orig Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number = {}

-- Size: Orig Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number.size = 4

-- Display: Orig Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number.display = function(value)
  return "Orig Trade Number: "..value
end

-- Dissect: Orig Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.orig_trade_number, range, value, display)

  return offset + length, value
end

-- Initiated By
tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by = {}

-- Size: Initiated By
tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by.size = 1

-- Display: Initiated By
tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by.display = function(value)
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
tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.initiated_by, range, value, display)

  return offset + length, value
end

-- Sell Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number = {}

-- Size: Sell Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.size = 2

-- Display: Sell Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.display = function(value)
  return "Sell Broker Number: "..value
end

-- Dissect: Sell Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sell_broker_number, range, value, display)

  return offset + length, value
end

-- Buy Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number = {}

-- Size: Buy Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.size = 2

-- Display: Buy Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.display = function(value)
  return "Buy Broker Number: "..value
end

-- Dissect: Buy Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.buy_broker_number, range, value, display)

  return offset + length, value
end

-- Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.volume = {}

-- Size: Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.size = 4

-- Display: Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.volume, range, value, display)

  return offset + length, value
end

-- Price
tmx_quantumfeed_alphalevel2_xmt_v2_1.price = {}

-- Size: Price
tmx_quantumfeed_alphalevel2_xmt_v2_1.price.size = 8

-- Display: Price
tmx_quantumfeed_alphalevel2_xmt_v2_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
tmx_quantumfeed_alphalevel2_xmt_v2_1.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
tmx_quantumfeed_alphalevel2_xmt_v2_1.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.translate(raw)
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number = {}

-- Size: Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.size = 4

-- Display: Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol = {}

-- Size: Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size = 12

-- Display: Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Trade Correction Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message = {}

-- Size: Trade Correction Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.price.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Trade Correction Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Initiated By: 1 Byte Ascii String Enum with 3 values
  index, initiated_by = tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by.dissect(buffer, index, packet, parent)

  -- Orig Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms.dissect(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, settlement_date = tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_correction_terms_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_correction_terms_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Is Dark
tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark = {}

-- Size: Is Dark
tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark.size = 1

-- Display: Is Dark
tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark.display = function(value)
  return "Is Dark: "..value
end

-- Dissect: Is Dark
tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Bypass
tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass = {}

-- Size: Bypass
tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass.size = 1

-- Display: Bypass
tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass.display = function(value)
  if value == "Y" then
    return "Bypass: Yes (Y)"
  end
  if value == "N" then
    return "Bypass: No (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.bypass, range, value, display)

  return offset + length, value
end

-- Trade Correction Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message = {}

-- Size: Trade Correction Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.price.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Trade Correction Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Initiated By: 1 Byte Ascii String Enum with 3 values
  index, initiated_by = tmx_quantumfeed_alphalevel2_xmt_v2_1.initiated_by.dissect(buffer, index, packet, parent)

  -- Orig Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.orig_trade_number.dissect(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String
  index, is_dark = tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_correction_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancelled Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message = {}

-- Size: Trade Cancelled Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Trade Cancelled Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancelled Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancelled_terms_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_cancelled_terms_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message = {}

-- Size: Trade Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Trade Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancelled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_cancelled_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Sell Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume = {}

-- Size: Sell Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume.size = 4

-- Display: Sell Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume.display = function(value)
  return "Sell Display Volume: "..value
end

-- Dissect: Sell Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sell_display_volume, range, value, display)

  return offset + length, value
end

-- Sell Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id = {}

-- Size: Sell Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id.size = 8

-- Display: Sell Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id.display = function(value)
  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Buy Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume = {}

-- Size: Buy Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume.size = 4

-- Display: Buy Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume.display = function(value)
  return "Buy Display Volume: "..value
end

-- Dissect: Buy Display Volume
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.buy_display_volume, range, value, display)

  return offset + length, value
end

-- Buy Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id = {}

-- Size: Buy Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id.size = 8

-- Display: Buy Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id.display = function(value)
  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Trade Report Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message = {}

-- Size: Trade Report Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.price.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Trade Report Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Unsigned Fixed Width Integer
  index, buy_order_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id.dissect(buffer, index, packet, parent)

  -- Buy Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, buy_display_volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Unsigned Fixed Width Integer
  index, sell_order_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id.dissect(buffer, index, packet, parent)

  -- Sell Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, sell_display_volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_terms.dissect(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, settlement_date = tmx_quantumfeed_alphalevel2_xmt_v2_1.settlement_date.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Terms Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_report_terms_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_report_terms_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message = {}

-- Size: Trade Report Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.price.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Trade Report Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_number.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Unsigned Fixed Width Integer
  index, buy_order_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_order_id.dissect(buffer, index, packet, parent)

  -- Buy Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, buy_display_volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.buy_display_volume.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Unsigned Fixed Width Integer
  index, sell_order_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_order_id.dissect(buffer, index, packet, parent)

  -- Sell Display Volume: 4 Byte Unsigned Fixed Width Integer
  index, sell_display_volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.sell_display_volume.dissect(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = tmx_quantumfeed_alphalevel2_xmt_v2_1.bypass.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel2_xmt_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String
  index, is_dark = tmx_quantumfeed_alphalevel2_xmt_v2_1.is_dark.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.trade_report_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock State
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state = {}

-- Size: Stock State
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state.size = 2

-- Display: Stock State
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state.display = function(value)
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
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Comment
tmx_quantumfeed_alphalevel2_xmt_v2_1.comment = {}

-- Size: Comment
tmx_quantumfeed_alphalevel2_xmt_v2_1.comment.size = 40

-- Display: Comment
tmx_quantumfeed_alphalevel2_xmt_v2_1.comment.display = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
tmx_quantumfeed_alphalevel2_xmt_v2_1.comment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.comment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.comment.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.comment, range, value, display)

  return offset + length, value
end

-- Stock Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message = {}

-- Size: Stock Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.comment.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Stock Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Comment: 40 Byte Ascii String
  index, comment = tmx_quantumfeed_alphalevel2_xmt_v2_1.comment.dissect(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.stock_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.stock_status_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Priority Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp = {}

-- Size: Priority Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.size = 4

-- Display: Priority Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.display = function(value)
  return "Priority Time Stamp: "..value
end

-- Dissect: Priority Time Stamp
tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.priority_time_stamp, range, value, display)

  return offset + length, value
end

-- Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id = {}

-- Size: Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.size = 8

-- Display: Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Side
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side = {}

-- Size: Order Side
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.size = 1

-- Display: Order Side
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.display = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_side, range, value, display)

  return offset + length, value
end

-- Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number = {}

-- Size: Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.size = 2

-- Display: Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.display = function(value)
  return "Broker Number: "..value
end

-- Dissect: Broker Number
tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.broker_number, range, value, display)

  return offset + length, value
end

-- Order Price Time Assigned Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message = {}

-- Size: Order Price Time Assigned Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.price.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Order Price Time Assigned Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Price Time Assigned Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Priority Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Time Assigned Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message.dissect = function(buffer, offset, packet, parent)
  if show.order_price_time_assigned_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_price_time_assigned_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message = {}

-- Size: Order Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Order Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancelled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_cancelled_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Booked Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message = {}

-- Size: Order Booked Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.price.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Order Booked Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Booked Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Priority Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Booked Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message.dissect = function(buffer, offset, packet, parent)
  if show.order_booked_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_booked_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Group
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group = {}

-- Size: Stock Group
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group.size = 1

-- Display: Stock Group
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group.display = function(value)
  return "Stock Group: "..value
end

-- Dissect: Stock Group
tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Market State
tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state = {}

-- Size: Market State
tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state.size = 1

-- Display: Market State
tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state.display = function(value)
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
tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.market_state, range, value, display)

  return offset + length, value
end

-- Market State Update Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message = {}

-- Size: Market State Update Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.size

-- Display: Market State Update Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Update Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market State: 1 Byte Ascii String Enum with 11 values
  index, market_state = tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state.dissect(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer
  index, stock_group = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Update Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message.dissect = function(buffer, offset, packet, parent)
  if show.market_state_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.market_state_update_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message = {}

-- Size: Order Book Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.price.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.size

-- Display: Order Book Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, broker_number = tmx_quantumfeed_alphalevel2_xmt_v2_1.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel2_xmt_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel2_xmt_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Priority Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, priority_time_stamp = tmx_quantumfeed_alphalevel2_xmt_v2_1.priority_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message.dissect = function(buffer, offset, packet, parent)
  if show.order_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.order_book_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_1.test_symbol = {}

-- Size: Test Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_1.test_symbol.size = 1

-- Display: Test Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_1.test_symbol.display = function(value)
  if value == "Y" then
    return "Test Symbol: Yes (Y)"
  end
  if value == "N" then
    return "Test Symbol: No (N)"
  end

  return "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
tmx_quantumfeed_alphalevel2_xmt_v2_1.test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.test_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Min Po Qty
tmx_quantumfeed_alphalevel2_xmt_v2_1.min_po_qty = {}

-- Size: Min Po Qty
tmx_quantumfeed_alphalevel2_xmt_v2_1.min_po_qty.size = 4

-- Display: Min Po Qty
tmx_quantumfeed_alphalevel2_xmt_v2_1.min_po_qty.display = function(value)
  return "Min Po Qty: "..value
end

-- Dissect: Min Po Qty
tmx_quantumfeed_alphalevel2_xmt_v2_1.min_po_qty.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.min_po_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.min_po_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.min_po_qty, range, value, display)

  return offset + length, value
end

-- Last Sale
tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale = {}

-- Size: Last Sale
tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale.size = 8

-- Display: Last Sale
tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale.display = function(value)
  return "Last Sale: "..value
end

-- Translate: Last Sale
tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Sale
tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale.translate(raw)
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Face Value
tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value = {}

-- Size: Face Value
tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value.size = 8

-- Display: Face Value
tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value.display = function(value)
  return "Face Value: "..value
end

-- Translate: Face Value
tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Face Value
tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value.translate(raw)
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.face_value, range, value, display)

  return offset + length, value
end

-- Currency
tmx_quantumfeed_alphalevel2_xmt_v2_1.currency = {}

-- Size: Currency
tmx_quantumfeed_alphalevel2_xmt_v2_1.currency.size = 1

-- Display: Currency
tmx_quantumfeed_alphalevel2_xmt_v2_1.currency.display = function(value)
  if value == "U" then
    return "Currency: Usd (U)"
  end
  if value == "C" then
    return "Currency: Cad (C)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tmx_quantumfeed_alphalevel2_xmt_v2_1.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Board Lot
tmx_quantumfeed_alphalevel2_xmt_v2_1.board_lot = {}

-- Size: Board Lot
tmx_quantumfeed_alphalevel2_xmt_v2_1.board_lot.size = 2

-- Display: Board Lot
tmx_quantumfeed_alphalevel2_xmt_v2_1.board_lot.display = function(value)
  return "Board Lot: "..value
end

-- Dissect: Board Lot
tmx_quantumfeed_alphalevel2_xmt_v2_1.board_lot.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.board_lot.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.board_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Cusip
tmx_quantumfeed_alphalevel2_xmt_v2_1.cusip = {}

-- Size: Cusip
tmx_quantumfeed_alphalevel2_xmt_v2_1.cusip.size = 12

-- Display: Cusip
tmx_quantumfeed_alphalevel2_xmt_v2_1.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
tmx_quantumfeed_alphalevel2_xmt_v2_1.cusip.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.cusip.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.cusip, range, value, display)

  return offset + length, value
end

-- Product Type
tmx_quantumfeed_alphalevel2_xmt_v2_1.product_type = {}

-- Size: Product Type
tmx_quantumfeed_alphalevel2_xmt_v2_1.product_type.size = 1

-- Display: Product Type
tmx_quantumfeed_alphalevel2_xmt_v2_1.product_type.display = function(value)
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
tmx_quantumfeed_alphalevel2_xmt_v2_1.product_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.product_type, range, value, display)

  return offset + length, value
end

-- Listing Market
tmx_quantumfeed_alphalevel2_xmt_v2_1.listing_market = {}

-- Size: Listing Market
tmx_quantumfeed_alphalevel2_xmt_v2_1.listing_market.size = 1

-- Display: Listing Market
tmx_quantumfeed_alphalevel2_xmt_v2_1.listing_market.display = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Tsxv (V)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
tmx_quantumfeed_alphalevel2_xmt_v2_1.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Symbol Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message = {}

-- Size: Symbol Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.listing_market.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.product_type.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.cusip.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.board_lot.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.currency.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.min_po_qty.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.test_symbol.size

-- Display: Symbol Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer
  index, stock_group = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_group.dissect(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 2 values
  index, listing_market = tmx_quantumfeed_alphalevel2_xmt_v2_1.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 4 values
  index, product_type = tmx_quantumfeed_alphalevel2_xmt_v2_1.product_type.dissect(buffer, index, packet, parent)

  -- Cusip: 12 Byte Ascii String
  index, cusip = tmx_quantumfeed_alphalevel2_xmt_v2_1.cusip.dissect(buffer, index, packet, parent)

  -- Board Lot: 2 Byte Unsigned Fixed Width Integer
  index, board_lot = tmx_quantumfeed_alphalevel2_xmt_v2_1.board_lot.dissect(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 2 values
  index, currency = tmx_quantumfeed_alphalevel2_xmt_v2_1.currency.dissect(buffer, index, packet, parent)

  -- Face Value: 8 Byte Unsigned Fixed Width Integer
  index, face_value = tmx_quantumfeed_alphalevel2_xmt_v2_1.face_value.dissect(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = tmx_quantumfeed_alphalevel2_xmt_v2_1.last_sale.dissect(buffer, index, packet, parent)

  -- Min Po Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_po_qty = tmx_quantumfeed_alphalevel2_xmt_v2_1.min_po_qty.dissect(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_state.dissect(buffer, index, packet, parent)

  -- Test Symbol: 1 Byte Ascii String Enum with 2 values
  index, test_symbol = tmx_quantumfeed_alphalevel2_xmt_v2_1.test_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.symbol_status_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message = {}

-- Size: Business Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message.size = function(buffer, offset, msg_type)
  -- Size of Symbol Status Message
  if msg_type == "J" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message.size
  end
  -- Size of Order Book Message
  if msg_type == "G" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message.size
  end
  -- Size of Market State Update Message
  if msg_type == "E" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message.size
  end
  -- Size of Order Booked Message
  if msg_type == "P" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message.size
  end
  -- Size of Order Cancelled Message
  if msg_type == "Q" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message.size
  end
  -- Size of Order Price Time Assigned Message
  if msg_type == "R" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message.size
  end
  -- Size of Stock Status Message
  if msg_type == "I" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message.size
  end
  -- Size of Trade Report Message
  if msg_type == "S" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message.size
  end
  -- Size of Trade Report Terms Message
  if msg_type == "P" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message.size
  end
  -- Size of Trade Cancelled Message
  if msg_type == "T" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message.size
  end
  -- Size of Trade Cancelled Terms Message
  if msg_type == "q" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message.size
  end
  -- Size of Trade Correction Message
  if msg_type == "U" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message.size
  end
  -- Size of Trade Correction Terms Message
  if msg_type == "r" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message.size
  end

  return 0
end

-- Display: Business Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Business Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Symbol Status Message
  if msg_type == "J" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Message
  if msg_type == "G" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market State Update Message
  if msg_type == "E" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.market_state_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Booked Message
  if msg_type == "P" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_booked_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if msg_type == "Q" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Price Time Assigned Message
  if msg_type == "R" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.order_price_time_assigned_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if msg_type == "I" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.stock_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if msg_type == "S" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Terms Message
  if msg_type == "P" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_report_terms_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Message
  if msg_type == "T" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Terms Message
  if msg_type == "q" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_cancelled_terms_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if msg_type == "U" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Terms Message
  if msg_type == "r" then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.trade_correction_terms_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Business Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.business_message then
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message.display(buffer, packet, parent)
  local element = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.business_message, range, display)

  return tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message.branches(buffer, offset, packet, parent, msg_type)
end

-- Sequence 1
tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_1 = {}

-- Size: Sequence 1
tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_1.size = 4

-- Display: Sequence 1
tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_1.display = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Sequence 0
tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_0 = {}

-- Size: Sequence 0
tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_0.size = 1

-- Display: Sequence 0
tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_0.display = function(value)
  return "Sequence 0: "..value
end

-- Dissect: Sequence 0
tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_0.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_0.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Stream Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.stream_id = {}

-- Size: Stream Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.stream_id.size = 2

-- Display: Stream Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Source Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.source_id = {}

-- Size: Source Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.source_id.size = 1

-- Display: Source Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.source_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.source_id, range, value, display)

  return offset + length, value
end

-- Msg Version
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_version = {}

-- Size: Msg Version
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_version.size = 1

-- Display: Msg Version
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_version.display = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Business Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_header = {}

-- Size: Business Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_header.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_version.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.source_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.stream_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_0.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_1.size

-- Display: Business Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: 1 Byte Unsigned Fixed Width Integer
  index, msg_version = tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_version.dissect(buffer, index, packet, parent)

  -- Source Id: 1 Byte Ascii String
  index, source_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: 1 Byte Unsigned Fixed Width Integer
  index, sequence_0 = tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_0.dissect(buffer, index, packet, parent)

  -- Sequence 1: 4 Byte Unsigned Fixed Width Integer
  index, sequence_1 = tmx_quantumfeed_alphalevel2_xmt_v2_1.sequence_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.business_header.dissect = function(buffer, offset, packet, parent)
  if show.business_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.business_header, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.business_header.fields(buffer, offset, packet, parent)
  end
end

-- Body Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.body_message = {}

-- Display: Body Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.body_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.body_message.fields = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel2_xmt_v2_1.business_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(offset - 1, 1):string()

  -- Business Message: Runtime Type with 13 branches
  index = tmx_quantumfeed_alphalevel2_xmt_v2_1.business_message.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Body Message
tmx_quantumfeed_alphalevel2_xmt_v2_1.body_message.dissect = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset + size_of_body_message

  -- Optionally add group/struct element to protocol tree
  if show.body_message then
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.body_message, buffer(offset, 0))
    local current = tmx_quantumfeed_alphalevel2_xmt_v2_1.body_message.fields(buffer, offset, packet, parent, size_of_body_message)
    parent:set_len(size_of_body_message)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.body_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_quantumfeed_alphalevel2_xmt_v2_1.body_message.fields(buffer, offset, packet, parent, size_of_body_message)

    return index
  end
end

-- Msg Type
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_type = {}

-- Size: Msg Type
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_type.size = 1

-- Display: Msg Type
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_type.display = function(value)
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
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Length
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_length = {}

-- Size: Msg Length
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_length.size = 2

-- Display: Msg Length
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Body Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.body_header = {}

-- Size: Body Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.body_header.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_length.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_type.size

-- Display: Body Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.body_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.body_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_length.dissect(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Ascii String Enum with 13 values
  index, msg_type = tmx_quantumfeed_alphalevel2_xmt_v2_1.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.body_header.dissect = function(buffer, offset, packet, parent)
  if show.body_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.body_header, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.body_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.body_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.body_header.fields(buffer, offset, packet, parent)
  end
end

-- Body
tmx_quantumfeed_alphalevel2_xmt_v2_1.body = {}

-- Display: Body
tmx_quantumfeed_alphalevel2_xmt_v2_1.body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body
tmx_quantumfeed_alphalevel2_xmt_v2_1.body.fields = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset

  -- Implicit Body Index
  if body_index ~= nil then
    local iteration = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.body_index, body_index)
    iteration:set_generated()
  end

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_quantumfeed_alphalevel2_xmt_v2_1.body_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(index - 3, 2):le_uint()

  -- Runtime Size Of: Body Message
  local size_of_body_message = msg_length - 3

  -- Body Message: Struct of 2 fields
  index, body_message = tmx_quantumfeed_alphalevel2_xmt_v2_1.body_message.dissect(buffer, index, packet, parent, size_of_body_message)

  return index
end

-- Dissect: Body
tmx_quantumfeed_alphalevel2_xmt_v2_1.body.dissect = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset + size_of_body

  -- Optionally add group/struct element to protocol tree
  if show.body then
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.body, buffer(offset, 0))
    local current = tmx_quantumfeed_alphalevel2_xmt_v2_1.body.fields(buffer, offset, packet, parent, size_of_body, body_index)
    parent:set_len(size_of_body)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.body.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_quantumfeed_alphalevel2_xmt_v2_1.body.fields(buffer, offset, packet, parent, size_of_body, body_index)

    return index
  end
end

-- Num Body
tmx_quantumfeed_alphalevel2_xmt_v2_1.num_body = {}

-- Size: Num Body
tmx_quantumfeed_alphalevel2_xmt_v2_1.num_body.size = 1

-- Display: Num Body
tmx_quantumfeed_alphalevel2_xmt_v2_1.num_body.display = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
tmx_quantumfeed_alphalevel2_xmt_v2_1.num_body.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.num_body.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.num_body.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.num_body, range, value, display)

  return offset + length, value
end

-- Ack Required Poss Dup
tmx_quantumfeed_alphalevel2_xmt_v2_1.ack_required_poss_dup = {}

-- Size: Ack Required Poss Dup
tmx_quantumfeed_alphalevel2_xmt_v2_1.ack_required_poss_dup.size = 1

-- Display: Ack Required Poss Dup
tmx_quantumfeed_alphalevel2_xmt_v2_1.ack_required_poss_dup.display = function(value)
  if value == "0" then
    return "Ack Required Poss Dup: Unused (0)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
tmx_quantumfeed_alphalevel2_xmt_v2_1.ack_required_poss_dup.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.ack_required_poss_dup.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.ack_required_poss_dup.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Session Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.session_id = {}

-- Size: Session Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.session_id.size = 4

-- Display: Session Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_quantumfeed_alphalevel2_xmt_v2_1.session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_quantumfeed_alphalevel2_xmt_v2_1.message_length = {}

-- Size: Message Length
tmx_quantumfeed_alphalevel2_xmt_v2_1.message_length.size = 2

-- Display: Message Length
tmx_quantumfeed_alphalevel2_xmt_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_quantumfeed_alphalevel2_xmt_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Protocol Version
tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_version = {}

-- Size: Protocol Version
tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_version.size = 1

-- Display: Protocol Version
tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Protocol Name
tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_name = {}

-- Size: Protocol Name
tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_name.size = 1

-- Display: Protocol Name
tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_name.display = function(value)
  if value == "X" then
    return "Protocol Name: Xmt (X)"
  end

  return "Protocol Name: Unknown("..value..")"
end

-- Dissect: Protocol Name
tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Start Of Frame
tmx_quantumfeed_alphalevel2_xmt_v2_1.start_of_frame = {}

-- Size: Start Of Frame
tmx_quantumfeed_alphalevel2_xmt_v2_1.start_of_frame.size = 1

-- Display: Start Of Frame
tmx_quantumfeed_alphalevel2_xmt_v2_1.start_of_frame.display = function(value)
  if value == 2 then
    return "Start Of Frame: New Frame (2)"
  end

  return "Start Of Frame: Unknown("..value..")"
end

-- Dissect: Start Of Frame
tmx_quantumfeed_alphalevel2_xmt_v2_1.start_of_frame.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel2_xmt_v2_1.start_of_frame.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.start_of_frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Frame Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.frame_header = {}

-- Size: Frame Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.frame_header.size =
  tmx_quantumfeed_alphalevel2_xmt_v2_1.start_of_frame.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_name.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_version.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.message_length.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.session_id.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.ack_required_poss_dup.size + 
  tmx_quantumfeed_alphalevel2_xmt_v2_1.num_body.size

-- Display: Frame Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.frame_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.frame_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: 1 Byte Fixed Width Integer Enum with 1 values
  index, start_of_frame = tmx_quantumfeed_alphalevel2_xmt_v2_1.start_of_frame.dissect(buffer, index, packet, parent)

  -- Protocol Name: 1 Byte Ascii String Enum with 1 values
  index, protocol_name = tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_name.dissect(buffer, index, packet, parent)

  -- Protocol Version: 1 Byte Ascii String
  index, protocol_version = tmx_quantumfeed_alphalevel2_xmt_v2_1.protocol_version.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = tmx_quantumfeed_alphalevel2_xmt_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = tmx_quantumfeed_alphalevel2_xmt_v2_1.session_id.dissect(buffer, index, packet, parent)

  -- Ack Required Poss Dup: 1 Byte Ascii String Enum with 1 values
  index, ack_required_poss_dup = tmx_quantumfeed_alphalevel2_xmt_v2_1.ack_required_poss_dup.dissect(buffer, index, packet, parent)

  -- Num Body: 1 Byte Unsigned Fixed Width Integer
  index, num_body = tmx_quantumfeed_alphalevel2_xmt_v2_1.num_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
tmx_quantumfeed_alphalevel2_xmt_v2_1.frame_header.dissect = function(buffer, offset, packet, parent)
  if show.frame_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.fields.frame_header, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel2_xmt_v2_1.frame_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel2_xmt_v2_1.frame_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel2_xmt_v2_1.frame_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tmx_quantumfeed_alphalevel2_xmt_v2_1.packet = {}

-- Dissect Packet
tmx_quantumfeed_alphalevel2_xmt_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = tmx_quantumfeed_alphalevel2_xmt_v2_1.frame_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Num Body
    local num_body = buffer(index - 1, 1):uint()

    -- Repeating: Body
    for body_index = 1, num_body do

      -- Dependency element: Msg Length
      local msg_length = buffer(index, 2):le_uint()

      -- Runtime Size Of: Body
      index, body = tmx_quantumfeed_alphalevel2_xmt_v2_1.body.dissect(buffer, index, packet, parent, msg_length)
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.init()
end

-- Dissector for Tmx QuantumFeed AlphaLevel2 Xmt 2.1
function omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_quantumfeed_alphalevel2_xmt_v2_1, buffer(), omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.description, "("..buffer:len().." Bytes)")
  return tmx_quantumfeed_alphalevel2_xmt_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_tmx_quantumfeed_alphalevel2_xmt_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
tmx_quantumfeed_alphalevel2_xmt_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Tmx QuantumFeed AlphaLevel2 Xmt 2.1
local function omi_tmx_quantumfeed_alphalevel2_xmt_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_quantumfeed_alphalevel2_xmt_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_quantumfeed_alphalevel2_xmt_v2_1
  omi_tmx_quantumfeed_alphalevel2_xmt_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx QuantumFeed AlphaLevel2 Xmt 2.1
omi_tmx_quantumfeed_alphalevel2_xmt_v2_1:register_heuristic("udp", omi_tmx_quantumfeed_alphalevel2_xmt_v2_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 2.1
--   Date: Tuesday, October 20, 2020
--   Specification: alpha_level_2_tmx_quantumfeed_business_message_specifications-v2-1-0.pdf
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
