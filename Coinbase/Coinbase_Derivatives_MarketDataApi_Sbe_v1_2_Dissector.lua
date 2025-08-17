-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Coinbase Derivatives MarketDataApi Sbe 1.2 Protocol
local coinbase_derivatives_marketdataapi_sbe_v1_2 = Proto("Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.Lua", "Coinbase Derivatives MarketDataApi Sbe 1.2")

-- Component Tables
local show = {}
local format = {}
local coinbase_derivatives_marketdataapi_sbe_v1_2_display = {}
local coinbase_derivatives_marketdataapi_sbe_v1_2_dissect = {}
local coinbase_derivatives_marketdataapi_sbe_v1_2_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Coinbase Derivatives MarketDataApi Sbe 1.2 Fields
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.aggressor_order_id = ProtoField.new("Aggressor Order Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.aggressororderid", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.aggressor_receive_time = ProtoField.new("Aggressor Receive Time", "coinbase.derivatives.marketdataapi.sbe.v1.2.aggressorreceivetime", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.2.beginseqnum", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_ask_implied_price = ProtoField.new("Best Ask Implied Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.bestaskimpliedprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_ask_implied_qty = ProtoField.new("Best Ask Implied Qty", "coinbase.derivatives.marketdataapi.sbe.v1.2.bestaskimpliedqty", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_bid_implied_price = ProtoField.new("Best Bid Implied Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.bestbidimpliedprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_bid_implied_qty = ProtoField.new("Best Bid Implied Qty", "coinbase.derivatives.marketdataapi.sbe.v1.2.bestbidimpliedqty", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_price = ProtoField.new("Best Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.bestprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_qty = ProtoField.new("Best Qty", "coinbase.derivatives.marketdataapi.sbe.v1.2.bestqty", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.block_length = ProtoField.new("Block Length", "coinbase.derivatives.marketdataapi.sbe.v1.2.blocklength", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.buy_order_id = ProtoField.new("Buy Order Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.buyorderid", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.cfi_code = ProtoField.new("Cfi Code", "coinbase.derivatives.marketdataapi.sbe.v1.2.cficode", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.channel_id = ProtoField.new("Channel Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.channelid", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.close_price = ProtoField.new("Close Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.closeprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.contract_size = ProtoField.new("Contract Size", "coinbase.derivatives.marketdataapi.sbe.v1.2.contractsize", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.currency = ProtoField.new("Currency", "coinbase.derivatives.marketdataapi.sbe.v1.2.currency", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.day_open_price = ProtoField.new("Day Open Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.dayopenprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.deepest_price = ProtoField.new("Deepest Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.deepestprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.definition_flags = ProtoField.new("Definition Flags", "coinbase.derivatives.marketdataapi.sbe.v1.2.definitionflags", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.description = ProtoField.new("Description", "coinbase.derivatives.marketdataapi.sbe.v1.2.description", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.details = ProtoField.new("Details", "coinbase.derivatives.marketdataapi.sbe.v1.2.details", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.first_trading_session_date = ProtoField.new("First Trading Session Date", "coinbase.derivatives.marketdataapi.sbe.v1.2.firsttradingsessiondate", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.frame_length = ProtoField.new("Frame Length", "coinbase.derivatives.marketdataapi.sbe.v1.2.framelength", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.high_price = ProtoField.new("High Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.highprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.indicative_open_price = ProtoField.new("Indicative Open Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.indicativeopenprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instr_header = ProtoField.new("Instr Header", "coinbase.derivatives.marketdataapi.sbe.v1.2.instrheader", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instr_seq_num = ProtoField.new("Instr Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.2.instrseqnum", ftypes.UINT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instrument_flags = ProtoField.new("Instrument Flags", "coinbase.derivatives.marketdataapi.sbe.v1.2.instrumentflags", ftypes.UINT8)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instrument_id = ProtoField.new("Instrument Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.instrumentid", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instrument_side = ProtoField.new("Instrument Side", "coinbase.derivatives.marketdataapi.sbe.v1.2.instrumentside", ftypes.INT8)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.is_prior_settlement_theoretical = ProtoField.new("Is Prior Settlement Theoretical", "coinbase.derivatives.marketdataapi.sbe.v1.2.ispriorsettlementtheoretical", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_instr_seq_num = ProtoField.new("Last Instr Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.2.lastinstrseqnum", ftypes.UINT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_trade_price = ProtoField.new("Last Trade Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.lasttradeprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_trade_qty = ProtoField.new("Last Trade Qty", "coinbase.derivatives.marketdataapi.sbe.v1.2.lasttradeqty", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_trade_time = ProtoField.new("Last Trade Time", "coinbase.derivatives.marketdataapi.sbe.v1.2.lasttradetime", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_trading_session_date = ProtoField.new("Last Trading Session Date", "coinbase.derivatives.marketdataapi.sbe.v1.2.lasttradingsessiondate", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.leg_1_instrument_id = ProtoField.new("Leg 1 Instrument Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.leg1instrumentid", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.leg_2_instrument_id = ProtoField.new("Leg 2 Instrument Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.leg2instrumentid", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.limit_down_price = ProtoField.new("Limit Down Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.limitdownprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.limit_up_price = ProtoField.new("Limit Up Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.limitupprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.low_price = ProtoField.new("Low Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.lowprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.match_id = ProtoField.new("Match Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.matchid", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.message_count = ProtoField.new("Message Count", "coinbase.derivatives.marketdataapi.sbe.v1.2.messagecount", ftypes.UINT8)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.message_header = ProtoField.new("Message Header", "coinbase.derivatives.marketdataapi.sbe.v1.2.messageheader", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.new_leg_1_price = ProtoField.new("New Leg 1 Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.newleg1price", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.new_leg_2_price = ProtoField.new("New Leg 2 Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.newleg2price", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.new_price = ProtoField.new("New Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.newprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_ask_implied_price = ProtoField.new("Next Ask Implied Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.nextaskimpliedprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_ask_implied_qty = ProtoField.new("Next Ask Implied Qty", "coinbase.derivatives.marketdataapi.sbe.v1.2.nextaskimpliedqty", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_bid_implied_price = ProtoField.new("Next Bid Implied Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.nextbidimpliedprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_bid_implied_qty = ProtoField.new("Next Bid Implied Qty", "coinbase.derivatives.marketdataapi.sbe.v1.2.nextbidimpliedqty", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_price = ProtoField.new("Next Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.nextprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_qty = ProtoField.new("Next Qty", "coinbase.derivatives.marketdataapi.sbe.v1.2.nextqty", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.old_leg_1_price = ProtoField.new("Old Leg 1 Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.oldleg1price", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.old_leg_2_price = ProtoField.new("Old Leg 2 Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.oldleg2price", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.old_price = ProtoField.new("Old Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.oldprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.open_interest = ProtoField.new("Open Interest", "coinbase.derivatives.marketdataapi.sbe.v1.2.openinterest", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_count = ProtoField.new("Order Count", "coinbase.derivatives.marketdataapi.sbe.v1.2.ordercount", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_id = ProtoField.new("Order Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.orderid", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.packet = ProtoField.new("Packet", "coinbase.derivatives.marketdataapi.sbe.v1.2.packet", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.packet_flags = ProtoField.new("Packet Flags", "coinbase.derivatives.marketdataapi.sbe.v1.2.packetflags", ftypes.UINT8)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.packet_header = ProtoField.new("Packet Header", "coinbase.derivatives.marketdataapi.sbe.v1.2.packetheader", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.padding = ProtoField.new("Padding", "coinbase.derivatives.marketdataapi.sbe.v1.2.padding", ftypes.BYTES)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.payload = ProtoField.new("Payload", "coinbase.derivatives.marketdataapi.sbe.v1.2.payload", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.price = ProtoField.new("Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.price", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.price_increment = ProtoField.new("Price Increment", "coinbase.derivatives.marketdataapi.sbe.v1.2.priceincrement", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.prior_settlement_price = ProtoField.new("Prior Settlement Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.priorsettlementprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.product_code = ProtoField.new("Product Code", "coinbase.derivatives.marketdataapi.sbe.v1.2.productcode", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.product_group = ProtoField.new("Product Group", "coinbase.derivatives.marketdataapi.sbe.v1.2.productgroup", ftypes.INT8)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.product_id = ProtoField.new("Product Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.productid", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.quantity = ProtoField.new("Quantity", "coinbase.derivatives.marketdataapi.sbe.v1.2.quantity", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.reason = ProtoField.new("Reason", "coinbase.derivatives.marketdataapi.sbe.v1.2.reason", ftypes.INT8)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.reserved = ProtoField.new("Reserved", "coinbase.derivatives.marketdataapi.sbe.v1.2.reserved", ftypes.INT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.reserved_15 = ProtoField.new("Reserved 15", "coinbase.derivatives.marketdataapi.sbe.v1.2.reserved15", ftypes.UINT16, nil, base.DEC, 0xFFFE)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.retry_delay_nanos = ProtoField.new("Retry Delay Nanos", "coinbase.derivatives.marketdataapi.sbe.v1.2.retrydelaynanos", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.sbe_message = ProtoField.new("Sbe Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.sbemessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.schema_id = ProtoField.new("Schema Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.schemaid", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.sell_order_id = ProtoField.new("Sell Order Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.sellorderid", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.sending_time = ProtoField.new("Sending Time", "coinbase.derivatives.marketdataapi.sbe.v1.2.sendingtime", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.seq_num = ProtoField.new("Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.2.seqnum", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.settlement_price = ProtoField.new("Settlement Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.settlementprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.snapshot_instrument_id = ProtoField.new("Snapshot Instrument Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.snapshotinstrumentid", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.snapshot_seq_num = ProtoField.new("Snapshot Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.2.snapshotseqnum", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.spread_buy_convention = ProtoField.new("Spread Buy Convention", "coinbase.derivatives.marketdataapi.sbe.v1.2.spreadbuyconvention", ftypes.INT8)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.stat_type = ProtoField.new("Stat Type", "coinbase.derivatives.marketdataapi.sbe.v1.2.stattype", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.symbol = ProtoField.new("Symbol", "coinbase.derivatives.marketdataapi.sbe.v1.2.symbol", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.template_id = ProtoField.new("Template Id", "coinbase.derivatives.marketdataapi.sbe.v1.2.templateid", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_volume = ProtoField.new("Trade Volume", "coinbase.derivatives.marketdataapi.sbe.v1.2.tradevolume", ftypes.INT32)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trading_session_date = ProtoField.new("Trading Session Date", "coinbase.derivatives.marketdataapi.sbe.v1.2.tradingsessiondate", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trading_status = ProtoField.new("Trading Status", "coinbase.derivatives.marketdataapi.sbe.v1.2.tradingstatus", ftypes.INT8)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.transact_time = ProtoField.new("Transact Time", "coinbase.derivatives.marketdataapi.sbe.v1.2.transacttime", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.version = ProtoField.new("Version", "coinbase.derivatives.marketdataapi.sbe.v1.2.version", ftypes.UINT16)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.vwap_price = ProtoField.new("Vwap Price", "coinbase.derivatives.marketdataapi.sbe.v1.2.vwapprice", ftypes.INT64)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.vwap_price_optional = ProtoField.new("Vwap Price Optional", "coinbase.derivatives.marketdataapi.sbe.v1.2.vwappriceoptional", ftypes.INT64)

-- Coinbase Derivatives MarketDataApi Sbe 1.2 messages
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.endofsnapshotmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.implied_order_update_message = ProtoField.new("Implied Order Update Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.impliedorderupdatemessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.market_stat_message = ProtoField.new("Market Stat Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.marketstatmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.open_interest_message = ProtoField.new("Open Interest Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.openinterestmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_delete_message = ProtoField.new("Order Delete Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.orderdeletemessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_put_message = ProtoField.new("Order Put Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.orderputmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_snapshot_message = ProtoField.new("Order Snapshot Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.ordersnapshotmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.outright_instrument_definition_message = ProtoField.new("Outright Instrument Definition Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.outrightinstrumentdefinitionmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.retransmit_reject_message = ProtoField.new("Retransmit Reject Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.retransmitrejectmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.retransmit_request_message = ProtoField.new("Retransmit Request Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.retransmitrequestmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.spread_instrument_definition_message = ProtoField.new("Spread Instrument Definition Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.spreadinstrumentdefinitionmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.spread_trade_amend_message = ProtoField.new("Spread Trade Amend Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.spreadtradeamendmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.start_of_outright_instrument_snapshot_message = ProtoField.new("Start Of Outright Instrument Snapshot Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.startofoutrightinstrumentsnapshotmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.start_of_spread_instrument_snapshot_message = ProtoField.new("Start Of Spread Instrument Snapshot Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.startofspreadinstrumentsnapshotmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_amend_message = ProtoField.new("Trade Amend Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.tradeamendmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.tradebustmessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_message = ProtoField.new("Trade Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.trademessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_session_volume_message = ProtoField.new("Trade Session Volume Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.tradesessionvolumemessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_summary_message = ProtoField.new("Trade Summary Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.tradesummarymessage", ftypes.STRING)
coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trading_status_update_message = ProtoField.new("Trading Status Update Message", "coinbase.derivatives.marketdataapi.sbe.v1.2.tradingstatusupdatemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Coinbase Derivatives MarketDataApi Sbe 1.2 Element Dissection Options
show.definition_flags = true
show.end_of_snapshot_message = true
show.implied_order_update_message = true
show.instr_header = true
show.market_stat_message = true
show.message_header = true
show.open_interest_message = true
show.order_delete_message = true
show.order_put_message = true
show.order_snapshot_message = true
show.outright_instrument_definition_message = true
show.packet = true
show.packet_header = true
show.retransmit_reject_message = true
show.retransmit_request_message = true
show.sbe_message = true
show.spread_instrument_definition_message = true
show.spread_trade_amend_message = true
show.start_of_outright_instrument_snapshot_message = true
show.start_of_spread_instrument_snapshot_message = true
show.trade_amend_message = true
show.trade_bust_message = true
show.trade_message = true
show.trade_session_volume_message = true
show.trade_summary_message = true
show.trading_status_update_message = true
show.payload = false

-- Register Coinbase Derivatives MarketDataApi Sbe 1.2 Show Options
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_definition_flags = Pref.bool("Show Definition Flags", show.definition_flags, "Parse and add Definition Flags to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_end_of_snapshot_message = Pref.bool("Show End Of Snapshot Message", show.end_of_snapshot_message, "Parse and add End Of Snapshot Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_implied_order_update_message = Pref.bool("Show Implied Order Update Message", show.implied_order_update_message, "Parse and add Implied Order Update Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_instr_header = Pref.bool("Show Instr Header", show.instr_header, "Parse and add Instr Header to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_market_stat_message = Pref.bool("Show Market Stat Message", show.market_stat_message, "Parse and add Market Stat Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_open_interest_message = Pref.bool("Show Open Interest Message", show.open_interest_message, "Parse and add Open Interest Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_order_put_message = Pref.bool("Show Order Put Message", show.order_put_message, "Parse and add Order Put Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_order_snapshot_message = Pref.bool("Show Order Snapshot Message", show.order_snapshot_message, "Parse and add Order Snapshot Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_outright_instrument_definition_message = Pref.bool("Show Outright Instrument Definition Message", show.outright_instrument_definition_message, "Parse and add Outright Instrument Definition Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_retransmit_reject_message = Pref.bool("Show Retransmit Reject Message", show.retransmit_reject_message, "Parse and add Retransmit Reject Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_retransmit_request_message = Pref.bool("Show Retransmit Request Message", show.retransmit_request_message, "Parse and add Retransmit Request Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_spread_instrument_definition_message = Pref.bool("Show Spread Instrument Definition Message", show.spread_instrument_definition_message, "Parse and add Spread Instrument Definition Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_spread_trade_amend_message = Pref.bool("Show Spread Trade Amend Message", show.spread_trade_amend_message, "Parse and add Spread Trade Amend Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_start_of_outright_instrument_snapshot_message = Pref.bool("Show Start Of Outright Instrument Snapshot Message", show.start_of_outright_instrument_snapshot_message, "Parse and add Start Of Outright Instrument Snapshot Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_start_of_spread_instrument_snapshot_message = Pref.bool("Show Start Of Spread Instrument Snapshot Message", show.start_of_spread_instrument_snapshot_message, "Parse and add Start Of Spread Instrument Snapshot Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_amend_message = Pref.bool("Show Trade Amend Message", show.trade_amend_message, "Parse and add Trade Amend Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_bust_message = Pref.bool("Show Trade Bust Message", show.trade_bust_message, "Parse and add Trade Bust Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_session_volume_message = Pref.bool("Show Trade Session Volume Message", show.trade_session_volume_message, "Parse and add Trade Session Volume Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_summary_message = Pref.bool("Show Trade Summary Message", show.trade_summary_message, "Parse and add Trade Summary Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trading_status_update_message = Pref.bool("Show Trading Status Update Message", show.trading_status_update_message, "Parse and add Trading Status Update Message to protocol tree")
coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function coinbase_derivatives_marketdataapi_sbe_v1_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.definition_flags ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_definition_flags then
    show.definition_flags = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_definition_flags
    changed = true
  end
  if show.end_of_snapshot_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_end_of_snapshot_message then
    show.end_of_snapshot_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_end_of_snapshot_message
    changed = true
  end
  if show.implied_order_update_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_implied_order_update_message then
    show.implied_order_update_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_implied_order_update_message
    changed = true
  end
  if show.instr_header ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_instr_header then
    show.instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_instr_header
    changed = true
  end
  if show.market_stat_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_market_stat_message then
    show.market_stat_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_market_stat_message
    changed = true
  end
  if show.message_header ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_message_header then
    show.message_header = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_message_header
    changed = true
  end
  if show.open_interest_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_open_interest_message then
    show.open_interest_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_open_interest_message
    changed = true
  end
  if show.order_delete_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_order_delete_message then
    show.order_delete_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_order_delete_message
    changed = true
  end
  if show.order_put_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_order_put_message then
    show.order_put_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_order_put_message
    changed = true
  end
  if show.order_snapshot_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_order_snapshot_message then
    show.order_snapshot_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_order_snapshot_message
    changed = true
  end
  if show.outright_instrument_definition_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_outright_instrument_definition_message then
    show.outright_instrument_definition_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_outright_instrument_definition_message
    changed = true
  end
  if show.packet ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_packet then
    show.packet = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_packet_header then
    show.packet_header = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_packet_header
    changed = true
  end
  if show.retransmit_reject_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_retransmit_reject_message then
    show.retransmit_reject_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_retransmit_reject_message
    changed = true
  end
  if show.retransmit_request_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_retransmit_request_message then
    show.retransmit_request_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_retransmit_request_message
    changed = true
  end
  if show.sbe_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_sbe_message then
    show.sbe_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_sbe_message
    changed = true
  end
  if show.spread_instrument_definition_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_spread_instrument_definition_message then
    show.spread_instrument_definition_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_spread_instrument_definition_message
    changed = true
  end
  if show.spread_trade_amend_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_spread_trade_amend_message then
    show.spread_trade_amend_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_spread_trade_amend_message
    changed = true
  end
  if show.start_of_outright_instrument_snapshot_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_start_of_outright_instrument_snapshot_message then
    show.start_of_outright_instrument_snapshot_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_start_of_outright_instrument_snapshot_message
    changed = true
  end
  if show.start_of_spread_instrument_snapshot_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_start_of_spread_instrument_snapshot_message then
    show.start_of_spread_instrument_snapshot_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_start_of_spread_instrument_snapshot_message
    changed = true
  end
  if show.trade_amend_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_amend_message then
    show.trade_amend_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_amend_message
    changed = true
  end
  if show.trade_bust_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_bust_message then
    show.trade_bust_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_bust_message
    changed = true
  end
  if show.trade_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_message then
    show.trade_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_message
    changed = true
  end
  if show.trade_session_volume_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_session_volume_message then
    show.trade_session_volume_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_session_volume_message
    changed = true
  end
  if show.trade_summary_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_summary_message then
    show.trade_summary_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trade_summary_message
    changed = true
  end
  if show.trading_status_update_message ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trading_status_update_message then
    show.trading_status_update_message = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_trading_status_update_message
    changed = true
  end
  if show.payload ~= coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_payload then
    show.payload = coinbase_derivatives_marketdataapi_sbe_v1_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Coinbase Derivatives MarketDataApi Sbe 1.2
-----------------------------------------------------------------------

-- Display: Padding
coinbase_derivatives_marketdataapi_sbe_v1_2_display.padding = function(value)
  return "Padding: "..value
end

-- Dissect runtime sized field: Padding
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.padding = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.padding(value, buffer, offset, packet, parent, size)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.padding, range, value, display)

  return offset + size
end

-- Size: Reason
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.reason = 1

-- Display: Reason
coinbase_derivatives_marketdataapi_sbe_v1_2_display.reason = function(value)
  if value == 1 then
    return "Reason: Seq Too Low (1)"
  end
  if value == 2 then
    return "Reason: Seq Too High (2)"
  end
  if value == 3 then
    return "Reason: Rate Limit Exceeded (3)"
  end
  if value == 4 then
    return "Reason: Other Error (4)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.reason = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.reason
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.reason(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Details
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.details = 40

-- Display: Details
coinbase_derivatives_marketdataapi_sbe_v1_2_display.details = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Details: No Value"
  end

  return "Details: "..value
end

-- Dissect: Details
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.details = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.details
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.details(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.details, range, value, display)

  return offset + length, value
end

-- Size: Retry Delay Nanos
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.retry_delay_nanos = 8

-- Display: Retry Delay Nanos
coinbase_derivatives_marketdataapi_sbe_v1_2_display.retry_delay_nanos = function(value)
  return "Retry Delay Nanos: "..value
end

-- Dissect: Retry Delay Nanos
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retry_delay_nanos = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.retry_delay_nanos
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.retry_delay_nanos(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.retry_delay_nanos, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Reject Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.retransmit_reject_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.retry_delay_nanos

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.details

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.reason

  return index
end

-- Display: Retransmit Reject Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.retransmit_reject_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Reject Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retry Delay Nanos: 8 Byte Signed Fixed Width Integer
  index, retry_delay_nanos = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retry_delay_nanos(buffer, index, packet, parent)

  -- Details: 40 Byte Ascii String
  index, details = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.details(buffer, index, packet, parent)

  -- Reason: 1 Byte Signed Fixed Width Integer Enum with 4 values
  index, reason = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_reject_message = function(buffer, offset, packet, parent)
  if show.retransmit_reject_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.retransmit_reject_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_reject_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.retransmit_reject_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_reject_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Message Count
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.message_count = 1

-- Display: Message Count
coinbase_derivatives_marketdataapi_sbe_v1_2_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.message_count = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.message_count(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Begin Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.begin_seq_num = 8

-- Display: Begin Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_display.begin_seq_num = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.begin_seq_num = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.begin_seq_num
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.begin_seq_num(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Request Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.retransmit_request_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.begin_seq_num

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.message_count

  return index
end

-- Display: Retransmit Request Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.retransmit_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 8 Byte Signed Fixed Width Integer
  index, begin_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.begin_seq_num(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_request_message = function(buffer, offset, packet, parent)
  if show.retransmit_request_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.retransmit_request_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_request_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.retransmit_request_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_request_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Definition Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.definition_flags = 2

-- Display: Definition Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_display.definition_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Is Prior Settlement Theoretical flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Is Prior Settlement Theoretical|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Definition Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.definition_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved 15: 15 Bit
  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.reserved_15, buffer(offset, 2))

  -- Is Prior Settlement Theoretical: 1 Bit
  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.is_prior_settlement_theoretical, buffer(offset, 2))
end

-- Dissect: Definition Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.definition_flags = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.definition_flags(range, packet, parent)
  local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.definition_flags, range, display)

  if show.definition_flags then
    coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.definition_flags_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Prior Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.prior_settlement_price = 8

-- Display: Prior Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.prior_settlement_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Prior Settlement Price: No Value"
  end

  return "Prior Settlement Price: "..value
end

-- Dissect: Prior Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.prior_settlement_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.prior_settlement_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.prior_settlement_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.prior_settlement_price, range, value, display)

  return offset + length, value
end

-- Size: Next Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_ask_implied_qty = 4

-- Display: Next Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_ask_implied_qty = function(value)
  return "Next Ask Implied Qty: "..value
end

-- Dissect: Next Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_ask_implied_qty = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_ask_implied_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_ask_implied_qty(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_ask_implied_qty, range, value, display)

  return offset + length, value
end

-- Size: Next Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_bid_implied_qty = 4

-- Display: Next Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_bid_implied_qty = function(value)
  return "Next Bid Implied Qty: "..value
end

-- Dissect: Next Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_bid_implied_qty = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_bid_implied_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_bid_implied_qty(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_bid_implied_qty, range, value, display)

  return offset + length, value
end

-- Size: Best Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_ask_implied_qty = 4

-- Display: Best Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_ask_implied_qty = function(value)
  return "Best Ask Implied Qty: "..value
end

-- Dissect: Best Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_ask_implied_qty = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_ask_implied_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_ask_implied_qty(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_ask_implied_qty, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_bid_implied_qty = 4

-- Display: Best Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_bid_implied_qty = function(value)
  return "Best Bid Implied Qty: "..value
end

-- Dissect: Best Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_bid_implied_qty = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_bid_implied_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_bid_implied_qty(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_bid_implied_qty, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.open_interest = 4

-- Display: Open Interest
coinbase_derivatives_marketdataapi_sbe_v1_2_display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.open_interest = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.open_interest
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.open_interest(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trade_qty = 4

-- Display: Last Trade Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_trade_qty = function(value)
  return "Last Trade Qty: "..value
end

-- Dissect: Last Trade Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trade_qty = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trade_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_trade_qty(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_trade_qty, range, value, display)

  return offset + length, value
end

-- Size: Limit Up Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_up_price = 8

-- Display: Limit Up Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.limit_up_price = function(value)
  return "Limit Up Price: "..value
end

-- Dissect: Limit Up Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_up_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_up_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.limit_up_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Size: Limit Down Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_down_price = 8

-- Display: Limit Down Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.limit_down_price = function(value)
  return "Limit Down Price: "..value
end

-- Dissect: Limit Down Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_down_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_down_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.limit_down_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Size: Next Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_ask_implied_price = 8

-- Display: Next Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_ask_implied_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Next Ask Implied Price: No Value"
  end

  return "Next Ask Implied Price: "..value
end

-- Dissect: Next Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_ask_implied_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_ask_implied_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_ask_implied_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_ask_implied_price, range, value, display)

  return offset + length, value
end

-- Size: Next Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_bid_implied_price = 8

-- Display: Next Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_bid_implied_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Next Bid Implied Price: No Value"
  end

  return "Next Bid Implied Price: "..value
end

-- Dissect: Next Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_bid_implied_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_bid_implied_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_bid_implied_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_bid_implied_price, range, value, display)

  return offset + length, value
end

-- Size: Best Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_ask_implied_price = 8

-- Display: Best Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_ask_implied_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Best Ask Implied Price: No Value"
  end

  return "Best Ask Implied Price: "..value
end

-- Dissect: Best Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_ask_implied_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_ask_implied_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_ask_implied_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_ask_implied_price, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_bid_implied_price = 8

-- Display: Best Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_bid_implied_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Best Bid Implied Price: No Value"
  end

  return "Best Bid Implied Price: "..value
end

-- Dissect: Best Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_bid_implied_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_bid_implied_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_bid_implied_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_bid_implied_price, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Time
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trade_time = 8

-- Display: Last Trade Time
coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_trade_time = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Trade Time: No Value"
  end

  return "Last Trade Time: "..value
end

-- Dissect: Last Trade Time
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trade_time = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trade_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_trade_time(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trade_price = 8

-- Display: Last Trade Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_trade_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Trade Price: No Value"
  end

  return "Last Trade Price: "..value
end

-- Dissect: Last Trade Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trade_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trade_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_trade_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.settlement_price = 8

-- Display: Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.settlement_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Settlement Price: No Value"
  end

  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.settlement_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Size: Vwap Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.vwap_price_optional = 8

-- Display: Vwap Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_2_display.vwap_price_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Vwap Price Optional: No Value"
  end

  return "Vwap Price Optional: "..value
end

-- Dissect: Vwap Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.vwap_price_optional = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.vwap_price_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.vwap_price_optional(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.vwap_price_optional, range, value, display)

  return offset + length, value
end

-- Size: High Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.high_price = 8

-- Display: High Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.high_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "High Price: No Value"
  end

  return "High Price: "..value
end

-- Dissect: High Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.high_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.high_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.high_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.low_price = 8

-- Display: Low Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.low_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Low Price: No Value"
  end

  return "Low Price: "..value
end

-- Dissect: Low Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.low_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.low_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.low_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: Close Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.close_price = 8

-- Display: Close Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.close_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Close Price: No Value"
  end

  return "Close Price: "..value
end

-- Dissect: Close Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.close_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.close_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.close_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.close_price, range, value, display)

  return offset + length, value
end

-- Size: Day Open Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.day_open_price = 8

-- Display: Day Open Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.day_open_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Day Open Price: No Value"
  end

  return "Day Open Price: "..value
end

-- Dissect: Day Open Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.day_open_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.day_open_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.day_open_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.day_open_price, range, value, display)

  return offset + length, value
end

-- Size: Indicative Open Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.indicative_open_price = 8

-- Display: Indicative Open Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.indicative_open_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Indicative Open Price: No Value"
  end

  return "Indicative Open Price: "..value
end

-- Dissect: Indicative Open Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.indicative_open_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.indicative_open_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.indicative_open_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.indicative_open_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_volume = 4

-- Display: Trade Volume
coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_volume = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_volume = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_volume
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_volume(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Size: Snapshot Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.snapshot_seq_num = 2

-- Display: Snapshot Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_display.snapshot_seq_num = function(value)
  return "Snapshot Seq Num: "..value
end

-- Dissect: Snapshot Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.snapshot_seq_num = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.snapshot_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.snapshot_seq_num(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.snapshot_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.end_of_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.snapshot_seq_num

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_volume

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.indicative_open_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.day_open_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.close_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.low_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.high_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.vwap_price_optional

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.settlement_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trade_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trade_time

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_bid_implied_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_ask_implied_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_bid_implied_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_ask_implied_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_down_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_up_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trade_qty

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.open_interest

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_bid_implied_qty

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_ask_implied_qty

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_bid_implied_qty

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_ask_implied_qty

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.prior_settlement_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.definition_flags

  return index
end

-- Display: End Of Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.end_of_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.end_of_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.snapshot_seq_num(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Signed Fixed Width Integer
  index, trade_volume = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_volume(buffer, index, packet, parent)

  -- Indicative Open Price: 8 Byte Signed Fixed Width Integer Nullable
  index, indicative_open_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.indicative_open_price(buffer, index, packet, parent)

  -- Day Open Price: 8 Byte Signed Fixed Width Integer Nullable
  index, day_open_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.day_open_price(buffer, index, packet, parent)

  -- Close Price: 8 Byte Signed Fixed Width Integer Nullable
  index, close_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.close_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.low_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.high_price(buffer, index, packet, parent)

  -- Vwap Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, vwap_price_optional = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.vwap_price_optional(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.settlement_price(buffer, index, packet, parent)

  -- Last Trade Price: 8 Byte Signed Fixed Width Integer Nullable
  index, last_trade_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trade_price(buffer, index, packet, parent)

  -- Last Trade Time: 8 Byte Signed Fixed Width Integer Nullable
  index, last_trade_time = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trade_time(buffer, index, packet, parent)

  -- Best Bid Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, best_bid_implied_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_bid_implied_price(buffer, index, packet, parent)

  -- Best Ask Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, best_ask_implied_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_ask_implied_price(buffer, index, packet, parent)

  -- Next Bid Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, next_bid_implied_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_bid_implied_price(buffer, index, packet, parent)

  -- Next Ask Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, next_ask_implied_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_ask_implied_price(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_down_price(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_up_price(buffer, index, packet, parent)

  -- Last Trade Qty: 4 Byte Signed Fixed Width Integer
  index, last_trade_qty = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trade_qty(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Signed Fixed Width Integer
  index, open_interest = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.open_interest(buffer, index, packet, parent)

  -- Best Bid Implied Qty: 4 Byte Signed Fixed Width Integer
  index, best_bid_implied_qty = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_bid_implied_qty(buffer, index, packet, parent)

  -- Best Ask Implied Qty: 4 Byte Signed Fixed Width Integer
  index, best_ask_implied_qty = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_ask_implied_qty(buffer, index, packet, parent)

  -- Next Bid Implied Qty: 4 Byte Signed Fixed Width Integer
  index, next_bid_implied_qty = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_bid_implied_qty(buffer, index, packet, parent)

  -- Next Ask Implied Qty: 4 Byte Signed Fixed Width Integer
  index, next_ask_implied_qty = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_ask_implied_qty(buffer, index, packet, parent)

  -- Prior Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.prior_settlement_price(buffer, index, packet, parent)

  -- Definition Flags: Struct of 2 fields
  index, definition_flags = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.definition_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.end_of_snapshot_message = function(buffer, offset, packet, parent)
  if show.end_of_snapshot_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.end_of_snapshot_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.end_of_snapshot_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.end_of_snapshot_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price = 8

-- Display: Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_id = 8

-- Display: Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.transact_time = 8

-- Display: Transact Time
coinbase_derivatives_marketdataapi_sbe_v1_2_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Quantity
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.quantity = 4

-- Display: Quantity
coinbase_derivatives_marketdataapi_sbe_v1_2_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.quantity = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.quantity(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.snapshot_seq_num

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.quantity

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.transact_time

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price

  return index
end

-- Display: Order Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.snapshot_seq_num(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.quantity(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.transact_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_snapshot_message = function(buffer, offset, packet, parent)
  if show.order_snapshot_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_snapshot_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_snapshot_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_snapshot_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_snapshot_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Spread Buy Convention
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.spread_buy_convention = 1

-- Display: Spread Buy Convention
coinbase_derivatives_marketdataapi_sbe_v1_2_display.spread_buy_convention = function(value)
  if value == 1 then
    return "Spread Buy Convention: Use Far Bid (1)"
  end
  if value == -1 then
    return "Spread Buy Convention: Use Near Bid (-1)"
  end

  return "Spread Buy Convention: Unknown("..value..")"
end

-- Dissect: Spread Buy Convention
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_buy_convention = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.spread_buy_convention
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.spread_buy_convention(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.spread_buy_convention, range, value, display)

  return offset + length, value
end

-- Size: Leg 2 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.leg_2_instrument_id = 4

-- Display: Leg 2 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.leg_2_instrument_id = function(value)
  return "Leg 2 Instrument Id: "..value
end

-- Dissect: Leg 2 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.leg_2_instrument_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.leg_2_instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.leg_2_instrument_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.leg_2_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Leg 1 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.leg_1_instrument_id = 4

-- Display: Leg 1 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.leg_1_instrument_id = function(value)
  return "Leg 1 Instrument Id: "..value
end

-- Dissect: Leg 1 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.leg_1_instrument_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.leg_1_instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.leg_1_instrument_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.leg_1_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_status = 1

-- Display: Trading Status
coinbase_derivatives_marketdataapi_sbe_v1_2_display.trading_status = function(value)
  if value == 0 then
    return "Trading Status: Pre Open (0)"
  end
  if value == 1 then
    return "Trading Status: Open (1)"
  end
  if value == 2 then
    return "Trading Status: Halt (2)"
  end
  if value == 3 then
    return "Trading Status: Pause (3)"
  end
  if value == 4 then
    return "Trading Status: Close (4)"
  end
  if value == 5 then
    return "Trading Status: Pre Open No Cancel (5)"
  end
  if value == 6 then
    return "Trading Status: Expired (6)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Product Group
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_group = 1

-- Display: Product Group
coinbase_derivatives_marketdataapi_sbe_v1_2_display.product_group = function(value)
  if value == 0 then
    return "Product Group: Currency (0)"
  end
  if value == 1 then
    return "Product Group: Equity (1)"
  end
  if value == 2 then
    return "Product Group: Energy (2)"
  end
  if value == 3 then
    return "Product Group: Metals (3)"
  end
  if value == 4 then
    return "Product Group: Interest Rate (4)"
  end
  if value == 5 then
    return "Product Group: Agriculture (5)"
  end

  return "Product Group: Unknown("..value..")"
end

-- Dissect: Product Group
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_group = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_group
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.product_group(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.product_group, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_session_date = 2

-- Display: Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_2_display.trading_session_date = function(value)
  return "Trading Session Date: "..value
end

-- Dissect: Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_session_date = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.trading_session_date(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trading_session_date, range, value, display)

  return offset + length, value
end

-- Size: Last Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trading_session_date = 2

-- Display: Last Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_trading_session_date = function(value)
  return "Last Trading Session Date: "..value
end

-- Dissect: Last Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trading_session_date = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trading_session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_trading_session_date(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_trading_session_date, range, value, display)

  return offset + length, value
end

-- Size: First Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.first_trading_session_date = 2

-- Display: First Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_2_display.first_trading_session_date = function(value)
  return "First Trading Session Date: "..value
end

-- Dissect: First Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.first_trading_session_date = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.first_trading_session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.first_trading_session_date(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.first_trading_session_date, range, value, display)

  return offset + length, value
end

-- Size: Order Count
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_count = 4

-- Display: Order Count
coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_count = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_count = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_count
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_count(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_count, range, value, display)

  return offset + length, value
end

-- Size: Contract Size
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.contract_size = 4

-- Display: Contract Size
coinbase_derivatives_marketdataapi_sbe_v1_2_display.contract_size = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.contract_size = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.contract_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.contract_size(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Size: Product Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_id = 4

-- Display: Product Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.product_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: Currency
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.currency = 8

-- Display: Currency
coinbase_derivatives_marketdataapi_sbe_v1_2_display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.currency = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.currency
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.currency(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Cfi Code
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.cfi_code = 8

-- Display: Cfi Code
coinbase_derivatives_marketdataapi_sbe_v1_2_display.cfi_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.cfi_code = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.cfi_code
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.cfi_code(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Size: Price Increment
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price_increment = 8

-- Display: Price Increment
coinbase_derivatives_marketdataapi_sbe_v1_2_display.price_increment = function(value)
  return "Price Increment: "..value
end

-- Dissect: Price Increment
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price_increment = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price_increment
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.price_increment(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Size: Description
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.description = 32

-- Display: Description
coinbase_derivatives_marketdataapi_sbe_v1_2_display.description = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Description: No Value"
  end

  return "Description: "..value
end

-- Dissect: Description
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.description = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.description
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.description(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.description, range, value, display)

  return offset + length, value
end

-- Size: Product Code
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_code = 8

-- Display: Product Code
coinbase_derivatives_marketdataapi_sbe_v1_2_display.product_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Code: No Value"
  end

  return "Product Code: "..value
end

-- Dissect: Product Code
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_code = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_code
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.product_code(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.product_code, range, value, display)

  return offset + length, value
end

-- Size: Symbol
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.symbol = 24

-- Display: Symbol
coinbase_derivatives_marketdataapi_sbe_v1_2_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.symbol = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.symbol
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.symbol(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Last Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_instr_seq_num = 4

-- Display: Last Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_instr_seq_num = function(value)
  return "Last Instr Seq Num: "..value
end

-- Dissect: Last Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_instr_seq_num = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_instr_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.last_instr_seq_num(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.last_instr_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Start Of Spread Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.start_of_spread_instrument_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.snapshot_seq_num

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_instr_seq_num

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.symbol

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_code

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.description

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price_increment

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.cfi_code

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.currency

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.contract_size

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_count

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.first_trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_group

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_status

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.leg_1_instrument_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.leg_2_instrument_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.spread_buy_convention

  return index
end

-- Display: Start Of Spread Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.start_of_spread_instrument_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spread Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_spread_instrument_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.snapshot_seq_num(buffer, index, packet, parent)

  -- Last Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_instr_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_instr_seq_num(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.description(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price_increment(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.currency(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_id(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.contract_size(buffer, index, packet, parent)

  -- Order Count: 4 Byte Signed Fixed Width Integer
  index, order_count = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_count(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status(buffer, index, packet, parent)

  -- Leg 1 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_1_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.leg_1_instrument_id(buffer, index, packet, parent)

  -- Leg 2 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_2_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.leg_2_instrument_id(buffer, index, packet, parent)

  -- Spread Buy Convention: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, spread_buy_convention = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_buy_convention(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spread Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_spread_instrument_snapshot_message = function(buffer, offset, packet, parent)
  if show.start_of_spread_instrument_snapshot_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.start_of_spread_instrument_snapshot_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_spread_instrument_snapshot_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.start_of_spread_instrument_snapshot_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_spread_instrument_snapshot_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Start Of Outright Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.start_of_outright_instrument_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.snapshot_seq_num

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_instr_seq_num

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.symbol

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_code

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.description

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price_increment

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.cfi_code

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.currency

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.contract_size

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_count

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.first_trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_group

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_status

  return index
end

-- Display: Start Of Outright Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.start_of_outright_instrument_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Outright Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_outright_instrument_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.snapshot_seq_num(buffer, index, packet, parent)

  -- Last Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_instr_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_instr_seq_num(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.description(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price_increment(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.currency(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_id(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.contract_size(buffer, index, packet, parent)

  -- Order Count: 4 Byte Signed Fixed Width Integer
  index, order_count = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_count(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Outright Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_outright_instrument_snapshot_message = function(buffer, offset, packet, parent)
  if show.start_of_outright_instrument_snapshot_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.start_of_outright_instrument_snapshot_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_outright_instrument_snapshot_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.start_of_outright_instrument_snapshot_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_outright_instrument_snapshot_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reserved
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.reserved = 2

-- Display: Reserved
coinbase_derivatives_marketdataapi_sbe_v1_2_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.reserved = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.reserved
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.reserved(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_seq_num = 4

-- Display: Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_display.instr_seq_num = function(value)
  return "Instr Seq Num: "..value
end

-- Dissect: Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_seq_num = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.instr_seq_num(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instr_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instrument_id = 4

-- Display: Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Side
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instrument_side = 1

-- Display: Instrument Side
coinbase_derivatives_marketdataapi_sbe_v1_2_display.instrument_side = function(value)
  return "Instrument Side: "..value
end

-- Dissect: Instrument Side
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instrument_side = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instrument_side
  local range = buffer(offset, length)
  local value = range:int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.instrument_side(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instrument_side, range, value, display)

  return offset + length, value
end

-- Size: Instrument Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instrument_flags = 1

-- Display: Instrument Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_display.instrument_flags = function(value)
  return "Instrument Flags: "..value
end

-- Dissect: Instrument Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instrument_flags = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instrument_flags
  local range = buffer(offset, length)
  local value = range:uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.instrument_flags(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instrument_flags, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instr Header
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instrument_flags

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instrument_side

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instrument_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_seq_num

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.reserved

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.transact_time

  return index
end

-- Display: Instr Header
coinbase_derivatives_marketdataapi_sbe_v1_2_display.instr_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instr Header
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Flags: 1 Byte Unsigned Fixed Width Integer
  index, instrument_flags = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instrument_flags(buffer, index, packet, parent)

  -- Instrument Side: 1 Byte Signed Fixed Width Integer
  index, instrument_side = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instrument_side(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instrument_id(buffer, index, packet, parent)

  -- Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, instr_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_seq_num(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_session_date(buffer, index, packet, parent)

  -- Reserved: 2 Byte Signed Fixed Width Integer
  index, reserved = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.reserved(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instr Header
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header = function(buffer, offset, packet, parent)
  if show.instr_header then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.instr_header, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.instr_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Open Interest Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.open_interest_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.quantity

  return index
end

-- Display: Open Interest Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.open_interest_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.open_interest_message = function(buffer, offset, packet, parent)
  if show.open_interest_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.open_interest_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.open_interest_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.open_interest_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.open_interest_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Vwap Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.vwap_price = 8

-- Display: Vwap Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.vwap_price = function(value)
  return "Vwap Price: "..value
end

-- Dissect: Vwap Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.vwap_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.vwap_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.vwap_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.vwap_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Session Volume Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_session_volume_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.vwap_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_volume

  return index
end

-- Display: Trade Session Volume Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_session_volume_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Session Volume Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_session_volume_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Vwap Price: 8 Byte Signed Fixed Width Integer
  index, vwap_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.vwap_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Signed Fixed Width Integer
  index, trade_volume = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Session Volume Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_session_volume_message = function(buffer, offset, packet, parent)
  if show.trade_session_volume_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_session_volume_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_session_volume_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_session_volume_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_session_volume_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Stat Type
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.stat_type = 1

-- Display: Stat Type
coinbase_derivatives_marketdataapi_sbe_v1_2_display.stat_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Stat Type: No Value"
  end

  if value == "4" then
    return "Stat Type: Day Opening Price (4)"
  end
  if value == "5" then
    return "Stat Type: Closing Price (5)"
  end
  if value == "6" then
    return "Stat Type: Settlement Price (6)"
  end
  if value == "7" then
    return "Stat Type: Trading Session High Price (7)"
  end
  if value == "8" then
    return "Stat Type: Trading Session Low Price (8)"
  end
  if value == "F" then
    return "Stat Type: Reference Price (F)"
  end
  if value == "I" then
    return "Stat Type: Indicative Opening Price (I)"
  end

  return "Stat Type: Unknown("..value..")"
end

-- Dissect: Stat Type
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.stat_type = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.stat_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.stat_type(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.stat_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Stat Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.market_stat_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.stat_type

  return index
end

-- Display: Market Stat Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.market_stat_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Stat Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.market_stat_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price(buffer, index, packet, parent)

  -- Stat Type: 1 Byte Ascii String Enum with 7 values
  index, stat_type = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.stat_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Stat Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.market_stat_message = function(buffer, offset, packet, parent)
  if show.market_stat_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.market_stat_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.market_stat_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.market_stat_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.market_stat_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Sell Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.sell_order_id = 8

-- Display: Sell Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.sell_order_id = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Sell Order Id: No Value"
  end

  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sell_order_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.sell_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.sell_order_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Size: Buy Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.buy_order_id = 8

-- Display: Buy Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.buy_order_id = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Buy Order Id: No Value"
  end

  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.buy_order_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.buy_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.buy_order_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Size: Match Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.match_id = 8

-- Display: Match Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.match_id = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.match_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.match_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.match_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.match_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Bust Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_bust_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.match_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.buy_order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.sell_order_id

  return index
end

-- Display: Trade Bust Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_bust_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_bust_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.match_id(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sell_order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_bust_message = function(buffer, offset, packet, parent)
  if show.trade_bust_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_bust_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_bust_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_bust_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_bust_message_fields(buffer, offset, packet, element)
  end
end

-- Size: New Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_leg_2_price = 8

-- Display: New Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.new_leg_2_price = function(value)
  return "New Leg 2 Price: "..value
end

-- Dissect: New Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.new_leg_2_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_leg_2_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.new_leg_2_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.new_leg_2_price, range, value, display)

  return offset + length, value
end

-- Size: Old Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_leg_2_price = 8

-- Display: Old Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.old_leg_2_price = function(value)
  return "Old Leg 2 Price: "..value
end

-- Dissect: Old Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.old_leg_2_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_leg_2_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.old_leg_2_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.old_leg_2_price, range, value, display)

  return offset + length, value
end

-- Size: New Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_leg_1_price = 8

-- Display: New Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.new_leg_1_price = function(value)
  return "New Leg 1 Price: "..value
end

-- Dissect: New Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.new_leg_1_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_leg_1_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.new_leg_1_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.new_leg_1_price, range, value, display)

  return offset + length, value
end

-- Size: Old Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_leg_1_price = 8

-- Display: Old Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.old_leg_1_price = function(value)
  return "Old Leg 1 Price: "..value
end

-- Dissect: Old Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.old_leg_1_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_leg_1_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.old_leg_1_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.old_leg_1_price, range, value, display)

  return offset + length, value
end

-- Size: New Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_price = 8

-- Display: New Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.new_price = function(value)
  return "New Price: "..value
end

-- Dissect: New Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.new_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.new_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.new_price, range, value, display)

  return offset + length, value
end

-- Size: Old Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_price = 8

-- Display: Old Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.old_price = function(value)
  return "Old Price: "..value
end

-- Dissect: Old Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.old_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.old_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.old_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Spread Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.spread_trade_amend_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.match_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.buy_order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.sell_order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_leg_1_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_leg_1_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_leg_2_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_leg_2_price

  return index
end

-- Display: Spread Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.spread_trade_amend_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_trade_amend_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.match_id(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sell_order_id(buffer, index, packet, parent)

  -- Old Price: 8 Byte Signed Fixed Width Integer
  index, old_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.old_price(buffer, index, packet, parent)

  -- New Price: 8 Byte Signed Fixed Width Integer
  index, new_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.new_price(buffer, index, packet, parent)

  -- Old Leg 1 Price: 8 Byte Signed Fixed Width Integer
  index, old_leg_1_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.old_leg_1_price(buffer, index, packet, parent)

  -- New Leg 1 Price: 8 Byte Signed Fixed Width Integer
  index, new_leg_1_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.new_leg_1_price(buffer, index, packet, parent)

  -- Old Leg 2 Price: 8 Byte Signed Fixed Width Integer
  index, old_leg_2_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.old_leg_2_price(buffer, index, packet, parent)

  -- New Leg 2 Price: 8 Byte Signed Fixed Width Integer
  index, new_leg_2_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.new_leg_2_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_trade_amend_message = function(buffer, offset, packet, parent)
  if show.spread_trade_amend_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.spread_trade_amend_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_trade_amend_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.spread_trade_amend_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_trade_amend_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_amend_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.match_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.buy_order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.sell_order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.old_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.new_price

  return index
end

-- Display: Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_amend_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_amend_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.match_id(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sell_order_id(buffer, index, packet, parent)

  -- Old Price: 8 Byte Signed Fixed Width Integer
  index, old_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.old_price(buffer, index, packet, parent)

  -- New Price: 8 Byte Signed Fixed Width Integer
  index, new_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.new_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_amend_message = function(buffer, offset, packet, parent)
  if show.trade_amend_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_amend_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_amend_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_amend_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_amend_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.match_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.buy_order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.sell_order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.quantity

  return index
end

-- Display: Trade Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.match_id(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sell_order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_message = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Deepest Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.deepest_price = 8

-- Display: Deepest Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.deepest_price = function(value)
  return "Deepest Price: "..value
end

-- Dissect: Deepest Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.deepest_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.deepest_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.deepest_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.deepest_price, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Receive Time
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.aggressor_receive_time = 8

-- Display: Aggressor Receive Time
coinbase_derivatives_marketdataapi_sbe_v1_2_display.aggressor_receive_time = function(value)
  return "Aggressor Receive Time: "..value
end

-- Dissect: Aggressor Receive Time
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.aggressor_receive_time = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.aggressor_receive_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.aggressor_receive_time(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.aggressor_receive_time, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.aggressor_order_id = 8

-- Display: Aggressor Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.aggressor_order_id = function(value)
  return "Aggressor Order Id: "..value
end

-- Dissect: Aggressor Order Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.aggressor_order_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.aggressor_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.aggressor_order_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.aggressor_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Summary Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_summary_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.aggressor_order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.aggressor_receive_time

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.vwap_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.deepest_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.quantity

  return index
end

-- Display: Trade Summary Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Aggressor Order Id: 8 Byte Signed Fixed Width Integer
  index, aggressor_order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.aggressor_order_id(buffer, index, packet, parent)

  -- Aggressor Receive Time: 8 Byte Signed Fixed Width Integer
  index, aggressor_receive_time = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.aggressor_receive_time(buffer, index, packet, parent)

  -- Vwap Price: 8 Byte Signed Fixed Width Integer
  index, vwap_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.vwap_price(buffer, index, packet, parent)

  -- Deepest Price: 8 Byte Signed Fixed Width Integer
  index, deepest_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.deepest_price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_summary_message = function(buffer, offset, packet, parent)
  if show.trade_summary_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trade_summary_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_summary_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.trade_summary_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_summary_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Next Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_qty = 4

-- Display: Next Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_qty = function(value)
  return "Next Qty: "..value
end

-- Dissect: Next Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_qty = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_qty(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_qty, range, value, display)

  return offset + length, value
end

-- Size: Best Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_qty = 4

-- Display: Best Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_qty = function(value)
  return "Best Qty: "..value
end

-- Dissect: Best Qty
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_qty = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_qty(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_qty, range, value, display)

  return offset + length, value
end

-- Size: Next Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_price = 8

-- Display: Next Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Next Price: No Value"
  end

  return "Next Price: "..value
end

-- Dissect: Next Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.next_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.next_price, range, value, display)

  return offset + length, value
end

-- Size: Best Price
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_price = 8

-- Display: Best Price
coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Best Price: No Value"
  end

  return "Best Price: "..value
end

-- Dissect: Best Price
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.best_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.best_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Implied Order Update Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.implied_order_update_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.best_qty

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.next_qty

  return index
end

-- Display: Implied Order Update Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.implied_order_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Update Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.implied_order_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Best Price: 8 Byte Signed Fixed Width Integer Nullable
  index, best_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_price(buffer, index, packet, parent)

  -- Next Price: 8 Byte Signed Fixed Width Integer Nullable
  index, next_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_price(buffer, index, packet, parent)

  -- Best Qty: 4 Byte Signed Fixed Width Integer
  index, best_qty = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.best_qty(buffer, index, packet, parent)

  -- Next Qty: 4 Byte Signed Fixed Width Integer
  index, next_qty = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.next_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Update Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.implied_order_update_message = function(buffer, offset, packet, parent)
  if show.implied_order_update_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.implied_order_update_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.implied_order_update_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.implied_order_update_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.implied_order_update_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Delete Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_delete_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_id

  return index
end

-- Display: Order Delete Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_delete_message = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_delete_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_delete_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_delete_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_delete_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Put Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_put_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.quantity

  return index
end

-- Display: Order Put Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_put_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Put Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_put_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Put Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_put_message = function(buffer, offset, packet, parent)
  if show.order_put_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.order_put_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_put_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.order_put_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_put_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trading Status Update Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_status_update_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_down_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_up_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_status

  return index
end

-- Display: Trading Status Update Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.trading_status_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Update Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_down_price(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_up_price(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Update Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status_update_message = function(buffer, offset, packet, parent)
  if show.trading_status_update_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.trading_status_update_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status_update_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.trading_status_update_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status_update_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Spread Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.spread_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.symbol

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_code

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.description

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price_increment

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.cfi_code

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.currency

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.first_trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.contract_size

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.prior_settlement_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.settlement_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_down_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_up_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_group

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_status

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.leg_1_instrument_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.leg_2_instrument_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.spread_buy_convention

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.definition_flags

  return index
end

-- Display: Spread Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.spread_instrument_definition_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.description(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price_increment(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.currency(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.contract_size(buffer, index, packet, parent)

  -- Prior Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.prior_settlement_price(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.settlement_price(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_down_price(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_up_price(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_id(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status(buffer, index, packet, parent)

  -- Leg 1 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_1_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.leg_1_instrument_id(buffer, index, packet, parent)

  -- Leg 2 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_2_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.leg_2_instrument_id(buffer, index, packet, parent)

  -- Spread Buy Convention: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, spread_buy_convention = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_buy_convention(buffer, index, packet, parent)

  -- Definition Flags: Struct of 2 fields
  index, definition_flags = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.definition_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_instrument_definition_message = function(buffer, offset, packet, parent)
  if show.spread_instrument_definition_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.spread_instrument_definition_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_instrument_definition_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.spread_instrument_definition_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_instrument_definition_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Outright Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.outright_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.instr_header(buffer, offset + index)

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.symbol

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_code

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.description

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.price_increment

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.cfi_code

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.currency

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.first_trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.last_trading_session_date

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.contract_size

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.prior_settlement_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.settlement_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_down_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.limit_up_price

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.product_group

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_status

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.definition_flags

  return index
end

-- Display: Outright Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.outright_instrument_definition_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.outright_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.instr_header(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.description(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.price_increment(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.currency(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.contract_size(buffer, index, packet, parent)

  -- Prior Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.prior_settlement_price(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.settlement_price(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_down_price(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.limit_up_price(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_id(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status(buffer, index, packet, parent)

  -- Definition Flags: Struct of 2 fields
  index, definition_flags = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.definition_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.outright_instrument_definition_message = function(buffer, offset, packet, parent)
  if show.outright_instrument_definition_message then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.outright_instrument_definition_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.outright_instrument_definition_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.outright_instrument_definition_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.outright_instrument_definition_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.payload = function(buffer, offset, template_id)
  -- Size of Outright Instrument Definition Message
  if template_id == 10 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.outright_instrument_definition_message(buffer, offset)
  end
  -- Size of Spread Instrument Definition Message
  if template_id == 11 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.spread_instrument_definition_message(buffer, offset)
  end
  -- Size of Trading Status Update Message
  if template_id == 17 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trading_status_update_message(buffer, offset)
  end
  -- Size of Order Put Message
  if template_id == 20 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_put_message(buffer, offset)
  end
  -- Size of Order Delete Message
  if template_id == 21 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_delete_message(buffer, offset)
  end
  -- Size of Implied Order Update Message
  if template_id == 22 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.implied_order_update_message(buffer, offset)
  end
  -- Size of Trade Summary Message
  if template_id == 33 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_summary_message(buffer, offset)
  end
  -- Size of Trade Message
  if template_id == 30 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Amend Message
  if template_id == 31 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_amend_message(buffer, offset)
  end
  -- Size of Spread Trade Amend Message
  if template_id == 34 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.spread_trade_amend_message(buffer, offset)
  end
  -- Size of Trade Bust Message
  if template_id == 32 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_bust_message(buffer, offset)
  end
  -- Size of Market Stat Message
  if template_id == 40 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.market_stat_message(buffer, offset)
  end
  -- Size of Trade Session Volume Message
  if template_id == 41 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.trade_session_volume_message(buffer, offset)
  end
  -- Size of Open Interest Message
  if template_id == 42 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.open_interest_message(buffer, offset)
  end
  -- Size of Start Of Outright Instrument Snapshot Message
  if template_id == 110 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.start_of_outright_instrument_snapshot_message(buffer, offset)
  end
  -- Size of Start Of Spread Instrument Snapshot Message
  if template_id == 111 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.start_of_spread_instrument_snapshot_message(buffer, offset)
  end
  -- Size of Order Snapshot Message
  if template_id == 120 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.order_snapshot_message(buffer, offset)
  end
  -- Size of End Of Snapshot Message
  if template_id == 122 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.end_of_snapshot_message(buffer, offset)
  end
  -- Size of Retransmit Request Message
  if template_id == 200 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.retransmit_request_message(buffer, offset)
  end
  -- Size of Retransmit Reject Message
  if template_id == 202 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.retransmit_reject_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
coinbase_derivatives_marketdataapi_sbe_v1_2_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Outright Instrument Definition Message
  if template_id == 10 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.outright_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Spread Instrument Definition Message
  if template_id == 11 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Update Message
  if template_id == 17 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trading_status_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Put Message
  if template_id == 20 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_put_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if template_id == 21 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Update Message
  if template_id == 22 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.implied_order_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Summary Message
  if template_id == 33 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if template_id == 30 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Amend Message
  if template_id == 31 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_amend_message(buffer, offset, packet, parent)
  end
  -- Dissect Spread Trade Amend Message
  if template_id == 34 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.spread_trade_amend_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if template_id == 32 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_bust_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Stat Message
  if template_id == 40 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.market_stat_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Session Volume Message
  if template_id == 41 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.trade_session_volume_message(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if template_id == 42 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.open_interest_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Outright Instrument Snapshot Message
  if template_id == 110 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_outright_instrument_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Spread Instrument Snapshot Message
  if template_id == 111 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.start_of_spread_instrument_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Snapshot Message
  if template_id == 120 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.order_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if template_id == 122 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.end_of_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request Message
  if template_id == 200 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Reject Message
  if template_id == 202 then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.retransmit_reject_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.payload(buffer, packet, parent)
  local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.payload, range, display)

  return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.version = 2

-- Display: Version
coinbase_derivatives_marketdataapi_sbe_v1_2_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.version = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.version(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.schema_id = 2

-- Display: Schema Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.template_id = 2

-- Display: Template Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.template_id = function(value)
  if value == 10 then
    return "Template Id: Outright Instrument Definition Message (10)"
  end
  if value == 11 then
    return "Template Id: Spread Instrument Definition Message (11)"
  end
  if value == 17 then
    return "Template Id: Trading Status Update Message (17)"
  end
  if value == 20 then
    return "Template Id: Order Put Message (20)"
  end
  if value == 21 then
    return "Template Id: Order Delete Message (21)"
  end
  if value == 22 then
    return "Template Id: Implied Order Update Message (22)"
  end
  if value == 33 then
    return "Template Id: Trade Summary Message (33)"
  end
  if value == 30 then
    return "Template Id: Trade Message (30)"
  end
  if value == 31 then
    return "Template Id: Trade Amend Message (31)"
  end
  if value == 34 then
    return "Template Id: Spread Trade Amend Message (34)"
  end
  if value == 32 then
    return "Template Id: Trade Bust Message (32)"
  end
  if value == 40 then
    return "Template Id: Market Stat Message (40)"
  end
  if value == 41 then
    return "Template Id: Trade Session Volume Message (41)"
  end
  if value == 42 then
    return "Template Id: Open Interest Message (42)"
  end
  if value == 110 then
    return "Template Id: Start Of Outright Instrument Snapshot Message (110)"
  end
  if value == 111 then
    return "Template Id: Start Of Spread Instrument Snapshot Message (111)"
  end
  if value == 120 then
    return "Template Id: Order Snapshot Message (120)"
  end
  if value == 122 then
    return "Template Id: End Of Snapshot Message (122)"
  end
  if value == 200 then
    return "Template Id: Retransmit Request Message (200)"
  end
  if value == 202 then
    return "Template Id: Retransmit Reject Message (202)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.template_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.template_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.block_length = 2

-- Display: Block Length
coinbase_derivatives_marketdataapi_sbe_v1_2_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.block_length = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.block_length(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.block_length, range, value, display)

  return offset + length, value
end

-- Size: Frame Length
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.frame_length = 2

-- Display: Frame Length
coinbase_derivatives_marketdataapi_sbe_v1_2_display.frame_length = function(value)
  return "Frame Length: "..value
end

-- Dissect: Frame Length
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.frame_length = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.frame_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.frame_length(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.frame_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.frame_length

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.block_length

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.template_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.schema_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.version

  return index
end

-- Display: Message Header
coinbase_derivatives_marketdataapi_sbe_v1_2_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame Length: 2 Byte Unsigned Fixed Width Integer
  index, frame_length = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.frame_length(buffer, index, packet, parent)

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 20 values
  index, template_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.message_header, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Sbe Message
coinbase_derivatives_marketdataapi_sbe_v1_2_display.sbe_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sbe_message_fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 20 branches
  index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.payload(buffer, index, packet, parent, template_id)

  -- Dependency element: Frame Length
  local frame_length = buffer(offset, 2):le_uint()

  -- Runtime Size Of: Padding
  local size_of_padding = frame_length - (index - offset)

  -- Padding: 0 Byte
  index, padding = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.padding(buffer, index, packet, parent, size_of_padding)

  return index
end

-- Dissect: Sbe Message
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sbe_message = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.sbe_message, buffer(offset, 0))
    local current = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sbe_message_fields(buffer, offset, packet, element, size_of_sbe_message)
    element:set_len(size_of_sbe_message)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.sbe_message(buffer, packet, element)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sbe_message_fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Size: Snapshot Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.snapshot_instrument_id = 4

-- Display: Snapshot Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.snapshot_instrument_id = function(value)
  return "Snapshot Instrument Id: "..value
end

-- Dissect: Snapshot Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.snapshot_instrument_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.snapshot_instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.snapshot_instrument_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.snapshot_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Packet Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.packet_flags = 1

-- Display: Packet Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_display.packet_flags = function(value)
  return "Packet Flags: "..value
end

-- Dissect: Packet Flags
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.packet_flags = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.packet_flags
  local range = buffer(offset, length)
  local value = range:uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.packet_flags(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.packet_flags, range, value, display)

  return offset + length, value
end

-- Size: Channel Id
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.channel_id = 2

-- Display: Channel Id
coinbase_derivatives_marketdataapi_sbe_v1_2_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.seq_num = 8

-- Display: Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_display.seq_num = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.seq_num = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.seq_num
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.seq_num(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.sending_time = 8

-- Display: Sending Time
coinbase_derivatives_marketdataapi_sbe_v1_2_display.sending_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.sending_time

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.seq_num

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.channel_id

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.packet_flags

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.message_count

  index = index + coinbase_derivatives_marketdataapi_sbe_v1_2_size_of.snapshot_instrument_id

  return index
end

-- Display: Packet Header
coinbase_derivatives_marketdataapi_sbe_v1_2_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Signed Fixed Width Integer
  index, sending_time = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sending_time(buffer, index, packet, parent)

  -- Seq Num: 8 Byte Signed Fixed Width Integer
  index, seq_num = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.seq_num(buffer, index, packet, parent)

  -- Channel Id: 2 Byte Unsigned Fixed Width Integer
  index, channel_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.channel_id(buffer, index, packet, parent)

  -- Packet Flags: 1 Byte Unsigned Fixed Width Integer
  index, packet_flags = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.packet_flags(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.message_count(buffer, index, packet, parent)

  -- Snapshot Instrument Id: 4 Byte Signed Fixed Width Integer
  index, snapshot_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.snapshot_instrument_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2.fields.packet_header, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_2_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Frame Length
    local frame_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Sbe Message
    index, sbe_message = coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.sbe_message(buffer, index, packet, parent, frame_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function coinbase_derivatives_marketdataapi_sbe_v1_2.init()
end

-- Dissector for Coinbase Derivatives MarketDataApi Sbe 1.2
function coinbase_derivatives_marketdataapi_sbe_v1_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = coinbase_derivatives_marketdataapi_sbe_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(coinbase_derivatives_marketdataapi_sbe_v1_2, buffer(), coinbase_derivatives_marketdataapi_sbe_v1_2.description, "("..buffer:len().." Bytes)")
  return coinbase_derivatives_marketdataapi_sbe_v1_2_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, coinbase_derivatives_marketdataapi_sbe_v1_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.coinbase_derivatives_marketdataapi_sbe_v1_2_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(30, 2):le_uint()

  if value == 1201 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(32, 2):le_uint()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Coinbase Derivatives MarketDataApi Sbe 1.2
local function coinbase_derivatives_marketdataapi_sbe_v1_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.coinbase_derivatives_marketdataapi_sbe_v1_2_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = coinbase_derivatives_marketdataapi_sbe_v1_2
  coinbase_derivatives_marketdataapi_sbe_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Coinbase Derivatives MarketDataApi Sbe 1.2
coinbase_derivatives_marketdataapi_sbe_v1_2:register_heuristic("udp", coinbase_derivatives_marketdataapi_sbe_v1_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Coinbase
--   Version: 1.2
--   Date: Monday, July 27, 2020
--   Specification: FairX_UDP_MarketData_API_V1.2.pdf
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
