-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Fairx Futures MarketDataApi Sbe 1.3 Protocol
local fairx_futures_marketdataapi_sbe_v1_3 = Proto("Fairx.Futures.MarketDataApi.Sbe.v1.3.Lua", "Fairx Futures MarketDataApi Sbe 1.3")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Fairx Futures MarketDataApi Sbe 1.3 Fields
fairx_futures_marketdataapi_sbe_v1_3.fields.aggressor_order_id = ProtoField.new("Aggressor Order Id", "fairx.futures.marketdataapi.sbe.v1.3.aggressororderid", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.aggressor_receive_time = ProtoField.new("Aggressor Receive Time", "fairx.futures.marketdataapi.sbe.v1.3.aggressorreceivetime", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "fairx.futures.marketdataapi.sbe.v1.3.beginseqnum", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.best_ask_implied_price = ProtoField.new("Best Ask Implied Price", "fairx.futures.marketdataapi.sbe.v1.3.bestaskimpliedprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.best_ask_implied_qty = ProtoField.new("Best Ask Implied Qty", "fairx.futures.marketdataapi.sbe.v1.3.bestaskimpliedqty", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.best_bid_implied_price = ProtoField.new("Best Bid Implied Price", "fairx.futures.marketdataapi.sbe.v1.3.bestbidimpliedprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.best_bid_implied_qty = ProtoField.new("Best Bid Implied Qty", "fairx.futures.marketdataapi.sbe.v1.3.bestbidimpliedqty", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.best_price = ProtoField.new("Best Price", "fairx.futures.marketdataapi.sbe.v1.3.bestprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.best_qty = ProtoField.new("Best Qty", "fairx.futures.marketdataapi.sbe.v1.3.bestqty", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "fairx.futures.marketdataapi.sbe.v1.3.blocklength", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.buy_order_id = ProtoField.new("Buy Order Id", "fairx.futures.marketdataapi.sbe.v1.3.buyorderid", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.cfi_code = ProtoField.new("Cfi Code", "fairx.futures.marketdataapi.sbe.v1.3.cficode", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.channel_id = ProtoField.new("Channel Id", "fairx.futures.marketdataapi.sbe.v1.3.channelid", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.close_price = ProtoField.new("Close Price", "fairx.futures.marketdataapi.sbe.v1.3.closeprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.contract_size = ProtoField.new("Contract Size", "fairx.futures.marketdataapi.sbe.v1.3.contractsize", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.currency = ProtoField.new("Currency", "fairx.futures.marketdataapi.sbe.v1.3.currency", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.day_open_price = ProtoField.new("Day Open Price", "fairx.futures.marketdataapi.sbe.v1.3.dayopenprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.deepest_price = ProtoField.new("Deepest Price", "fairx.futures.marketdataapi.sbe.v1.3.deepestprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.definition_flags = ProtoField.new("Definition Flags", "fairx.futures.marketdataapi.sbe.v1.3.definitionflags", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.description = ProtoField.new("Description", "fairx.futures.marketdataapi.sbe.v1.3.description", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.details = ProtoField.new("Details", "fairx.futures.marketdataapi.sbe.v1.3.details", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "fairx.futures.marketdataapi.sbe.v1.3.endofsnapshotmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.first_trading_session_date = ProtoField.new("First Trading Session Date", "fairx.futures.marketdataapi.sbe.v1.3.firsttradingsessiondate", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.frame_length = ProtoField.new("Frame Length", "fairx.futures.marketdataapi.sbe.v1.3.framelength", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.high_price = ProtoField.new("High Price", "fairx.futures.marketdataapi.sbe.v1.3.highprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.implied_order_update_message = ProtoField.new("Implied Order Update Message", "fairx.futures.marketdataapi.sbe.v1.3.impliedorderupdatemessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.indicative_open_price = ProtoField.new("Indicative Open Price", "fairx.futures.marketdataapi.sbe.v1.3.indicativeopenprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.instr_header = ProtoField.new("Instr Header", "fairx.futures.marketdataapi.sbe.v1.3.instrheader", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.instr_seq_num = ProtoField.new("Instr Seq Num", "fairx.futures.marketdataapi.sbe.v1.3.instrseqnum", ftypes.UINT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.instrument_flags = ProtoField.new("Instrument Flags", "fairx.futures.marketdataapi.sbe.v1.3.instrumentflags", ftypes.UINT8)
fairx_futures_marketdataapi_sbe_v1_3.fields.instrument_id = ProtoField.new("Instrument Id", "fairx.futures.marketdataapi.sbe.v1.3.instrumentid", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.instrument_side = ProtoField.new("Instrument Side", "fairx.futures.marketdataapi.sbe.v1.3.instrumentside", ftypes.INT8)
fairx_futures_marketdataapi_sbe_v1_3.fields.is_announced = ProtoField.new("Is Announced", "fairx.futures.marketdataapi.sbe.v1.3.isannounced", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0002")
fairx_futures_marketdataapi_sbe_v1_3.fields.is_call = ProtoField.new("Is Call", "fairx.futures.marketdataapi.sbe.v1.3.iscall", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0004")
fairx_futures_marketdataapi_sbe_v1_3.fields.is_prior_settlement_theoretical = ProtoField.new("Is Prior Settlement Theoretical", "fairx.futures.marketdataapi.sbe.v1.3.ispriorsettlementtheoretical", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0001")
fairx_futures_marketdataapi_sbe_v1_3.fields.large_tick = ProtoField.new("Large Tick", "fairx.futures.marketdataapi.sbe.v1.3.largetick", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.large_tick_threshold = ProtoField.new("Large Tick Threshold", "fairx.futures.marketdataapi.sbe.v1.3.largetickthreshold", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.last_instr_seq_num = ProtoField.new("Last Instr Seq Num", "fairx.futures.marketdataapi.sbe.v1.3.lastinstrseqnum", ftypes.UINT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.last_trade_price = ProtoField.new("Last Trade Price", "fairx.futures.marketdataapi.sbe.v1.3.lasttradeprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.last_trade_qty = ProtoField.new("Last Trade Qty", "fairx.futures.marketdataapi.sbe.v1.3.lasttradeqty", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.last_trade_time = ProtoField.new("Last Trade Time", "fairx.futures.marketdataapi.sbe.v1.3.lasttradetime", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.last_trading_session_date = ProtoField.new("Last Trading Session Date", "fairx.futures.marketdataapi.sbe.v1.3.lasttradingsessiondate", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.leg_1_instrument_id = ProtoField.new("Leg 1 Instrument Id", "fairx.futures.marketdataapi.sbe.v1.3.leg1instrumentid", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.leg_2_instrument_id = ProtoField.new("Leg 2 Instrument Id", "fairx.futures.marketdataapi.sbe.v1.3.leg2instrumentid", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.limit_down_price = ProtoField.new("Limit Down Price", "fairx.futures.marketdataapi.sbe.v1.3.limitdownprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.limit_up_price = ProtoField.new("Limit Up Price", "fairx.futures.marketdataapi.sbe.v1.3.limitupprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.low_price = ProtoField.new("Low Price", "fairx.futures.marketdataapi.sbe.v1.3.lowprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.market_stat_message = ProtoField.new("Market Stat Message", "fairx.futures.marketdataapi.sbe.v1.3.marketstatmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.match_id = ProtoField.new("Match Id", "fairx.futures.marketdataapi.sbe.v1.3.matchid", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "fairx.futures.marketdataapi.sbe.v1.3.messagecount", ftypes.UINT8)
fairx_futures_marketdataapi_sbe_v1_3.fields.message_header = ProtoField.new("Message Header", "fairx.futures.marketdataapi.sbe.v1.3.messageheader", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.new_leg_1_price = ProtoField.new("New Leg 1 Price", "fairx.futures.marketdataapi.sbe.v1.3.newleg1price", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.new_leg_2_price = ProtoField.new("New Leg 2 Price", "fairx.futures.marketdataapi.sbe.v1.3.newleg2price", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.new_price = ProtoField.new("New Price", "fairx.futures.marketdataapi.sbe.v1.3.newprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.next_ask_implied_price = ProtoField.new("Next Ask Implied Price", "fairx.futures.marketdataapi.sbe.v1.3.nextaskimpliedprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.next_ask_implied_qty = ProtoField.new("Next Ask Implied Qty", "fairx.futures.marketdataapi.sbe.v1.3.nextaskimpliedqty", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.next_bid_implied_price = ProtoField.new("Next Bid Implied Price", "fairx.futures.marketdataapi.sbe.v1.3.nextbidimpliedprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.next_bid_implied_qty = ProtoField.new("Next Bid Implied Qty", "fairx.futures.marketdataapi.sbe.v1.3.nextbidimpliedqty", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.next_price = ProtoField.new("Next Price", "fairx.futures.marketdataapi.sbe.v1.3.nextprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.next_qty = ProtoField.new("Next Qty", "fairx.futures.marketdataapi.sbe.v1.3.nextqty", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.old_leg_1_price = ProtoField.new("Old Leg 1 Price", "fairx.futures.marketdataapi.sbe.v1.3.oldleg1price", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.old_leg_2_price = ProtoField.new("Old Leg 2 Price", "fairx.futures.marketdataapi.sbe.v1.3.oldleg2price", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.old_price = ProtoField.new("Old Price", "fairx.futures.marketdataapi.sbe.v1.3.oldprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.open_interest = ProtoField.new("Open Interest", "fairx.futures.marketdataapi.sbe.v1.3.openinterest", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.open_interest_message = ProtoField.new("Open Interest Message", "fairx.futures.marketdataapi.sbe.v1.3.openinterestmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.option_instrument_definition_message = ProtoField.new("Option Instrument Definition Message", "fairx.futures.marketdataapi.sbe.v1.3.optioninstrumentdefinitionmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.order_count = ProtoField.new("Order Count", "fairx.futures.marketdataapi.sbe.v1.3.ordercount", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.order_delete_message = ProtoField.new("Order Delete Message", "fairx.futures.marketdataapi.sbe.v1.3.orderdeletemessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.order_id = ProtoField.new("Order Id", "fairx.futures.marketdataapi.sbe.v1.3.orderid", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.order_put_message = ProtoField.new("Order Put Message", "fairx.futures.marketdataapi.sbe.v1.3.orderputmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.order_snapshot_message = ProtoField.new("Order Snapshot Message", "fairx.futures.marketdataapi.sbe.v1.3.ordersnapshotmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.outright_instrument_definition_message = ProtoField.new("Outright Instrument Definition Message", "fairx.futures.marketdataapi.sbe.v1.3.outrightinstrumentdefinitionmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.packet = ProtoField.new("Packet", "fairx.futures.marketdataapi.sbe.v1.3.packet", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.packet_flags = ProtoField.new("Packet Flags", "fairx.futures.marketdataapi.sbe.v1.3.packetflags", ftypes.UINT8)
fairx_futures_marketdataapi_sbe_v1_3.fields.packet_header = ProtoField.new("Packet Header", "fairx.futures.marketdataapi.sbe.v1.3.packetheader", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.padding = ProtoField.new("Padding", "fairx.futures.marketdataapi.sbe.v1.3.padding", ftypes.BYTES)
fairx_futures_marketdataapi_sbe_v1_3.fields.payload = ProtoField.new("Payload", "fairx.futures.marketdataapi.sbe.v1.3.payload", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.price = ProtoField.new("Price", "fairx.futures.marketdataapi.sbe.v1.3.price", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.price_increment = ProtoField.new("Price Increment", "fairx.futures.marketdataapi.sbe.v1.3.priceincrement", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.prior_settlement_price = ProtoField.new("Prior Settlement Price", "fairx.futures.marketdataapi.sbe.v1.3.priorsettlementprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.product_code = ProtoField.new("Product Code", "fairx.futures.marketdataapi.sbe.v1.3.productcode", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.product_group = ProtoField.new("Product Group", "fairx.futures.marketdataapi.sbe.v1.3.productgroup", ftypes.INT8)
fairx_futures_marketdataapi_sbe_v1_3.fields.product_id = ProtoField.new("Product Id", "fairx.futures.marketdataapi.sbe.v1.3.productid", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.quantity = ProtoField.new("Quantity", "fairx.futures.marketdataapi.sbe.v1.3.quantity", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.reason = ProtoField.new("Reason", "fairx.futures.marketdataapi.sbe.v1.3.reason", ftypes.INT8)
fairx_futures_marketdataapi_sbe_v1_3.fields.reserved = ProtoField.new("Reserved", "fairx.futures.marketdataapi.sbe.v1.3.reserved", ftypes.INT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.reserved_13 = ProtoField.new("Reserved 13", "fairx.futures.marketdataapi.sbe.v1.3.reserved13", ftypes.UINT16, nil, base.DEC, "0xFFF8")
fairx_futures_marketdataapi_sbe_v1_3.fields.retransmit_reject_message = ProtoField.new("Retransmit Reject Message", "fairx.futures.marketdataapi.sbe.v1.3.retransmitrejectmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.retransmit_request_message = ProtoField.new("Retransmit Request Message", "fairx.futures.marketdataapi.sbe.v1.3.retransmitrequestmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.retry_delay_nanos = ProtoField.new("Retry Delay Nanos", "fairx.futures.marketdataapi.sbe.v1.3.retrydelaynanos", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "fairx.futures.marketdataapi.sbe.v1.3.sbemessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "fairx.futures.marketdataapi.sbe.v1.3.schemaid", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.sell_order_id = ProtoField.new("Sell Order Id", "fairx.futures.marketdataapi.sbe.v1.3.sellorderid", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.sending_time = ProtoField.new("Sending Time", "fairx.futures.marketdataapi.sbe.v1.3.sendingtime", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.seq_num = ProtoField.new("Seq Num", "fairx.futures.marketdataapi.sbe.v1.3.seqnum", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.settlement_price = ProtoField.new("Settlement Price", "fairx.futures.marketdataapi.sbe.v1.3.settlementprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.small_tick = ProtoField.new("Small Tick", "fairx.futures.marketdataapi.sbe.v1.3.smalltick", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.snapshot_instrument_id = ProtoField.new("Snapshot Instrument Id", "fairx.futures.marketdataapi.sbe.v1.3.snapshotinstrumentid", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.snapshot_seq_num = ProtoField.new("Snapshot Seq Num", "fairx.futures.marketdataapi.sbe.v1.3.snapshotseqnum", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.spread_buy_convention = ProtoField.new("Spread Buy Convention", "fairx.futures.marketdataapi.sbe.v1.3.spreadbuyconvention", ftypes.INT8)
fairx_futures_marketdataapi_sbe_v1_3.fields.spread_instrument_definition_message = ProtoField.new("Spread Instrument Definition Message", "fairx.futures.marketdataapi.sbe.v1.3.spreadinstrumentdefinitionmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.spread_trade_amend_message = ProtoField.new("Spread Trade Amend Message", "fairx.futures.marketdataapi.sbe.v1.3.spreadtradeamendmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.start_of_option_instrument_snapshot_message = ProtoField.new("Start Of Option Instrument Snapshot Message", "fairx.futures.marketdataapi.sbe.v1.3.startofoptioninstrumentsnapshotmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.start_of_outright_instrument_snapshot_message = ProtoField.new("Start Of Outright Instrument Snapshot Message", "fairx.futures.marketdataapi.sbe.v1.3.startofoutrightinstrumentsnapshotmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.start_of_spread_instrument_snapshot_message = ProtoField.new("Start Of Spread Instrument Snapshot Message", "fairx.futures.marketdataapi.sbe.v1.3.startofspreadinstrumentsnapshotmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.stat_type = ProtoField.new("Stat Type", "fairx.futures.marketdataapi.sbe.v1.3.stattype", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.strike_price = ProtoField.new("Strike Price", "fairx.futures.marketdataapi.sbe.v1.3.strikeprice", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "fairx.futures.marketdataapi.sbe.v1.3.symbol", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "fairx.futures.marketdataapi.sbe.v1.3.templateid", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.trade_amend_message = ProtoField.new("Trade Amend Message", "fairx.futures.marketdataapi.sbe.v1.3.tradeamendmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "fairx.futures.marketdataapi.sbe.v1.3.tradebustmessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.trade_message = ProtoField.new("Trade Message", "fairx.futures.marketdataapi.sbe.v1.3.trademessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.trade_session_volume_message = ProtoField.new("Trade Session Volume Message", "fairx.futures.marketdataapi.sbe.v1.3.tradesessionvolumemessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.trade_summary_message = ProtoField.new("Trade Summary Message", "fairx.futures.marketdataapi.sbe.v1.3.tradesummarymessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.trade_volume = ProtoField.new("Trade Volume", "fairx.futures.marketdataapi.sbe.v1.3.tradevolume", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.trading_session_date = ProtoField.new("Trading Session Date", "fairx.futures.marketdataapi.sbe.v1.3.tradingsessiondate", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.trading_status = ProtoField.new("Trading Status", "fairx.futures.marketdataapi.sbe.v1.3.tradingstatus", ftypes.INT8)
fairx_futures_marketdataapi_sbe_v1_3.fields.trading_status_update_message = ProtoField.new("Trading Status Update Message", "fairx.futures.marketdataapi.sbe.v1.3.tradingstatusupdatemessage", ftypes.STRING)
fairx_futures_marketdataapi_sbe_v1_3.fields.transact_time = ProtoField.new("Transact Time", "fairx.futures.marketdataapi.sbe.v1.3.transacttime", ftypes.INT64)
fairx_futures_marketdataapi_sbe_v1_3.fields.underlying_instrument_id = ProtoField.new("Underlying Instrument Id", "fairx.futures.marketdataapi.sbe.v1.3.underlyinginstrumentid", ftypes.INT32)
fairx_futures_marketdataapi_sbe_v1_3.fields.version = ProtoField.new("Version", "fairx.futures.marketdataapi.sbe.v1.3.version", ftypes.UINT16)
fairx_futures_marketdataapi_sbe_v1_3.fields.vwap_price = ProtoField.new("Vwap Price", "fairx.futures.marketdataapi.sbe.v1.3.vwapprice", ftypes.INT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Fairx Futures MarketDataApi Sbe 1.3 Element Dissection Options
show.definition_flags = true
show.end_of_snapshot_message = true
show.implied_order_update_message = true
show.instr_header = true
show.market_stat_message = true
show.message_header = true
show.open_interest_message = true
show.option_instrument_definition_message = true
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
show.start_of_option_instrument_snapshot_message = true
show.start_of_outright_instrument_snapshot_message = true
show.start_of_spread_instrument_snapshot_message = true
show.trade_amend_message = true
show.trade_bust_message = true
show.trade_message = true
show.trade_session_volume_message = true
show.trade_summary_message = true
show.trading_status_update_message = true
show.payload = false

-- Register Fairx Futures MarketDataApi Sbe 1.3 Show Options
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_definition_flags = Pref.bool("Show Definition Flags", show.definition_flags, "Parse and add Definition Flags to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_end_of_snapshot_message = Pref.bool("Show End Of Snapshot Message", show.end_of_snapshot_message, "Parse and add End Of Snapshot Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_implied_order_update_message = Pref.bool("Show Implied Order Update Message", show.implied_order_update_message, "Parse and add Implied Order Update Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_instr_header = Pref.bool("Show Instr Header", show.instr_header, "Parse and add Instr Header to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_market_stat_message = Pref.bool("Show Market Stat Message", show.market_stat_message, "Parse and add Market Stat Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_open_interest_message = Pref.bool("Show Open Interest Message", show.open_interest_message, "Parse and add Open Interest Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_option_instrument_definition_message = Pref.bool("Show Option Instrument Definition Message", show.option_instrument_definition_message, "Parse and add Option Instrument Definition Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_order_put_message = Pref.bool("Show Order Put Message", show.order_put_message, "Parse and add Order Put Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_order_snapshot_message = Pref.bool("Show Order Snapshot Message", show.order_snapshot_message, "Parse and add Order Snapshot Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_outright_instrument_definition_message = Pref.bool("Show Outright Instrument Definition Message", show.outright_instrument_definition_message, "Parse and add Outright Instrument Definition Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_retransmit_reject_message = Pref.bool("Show Retransmit Reject Message", show.retransmit_reject_message, "Parse and add Retransmit Reject Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_retransmit_request_message = Pref.bool("Show Retransmit Request Message", show.retransmit_request_message, "Parse and add Retransmit Request Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_spread_instrument_definition_message = Pref.bool("Show Spread Instrument Definition Message", show.spread_instrument_definition_message, "Parse and add Spread Instrument Definition Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_spread_trade_amend_message = Pref.bool("Show Spread Trade Amend Message", show.spread_trade_amend_message, "Parse and add Spread Trade Amend Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_start_of_option_instrument_snapshot_message = Pref.bool("Show Start Of Option Instrument Snapshot Message", show.start_of_option_instrument_snapshot_message, "Parse and add Start Of Option Instrument Snapshot Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_start_of_outright_instrument_snapshot_message = Pref.bool("Show Start Of Outright Instrument Snapshot Message", show.start_of_outright_instrument_snapshot_message, "Parse and add Start Of Outright Instrument Snapshot Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_start_of_spread_instrument_snapshot_message = Pref.bool("Show Start Of Spread Instrument Snapshot Message", show.start_of_spread_instrument_snapshot_message, "Parse and add Start Of Spread Instrument Snapshot Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_amend_message = Pref.bool("Show Trade Amend Message", show.trade_amend_message, "Parse and add Trade Amend Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_bust_message = Pref.bool("Show Trade Bust Message", show.trade_bust_message, "Parse and add Trade Bust Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_session_volume_message = Pref.bool("Show Trade Session Volume Message", show.trade_session_volume_message, "Parse and add Trade Session Volume Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_summary_message = Pref.bool("Show Trade Summary Message", show.trade_summary_message, "Parse and add Trade Summary Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trading_status_update_message = Pref.bool("Show Trading Status Update Message", show.trading_status_update_message, "Parse and add Trading Status Update Message to protocol tree")
fairx_futures_marketdataapi_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function fairx_futures_marketdataapi_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.definition_flags ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_definition_flags then
    show.definition_flags = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_definition_flags
    changed = true
  end
  if show.end_of_snapshot_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_end_of_snapshot_message then
    show.end_of_snapshot_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_end_of_snapshot_message
    changed = true
  end
  if show.implied_order_update_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_implied_order_update_message then
    show.implied_order_update_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_implied_order_update_message
    changed = true
  end
  if show.instr_header ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_instr_header then
    show.instr_header = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_instr_header
    changed = true
  end
  if show.market_stat_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_market_stat_message then
    show.market_stat_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_market_stat_message
    changed = true
  end
  if show.message_header ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_message_header then
    show.message_header = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_message_header
    changed = true
  end
  if show.open_interest_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_open_interest_message then
    show.open_interest_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_open_interest_message
    changed = true
  end
  if show.option_instrument_definition_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_option_instrument_definition_message then
    show.option_instrument_definition_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_option_instrument_definition_message
    changed = true
  end
  if show.order_delete_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_order_delete_message then
    show.order_delete_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_order_delete_message
    changed = true
  end
  if show.order_put_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_order_put_message then
    show.order_put_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_order_put_message
    changed = true
  end
  if show.order_snapshot_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_order_snapshot_message then
    show.order_snapshot_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_order_snapshot_message
    changed = true
  end
  if show.outright_instrument_definition_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_outright_instrument_definition_message then
    show.outright_instrument_definition_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_outright_instrument_definition_message
    changed = true
  end
  if show.packet ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_packet then
    show.packet = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_packet_header then
    show.packet_header = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_packet_header
    changed = true
  end
  if show.retransmit_reject_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_retransmit_reject_message then
    show.retransmit_reject_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_retransmit_reject_message
    changed = true
  end
  if show.retransmit_request_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_retransmit_request_message then
    show.retransmit_request_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_retransmit_request_message
    changed = true
  end
  if show.sbe_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.spread_instrument_definition_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_spread_instrument_definition_message then
    show.spread_instrument_definition_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_spread_instrument_definition_message
    changed = true
  end
  if show.spread_trade_amend_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_spread_trade_amend_message then
    show.spread_trade_amend_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_spread_trade_amend_message
    changed = true
  end
  if show.start_of_option_instrument_snapshot_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_start_of_option_instrument_snapshot_message then
    show.start_of_option_instrument_snapshot_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_start_of_option_instrument_snapshot_message
    changed = true
  end
  if show.start_of_outright_instrument_snapshot_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_start_of_outright_instrument_snapshot_message then
    show.start_of_outright_instrument_snapshot_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_start_of_outright_instrument_snapshot_message
    changed = true
  end
  if show.start_of_spread_instrument_snapshot_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_start_of_spread_instrument_snapshot_message then
    show.start_of_spread_instrument_snapshot_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_start_of_spread_instrument_snapshot_message
    changed = true
  end
  if show.trade_amend_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_amend_message then
    show.trade_amend_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_amend_message
    changed = true
  end
  if show.trade_bust_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_bust_message then
    show.trade_bust_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_bust_message
    changed = true
  end
  if show.trade_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_message then
    show.trade_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_message
    changed = true
  end
  if show.trade_session_volume_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_session_volume_message then
    show.trade_session_volume_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_session_volume_message
    changed = true
  end
  if show.trade_summary_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_summary_message then
    show.trade_summary_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trade_summary_message
    changed = true
  end
  if show.trading_status_update_message ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trading_status_update_message then
    show.trading_status_update_message = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_trading_status_update_message
    changed = true
  end
  if show.payload ~= fairx_futures_marketdataapi_sbe_v1_3.prefs.show_payload then
    show.payload = fairx_futures_marketdataapi_sbe_v1_3.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Fairx Futures MarketDataApi Sbe 1.3
-----------------------------------------------------------------------

-- Display: Padding
display.padding = function(value)
  return "Padding: "..value
end

-- Dissect runtime sized field: Padding
dissect.padding = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding(value, buffer, offset, packet, parent, size)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.padding, range, value, display)

  return offset + size
end

-- Size: Reason
size_of.reason = 1

-- Display: Reason
display.reason = function(value)
  if value == 1 then
    return "Reason: Seqtoolow (1)"
  end
  if value == 2 then
    return "Reason: Seqtoohigh (2)"
  end
  if value == 3 then
    return "Reason: Ratelimitexceeded (3)"
  end
  if value == 4 then
    return "Reason: Othererror (4)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
dissect.reason = function(buffer, offset, packet, parent)
  local length = size_of.reason
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.reason(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Details
size_of.details = 40

-- Display: Details
display.details = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Details: No Value"
  end

  return "Details: "..value
end

-- Dissect: Details
dissect.details = function(buffer, offset, packet, parent)
  local length = size_of.details
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

  local display = display.details(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.details, range, value, display)

  return offset + length, value
end

-- Size: Retry Delay Nanos
size_of.retry_delay_nanos = 8

-- Display: Retry Delay Nanos
display.retry_delay_nanos = function(value)
  return "Retry Delay Nanos: "..value
end

-- Dissect: Retry Delay Nanos
dissect.retry_delay_nanos = function(buffer, offset, packet, parent)
  local length = size_of.retry_delay_nanos
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.retry_delay_nanos(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.retry_delay_nanos, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Reject Message
size_of.retransmit_reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.retry_delay_nanos

  index = index + size_of.details

  index = index + size_of.reason

  return index
end

-- Display: Retransmit Reject Message
display.retransmit_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Reject Message
dissect.retransmit_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retry Delay Nanos: 8 Byte Signed Fixed Width Integer
  index, retry_delay_nanos = dissect.retry_delay_nanos(buffer, index, packet, parent)

  -- Details: 40 Byte Ascii String
  index, details = dissect.details(buffer, index, packet, parent)

  -- Reason: 1 Byte Signed Fixed Width Integer Enum with 4 values
  index, reason = dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject Message
dissect.retransmit_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_reject_message then
    local length = size_of.retransmit_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.retransmit_reject_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.retransmit_reject_message, range, display)
  end

  return dissect.retransmit_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Count
size_of.message_count = 1

-- Display: Message Count
display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
dissect.message_count = function(buffer, offset, packet, parent)
  local length = size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Begin Seq Num
size_of.begin_seq_num = 8

-- Display: Begin Seq Num
display.begin_seq_num = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
dissect.begin_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.begin_seq_num
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.begin_seq_num(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Request Message
size_of.retransmit_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.begin_seq_num

  index = index + size_of.message_count

  return index
end

-- Display: Retransmit Request Message
display.retransmit_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Request Message
dissect.retransmit_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 8 Byte Signed Fixed Width Integer
  index, begin_seq_num = dissect.begin_seq_num(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request Message
dissect.retransmit_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_request_message then
    local length = size_of.retransmit_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.retransmit_request_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.retransmit_request_message, range, display)
  end

  return dissect.retransmit_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Definition Flags
size_of.definition_flags = 2

-- Display: Definition Flags
display.definition_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Is Call flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Is Call|"
  end
  -- Is Is Announced flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Is Announced|"
  end
  -- Is Is Prior Settlement Theoretical flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Is Prior Settlement Theoretical|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Definition Flags
dissect.definition_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved 13: 13 Bit
  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.reserved_13, buffer(offset, 2))

  -- Is Call: 1 Bit
  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.is_call, buffer(offset, 2))

  -- Is Announced: 1 Bit
  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.is_announced, buffer(offset, 2))

  -- Is Prior Settlement Theoretical: 1 Bit
  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.is_prior_settlement_theoretical, buffer(offset, 2))
end

-- Dissect: Definition Flags
dissect.definition_flags = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = display.definition_flags(range, packet, parent)
  local element = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.definition_flags, range, display)

  if show.definition_flags then
    dissect.definition_flags_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Prior Settlement Price
size_of.prior_settlement_price = 8

-- Display: Prior Settlement Price
display.prior_settlement_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Prior Settlement Price: No Value"
  end
  return "Prior Settlement Price: "..value:tonumber()/1000000000
end

-- Dissect: Prior Settlement Price
dissect.prior_settlement_price = function(buffer, offset, packet, parent)
  local length = size_of.prior_settlement_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.prior_settlement_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.prior_settlement_price, range, value, display)

  return offset + length, value
end

-- Size: Next Ask Implied Qty
size_of.next_ask_implied_qty = 4

-- Display: Next Ask Implied Qty
display.next_ask_implied_qty = function(value)
  return "Next Ask Implied Qty: "..value
end

-- Dissect: Next Ask Implied Qty
dissect.next_ask_implied_qty = function(buffer, offset, packet, parent)
  local length = size_of.next_ask_implied_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.next_ask_implied_qty(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.next_ask_implied_qty, range, value, display)

  return offset + length, value
end

-- Size: Next Bid Implied Qty
size_of.next_bid_implied_qty = 4

-- Display: Next Bid Implied Qty
display.next_bid_implied_qty = function(value)
  return "Next Bid Implied Qty: "..value
end

-- Dissect: Next Bid Implied Qty
dissect.next_bid_implied_qty = function(buffer, offset, packet, parent)
  local length = size_of.next_bid_implied_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.next_bid_implied_qty(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.next_bid_implied_qty, range, value, display)

  return offset + length, value
end

-- Size: Best Ask Implied Qty
size_of.best_ask_implied_qty = 4

-- Display: Best Ask Implied Qty
display.best_ask_implied_qty = function(value)
  return "Best Ask Implied Qty: "..value
end

-- Dissect: Best Ask Implied Qty
dissect.best_ask_implied_qty = function(buffer, offset, packet, parent)
  local length = size_of.best_ask_implied_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.best_ask_implied_qty(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.best_ask_implied_qty, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Implied Qty
size_of.best_bid_implied_qty = 4

-- Display: Best Bid Implied Qty
display.best_bid_implied_qty = function(value)
  return "Best Bid Implied Qty: "..value
end

-- Dissect: Best Bid Implied Qty
dissect.best_bid_implied_qty = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_implied_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.best_bid_implied_qty(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.best_bid_implied_qty, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
size_of.open_interest = 4

-- Display: Open Interest
display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
dissect.open_interest = function(buffer, offset, packet, parent)
  local length = size_of.open_interest
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.open_interest(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Qty
size_of.last_trade_qty = 4

-- Display: Last Trade Qty
display.last_trade_qty = function(value)
  return "Last Trade Qty: "..value
end

-- Dissect: Last Trade Qty
dissect.last_trade_qty = function(buffer, offset, packet, parent)
  local length = size_of.last_trade_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.last_trade_qty(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.last_trade_qty, range, value, display)

  return offset + length, value
end

-- Size: Limit Up Price
size_of.limit_up_price = 8

-- Display: Limit Up Price
display.limit_up_price = function(value)
  return "Limit Up Price: "..value:tonumber()/1000000000
end

-- Dissect: Limit Up Price
dissect.limit_up_price = function(buffer, offset, packet, parent)
  local length = size_of.limit_up_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.limit_up_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Size: Limit Down Price
size_of.limit_down_price = 8

-- Display: Limit Down Price
display.limit_down_price = function(value)
  return "Limit Down Price: "..value:tonumber()/1000000000
end

-- Dissect: Limit Down Price
dissect.limit_down_price = function(buffer, offset, packet, parent)
  local length = size_of.limit_down_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.limit_down_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Size: Next Ask Implied Price
size_of.next_ask_implied_price = 8

-- Display: Next Ask Implied Price
display.next_ask_implied_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Next Ask Implied Price: No Value"
  end
  return "Next Ask Implied Price: "..value:tonumber()/1000000000
end

-- Dissect: Next Ask Implied Price
dissect.next_ask_implied_price = function(buffer, offset, packet, parent)
  local length = size_of.next_ask_implied_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.next_ask_implied_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.next_ask_implied_price, range, value, display)

  return offset + length, value
end

-- Size: Next Bid Implied Price
size_of.next_bid_implied_price = 8

-- Display: Next Bid Implied Price
display.next_bid_implied_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Next Bid Implied Price: No Value"
  end
  return "Next Bid Implied Price: "..value:tonumber()/1000000000
end

-- Dissect: Next Bid Implied Price
dissect.next_bid_implied_price = function(buffer, offset, packet, parent)
  local length = size_of.next_bid_implied_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.next_bid_implied_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.next_bid_implied_price, range, value, display)

  return offset + length, value
end

-- Size: Best Ask Implied Price
size_of.best_ask_implied_price = 8

-- Display: Best Ask Implied Price
display.best_ask_implied_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Best Ask Implied Price: No Value"
  end
  return "Best Ask Implied Price: "..value:tonumber()/1000000000
end

-- Dissect: Best Ask Implied Price
dissect.best_ask_implied_price = function(buffer, offset, packet, parent)
  local length = size_of.best_ask_implied_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.best_ask_implied_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.best_ask_implied_price, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Implied Price
size_of.best_bid_implied_price = 8

-- Display: Best Bid Implied Price
display.best_bid_implied_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Best Bid Implied Price: No Value"
  end
  return "Best Bid Implied Price: "..value:tonumber()/1000000000
end

-- Dissect: Best Bid Implied Price
dissect.best_bid_implied_price = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_implied_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.best_bid_implied_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.best_bid_implied_price, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Time
size_of.last_trade_time = 8

-- Display: Last Trade Time
display.last_trade_time = function(value)
  -- Check if field has value
  if value == Int64(0x7FFFFFFF, 0xFFFFFFF) then
    return "Last Trade Time: No Value"
  end

  return "Last Trade Time: "..value
end

-- Dissect: Last Trade Time
dissect.last_trade_time = function(buffer, offset, packet, parent)
  local length = size_of.last_trade_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.last_trade_time(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Size: Last Trade Price
size_of.last_trade_price = 8

-- Display: Last Trade Price
display.last_trade_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Last Trade Price: No Value"
  end
  return "Last Trade Price: "..value:tonumber()/1000000000
end

-- Dissect: Last Trade Price
dissect.last_trade_price = function(buffer, offset, packet, parent)
  local length = size_of.last_trade_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.last_trade_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price
size_of.settlement_price = 8

-- Display: Settlement Price
display.settlement_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Settlement Price: No Value"
  end
  return "Settlement Price: "..value:tonumber()/1000000000
end

-- Dissect: Settlement Price
dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = size_of.settlement_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Size: Vwap Price
size_of.vwap_price = 8

-- Display: Vwap Price
display.vwap_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Vwap Price: No Value"
  end
  return "Vwap Price: "..value:tonumber()/1000000000
end

-- Dissect: Vwap Price
dissect.vwap_price = function(buffer, offset, packet, parent)
  local length = size_of.vwap_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.vwap_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.vwap_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
size_of.high_price = 8

-- Display: High Price
display.high_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "High Price: No Value"
  end
  return "High Price: "..value:tonumber()/1000000000
end

-- Dissect: High Price
dissect.high_price = function(buffer, offset, packet, parent)
  local length = size_of.high_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.high_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price
size_of.low_price = 8

-- Display: Low Price
display.low_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Low Price: No Value"
  end
  return "Low Price: "..value:tonumber()/1000000000
end

-- Dissect: Low Price
dissect.low_price = function(buffer, offset, packet, parent)
  local length = size_of.low_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.low_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: Close Price
size_of.close_price = 8

-- Display: Close Price
display.close_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Close Price: No Value"
  end
  return "Close Price: "..value:tonumber()/1000000000
end

-- Dissect: Close Price
dissect.close_price = function(buffer, offset, packet, parent)
  local length = size_of.close_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.close_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.close_price, range, value, display)

  return offset + length, value
end

-- Size: Day Open Price
size_of.day_open_price = 8

-- Display: Day Open Price
display.day_open_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Day Open Price: No Value"
  end
  return "Day Open Price: "..value:tonumber()/1000000000
end

-- Dissect: Day Open Price
dissect.day_open_price = function(buffer, offset, packet, parent)
  local length = size_of.day_open_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.day_open_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.day_open_price, range, value, display)

  return offset + length, value
end

-- Size: Indicative Open Price
size_of.indicative_open_price = 8

-- Display: Indicative Open Price
display.indicative_open_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Indicative Open Price: No Value"
  end
  return "Indicative Open Price: "..value:tonumber()/1000000000
end

-- Dissect: Indicative Open Price
dissect.indicative_open_price = function(buffer, offset, packet, parent)
  local length = size_of.indicative_open_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.indicative_open_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.indicative_open_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume
size_of.trade_volume = 4

-- Display: Trade Volume
display.trade_volume = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
dissect.trade_volume = function(buffer, offset, packet, parent)
  local length = size_of.trade_volume
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.trade_volume(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Size: Snapshot Seq Num
size_of.snapshot_seq_num = 2

-- Display: Snapshot Seq Num
display.snapshot_seq_num = function(value)
  return "Snapshot Seq Num: "..value
end

-- Dissect: Snapshot Seq Num
dissect.snapshot_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.snapshot_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.snapshot_seq_num(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.snapshot_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Snapshot Message
size_of.end_of_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + size_of.snapshot_seq_num

  index = index + size_of.trade_volume

  index = index + size_of.indicative_open_price

  index = index + size_of.day_open_price

  index = index + size_of.close_price

  index = index + size_of.low_price

  index = index + size_of.high_price

  index = index + size_of.vwap_price

  index = index + size_of.settlement_price

  index = index + size_of.last_trade_price

  index = index + size_of.last_trade_time

  index = index + size_of.best_bid_implied_price

  index = index + size_of.best_ask_implied_price

  index = index + size_of.next_bid_implied_price

  index = index + size_of.next_ask_implied_price

  index = index + size_of.limit_down_price

  index = index + size_of.limit_up_price

  index = index + size_of.last_trade_qty

  index = index + size_of.open_interest

  index = index + size_of.best_bid_implied_qty

  index = index + size_of.best_ask_implied_qty

  index = index + size_of.next_bid_implied_qty

  index = index + size_of.next_ask_implied_qty

  index = index + size_of.prior_settlement_price

  index = index + size_of.definition_flags

  return index
end

-- Display: End Of Snapshot Message
display.end_of_snapshot_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
dissect.end_of_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = dissect.snapshot_seq_num(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Signed Fixed Width Integer
  index, trade_volume = dissect.trade_volume(buffer, index, packet, parent)

  -- Indicative Open Price: 8 Byte Signed Fixed Width Integer Nullable
  index, indicative_open_price = dissect.indicative_open_price(buffer, index, packet, parent)

  -- Day Open Price: 8 Byte Signed Fixed Width Integer Nullable
  index, day_open_price = dissect.day_open_price(buffer, index, packet, parent)

  -- Close Price: 8 Byte Signed Fixed Width Integer Nullable
  index, close_price = dissect.close_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- Vwap Price: 8 Byte Signed Fixed Width Integer Nullable
  index, vwap_price = dissect.vwap_price(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = dissect.settlement_price(buffer, index, packet, parent)

  -- Last Trade Price: 8 Byte Signed Fixed Width Integer Nullable
  index, last_trade_price = dissect.last_trade_price(buffer, index, packet, parent)

  -- Last Trade Time: 8 Byte Signed Fixed Width Integer Nullable
  index, last_trade_time = dissect.last_trade_time(buffer, index, packet, parent)

  -- Best Bid Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, best_bid_implied_price = dissect.best_bid_implied_price(buffer, index, packet, parent)

  -- Best Ask Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, best_ask_implied_price = dissect.best_ask_implied_price(buffer, index, packet, parent)

  -- Next Bid Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, next_bid_implied_price = dissect.next_bid_implied_price(buffer, index, packet, parent)

  -- Next Ask Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, next_ask_implied_price = dissect.next_ask_implied_price(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = dissect.limit_down_price(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = dissect.limit_up_price(buffer, index, packet, parent)

  -- Last Trade Qty: 4 Byte Signed Fixed Width Integer
  index, last_trade_qty = dissect.last_trade_qty(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Signed Fixed Width Integer
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Best Bid Implied Qty: 4 Byte Signed Fixed Width Integer
  index, best_bid_implied_qty = dissect.best_bid_implied_qty(buffer, index, packet, parent)

  -- Best Ask Implied Qty: 4 Byte Signed Fixed Width Integer
  index, best_ask_implied_qty = dissect.best_ask_implied_qty(buffer, index, packet, parent)

  -- Next Bid Implied Qty: 4 Byte Signed Fixed Width Integer
  index, next_bid_implied_qty = dissect.next_bid_implied_qty(buffer, index, packet, parent)

  -- Next Ask Implied Qty: 4 Byte Signed Fixed Width Integer
  index, next_ask_implied_qty = dissect.next_ask_implied_qty(buffer, index, packet, parent)

  -- Prior Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price = dissect.prior_settlement_price(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = dissect.definition_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
dissect.end_of_snapshot_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_snapshot_message then
    local length = size_of.end_of_snapshot_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.end_of_snapshot_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.end_of_snapshot_message, range, display)
  end

  return dissect.end_of_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value:tonumber()/1000000000
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.price, range, value, display)

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
  local value = range:le_int64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
size_of.transact_time = 8

-- Display: Transact Time
display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
dissect.transact_time = function(buffer, offset, packet, parent)
  local length = size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.transact_time(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Quantity
size_of.quantity = 4

-- Display: Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local length = size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Snapshot Message
size_of.order_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + size_of.snapshot_seq_num

  index = index + size_of.quantity

  index = index + size_of.transact_time

  index = index + size_of.order_id

  index = index + size_of.price

  return index
end

-- Display: Order Snapshot Message
display.order_snapshot_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Snapshot Message
dissect.order_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = dissect.snapshot_seq_num(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Snapshot Message
dissect.order_snapshot_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_snapshot_message then
    local length = size_of.order_snapshot_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_snapshot_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.order_snapshot_message, range, display)
  end

  return dissect.order_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Size: Trading Status
size_of.trading_status = 1

-- Display: Trading Status
display.trading_status = function(value)
  if value == 0 then
    return "Trading Status: Preopen (0)"
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
    return "Trading Status: Preopennocancel (5)"
  end
  if value == 6 then
    return "Trading Status: Expired (6)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
dissect.trading_status = function(buffer, offset, packet, parent)
  local length = size_of.trading_status
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Product Group
size_of.product_group = 1

-- Display: Product Group
display.product_group = function(value)
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
    return "Product Group: Interestrate (4)"
  end
  if value == 5 then
    return "Product Group: Agriculture (5)"
  end

  return "Product Group: Unknown("..value..")"
end

-- Dissect: Product Group
dissect.product_group = function(buffer, offset, packet, parent)
  local length = size_of.product_group
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.product_group(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.product_group, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Date
size_of.trading_session_date = 2

-- Display: Trading Session Date
display.trading_session_date = function(value)
  return "Trading Session Date: "..value
end

-- Dissect: Trading Session Date
dissect.trading_session_date = function(buffer, offset, packet, parent)
  local length = size_of.trading_session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_session_date(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.trading_session_date, range, value, display)

  return offset + length, value
end

-- Size: Last Trading Session Date
size_of.last_trading_session_date = 2

-- Display: Last Trading Session Date
display.last_trading_session_date = function(value)
  return "Last Trading Session Date: "..value
end

-- Dissect: Last Trading Session Date
dissect.last_trading_session_date = function(buffer, offset, packet, parent)
  local length = size_of.last_trading_session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_trading_session_date(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.last_trading_session_date, range, value, display)

  return offset + length, value
end

-- Size: First Trading Session Date
size_of.first_trading_session_date = 2

-- Display: First Trading Session Date
display.first_trading_session_date = function(value)
  return "First Trading Session Date: "..value
end

-- Dissect: First Trading Session Date
dissect.first_trading_session_date = function(buffer, offset, packet, parent)
  local length = size_of.first_trading_session_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.first_trading_session_date(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.first_trading_session_date, range, value, display)

  return offset + length, value
end

-- Size: Order Count
size_of.order_count = 4

-- Display: Order Count
display.order_count = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
dissect.order_count = function(buffer, offset, packet, parent)
  local length = size_of.order_count
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.order_count(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.order_count, range, value, display)

  return offset + length, value
end

-- Size: Underlying Instrument Id
size_of.underlying_instrument_id = 4

-- Display: Underlying Instrument Id
display.underlying_instrument_id = function(value)
  return "Underlying Instrument Id: "..value
end

-- Dissect: Underlying Instrument Id
dissect.underlying_instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.underlying_instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.underlying_instrument_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.underlying_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
size_of.product_id = 4

-- Display: Product Id
display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
dissect.product_id = function(buffer, offset, packet, parent)
  local length = size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
size_of.strike_price = 8

-- Display: Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value:tonumber()/1000000000
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local length = size_of.strike_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Large Tick Threshold
size_of.large_tick_threshold = 8

-- Display: Large Tick Threshold
display.large_tick_threshold = function(value)
  return "Large Tick Threshold: "..value:tonumber()/1000000000
end

-- Dissect: Large Tick Threshold
dissect.large_tick_threshold = function(buffer, offset, packet, parent)
  local length = size_of.large_tick_threshold
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.large_tick_threshold(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.large_tick_threshold, range, value, display)

  return offset + length, value
end

-- Size: Large Tick
size_of.large_tick = 8

-- Display: Large Tick
display.large_tick = function(value)
  return "Large Tick: "..value:tonumber()/1000000000
end

-- Dissect: Large Tick
dissect.large_tick = function(buffer, offset, packet, parent)
  local length = size_of.large_tick
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.large_tick(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.large_tick, range, value, display)

  return offset + length, value
end

-- Size: Cfi Code
size_of.cfi_code = 8

-- Display: Cfi Code
display.cfi_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
dissect.cfi_code = function(buffer, offset, packet, parent)
  local length = size_of.cfi_code
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

  local display = display.cfi_code(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Size: Small Tick
size_of.small_tick = 8

-- Display: Small Tick
display.small_tick = function(value)
  return "Small Tick: "..value:tonumber()/1000000000
end

-- Dissect: Small Tick
dissect.small_tick = function(buffer, offset, packet, parent)
  local length = size_of.small_tick
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.small_tick(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.small_tick, range, value, display)

  return offset + length, value
end

-- Size: Description
size_of.description = 32

-- Display: Description
display.description = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Description: No Value"
  end

  return "Description: "..value
end

-- Dissect: Description
dissect.description = function(buffer, offset, packet, parent)
  local length = size_of.description
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

  local display = display.description(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.description, range, value, display)

  return offset + length, value
end

-- Size: Product Code
size_of.product_code = 8

-- Display: Product Code
display.product_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Code: No Value"
  end

  return "Product Code: "..value
end

-- Dissect: Product Code
dissect.product_code = function(buffer, offset, packet, parent)
  local length = size_of.product_code
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

  local display = display.product_code(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.product_code, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 24

-- Display: Symbol
display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
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

  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Last Instr Seq Num
size_of.last_instr_seq_num = 4

-- Display: Last Instr Seq Num
display.last_instr_seq_num = function(value)
  return "Last Instr Seq Num: "..value
end

-- Dissect: Last Instr Seq Num
dissect.last_instr_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.last_instr_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_instr_seq_num(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.last_instr_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Start Of Option Instrument Snapshot Message
size_of.start_of_option_instrument_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + size_of.snapshot_seq_num

  index = index + size_of.last_instr_seq_num

  index = index + size_of.symbol

  index = index + size_of.product_code

  index = index + size_of.description

  index = index + size_of.small_tick

  index = index + size_of.cfi_code

  index = index + size_of.large_tick

  index = index + size_of.large_tick_threshold

  index = index + size_of.strike_price

  index = index + size_of.product_id

  index = index + size_of.underlying_instrument_id

  index = index + size_of.order_count

  index = index + size_of.first_trading_session_date

  index = index + size_of.last_trading_session_date

  index = index + size_of.trading_session_date

  index = index + size_of.product_group

  index = index + size_of.trading_status

  index = index + size_of.definition_flags

  return index
end

-- Display: Start Of Option Instrument Snapshot Message
display.start_of_option_instrument_snapshot_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Option Instrument Snapshot Message
dissect.start_of_option_instrument_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = dissect.snapshot_seq_num(buffer, index, packet, parent)

  -- Last Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_instr_seq_num = dissect.last_instr_seq_num(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = dissect.description(buffer, index, packet, parent)

  -- Small Tick: 8 Byte Signed Fixed Width Integer
  index, small_tick = dissect.small_tick(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Large Tick: 8 Byte Signed Fixed Width Integer
  index, large_tick = dissect.large_tick(buffer, index, packet, parent)

  -- Large Tick Threshold: 8 Byte Signed Fixed Width Integer
  index, large_tick_threshold = dissect.large_tick_threshold(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = dissect.product_id(buffer, index, packet, parent)

  -- Underlying Instrument Id: 4 Byte Signed Fixed Width Integer
  index, underlying_instrument_id = dissect.underlying_instrument_id(buffer, index, packet, parent)

  -- Order Count: 4 Byte Signed Fixed Width Integer
  index, order_count = dissect.order_count(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = dissect.trading_session_date(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = dissect.definition_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Option Instrument Snapshot Message
dissect.start_of_option_instrument_snapshot_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.start_of_option_instrument_snapshot_message then
    local length = size_of.start_of_option_instrument_snapshot_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.start_of_option_instrument_snapshot_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.start_of_option_instrument_snapshot_message, range, display)
  end

  return dissect.start_of_option_instrument_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Size: Spread Buy Convention
size_of.spread_buy_convention = 1

-- Display: Spread Buy Convention
display.spread_buy_convention = function(value)
  if value == 1 then
    return "Spread Buy Convention: Usefarbid (1)"
  end
  if value == -1 then
    return "Spread Buy Convention: Usenearbid (-1)"
  end

  return "Spread Buy Convention: Unknown("..value..")"
end

-- Dissect: Spread Buy Convention
dissect.spread_buy_convention = function(buffer, offset, packet, parent)
  local length = size_of.spread_buy_convention
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.spread_buy_convention(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.spread_buy_convention, range, value, display)

  return offset + length, value
end

-- Size: Leg 2 Instrument Id
size_of.leg_2_instrument_id = 4

-- Display: Leg 2 Instrument Id
display.leg_2_instrument_id = function(value)
  return "Leg 2 Instrument Id: "..value
end

-- Dissect: Leg 2 Instrument Id
dissect.leg_2_instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_2_instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_2_instrument_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.leg_2_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Leg 1 Instrument Id
size_of.leg_1_instrument_id = 4

-- Display: Leg 1 Instrument Id
display.leg_1_instrument_id = function(value)
  return "Leg 1 Instrument Id: "..value
end

-- Dissect: Leg 1 Instrument Id
dissect.leg_1_instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_1_instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_1_instrument_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.leg_1_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Contract Size
size_of.contract_size = 4

-- Display: Contract Size
display.contract_size = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
dissect.contract_size = function(buffer, offset, packet, parent)
  local length = size_of.contract_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.contract_size(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Size: Currency
size_of.currency = 8

-- Display: Currency
display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = size_of.currency
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

  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Price Increment
size_of.price_increment = 8

-- Display: Price Increment
display.price_increment = function(value)
  return "Price Increment: "..value:tonumber()/1000000000
end

-- Dissect: Price Increment
dissect.price_increment = function(buffer, offset, packet, parent)
  local length = size_of.price_increment
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.price_increment(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Calculate size of: Start Of Spread Instrument Snapshot Message
size_of.start_of_spread_instrument_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + size_of.snapshot_seq_num

  index = index + size_of.last_instr_seq_num

  index = index + size_of.symbol

  index = index + size_of.product_code

  index = index + size_of.description

  index = index + size_of.price_increment

  index = index + size_of.cfi_code

  index = index + size_of.currency

  index = index + size_of.product_id

  index = index + size_of.contract_size

  index = index + size_of.order_count

  index = index + size_of.first_trading_session_date

  index = index + size_of.last_trading_session_date

  index = index + size_of.trading_session_date

  index = index + size_of.product_group

  index = index + size_of.trading_status

  index = index + size_of.leg_1_instrument_id

  index = index + size_of.leg_2_instrument_id

  index = index + size_of.spread_buy_convention

  return index
end

-- Display: Start Of Spread Instrument Snapshot Message
display.start_of_spread_instrument_snapshot_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Spread Instrument Snapshot Message
dissect.start_of_spread_instrument_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = dissect.snapshot_seq_num(buffer, index, packet, parent)

  -- Last Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_instr_seq_num = dissect.last_instr_seq_num(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = dissect.description(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = dissect.price_increment(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = dissect.product_id(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = dissect.contract_size(buffer, index, packet, parent)

  -- Order Count: 4 Byte Signed Fixed Width Integer
  index, order_count = dissect.order_count(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = dissect.trading_session_date(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Leg 1 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_1_instrument_id = dissect.leg_1_instrument_id(buffer, index, packet, parent)

  -- Leg 2 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_2_instrument_id = dissect.leg_2_instrument_id(buffer, index, packet, parent)

  -- Spread Buy Convention: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, spread_buy_convention = dissect.spread_buy_convention(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spread Instrument Snapshot Message
dissect.start_of_spread_instrument_snapshot_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.start_of_spread_instrument_snapshot_message then
    local length = size_of.start_of_spread_instrument_snapshot_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.start_of_spread_instrument_snapshot_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.start_of_spread_instrument_snapshot_message, range, display)
  end

  return dissect.start_of_spread_instrument_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Start Of Outright Instrument Snapshot Message
size_of.start_of_outright_instrument_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + size_of.snapshot_seq_num

  index = index + size_of.last_instr_seq_num

  index = index + size_of.symbol

  index = index + size_of.product_code

  index = index + size_of.description

  index = index + size_of.price_increment

  index = index + size_of.cfi_code

  index = index + size_of.currency

  index = index + size_of.product_id

  index = index + size_of.contract_size

  index = index + size_of.order_count

  index = index + size_of.first_trading_session_date

  index = index + size_of.last_trading_session_date

  index = index + size_of.trading_session_date

  index = index + size_of.product_group

  index = index + size_of.trading_status

  return index
end

-- Display: Start Of Outright Instrument Snapshot Message
display.start_of_outright_instrument_snapshot_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Outright Instrument Snapshot Message
dissect.start_of_outright_instrument_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = dissect.snapshot_seq_num(buffer, index, packet, parent)

  -- Last Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_instr_seq_num = dissect.last_instr_seq_num(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = dissect.description(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = dissect.price_increment(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = dissect.product_id(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = dissect.contract_size(buffer, index, packet, parent)

  -- Order Count: 4 Byte Signed Fixed Width Integer
  index, order_count = dissect.order_count(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = dissect.trading_session_date(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Outright Instrument Snapshot Message
dissect.start_of_outright_instrument_snapshot_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.start_of_outright_instrument_snapshot_message then
    local length = size_of.start_of_outright_instrument_snapshot_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.start_of_outright_instrument_snapshot_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.start_of_outright_instrument_snapshot_message, range, display)
  end

  return dissect.start_of_outright_instrument_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved
size_of.reserved = 2

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Instr Seq Num
size_of.instr_seq_num = 4

-- Display: Instr Seq Num
display.instr_seq_num = function(value)
  return "Instr Seq Num: "..value
end

-- Dissect: Instr Seq Num
dissect.instr_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.instr_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.instr_seq_num(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.instr_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
size_of.instrument_id = 4

-- Display: Instrument Id
display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Side
size_of.instrument_side = 1

-- Display: Instrument Side
display.instrument_side = function(value)
  return "Instrument Side: "..value
end

-- Dissect: Instrument Side
dissect.instrument_side = function(buffer, offset, packet, parent)
  local length = size_of.instrument_side
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.instrument_side(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.instrument_side, range, value, display)

  return offset + length, value
end

-- Size: Instrument Flags
size_of.instrument_flags = 1

-- Display: Instrument Flags
display.instrument_flags = function(value)
  return "Instrument Flags: "..value
end

-- Dissect: Instrument Flags
dissect.instrument_flags = function(buffer, offset, packet, parent)
  local length = size_of.instrument_flags
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.instrument_flags(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.instrument_flags, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instr Header
size_of.instr_header = function(buffer, offset)
  local index = 0

  index = index + size_of.instrument_flags

  index = index + size_of.instrument_side

  index = index + size_of.instrument_id

  index = index + size_of.instr_seq_num

  index = index + size_of.trading_session_date

  index = index + size_of.reserved

  index = index + size_of.transact_time

  return index
end

-- Display: Instr Header
display.instr_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instr Header
dissect.instr_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Flags: 1 Byte Unsigned Fixed Width Integer
  index, instrument_flags = dissect.instrument_flags(buffer, index, packet, parent)

  -- Instrument Side: 1 Byte Signed Fixed Width Integer
  index, instrument_side = dissect.instrument_side(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, instr_seq_num = dissect.instr_seq_num(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = dissect.trading_session_date(buffer, index, packet, parent)

  -- Reserved: 2 Byte Signed Fixed Width Integer
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instr Header
dissect.instr_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instr_header then
    local length = size_of.instr_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instr_header(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.instr_header, range, display)
  end

  return dissect.instr_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Open Interest Message
size_of.open_interest_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.quantity

  return index
end

-- Display: Open Interest Message
display.open_interest_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Interest Message
dissect.open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
dissect.open_interest_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_interest_message then
    local length = size_of.open_interest_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.open_interest_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.open_interest_message, range, display)
  end

  return dissect.open_interest_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Session Volume Message
size_of.trade_session_volume_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.vwap_price

  index = index + size_of.trade_volume

  return index
end

-- Display: Trade Session Volume Message
display.trade_session_volume_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Session Volume Message
dissect.trade_session_volume_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Vwap Price: 8 Byte Signed Fixed Width Integer Nullable
  index, vwap_price = dissect.vwap_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Signed Fixed Width Integer
  index, trade_volume = dissect.trade_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Session Volume Message
dissect.trade_session_volume_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_session_volume_message then
    local length = size_of.trade_session_volume_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_session_volume_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.trade_session_volume_message, range, display)
  end

  return dissect.trade_session_volume_message_fields(buffer, offset, packet, parent)
end

-- Size: Stat Type
size_of.stat_type = 1

-- Display: Stat Type
display.stat_type = function(value)
  if value == "4" then
    return "Stat Type: Dayopeningprice (4)"
  end
  if value == "5" then
    return "Stat Type: Closingprice (5)"
  end
  if value == "6" then
    return "Stat Type: Settlementprice (6)"
  end
  if value == "7" then
    return "Stat Type: Tradingsessionhighprice (7)"
  end
  if value == "8" then
    return "Stat Type: Tradingsessionlowprice (8)"
  end
  if value == "F" then
    return "Stat Type: Referenceprice (F)"
  end
  if value == "I" then
    return "Stat Type: Indicativeopeningprice (I)"
  end

  return "Stat Type: Unknown("..value..")"
end

-- Dissect: Stat Type
dissect.stat_type = function(buffer, offset, packet, parent)
  local length = size_of.stat_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.stat_type(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.stat_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Stat Message
size_of.market_stat_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.price

  index = index + size_of.stat_type

  return index
end

-- Display: Market Stat Message
display.market_stat_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Stat Message
dissect.market_stat_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Stat Type: 1 Byte Ascii String Enum with 7 values
  index, stat_type = dissect.stat_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Stat Message
dissect.market_stat_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_stat_message then
    local length = size_of.market_stat_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_stat_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.market_stat_message, range, display)
  end

  return dissect.market_stat_message_fields(buffer, offset, packet, parent)
end

-- Size: Sell Order Id
size_of.sell_order_id = 8

-- Display: Sell Order Id
display.sell_order_id = function(value)
  -- Check if field has value
  if value == Int64(0x7FFFFFFF, 0xFFFFFFF) then
    return "Sell Order Id: No Value"
  end

  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
dissect.sell_order_id = function(buffer, offset, packet, parent)
  local length = size_of.sell_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.sell_order_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Size: Buy Order Id
size_of.buy_order_id = 8

-- Display: Buy Order Id
display.buy_order_id = function(value)
  -- Check if field has value
  if value == Int64(0x7FFFFFFF, 0xFFFFFFF) then
    return "Buy Order Id: No Value"
  end

  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
dissect.buy_order_id = function(buffer, offset, packet, parent)
  local length = size_of.buy_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.buy_order_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Size: Match Id
size_of.match_id = 8

-- Display: Match Id
display.match_id = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
dissect.match_id = function(buffer, offset, packet, parent)
  local length = size_of.match_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.match_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.match_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Bust Message
size_of.trade_bust_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.match_id

  index = index + size_of.buy_order_id

  index = index + size_of.sell_order_id

  return index
end

-- Display: Trade Bust Message
display.trade_bust_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Bust Message
dissect.trade_bust_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = dissect.match_id(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = dissect.sell_order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
dissect.trade_bust_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_bust_message then
    local length = size_of.trade_bust_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_bust_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.trade_bust_message, range, display)
  end

  return dissect.trade_bust_message_fields(buffer, offset, packet, parent)
end

-- Size: New Leg 2 Price
size_of.new_leg_2_price = 8

-- Display: New Leg 2 Price
display.new_leg_2_price = function(value)
  return "New Leg 2 Price: "..value:tonumber()/1000000000
end

-- Dissect: New Leg 2 Price
dissect.new_leg_2_price = function(buffer, offset, packet, parent)
  local length = size_of.new_leg_2_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.new_leg_2_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.new_leg_2_price, range, value, display)

  return offset + length, value
end

-- Size: Old Leg 2 Price
size_of.old_leg_2_price = 8

-- Display: Old Leg 2 Price
display.old_leg_2_price = function(value)
  return "Old Leg 2 Price: "..value:tonumber()/1000000000
end

-- Dissect: Old Leg 2 Price
dissect.old_leg_2_price = function(buffer, offset, packet, parent)
  local length = size_of.old_leg_2_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.old_leg_2_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.old_leg_2_price, range, value, display)

  return offset + length, value
end

-- Size: New Leg 1 Price
size_of.new_leg_1_price = 8

-- Display: New Leg 1 Price
display.new_leg_1_price = function(value)
  return "New Leg 1 Price: "..value:tonumber()/1000000000
end

-- Dissect: New Leg 1 Price
dissect.new_leg_1_price = function(buffer, offset, packet, parent)
  local length = size_of.new_leg_1_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.new_leg_1_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.new_leg_1_price, range, value, display)

  return offset + length, value
end

-- Size: Old Leg 1 Price
size_of.old_leg_1_price = 8

-- Display: Old Leg 1 Price
display.old_leg_1_price = function(value)
  return "Old Leg 1 Price: "..value:tonumber()/1000000000
end

-- Dissect: Old Leg 1 Price
dissect.old_leg_1_price = function(buffer, offset, packet, parent)
  local length = size_of.old_leg_1_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.old_leg_1_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.old_leg_1_price, range, value, display)

  return offset + length, value
end

-- Size: New Price
size_of.new_price = 8

-- Display: New Price
display.new_price = function(value)
  return "New Price: "..value:tonumber()/1000000000
end

-- Dissect: New Price
dissect.new_price = function(buffer, offset, packet, parent)
  local length = size_of.new_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.new_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.new_price, range, value, display)

  return offset + length, value
end

-- Size: Old Price
size_of.old_price = 8

-- Display: Old Price
display.old_price = function(value)
  return "Old Price: "..value:tonumber()/1000000000
end

-- Dissect: Old Price
dissect.old_price = function(buffer, offset, packet, parent)
  local length = size_of.old_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.old_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.old_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Spread Trade Amend Message
size_of.spread_trade_amend_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.match_id

  index = index + size_of.buy_order_id

  index = index + size_of.sell_order_id

  index = index + size_of.old_price

  index = index + size_of.new_price

  index = index + size_of.old_leg_1_price

  index = index + size_of.new_leg_1_price

  index = index + size_of.old_leg_2_price

  index = index + size_of.new_leg_2_price

  return index
end

-- Display: Spread Trade Amend Message
display.spread_trade_amend_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Spread Trade Amend Message
dissect.spread_trade_amend_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = dissect.match_id(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = dissect.sell_order_id(buffer, index, packet, parent)

  -- Old Price: 8 Byte Signed Fixed Width Integer
  index, old_price = dissect.old_price(buffer, index, packet, parent)

  -- New Price: 8 Byte Signed Fixed Width Integer
  index, new_price = dissect.new_price(buffer, index, packet, parent)

  -- Old Leg 1 Price: 8 Byte Signed Fixed Width Integer
  index, old_leg_1_price = dissect.old_leg_1_price(buffer, index, packet, parent)

  -- New Leg 1 Price: 8 Byte Signed Fixed Width Integer
  index, new_leg_1_price = dissect.new_leg_1_price(buffer, index, packet, parent)

  -- Old Leg 2 Price: 8 Byte Signed Fixed Width Integer
  index, old_leg_2_price = dissect.old_leg_2_price(buffer, index, packet, parent)

  -- New Leg 2 Price: 8 Byte Signed Fixed Width Integer
  index, new_leg_2_price = dissect.new_leg_2_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Trade Amend Message
dissect.spread_trade_amend_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.spread_trade_amend_message then
    local length = size_of.spread_trade_amend_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.spread_trade_amend_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.spread_trade_amend_message, range, display)
  end

  return dissect.spread_trade_amend_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Amend Message
size_of.trade_amend_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.match_id

  index = index + size_of.buy_order_id

  index = index + size_of.sell_order_id

  index = index + size_of.old_price

  index = index + size_of.new_price

  return index
end

-- Display: Trade Amend Message
display.trade_amend_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Amend Message
dissect.trade_amend_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = dissect.match_id(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = dissect.sell_order_id(buffer, index, packet, parent)

  -- Old Price: 8 Byte Signed Fixed Width Integer
  index, old_price = dissect.old_price(buffer, index, packet, parent)

  -- New Price: 8 Byte Signed Fixed Width Integer
  index, new_price = dissect.new_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Amend Message
dissect.trade_amend_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_amend_message then
    local length = size_of.trade_amend_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_amend_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.trade_amend_message, range, display)
  end

  return dissect.trade_amend_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Message
size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.match_id

  index = index + size_of.buy_order_id

  index = index + size_of.sell_order_id

  index = index + size_of.price

  index = index + size_of.quantity

  return index
end

-- Display: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = dissect.match_id(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = dissect.sell_order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local length = size_of.trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Deepest Price
size_of.deepest_price = 8

-- Display: Deepest Price
display.deepest_price = function(value)
  return "Deepest Price: "..value:tonumber()/1000000000
end

-- Dissect: Deepest Price
dissect.deepest_price = function(buffer, offset, packet, parent)
  local length = size_of.deepest_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.deepest_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.deepest_price, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Receive Time
size_of.aggressor_receive_time = 8

-- Display: Aggressor Receive Time
display.aggressor_receive_time = function(value)
  return "Aggressor Receive Time: "..value
end

-- Dissect: Aggressor Receive Time
dissect.aggressor_receive_time = function(buffer, offset, packet, parent)
  local length = size_of.aggressor_receive_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.aggressor_receive_time(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.aggressor_receive_time, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Order Id
size_of.aggressor_order_id = 8

-- Display: Aggressor Order Id
display.aggressor_order_id = function(value)
  return "Aggressor Order Id: "..value
end

-- Dissect: Aggressor Order Id
dissect.aggressor_order_id = function(buffer, offset, packet, parent)
  local length = size_of.aggressor_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.aggressor_order_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.aggressor_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Summary Message
size_of.trade_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.aggressor_order_id

  index = index + size_of.aggressor_receive_time

  index = index + size_of.vwap_price

  index = index + size_of.deepest_price

  index = index + size_of.quantity

  return index
end

-- Display: Trade Summary Message
display.trade_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Summary Message
dissect.trade_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Aggressor Order Id: 8 Byte Signed Fixed Width Integer
  index, aggressor_order_id = dissect.aggressor_order_id(buffer, index, packet, parent)

  -- Aggressor Receive Time: 8 Byte Signed Fixed Width Integer
  index, aggressor_receive_time = dissect.aggressor_receive_time(buffer, index, packet, parent)

  -- Vwap Price: 8 Byte Signed Fixed Width Integer Nullable
  index, vwap_price = dissect.vwap_price(buffer, index, packet, parent)

  -- Deepest Price: 8 Byte Signed Fixed Width Integer
  index, deepest_price = dissect.deepest_price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Message
dissect.trade_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_summary_message then
    local length = size_of.trade_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_summary_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.trade_summary_message, range, display)
  end

  return dissect.trade_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Next Qty
size_of.next_qty = 4

-- Display: Next Qty
display.next_qty = function(value)
  return "Next Qty: "..value
end

-- Dissect: Next Qty
dissect.next_qty = function(buffer, offset, packet, parent)
  local length = size_of.next_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.next_qty(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.next_qty, range, value, display)

  return offset + length, value
end

-- Size: Best Qty
size_of.best_qty = 4

-- Display: Best Qty
display.best_qty = function(value)
  return "Best Qty: "..value
end

-- Dissect: Best Qty
dissect.best_qty = function(buffer, offset, packet, parent)
  local length = size_of.best_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.best_qty(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.best_qty, range, value, display)

  return offset + length, value
end

-- Size: Next Price
size_of.next_price = 8

-- Display: Next Price
display.next_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Next Price: No Value"
  end
  return "Next Price: "..value:tonumber()/1000000000
end

-- Dissect: Next Price
dissect.next_price = function(buffer, offset, packet, parent)
  local length = size_of.next_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.next_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.next_price, range, value, display)

  return offset + length, value
end

-- Size: Best Price
size_of.best_price = 8

-- Display: Best Price
display.best_price = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Best Price: No Value"
  end
  return "Best Price: "..value:tonumber()/1000000000
end

-- Dissect: Best Price
dissect.best_price = function(buffer, offset, packet, parent)
  local length = size_of.best_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.best_price(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.best_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Implied Order Update Message
size_of.implied_order_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.best_price

  index = index + size_of.next_price

  index = index + size_of.best_qty

  index = index + size_of.next_qty

  return index
end

-- Display: Implied Order Update Message
display.implied_order_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Update Message
dissect.implied_order_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Best Price: 8 Byte Signed Fixed Width Integer Nullable
  index, best_price = dissect.best_price(buffer, index, packet, parent)

  -- Next Price: 8 Byte Signed Fixed Width Integer Nullable
  index, next_price = dissect.next_price(buffer, index, packet, parent)

  -- Best Qty: 4 Byte Signed Fixed Width Integer
  index, best_qty = dissect.best_qty(buffer, index, packet, parent)

  -- Next Qty: 4 Byte Signed Fixed Width Integer
  index, next_qty = dissect.next_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Update Message
dissect.implied_order_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_update_message then
    local length = size_of.implied_order_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.implied_order_update_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.implied_order_update_message, range, display)
  end

  return dissect.implied_order_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Delete Message
size_of.order_delete_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.order_id

  return index
end

-- Display: Order Delete Message
display.order_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Delete Message
dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
dissect.order_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_delete_message then
    local length = size_of.order_delete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_delete_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.order_delete_message, range, display)
  end

  return dissect.order_delete_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Put Message
size_of.order_put_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.quantity

  return index
end

-- Display: Order Put Message
display.order_put_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Put Message
dissect.order_put_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Put Message
dissect.order_put_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_put_message then
    local length = size_of.order_put_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_put_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.order_put_message, range, display)
  end

  return dissect.order_put_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trading Status Update Message
size_of.trading_status_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.limit_down_price

  index = index + size_of.limit_up_price

  index = index + size_of.trading_status

  return index
end

-- Display: Trading Status Update Message
display.trading_status_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Status Update Message
dissect.trading_status_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = dissect.limit_down_price(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = dissect.limit_up_price(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Update Message
dissect.trading_status_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_status_update_message then
    local length = size_of.trading_status_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trading_status_update_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.trading_status_update_message, range, display)
  end

  return dissect.trading_status_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Instrument Definition Message
size_of.option_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.symbol

  index = index + size_of.product_code

  index = index + size_of.description

  index = index + size_of.small_tick

  index = index + size_of.cfi_code

  index = index + size_of.large_tick

  index = index + size_of.large_tick_threshold

  index = index + size_of.strike_price

  index = index + size_of.first_trading_session_date

  index = index + size_of.last_trading_session_date

  index = index + size_of.prior_settlement_price

  index = index + size_of.settlement_price

  index = index + size_of.product_id

  index = index + size_of.underlying_instrument_id

  index = index + size_of.product_group

  index = index + size_of.trading_status

  index = index + size_of.definition_flags

  return index
end

-- Display: Option Instrument Definition Message
display.option_instrument_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Instrument Definition Message
dissect.option_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = dissect.description(buffer, index, packet, parent)

  -- Small Tick: 8 Byte Signed Fixed Width Integer
  index, small_tick = dissect.small_tick(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Large Tick: 8 Byte Signed Fixed Width Integer
  index, large_tick = dissect.large_tick(buffer, index, packet, parent)

  -- Large Tick Threshold: 8 Byte Signed Fixed Width Integer
  index, large_tick_threshold = dissect.large_tick_threshold(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Prior Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price = dissect.prior_settlement_price(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = dissect.settlement_price(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = dissect.product_id(buffer, index, packet, parent)

  -- Underlying Instrument Id: 4 Byte Signed Fixed Width Integer
  index, underlying_instrument_id = dissect.underlying_instrument_id(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = dissect.definition_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Definition Message
dissect.option_instrument_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_instrument_definition_message then
    local length = size_of.option_instrument_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_instrument_definition_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.option_instrument_definition_message, range, display)
  end

  return dissect.option_instrument_definition_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Spread Instrument Definition Message
size_of.spread_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.symbol

  index = index + size_of.product_code

  index = index + size_of.description

  index = index + size_of.price_increment

  index = index + size_of.cfi_code

  index = index + size_of.currency

  index = index + size_of.first_trading_session_date

  index = index + size_of.last_trading_session_date

  index = index + size_of.contract_size

  index = index + size_of.prior_settlement_price

  index = index + size_of.settlement_price

  index = index + size_of.limit_down_price

  index = index + size_of.limit_up_price

  index = index + size_of.product_id

  index = index + size_of.product_group

  index = index + size_of.trading_status

  index = index + size_of.leg_1_instrument_id

  index = index + size_of.leg_2_instrument_id

  index = index + size_of.spread_buy_convention

  index = index + size_of.definition_flags

  return index
end

-- Display: Spread Instrument Definition Message
display.spread_instrument_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Spread Instrument Definition Message
dissect.spread_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = dissect.description(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = dissect.price_increment(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = dissect.contract_size(buffer, index, packet, parent)

  -- Prior Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price = dissect.prior_settlement_price(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = dissect.settlement_price(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = dissect.limit_down_price(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = dissect.limit_up_price(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = dissect.product_id(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Leg 1 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_1_instrument_id = dissect.leg_1_instrument_id(buffer, index, packet, parent)

  -- Leg 2 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_2_instrument_id = dissect.leg_2_instrument_id(buffer, index, packet, parent)

  -- Spread Buy Convention: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, spread_buy_convention = dissect.spread_buy_convention(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = dissect.definition_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Instrument Definition Message
dissect.spread_instrument_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.spread_instrument_definition_message then
    local length = size_of.spread_instrument_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.spread_instrument_definition_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.spread_instrument_definition_message, range, display)
  end

  return dissect.spread_instrument_definition_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Outright Instrument Definition Message
size_of.outright_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_header(buffer, offset + index)

  index = index + size_of.symbol

  index = index + size_of.product_code

  index = index + size_of.description

  index = index + size_of.price_increment

  index = index + size_of.cfi_code

  index = index + size_of.currency

  index = index + size_of.first_trading_session_date

  index = index + size_of.last_trading_session_date

  index = index + size_of.contract_size

  index = index + size_of.prior_settlement_price

  index = index + size_of.settlement_price

  index = index + size_of.limit_down_price

  index = index + size_of.limit_up_price

  index = index + size_of.product_id

  index = index + size_of.product_group

  index = index + size_of.trading_status

  index = index + size_of.definition_flags

  return index
end

-- Display: Outright Instrument Definition Message
display.outright_instrument_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Instrument Definition Message
dissect.outright_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = dissect.instr_header(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = dissect.product_code(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = dissect.description(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = dissect.price_increment(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = dissect.first_trading_session_date(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = dissect.last_trading_session_date(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = dissect.contract_size(buffer, index, packet, parent)

  -- Prior Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price = dissect.prior_settlement_price(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = dissect.settlement_price(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = dissect.limit_down_price(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = dissect.limit_up_price(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = dissect.product_id(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = dissect.product_group(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = dissect.definition_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Instrument Definition Message
dissect.outright_instrument_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_instrument_definition_message then
    local length = size_of.outright_instrument_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.outright_instrument_definition_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.outright_instrument_definition_message, range, display)
  end

  return dissect.outright_instrument_definition_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of Outright Instrument Definition Message
  if template_id == 10 then
    return size_of.outright_instrument_definition_message(buffer, offset)
  end
  -- Size of Spread Instrument Definition Message
  if template_id == 11 then
    return size_of.spread_instrument_definition_message(buffer, offset)
  end
  -- Size of Option Instrument Definition Message
  if template_id == 12 then
    return size_of.option_instrument_definition_message(buffer, offset)
  end
  -- Size of Trading Status Update Message
  if template_id == 17 then
    return size_of.trading_status_update_message(buffer, offset)
  end
  -- Size of Order Put Message
  if template_id == 20 then
    return size_of.order_put_message(buffer, offset)
  end
  -- Size of Order Delete Message
  if template_id == 21 then
    return size_of.order_delete_message(buffer, offset)
  end
  -- Size of Implied Order Update Message
  if template_id == 22 then
    return size_of.implied_order_update_message(buffer, offset)
  end
  -- Size of Trade Summary Message
  if template_id == 33 then
    return size_of.trade_summary_message(buffer, offset)
  end
  -- Size of Trade Message
  if template_id == 30 then
    return size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Amend Message
  if template_id == 31 then
    return size_of.trade_amend_message(buffer, offset)
  end
  -- Size of Spread Trade Amend Message
  if template_id == 34 then
    return size_of.spread_trade_amend_message(buffer, offset)
  end
  -- Size of Trade Bust Message
  if template_id == 32 then
    return size_of.trade_bust_message(buffer, offset)
  end
  -- Size of Market Stat Message
  if template_id == 40 then
    return size_of.market_stat_message(buffer, offset)
  end
  -- Size of Trade Session Volume Message
  if template_id == 41 then
    return size_of.trade_session_volume_message(buffer, offset)
  end
  -- Size of Open Interest Message
  if template_id == 42 then
    return size_of.open_interest_message(buffer, offset)
  end
  -- Size of Start Of Outright Instrument Snapshot Message
  if template_id == 110 then
    return size_of.start_of_outright_instrument_snapshot_message(buffer, offset)
  end
  -- Size of Start Of Spread Instrument Snapshot Message
  if template_id == 111 then
    return size_of.start_of_spread_instrument_snapshot_message(buffer, offset)
  end
  -- Size of Start Of Option Instrument Snapshot Message
  if template_id == 112 then
    return size_of.start_of_option_instrument_snapshot_message(buffer, offset)
  end
  -- Size of Order Snapshot Message
  if template_id == 120 then
    return size_of.order_snapshot_message(buffer, offset)
  end
  -- Size of End Of Snapshot Message
  if template_id == 122 then
    return size_of.end_of_snapshot_message(buffer, offset)
  end
  -- Size of Retransmit Request Message
  if template_id == 200 then
    return size_of.retransmit_request_message(buffer, offset)
  end
  -- Size of Retransmit Reject Message
  if template_id == 202 then
    return size_of.retransmit_reject_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Outright Instrument Definition Message
  if template_id == 10 then
    return dissect.outright_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Spread Instrument Definition Message
  if template_id == 11 then
    return dissect.spread_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Definition Message
  if template_id == 12 then
    return dissect.option_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Update Message
  if template_id == 17 then
    return dissect.trading_status_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Put Message
  if template_id == 20 then
    return dissect.order_put_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if template_id == 21 then
    return dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Update Message
  if template_id == 22 then
    return dissect.implied_order_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Summary Message
  if template_id == 33 then
    return dissect.trade_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if template_id == 30 then
    return dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Amend Message
  if template_id == 31 then
    return dissect.trade_amend_message(buffer, offset, packet, parent)
  end
  -- Dissect Spread Trade Amend Message
  if template_id == 34 then
    return dissect.spread_trade_amend_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if template_id == 32 then
    return dissect.trade_bust_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Stat Message
  if template_id == 40 then
    return dissect.market_stat_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Session Volume Message
  if template_id == 41 then
    return dissect.trade_session_volume_message(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if template_id == 42 then
    return dissect.open_interest_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Outright Instrument Snapshot Message
  if template_id == 110 then
    return dissect.start_of_outright_instrument_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Spread Instrument Snapshot Message
  if template_id == 111 then
    return dissect.start_of_spread_instrument_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Option Instrument Snapshot Message
  if template_id == 112 then
    return dissect.start_of_option_instrument_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Snapshot Message
  if template_id == 120 then
    return dissect.order_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if template_id == 122 then
    return dissect.end_of_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request Message
  if template_id == 200 then
    return dissect.retransmit_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Reject Message
  if template_id == 202 then
    return dissect.retransmit_reject_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
size_of.version = 2

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
size_of.schema_id = 2

-- Display: Schema Id
display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
dissect.schema_id = function(buffer, offset, packet, parent)
  local length = size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.schema_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
  if value == 10 then
    return "Template Id: Outright Instrument Definition Message (10)"
  end
  if value == 11 then
    return "Template Id: Spread Instrument Definition Message (11)"
  end
  if value == 12 then
    return "Template Id: Option Instrument Definition Message (12)"
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
  if value == 112 then
    return "Template Id: Start Of Option Instrument Snapshot Message (112)"
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
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
size_of.block_length = 2

-- Display: Block Length
display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
dissect.block_length = function(buffer, offset, packet, parent)
  local length = size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_length(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Size: Frame Length
size_of.frame_length = 2

-- Display: Frame Length
display.frame_length = function(value)
  return "Frame Length: "..value
end

-- Dissect: Frame Length
dissect.frame_length = function(buffer, offset, packet, parent)
  local length = size_of.frame_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.frame_length(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.frame_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.frame_length

  index = index + size_of.block_length

  index = index + size_of.template_id

  index = index + size_of.schema_id

  index = index + size_of.version

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame Length: 2 Byte Unsigned Fixed Width Integer
  index, frame_length = dissect.frame_length(buffer, index, packet, parent)

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Sbe Message
display.sbe_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sbe Message
dissect.sbe_message_fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 22 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  -- Dependency element: Frame Length
  local frame_length = buffer(offset, 2):le_uint()

  -- Runtime Size Of: Padding
  local size_of_padding = frame_length - (index - offset)

  -- Padding: 0 Byte
  index = dissect.padding(buffer, index, packet, parent, size_of_padding)

  return index
end

-- Dissect: Sbe Message
dissect.sbe_message = function(buffer, offset, packet, parent, size_of_sbe_message)
  -- Optionally add struct element to protocol tree
  if show.sbe_message then
    local range = buffer(offset, size_of_sbe_message)
    local display = display.sbe_message(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.sbe_message, range, display)
  end

  dissect.sbe_message_fields(buffer, offset, packet, parent, size_of_sbe_message)

  return offset + size_of_sbe_message
end

-- Size: Snapshot Instrument Id
size_of.snapshot_instrument_id = 4

-- Display: Snapshot Instrument Id
display.snapshot_instrument_id = function(value)
  return "Snapshot Instrument Id: "..value
end

-- Dissect: Snapshot Instrument Id
dissect.snapshot_instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.snapshot_instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.snapshot_instrument_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.snapshot_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Packet Flags
size_of.packet_flags = 1

-- Display: Packet Flags
display.packet_flags = function(value)
  return "Packet Flags: "..value
end

-- Dissect: Packet Flags
dissect.packet_flags = function(buffer, offset, packet, parent)
  local length = size_of.packet_flags
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.packet_flags(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.packet_flags, range, value, display)

  return offset + length, value
end

-- Size: Channel Id
size_of.channel_id = 2

-- Display: Channel Id
display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
dissect.channel_id = function(buffer, offset, packet, parent)
  local length = size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.channel_id(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Seq Num
size_of.seq_num = 8

-- Display: Seq Num
display.seq_num = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
dissect.seq_num = function(buffer, offset, packet, parent)
  local length = size_of.seq_num
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.seq_num(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
size_of.sending_time = 8

-- Display: Sending Time
display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
dissect.sending_time = function(buffer, offset, packet, parent)
  local length = size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.sending_time(value, buffer, offset, packet, parent)

  parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.seq_num

  index = index + size_of.channel_id

  index = index + size_of.packet_flags

  index = index + size_of.message_count

  index = index + size_of.snapshot_instrument_id

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Signed Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Seq Num: 8 Byte Signed Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Channel Id: 2 Byte Unsigned Fixed Width Integer
  index, channel_id = dissect.channel_id(buffer, index, packet, parent)

  -- Packet Flags: 1 Byte Unsigned Fixed Width Integer
  index, packet_flags = dissect.packet_flags(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = dissect.message_count(buffer, index, packet, parent)

  -- Snapshot Instrument Id: 4 Byte Signed Fixed Width Integer
  index, snapshot_instrument_id = dissect.snapshot_instrument_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(fairx_futures_marketdataapi_sbe_v1_3.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Frame Length
    local frame_length = buffer(index, 2):le_uint()

    -- Sbe Message: Struct of 3 fields
    index = dissect.sbe_message(buffer, index, packet, parent, frame_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function fairx_futures_marketdataapi_sbe_v1_3.init()
end

-- Dissector for Fairx Futures MarketDataApi Sbe 1.3
function fairx_futures_marketdataapi_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = fairx_futures_marketdataapi_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(fairx_futures_marketdataapi_sbe_v1_3, buffer(), fairx_futures_marketdataapi_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, fairx_futures_marketdataapi_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.fairx_futures_marketdataapi_sbe_v1_3_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 1201 == buffer(30, 2):le_uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 3 == buffer(32, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Fairx Futures MarketDataApi Sbe 1.3
local function fairx_futures_marketdataapi_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.fairx_futures_marketdataapi_sbe_v1_3_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = fairx_futures_marketdataapi_sbe_v1_3
  fairx_futures_marketdataapi_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Fairx Futures MarketDataApi Sbe 1.3
fairx_futures_marketdataapi_sbe_v1_3:register_heuristic("udp", fairx_futures_marketdataapi_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Fair Exchange
--   Version: 1.3
--   Date: Monday, July 27, 2020
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
