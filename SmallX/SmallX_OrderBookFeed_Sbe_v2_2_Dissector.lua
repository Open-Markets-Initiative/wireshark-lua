-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- SmallX OrderBookFeed Sbe 2.2 Protocol
local omi_smallx_orderbookfeed_sbe_v2_2 = Proto("SmallX.OrderBookFeed.Sbe.v2.2.Lua", "SmallX OrderBookFeed Sbe 2.2")

-- Component Tables
local show = {}
local format = {}
local smallx_orderbookfeed_sbe_v2_2_display = {}
local smallx_orderbookfeed_sbe_v2_2_dissect = {}
local smallx_orderbookfeed_sbe_v2_2_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- SmallX OrderBookFeed Sbe 2.2 Fields
omi_smallx_orderbookfeed_sbe_v2_2.fields.administrative = ProtoField.new("Administrative", "smallx.orderbookfeed.sbe.v2.2.administrative", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_smallx_orderbookfeed_sbe_v2_2.fields.aggressor_side = ProtoField.new("Aggressor Side", "smallx.orderbookfeed.sbe.v2.2.aggressorside", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.auction = ProtoField.new("Auction", "smallx.orderbookfeed.sbe.v2.2.auction", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_smallx_orderbookfeed_sbe_v2_2.fields.block_length = ProtoField.new("Block Length", "smallx.orderbookfeed.sbe.v2.2.blocklength", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.book_begin = ProtoField.new("Book Begin", "smallx.orderbookfeed.sbe.v2.2.bookbegin", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_smallx_orderbookfeed_sbe_v2_2.fields.book_end = ProtoField.new("Book End", "smallx.orderbookfeed.sbe.v2.2.bookend", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_smallx_orderbookfeed_sbe_v2_2.fields.book_reset = ProtoField.new("Book Reset", "smallx.orderbookfeed.sbe.v2.2.bookreset", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
omi_smallx_orderbookfeed_sbe_v2_2.fields.buy_order_id = ProtoField.new("Buy Order Id", "smallx.orderbookfeed.sbe.v2.2.buyorderid", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.cfi_code = ProtoField.new("Cfi Code", "smallx.orderbookfeed.sbe.v2.2.cficode", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.channel_id = ProtoField.new("Channel Id", "smallx.orderbookfeed.sbe.v2.2.channelid", ftypes.UINT8)
omi_smallx_orderbookfeed_sbe_v2_2.fields.close_price = ProtoField.new("Close Price", "smallx.orderbookfeed.sbe.v2.2.closeprice", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.currency = ProtoField.new("Currency", "smallx.orderbookfeed.sbe.v2.2.currency", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.delivery = ProtoField.new("Delivery", "smallx.orderbookfeed.sbe.v2.2.delivery", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.description = ProtoField.new("Description", "smallx.orderbookfeed.sbe.v2.2.description", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.exercise_style = ProtoField.new("Exercise Style", "smallx.orderbookfeed.sbe.v2.2.exercisestyle", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.expiration_date = ProtoField.new("Expiration Date", "smallx.orderbookfeed.sbe.v2.2.expirationdate", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.expiration_style = ProtoField.new("Expiration Style", "smallx.orderbookfeed.sbe.v2.2.expirationstyle", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.first_trading_session_date = ProtoField.new("First Trading Session Date", "smallx.orderbookfeed.sbe.v2.2.firsttradingsessiondate", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.frame_length = ProtoField.new("Frame Length", "smallx.orderbookfeed.sbe.v2.2.framelength", ftypes.UINT8)
omi_smallx_orderbookfeed_sbe_v2_2.fields.group_dimension = ProtoField.new("Group Dimension", "smallx.orderbookfeed.sbe.v2.2.groupdimension", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.high_price = ProtoField.new("High Price", "smallx.orderbookfeed.sbe.v2.2.highprice", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.implied = ProtoField.new("Implied", "smallx.orderbookfeed.sbe.v2.2.implied", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_smallx_orderbookfeed_sbe_v2_2.fields.incarnation = ProtoField.new("Incarnation", "smallx.orderbookfeed.sbe.v2.2.incarnation", ftypes.INT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.incarnation_end = ProtoField.new("Incarnation End", "smallx.orderbookfeed.sbe.v2.2.incarnationend", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_smallx_orderbookfeed_sbe_v2_2.fields.incremental_message_instructions = ProtoField.new("Incremental Message Instructions", "smallx.orderbookfeed.sbe.v2.2.incrementalmessageinstructions", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.index_count = ProtoField.new("Index Count", "smallx.orderbookfeed.sbe.v2.2.indexcount", ftypes.INT32)
omi_smallx_orderbookfeed_sbe_v2_2.fields.index_symbol = ProtoField.new("Index Symbol", "smallx.orderbookfeed.sbe.v2.2.indexsymbol", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_begin = ProtoField.new("Instrument Begin", "smallx.orderbookfeed.sbe.v2.2.instrumentbegin", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_end = ProtoField.new("Instrument End", "smallx.orderbookfeed.sbe.v2.2.instrumentend", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_id = ProtoField.new("Instrument Id", "smallx.orderbookfeed.sbe.v2.2.instrumentid", ftypes.INT32)
omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_message_no = ProtoField.new("Instrument Message No", "smallx.orderbookfeed.sbe.v2.2.instrumentmessageno", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_trading_status = ProtoField.new("Instrument Trading Status", "smallx.orderbookfeed.sbe.v2.2.instrumenttradingstatus", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_type = ProtoField.new("Instrument Type", "smallx.orderbookfeed.sbe.v2.2.instrumenttype", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_update_action = ProtoField.new("Instrument Update Action", "smallx.orderbookfeed.sbe.v2.2.instrumentupdateaction", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.last_incremental_message_seq = ProtoField.new("Last Incremental Message Seq", "smallx.orderbookfeed.sbe.v2.2.lastincrementalmessageseq", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trade_price = ProtoField.new("Last Trade Price", "smallx.orderbookfeed.sbe.v2.2.lasttradeprice", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trade_size = ProtoField.new("Last Trade Size", "smallx.orderbookfeed.sbe.v2.2.lasttradesize", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trade_time_timestamp = ProtoField.new("Last Trade Time Timestamp", "smallx.orderbookfeed.sbe.v2.2.lasttradetimetimestamp", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trade_time_timestamp_optional = ProtoField.new("Last Trade Time Timestamp Optional", "smallx.orderbookfeed.sbe.v2.2.lasttradetimetimestampoptional", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trading_session_date = ProtoField.new("Last Trading Session Date", "smallx.orderbookfeed.sbe.v2.2.lasttradingsessiondate", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "smallx.orderbookfeed.sbe.v2.2.leginstrumentid", ftypes.INT32)
omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_product = ProtoField.new("Leg Product", "smallx.orderbookfeed.sbe.v2.2.legproduct", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_ratio_quantity = ProtoField.new("Leg Ratio Quantity", "smallx.orderbookfeed.sbe.v2.2.legratioquantity", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_side = ProtoField.new("Leg Side", "smallx.orderbookfeed.sbe.v2.2.legside", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_symbol = ProtoField.new("Leg Symbol", "smallx.orderbookfeed.sbe.v2.2.legsymbol", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.low_price = ProtoField.new("Low Price", "smallx.orderbookfeed.sbe.v2.2.lowprice", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.maturity_date = ProtoField.new("Maturity Date", "smallx.orderbookfeed.sbe.v2.2.maturitydate", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.message_count = ProtoField.new("Message Count", "smallx.orderbookfeed.sbe.v2.2.messagecount", ftypes.UINT8)
omi_smallx_orderbookfeed_sbe_v2_2.fields.message_header = ProtoField.new("Message Header", "smallx.orderbookfeed.sbe.v2.2.messageheader", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.message_sequence = ProtoField.new("Message Sequence", "smallx.orderbookfeed.sbe.v2.2.messagesequence", ftypes.INT32)
omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_incremental_v_2_message_leg_group = ProtoField.new("Multileg Definition Incremental V 2 Message Leg Group", "smallx.orderbookfeed.sbe.v2.2.multilegdefinitionincrementalv2messageleggroup", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_incremental_v_2_message_leg_groups = ProtoField.new("Multileg Definition Incremental V 2 Message Leg Groups", "smallx.orderbookfeed.sbe.v2.2.multilegdefinitionincrementalv2messageleggroups", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_snapshot_v_2_message_leg_group = ProtoField.new("Multileg Definition Snapshot V 2 Message Leg Group", "smallx.orderbookfeed.sbe.v2.2.multilegdefinitionsnapshotv2messageleggroup", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_snapshot_v_2_message_leg_groups = ProtoField.new("Multileg Definition Snapshot V 2 Message Leg Groups", "smallx.orderbookfeed.sbe.v2.2.multilegdefinitionsnapshotv2messageleggroups", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.num_in_group = ProtoField.new("Num In Group", "smallx.orderbookfeed.sbe.v2.2.numingroup", ftypes.UINT8)
omi_smallx_orderbookfeed_sbe_v2_2.fields.open_interest = ProtoField.new("Open Interest", "smallx.orderbookfeed.sbe.v2.2.openinterest", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.open_price = ProtoField.new("Open Price", "smallx.orderbookfeed.sbe.v2.2.openprice", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.open_price_type = ProtoField.new("Open Price Type", "smallx.orderbookfeed.sbe.v2.2.openpricetype", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.order_attributes = ProtoField.new("Order Attributes", "smallx.orderbookfeed.sbe.v2.2.orderattributes", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.order_id = ProtoField.new("Order Id", "smallx.orderbookfeed.sbe.v2.2.orderid", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.order_priority_order_priority_optional = ProtoField.new("Order Priority Order Priority optional", "smallx.orderbookfeed.sbe.v2.2.orderpriorityorderpriorityoptional", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.order_update_action = ProtoField.new("Order Update Action", "smallx.orderbookfeed.sbe.v2.2.orderupdateaction", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.orders_group = ProtoField.new("Orders Group", "smallx.orderbookfeed.sbe.v2.2.ordersgroup", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.orders_groups = ProtoField.new("Orders Groups", "smallx.orderbookfeed.sbe.v2.2.ordersgroups", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.packet = ProtoField.new("Packet", "smallx.orderbookfeed.sbe.v2.2.packet", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.packet_flags = ProtoField.new("Packet Flags", "smallx.orderbookfeed.sbe.v2.2.packetflags", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.packet_header = ProtoField.new("Packet Header", "smallx.orderbookfeed.sbe.v2.2.packetheader", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.payload = ProtoField.new("Payload", "smallx.orderbookfeed.sbe.v2.2.payload", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.price_increment = ProtoField.new("Price Increment", "smallx.orderbookfeed.sbe.v2.2.priceincrement", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.price_multiplier = ProtoField.new("Price Multiplier", "smallx.orderbookfeed.sbe.v2.2.pricemultiplier", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.price_price = ProtoField.new("Price Price", "smallx.orderbookfeed.sbe.v2.2.priceprice", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.price_price_optional = ProtoField.new("Price Price Optional", "smallx.orderbookfeed.sbe.v2.2.pricepriceoptional", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.product = ProtoField.new("Product", "smallx.orderbookfeed.sbe.v2.2.product", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.put_or_call = ProtoField.new("Put Or Call", "smallx.orderbookfeed.sbe.v2.2.putorcall", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_14 = ProtoField.new("Reserved 14", "smallx.orderbookfeed.sbe.v2.2.reserved14", ftypes.UINT16, nil, base.DEC, 0xFFFC)
omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_15 = ProtoField.new("Reserved 15", "smallx.orderbookfeed.sbe.v2.2.reserved15", ftypes.UINT16, nil, base.DEC, 0xFFFE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_2 = ProtoField.new("Reserved 2", "smallx.orderbookfeed.sbe.v2.2.reserved2", ftypes.UINT8, nil, base.DEC, 0x0006)
omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_5 = ProtoField.new("Reserved 5", "smallx.orderbookfeed.sbe.v2.2.reserved5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_7 = ProtoField.new("Reserved 7", "smallx.orderbookfeed.sbe.v2.2.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE00)
omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_9 = ProtoField.new("Reserved 9", "smallx.orderbookfeed.sbe.v2.2.reserved9", ftypes.UINT16, nil, base.DEC, 0xFF80)
omi_smallx_orderbookfeed_sbe_v2_2.fields.retransmission = ProtoField.new("Retransmission", "smallx.orderbookfeed.sbe.v2.2.retransmission", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_smallx_orderbookfeed_sbe_v2_2.fields.sbe_frame = ProtoField.new("Sbe Frame", "smallx.orderbookfeed.sbe.v2.2.sbeframe", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.schema_id = ProtoField.new("Schema Id", "smallx.orderbookfeed.sbe.v2.2.schemaid", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.sell_order_id = ProtoField.new("Sell Order Id", "smallx.orderbookfeed.sbe.v2.2.sellorderid", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.session_date = ProtoField.new("Session Date", "smallx.orderbookfeed.sbe.v2.2.sessiondate", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.settlement_price = ProtoField.new("Settlement Price", "smallx.orderbookfeed.sbe.v2.2.settlementprice", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.settlement_price_type = ProtoField.new("Settlement Price Type", "smallx.orderbookfeed.sbe.v2.2.settlementpricetype", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.shares_per_contract = ProtoField.new("Shares Per Contract", "smallx.orderbookfeed.sbe.v2.2.sharespercontract", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.side = ProtoField.new("Side", "smallx.orderbookfeed.sbe.v2.2.side", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.size = ProtoField.new("Size", "smallx.orderbookfeed.sbe.v2.2.size", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.snapshot_begin = ProtoField.new("Snapshot Begin", "smallx.orderbookfeed.sbe.v2.2.snapshotbegin", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_smallx_orderbookfeed_sbe_v2_2.fields.snapshot_end = ProtoField.new("Snapshot End", "smallx.orderbookfeed.sbe.v2.2.snapshotend", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_smallx_orderbookfeed_sbe_v2_2.fields.snapshot_instruments_count = ProtoField.new("Snapshot Instruments Count", "smallx.orderbookfeed.sbe.v2.2.snapshotinstrumentscount", ftypes.INT32)
omi_smallx_orderbookfeed_sbe_v2_2.fields.snapshot_message_instructions = ProtoField.new("Snapshot Message Instructions", "smallx.orderbookfeed.sbe.v2.2.snapshotmessageinstructions", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.source = ProtoField.new("Source", "smallx.orderbookfeed.sbe.v2.2.source", ftypes.UINT8)
omi_smallx_orderbookfeed_sbe_v2_2.fields.spread_symbol = ProtoField.new("Spread Symbol", "smallx.orderbookfeed.sbe.v2.2.spreadsymbol", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.strategy_type = ProtoField.new("Strategy Type", "smallx.orderbookfeed.sbe.v2.2.strategytype", ftypes.UINT8)
omi_smallx_orderbookfeed_sbe_v2_2.fields.strike_price = ProtoField.new("Strike Price", "smallx.orderbookfeed.sbe.v2.2.strikeprice", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.symbol = ProtoField.new("Symbol", "smallx.orderbookfeed.sbe.v2.2.symbol", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.synthetic = ProtoField.new("Synthetic", "smallx.orderbookfeed.sbe.v2.2.synthetic", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_smallx_orderbookfeed_sbe_v2_2.fields.template_id = ProtoField.new("Template Id", "smallx.orderbookfeed.sbe.v2.2.templateid", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.total_volume_quantity = ProtoField.new("Total Volume Quantity", "smallx.orderbookfeed.sbe.v2.2.totalvolumequantity", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.total_volume_quantity_optional = ProtoField.new("Total Volume Quantity Optional", "smallx.orderbookfeed.sbe.v2.2.totalvolumequantityoptional", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_conditions = ProtoField.new("Trade Conditions", "smallx.orderbookfeed.sbe.v2.2.tradeconditions", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_id_trade_id = ProtoField.new("Trade Id Trade Id", "smallx.orderbookfeed.sbe.v2.2.tradeidtradeid", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_id_trade_id_optional = ProtoField.new("Trade Id Trade Id optional", "smallx.orderbookfeed.sbe.v2.2.tradeidtradeidoptional", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trades_group = ProtoField.new("Trades Group", "smallx.orderbookfeed.sbe.v2.2.tradesgroup", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trades_groups = ProtoField.new("Trades Groups", "smallx.orderbookfeed.sbe.v2.2.tradesgroups", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trading_session_date = ProtoField.new("Trading Session Date", "smallx.orderbookfeed.sbe.v2.2.tradingsessiondate", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.transact_time = ProtoField.new("Transact Time", "smallx.orderbookfeed.sbe.v2.2.transacttime", ftypes.INT64)
omi_smallx_orderbookfeed_sbe_v2_2.fields.transaction_begin = ProtoField.new("Transaction Begin", "smallx.orderbookfeed.sbe.v2.2.transactionbegin", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_smallx_orderbookfeed_sbe_v2_2.fields.transaction_end = ProtoField.new("Transaction End", "smallx.orderbookfeed.sbe.v2.2.transactionend", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_smallx_orderbookfeed_sbe_v2_2.fields.underlying_instrument_id = ProtoField.new("Underlying Instrument Id", "smallx.orderbookfeed.sbe.v2.2.underlyinginstrumentid", ftypes.INT32)
omi_smallx_orderbookfeed_sbe_v2_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "smallx.orderbookfeed.sbe.v2.2.underlyingsymbol", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.value = ProtoField.new("Value", "smallx.orderbookfeed.sbe.v2.2.value", ftypes.DOUBLE)
omi_smallx_orderbookfeed_sbe_v2_2.fields.version = ProtoField.new("Version", "smallx.orderbookfeed.sbe.v2.2.version", ftypes.UINT16)

-- SmallX OrderBookFeed Sbe 2.2 messages
omi_smallx_orderbookfeed_sbe_v2_2.fields.index_value_snapshot_message = ProtoField.new("Index Value Snapshot Message", "smallx.orderbookfeed.sbe.v2.2.indexvaluesnapshotmessage", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_trading_status_incremental_message = ProtoField.new("Instrument Trading Status Incremental Message", "smallx.orderbookfeed.sbe.v2.2.instrumenttradingstatusincrementalmessage", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.market_summary_incremental_message = ProtoField.new("Market Summary Incremental Message", "smallx.orderbookfeed.sbe.v2.2.marketsummaryincrementalmessage", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.market_summary_snapshot_message = ProtoField.new("Market Summary Snapshot Message", "smallx.orderbookfeed.sbe.v2.2.marketsummarysnapshotmessage", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_incremental_v_2_message = ProtoField.new("Multileg Definition Incremental V 2 Message", "smallx.orderbookfeed.sbe.v2.2.multilegdefinitionincrementalv2message", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_snapshot_v_2_message = ProtoField.new("Multileg Definition Snapshot V 2 Message", "smallx.orderbookfeed.sbe.v2.2.multilegdefinitionsnapshotv2message", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.order_book_incremental_message = ProtoField.new("Order Book Incremental Message", "smallx.orderbookfeed.sbe.v2.2.orderbookincrementalmessage", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.order_book_snapshot_message = ProtoField.new("Order Book Snapshot Message", "smallx.orderbookfeed.sbe.v2.2.orderbooksnapshotmessage", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.single_instrument_definition_incremental_v_2_message = ProtoField.new("Single Instrument Definition Incremental V 2 Message", "smallx.orderbookfeed.sbe.v2.2.singleinstrumentdefinitionincrementalv2message", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.single_instrument_definition_snapshot_v_2_message = ProtoField.new("Single Instrument Definition Snapshot V 2 Message", "smallx.orderbookfeed.sbe.v2.2.singleinstrumentdefinitionsnapshotv2message", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "smallx.orderbookfeed.sbe.v2.2.tradebustmessage", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_correct_message = ProtoField.new("Trade Correct Message", "smallx.orderbookfeed.sbe.v2.2.tradecorrectmessage", ftypes.STRING)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trades_incremental_message = ProtoField.new("Trades Incremental Message", "smallx.orderbookfeed.sbe.v2.2.tradesincrementalmessage", ftypes.STRING)

-- SmallX OrderBookFeed Sbe 2.2 generated fields
omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_incremental_v_2_message_leg_group_index = ProtoField.new("Multileg Definition Incremental V 2 Message Leg Group Index", "smallx.orderbookfeed.sbe.v2.2.multilegdefinitionincrementalv2messageleggroupindex", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_snapshot_v_2_message_leg_group_index = ProtoField.new("Multileg Definition Snapshot V 2 Message Leg Group Index", "smallx.orderbookfeed.sbe.v2.2.multilegdefinitionsnapshotv2messageleggroupindex", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.orders_group_index = ProtoField.new("Orders Group Index", "smallx.orderbookfeed.sbe.v2.2.ordersgroupindex", ftypes.UINT16)
omi_smallx_orderbookfeed_sbe_v2_2.fields.trades_group_index = ProtoField.new("Trades Group Index", "smallx.orderbookfeed.sbe.v2.2.tradesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- SmallX OrderBookFeed Sbe 2.2 Element Dissection Options
show.group_dimension = true
show.incremental_message_instructions = true
show.index_value_snapshot_message = true
show.instrument_trading_status_incremental_message = true
show.market_summary_incremental_message = true
show.market_summary_snapshot_message = true
show.message_header = true
show.multileg_definition_incremental_v_2_message = true
show.multileg_definition_incremental_v_2_message_leg_group = true
show.multileg_definition_incremental_v_2_message_leg_groups = true
show.multileg_definition_snapshot_v_2_message = true
show.multileg_definition_snapshot_v_2_message_leg_group = true
show.multileg_definition_snapshot_v_2_message_leg_groups = true
show.order_attributes = true
show.order_book_incremental_message = true
show.order_book_snapshot_message = true
show.orders_group = true
show.orders_groups = true
show.packet = true
show.packet_flags = true
show.packet_header = true
show.sbe_frame = true
show.single_instrument_definition_incremental_v_2_message = true
show.single_instrument_definition_snapshot_v_2_message = true
show.snapshot_message_instructions = true
show.trade_bust_message = true
show.trade_conditions = true
show.trade_correct_message = true
show.trades_group = true
show.trades_groups = true
show.trades_incremental_message = true
show.payload = false

-- Register SmallX OrderBookFeed Sbe 2.2 Show Options
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_group_dimension = Pref.bool("Show Group Dimension", show.group_dimension, "Parse and add Group Dimension to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_incremental_message_instructions = Pref.bool("Show Incremental Message Instructions", show.incremental_message_instructions, "Parse and add Incremental Message Instructions to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_index_value_snapshot_message = Pref.bool("Show Index Value Snapshot Message", show.index_value_snapshot_message, "Parse and add Index Value Snapshot Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_instrument_trading_status_incremental_message = Pref.bool("Show Instrument Trading Status Incremental Message", show.instrument_trading_status_incremental_message, "Parse and add Instrument Trading Status Incremental Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_market_summary_incremental_message = Pref.bool("Show Market Summary Incremental Message", show.market_summary_incremental_message, "Parse and add Market Summary Incremental Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_market_summary_snapshot_message = Pref.bool("Show Market Summary Snapshot Message", show.market_summary_snapshot_message, "Parse and add Market Summary Snapshot Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_incremental_v_2_message = Pref.bool("Show Multileg Definition Incremental V 2 Message", show.multileg_definition_incremental_v_2_message, "Parse and add Multileg Definition Incremental V 2 Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_incremental_v_2_message_leg_group = Pref.bool("Show Multileg Definition Incremental V 2 Message Leg Group", show.multileg_definition_incremental_v_2_message_leg_group, "Parse and add Multileg Definition Incremental V 2 Message Leg Group to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_incremental_v_2_message_leg_groups = Pref.bool("Show Multileg Definition Incremental V 2 Message Leg Groups", show.multileg_definition_incremental_v_2_message_leg_groups, "Parse and add Multileg Definition Incremental V 2 Message Leg Groups to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_snapshot_v_2_message = Pref.bool("Show Multileg Definition Snapshot V 2 Message", show.multileg_definition_snapshot_v_2_message, "Parse and add Multileg Definition Snapshot V 2 Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_snapshot_v_2_message_leg_group = Pref.bool("Show Multileg Definition Snapshot V 2 Message Leg Group", show.multileg_definition_snapshot_v_2_message_leg_group, "Parse and add Multileg Definition Snapshot V 2 Message Leg Group to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_snapshot_v_2_message_leg_groups = Pref.bool("Show Multileg Definition Snapshot V 2 Message Leg Groups", show.multileg_definition_snapshot_v_2_message_leg_groups, "Parse and add Multileg Definition Snapshot V 2 Message Leg Groups to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_order_attributes = Pref.bool("Show Order Attributes", show.order_attributes, "Parse and add Order Attributes to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_order_book_incremental_message = Pref.bool("Show Order Book Incremental Message", show.order_book_incremental_message, "Parse and add Order Book Incremental Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_order_book_snapshot_message = Pref.bool("Show Order Book Snapshot Message", show.order_book_snapshot_message, "Parse and add Order Book Snapshot Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_orders_group = Pref.bool("Show Orders Group", show.orders_group, "Parse and add Orders Group to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_orders_groups = Pref.bool("Show Orders Groups", show.orders_groups, "Parse and add Orders Groups to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_packet_flags = Pref.bool("Show Packet Flags", show.packet_flags, "Parse and add Packet Flags to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_sbe_frame = Pref.bool("Show Sbe Frame", show.sbe_frame, "Parse and add Sbe Frame to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_single_instrument_definition_incremental_v_2_message = Pref.bool("Show Single Instrument Definition Incremental V 2 Message", show.single_instrument_definition_incremental_v_2_message, "Parse and add Single Instrument Definition Incremental V 2 Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_single_instrument_definition_snapshot_v_2_message = Pref.bool("Show Single Instrument Definition Snapshot V 2 Message", show.single_instrument_definition_snapshot_v_2_message, "Parse and add Single Instrument Definition Snapshot V 2 Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_snapshot_message_instructions = Pref.bool("Show Snapshot Message Instructions", show.snapshot_message_instructions, "Parse and add Snapshot Message Instructions to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trade_bust_message = Pref.bool("Show Trade Bust Message", show.trade_bust_message, "Parse and add Trade Bust Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trade_conditions = Pref.bool("Show Trade Conditions", show.trade_conditions, "Parse and add Trade Conditions to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trade_correct_message = Pref.bool("Show Trade Correct Message", show.trade_correct_message, "Parse and add Trade Correct Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trades_group = Pref.bool("Show Trades Group", show.trades_group, "Parse and add Trades Group to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trades_groups = Pref.bool("Show Trades Groups", show.trades_groups, "Parse and add Trades Groups to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trades_incremental_message = Pref.bool("Show Trades Incremental Message", show.trades_incremental_message, "Parse and add Trades Incremental Message to protocol tree")
omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_smallx_orderbookfeed_sbe_v2_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.group_dimension ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_group_dimension then
    show.group_dimension = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_group_dimension
    changed = true
  end
  if show.incremental_message_instructions ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_incremental_message_instructions then
    show.incremental_message_instructions = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_incremental_message_instructions
    changed = true
  end
  if show.index_value_snapshot_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_index_value_snapshot_message then
    show.index_value_snapshot_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_index_value_snapshot_message
    changed = true
  end
  if show.instrument_trading_status_incremental_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_instrument_trading_status_incremental_message then
    show.instrument_trading_status_incremental_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_instrument_trading_status_incremental_message
    changed = true
  end
  if show.market_summary_incremental_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_market_summary_incremental_message then
    show.market_summary_incremental_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_market_summary_incremental_message
    changed = true
  end
  if show.market_summary_snapshot_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_market_summary_snapshot_message then
    show.market_summary_snapshot_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_market_summary_snapshot_message
    changed = true
  end
  if show.message_header ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_message_header then
    show.message_header = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_message_header
    changed = true
  end
  if show.multileg_definition_incremental_v_2_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_incremental_v_2_message then
    show.multileg_definition_incremental_v_2_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_incremental_v_2_message
    changed = true
  end
  if show.multileg_definition_incremental_v_2_message_leg_group ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_incremental_v_2_message_leg_group then
    show.multileg_definition_incremental_v_2_message_leg_group = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_incremental_v_2_message_leg_group
    changed = true
  end
  if show.multileg_definition_incremental_v_2_message_leg_groups ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_incremental_v_2_message_leg_groups then
    show.multileg_definition_incremental_v_2_message_leg_groups = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_incremental_v_2_message_leg_groups
    changed = true
  end
  if show.multileg_definition_snapshot_v_2_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_snapshot_v_2_message then
    show.multileg_definition_snapshot_v_2_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_snapshot_v_2_message
    changed = true
  end
  if show.multileg_definition_snapshot_v_2_message_leg_group ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_snapshot_v_2_message_leg_group then
    show.multileg_definition_snapshot_v_2_message_leg_group = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_snapshot_v_2_message_leg_group
    changed = true
  end
  if show.multileg_definition_snapshot_v_2_message_leg_groups ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_snapshot_v_2_message_leg_groups then
    show.multileg_definition_snapshot_v_2_message_leg_groups = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_multileg_definition_snapshot_v_2_message_leg_groups
    changed = true
  end
  if show.order_attributes ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_order_attributes then
    show.order_attributes = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_order_attributes
    changed = true
  end
  if show.order_book_incremental_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_order_book_incremental_message then
    show.order_book_incremental_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_order_book_incremental_message
    changed = true
  end
  if show.order_book_snapshot_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_order_book_snapshot_message then
    show.order_book_snapshot_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_order_book_snapshot_message
    changed = true
  end
  if show.orders_group ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_orders_group then
    show.orders_group = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_orders_group
    changed = true
  end
  if show.orders_groups ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_orders_groups then
    show.orders_groups = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_orders_groups
    changed = true
  end
  if show.packet ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_packet then
    show.packet = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_packet
    changed = true
  end
  if show.packet_flags ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_packet_flags then
    show.packet_flags = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_packet_flags
    changed = true
  end
  if show.packet_header ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_packet_header then
    show.packet_header = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_packet_header
    changed = true
  end
  if show.sbe_frame ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_sbe_frame then
    show.sbe_frame = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_sbe_frame
    changed = true
  end
  if show.single_instrument_definition_incremental_v_2_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_single_instrument_definition_incremental_v_2_message then
    show.single_instrument_definition_incremental_v_2_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_single_instrument_definition_incremental_v_2_message
    changed = true
  end
  if show.single_instrument_definition_snapshot_v_2_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_single_instrument_definition_snapshot_v_2_message then
    show.single_instrument_definition_snapshot_v_2_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_single_instrument_definition_snapshot_v_2_message
    changed = true
  end
  if show.snapshot_message_instructions ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_snapshot_message_instructions then
    show.snapshot_message_instructions = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_snapshot_message_instructions
    changed = true
  end
  if show.trade_bust_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trade_bust_message then
    show.trade_bust_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trade_bust_message
    changed = true
  end
  if show.trade_conditions ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trade_conditions then
    show.trade_conditions = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trade_conditions
    changed = true
  end
  if show.trade_correct_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trade_correct_message then
    show.trade_correct_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trade_correct_message
    changed = true
  end
  if show.trades_group ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trades_group then
    show.trades_group = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trades_group
    changed = true
  end
  if show.trades_groups ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trades_groups then
    show.trades_groups = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trades_groups
    changed = true
  end
  if show.trades_incremental_message ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trades_incremental_message then
    show.trades_incremental_message = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_trades_incremental_message
    changed = true
  end
  if show.payload ~= omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_payload then
    show.payload = omi_smallx_orderbookfeed_sbe_v2_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect SmallX OrderBookFeed Sbe 2.2
-----------------------------------------------------------------------

-- Size: Leg Side
smallx_orderbookfeed_sbe_v2_2_size_of.leg_side = 1

-- Display: Leg Side
smallx_orderbookfeed_sbe_v2_2_display.leg_side = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Leg Side: No Value"
  end

  if value == "B" then
    return "Leg Side: Buy (B)"
  end
  if value == "S" then
    return "Leg Side: Sell (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
smallx_orderbookfeed_sbe_v2_2_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.leg_side
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Quantity
smallx_orderbookfeed_sbe_v2_2_size_of.leg_ratio_quantity = 8

-- Display: Leg Ratio Quantity
smallx_orderbookfeed_sbe_v2_2_display.leg_ratio_quantity = function(value)
  return "Leg Ratio Quantity: "..value
end

-- Translate: Leg Ratio Quantity
translate.leg_ratio_quantity = function(raw)
  return raw:tonumber()
end

-- Dissect: Leg Ratio Quantity
smallx_orderbookfeed_sbe_v2_2_dissect.leg_ratio_quantity = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.leg_ratio_quantity
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.leg_ratio_quantity(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.leg_ratio_quantity(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_ratio_quantity, range, value, display)

  return offset + length, value
end

-- Size: Leg Product
smallx_orderbookfeed_sbe_v2_2_size_of.leg_product = 8

-- Display: Leg Product
smallx_orderbookfeed_sbe_v2_2_display.leg_product = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Product: No Value"
  end

  return "Leg Product: "..value
end

-- Dissect: Leg Product
smallx_orderbookfeed_sbe_v2_2_dissect.leg_product = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.leg_product
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.leg_product(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_product, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol
smallx_orderbookfeed_sbe_v2_2_size_of.leg_symbol = 25

-- Display: Leg Symbol
smallx_orderbookfeed_sbe_v2_2_display.leg_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
smallx_orderbookfeed_sbe_v2_2_dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.leg_symbol
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg Instrument Id
smallx_orderbookfeed_sbe_v2_2_size_of.leg_instrument_id = 4

-- Display: Leg Instrument Id
smallx_orderbookfeed_sbe_v2_2_display.leg_instrument_id = function(value)
  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
smallx_orderbookfeed_sbe_v2_2_dissect.leg_instrument_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.leg_instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_orderbookfeed_sbe_v2_2_display.leg_instrument_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Multileg Definition Snapshot V 2 Message Leg Group
smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_snapshot_v_2_message_leg_group = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_symbol

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_product

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_ratio_quantity

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_side

  return index
end

-- Display: Multileg Definition Snapshot V 2 Message Leg Group
smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_snapshot_v_2_message_leg_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multileg Definition Snapshot V 2 Message Leg Group
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_leg_group_fields = function(buffer, offset, packet, parent, multileg_definition_snapshot_v_2_message_leg_group_index)
  local index = offset

  -- Implicit Multileg Definition Snapshot V 2 Message Leg Group Index
  if multileg_definition_snapshot_v_2_message_leg_group_index ~= nil then
    local iteration = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_snapshot_v_2_message_leg_group_index, multileg_definition_snapshot_v_2_message_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.leg_instrument_id(buffer, index, packet, parent)

  -- Leg Symbol: 25 Byte Ascii String
  index, leg_symbol = smallx_orderbookfeed_sbe_v2_2_dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Product: 8 Byte Ascii String
  index, leg_product = smallx_orderbookfeed_sbe_v2_2_dissect.leg_product(buffer, index, packet, parent)

  -- Leg Ratio Quantity: 8 Byte Signed Fixed Width Integer
  index, leg_ratio_quantity = smallx_orderbookfeed_sbe_v2_2_dissect.leg_ratio_quantity(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 2 values
  index, leg_side = smallx_orderbookfeed_sbe_v2_2_dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Multileg Definition Snapshot V 2 Message Leg Group
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_leg_group = function(buffer, offset, packet, parent, multileg_definition_snapshot_v_2_message_leg_group_index)
  if show.multileg_definition_snapshot_v_2_message_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_snapshot_v_2_message_leg_group, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_leg_group_fields(buffer, offset, packet, parent, multileg_definition_snapshot_v_2_message_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_snapshot_v_2_message_leg_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_leg_group_fields(buffer, offset, packet, parent, multileg_definition_snapshot_v_2_message_leg_group_index)
  end
end

-- Size: Num In Group
smallx_orderbookfeed_sbe_v2_2_size_of.num_in_group = 1

-- Display: Num In Group
smallx_orderbookfeed_sbe_v2_2_display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
smallx_orderbookfeed_sbe_v2_2_dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length
smallx_orderbookfeed_sbe_v2_2_size_of.block_length = 2

-- Display: Block Length
smallx_orderbookfeed_sbe_v2_2_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
smallx_orderbookfeed_sbe_v2_2_dissect.block_length = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.block_length(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Dimension
smallx_orderbookfeed_sbe_v2_2_size_of.group_dimension = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.block_length

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.num_in_group

  return index
end

-- Display: Group Dimension
smallx_orderbookfeed_sbe_v2_2_display.group_dimension = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Dimension
smallx_orderbookfeed_sbe_v2_2_dissect.group_dimension_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = smallx_orderbookfeed_sbe_v2_2_dissect.block_length(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = smallx_orderbookfeed_sbe_v2_2_dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Dimension
smallx_orderbookfeed_sbe_v2_2_dissect.group_dimension = function(buffer, offset, packet, parent)
  if show.group_dimension then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.group_dimension, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.group_dimension_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.group_dimension(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.group_dimension_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Multileg Definition Snapshot V 2 Message Leg Groups
smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_snapshot_v_2_message_leg_groups = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.group_dimension(buffer, offset + index)

  -- Calculate field size from count
  local multileg_definition_snapshot_v_2_message_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + multileg_definition_snapshot_v_2_message_leg_group_count * 46

  return index
end

-- Display: Multileg Definition Snapshot V 2 Message Leg Groups
smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_snapshot_v_2_message_leg_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multileg Definition Snapshot V 2 Message Leg Groups
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Dimension: Struct of 2 fields
  index, group_dimension = smallx_orderbookfeed_sbe_v2_2_dissect.group_dimension(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Multileg Definition Snapshot V 2 Message Leg Group
  for multileg_definition_snapshot_v_2_message_leg_group_index = 1, num_in_group do
    index, multileg_definition_snapshot_v_2_message_leg_group = smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_leg_group(buffer, index, packet, parent, multileg_definition_snapshot_v_2_message_leg_group_index)
  end

  return index
end

-- Dissect: Multileg Definition Snapshot V 2 Message Leg Groups
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.multileg_definition_snapshot_v_2_message_leg_groups then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_snapshot_v_2_message_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_snapshot_v_2_message_leg_groups(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_snapshot_v_2_message_leg_groups, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Strategy Type
smallx_orderbookfeed_sbe_v2_2_size_of.strategy_type = 1

-- Display: Strategy Type
smallx_orderbookfeed_sbe_v2_2_display.strategy_type = function(value)
  if value == 0 then
    return "Strategy Type: Custom (0)"
  end
  if value == 1 then
    return "Strategy Type: Futures Calendar (1)"
  end
  if value == 2 then
    return "Strategy Type: Futures Inter Commodity (2)"
  end
  if value == 3 then
    return "Strategy Type: Covered (3)"
  end
  if value == 4 then
    return "Strategy Type: Option Butterfly (4)"
  end
  if value == 5 then
    return "Strategy Type: Option Vertical (5)"
  end
  if value == 6 then
    return "Strategy Type: Option Strangle (6)"
  end
  if value == 7 then
    return "Strategy Type: Option Straddle (7)"
  end
  if value == 8 then
    return "Strategy Type: Option Diagonal (8)"
  end
  if value == 9 then
    return "Strategy Type: Option Calendar (9)"
  end
  if value == 10 then
    return "Strategy Type: Option Iron Condor (10)"
  end
  if value == 11 then
    return "Strategy Type: Protective Put (11)"
  end

  return "Strategy Type: Unknown("..value..")"
end

-- Dissect: Strategy Type
smallx_orderbookfeed_sbe_v2_2_dissect.strategy_type = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.strategy_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.strategy_type(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Size: Price Multiplier
smallx_orderbookfeed_sbe_v2_2_size_of.price_multiplier = 8

-- Display: Price Multiplier
smallx_orderbookfeed_sbe_v2_2_display.price_multiplier = function(value)
  return "Price Multiplier: "..value
end

-- Translate: Price Multiplier
translate.price_multiplier = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Price Multiplier
smallx_orderbookfeed_sbe_v2_2_dissect.price_multiplier = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.price_multiplier
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_multiplier(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.price_multiplier(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.price_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Price Increment
smallx_orderbookfeed_sbe_v2_2_size_of.price_increment = 8

-- Display: Price Increment
smallx_orderbookfeed_sbe_v2_2_display.price_increment = function(value)
  return "Price Increment: "..value
end

-- Translate: Price Increment
translate.price_increment = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Price Increment
smallx_orderbookfeed_sbe_v2_2_dissect.price_increment = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.price_increment
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_increment(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.price_increment(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Size: Currency
smallx_orderbookfeed_sbe_v2_2_size_of.currency = 3

-- Display: Currency
smallx_orderbookfeed_sbe_v2_2_display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
smallx_orderbookfeed_sbe_v2_2_dissect.currency = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.currency
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.currency(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Cfi Code
smallx_orderbookfeed_sbe_v2_2_size_of.cfi_code = 6

-- Display: Cfi Code
smallx_orderbookfeed_sbe_v2_2_display.cfi_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
smallx_orderbookfeed_sbe_v2_2_dissect.cfi_code = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.cfi_code
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.cfi_code(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Size: Expiration Date
smallx_orderbookfeed_sbe_v2_2_size_of.expiration_date = 2

-- Display: Expiration Date
smallx_orderbookfeed_sbe_v2_2_display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
smallx_orderbookfeed_sbe_v2_2_dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.expiration_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Last Trading Session Date
smallx_orderbookfeed_sbe_v2_2_size_of.last_trading_session_date = 2

-- Display: Last Trading Session Date
smallx_orderbookfeed_sbe_v2_2_display.last_trading_session_date = function(value)
  return "Last Trading Session Date: "..value
end

-- Dissect: Last Trading Session Date
smallx_orderbookfeed_sbe_v2_2_dissect.last_trading_session_date = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.last_trading_session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.last_trading_session_date(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trading_session_date, range, value, display)

  return offset + length, value
end

-- Size: First Trading Session Date
smallx_orderbookfeed_sbe_v2_2_size_of.first_trading_session_date = 2

-- Display: First Trading Session Date
smallx_orderbookfeed_sbe_v2_2_display.first_trading_session_date = function(value)
  return "First Trading Session Date: "..value
end

-- Dissect: First Trading Session Date
smallx_orderbookfeed_sbe_v2_2_dissect.first_trading_session_date = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.first_trading_session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.first_trading_session_date(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.first_trading_session_date, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
smallx_orderbookfeed_sbe_v2_2_size_of.maturity_date = 2

-- Display: Maturity Date
smallx_orderbookfeed_sbe_v2_2_display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
smallx_orderbookfeed_sbe_v2_2_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type
smallx_orderbookfeed_sbe_v2_2_size_of.instrument_type = 1

-- Display: Instrument Type
smallx_orderbookfeed_sbe_v2_2_display.instrument_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Instrument Type: No Value"
  end

  if value == "F" then
    return "Instrument Type: Futures (F)"
  end
  if value == "O" then
    return "Instrument Type: Option (O)"
  end
  if value == "M" then
    return "Instrument Type: Mleg (M)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
smallx_orderbookfeed_sbe_v2_2_dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.instrument_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Description
smallx_orderbookfeed_sbe_v2_2_size_of.description = 120

-- Display: Description
smallx_orderbookfeed_sbe_v2_2_display.description = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Description: No Value"
  end

  return "Description: "..value
end

-- Dissect: Description
smallx_orderbookfeed_sbe_v2_2_dissect.description = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.description
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.description(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.description, range, value, display)

  return offset + length, value
end

-- Size: Spread Symbol
smallx_orderbookfeed_sbe_v2_2_size_of.spread_symbol = 120

-- Display: Spread Symbol
smallx_orderbookfeed_sbe_v2_2_display.spread_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Spread Symbol: No Value"
  end

  return "Spread Symbol: "..value
end

-- Dissect: Spread Symbol
smallx_orderbookfeed_sbe_v2_2_dissect.spread_symbol = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.spread_symbol
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.spread_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.spread_symbol, range, value, display)

  return offset + length, value
end

-- Size: Last Incremental Message Seq
smallx_orderbookfeed_sbe_v2_2_size_of.last_incremental_message_seq = 8

-- Display: Last Incremental Message Seq
smallx_orderbookfeed_sbe_v2_2_display.last_incremental_message_seq = function(value)
  return "Last Incremental Message Seq: "..value
end

-- Dissect: Last Incremental Message Seq
smallx_orderbookfeed_sbe_v2_2_dissect.last_incremental_message_seq = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.last_incremental_message_seq
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.last_incremental_message_seq(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.last_incremental_message_seq, range, value, display)

  return offset + length, value
end

-- Size: Snapshot Instruments Count
smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_instruments_count = 4

-- Display: Snapshot Instruments Count
smallx_orderbookfeed_sbe_v2_2_display.snapshot_instruments_count = function(value)
  return "Snapshot Instruments Count: "..value
end

-- Dissect: Snapshot Instruments Count
smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_instruments_count = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_instruments_count
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_orderbookfeed_sbe_v2_2_display.snapshot_instruments_count(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.snapshot_instruments_count, range, value, display)

  return offset + length, value
end

-- Size: Snapshot Message Instructions
smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_message_instructions = 1

-- Display: Snapshot Message Instructions
smallx_orderbookfeed_sbe_v2_2_display.snapshot_message_instructions = function(buffer, packet, parent)
  local display = ""

  -- Is Snapshot End flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Snapshot End|"
  end
  -- Is Snapshot Begin flag set?
  if buffer:bitfield(8) > 0 then
    display = display.."Snapshot Begin|"
  end
  -- Is Book End flag set?
  if buffer:bitfield(9) > 0 then
    display = display.."Book End|"
  end
  -- Is Book Begin flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Book Begin|"
  end
  -- Is Instrument End flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Instrument End|"
  end
  -- Is Instrument Begin flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Instrument Begin|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Snapshot Message Instructions
smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_message_instructions_bits = function(buffer, offset, packet, parent)

  -- Reserved 7: 7 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_7, buffer(offset, 1))

  -- Snapshot End: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.snapshot_end, buffer(offset, 1))

  -- Snapshot Begin: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.snapshot_begin, buffer(offset, 1))

  -- Book End: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.book_end, buffer(offset, 1))

  -- Book Begin: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.book_begin, buffer(offset, 1))

  -- Instrument End: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_end, buffer(offset, 1))

  -- Instrument Begin: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_begin, buffer(offset, 1))

  -- Reserved 2: 2 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_2, buffer(offset, 1))
end

-- Dissect: Snapshot Message Instructions
smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_message_instructions = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = smallx_orderbookfeed_sbe_v2_2_display.snapshot_message_instructions(range, packet, parent)
  local element = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.snapshot_message_instructions, range, display)

  if show.snapshot_message_instructions then
    smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_message_instructions_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Instrument Trading Status
smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status = 1

-- Display: Instrument Trading Status
smallx_orderbookfeed_sbe_v2_2_display.instrument_trading_status = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Instrument Trading Status: No Value"
  end

  if value == "C" then
    return "Instrument Trading Status: Closed (C)"
  end
  if value == "P" then
    return "Instrument Trading Status: Pre Open (P)"
  end
  if value == "N" then
    return "Instrument Trading Status: Pre Open Nc (N)"
  end
  if value == "O" then
    return "Instrument Trading Status: Open (O)"
  end
  if value == "U" then
    return "Instrument Trading Status: Paused (U)"
  end
  if value == "H" then
    return "Instrument Trading Status: Halted (H)"
  end

  return "Instrument Trading Status: Unknown("..value..")"
end

-- Dissect: Instrument Trading Status
smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.instrument_trading_status(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Date
smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date = 2

-- Display: Trading Session Date
smallx_orderbookfeed_sbe_v2_2_display.trading_session_date = function(value)
  return "Trading Session Date: "..value
end

-- Dissect: Trading Session Date
smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.trading_session_date(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trading_session_date, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
smallx_orderbookfeed_sbe_v2_2_size_of.transact_time = 8

-- Display: Transact Time
smallx_orderbookfeed_sbe_v2_2_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
smallx_orderbookfeed_sbe_v2_2_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Instrument Message No
smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no = 8

-- Display: Instrument Message No
smallx_orderbookfeed_sbe_v2_2_display.instrument_message_no = function(value)
  return "Instrument Message No: "..value
end

-- Dissect: Instrument Message No
smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.instrument_message_no(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_message_no, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id = 4

-- Display: Instrument Id
smallx_orderbookfeed_sbe_v2_2_display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_orderbookfeed_sbe_v2_2_display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Multileg Definition Snapshot V 2 Message
smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_snapshot_v_2_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_instruments_count

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_incremental_message_seq

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.spread_symbol

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.description

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_type

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.maturity_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.first_trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.expiration_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.cfi_code

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.currency

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_increment

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_multiplier

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.strategy_type

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_snapshot_v_2_message_leg_groups(buffer, offset + index)

  return index
end

-- Display: Multileg Definition Snapshot V 2 Message
smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_snapshot_v_2_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multileg Definition Snapshot V 2 Message
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Snapshot Message Instructions: Struct of 8 fields
  index, snapshot_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_message_instructions(buffer, index, packet, parent)

  -- Snapshot Instruments Count: 4 Byte Signed Fixed Width Integer
  index, snapshot_instruments_count = smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_instruments_count(buffer, index, packet, parent)

  -- Last Incremental Message Seq: 8 Byte Signed Fixed Width Integer
  index, last_incremental_message_seq = smallx_orderbookfeed_sbe_v2_2_dissect.last_incremental_message_seq(buffer, index, packet, parent)

  -- Spread Symbol: 120 Byte Ascii String
  index, spread_symbol = smallx_orderbookfeed_sbe_v2_2_dissect.spread_symbol(buffer, index, packet, parent)

  -- Description: 120 Byte Ascii String
  index, description = smallx_orderbookfeed_sbe_v2_2_dissect.description(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 3 values
  index, instrument_type = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_type(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index, maturity_date = smallx_orderbookfeed_sbe_v2_2_dissect.maturity_date(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Expiration Date: 2 Byte Unsigned Fixed Width Integer
  index, expiration_date = smallx_orderbookfeed_sbe_v2_2_dissect.expiration_date(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = smallx_orderbookfeed_sbe_v2_2_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = smallx_orderbookfeed_sbe_v2_2_dissect.currency(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = smallx_orderbookfeed_sbe_v2_2_dissect.price_increment(buffer, index, packet, parent)

  -- Price Multiplier: 8 Byte Signed Fixed Width Integer
  index, price_multiplier = smallx_orderbookfeed_sbe_v2_2_dissect.price_multiplier(buffer, index, packet, parent)

  -- Strategy Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, strategy_type = smallx_orderbookfeed_sbe_v2_2_dissect.strategy_type(buffer, index, packet, parent)

  -- Multileg Definition Snapshot V 2 Message Leg Groups: Struct of 2 fields
  index, multileg_definition_snapshot_v_2_message_leg_groups = smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_leg_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Multileg Definition Snapshot V 2 Message
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.multileg_definition_snapshot_v_2_message then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_snapshot_v_2_message(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_snapshot_v_2_message(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_snapshot_v_2_message, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message_fields(buffer, offset, packet, parent)
end

-- Size: Delivery
smallx_orderbookfeed_sbe_v2_2_size_of.delivery = 1

-- Display: Delivery
smallx_orderbookfeed_sbe_v2_2_display.delivery = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Delivery: No Value"
  end

  if value == "C" then
    return "Delivery: Cash (C)"
  end
  if value == "P" then
    return "Delivery: Physical (P)"
  end

  return "Delivery: Unknown("..value..")"
end

-- Dissect: Delivery
smallx_orderbookfeed_sbe_v2_2_dissect.delivery = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.delivery
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.delivery(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.delivery, range, value, display)

  return offset + length, value
end

-- Size: Exercise Style
smallx_orderbookfeed_sbe_v2_2_size_of.exercise_style = 1

-- Display: Exercise Style
smallx_orderbookfeed_sbe_v2_2_display.exercise_style = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exercise Style: No Value"
  end

  if value == "E" then
    return "Exercise Style: European (E)"
  end
  if value == "A" then
    return "Exercise Style: American (A)"
  end
  if value == "N" then
    return "Exercise Style: Not Option (N)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
smallx_orderbookfeed_sbe_v2_2_dissect.exercise_style = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.exercise_style
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.exercise_style(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Size: Expiration Style
smallx_orderbookfeed_sbe_v2_2_size_of.expiration_style = 1

-- Display: Expiration Style
smallx_orderbookfeed_sbe_v2_2_display.expiration_style = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Expiration Style: No Value"
  end

  if value == "S" then
    return "Expiration Style: Standard (S)"
  end
  if value == "D" then
    return "Expiration Style: Daily (D)"
  end
  if value == "W" then
    return "Expiration Style: Weekly (W)"
  end
  if value == "Q" then
    return "Expiration Style: Quaterly (Q)"
  end

  return "Expiration Style: Unknown("..value..")"
end

-- Dissect: Expiration Style
smallx_orderbookfeed_sbe_v2_2_dissect.expiration_style = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.expiration_style
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.expiration_style(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.expiration_style, range, value, display)

  return offset + length, value
end

-- Size: Shares Per Contract
smallx_orderbookfeed_sbe_v2_2_size_of.shares_per_contract = 8

-- Display: Shares Per Contract
smallx_orderbookfeed_sbe_v2_2_display.shares_per_contract = function(value)
  return "Shares Per Contract: "..value
end

-- Translate: Shares Per Contract
translate.shares_per_contract = function(raw)
  return raw:tonumber()
end

-- Dissect: Shares Per Contract
smallx_orderbookfeed_sbe_v2_2_dissect.shares_per_contract = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.shares_per_contract
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.shares_per_contract(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.shares_per_contract(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.shares_per_contract, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
smallx_orderbookfeed_sbe_v2_2_size_of.strike_price = 8

-- Display: Strike Price
smallx_orderbookfeed_sbe_v2_2_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Strike Price
smallx_orderbookfeed_sbe_v2_2_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.strike_price(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Put Or Call
smallx_orderbookfeed_sbe_v2_2_size_of.put_or_call = 1

-- Display: Put Or Call
smallx_orderbookfeed_sbe_v2_2_display.put_or_call = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Put Or Call: No Value"
  end

  if value == "P" then
    return "Put Or Call: Put (P)"
  end
  if value == "C" then
    return "Put Or Call: Call (C)"
  end
  if value == "N" then
    return "Put Or Call: Not Option (N)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
smallx_orderbookfeed_sbe_v2_2_dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.put_or_call
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Underlying Instrument Id
smallx_orderbookfeed_sbe_v2_2_size_of.underlying_instrument_id = 4

-- Display: Underlying Instrument Id
smallx_orderbookfeed_sbe_v2_2_display.underlying_instrument_id = function(value)
  return "Underlying Instrument Id: "..value
end

-- Dissect: Underlying Instrument Id
smallx_orderbookfeed_sbe_v2_2_dissect.underlying_instrument_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.underlying_instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_orderbookfeed_sbe_v2_2_display.underlying_instrument_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.underlying_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
smallx_orderbookfeed_sbe_v2_2_size_of.underlying_symbol = 25

-- Display: Underlying Symbol
smallx_orderbookfeed_sbe_v2_2_display.underlying_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
smallx_orderbookfeed_sbe_v2_2_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.underlying_symbol
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Product
smallx_orderbookfeed_sbe_v2_2_size_of.product = 8

-- Display: Product
smallx_orderbookfeed_sbe_v2_2_display.product = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product: No Value"
  end

  return "Product: "..value
end

-- Dissect: Product
smallx_orderbookfeed_sbe_v2_2_dissect.product = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.product
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.product(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.product, range, value, display)

  return offset + length, value
end

-- Size: Symbol
smallx_orderbookfeed_sbe_v2_2_size_of.symbol = 25

-- Display: Symbol
smallx_orderbookfeed_sbe_v2_2_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
smallx_orderbookfeed_sbe_v2_2_dissect.symbol = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.symbol
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.symbol(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Instrument Definition Snapshot V 2 Message
smallx_orderbookfeed_sbe_v2_2_size_of.single_instrument_definition_snapshot_v_2_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_instruments_count

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_incremental_message_seq

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.symbol

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.product

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.description

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_type

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.maturity_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.first_trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.expiration_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.cfi_code

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.currency

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_increment

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_multiplier

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.underlying_symbol

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.underlying_instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.put_or_call

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.strike_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.shares_per_contract

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.expiration_style

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.exercise_style

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.delivery

  return index
end

-- Display: Single Instrument Definition Snapshot V 2 Message
smallx_orderbookfeed_sbe_v2_2_display.single_instrument_definition_snapshot_v_2_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Instrument Definition Snapshot V 2 Message
smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_snapshot_v_2_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Snapshot Message Instructions: Struct of 8 fields
  index, snapshot_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_message_instructions(buffer, index, packet, parent)

  -- Snapshot Instruments Count: 4 Byte Signed Fixed Width Integer
  index, snapshot_instruments_count = smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_instruments_count(buffer, index, packet, parent)

  -- Last Incremental Message Seq: 8 Byte Signed Fixed Width Integer
  index, last_incremental_message_seq = smallx_orderbookfeed_sbe_v2_2_dissect.last_incremental_message_seq(buffer, index, packet, parent)

  -- Symbol: 25 Byte Ascii String
  index, symbol = smallx_orderbookfeed_sbe_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Product: 8 Byte Ascii String
  index, product = smallx_orderbookfeed_sbe_v2_2_dissect.product(buffer, index, packet, parent)

  -- Description: 120 Byte Ascii String
  index, description = smallx_orderbookfeed_sbe_v2_2_dissect.description(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 3 values
  index, instrument_type = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_type(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index, maturity_date = smallx_orderbookfeed_sbe_v2_2_dissect.maturity_date(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Expiration Date: 2 Byte Unsigned Fixed Width Integer
  index, expiration_date = smallx_orderbookfeed_sbe_v2_2_dissect.expiration_date(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = smallx_orderbookfeed_sbe_v2_2_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = smallx_orderbookfeed_sbe_v2_2_dissect.currency(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = smallx_orderbookfeed_sbe_v2_2_dissect.price_increment(buffer, index, packet, parent)

  -- Price Multiplier: 8 Byte Signed Fixed Width Integer
  index, price_multiplier = smallx_orderbookfeed_sbe_v2_2_dissect.price_multiplier(buffer, index, packet, parent)

  -- Underlying Symbol: 25 Byte Ascii String
  index, underlying_symbol = smallx_orderbookfeed_sbe_v2_2_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Underlying Instrument Id: 4 Byte Signed Fixed Width Integer
  index, underlying_instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.underlying_instrument_id(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Ascii String Enum with 3 values
  index, put_or_call = smallx_orderbookfeed_sbe_v2_2_dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = smallx_orderbookfeed_sbe_v2_2_dissect.strike_price(buffer, index, packet, parent)

  -- Shares Per Contract: 8 Byte Signed Fixed Width Integer
  index, shares_per_contract = smallx_orderbookfeed_sbe_v2_2_dissect.shares_per_contract(buffer, index, packet, parent)

  -- Expiration Style: 1 Byte Ascii String Enum with 4 values
  index, expiration_style = smallx_orderbookfeed_sbe_v2_2_dissect.expiration_style(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Ascii String Enum with 3 values
  index, exercise_style = smallx_orderbookfeed_sbe_v2_2_dissect.exercise_style(buffer, index, packet, parent)

  -- Delivery: 1 Byte Ascii String Enum with 2 values
  index, delivery = smallx_orderbookfeed_sbe_v2_2_dissect.delivery(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Instrument Definition Snapshot V 2 Message
smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_snapshot_v_2_message = function(buffer, offset, packet, parent)
  if show.single_instrument_definition_snapshot_v_2_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.single_instrument_definition_snapshot_v_2_message, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_snapshot_v_2_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.single_instrument_definition_snapshot_v_2_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_snapshot_v_2_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Multileg Definition Incremental V 2 Message Leg Group
smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_incremental_v_2_message_leg_group = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_symbol

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_product

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_ratio_quantity

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.leg_side

  return index
end

-- Display: Multileg Definition Incremental V 2 Message Leg Group
smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_incremental_v_2_message_leg_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multileg Definition Incremental V 2 Message Leg Group
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_leg_group_fields = function(buffer, offset, packet, parent, multileg_definition_incremental_v_2_message_leg_group_index)
  local index = offset

  -- Implicit Multileg Definition Incremental V 2 Message Leg Group Index
  if multileg_definition_incremental_v_2_message_leg_group_index ~= nil then
    local iteration = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_incremental_v_2_message_leg_group_index, multileg_definition_incremental_v_2_message_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.leg_instrument_id(buffer, index, packet, parent)

  -- Leg Symbol: 25 Byte Ascii String
  index, leg_symbol = smallx_orderbookfeed_sbe_v2_2_dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Product: 8 Byte Ascii String
  index, leg_product = smallx_orderbookfeed_sbe_v2_2_dissect.leg_product(buffer, index, packet, parent)

  -- Leg Ratio Quantity: 8 Byte Signed Fixed Width Integer
  index, leg_ratio_quantity = smallx_orderbookfeed_sbe_v2_2_dissect.leg_ratio_quantity(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 2 values
  index, leg_side = smallx_orderbookfeed_sbe_v2_2_dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Multileg Definition Incremental V 2 Message Leg Group
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_leg_group = function(buffer, offset, packet, parent, multileg_definition_incremental_v_2_message_leg_group_index)
  if show.multileg_definition_incremental_v_2_message_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_incremental_v_2_message_leg_group, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_leg_group_fields(buffer, offset, packet, parent, multileg_definition_incremental_v_2_message_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_incremental_v_2_message_leg_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_leg_group_fields(buffer, offset, packet, parent, multileg_definition_incremental_v_2_message_leg_group_index)
  end
end

-- Calculate size of: Multileg Definition Incremental V 2 Message Leg Groups
smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_incremental_v_2_message_leg_groups = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.group_dimension(buffer, offset + index)

  -- Calculate field size from count
  local multileg_definition_incremental_v_2_message_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + multileg_definition_incremental_v_2_message_leg_group_count * 46

  return index
end

-- Display: Multileg Definition Incremental V 2 Message Leg Groups
smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_incremental_v_2_message_leg_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multileg Definition Incremental V 2 Message Leg Groups
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Dimension: Struct of 2 fields
  index, group_dimension = smallx_orderbookfeed_sbe_v2_2_dissect.group_dimension(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Multileg Definition Incremental V 2 Message Leg Group
  for multileg_definition_incremental_v_2_message_leg_group_index = 1, num_in_group do
    index, multileg_definition_incremental_v_2_message_leg_group = smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_leg_group(buffer, index, packet, parent, multileg_definition_incremental_v_2_message_leg_group_index)
  end

  return index
end

-- Dissect: Multileg Definition Incremental V 2 Message Leg Groups
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.multileg_definition_incremental_v_2_message_leg_groups then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_incremental_v_2_message_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_incremental_v_2_message_leg_groups(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_incremental_v_2_message_leg_groups, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Instrument Update Action
smallx_orderbookfeed_sbe_v2_2_size_of.instrument_update_action = 1

-- Display: Instrument Update Action
smallx_orderbookfeed_sbe_v2_2_display.instrument_update_action = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Instrument Update Action: No Value"
  end

  if value == "A" then
    return "Instrument Update Action: Add (A)"
  end
  if value == "D" then
    return "Instrument Update Action: Delete (D)"
  end
  if value == "M" then
    return "Instrument Update Action: Modify (M)"
  end

  return "Instrument Update Action: Unknown("..value..")"
end

-- Dissect: Instrument Update Action
smallx_orderbookfeed_sbe_v2_2_dissect.instrument_update_action = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.instrument_update_action
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.instrument_update_action(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_update_action, range, value, display)

  return offset + length, value
end

-- Size: Incremental Message Instructions
smallx_orderbookfeed_sbe_v2_2_size_of.incremental_message_instructions = 2

-- Display: Incremental Message Instructions
smallx_orderbookfeed_sbe_v2_2_display.incremental_message_instructions = function(buffer, packet, parent)
  local display = ""

  -- Is Book Reset flag set?
  if buffer:bitfield(9) > 0 then
    display = display.."Book Reset|"
  end
  -- Is Book End flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Book End|"
  end
  -- Is Book Begin flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Book Begin|"
  end
  -- Is Instrument End flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Instrument End|"
  end
  -- Is Instrument Begin flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Instrument Begin|"
  end
  -- Is Transaction End flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Transaction End|"
  end
  -- Is Transaction Begin flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Transaction Begin|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Incremental Message Instructions
smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions_bits = function(buffer, offset, packet, parent)

  -- Reserved 9: 9 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_9, buffer(offset, 2))

  -- Book Reset: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.book_reset, buffer(offset, 2))

  -- Book End: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.book_end, buffer(offset, 2))

  -- Book Begin: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.book_begin, buffer(offset, 2))

  -- Instrument End: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_end, buffer(offset, 2))

  -- Instrument Begin: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_begin, buffer(offset, 2))

  -- Transaction End: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.transaction_end, buffer(offset, 2))

  -- Transaction Begin: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.transaction_begin, buffer(offset, 2))
end

-- Dissect: Incremental Message Instructions
smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = smallx_orderbookfeed_sbe_v2_2_display.incremental_message_instructions(range, packet, parent)
  local element = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.incremental_message_instructions, range, display)

  if show.incremental_message_instructions then
    smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Calculate size of: Multileg Definition Incremental V 2 Message
smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_incremental_v_2_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.incremental_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_update_action

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.spread_symbol

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.description

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_type

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.maturity_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.first_trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.expiration_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.cfi_code

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.currency

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_increment

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_multiplier

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.strategy_type

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_incremental_v_2_message_leg_groups(buffer, offset + index)

  return index
end

-- Display: Multileg Definition Incremental V 2 Message
smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_incremental_v_2_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multileg Definition Incremental V 2 Message
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Incremental Message Instructions: Struct of 8 fields
  index, incremental_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions(buffer, index, packet, parent)

  -- Instrument Update Action: 1 Byte Ascii String Enum with 3 values
  index, instrument_update_action = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_update_action(buffer, index, packet, parent)

  -- Spread Symbol: 120 Byte Ascii String
  index, spread_symbol = smallx_orderbookfeed_sbe_v2_2_dissect.spread_symbol(buffer, index, packet, parent)

  -- Description: 120 Byte Ascii String
  index, description = smallx_orderbookfeed_sbe_v2_2_dissect.description(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 3 values
  index, instrument_type = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_type(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index, maturity_date = smallx_orderbookfeed_sbe_v2_2_dissect.maturity_date(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Expiration Date: 2 Byte Unsigned Fixed Width Integer
  index, expiration_date = smallx_orderbookfeed_sbe_v2_2_dissect.expiration_date(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = smallx_orderbookfeed_sbe_v2_2_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = smallx_orderbookfeed_sbe_v2_2_dissect.currency(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = smallx_orderbookfeed_sbe_v2_2_dissect.price_increment(buffer, index, packet, parent)

  -- Price Multiplier: 8 Byte Signed Fixed Width Integer
  index, price_multiplier = smallx_orderbookfeed_sbe_v2_2_dissect.price_multiplier(buffer, index, packet, parent)

  -- Strategy Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, strategy_type = smallx_orderbookfeed_sbe_v2_2_dissect.strategy_type(buffer, index, packet, parent)

  -- Multileg Definition Incremental V 2 Message Leg Groups: Struct of 2 fields
  index, multileg_definition_incremental_v_2_message_leg_groups = smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_leg_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Multileg Definition Incremental V 2 Message
smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.multileg_definition_incremental_v_2_message then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_incremental_v_2_message(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.multileg_definition_incremental_v_2_message(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.multileg_definition_incremental_v_2_message, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Single Instrument Definition Incremental V 2 Message
smallx_orderbookfeed_sbe_v2_2_size_of.single_instrument_definition_incremental_v_2_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.incremental_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_update_action

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.symbol

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.product

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.description

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_type

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.maturity_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.first_trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.expiration_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.cfi_code

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.currency

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_increment

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_multiplier

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.underlying_symbol

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.underlying_instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.put_or_call

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.strike_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.shares_per_contract

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.expiration_style

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.exercise_style

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.delivery

  return index
end

-- Display: Single Instrument Definition Incremental V 2 Message
smallx_orderbookfeed_sbe_v2_2_display.single_instrument_definition_incremental_v_2_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Instrument Definition Incremental V 2 Message
smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_incremental_v_2_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Incremental Message Instructions: Struct of 8 fields
  index, incremental_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions(buffer, index, packet, parent)

  -- Instrument Update Action: 1 Byte Ascii String Enum with 3 values
  index, instrument_update_action = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_update_action(buffer, index, packet, parent)

  -- Symbol: 25 Byte Ascii String
  index, symbol = smallx_orderbookfeed_sbe_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Product: 8 Byte Ascii String
  index, product = smallx_orderbookfeed_sbe_v2_2_dissect.product(buffer, index, packet, parent)

  -- Description: 120 Byte Ascii String
  index, description = smallx_orderbookfeed_sbe_v2_2_dissect.description(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 3 values
  index, instrument_type = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_type(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index, maturity_date = smallx_orderbookfeed_sbe_v2_2_dissect.maturity_date(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Expiration Date: 2 Byte Unsigned Fixed Width Integer
  index, expiration_date = smallx_orderbookfeed_sbe_v2_2_dissect.expiration_date(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = smallx_orderbookfeed_sbe_v2_2_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = smallx_orderbookfeed_sbe_v2_2_dissect.currency(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = smallx_orderbookfeed_sbe_v2_2_dissect.price_increment(buffer, index, packet, parent)

  -- Price Multiplier: 8 Byte Signed Fixed Width Integer
  index, price_multiplier = smallx_orderbookfeed_sbe_v2_2_dissect.price_multiplier(buffer, index, packet, parent)

  -- Underlying Symbol: 25 Byte Ascii String
  index, underlying_symbol = smallx_orderbookfeed_sbe_v2_2_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Underlying Instrument Id: 4 Byte Signed Fixed Width Integer
  index, underlying_instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.underlying_instrument_id(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Ascii String Enum with 3 values
  index, put_or_call = smallx_orderbookfeed_sbe_v2_2_dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = smallx_orderbookfeed_sbe_v2_2_dissect.strike_price(buffer, index, packet, parent)

  -- Shares Per Contract: 8 Byte Signed Fixed Width Integer
  index, shares_per_contract = smallx_orderbookfeed_sbe_v2_2_dissect.shares_per_contract(buffer, index, packet, parent)

  -- Expiration Style: 1 Byte Ascii String Enum with 4 values
  index, expiration_style = smallx_orderbookfeed_sbe_v2_2_dissect.expiration_style(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Ascii String Enum with 3 values
  index, exercise_style = smallx_orderbookfeed_sbe_v2_2_dissect.exercise_style(buffer, index, packet, parent)

  -- Delivery: 1 Byte Ascii String Enum with 2 values
  index, delivery = smallx_orderbookfeed_sbe_v2_2_dissect.delivery(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Instrument Definition Incremental V 2 Message
smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_incremental_v_2_message = function(buffer, offset, packet, parent)
  if show.single_instrument_definition_incremental_v_2_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.single_instrument_definition_incremental_v_2_message, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_incremental_v_2_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.single_instrument_definition_incremental_v_2_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_incremental_v_2_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Close Price
smallx_orderbookfeed_sbe_v2_2_size_of.close_price = 8

-- Display: Close Price
smallx_orderbookfeed_sbe_v2_2_display.close_price = function(value)
  return "Close Price: "..value
end

-- Translate: Close Price
translate.close_price = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Close Price
smallx_orderbookfeed_sbe_v2_2_dissect.close_price = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.close_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.close_price(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.close_price(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.close_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price
smallx_orderbookfeed_sbe_v2_2_size_of.low_price = 8

-- Display: Low Price
smallx_orderbookfeed_sbe_v2_2_display.low_price = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
translate.low_price = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Low Price
smallx_orderbookfeed_sbe_v2_2_dissect.low_price = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.low_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.low_price(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.low_price(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
smallx_orderbookfeed_sbe_v2_2_size_of.high_price = 8

-- Display: High Price
smallx_orderbookfeed_sbe_v2_2_display.high_price = function(value)
  return "High Price: "..value
end

-- Translate: High Price
translate.high_price = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: High Price
smallx_orderbookfeed_sbe_v2_2_dissect.high_price = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.high_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.high_price(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.high_price(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Open Price
smallx_orderbookfeed_sbe_v2_2_size_of.open_price = 8

-- Display: Open Price
smallx_orderbookfeed_sbe_v2_2_display.open_price = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
translate.open_price = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Open Price
smallx_orderbookfeed_sbe_v2_2_dissect.open_price = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.open_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.open_price(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.open_price(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Session Date
smallx_orderbookfeed_sbe_v2_2_size_of.session_date = 2

-- Display: Session Date
smallx_orderbookfeed_sbe_v2_2_display.session_date = function(value)
  return "Session Date: "..value
end

-- Dissect: Session Date
smallx_orderbookfeed_sbe_v2_2_dissect.session_date = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.session_date(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.session_date, range, value, display)

  return offset + length, value
end

-- Size: Value
smallx_orderbookfeed_sbe_v2_2_size_of.value = 8

-- Display: Value
smallx_orderbookfeed_sbe_v2_2_display.value = function(value)
  return "Value: "..value
end

-- Translate: Value
translate.value = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Value
smallx_orderbookfeed_sbe_v2_2_dissect.value = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.value
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.value(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.value(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.value, range, value, display)

  return offset + length, value
end

-- Size: Index Symbol
smallx_orderbookfeed_sbe_v2_2_size_of.index_symbol = 20

-- Display: Index Symbol
smallx_orderbookfeed_sbe_v2_2_display.index_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Index Symbol: No Value"
  end

  return "Index Symbol: "..value
end

-- Dissect: Index Symbol
smallx_orderbookfeed_sbe_v2_2_dissect.index_symbol = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.index_symbol
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

  local display = smallx_orderbookfeed_sbe_v2_2_display.index_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.index_symbol, range, value, display)

  return offset + length, value
end

-- Size: Index Count
smallx_orderbookfeed_sbe_v2_2_size_of.index_count = 4

-- Display: Index Count
smallx_orderbookfeed_sbe_v2_2_display.index_count = function(value)
  return "Index Count: "..value
end

-- Dissect: Index Count
smallx_orderbookfeed_sbe_v2_2_dissect.index_count = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.index_count
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_orderbookfeed_sbe_v2_2_display.index_count(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.index_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Index Value Snapshot Message
smallx_orderbookfeed_sbe_v2_2_size_of.index_value_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.index_count

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.index_symbol

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.value

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.open_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.high_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.low_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.close_price

  return index
end

-- Display: Index Value Snapshot Message
smallx_orderbookfeed_sbe_v2_2_display.index_value_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Snapshot Message
smallx_orderbookfeed_sbe_v2_2_dissect.index_value_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Snapshot Message Instructions: Struct of 8 fields
  index, snapshot_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_message_instructions(buffer, index, packet, parent)

  -- Index Count: 4 Byte Signed Fixed Width Integer
  index, index_count = smallx_orderbookfeed_sbe_v2_2_dissect.index_count(buffer, index, packet, parent)

  -- Index Symbol: 20 Byte Ascii String
  index, index_symbol = smallx_orderbookfeed_sbe_v2_2_dissect.index_symbol(buffer, index, packet, parent)

  -- Value: 8 Byte Signed Fixed Width Integer
  index, value = smallx_orderbookfeed_sbe_v2_2_dissect.value(buffer, index, packet, parent)

  -- Session Date: 2 Byte Unsigned Fixed Width Integer
  index, session_date = smallx_orderbookfeed_sbe_v2_2_dissect.session_date(buffer, index, packet, parent)

  -- Open Price: 8 Byte Signed Fixed Width Integer
  index, open_price = smallx_orderbookfeed_sbe_v2_2_dissect.open_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Signed Fixed Width Integer
  index, high_price = smallx_orderbookfeed_sbe_v2_2_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Signed Fixed Width Integer
  index, low_price = smallx_orderbookfeed_sbe_v2_2_dissect.low_price(buffer, index, packet, parent)

  -- Close Price: 8 Byte Signed Fixed Width Integer
  index, close_price = smallx_orderbookfeed_sbe_v2_2_dissect.close_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Value Snapshot Message
smallx_orderbookfeed_sbe_v2_2_dissect.index_value_snapshot_message = function(buffer, offset, packet, parent)
  if show.index_value_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.index_value_snapshot_message, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.index_value_snapshot_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.index_value_snapshot_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.index_value_snapshot_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Settlement Price Type
smallx_orderbookfeed_sbe_v2_2_size_of.settlement_price_type = 1

-- Display: Settlement Price Type
smallx_orderbookfeed_sbe_v2_2_display.settlement_price_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Settlement Price Type: No Value"
  end

  if value == "F" then
    return "Settlement Price Type: Final (F)"
  end
  if value == "P" then
    return "Settlement Price Type: Preliminary (P)"
  end
  if value == "N" then
    return "Settlement Price Type: No Price (N)"
  end

  return "Settlement Price Type: Unknown("..value..")"
end

-- Dissect: Settlement Price Type
smallx_orderbookfeed_sbe_v2_2_dissect.settlement_price_type = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.settlement_price_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.settlement_price_type(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.settlement_price_type, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price
smallx_orderbookfeed_sbe_v2_2_size_of.settlement_price = 8

-- Display: Settlement Price
smallx_orderbookfeed_sbe_v2_2_display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Translate: Settlement Price
translate.settlement_price = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Settlement Price
smallx_orderbookfeed_sbe_v2_2_dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.settlement_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.settlement_price(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
smallx_orderbookfeed_sbe_v2_2_size_of.open_interest = 8

-- Display: Open Interest
smallx_orderbookfeed_sbe_v2_2_display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Translate: Open Interest
translate.open_interest = function(raw)
  return raw:tonumber()
end

-- Dissect: Open Interest
smallx_orderbookfeed_sbe_v2_2_dissect.open_interest = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.open_interest
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.open_interest(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.open_interest(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Open Price Type
smallx_orderbookfeed_sbe_v2_2_size_of.open_price_type = 1

-- Display: Open Price Type
smallx_orderbookfeed_sbe_v2_2_display.open_price_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Open Price Type: No Value"
  end

  if value == "I" then
    return "Open Price Type: Indicative (I)"
  end
  if value == "T" then
    return "Open Price Type: Traded (T)"
  end
  if value == "N" then
    return "Open Price Type: No Price (N)"
  end

  return "Open Price Type: Unknown("..value..")"
end

-- Dissect: Open Price Type
smallx_orderbookfeed_sbe_v2_2_dissect.open_price_type = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.open_price_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.open_price_type(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.open_price_type, range, value, display)

  return offset + length, value
end

-- Size: Total Volume Quantity Optional
smallx_orderbookfeed_sbe_v2_2_size_of.total_volume_quantity_optional = 8

-- Display: Total Volume Quantity Optional
smallx_orderbookfeed_sbe_v2_2_display.total_volume_quantity_optional = function(value)
  return "Total Volume Quantity Optional: "..value
end

-- Translate: Total Volume Quantity Optional
translate.total_volume_quantity_optional = function(raw)
  return raw:tonumber()
end

-- Dissect: Total Volume Quantity Optional
smallx_orderbookfeed_sbe_v2_2_dissect.total_volume_quantity_optional = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.total_volume_quantity_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.total_volume_quantity_optional(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.total_volume_quantity_optional(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.total_volume_quantity_optional, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Time Timestamp
smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_time_timestamp = 8

-- Display: Last Trade Time Timestamp
smallx_orderbookfeed_sbe_v2_2_display.last_trade_time_timestamp = function(value)
  return "Last Trade Time Timestamp: "..value
end

-- Dissect: Last Trade Time Timestamp
smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_time_timestamp = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_time_timestamp
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.last_trade_time_timestamp(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trade_time_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Size
smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_size = 8

-- Display: Last Trade Size
smallx_orderbookfeed_sbe_v2_2_display.last_trade_size = function(value)
  return "Last Trade Size: "..value
end

-- Translate: Last Trade Size
translate.last_trade_size = function(raw)
  return raw:tonumber()
end

-- Dissect: Last Trade Size
smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_size = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_trade_size(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.last_trade_size(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trade_size, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Price
smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_price = 8

-- Display: Last Trade Price
smallx_orderbookfeed_sbe_v2_2_display.last_trade_price = function(value)
  return "Last Trade Price: "..value
end

-- Translate: Last Trade Price
translate.last_trade_price = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Last Trade Price
smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_price = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_trade_price(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.last_trade_price(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Summary Snapshot Message
smallx_orderbookfeed_sbe_v2_2_size_of.market_summary_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_instruments_count

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_incremental_message_seq

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_size

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_time_timestamp

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.total_volume_quantity_optional

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.open_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.open_price_type

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.high_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.low_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.close_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.open_interest

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.settlement_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.settlement_price_type

  return index
end

-- Display: Market Summary Snapshot Message
smallx_orderbookfeed_sbe_v2_2_display.market_summary_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Summary Snapshot Message
smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Snapshot Message Instructions: Struct of 8 fields
  index, snapshot_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_message_instructions(buffer, index, packet, parent)

  -- Snapshot Instruments Count: 4 Byte Signed Fixed Width Integer
  index, snapshot_instruments_count = smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_instruments_count(buffer, index, packet, parent)

  -- Last Incremental Message Seq: 8 Byte Signed Fixed Width Integer
  index, last_incremental_message_seq = smallx_orderbookfeed_sbe_v2_2_dissect.last_incremental_message_seq(buffer, index, packet, parent)

  -- Last Trade Price: 8 Byte Signed Fixed Width Integer
  index, last_trade_price = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_price(buffer, index, packet, parent)

  -- Last Trade Size: 8 Byte Signed Fixed Width Integer
  index, last_trade_size = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_size(buffer, index, packet, parent)

  -- Last Trade Time Timestamp: 8 Byte Signed Fixed Width Integer
  index, last_trade_time_timestamp = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_time_timestamp(buffer, index, packet, parent)

  -- Total Volume Quantity Optional: 8 Byte Signed Fixed Width Integer
  index, total_volume_quantity_optional = smallx_orderbookfeed_sbe_v2_2_dissect.total_volume_quantity_optional(buffer, index, packet, parent)

  -- Open Price: 8 Byte Signed Fixed Width Integer
  index, open_price = smallx_orderbookfeed_sbe_v2_2_dissect.open_price(buffer, index, packet, parent)

  -- Open Price Type: 1 Byte Ascii String Enum with 3 values
  index, open_price_type = smallx_orderbookfeed_sbe_v2_2_dissect.open_price_type(buffer, index, packet, parent)

  -- High Price: 8 Byte Signed Fixed Width Integer
  index, high_price = smallx_orderbookfeed_sbe_v2_2_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Signed Fixed Width Integer
  index, low_price = smallx_orderbookfeed_sbe_v2_2_dissect.low_price(buffer, index, packet, parent)

  -- Close Price: 8 Byte Signed Fixed Width Integer
  index, close_price = smallx_orderbookfeed_sbe_v2_2_dissect.close_price(buffer, index, packet, parent)

  -- Open Interest: 8 Byte Signed Fixed Width Integer
  index, open_interest = smallx_orderbookfeed_sbe_v2_2_dissect.open_interest(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer
  index, settlement_price = smallx_orderbookfeed_sbe_v2_2_dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Type: 1 Byte Ascii String Enum with 3 values
  index, settlement_price_type = smallx_orderbookfeed_sbe_v2_2_dissect.settlement_price_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Summary Snapshot Message
smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_snapshot_message = function(buffer, offset, packet, parent)
  if show.market_summary_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.market_summary_snapshot_message, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_snapshot_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.market_summary_snapshot_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_snapshot_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Order Attributes
smallx_orderbookfeed_sbe_v2_2_size_of.order_attributes = 2

-- Display: Order Attributes
smallx_orderbookfeed_sbe_v2_2_display.order_attributes = function(buffer, packet, parent)
  local display = ""

  -- Is Implied flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Implied|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Order Attributes
smallx_orderbookfeed_sbe_v2_2_dissect.order_attributes_bits = function(buffer, offset, packet, parent)

  -- Reserved 15: 15 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_15, buffer(offset, 2))

  -- Implied: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.implied, buffer(offset, 2))
end

-- Dissect: Order Attributes
smallx_orderbookfeed_sbe_v2_2_dissect.order_attributes = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = smallx_orderbookfeed_sbe_v2_2_display.order_attributes(range, packet, parent)
  local element = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.order_attributes, range, display)

  if show.order_attributes then
    smallx_orderbookfeed_sbe_v2_2_dissect.order_attributes_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Order Priority Order Priority optional
smallx_orderbookfeed_sbe_v2_2_size_of.order_priority_order_priority_optional = 8

-- Display: Order Priority Order Priority optional
smallx_orderbookfeed_sbe_v2_2_display.order_priority_order_priority_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Priority Order Priority optional: No Value"
  end

  return "Order Priority Order Priority optional: "..value
end

-- Dissect: Order Priority Order Priority optional
smallx_orderbookfeed_sbe_v2_2_dissect.order_priority_order_priority_optional = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.order_priority_order_priority_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.order_priority_order_priority_optional(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.order_priority_order_priority_optional, range, value, display)

  return offset + length, value
end

-- Size: Size
smallx_orderbookfeed_sbe_v2_2_size_of.size = 8

-- Display: Size
smallx_orderbookfeed_sbe_v2_2_display.size = function(value)
  return "Size: "..value
end

-- Translate: Size
translate.size = function(raw)
  return raw:tonumber()
end

-- Dissect: Size
smallx_orderbookfeed_sbe_v2_2_dissect.size = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.size(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.size(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Price Price Optional
smallx_orderbookfeed_sbe_v2_2_size_of.price_price_optional = 8

-- Display: Price Price Optional
smallx_orderbookfeed_sbe_v2_2_display.price_price_optional = function(value)
  return "Price Price Optional: "..value
end

-- Translate: Price Price Optional
translate.price_price_optional = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Price Price Optional
smallx_orderbookfeed_sbe_v2_2_dissect.price_price_optional = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.price_price_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_price_optional(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.price_price_optional(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.price_price_optional, range, value, display)

  return offset + length, value
end

-- Size: Side
smallx_orderbookfeed_sbe_v2_2_size_of.side = 1

-- Display: Side
smallx_orderbookfeed_sbe_v2_2_display.side = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
smallx_orderbookfeed_sbe_v2_2_dissect.side = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.side
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.side(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Trade Id Trade Id optional
smallx_orderbookfeed_sbe_v2_2_size_of.trade_id_trade_id_optional = 8

-- Display: Trade Id Trade Id optional
smallx_orderbookfeed_sbe_v2_2_display.trade_id_trade_id_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Trade Id Trade Id optional: No Value"
  end

  return "Trade Id Trade Id optional: "..value
end

-- Dissect: Trade Id Trade Id optional
smallx_orderbookfeed_sbe_v2_2_dissect.trade_id_trade_id_optional = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.trade_id_trade_id_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.trade_id_trade_id_optional(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_id_trade_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Order Id
smallx_orderbookfeed_sbe_v2_2_size_of.order_id = 8

-- Display: Order Id
smallx_orderbookfeed_sbe_v2_2_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
smallx_orderbookfeed_sbe_v2_2_dissect.order_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.order_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Order Update Action
smallx_orderbookfeed_sbe_v2_2_size_of.order_update_action = 1

-- Display: Order Update Action
smallx_orderbookfeed_sbe_v2_2_display.order_update_action = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Update Action: No Value"
  end

  if value == "N" then
    return "Order Update Action: New (N)"
  end
  if value == "U" then
    return "Order Update Action: Update (U)"
  end
  if value == "D" then
    return "Order Update Action: Delete (D)"
  end

  return "Order Update Action: Unknown("..value..")"
end

-- Dissect: Order Update Action
smallx_orderbookfeed_sbe_v2_2_dissect.order_update_action = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.order_update_action
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.order_update_action(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.order_update_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Orders Group
smallx_orderbookfeed_sbe_v2_2_size_of.orders_group = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.order_update_action

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.order_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trade_id_trade_id_optional

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.side

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_price_optional

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.size

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.order_priority_order_priority_optional

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.order_attributes

  return index
end

-- Display: Orders Group
smallx_orderbookfeed_sbe_v2_2_display.orders_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Group
smallx_orderbookfeed_sbe_v2_2_dissect.orders_group_fields = function(buffer, offset, packet, parent, orders_group_index)
  local index = offset

  -- Implicit Orders Group Index
  if orders_group_index ~= nil then
    local iteration = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.orders_group_index, orders_group_index)
    iteration:set_generated()
  end

  -- Order Update Action: 1 Byte Ascii String Enum with 3 values
  index, order_update_action = smallx_orderbookfeed_sbe_v2_2_dissect.order_update_action(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = smallx_orderbookfeed_sbe_v2_2_dissect.order_id(buffer, index, packet, parent)

  -- Trade Id Trade Id optional: 8 Byte Signed Fixed Width Integer Nullable
  index, trade_id_trade_id_optional = smallx_orderbookfeed_sbe_v2_2_dissect.trade_id_trade_id_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = smallx_orderbookfeed_sbe_v2_2_dissect.side(buffer, index, packet, parent)

  -- Price Price Optional: 8 Byte Signed Fixed Width Integer
  index, price_price_optional = smallx_orderbookfeed_sbe_v2_2_dissect.price_price_optional(buffer, index, packet, parent)

  -- Size: 8 Byte Signed Fixed Width Integer
  index, size = smallx_orderbookfeed_sbe_v2_2_dissect.size(buffer, index, packet, parent)

  -- Order Priority Order Priority optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_priority_order_priority_optional = smallx_orderbookfeed_sbe_v2_2_dissect.order_priority_order_priority_optional(buffer, index, packet, parent)

  -- Order Attributes: Struct of 2 fields
  index, order_attributes = smallx_orderbookfeed_sbe_v2_2_dissect.order_attributes(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders Group
smallx_orderbookfeed_sbe_v2_2_dissect.orders_group = function(buffer, offset, packet, parent, orders_group_index)
  if show.orders_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.orders_group, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.orders_group_fields(buffer, offset, packet, parent, orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.orders_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.orders_group_fields(buffer, offset, packet, parent, orders_group_index)
  end
end

-- Calculate size of: Orders Groups
smallx_orderbookfeed_sbe_v2_2_size_of.orders_groups = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.group_dimension(buffer, offset + index)

  -- Calculate field size from count
  local orders_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + orders_group_count * 44

  return index
end

-- Display: Orders Groups
smallx_orderbookfeed_sbe_v2_2_display.orders_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Groups
smallx_orderbookfeed_sbe_v2_2_dissect.orders_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Dimension: Struct of 2 fields
  index, group_dimension = smallx_orderbookfeed_sbe_v2_2_dissect.group_dimension(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Orders Group
  for orders_group_index = 1, num_in_group do
    index, orders_group = smallx_orderbookfeed_sbe_v2_2_dissect.orders_group(buffer, index, packet, parent, orders_group_index)
  end

  return index
end

-- Dissect: Orders Groups
smallx_orderbookfeed_sbe_v2_2_dissect.orders_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.orders_groups then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.orders_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.orders_groups(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.orders_groups, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.orders_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Book Snapshot Message
smallx_orderbookfeed_sbe_v2_2_size_of.order_book_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.snapshot_instruments_count

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_incremental_message_seq

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.orders_groups(buffer, offset + index)

  return index
end

-- Display: Order Book Snapshot Message
smallx_orderbookfeed_sbe_v2_2_display.order_book_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Snapshot Message
smallx_orderbookfeed_sbe_v2_2_dissect.order_book_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Snapshot Message Instructions: Struct of 8 fields
  index, snapshot_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_message_instructions(buffer, index, packet, parent)

  -- Snapshot Instruments Count: 4 Byte Signed Fixed Width Integer
  index, snapshot_instruments_count = smallx_orderbookfeed_sbe_v2_2_dissect.snapshot_instruments_count(buffer, index, packet, parent)

  -- Last Incremental Message Seq: 8 Byte Signed Fixed Width Integer
  index, last_incremental_message_seq = smallx_orderbookfeed_sbe_v2_2_dissect.last_incremental_message_seq(buffer, index, packet, parent)

  -- Orders Groups: Struct of 2 fields
  index, orders_groups = smallx_orderbookfeed_sbe_v2_2_dissect.orders_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Snapshot Message
smallx_orderbookfeed_sbe_v2_2_dissect.order_book_snapshot_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_book_snapshot_message then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.order_book_snapshot_message(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.order_book_snapshot_message(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.order_book_snapshot_message, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.order_book_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Summary Incremental Message
smallx_orderbookfeed_sbe_v2_2_size_of.market_summary_incremental_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.incremental_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.open_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.open_price_type

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.high_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.low_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.close_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.open_interest

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.settlement_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.settlement_price_type

  return index
end

-- Display: Market Summary Incremental Message
smallx_orderbookfeed_sbe_v2_2_display.market_summary_incremental_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Summary Incremental Message
smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_incremental_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Incremental Message Instructions: Struct of 8 fields
  index, incremental_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions(buffer, index, packet, parent)

  -- Open Price: 8 Byte Signed Fixed Width Integer
  index, open_price = smallx_orderbookfeed_sbe_v2_2_dissect.open_price(buffer, index, packet, parent)

  -- Open Price Type: 1 Byte Ascii String Enum with 3 values
  index, open_price_type = smallx_orderbookfeed_sbe_v2_2_dissect.open_price_type(buffer, index, packet, parent)

  -- High Price: 8 Byte Signed Fixed Width Integer
  index, high_price = smallx_orderbookfeed_sbe_v2_2_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Signed Fixed Width Integer
  index, low_price = smallx_orderbookfeed_sbe_v2_2_dissect.low_price(buffer, index, packet, parent)

  -- Close Price: 8 Byte Signed Fixed Width Integer
  index, close_price = smallx_orderbookfeed_sbe_v2_2_dissect.close_price(buffer, index, packet, parent)

  -- Open Interest: 8 Byte Signed Fixed Width Integer
  index, open_interest = smallx_orderbookfeed_sbe_v2_2_dissect.open_interest(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer
  index, settlement_price = smallx_orderbookfeed_sbe_v2_2_dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Type: 1 Byte Ascii String Enum with 3 values
  index, settlement_price_type = smallx_orderbookfeed_sbe_v2_2_dissect.settlement_price_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Summary Incremental Message
smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_incremental_message = function(buffer, offset, packet, parent)
  if show.market_summary_incremental_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.market_summary_incremental_message, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_incremental_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.market_summary_incremental_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_incremental_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Order Book Incremental Message
smallx_orderbookfeed_sbe_v2_2_size_of.order_book_incremental_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.incremental_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.orders_groups(buffer, offset + index)

  return index
end

-- Display: Order Book Incremental Message
smallx_orderbookfeed_sbe_v2_2_display.order_book_incremental_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Incremental Message
smallx_orderbookfeed_sbe_v2_2_dissect.order_book_incremental_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Incremental Message Instructions: Struct of 8 fields
  index, incremental_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions(buffer, index, packet, parent)

  -- Orders Groups: Struct of 2 fields
  index, orders_groups = smallx_orderbookfeed_sbe_v2_2_dissect.orders_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Incremental Message
smallx_orderbookfeed_sbe_v2_2_dissect.order_book_incremental_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_book_incremental_message then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.order_book_incremental_message(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.order_book_incremental_message(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.order_book_incremental_message, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.order_book_incremental_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Conditions
smallx_orderbookfeed_sbe_v2_2_size_of.trade_conditions = 2

-- Display: Trade Conditions
smallx_orderbookfeed_sbe_v2_2_display.trade_conditions = function(buffer, packet, parent)
  local display = ""

  -- Is Auction flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Auction|"
  end
  -- Is Synthetic flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Synthetic|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Conditions
smallx_orderbookfeed_sbe_v2_2_dissect.trade_conditions_bits = function(buffer, offset, packet, parent)

  -- Reserved 14: 14 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_14, buffer(offset, 2))

  -- Auction: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.auction, buffer(offset, 2))

  -- Synthetic: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.synthetic, buffer(offset, 2))
end

-- Dissect: Trade Conditions
smallx_orderbookfeed_sbe_v2_2_dissect.trade_conditions = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = smallx_orderbookfeed_sbe_v2_2_display.trade_conditions(range, packet, parent)
  local element = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_conditions, range, display)

  if show.trade_conditions then
    smallx_orderbookfeed_sbe_v2_2_dissect.trade_conditions_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Sell Order Id
smallx_orderbookfeed_sbe_v2_2_size_of.sell_order_id = 8

-- Display: Sell Order Id
smallx_orderbookfeed_sbe_v2_2_display.sell_order_id = function(value)
  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
smallx_orderbookfeed_sbe_v2_2_dissect.sell_order_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.sell_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.sell_order_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Size: Buy Order Id
smallx_orderbookfeed_sbe_v2_2_size_of.buy_order_id = 8

-- Display: Buy Order Id
smallx_orderbookfeed_sbe_v2_2_display.buy_order_id = function(value)
  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
smallx_orderbookfeed_sbe_v2_2_dissect.buy_order_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.buy_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.buy_order_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Side
smallx_orderbookfeed_sbe_v2_2_size_of.aggressor_side = 1

-- Display: Aggressor Side
smallx_orderbookfeed_sbe_v2_2_display.aggressor_side = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Aggressor Side: No Value"
  end

  if value == "N" then
    return "Aggressor Side: No Aggressor (N)"
  end
  if value == "B" then
    return "Aggressor Side: Buy (B)"
  end
  if value == "S" then
    return "Aggressor Side: Sell (S)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
smallx_orderbookfeed_sbe_v2_2_dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.aggressor_side
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = smallx_orderbookfeed_sbe_v2_2_display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Size: Price Price
smallx_orderbookfeed_sbe_v2_2_size_of.price_price = 8

-- Display: Price Price
smallx_orderbookfeed_sbe_v2_2_display.price_price = function(value)
  return "Price Price: "..value
end

-- Translate: Price Price
translate.price_price = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Price Price
smallx_orderbookfeed_sbe_v2_2_dissect.price_price = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.price_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_price(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.price_price(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.price_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Id Trade Id
smallx_orderbookfeed_sbe_v2_2_size_of.trade_id_trade_id = 8

-- Display: Trade Id Trade Id
smallx_orderbookfeed_sbe_v2_2_display.trade_id_trade_id = function(value)
  return "Trade Id Trade Id: "..value
end

-- Dissect: Trade Id Trade Id
smallx_orderbookfeed_sbe_v2_2_dissect.trade_id_trade_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.trade_id_trade_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.trade_id_trade_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_id_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trades Group
smallx_orderbookfeed_sbe_v2_2_size_of.trades_group = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trade_id_trade_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.price_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.size

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.aggressor_side

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.buy_order_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.sell_order_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trade_conditions

  return index
end

-- Display: Trades Group
smallx_orderbookfeed_sbe_v2_2_display.trades_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trades Group
smallx_orderbookfeed_sbe_v2_2_dissect.trades_group_fields = function(buffer, offset, packet, parent, trades_group_index)
  local index = offset

  -- Implicit Trades Group Index
  if trades_group_index ~= nil then
    local iteration = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trades_group_index, trades_group_index)
    iteration:set_generated()
  end

  -- Trade Id Trade Id: 8 Byte Signed Fixed Width Integer
  index, trade_id_trade_id = smallx_orderbookfeed_sbe_v2_2_dissect.trade_id_trade_id(buffer, index, packet, parent)

  -- Price Price: 8 Byte Signed Fixed Width Integer
  index, price_price = smallx_orderbookfeed_sbe_v2_2_dissect.price_price(buffer, index, packet, parent)

  -- Size: 8 Byte Signed Fixed Width Integer
  index, size = smallx_orderbookfeed_sbe_v2_2_dissect.size(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Ascii String Enum with 3 values
  index, aggressor_side = smallx_orderbookfeed_sbe_v2_2_dissect.aggressor_side(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer
  index, buy_order_id = smallx_orderbookfeed_sbe_v2_2_dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer
  index, sell_order_id = smallx_orderbookfeed_sbe_v2_2_dissect.sell_order_id(buffer, index, packet, parent)

  -- Trade Conditions: Struct of 3 fields
  index, trade_conditions = smallx_orderbookfeed_sbe_v2_2_dissect.trade_conditions(buffer, index, packet, parent)

  return index
end

-- Dissect: Trades Group
smallx_orderbookfeed_sbe_v2_2_dissect.trades_group = function(buffer, offset, packet, parent, trades_group_index)
  if show.trades_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trades_group, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.trades_group_fields(buffer, offset, packet, parent, trades_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.trades_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.trades_group_fields(buffer, offset, packet, parent, trades_group_index)
  end
end

-- Calculate size of: Trades Groups
smallx_orderbookfeed_sbe_v2_2_size_of.trades_groups = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.group_dimension(buffer, offset + index)

  -- Calculate field size from count
  local trades_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + trades_group_count * 43

  return index
end

-- Display: Trades Groups
smallx_orderbookfeed_sbe_v2_2_display.trades_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trades Groups
smallx_orderbookfeed_sbe_v2_2_dissect.trades_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Dimension: Struct of 2 fields
  index, group_dimension = smallx_orderbookfeed_sbe_v2_2_dissect.group_dimension(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Trades Group
  for trades_group_index = 1, num_in_group do
    index, trades_group = smallx_orderbookfeed_sbe_v2_2_dissect.trades_group(buffer, index, packet, parent, trades_group_index)
  end

  return index
end

-- Dissect: Trades Groups
smallx_orderbookfeed_sbe_v2_2_dissect.trades_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trades_groups then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.trades_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.trades_groups(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trades_groups, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.trades_groups_fields(buffer, offset, packet, parent)
end

-- Size: Total Volume Quantity
smallx_orderbookfeed_sbe_v2_2_size_of.total_volume_quantity = 8

-- Display: Total Volume Quantity
smallx_orderbookfeed_sbe_v2_2_display.total_volume_quantity = function(value)
  return "Total Volume Quantity: "..value
end

-- Translate: Total Volume Quantity
translate.total_volume_quantity = function(raw)
  return raw:tonumber()
end

-- Dissect: Total Volume Quantity
smallx_orderbookfeed_sbe_v2_2_dissect.total_volume_quantity = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.total_volume_quantity
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.total_volume_quantity(raw)
  local display = smallx_orderbookfeed_sbe_v2_2_display.total_volume_quantity(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.total_volume_quantity, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Time Timestamp Optional
smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_time_timestamp_optional = 8

-- Display: Last Trade Time Timestamp Optional
smallx_orderbookfeed_sbe_v2_2_display.last_trade_time_timestamp_optional = function(value)
  return "Last Trade Time Timestamp Optional: "..value
end

-- Dissect: Last Trade Time Timestamp Optional
smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_time_timestamp_optional = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_time_timestamp_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = smallx_orderbookfeed_sbe_v2_2_display.last_trade_time_timestamp_optional(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.last_trade_time_timestamp_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Bust Message
smallx_orderbookfeed_sbe_v2_2_size_of.trade_bust_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.incremental_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_size

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_time_timestamp_optional

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.total_volume_quantity

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trades_groups(buffer, offset + index)

  return index
end

-- Display: Trade Bust Message
smallx_orderbookfeed_sbe_v2_2_display.trade_bust_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
smallx_orderbookfeed_sbe_v2_2_dissect.trade_bust_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Incremental Message Instructions: Struct of 8 fields
  index, incremental_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions(buffer, index, packet, parent)

  -- Last Trade Price: 8 Byte Signed Fixed Width Integer
  index, last_trade_price = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_price(buffer, index, packet, parent)

  -- Last Trade Size: 8 Byte Signed Fixed Width Integer
  index, last_trade_size = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_size(buffer, index, packet, parent)

  -- Last Trade Time Timestamp Optional: 8 Byte Signed Fixed Width Integer
  index, last_trade_time_timestamp_optional = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_time_timestamp_optional(buffer, index, packet, parent)

  -- Total Volume Quantity: 8 Byte Signed Fixed Width Integer
  index, total_volume_quantity = smallx_orderbookfeed_sbe_v2_2_dissect.total_volume_quantity(buffer, index, packet, parent)

  -- Trades Groups: Struct of 2 fields
  index, trades_groups = smallx_orderbookfeed_sbe_v2_2_dissect.trades_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
smallx_orderbookfeed_sbe_v2_2_dissect.trade_bust_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trade_bust_message then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.trade_bust_message(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.trade_bust_message(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_bust_message, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.trade_bust_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Correct Message
smallx_orderbookfeed_sbe_v2_2_size_of.trade_correct_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.incremental_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_size

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_time_timestamp_optional

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.total_volume_quantity

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trades_groups(buffer, offset + index)

  return index
end

-- Display: Trade Correct Message
smallx_orderbookfeed_sbe_v2_2_display.trade_correct_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correct Message
smallx_orderbookfeed_sbe_v2_2_dissect.trade_correct_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Incremental Message Instructions: Struct of 8 fields
  index, incremental_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions(buffer, index, packet, parent)

  -- Last Trade Price: 8 Byte Signed Fixed Width Integer
  index, last_trade_price = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_price(buffer, index, packet, parent)

  -- Last Trade Size: 8 Byte Signed Fixed Width Integer
  index, last_trade_size = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_size(buffer, index, packet, parent)

  -- Last Trade Time Timestamp Optional: 8 Byte Signed Fixed Width Integer
  index, last_trade_time_timestamp_optional = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_time_timestamp_optional(buffer, index, packet, parent)

  -- Total Volume Quantity: 8 Byte Signed Fixed Width Integer
  index, total_volume_quantity = smallx_orderbookfeed_sbe_v2_2_dissect.total_volume_quantity(buffer, index, packet, parent)

  -- Trades Groups: Struct of 2 fields
  index, trades_groups = smallx_orderbookfeed_sbe_v2_2_dissect.trades_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correct Message
smallx_orderbookfeed_sbe_v2_2_dissect.trade_correct_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trade_correct_message then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.trade_correct_message(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.trade_correct_message(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trade_correct_message, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.trade_correct_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trades Incremental Message
smallx_orderbookfeed_sbe_v2_2_size_of.trades_incremental_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.incremental_message_instructions

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_price

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_size

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.last_trade_time_timestamp_optional

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.total_volume_quantity

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trades_groups(buffer, offset + index)

  return index
end

-- Display: Trades Incremental Message
smallx_orderbookfeed_sbe_v2_2_display.trades_incremental_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trades Incremental Message
smallx_orderbookfeed_sbe_v2_2_dissect.trades_incremental_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Incremental Message Instructions: Struct of 8 fields
  index, incremental_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions(buffer, index, packet, parent)

  -- Last Trade Price: 8 Byte Signed Fixed Width Integer
  index, last_trade_price = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_price(buffer, index, packet, parent)

  -- Last Trade Size: 8 Byte Signed Fixed Width Integer
  index, last_trade_size = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_size(buffer, index, packet, parent)

  -- Last Trade Time Timestamp Optional: 8 Byte Signed Fixed Width Integer
  index, last_trade_time_timestamp_optional = smallx_orderbookfeed_sbe_v2_2_dissect.last_trade_time_timestamp_optional(buffer, index, packet, parent)

  -- Total Volume Quantity: 8 Byte Signed Fixed Width Integer
  index, total_volume_quantity = smallx_orderbookfeed_sbe_v2_2_dissect.total_volume_quantity(buffer, index, packet, parent)

  -- Trades Groups: Struct of 2 fields
  index, trades_groups = smallx_orderbookfeed_sbe_v2_2_dissect.trades_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Trades Incremental Message
smallx_orderbookfeed_sbe_v2_2_dissect.trades_incremental_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trades_incremental_message then
    local length = smallx_orderbookfeed_sbe_v2_2_size_of.trades_incremental_message(buffer, offset)
    local range = buffer(offset, length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.trades_incremental_message(buffer, packet, parent)
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.trades_incremental_message, range, display)
  end

  return smallx_orderbookfeed_sbe_v2_2_dissect.trades_incremental_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Trading Status Incremental Message
smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status_incremental_message = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_message_no

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.transact_time

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.trading_session_date

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.incremental_message_instructions

  return index
end

-- Display: Instrument Trading Status Incremental Message
smallx_orderbookfeed_sbe_v2_2_display.instrument_trading_status_incremental_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Trading Status Incremental Message
smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status_incremental_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instrument Message No: 8 Byte Signed Fixed Width Integer
  index, instrument_message_no = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_message_no(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = smallx_orderbookfeed_sbe_v2_2_dissect.transact_time(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = smallx_orderbookfeed_sbe_v2_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 6 values
  index, instrument_trading_status = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status(buffer, index, packet, parent)

  -- Incremental Message Instructions: Struct of 8 fields
  index, incremental_message_instructions = smallx_orderbookfeed_sbe_v2_2_dissect.incremental_message_instructions(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Trading Status Incremental Message
smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status_incremental_message = function(buffer, offset, packet, parent)
  if show.instrument_trading_status_incremental_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.instrument_trading_status_incremental_message, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status_incremental_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.instrument_trading_status_incremental_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status_incremental_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
smallx_orderbookfeed_sbe_v2_2_size_of.payload = function(buffer, offset, template_id)
  -- Size of Instrument Trading Status Incremental Message
  if template_id == 3 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.instrument_trading_status_incremental_message(buffer, offset)
  end
  -- Size of Trades Incremental Message
  if template_id == 4 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.trades_incremental_message(buffer, offset)
  end
  -- Size of Trade Correct Message
  if template_id == 5 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.trade_correct_message(buffer, offset)
  end
  -- Size of Trade Bust Message
  if template_id == 6 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.trade_bust_message(buffer, offset)
  end
  -- Size of Order Book Incremental Message
  if template_id == 7 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.order_book_incremental_message(buffer, offset)
  end
  -- Size of Market Summary Incremental Message
  if template_id == 8 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.market_summary_incremental_message(buffer, offset)
  end
  -- Size of Order Book Snapshot Message
  if template_id == 11 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.order_book_snapshot_message(buffer, offset)
  end
  -- Size of Market Summary Snapshot Message
  if template_id == 12 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.market_summary_snapshot_message(buffer, offset)
  end
  -- Size of Index Value Snapshot Message
  if template_id == 13 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.index_value_snapshot_message(buffer, offset)
  end
  -- Size of Single Instrument Definition Incremental V 2 Message
  if template_id == 14 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.single_instrument_definition_incremental_v_2_message(buffer, offset)
  end
  -- Size of Multileg Definition Incremental V 2 Message
  if template_id == 15 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_incremental_v_2_message(buffer, offset)
  end
  -- Size of Single Instrument Definition Snapshot V 2 Message
  if template_id == 16 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.single_instrument_definition_snapshot_v_2_message(buffer, offset)
  end
  -- Size of Multileg Definition Snapshot V 2 Message
  if template_id == 17 then
    return smallx_orderbookfeed_sbe_v2_2_size_of.multileg_definition_snapshot_v_2_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
smallx_orderbookfeed_sbe_v2_2_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
smallx_orderbookfeed_sbe_v2_2_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Trading Status Incremental Message
  if template_id == 3 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.instrument_trading_status_incremental_message(buffer, offset, packet, parent)
  end
  -- Dissect Trades Incremental Message
  if template_id == 4 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.trades_incremental_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correct Message
  if template_id == 5 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.trade_correct_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if template_id == 6 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.trade_bust_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Incremental Message
  if template_id == 7 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.order_book_incremental_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Summary Incremental Message
  if template_id == 8 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_incremental_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Snapshot Message
  if template_id == 11 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.order_book_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Summary Snapshot Message
  if template_id == 12 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.market_summary_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Index Value Snapshot Message
  if template_id == 13 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.index_value_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Instrument Definition Incremental V 2 Message
  if template_id == 14 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_incremental_v_2_message(buffer, offset, packet, parent)
  end
  -- Dissect Multileg Definition Incremental V 2 Message
  if template_id == 15 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_incremental_v_2_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Instrument Definition Snapshot V 2 Message
  if template_id == 16 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.single_instrument_definition_snapshot_v_2_message(buffer, offset, packet, parent)
  end
  -- Dissect Multileg Definition Snapshot V 2 Message
  if template_id == 17 then
    return smallx_orderbookfeed_sbe_v2_2_dissect.multileg_definition_snapshot_v_2_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
smallx_orderbookfeed_sbe_v2_2_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return smallx_orderbookfeed_sbe_v2_2_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = smallx_orderbookfeed_sbe_v2_2_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = smallx_orderbookfeed_sbe_v2_2_display.payload(buffer, packet, parent)
  local element = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.payload, range, display)

  return smallx_orderbookfeed_sbe_v2_2_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
smallx_orderbookfeed_sbe_v2_2_size_of.version = 2

-- Display: Version
smallx_orderbookfeed_sbe_v2_2_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
smallx_orderbookfeed_sbe_v2_2_dissect.version = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.version(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
smallx_orderbookfeed_sbe_v2_2_size_of.schema_id = 2

-- Display: Schema Id
smallx_orderbookfeed_sbe_v2_2_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
smallx_orderbookfeed_sbe_v2_2_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
smallx_orderbookfeed_sbe_v2_2_size_of.template_id = 2

-- Display: Template Id
smallx_orderbookfeed_sbe_v2_2_display.template_id = function(value)
  if value == 3 then
    return "Template Id: Instrument Trading Status Incremental Message (3)"
  end
  if value == 4 then
    return "Template Id: Trades Incremental Message (4)"
  end
  if value == 5 then
    return "Template Id: Trade Correct Message (5)"
  end
  if value == 6 then
    return "Template Id: Trade Bust Message (6)"
  end
  if value == 7 then
    return "Template Id: Order Book Incremental Message (7)"
  end
  if value == 8 then
    return "Template Id: Market Summary Incremental Message (8)"
  end
  if value == 11 then
    return "Template Id: Order Book Snapshot Message (11)"
  end
  if value == 12 then
    return "Template Id: Market Summary Snapshot Message (12)"
  end
  if value == 13 then
    return "Template Id: Index Value Snapshot Message (13)"
  end
  if value == 14 then
    return "Template Id: Single Instrument Definition Incremental V 2 Message (14)"
  end
  if value == 15 then
    return "Template Id: Multileg Definition Incremental V 2 Message (15)"
  end
  if value == 16 then
    return "Template Id: Single Instrument Definition Snapshot V 2 Message (16)"
  end
  if value == 17 then
    return "Template Id: Multileg Definition Snapshot V 2 Message (17)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
smallx_orderbookfeed_sbe_v2_2_dissect.template_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.template_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
smallx_orderbookfeed_sbe_v2_2_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.block_length

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.template_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.schema_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.version

  return index
end

-- Display: Message Header
smallx_orderbookfeed_sbe_v2_2_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
smallx_orderbookfeed_sbe_v2_2_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = smallx_orderbookfeed_sbe_v2_2_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, template_id = smallx_orderbookfeed_sbe_v2_2_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = smallx_orderbookfeed_sbe_v2_2_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = smallx_orderbookfeed_sbe_v2_2_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
smallx_orderbookfeed_sbe_v2_2_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.message_header, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Size: Frame Length
smallx_orderbookfeed_sbe_v2_2_size_of.frame_length = 1

-- Display: Frame Length
smallx_orderbookfeed_sbe_v2_2_display.frame_length = function(value)
  return "Frame Length: "..value
end

-- Dissect: Frame Length
smallx_orderbookfeed_sbe_v2_2_dissect.frame_length = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.frame_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.frame_length(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.frame_length, range, value, display)

  return offset + length, value
end

-- Display: Sbe Frame
smallx_orderbookfeed_sbe_v2_2_display.sbe_frame = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Frame
smallx_orderbookfeed_sbe_v2_2_dissect.sbe_frame_fields = function(buffer, offset, packet, parent, size_of_sbe_frame)
  local index = offset

  -- Frame Length: 1 Byte Unsigned Fixed Width Integer
  index, frame_length = smallx_orderbookfeed_sbe_v2_2_dissect.frame_length(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = smallx_orderbookfeed_sbe_v2_2_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = smallx_orderbookfeed_sbe_v2_2_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Frame
smallx_orderbookfeed_sbe_v2_2_dissect.sbe_frame = function(buffer, offset, packet, parent, size_of_sbe_frame)
  local index = offset + size_of_sbe_frame

  -- Optionally add group/struct element to protocol tree
  if show.sbe_frame then
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.sbe_frame, buffer(offset, 0))
    local current = smallx_orderbookfeed_sbe_v2_2_dissect.sbe_frame_fields(buffer, offset, packet, parent, size_of_sbe_frame)
    parent:set_len(size_of_sbe_frame)
    local display = smallx_orderbookfeed_sbe_v2_2_display.sbe_frame(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    smallx_orderbookfeed_sbe_v2_2_dissect.sbe_frame_fields(buffer, offset, packet, parent, size_of_sbe_frame)

    return index
  end
end

-- Size: Message Count
smallx_orderbookfeed_sbe_v2_2_size_of.message_count = 1

-- Display: Message Count
smallx_orderbookfeed_sbe_v2_2_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
smallx_orderbookfeed_sbe_v2_2_dissect.message_count = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.message_count(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Message Sequence
smallx_orderbookfeed_sbe_v2_2_size_of.message_sequence = 4

-- Display: Message Sequence
smallx_orderbookfeed_sbe_v2_2_display.message_sequence = function(value)
  return "Message Sequence: "..value
end

-- Dissect: Message Sequence
smallx_orderbookfeed_sbe_v2_2_dissect.message_sequence = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.message_sequence
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_orderbookfeed_sbe_v2_2_display.message_sequence(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.message_sequence, range, value, display)

  return offset + length, value
end

-- Size: Packet Flags
smallx_orderbookfeed_sbe_v2_2_size_of.packet_flags = 1

-- Display: Packet Flags
smallx_orderbookfeed_sbe_v2_2_display.packet_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Incarnation End flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Incarnation End|"
  end
  -- Is Retransmission flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Retransmission|"
  end
  -- Is Administrative flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Administrative|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Packet Flags
smallx_orderbookfeed_sbe_v2_2_dissect.packet_flags_bits = function(buffer, offset, packet, parent)

  -- Incarnation End: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.incarnation_end, buffer(offset, 1))

  -- Retransmission: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.retransmission, buffer(offset, 1))

  -- Administrative: 1 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.administrative, buffer(offset, 1))

  -- Reserved 5: 5 Bit
  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.reserved_5, buffer(offset, 1))
end

-- Dissect: Packet Flags
smallx_orderbookfeed_sbe_v2_2_dissect.packet_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = smallx_orderbookfeed_sbe_v2_2_display.packet_flags(range, packet, parent)
  local element = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.packet_flags, range, display)

  if show.packet_flags then
    smallx_orderbookfeed_sbe_v2_2_dissect.packet_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Source
smallx_orderbookfeed_sbe_v2_2_size_of.source = 1

-- Display: Source
smallx_orderbookfeed_sbe_v2_2_display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
smallx_orderbookfeed_sbe_v2_2_dissect.source = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.source(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.source, range, value, display)

  return offset + length, value
end

-- Size: Incarnation
smallx_orderbookfeed_sbe_v2_2_size_of.incarnation = 2

-- Display: Incarnation
smallx_orderbookfeed_sbe_v2_2_display.incarnation = function(value)
  return "Incarnation: "..value
end

-- Dissect: Incarnation
smallx_orderbookfeed_sbe_v2_2_dissect.incarnation = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.incarnation
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_orderbookfeed_sbe_v2_2_display.incarnation(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.incarnation, range, value, display)

  return offset + length, value
end

-- Size: Channel Id
smallx_orderbookfeed_sbe_v2_2_size_of.channel_id = 1

-- Display: Channel Id
smallx_orderbookfeed_sbe_v2_2_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
smallx_orderbookfeed_sbe_v2_2_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = smallx_orderbookfeed_sbe_v2_2_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_orderbookfeed_sbe_v2_2_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
smallx_orderbookfeed_sbe_v2_2_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.channel_id

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.incarnation

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.source

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.packet_flags

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.message_sequence

  index = index + smallx_orderbookfeed_sbe_v2_2_size_of.message_count

  return index
end

-- Display: Packet Header
smallx_orderbookfeed_sbe_v2_2_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
smallx_orderbookfeed_sbe_v2_2_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = smallx_orderbookfeed_sbe_v2_2_dissect.channel_id(buffer, index, packet, parent)

  -- Incarnation: 2 Byte Signed Fixed Width Integer
  index, incarnation = smallx_orderbookfeed_sbe_v2_2_dissect.incarnation(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = smallx_orderbookfeed_sbe_v2_2_dissect.source(buffer, index, packet, parent)

  -- Packet Flags: Struct of 4 fields
  index, packet_flags = smallx_orderbookfeed_sbe_v2_2_dissect.packet_flags(buffer, index, packet, parent)

  -- Message Sequence: 4 Byte Signed Fixed Width Integer
  index, message_sequence = smallx_orderbookfeed_sbe_v2_2_dissect.message_sequence(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = smallx_orderbookfeed_sbe_v2_2_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
smallx_orderbookfeed_sbe_v2_2_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_orderbookfeed_sbe_v2_2.fields.packet_header, buffer(offset, 0))
    local index = smallx_orderbookfeed_sbe_v2_2_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_orderbookfeed_sbe_v2_2_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_orderbookfeed_sbe_v2_2_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
smallx_orderbookfeed_sbe_v2_2_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = smallx_orderbookfeed_sbe_v2_2_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Sbe Frame
  local end_of_payload = buffer:len()

  -- Sbe Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Frame Length
    local frame_length = buffer(index, 1):uint()

    -- Runtime Size Of: Sbe Frame
    index, sbe_frame = smallx_orderbookfeed_sbe_v2_2_dissect.sbe_frame(buffer, index, packet, parent, frame_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_smallx_orderbookfeed_sbe_v2_2.init()
end

-- Dissector for SmallX OrderBookFeed Sbe 2.2
function omi_smallx_orderbookfeed_sbe_v2_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_smallx_orderbookfeed_sbe_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_smallx_orderbookfeed_sbe_v2_2, buffer(), omi_smallx_orderbookfeed_sbe_v2_2.description, "("..buffer:len().." Bytes)")
  return smallx_orderbookfeed_sbe_v2_2_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_smallx_orderbookfeed_sbe_v2_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_smallx_orderbookfeed_sbe_v2_2_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(15, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(17, 2):le_uint()

  if value == 6 then
    return true
  end

  return false
end

-- Dissector Heuristic for SmallX OrderBookFeed Sbe 2.2
local function omi_smallx_orderbookfeed_sbe_v2_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_smallx_orderbookfeed_sbe_v2_2_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_smallx_orderbookfeed_sbe_v2_2
  omi_smallx_orderbookfeed_sbe_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for SmallX OrderBookFeed Sbe 2.2
omi_smallx_orderbookfeed_sbe_v2_2:register_heuristic("udp", omi_smallx_orderbookfeed_sbe_v2_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: The Small Exchange
--   Version: 2.2
--   Date: Tuesday, October 12, 2021
--   Specification: Small Exchange Market Data Feed 2.2.pdf
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
