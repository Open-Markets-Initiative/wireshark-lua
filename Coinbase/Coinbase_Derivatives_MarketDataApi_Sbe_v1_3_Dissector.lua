-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Coinbase Derivatives MarketDataApi Sbe 1.3 Protocol
local omi_coinbase_derivatives_marketdataapi_sbe_v1_3 = Proto("Coinbase.Derivatives.MarketDataApi.Sbe.v1.3.Lua", "Coinbase Derivatives MarketDataApi Sbe 1.3")

-- Protocol table
local coinbase_derivatives_marketdataapi_sbe_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Coinbase Derivatives MarketDataApi Sbe 1.3 Fields
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.aggressor_order_id = ProtoField.new("Aggressor Order Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.aggressororderid", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.aggressor_receive_time = ProtoField.new("Aggressor Receive Time", "coinbase.derivatives.marketdataapi.sbe.v1.3.aggressorreceivetime", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.3.beginseqnum", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_ask_implied_price = ProtoField.new("Best Ask Implied Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.bestaskimpliedprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_ask_implied_qty = ProtoField.new("Best Ask Implied Qty", "coinbase.derivatives.marketdataapi.sbe.v1.3.bestaskimpliedqty", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_bid_implied_price = ProtoField.new("Best Bid Implied Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.bestbidimpliedprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_bid_implied_qty = ProtoField.new("Best Bid Implied Qty", "coinbase.derivatives.marketdataapi.sbe.v1.3.bestbidimpliedqty", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_price = ProtoField.new("Best Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.bestprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_qty = ProtoField.new("Best Qty", "coinbase.derivatives.marketdataapi.sbe.v1.3.bestqty", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "coinbase.derivatives.marketdataapi.sbe.v1.3.blocklength", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.buy_order_id = ProtoField.new("Buy Order Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.buyorderid", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.cfi_code = ProtoField.new("Cfi Code", "coinbase.derivatives.marketdataapi.sbe.v1.3.cficode", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.channel_id = ProtoField.new("Channel Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.channelid", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.close_price = ProtoField.new("Close Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.closeprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.contract_size = ProtoField.new("Contract Size", "coinbase.derivatives.marketdataapi.sbe.v1.3.contractsize", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.currency = ProtoField.new("Currency", "coinbase.derivatives.marketdataapi.sbe.v1.3.currency", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.day_open_price = ProtoField.new("Day Open Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.dayopenprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.deepest_price = ProtoField.new("Deepest Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.deepestprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.definition_flags = ProtoField.new("Definition Flags", "coinbase.derivatives.marketdataapi.sbe.v1.3.definitionflags", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.description = ProtoField.new("Description", "coinbase.derivatives.marketdataapi.sbe.v1.3.description", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.details = ProtoField.new("Details", "coinbase.derivatives.marketdataapi.sbe.v1.3.details", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.first_trading_session_date = ProtoField.new("First Trading Session Date", "coinbase.derivatives.marketdataapi.sbe.v1.3.firsttradingsessiondate", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.frame_length = ProtoField.new("Frame Length", "coinbase.derivatives.marketdataapi.sbe.v1.3.framelength", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.high_price = ProtoField.new("High Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.highprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.indicative_open_price = ProtoField.new("Indicative Open Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.indicativeopenprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instr_header = ProtoField.new("Instr Header", "coinbase.derivatives.marketdataapi.sbe.v1.3.instrheader", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instr_seq_num = ProtoField.new("Instr Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.3.instrseqnum", ftypes.UINT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instrument_flags = ProtoField.new("Instrument Flags", "coinbase.derivatives.marketdataapi.sbe.v1.3.instrumentflags", ftypes.UINT8)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instrument_id = ProtoField.new("Instrument Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.instrumentid", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instrument_side = ProtoField.new("Instrument Side", "coinbase.derivatives.marketdataapi.sbe.v1.3.instrumentside", ftypes.INT8)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.is_announced = ProtoField.new("Is Announced", "coinbase.derivatives.marketdataapi.sbe.v1.3.isannounced", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.is_call = ProtoField.new("Is Call", "coinbase.derivatives.marketdataapi.sbe.v1.3.iscall", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.is_prior_settlement_theoretical = ProtoField.new("Is Prior Settlement Theoretical", "coinbase.derivatives.marketdataapi.sbe.v1.3.ispriorsettlementtheoretical", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.large_tick = ProtoField.new("Large Tick", "coinbase.derivatives.marketdataapi.sbe.v1.3.largetick", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.large_tick_threshold = ProtoField.new("Large Tick Threshold", "coinbase.derivatives.marketdataapi.sbe.v1.3.largetickthreshold", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_instr_seq_num = ProtoField.new("Last Instr Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.3.lastinstrseqnum", ftypes.UINT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_trade_price = ProtoField.new("Last Trade Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.lasttradeprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_trade_qty = ProtoField.new("Last Trade Qty", "coinbase.derivatives.marketdataapi.sbe.v1.3.lasttradeqty", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_trade_time = ProtoField.new("Last Trade Time", "coinbase.derivatives.marketdataapi.sbe.v1.3.lasttradetime", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_trading_session_date = ProtoField.new("Last Trading Session Date", "coinbase.derivatives.marketdataapi.sbe.v1.3.lasttradingsessiondate", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.leg_1_instrument_id = ProtoField.new("Leg 1 Instrument Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.leg1instrumentid", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.leg_2_instrument_id = ProtoField.new("Leg 2 Instrument Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.leg2instrumentid", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.limit_down_price = ProtoField.new("Limit Down Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.limitdownprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.limit_up_price = ProtoField.new("Limit Up Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.limitupprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.low_price = ProtoField.new("Low Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.lowprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.match_id = ProtoField.new("Match Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.matchid", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "coinbase.derivatives.marketdataapi.sbe.v1.3.messagecount", ftypes.UINT8)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.message_header = ProtoField.new("Message Header", "coinbase.derivatives.marketdataapi.sbe.v1.3.messageheader", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.new_leg_1_price = ProtoField.new("New Leg 1 Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.newleg1price", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.new_leg_2_price = ProtoField.new("New Leg 2 Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.newleg2price", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.new_price = ProtoField.new("New Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.newprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_ask_implied_price = ProtoField.new("Next Ask Implied Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.nextaskimpliedprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_ask_implied_qty = ProtoField.new("Next Ask Implied Qty", "coinbase.derivatives.marketdataapi.sbe.v1.3.nextaskimpliedqty", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_bid_implied_price = ProtoField.new("Next Bid Implied Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.nextbidimpliedprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_bid_implied_qty = ProtoField.new("Next Bid Implied Qty", "coinbase.derivatives.marketdataapi.sbe.v1.3.nextbidimpliedqty", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_price = ProtoField.new("Next Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.nextprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_qty = ProtoField.new("Next Qty", "coinbase.derivatives.marketdataapi.sbe.v1.3.nextqty", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.old_leg_1_price = ProtoField.new("Old Leg 1 Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.oldleg1price", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.old_leg_2_price = ProtoField.new("Old Leg 2 Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.oldleg2price", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.old_price = ProtoField.new("Old Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.oldprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.open_interest = ProtoField.new("Open Interest", "coinbase.derivatives.marketdataapi.sbe.v1.3.openinterest", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_count = ProtoField.new("Order Count", "coinbase.derivatives.marketdataapi.sbe.v1.3.ordercount", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_id = ProtoField.new("Order Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.orderid", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.packet = ProtoField.new("Packet", "coinbase.derivatives.marketdataapi.sbe.v1.3.packet", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.packet_flags = ProtoField.new("Packet Flags", "coinbase.derivatives.marketdataapi.sbe.v1.3.packetflags", ftypes.UINT8)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.packet_header = ProtoField.new("Packet Header", "coinbase.derivatives.marketdataapi.sbe.v1.3.packetheader", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.padding = ProtoField.new("Padding", "coinbase.derivatives.marketdataapi.sbe.v1.3.padding", ftypes.BYTES)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.payload = ProtoField.new("Payload", "coinbase.derivatives.marketdataapi.sbe.v1.3.payload", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.price = ProtoField.new("Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.price", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.price_increment = ProtoField.new("Price Increment", "coinbase.derivatives.marketdataapi.sbe.v1.3.priceincrement", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.prior_settlement_price = ProtoField.new("Prior Settlement Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.priorsettlementprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.prior_settlement_price_optional = ProtoField.new("Prior Settlement Price Optional", "coinbase.derivatives.marketdataapi.sbe.v1.3.priorsettlementpriceoptional", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.product_code = ProtoField.new("Product Code", "coinbase.derivatives.marketdataapi.sbe.v1.3.productcode", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.product_group = ProtoField.new("Product Group", "coinbase.derivatives.marketdataapi.sbe.v1.3.productgroup", ftypes.INT8)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.product_id = ProtoField.new("Product Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.productid", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.quantity = ProtoField.new("Quantity", "coinbase.derivatives.marketdataapi.sbe.v1.3.quantity", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.reason = ProtoField.new("Reason", "coinbase.derivatives.marketdataapi.sbe.v1.3.reason", ftypes.INT8)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.reserved = ProtoField.new("Reserved", "coinbase.derivatives.marketdataapi.sbe.v1.3.reserved", ftypes.INT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.reserved_13 = ProtoField.new("Reserved 13", "coinbase.derivatives.marketdataapi.sbe.v1.3.reserved13", ftypes.UINT16, nil, base.DEC, 0xFFF8)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.retry_delay_nanos = ProtoField.new("Retry Delay Nanos", "coinbase.derivatives.marketdataapi.sbe.v1.3.retrydelaynanos", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.sbemessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.schemaid", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.sell_order_id = ProtoField.new("Sell Order Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.sellorderid", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.sending_time = ProtoField.new("Sending Time", "coinbase.derivatives.marketdataapi.sbe.v1.3.sendingtime", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.seq_num = ProtoField.new("Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.3.seqnum", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.settlement_price = ProtoField.new("Settlement Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.settlementprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.small_tick = ProtoField.new("Small Tick", "coinbase.derivatives.marketdataapi.sbe.v1.3.smalltick", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.snapshot_instrument_id = ProtoField.new("Snapshot Instrument Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.snapshotinstrumentid", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.snapshot_seq_num = ProtoField.new("Snapshot Seq Num", "coinbase.derivatives.marketdataapi.sbe.v1.3.snapshotseqnum", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.spread_buy_convention = ProtoField.new("Spread Buy Convention", "coinbase.derivatives.marketdataapi.sbe.v1.3.spreadbuyconvention", ftypes.INT8)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.stat_type = ProtoField.new("Stat Type", "coinbase.derivatives.marketdataapi.sbe.v1.3.stattype", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.strike_price = ProtoField.new("Strike Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.strikeprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "coinbase.derivatives.marketdataapi.sbe.v1.3.symbol", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.templateid", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_volume = ProtoField.new("Trade Volume", "coinbase.derivatives.marketdataapi.sbe.v1.3.tradevolume", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trading_session_date = ProtoField.new("Trading Session Date", "coinbase.derivatives.marketdataapi.sbe.v1.3.tradingsessiondate", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trading_status = ProtoField.new("Trading Status", "coinbase.derivatives.marketdataapi.sbe.v1.3.tradingstatus", ftypes.INT8)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.transact_time = ProtoField.new("Transact Time", "coinbase.derivatives.marketdataapi.sbe.v1.3.transacttime", ftypes.INT64)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.underlying_instrument_id = ProtoField.new("Underlying Instrument Id", "coinbase.derivatives.marketdataapi.sbe.v1.3.underlyinginstrumentid", ftypes.INT32)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.version = ProtoField.new("Version", "coinbase.derivatives.marketdataapi.sbe.v1.3.version", ftypes.UINT16)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.vwap_price = ProtoField.new("Vwap Price", "coinbase.derivatives.marketdataapi.sbe.v1.3.vwapprice", ftypes.DOUBLE)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.vwap_price_optional = ProtoField.new("Vwap Price Optional", "coinbase.derivatives.marketdataapi.sbe.v1.3.vwappriceoptional", ftypes.DOUBLE)

-- Coinbase Derivatives MarketDataApi Sbe 1.3 messages
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.endofsnapshotmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.implied_order_update_message = ProtoField.new("Implied Order Update Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.impliedorderupdatemessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.market_stat_message = ProtoField.new("Market Stat Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.marketstatmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.open_interest_message = ProtoField.new("Open Interest Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.openinterestmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.option_instrument_definition_message = ProtoField.new("Option Instrument Definition Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.optioninstrumentdefinitionmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_delete_message = ProtoField.new("Order Delete Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.orderdeletemessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_put_message = ProtoField.new("Order Put Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.orderputmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_snapshot_message = ProtoField.new("Order Snapshot Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.ordersnapshotmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.outright_instrument_definition_message = ProtoField.new("Outright Instrument Definition Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.outrightinstrumentdefinitionmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.retransmit_reject_message = ProtoField.new("Retransmit Reject Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.retransmitrejectmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.retransmit_request_message = ProtoField.new("Retransmit Request Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.retransmitrequestmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.spread_instrument_definition_message = ProtoField.new("Spread Instrument Definition Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.spreadinstrumentdefinitionmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.spread_trade_amend_message = ProtoField.new("Spread Trade Amend Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.spreadtradeamendmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.start_of_option_instrument_snapshot_message = ProtoField.new("Start Of Option Instrument Snapshot Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.startofoptioninstrumentsnapshotmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.start_of_outright_instrument_snapshot_message = ProtoField.new("Start Of Outright Instrument Snapshot Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.startofoutrightinstrumentsnapshotmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.start_of_spread_instrument_snapshot_message = ProtoField.new("Start Of Spread Instrument Snapshot Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.startofspreadinstrumentsnapshotmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_amend_message = ProtoField.new("Trade Amend Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.tradeamendmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.tradebustmessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_message = ProtoField.new("Trade Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.trademessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_session_volume_message = ProtoField.new("Trade Session Volume Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.tradesessionvolumemessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_summary_message = ProtoField.new("Trade Summary Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.tradesummarymessage", ftypes.STRING)
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trading_status_update_message = ProtoField.new("Trading Status Update Message", "coinbase.derivatives.marketdataapi.sbe.v1.3.tradingstatusupdatemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Coinbase Derivatives MarketDataApi Sbe 1.3 Element Dissection Options
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

-- Register Coinbase Derivatives MarketDataApi Sbe 1.3 Show Options
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_definition_flags = Pref.bool("Show Definition Flags", show.definition_flags, "Parse and add Definition Flags to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_end_of_snapshot_message = Pref.bool("Show End Of Snapshot Message", show.end_of_snapshot_message, "Parse and add End Of Snapshot Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_implied_order_update_message = Pref.bool("Show Implied Order Update Message", show.implied_order_update_message, "Parse and add Implied Order Update Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_instr_header = Pref.bool("Show Instr Header", show.instr_header, "Parse and add Instr Header to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_market_stat_message = Pref.bool("Show Market Stat Message", show.market_stat_message, "Parse and add Market Stat Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_open_interest_message = Pref.bool("Show Open Interest Message", show.open_interest_message, "Parse and add Open Interest Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_option_instrument_definition_message = Pref.bool("Show Option Instrument Definition Message", show.option_instrument_definition_message, "Parse and add Option Instrument Definition Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_order_put_message = Pref.bool("Show Order Put Message", show.order_put_message, "Parse and add Order Put Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_order_snapshot_message = Pref.bool("Show Order Snapshot Message", show.order_snapshot_message, "Parse and add Order Snapshot Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_outright_instrument_definition_message = Pref.bool("Show Outright Instrument Definition Message", show.outright_instrument_definition_message, "Parse and add Outright Instrument Definition Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_retransmit_reject_message = Pref.bool("Show Retransmit Reject Message", show.retransmit_reject_message, "Parse and add Retransmit Reject Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_retransmit_request_message = Pref.bool("Show Retransmit Request Message", show.retransmit_request_message, "Parse and add Retransmit Request Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_spread_instrument_definition_message = Pref.bool("Show Spread Instrument Definition Message", show.spread_instrument_definition_message, "Parse and add Spread Instrument Definition Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_spread_trade_amend_message = Pref.bool("Show Spread Trade Amend Message", show.spread_trade_amend_message, "Parse and add Spread Trade Amend Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_start_of_option_instrument_snapshot_message = Pref.bool("Show Start Of Option Instrument Snapshot Message", show.start_of_option_instrument_snapshot_message, "Parse and add Start Of Option Instrument Snapshot Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_start_of_outright_instrument_snapshot_message = Pref.bool("Show Start Of Outright Instrument Snapshot Message", show.start_of_outright_instrument_snapshot_message, "Parse and add Start Of Outright Instrument Snapshot Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_start_of_spread_instrument_snapshot_message = Pref.bool("Show Start Of Spread Instrument Snapshot Message", show.start_of_spread_instrument_snapshot_message, "Parse and add Start Of Spread Instrument Snapshot Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_amend_message = Pref.bool("Show Trade Amend Message", show.trade_amend_message, "Parse and add Trade Amend Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_bust_message = Pref.bool("Show Trade Bust Message", show.trade_bust_message, "Parse and add Trade Bust Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_session_volume_message = Pref.bool("Show Trade Session Volume Message", show.trade_session_volume_message, "Parse and add Trade Session Volume Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_summary_message = Pref.bool("Show Trade Summary Message", show.trade_summary_message, "Parse and add Trade Summary Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trading_status_update_message = Pref.bool("Show Trading Status Update Message", show.trading_status_update_message, "Parse and add Trading Status Update Message to protocol tree")
omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.definition_flags ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_definition_flags then
    show.definition_flags = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_definition_flags
    changed = true
  end
  if show.end_of_snapshot_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_end_of_snapshot_message then
    show.end_of_snapshot_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_end_of_snapshot_message
    changed = true
  end
  if show.implied_order_update_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_implied_order_update_message then
    show.implied_order_update_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_implied_order_update_message
    changed = true
  end
  if show.instr_header ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_instr_header then
    show.instr_header = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_instr_header
    changed = true
  end
  if show.market_stat_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_market_stat_message then
    show.market_stat_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_market_stat_message
    changed = true
  end
  if show.message_header ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_message_header then
    show.message_header = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_message_header
    changed = true
  end
  if show.open_interest_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_open_interest_message then
    show.open_interest_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_open_interest_message
    changed = true
  end
  if show.option_instrument_definition_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_option_instrument_definition_message then
    show.option_instrument_definition_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_option_instrument_definition_message
    changed = true
  end
  if show.order_delete_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_order_delete_message then
    show.order_delete_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_order_delete_message
    changed = true
  end
  if show.order_put_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_order_put_message then
    show.order_put_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_order_put_message
    changed = true
  end
  if show.order_snapshot_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_order_snapshot_message then
    show.order_snapshot_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_order_snapshot_message
    changed = true
  end
  if show.outright_instrument_definition_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_outright_instrument_definition_message then
    show.outright_instrument_definition_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_outright_instrument_definition_message
    changed = true
  end
  if show.packet ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_packet then
    show.packet = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_packet_header then
    show.packet_header = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_packet_header
    changed = true
  end
  if show.retransmit_reject_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_retransmit_reject_message then
    show.retransmit_reject_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_retransmit_reject_message
    changed = true
  end
  if show.retransmit_request_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_retransmit_request_message then
    show.retransmit_request_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_retransmit_request_message
    changed = true
  end
  if show.sbe_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.spread_instrument_definition_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_spread_instrument_definition_message then
    show.spread_instrument_definition_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_spread_instrument_definition_message
    changed = true
  end
  if show.spread_trade_amend_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_spread_trade_amend_message then
    show.spread_trade_amend_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_spread_trade_amend_message
    changed = true
  end
  if show.start_of_option_instrument_snapshot_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_start_of_option_instrument_snapshot_message then
    show.start_of_option_instrument_snapshot_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_start_of_option_instrument_snapshot_message
    changed = true
  end
  if show.start_of_outright_instrument_snapshot_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_start_of_outright_instrument_snapshot_message then
    show.start_of_outright_instrument_snapshot_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_start_of_outright_instrument_snapshot_message
    changed = true
  end
  if show.start_of_spread_instrument_snapshot_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_start_of_spread_instrument_snapshot_message then
    show.start_of_spread_instrument_snapshot_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_start_of_spread_instrument_snapshot_message
    changed = true
  end
  if show.trade_amend_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_amend_message then
    show.trade_amend_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_amend_message
    changed = true
  end
  if show.trade_bust_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_bust_message then
    show.trade_bust_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_bust_message
    changed = true
  end
  if show.trade_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_message then
    show.trade_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_message
    changed = true
  end
  if show.trade_session_volume_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_session_volume_message then
    show.trade_session_volume_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_session_volume_message
    changed = true
  end
  if show.trade_summary_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_summary_message then
    show.trade_summary_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trade_summary_message
    changed = true
  end
  if show.trading_status_update_message ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trading_status_update_message then
    show.trading_status_update_message = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_trading_status_update_message
    changed = true
  end
  if show.payload ~= omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_payload then
    show.payload = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Coinbase Derivatives MarketDataApi Sbe 1.3
-----------------------------------------------------------------------

-- Padding
coinbase_derivatives_marketdataapi_sbe_v1_3.padding = {}

-- Display: Padding
coinbase_derivatives_marketdataapi_sbe_v1_3.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect runtime sized field: Padding
coinbase_derivatives_marketdataapi_sbe_v1_3.padding.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.padding.display(value, packet, parent, size)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.padding, range, value, display)

  return offset + size, value
end

-- Reason
coinbase_derivatives_marketdataapi_sbe_v1_3.reason = {}

-- Size: Reason
coinbase_derivatives_marketdataapi_sbe_v1_3.reason.size = 1

-- Display: Reason
coinbase_derivatives_marketdataapi_sbe_v1_3.reason.display = function(value)
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
coinbase_derivatives_marketdataapi_sbe_v1_3.reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.reason, range, value, display)

  return offset + length, value
end

-- Details
coinbase_derivatives_marketdataapi_sbe_v1_3.details = {}

-- Size: Details
coinbase_derivatives_marketdataapi_sbe_v1_3.details.size = 40

-- Display: Details
coinbase_derivatives_marketdataapi_sbe_v1_3.details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Details: No Value"
  end

  return "Details: "..value
end

-- Dissect: Details
coinbase_derivatives_marketdataapi_sbe_v1_3.details.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.details.size
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.details.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.details, range, value, display)

  return offset + length, value
end

-- Retry Delay Nanos
coinbase_derivatives_marketdataapi_sbe_v1_3.retry_delay_nanos = {}

-- Size: Retry Delay Nanos
coinbase_derivatives_marketdataapi_sbe_v1_3.retry_delay_nanos.size = 8

-- Display: Retry Delay Nanos
coinbase_derivatives_marketdataapi_sbe_v1_3.retry_delay_nanos.display = function(value)
  return "Retry Delay Nanos: "..value
end

-- Dissect: Retry Delay Nanos
coinbase_derivatives_marketdataapi_sbe_v1_3.retry_delay_nanos.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.retry_delay_nanos.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.retry_delay_nanos.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.retry_delay_nanos, range, value, display)

  return offset + length, value
end

-- Retransmit Reject Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message = {}

-- Size: Retransmit Reject Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.retry_delay_nanos.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.details.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.reason.size

-- Display: Retransmit Reject Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Reject Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retry Delay Nanos: 8 Byte Signed Fixed Width Integer
  index, retry_delay_nanos = coinbase_derivatives_marketdataapi_sbe_v1_3.retry_delay_nanos.dissect(buffer, index, packet, parent)

  -- Details: 40 Byte Ascii String
  index, details = coinbase_derivatives_marketdataapi_sbe_v1_3.details.dissect(buffer, index, packet, parent)

  -- Reason: 1 Byte Signed Fixed Width Integer Enum with 4 values
  index, reason = coinbase_derivatives_marketdataapi_sbe_v1_3.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmit_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.retransmit_reject_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Count
coinbase_derivatives_marketdataapi_sbe_v1_3.message_count = {}

-- Size: Message Count
coinbase_derivatives_marketdataapi_sbe_v1_3.message_count.size = 1

-- Display: Message Count
coinbase_derivatives_marketdataapi_sbe_v1_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
coinbase_derivatives_marketdataapi_sbe_v1_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.begin_seq_num = {}

-- Size: Begin Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.begin_seq_num.size = 8

-- Display: Begin Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Retransmit Request Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message = {}

-- Size: Retransmit Request Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.begin_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.message_count.size

-- Display: Retransmit Request Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 8 Byte Signed Fixed Width Integer
  index, begin_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.begin_seq_num.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = coinbase_derivatives_marketdataapi_sbe_v1_3.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request Message
coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmit_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.retransmit_request_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Definition Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags = {}

-- Size: Definition Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.size = 2

-- Display: Definition Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.display = function(buffer, packet, parent)
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
coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved 13: 13 Bit
  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.reserved_13, buffer(offset, 2))

  -- Is Call: 1 Bit
  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.is_call, buffer(offset, 2))

  -- Is Announced: 1 Bit
  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.is_announced, buffer(offset, 2))

  -- Is Prior Settlement Theoretical: 1 Bit
  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.is_prior_settlement_theoretical, buffer(offset, 2))
end

-- Dissect: Definition Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.display(range, packet, parent)
  local element = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.definition_flags, range, display)

  if show.definition_flags then
    coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Prior Settlement Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional = {}

-- Size: Prior Settlement Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.size = 8

-- Display: Prior Settlement Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Prior Settlement Price Optional: No Value"
  end

  return "Prior Settlement Price Optional: "..value
end

-- Translate: Prior Settlement Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Prior Settlement Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.prior_settlement_price_optional, range, value, display)

  return offset + length, value
end

-- Next Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_qty = {}

-- Size: Next Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_qty.size = 4

-- Display: Next Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_qty.display = function(value)
  return "Next Ask Implied Qty: "..value
end

-- Dissect: Next Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_ask_implied_qty, range, value, display)

  return offset + length, value
end

-- Next Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_qty = {}

-- Size: Next Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_qty.size = 4

-- Display: Next Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_qty.display = function(value)
  return "Next Bid Implied Qty: "..value
end

-- Dissect: Next Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_bid_implied_qty, range, value, display)

  return offset + length, value
end

-- Best Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_qty = {}

-- Size: Best Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_qty.size = 4

-- Display: Best Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_qty.display = function(value)
  return "Best Ask Implied Qty: "..value
end

-- Dissect: Best Ask Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_ask_implied_qty, range, value, display)

  return offset + length, value
end

-- Best Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_qty = {}

-- Size: Best Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_qty.size = 4

-- Display: Best Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_qty.display = function(value)
  return "Best Bid Implied Qty: "..value
end

-- Dissect: Best Bid Implied Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_bid_implied_qty, range, value, display)

  return offset + length, value
end

-- Open Interest
coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest = {}

-- Size: Open Interest
coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest.size = 4

-- Display: Open Interest
coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Last Trade Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_qty = {}

-- Size: Last Trade Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_qty.size = 4

-- Display: Last Trade Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_qty.display = function(value)
  return "Last Trade Qty: "..value
end

-- Dissect: Last Trade Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_trade_qty, range, value, display)

  return offset + length, value
end

-- Limit Up Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price = {}

-- Size: Limit Up Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.size = 8

-- Display: Limit Up Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.display = function(value)
  return "Limit Up Price: "..value
end

-- Translate: Limit Up Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Limit Up Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Limit Down Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price = {}

-- Size: Limit Down Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.size = 8

-- Display: Limit Down Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.display = function(value)
  return "Limit Down Price: "..value
end

-- Translate: Limit Down Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Limit Down Price
coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Next Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price = {}

-- Size: Next Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price.size = 8

-- Display: Next Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Next Ask Implied Price: No Value"
  end

  return "Next Ask Implied Price: "..value
end

-- Translate: Next Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Next Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_ask_implied_price, range, value, display)

  return offset + length, value
end

-- Next Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price = {}

-- Size: Next Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price.size = 8

-- Display: Next Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Next Bid Implied Price: No Value"
  end

  return "Next Bid Implied Price: "..value
end

-- Translate: Next Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Next Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_bid_implied_price, range, value, display)

  return offset + length, value
end

-- Best Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price = {}

-- Size: Best Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price.size = 8

-- Display: Best Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Best Ask Implied Price: No Value"
  end

  return "Best Ask Implied Price: "..value
end

-- Translate: Best Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Best Ask Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_ask_implied_price, range, value, display)

  return offset + length, value
end

-- Best Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price = {}

-- Size: Best Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price.size = 8

-- Display: Best Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Best Bid Implied Price: No Value"
  end

  return "Best Bid Implied Price: "..value
end

-- Translate: Best Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Best Bid Implied Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_bid_implied_price, range, value, display)

  return offset + length, value
end

-- Last Trade Time
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_time = {}

-- Size: Last Trade Time
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_time.size = 8

-- Display: Last Trade Time
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_time.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Trade Time: No Value"
  end

  return "Last Trade Time: "..value
end

-- Dissect: Last Trade Time
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Last Trade Price
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price = {}

-- Size: Last Trade Price
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price.size = 8

-- Display: Last Trade Price
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Last Trade Price: No Value"
  end

  return "Last Trade Price: "..value
end

-- Translate: Last Trade Price
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Last Trade Price
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price = {}

-- Size: Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.size = 8

-- Display: Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Settlement Price: No Value"
  end

  return "Settlement Price: "..value
end

-- Translate: Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Vwap Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional = {}

-- Size: Vwap Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional.size = 8

-- Display: Vwap Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Vwap Price Optional: No Value"
  end

  return "Vwap Price Optional: "..value
end

-- Translate: Vwap Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Vwap Price Optional
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.vwap_price_optional, range, value, display)

  return offset + length, value
end

-- High Price
coinbase_derivatives_marketdataapi_sbe_v1_3.high_price = {}

-- Size: High Price
coinbase_derivatives_marketdataapi_sbe_v1_3.high_price.size = 8

-- Display: High Price
coinbase_derivatives_marketdataapi_sbe_v1_3.high_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "High Price: No Value"
  end

  return "High Price: "..value
end

-- Translate: High Price
coinbase_derivatives_marketdataapi_sbe_v1_3.high_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: High Price
coinbase_derivatives_marketdataapi_sbe_v1_3.high_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.high_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.high_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.high_price, range, value, display)

  return offset + length, value
end

-- Low Price
coinbase_derivatives_marketdataapi_sbe_v1_3.low_price = {}

-- Size: Low Price
coinbase_derivatives_marketdataapi_sbe_v1_3.low_price.size = 8

-- Display: Low Price
coinbase_derivatives_marketdataapi_sbe_v1_3.low_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Low Price: No Value"
  end

  return "Low Price: "..value
end

-- Translate: Low Price
coinbase_derivatives_marketdataapi_sbe_v1_3.low_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Low Price
coinbase_derivatives_marketdataapi_sbe_v1_3.low_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.low_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.low_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.low_price, range, value, display)

  return offset + length, value
end

-- Close Price
coinbase_derivatives_marketdataapi_sbe_v1_3.close_price = {}

-- Size: Close Price
coinbase_derivatives_marketdataapi_sbe_v1_3.close_price.size = 8

-- Display: Close Price
coinbase_derivatives_marketdataapi_sbe_v1_3.close_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Close Price: No Value"
  end

  return "Close Price: "..value
end

-- Translate: Close Price
coinbase_derivatives_marketdataapi_sbe_v1_3.close_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Close Price
coinbase_derivatives_marketdataapi_sbe_v1_3.close_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.close_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.close_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.close_price, range, value, display)

  return offset + length, value
end

-- Day Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price = {}

-- Size: Day Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price.size = 8

-- Display: Day Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Day Open Price: No Value"
  end

  return "Day Open Price: "..value
end

-- Translate: Day Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Day Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.day_open_price, range, value, display)

  return offset + length, value
end

-- Indicative Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price = {}

-- Size: Indicative Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price.size = 8

-- Display: Indicative Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Indicative Open Price: No Value"
  end

  return "Indicative Open Price: "..value
end

-- Translate: Indicative Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Indicative Open Price
coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.indicative_open_price, range, value, display)

  return offset + length, value
end

-- Trade Volume
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume = {}

-- Size: Trade Volume
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume.size = 4

-- Display: Trade Volume
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Snapshot Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num = {}

-- Size: Snapshot Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.size = 2

-- Display: Snapshot Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.display = function(value)
  return "Snapshot Seq Num: "..value
end

-- Dissect: Snapshot Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.snapshot_seq_num, range, value, display)

  return offset + length, value
end

-- End Of Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.close_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.low_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.high_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_time.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_qty.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_qty.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_qty.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_qty.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_qty.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.size

-- Display: End Of Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Signed Fixed Width Integer
  index, trade_volume = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume.dissect(buffer, index, packet, parent)

  -- Indicative Open Price: 8 Byte Signed Fixed Width Integer Nullable
  index, indicative_open_price = coinbase_derivatives_marketdataapi_sbe_v1_3.indicative_open_price.dissect(buffer, index, packet, parent)

  -- Day Open Price: 8 Byte Signed Fixed Width Integer Nullable
  index, day_open_price = coinbase_derivatives_marketdataapi_sbe_v1_3.day_open_price.dissect(buffer, index, packet, parent)

  -- Close Price: 8 Byte Signed Fixed Width Integer Nullable
  index, close_price = coinbase_derivatives_marketdataapi_sbe_v1_3.close_price.dissect(buffer, index, packet, parent)

  -- Low Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_price = coinbase_derivatives_marketdataapi_sbe_v1_3.low_price.dissect(buffer, index, packet, parent)

  -- High Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_price = coinbase_derivatives_marketdataapi_sbe_v1_3.high_price.dissect(buffer, index, packet, parent)

  -- Vwap Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, vwap_price_optional = coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price_optional.dissect(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.dissect(buffer, index, packet, parent)

  -- Last Trade Price: 8 Byte Signed Fixed Width Integer Nullable
  index, last_trade_price = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Time: 8 Byte Signed Fixed Width Integer Nullable
  index, last_trade_time = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_time.dissect(buffer, index, packet, parent)

  -- Best Bid Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, best_bid_implied_price = coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_price.dissect(buffer, index, packet, parent)

  -- Best Ask Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, best_ask_implied_price = coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_price.dissect(buffer, index, packet, parent)

  -- Next Bid Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, next_bid_implied_price = coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_price.dissect(buffer, index, packet, parent)

  -- Next Ask Implied Price: 8 Byte Signed Fixed Width Integer Nullable
  index, next_ask_implied_price = coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_price.dissect(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.dissect(buffer, index, packet, parent)

  -- Last Trade Qty: 4 Byte Signed Fixed Width Integer
  index, last_trade_qty = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trade_qty.dissect(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Signed Fixed Width Integer
  index, open_interest = coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest.dissect(buffer, index, packet, parent)

  -- Best Bid Implied Qty: 4 Byte Signed Fixed Width Integer
  index, best_bid_implied_qty = coinbase_derivatives_marketdataapi_sbe_v1_3.best_bid_implied_qty.dissect(buffer, index, packet, parent)

  -- Best Ask Implied Qty: 4 Byte Signed Fixed Width Integer
  index, best_ask_implied_qty = coinbase_derivatives_marketdataapi_sbe_v1_3.best_ask_implied_qty.dissect(buffer, index, packet, parent)

  -- Next Bid Implied Qty: 4 Byte Signed Fixed Width Integer
  index, next_bid_implied_qty = coinbase_derivatives_marketdataapi_sbe_v1_3.next_bid_implied_qty.dissect(buffer, index, packet, parent)

  -- Next Ask Implied Qty: 4 Byte Signed Fixed Width Integer
  index, next_ask_implied_qty = coinbase_derivatives_marketdataapi_sbe_v1_3.next_ask_implied_qty.dissect(buffer, index, packet, parent)

  -- Prior Settlement Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price_optional = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.dissect(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
coinbase_derivatives_marketdataapi_sbe_v1_3.price = {}

-- Size: Price
coinbase_derivatives_marketdataapi_sbe_v1_3.price.size = 8

-- Display: Price
coinbase_derivatives_marketdataapi_sbe_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
coinbase_derivatives_marketdataapi_sbe_v1_3.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
coinbase_derivatives_marketdataapi_sbe_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.order_id = {}

-- Size: Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.size = 8

-- Display: Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Transact Time
coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time = {}

-- Size: Transact Time
coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time.size = 8

-- Display: Transact Time
coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Quantity
coinbase_derivatives_marketdataapi_sbe_v1_3.quantity = {}

-- Size: Quantity
coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.size = 4

-- Display: Quantity
coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Order Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message = {}

-- Size: Order Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.price.size

-- Display: Order Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = coinbase_derivatives_marketdataapi_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.order_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_snapshot_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status = {}

-- Size: Trading Status
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.size = 1

-- Display: Trading Status
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.display = function(value)
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
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Product Group
coinbase_derivatives_marketdataapi_sbe_v1_3.product_group = {}

-- Size: Product Group
coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.size = 1

-- Display: Product Group
coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.display = function(value)
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
coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.product_group, range, value, display)

  return offset + length, value
end

-- Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date = {}

-- Size: Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.size = 2

-- Display: Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.display = function(value)
  return "Trading Session Date: "..value
end

-- Dissect: Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trading_session_date, range, value, display)

  return offset + length, value
end

-- Last Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date = {}

-- Size: Last Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.size = 2

-- Display: Last Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.display = function(value)
  return "Last Trading Session Date: "..value
end

-- Dissect: Last Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_trading_session_date, range, value, display)

  return offset + length, value
end

-- First Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date = {}

-- Size: First Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.size = 2

-- Display: First Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.display = function(value)
  return "First Trading Session Date: "..value
end

-- Dissect: First Trading Session Date
coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.first_trading_session_date, range, value, display)

  return offset + length, value
end

-- Order Count
coinbase_derivatives_marketdataapi_sbe_v1_3.order_count = {}

-- Size: Order Count
coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.size = 4

-- Display: Order Count
coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_count, range, value, display)

  return offset + length, value
end

-- Underlying Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id = {}

-- Size: Underlying Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id.size = 4

-- Display: Underlying Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id.display = function(value)
  return "Underlying Instrument Id: "..value
end

-- Dissect: Underlying Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.underlying_instrument_id, range, value, display)

  return offset + length, value
end

-- Product Id
coinbase_derivatives_marketdataapi_sbe_v1_3.product_id = {}

-- Size: Product Id
coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.size = 4

-- Display: Product Id
coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.product_id, range, value, display)

  return offset + length, value
end

-- Strike Price
coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price = {}

-- Size: Strike Price
coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.size = 8

-- Display: Strike Price
coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Strike Price
coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Large Tick Threshold
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold = {}

-- Size: Large Tick Threshold
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.size = 8

-- Display: Large Tick Threshold
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.display = function(value)
  return "Large Tick Threshold: "..value
end

-- Translate: Large Tick Threshold
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Large Tick Threshold
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.large_tick_threshold, range, value, display)

  return offset + length, value
end

-- Large Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick = {}

-- Size: Large Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.size = 8

-- Display: Large Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.display = function(value)
  return "Large Tick: "..value
end

-- Translate: Large Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Large Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.large_tick, range, value, display)

  return offset + length, value
end

-- Cfi Code
coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code = {}

-- Size: Cfi Code
coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.size = 8

-- Display: Cfi Code
coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.size
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Small Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick = {}

-- Size: Small Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.size = 8

-- Display: Small Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.display = function(value)
  return "Small Tick: "..value
end

-- Translate: Small Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Small Tick
coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.small_tick, range, value, display)

  return offset + length, value
end

-- Description
coinbase_derivatives_marketdataapi_sbe_v1_3.description = {}

-- Size: Description
coinbase_derivatives_marketdataapi_sbe_v1_3.description.size = 32

-- Display: Description
coinbase_derivatives_marketdataapi_sbe_v1_3.description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Description: No Value"
  end

  return "Description: "..value
end

-- Dissect: Description
coinbase_derivatives_marketdataapi_sbe_v1_3.description.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.description.size
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.description, range, value, display)

  return offset + length, value
end

-- Product Code
coinbase_derivatives_marketdataapi_sbe_v1_3.product_code = {}

-- Size: Product Code
coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.size = 8

-- Display: Product Code
coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Code: No Value"
  end

  return "Product Code: "..value
end

-- Dissect: Product Code
coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.size
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.product_code, range, value, display)

  return offset + length, value
end

-- Symbol
coinbase_derivatives_marketdataapi_sbe_v1_3.symbol = {}

-- Size: Symbol
coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.size = 24

-- Display: Symbol
coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.size
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Last Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num = {}

-- Size: Last Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.size = 4

-- Display: Last Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.display = function(value)
  return "Last Instr Seq Num: "..value
end

-- Dissect: Last Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.last_instr_seq_num, range, value, display)

  return offset + length, value
end

-- Start Of Option Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message = {}

-- Size: Start Of Option Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.description.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.size

-- Display: Start Of Option Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Option Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.dissect(buffer, index, packet, parent)

  -- Last Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_instr_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.dissect(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_3.description.dissect(buffer, index, packet, parent)

  -- Small Tick: 8 Byte Signed Fixed Width Integer
  index, small_tick = coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.dissect(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.dissect(buffer, index, packet, parent)

  -- Large Tick: 8 Byte Signed Fixed Width Integer
  index, large_tick = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.dissect(buffer, index, packet, parent)

  -- Large Tick Threshold: 8 Byte Signed Fixed Width Integer
  index, large_tick_threshold = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.dissect(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Instrument Id: 4 Byte Signed Fixed Width Integer
  index, underlying_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id.dissect(buffer, index, packet, parent)

  -- Order Count: 4 Byte Signed Fixed Width Integer
  index, order_count = coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.dissect(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.dissect(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.dissect(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.dissect(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.dissect(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Option Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_option_instrument_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.start_of_option_instrument_snapshot_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Buy Convention
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention = {}

-- Size: Spread Buy Convention
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention.size = 1

-- Display: Spread Buy Convention
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention.display = function(value)
  if value == 1 then
    return "Spread Buy Convention: Use Far Bid (1)"
  end
  if value == -1 then
    return "Spread Buy Convention: Use Near Bid (-1)"
  end

  return "Spread Buy Convention: Unknown("..value..")"
end

-- Dissect: Spread Buy Convention
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.spread_buy_convention, range, value, display)

  return offset + length, value
end

-- Leg 2 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id = {}

-- Size: Leg 2 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id.size = 4

-- Display: Leg 2 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id.display = function(value)
  return "Leg 2 Instrument Id: "..value
end

-- Dissect: Leg 2 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.leg_2_instrument_id, range, value, display)

  return offset + length, value
end

-- Leg 1 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id = {}

-- Size: Leg 1 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id.size = 4

-- Display: Leg 1 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id.display = function(value)
  return "Leg 1 Instrument Id: "..value
end

-- Dissect: Leg 1 Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.leg_1_instrument_id, range, value, display)

  return offset + length, value
end

-- Contract Size
coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size = {}

-- Size: Contract Size
coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.size = 4

-- Display: Contract Size
coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Currency
coinbase_derivatives_marketdataapi_sbe_v1_3.currency = {}

-- Size: Currency
coinbase_derivatives_marketdataapi_sbe_v1_3.currency.size = 8

-- Display: Currency
coinbase_derivatives_marketdataapi_sbe_v1_3.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
coinbase_derivatives_marketdataapi_sbe_v1_3.currency.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.currency.size
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

  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.currency, range, value, display)

  return offset + length, value
end

-- Price Increment
coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment = {}

-- Size: Price Increment
coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.size = 8

-- Display: Price Increment
coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.display = function(value)
  return "Price Increment: "..value
end

-- Translate: Price Increment
coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price Increment
coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Start Of Spread Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message = {}

-- Size: Start Of Spread Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.description.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.currency.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention.size

-- Display: Start Of Spread Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spread Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.dissect(buffer, index, packet, parent)

  -- Last Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_instr_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.dissect(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_3.description.dissect(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.dissect(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.dissect(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = coinbase_derivatives_marketdataapi_sbe_v1_3.currency.dissect(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.dissect(buffer, index, packet, parent)

  -- Order Count: 4 Byte Signed Fixed Width Integer
  index, order_count = coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.dissect(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.dissect(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.dissect(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.dissect(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.dissect(buffer, index, packet, parent)

  -- Leg 1 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_1_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg 2 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_2_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id.dissect(buffer, index, packet, parent)

  -- Spread Buy Convention: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, spread_buy_convention = coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spread Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_spread_instrument_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.start_of_spread_instrument_snapshot_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Outright Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message = {}

-- Size: Start Of Outright Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.description.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.currency.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.size

-- Display: Start Of Outright Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Outright Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Seq Num: 2 Byte Unsigned Fixed Width Integer
  index, snapshot_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_seq_num.dissect(buffer, index, packet, parent)

  -- Last Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_instr_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.last_instr_seq_num.dissect(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.dissect(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_3.description.dissect(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.dissect(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.dissect(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = coinbase_derivatives_marketdataapi_sbe_v1_3.currency.dissect(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.dissect(buffer, index, packet, parent)

  -- Order Count: 4 Byte Signed Fixed Width Integer
  index, order_count = coinbase_derivatives_marketdataapi_sbe_v1_3.order_count.dissect(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.dissect(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.dissect(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.dissect(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Outright Instrument Snapshot Message
coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_outright_instrument_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.start_of_outright_instrument_snapshot_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved
coinbase_derivatives_marketdataapi_sbe_v1_3.reserved = {}

-- Size: Reserved
coinbase_derivatives_marketdataapi_sbe_v1_3.reserved.size = 2

-- Display: Reserved
coinbase_derivatives_marketdataapi_sbe_v1_3.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
coinbase_derivatives_marketdataapi_sbe_v1_3.reserved.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.reserved.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.reserved, range, value, display)

  return offset + length, value
end

-- Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.instr_seq_num = {}

-- Size: Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.instr_seq_num.size = 4

-- Display: Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.instr_seq_num.display = function(value)
  return "Instr Seq Num: "..value
end

-- Dissect: Instr Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.instr_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instr_seq_num, range, value, display)

  return offset + length, value
end

-- Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_id = {}

-- Size: Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_id.size = 4

-- Display: Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Side
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_side = {}

-- Size: Instrument Side
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_side.size = 1

-- Display: Instrument Side
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_side.display = function(value)
  return "Instrument Side: "..value
end

-- Dissect: Instrument Side
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_side.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_side.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instrument_side, range, value, display)

  return offset + length, value
end

-- Instrument Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_flags = {}

-- Size: Instrument Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_flags.size = 1

-- Display: Instrument Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_flags.display = function(value)
  return "Instrument Flags: "..value
end

-- Dissect: Instrument Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_flags.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instrument_flags, range, value, display)

  return offset + length, value
end

-- Instr Header
coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header = {}

-- Size: Instr Header
coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_flags.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_side.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.reserved.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time.size

-- Display: Instr Header
coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instr Header
coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Flags: 1 Byte Unsigned Fixed Width Integer
  index, instrument_flags = coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_flags.dissect(buffer, index, packet, parent)

  -- Instrument Side: 1 Byte Signed Fixed Width Integer
  index, instrument_side = coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_side.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_3.instrument_id.dissect(buffer, index, packet, parent)

  -- Instr Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, instr_seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_seq_num.dissect(buffer, index, packet, parent)

  -- Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_session_date.dissect(buffer, index, packet, parent)

  -- Reserved: 2 Byte Signed Fixed Width Integer
  index, reserved = coinbase_derivatives_marketdataapi_sbe_v1_3.reserved.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = coinbase_derivatives_marketdataapi_sbe_v1_3.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instr Header
coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect = function(buffer, offset, packet, parent)
  if show.instr_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.instr_header, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message = {}

-- Size: Open Interest Message
coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.size

-- Display: Open Interest Message
coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.open_interest_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.open_interest_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Vwap Price
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price = {}

-- Size: Vwap Price
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.size = 8

-- Display: Vwap Price
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.display = function(value)
  return "Vwap Price: "..value
end

-- Translate: Vwap Price
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Vwap Price
coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.vwap_price, range, value, display)

  return offset + length, value
end

-- Trade Session Volume Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message = {}

-- Size: Trade Session Volume Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume.size

-- Display: Trade Session Volume Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Session Volume Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Vwap Price: 8 Byte Signed Fixed Width Integer
  index, vwap_price = coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Signed Fixed Width Integer
  index, trade_volume = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Session Volume Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_session_volume_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_session_volume_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Stat Type
coinbase_derivatives_marketdataapi_sbe_v1_3.stat_type = {}

-- Size: Stat Type
coinbase_derivatives_marketdataapi_sbe_v1_3.stat_type.size = 1

-- Display: Stat Type
coinbase_derivatives_marketdataapi_sbe_v1_3.stat_type.display = function(value)
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
coinbase_derivatives_marketdataapi_sbe_v1_3.stat_type.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.stat_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.stat_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.stat_type, range, value, display)

  return offset + length, value
end

-- Market Stat Message
coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message = {}

-- Size: Market Stat Message
coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.stat_type.size

-- Display: Market Stat Message
coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Stat Message
coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = coinbase_derivatives_marketdataapi_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  -- Stat Type: 1 Byte Ascii String Enum with 7 values
  index, stat_type = coinbase_derivatives_marketdataapi_sbe_v1_3.stat_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Stat Message
coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message.dissect = function(buffer, offset, packet, parent)
  if show.market_stat_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.market_stat_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message.fields(buffer, offset, packet, parent)
  end
end

-- Sell Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id = {}

-- Size: Sell Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.size = 8

-- Display: Sell Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Sell Order Id: No Value"
  end

  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Buy Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id = {}

-- Size: Buy Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.size = 8

-- Display: Buy Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Buy Order Id: No Value"
  end

  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Match Id
coinbase_derivatives_marketdataapi_sbe_v1_3.match_id = {}

-- Size: Match Id
coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.size = 8

-- Display: Match Id
coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.match_id, range, value, display)

  return offset + length, value
end

-- Trade Bust Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message = {}

-- Size: Trade Bust Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.size

-- Display: Trade Bust Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.dissect(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_bust_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_bust_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- New Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price = {}

-- Size: New Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price.size = 8

-- Display: New Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price.display = function(value)
  return "New Leg 2 Price: "..value
end

-- Translate: New Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: New Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.new_leg_2_price, range, value, display)

  return offset + length, value
end

-- Old Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price = {}

-- Size: Old Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price.size = 8

-- Display: Old Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price.display = function(value)
  return "Old Leg 2 Price: "..value
end

-- Translate: Old Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Old Leg 2 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.old_leg_2_price, range, value, display)

  return offset + length, value
end

-- New Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price = {}

-- Size: New Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price.size = 8

-- Display: New Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price.display = function(value)
  return "New Leg 1 Price: "..value
end

-- Translate: New Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: New Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.new_leg_1_price, range, value, display)

  return offset + length, value
end

-- Old Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price = {}

-- Size: Old Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price.size = 8

-- Display: Old Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price.display = function(value)
  return "Old Leg 1 Price: "..value
end

-- Translate: Old Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Old Leg 1 Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.old_leg_1_price, range, value, display)

  return offset + length, value
end

-- New Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_price = {}

-- Size: New Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.size = 8

-- Display: New Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.display = function(value)
  return "New Price: "..value
end

-- Translate: New Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: New Price
coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.new_price, range, value, display)

  return offset + length, value
end

-- Old Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_price = {}

-- Size: Old Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.size = 8

-- Display: Old Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.display = function(value)
  return "Old Price: "..value
end

-- Translate: Old Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Old Price
coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.old_price, range, value, display)

  return offset + length, value
end

-- Spread Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message = {}

-- Size: Spread Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price.size

-- Display: Spread Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.dissect(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.dissect(buffer, index, packet, parent)

  -- Old Price: 8 Byte Signed Fixed Width Integer
  index, old_price = coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.dissect(buffer, index, packet, parent)

  -- New Price: 8 Byte Signed Fixed Width Integer
  index, new_price = coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.dissect(buffer, index, packet, parent)

  -- Old Leg 1 Price: 8 Byte Signed Fixed Width Integer
  index, old_leg_1_price = coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_1_price.dissect(buffer, index, packet, parent)

  -- New Leg 1 Price: 8 Byte Signed Fixed Width Integer
  index, new_leg_1_price = coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_1_price.dissect(buffer, index, packet, parent)

  -- Old Leg 2 Price: 8 Byte Signed Fixed Width Integer
  index, old_leg_2_price = coinbase_derivatives_marketdataapi_sbe_v1_3.old_leg_2_price.dissect(buffer, index, packet, parent)

  -- New Leg 2 Price: 8 Byte Signed Fixed Width Integer
  index, new_leg_2_price = coinbase_derivatives_marketdataapi_sbe_v1_3.new_leg_2_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message.dissect = function(buffer, offset, packet, parent)
  if show.spread_trade_amend_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.spread_trade_amend_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message = {}

-- Size: Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.size

-- Display: Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.dissect(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.dissect(buffer, index, packet, parent)

  -- Old Price: 8 Byte Signed Fixed Width Integer
  index, old_price = coinbase_derivatives_marketdataapi_sbe_v1_3.old_price.dissect(buffer, index, packet, parent)

  -- New Price: 8 Byte Signed Fixed Width Integer
  index, new_price = coinbase_derivatives_marketdataapi_sbe_v1_3.new_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Amend Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_amend_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_amend_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message = {}

-- Size: Trade Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.size

-- Display: Trade Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_marketdataapi_sbe_v1_3.match_id.dissect(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, buy_order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, sell_order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.sell_order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = coinbase_derivatives_marketdataapi_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Deepest Price
coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price = {}

-- Size: Deepest Price
coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price.size = 8

-- Display: Deepest Price
coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price.display = function(value)
  return "Deepest Price: "..value
end

-- Translate: Deepest Price
coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Deepest Price
coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.deepest_price, range, value, display)

  return offset + length, value
end

-- Aggressor Receive Time
coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_receive_time = {}

-- Size: Aggressor Receive Time
coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_receive_time.size = 8

-- Display: Aggressor Receive Time
coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_receive_time.display = function(value)
  return "Aggressor Receive Time: "..value
end

-- Dissect: Aggressor Receive Time
coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_receive_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_receive_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_receive_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.aggressor_receive_time, range, value, display)

  return offset + length, value
end

-- Aggressor Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_order_id = {}

-- Size: Aggressor Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_order_id.size = 8

-- Display: Aggressor Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_order_id.display = function(value)
  return "Aggressor Order Id: "..value
end

-- Dissect: Aggressor Order Id
coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.aggressor_order_id, range, value, display)

  return offset + length, value
end

-- Trade Summary Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message = {}

-- Size: Trade Summary Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_receive_time.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.size

-- Display: Trade Summary Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Aggressor Order Id: 8 Byte Signed Fixed Width Integer
  index, aggressor_order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_order_id.dissect(buffer, index, packet, parent)

  -- Aggressor Receive Time: 8 Byte Signed Fixed Width Integer
  index, aggressor_receive_time = coinbase_derivatives_marketdataapi_sbe_v1_3.aggressor_receive_time.dissect(buffer, index, packet, parent)

  -- Vwap Price: 8 Byte Signed Fixed Width Integer
  index, vwap_price = coinbase_derivatives_marketdataapi_sbe_v1_3.vwap_price.dissect(buffer, index, packet, parent)

  -- Deepest Price: 8 Byte Signed Fixed Width Integer
  index, deepest_price = coinbase_derivatives_marketdataapi_sbe_v1_3.deepest_price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trade_summary_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Next Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_qty = {}

-- Size: Next Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_qty.size = 4

-- Display: Next Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_qty.display = function(value)
  return "Next Qty: "..value
end

-- Dissect: Next Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.next_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.next_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.next_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_qty, range, value, display)

  return offset + length, value
end

-- Best Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_qty = {}

-- Size: Best Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_qty.size = 4

-- Display: Best Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_qty.display = function(value)
  return "Best Qty: "..value
end

-- Dissect: Best Qty
coinbase_derivatives_marketdataapi_sbe_v1_3.best_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.best_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.best_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_qty, range, value, display)

  return offset + length, value
end

-- Next Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_price = {}

-- Size: Next Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_price.size = 8

-- Display: Next Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Next Price: No Value"
  end

  return "Next Price: "..value
end

-- Translate: Next Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Next Price
coinbase_derivatives_marketdataapi_sbe_v1_3.next_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.next_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.next_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.next_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.next_price, range, value, display)

  return offset + length, value
end

-- Best Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_price = {}

-- Size: Best Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_price.size = 8

-- Display: Best Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Best Price: No Value"
  end

  return "Best Price: "..value
end

-- Translate: Best Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Best Price
coinbase_derivatives_marketdataapi_sbe_v1_3.best_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.best_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.best_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.best_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.best_price, range, value, display)

  return offset + length, value
end

-- Implied Order Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message = {}

-- Size: Implied Order Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.best_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.next_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.best_qty.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.next_qty.size

-- Display: Implied Order Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Best Price: 8 Byte Signed Fixed Width Integer Nullable
  index, best_price = coinbase_derivatives_marketdataapi_sbe_v1_3.best_price.dissect(buffer, index, packet, parent)

  -- Next Price: 8 Byte Signed Fixed Width Integer Nullable
  index, next_price = coinbase_derivatives_marketdataapi_sbe_v1_3.next_price.dissect(buffer, index, packet, parent)

  -- Best Qty: 4 Byte Signed Fixed Width Integer
  index, best_qty = coinbase_derivatives_marketdataapi_sbe_v1_3.best_qty.dissect(buffer, index, packet, parent)

  -- Next Qty: 4 Byte Signed Fixed Width Integer
  index, next_qty = coinbase_derivatives_marketdataapi_sbe_v1_3.next_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.implied_order_update_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message = {}

-- Size: Order Delete Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.size

-- Display: Order Delete Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_delete_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Put Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message = {}

-- Size: Order Put Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.size

-- Display: Order Put Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Put Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_marketdataapi_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = coinbase_derivatives_marketdataapi_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_marketdataapi_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Put Message
coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message.dissect = function(buffer, offset, packet, parent)
  if show.order_put_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.order_put_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message = {}

-- Size: Trading Status Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.size

-- Display: Trading Status Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Update Message
coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_status_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.trading_status_update_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price = {}

-- Size: Prior Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price.size = 8

-- Display: Prior Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price.display = function(value)
  return "Prior Settlement Price: "..value
end

-- Translate: Prior Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Prior Settlement Price
coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price.translate(raw)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.prior_settlement_price, range, value, display)

  return offset + length, value
end

-- Option Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message = {}

-- Size: Option Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.description.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.size

-- Display: Option Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.dissect(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_3.description.dissect(buffer, index, packet, parent)

  -- Small Tick: 8 Byte Signed Fixed Width Integer
  index, small_tick = coinbase_derivatives_marketdataapi_sbe_v1_3.small_tick.dissect(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.dissect(buffer, index, packet, parent)

  -- Large Tick: 8 Byte Signed Fixed Width Integer
  index, large_tick = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick.dissect(buffer, index, packet, parent)

  -- Large Tick Threshold: 8 Byte Signed Fixed Width Integer
  index, large_tick_threshold = coinbase_derivatives_marketdataapi_sbe_v1_3.large_tick_threshold.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = coinbase_derivatives_marketdataapi_sbe_v1_3.strike_price.dissect(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.dissect(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.dissect(buffer, index, packet, parent)

  -- Prior Settlement Price: 8 Byte Signed Fixed Width Integer
  index, prior_settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.dissect(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Instrument Id: 4 Byte Signed Fixed Width Integer
  index, underlying_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_3.underlying_instrument_id.dissect(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.dissect(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.option_instrument_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.option_instrument_definition_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message = {}

-- Size: Spread Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.description.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.currency.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.size

-- Display: Spread Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.dissect(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_3.description.dissect(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.dissect(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.dissect(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = coinbase_derivatives_marketdataapi_sbe_v1_3.currency.dissect(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.dissect(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.dissect(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.dissect(buffer, index, packet, parent)

  -- Prior Settlement Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price_optional = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.dissect(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.dissect(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.dissect(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.dissect(buffer, index, packet, parent)

  -- Leg 1 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_1_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_3.leg_1_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg 2 Instrument Id: 4 Byte Signed Fixed Width Integer
  index, leg_2_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_3.leg_2_instrument_id.dissect(buffer, index, packet, parent)

  -- Spread Buy Convention: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, spread_buy_convention = coinbase_derivatives_marketdataapi_sbe_v1_3.spread_buy_convention.dissect(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.spread_instrument_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.spread_instrument_definition_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Outright Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message = {}

-- Size: Outright Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.description.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.currency.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.size

-- Display: Outright Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Header: Struct of 7 fields
  index, instr_header = coinbase_derivatives_marketdataapi_sbe_v1_3.instr_header.dissect(buffer, index, packet, parent)

  -- Symbol: 24 Byte Ascii String
  index, symbol = coinbase_derivatives_marketdataapi_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Product Code: 8 Byte Ascii String
  index, product_code = coinbase_derivatives_marketdataapi_sbe_v1_3.product_code.dissect(buffer, index, packet, parent)

  -- Description: 32 Byte Ascii String
  index, description = coinbase_derivatives_marketdataapi_sbe_v1_3.description.dissect(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Signed Fixed Width Integer
  index, price_increment = coinbase_derivatives_marketdataapi_sbe_v1_3.price_increment.dissect(buffer, index, packet, parent)

  -- Cfi Code: 8 Byte Ascii String
  index, cfi_code = coinbase_derivatives_marketdataapi_sbe_v1_3.cfi_code.dissect(buffer, index, packet, parent)

  -- Currency: 8 Byte Ascii String
  index, currency = coinbase_derivatives_marketdataapi_sbe_v1_3.currency.dissect(buffer, index, packet, parent)

  -- First Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, first_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.first_trading_session_date.dissect(buffer, index, packet, parent)

  -- Last Trading Session Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_session_date = coinbase_derivatives_marketdataapi_sbe_v1_3.last_trading_session_date.dissect(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Signed Fixed Width Integer
  index, contract_size = coinbase_derivatives_marketdataapi_sbe_v1_3.contract_size.dissect(buffer, index, packet, parent)

  -- Prior Settlement Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, prior_settlement_price_optional = coinbase_derivatives_marketdataapi_sbe_v1_3.prior_settlement_price_optional.dissect(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer Nullable
  index, settlement_price = coinbase_derivatives_marketdataapi_sbe_v1_3.settlement_price.dissect(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Signed Fixed Width Integer
  index, limit_down_price = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Signed Fixed Width Integer
  index, limit_up_price = coinbase_derivatives_marketdataapi_sbe_v1_3.limit_up_price.dissect(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_marketdataapi_sbe_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Product Group: 1 Byte Signed Fixed Width Integer Enum with 6 values
  index, product_group = coinbase_derivatives_marketdataapi_sbe_v1_3.product_group.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, trading_status = coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status.dissect(buffer, index, packet, parent)

  -- Definition Flags: Struct of 4 fields
  index, definition_flags = coinbase_derivatives_marketdataapi_sbe_v1_3.definition_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Instrument Definition Message
coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.outright_instrument_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.outright_instrument_definition_message, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
coinbase_derivatives_marketdataapi_sbe_v1_3.payload = {}

-- Size: Payload
coinbase_derivatives_marketdataapi_sbe_v1_3.payload.size = function(buffer, offset, template_id)
  -- Size of Outright Instrument Definition Message
  if template_id == 10 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message.size
  end
  -- Size of Spread Instrument Definition Message
  if template_id == 11 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message.size
  end
  -- Size of Option Instrument Definition Message
  if template_id == 12 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message.size
  end
  -- Size of Trading Status Update Message
  if template_id == 17 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message.size
  end
  -- Size of Order Put Message
  if template_id == 20 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message.size
  end
  -- Size of Order Delete Message
  if template_id == 21 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message.size
  end
  -- Size of Implied Order Update Message
  if template_id == 22 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message.size
  end
  -- Size of Trade Summary Message
  if template_id == 33 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message.size
  end
  -- Size of Trade Message
  if template_id == 30 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message.size
  end
  -- Size of Trade Amend Message
  if template_id == 31 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message.size
  end
  -- Size of Spread Trade Amend Message
  if template_id == 34 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message.size
  end
  -- Size of Trade Bust Message
  if template_id == 32 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message.size
  end
  -- Size of Market Stat Message
  if template_id == 40 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message.size
  end
  -- Size of Trade Session Volume Message
  if template_id == 41 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message.size
  end
  -- Size of Open Interest Message
  if template_id == 42 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message.size
  end
  -- Size of Start Of Outright Instrument Snapshot Message
  if template_id == 110 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message.size
  end
  -- Size of Start Of Spread Instrument Snapshot Message
  if template_id == 111 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message.size
  end
  -- Size of Start Of Option Instrument Snapshot Message
  if template_id == 112 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message.size
  end
  -- Size of Order Snapshot Message
  if template_id == 120 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message.size
  end
  -- Size of End Of Snapshot Message
  if template_id == 122 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message.size
  end
  -- Size of Retransmit Request Message
  if template_id == 200 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message.size
  end
  -- Size of Retransmit Reject Message
  if template_id == 202 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message.size
  end

  return 0
end

-- Display: Payload
coinbase_derivatives_marketdataapi_sbe_v1_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
coinbase_derivatives_marketdataapi_sbe_v1_3.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Outright Instrument Definition Message
  if template_id == 10 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.outright_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Instrument Definition Message
  if template_id == 11 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.spread_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Definition Message
  if template_id == 12 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.option_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Update Message
  if template_id == 17 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trading_status_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Put Message
  if template_id == 20 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.order_put_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if template_id == 21 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Update Message
  if template_id == 22 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.implied_order_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Summary Message
  if template_id == 33 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if template_id == 30 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Amend Message
  if template_id == 31 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_amend_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Trade Amend Message
  if template_id == 34 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.spread_trade_amend_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if template_id == 32 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_bust_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Stat Message
  if template_id == 40 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.market_stat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Session Volume Message
  if template_id == 41 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.trade_session_volume_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if template_id == 42 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Outright Instrument Snapshot Message
  if template_id == 110 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_outright_instrument_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Spread Instrument Snapshot Message
  if template_id == 111 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_spread_instrument_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Option Instrument Snapshot Message
  if template_id == 112 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.start_of_option_instrument_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Snapshot Message
  if template_id == 120 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.order_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if template_id == 122 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request Message
  if template_id == 200 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Reject Message
  if template_id == 202 then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.retransmit_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
coinbase_derivatives_marketdataapi_sbe_v1_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return coinbase_derivatives_marketdataapi_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = coinbase_derivatives_marketdataapi_sbe_v1_3.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.payload, range, display)

  return coinbase_derivatives_marketdataapi_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
coinbase_derivatives_marketdataapi_sbe_v1_3.version = {}

-- Size: Version
coinbase_derivatives_marketdataapi_sbe_v1_3.version.size = 2

-- Display: Version
coinbase_derivatives_marketdataapi_sbe_v1_3.version.display = function(value)
  if value == 3 then
    return "Version: Version 1.3"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
coinbase_derivatives_marketdataapi_sbe_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id = {}

-- Size: Schema Id
coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id.size = 2

-- Display: Schema Id
coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id.display = function(value)
  if value == 1201 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
coinbase_derivatives_marketdataapi_sbe_v1_3.template_id = {}

-- Size: Template Id
coinbase_derivatives_marketdataapi_sbe_v1_3.template_id.size = 2

-- Display: Template Id
coinbase_derivatives_marketdataapi_sbe_v1_3.template_id.display = function(value)
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
coinbase_derivatives_marketdataapi_sbe_v1_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
coinbase_derivatives_marketdataapi_sbe_v1_3.block_length = {}

-- Size: Block Length
coinbase_derivatives_marketdataapi_sbe_v1_3.block_length.size = 2

-- Display: Block Length
coinbase_derivatives_marketdataapi_sbe_v1_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
coinbase_derivatives_marketdataapi_sbe_v1_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Frame Length
coinbase_derivatives_marketdataapi_sbe_v1_3.frame_length = {}

-- Size: Frame Length
coinbase_derivatives_marketdataapi_sbe_v1_3.frame_length.size = 2

-- Display: Frame Length
coinbase_derivatives_marketdataapi_sbe_v1_3.frame_length.display = function(value)
  return "Frame Length: "..value
end

-- Dissect: Frame Length
coinbase_derivatives_marketdataapi_sbe_v1_3.frame_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.frame_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.frame_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.frame_length, range, value, display)

  return offset + length, value
end

-- Message Header
coinbase_derivatives_marketdataapi_sbe_v1_3.message_header = {}

-- Size: Message Header
coinbase_derivatives_marketdataapi_sbe_v1_3.message_header.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.frame_length.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.block_length.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.template_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.version.size

-- Display: Message Header
coinbase_derivatives_marketdataapi_sbe_v1_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
coinbase_derivatives_marketdataapi_sbe_v1_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame Length: 2 Byte Unsigned Fixed Width Integer
  index, frame_length = coinbase_derivatives_marketdataapi_sbe_v1_3.frame_length.dissect(buffer, index, packet, parent)

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = coinbase_derivatives_marketdataapi_sbe_v1_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, template_id = coinbase_derivatives_marketdataapi_sbe_v1_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = coinbase_derivatives_marketdataapi_sbe_v1_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
coinbase_derivatives_marketdataapi_sbe_v1_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.message_header, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
coinbase_derivatives_marketdataapi_sbe_v1_3.sbe_message = {}

-- Display: Sbe Message
coinbase_derivatives_marketdataapi_sbe_v1_3.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
coinbase_derivatives_marketdataapi_sbe_v1_3.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = coinbase_derivatives_marketdataapi_sbe_v1_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 22 branches
  index = coinbase_derivatives_marketdataapi_sbe_v1_3.payload.dissect(buffer, index, packet, parent, template_id)

  -- Dependency element: Frame Length
  local frame_length = buffer(offset, 2):le_uint()

  -- Runtime Size Of: Padding
  local size_of_padding = frame_length - (index - offset)

  -- Padding: 0 Byte
  index, padding = coinbase_derivatives_marketdataapi_sbe_v1_3.padding.dissect(buffer, index, packet, parent, size_of_padding)

  return index
end

-- Dissect: Sbe Message
coinbase_derivatives_marketdataapi_sbe_v1_3.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.sbe_message, buffer(offset, 0))
    local current = coinbase_derivatives_marketdataapi_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    coinbase_derivatives_marketdataapi_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Snapshot Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_instrument_id = {}

-- Size: Snapshot Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_instrument_id.size = 4

-- Display: Snapshot Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_instrument_id.display = function(value)
  return "Snapshot Instrument Id: "..value
end

-- Dissect: Snapshot Instrument Id
coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.snapshot_instrument_id, range, value, display)

  return offset + length, value
end

-- Packet Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.packet_flags = {}

-- Size: Packet Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.packet_flags.size = 1

-- Display: Packet Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.packet_flags.display = function(value)
  return "Packet Flags: "..value
end

-- Dissect: Packet Flags
coinbase_derivatives_marketdataapi_sbe_v1_3.packet_flags.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.packet_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.packet_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.packet_flags, range, value, display)

  return offset + length, value
end

-- Channel Id
coinbase_derivatives_marketdataapi_sbe_v1_3.channel_id = {}

-- Size: Channel Id
coinbase_derivatives_marketdataapi_sbe_v1_3.channel_id.size = 2

-- Display: Channel Id
coinbase_derivatives_marketdataapi_sbe_v1_3.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
coinbase_derivatives_marketdataapi_sbe_v1_3.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.seq_num = {}

-- Size: Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.seq_num.size = 8

-- Display: Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
coinbase_derivatives_marketdataapi_sbe_v1_3.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Sending Time
coinbase_derivatives_marketdataapi_sbe_v1_3.sending_time = {}

-- Size: Sending Time
coinbase_derivatives_marketdataapi_sbe_v1_3.sending_time.size = 8

-- Display: Sending Time
coinbase_derivatives_marketdataapi_sbe_v1_3.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
coinbase_derivatives_marketdataapi_sbe_v1_3.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_marketdataapi_sbe_v1_3.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_marketdataapi_sbe_v1_3.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Packet Header
coinbase_derivatives_marketdataapi_sbe_v1_3.packet_header = {}

-- Size: Packet Header
coinbase_derivatives_marketdataapi_sbe_v1_3.packet_header.size =
  coinbase_derivatives_marketdataapi_sbe_v1_3.sending_time.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.seq_num.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.channel_id.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.packet_flags.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.message_count.size + 
  coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_instrument_id.size

-- Display: Packet Header
coinbase_derivatives_marketdataapi_sbe_v1_3.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
coinbase_derivatives_marketdataapi_sbe_v1_3.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Signed Fixed Width Integer
  index, sending_time = coinbase_derivatives_marketdataapi_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Seq Num: 8 Byte Signed Fixed Width Integer
  index, seq_num = coinbase_derivatives_marketdataapi_sbe_v1_3.seq_num.dissect(buffer, index, packet, parent)

  -- Channel Id: 2 Byte Unsigned Fixed Width Integer
  index, channel_id = coinbase_derivatives_marketdataapi_sbe_v1_3.channel_id.dissect(buffer, index, packet, parent)

  -- Packet Flags: 1 Byte Unsigned Fixed Width Integer
  index, packet_flags = coinbase_derivatives_marketdataapi_sbe_v1_3.packet_flags.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = coinbase_derivatives_marketdataapi_sbe_v1_3.message_count.dissect(buffer, index, packet, parent)

  -- Snapshot Instrument Id: 4 Byte Signed Fixed Width Integer
  index, snapshot_instrument_id = coinbase_derivatives_marketdataapi_sbe_v1_3.snapshot_instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
coinbase_derivatives_marketdataapi_sbe_v1_3.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3.fields.packet_header, buffer(offset, 0))
    local index = coinbase_derivatives_marketdataapi_sbe_v1_3.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_marketdataapi_sbe_v1_3.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_marketdataapi_sbe_v1_3.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
coinbase_derivatives_marketdataapi_sbe_v1_3.packet = {}

-- Dissect Packet
coinbase_derivatives_marketdataapi_sbe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = coinbase_derivatives_marketdataapi_sbe_v1_3.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Frame Length
    local frame_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Sbe Message
    index, sbe_message = coinbase_derivatives_marketdataapi_sbe_v1_3.sbe_message.dissect(buffer, index, packet, parent, frame_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_coinbase_derivatives_marketdataapi_sbe_v1_3.init()
end

-- Dissector for Coinbase Derivatives MarketDataApi Sbe 1.3
function omi_coinbase_derivatives_marketdataapi_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_coinbase_derivatives_marketdataapi_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_coinbase_derivatives_marketdataapi_sbe_v1_3, buffer(), omi_coinbase_derivatives_marketdataapi_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return coinbase_derivatives_marketdataapi_sbe_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_coinbase_derivatives_marketdataapi_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
coinbase_derivatives_marketdataapi_sbe_v1_3.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(30, 2):le_uint()

  if value == 1201 then
    return true
  end

  return false
end

-- Verify Version Field
coinbase_derivatives_marketdataapi_sbe_v1_3.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(32, 2):le_uint()

  if value == 3 then
    return true
  end

  return false
end

-- Dissector Heuristic for Coinbase Derivatives MarketDataApi Sbe 1.3
local function omi_coinbase_derivatives_marketdataapi_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not coinbase_derivatives_marketdataapi_sbe_v1_3.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not coinbase_derivatives_marketdataapi_sbe_v1_3.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not coinbase_derivatives_marketdataapi_sbe_v1_3.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_coinbase_derivatives_marketdataapi_sbe_v1_3
  omi_coinbase_derivatives_marketdataapi_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Coinbase Derivatives MarketDataApi Sbe 1.3
omi_coinbase_derivatives_marketdataapi_sbe_v1_3:register_heuristic("udp", omi_coinbase_derivatives_marketdataapi_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Coinbase
--   Version: 1.3
--   Date: Monday, July 27, 2020
--   Specification: FairX_UDP_MarketData_API_V1.2.pdf
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
