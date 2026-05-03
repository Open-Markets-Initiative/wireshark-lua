-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Coinbase Deribit MarketDataApi Sbe 1.0 Protocol
local omi_coinbase_deribit_marketdataapi_sbe_v1_0 = Proto("Coinbase.Deribit.MarketDataApi.Sbe.v1.0.Lua", "Coinbase Deribit MarketDataApi Sbe 1.0")

-- Protocol table
local coinbase_deribit_marketdataapi_sbe_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Coinbase Deribit MarketDataApi Sbe 1.0 Fields
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.active_instrument_count = ProtoField.new("Active Instrument Count", "coinbase.deribit.marketdataapi.sbe.v1.0.activeinstrumentcount", ftypes.INT32)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.base_currency = ProtoField.new("Base Currency", "coinbase.deribit.marketdataapi.sbe.v1.0.basecurrency", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.base_increment = ProtoField.new("Base Increment", "coinbase.deribit.marketdataapi.sbe.v1.0.baseincrement", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "coinbase.deribit.marketdataapi.sbe.v1.0.beginseqnum", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.block_rfq_id = ProtoField.new("Block Rfq Id", "coinbase.deribit.marketdataapi.sbe.v1.0.blockrfqid", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.block_trade_id = ProtoField.new("Block Trade Id", "coinbase.deribit.marketdataapi.sbe.v1.0.blocktradeid", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.channel_id = ProtoField.new("Channel Id", "coinbase.deribit.marketdataapi.sbe.v1.0.channelid", ftypes.INT32)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.creation_time = ProtoField.new("Creation Time", "coinbase.deribit.marketdataapi.sbe.v1.0.creationtime", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.current_funding = ProtoField.new("Current Funding", "coinbase.deribit.marketdataapi.sbe.v1.0.currentfunding", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.day_of_month = ProtoField.new("Day Of Month", "coinbase.deribit.marketdataapi.sbe.v1.0.dayofmonth", ftypes.INT16)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.deepest_price = ProtoField.new("Deepest Price", "coinbase.deribit.marketdataapi.sbe.v1.0.deepestprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.delivery_price = ProtoField.new("Delivery Price", "coinbase.deribit.marketdataapi.sbe.v1.0.deliveryprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.details = ProtoField.new("Details", "coinbase.deribit.marketdataapi.sbe.v1.0.details", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.end_of_transaction = ProtoField.new("End Of Transaction", "coinbase.deribit.marketdataapi.sbe.v1.0.endoftransaction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.estimated_delivery_price = ProtoField.new("Estimated Delivery Price", "coinbase.deribit.marketdataapi.sbe.v1.0.estimateddeliveryprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.expiry_time = ProtoField.new("Expiry Time", "coinbase.deribit.marketdataapi.sbe.v1.0.expirytime", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.fill_price = ProtoField.new("Fill Price", "coinbase.deribit.marketdataapi.sbe.v1.0.fillprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.fill_qty_mantissa = ProtoField.new("Fill Qty Mantissa", "coinbase.deribit.marketdataapi.sbe.v1.0.fillqtymantissa", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.flags = ProtoField.new("Flags", "coinbase.deribit.marketdataapi.sbe.v1.0.flags", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.funding_8h = ProtoField.new("Funding 8h", "coinbase.deribit.marketdataapi.sbe.v1.0.funding8h", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.implied_volatility = ProtoField.new("Implied Volatility", "coinbase.deribit.marketdataapi.sbe.v1.0.impliedvolatility", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.increment_seq_num = ProtoField.new("Increment Seq Num", "coinbase.deribit.marketdataapi.sbe.v1.0.incrementseqnum", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.incremental_seq_num = ProtoField.new("Incremental Seq Num", "coinbase.deribit.marketdataapi.sbe.v1.0.incrementalseqnum", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.incremental_timestamp = ProtoField.new("Incremental Timestamp", "coinbase.deribit.marketdataapi.sbe.v1.0.incrementaltimestamp", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.incremental_update = ProtoField.new("Incremental Update", "coinbase.deribit.marketdataapi.sbe.v1.0.incrementalupdate", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.index_price = ProtoField.new("Index Price", "coinbase.deribit.marketdataapi.sbe.v1.0.indexprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.instrument_id = ProtoField.new("Instrument Id", "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentid", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_liquidation = ProtoField.new("Is Liquidation", "coinbase.deribit.marketdataapi.sbe.v1.0.isliquidation", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000002)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_perpetual = ProtoField.new("Is Perpetual", "coinbase.deribit.marketdataapi.sbe.v1.0.isperpetual", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000004)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_put_option = ProtoField.new("Is Put Option", "coinbase.deribit.marketdataapi.sbe.v1.0.isputoption", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000002)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_reversed = ProtoField.new("Is Reversed", "coinbase.deribit.marketdataapi.sbe.v1.0.isreversed", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000001)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_sell = ProtoField.new("Is Sell", "coinbase.deribit.marketdataapi.sbe.v1.0.issell", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000001)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.large_tick_size_0 = ProtoField.new("Large Tick Size 0", "coinbase.deribit.marketdataapi.sbe.v1.0.largeticksize0", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.large_tick_size_1 = ProtoField.new("Large Tick Size 1", "coinbase.deribit.marketdataapi.sbe.v1.0.largeticksize1", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.large_tick_threshold_0 = ProtoField.new("Large Tick Threshold 0", "coinbase.deribit.marketdataapi.sbe.v1.0.largetickthreshold0", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.large_tick_threshold_1 = ProtoField.new("Large Tick Threshold 1", "coinbase.deribit.marketdataapi.sbe.v1.0.largetickthreshold1", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.logical_expiry = ProtoField.new("Logical Expiry", "coinbase.deribit.marketdataapi.sbe.v1.0.logicalexpiry", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.maker_flags = ProtoField.new("Maker Flags", "coinbase.deribit.marketdataapi.sbe.v1.0.makerflags", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.maker_order_id = ProtoField.new("Maker Order Id", "coinbase.deribit.marketdataapi.sbe.v1.0.makerorderid", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.mark_price = ProtoField.new("Mark Price", "coinbase.deribit.marketdataapi.sbe.v1.0.markprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.match_id = ProtoField.new("Match Id", "coinbase.deribit.marketdataapi.sbe.v1.0.matchid", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.max_buy_price = ProtoField.new("Max Buy Price", "coinbase.deribit.marketdataapi.sbe.v1.0.maxbuyprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.md_message = ProtoField.new("Md Message", "coinbase.deribit.marketdataapi.sbe.v1.0.mdmessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.md_message_header = ProtoField.new("Md Message Header", "coinbase.deribit.marketdataapi.sbe.v1.0.mdmessageheader", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.message_count = ProtoField.new("Message Count", "coinbase.deribit.marketdataapi.sbe.v1.0.messagecount", ftypes.UINT16)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.message_count_uint_8 = ProtoField.new("Message Count uint 8", "coinbase.deribit.marketdataapi.sbe.v1.0.messagecountuint8", ftypes.UINT8)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.message_flags = ProtoField.new("Message Flags", "coinbase.deribit.marketdataapi.sbe.v1.0.messageflags", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.message_length = ProtoField.new("Message Length", "coinbase.deribit.marketdataapi.sbe.v1.0.messagelength", ftypes.UINT16)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.min_sell_price = ProtoField.new("Min Sell Price", "coinbase.deribit.marketdataapi.sbe.v1.0.minsellprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.month = ProtoField.new("Month", "coinbase.deribit.marketdataapi.sbe.v1.0.month", ftypes.INT16)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.name = ProtoField.new("Name", "coinbase.deribit.marketdataapi.sbe.v1.0.name", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.number_of_legs = ProtoField.new("Number Of Legs", "coinbase.deribit.marketdataapi.sbe.v1.0.numberoflegs", ftypes.UINT16)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.order_id = ProtoField.new("Order Id", "coinbase.deribit.marketdataapi.sbe.v1.0.orderid", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.packet = ProtoField.new("Packet", "coinbase.deribit.marketdataapi.sbe.v1.0.packet", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.packet_header = ProtoField.new("Packet Header", "coinbase.deribit.marketdataapi.sbe.v1.0.packetheader", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.packet_type = ProtoField.new("Packet Type", "coinbase.deribit.marketdataapi.sbe.v1.0.packettype", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.price = ProtoField.new("Price", "coinbase.deribit.marketdataapi.sbe.v1.0.price", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.quantity_exponent = ProtoField.new("Quantity Exponent", "coinbase.deribit.marketdataapi.sbe.v1.0.quantityexponent", ftypes.INT8)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.quantity_mantissa = ProtoField.new("Quantity Mantissa", "coinbase.deribit.marketdataapi.sbe.v1.0.quantitymantissa", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.quote_currency = ProtoField.new("Quote Currency", "coinbase.deribit.marketdataapi.sbe.v1.0.quotecurrency", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reason = ProtoField.new("Reason", "coinbase.deribit.marketdataapi.sbe.v1.0.reason", ftypes.INT8)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reserved_29 = ProtoField.new("Reserved 29", "coinbase.deribit.marketdataapi.sbe.v1.0.reserved29", ftypes.UINT32, nil, base.DEC, 0xFFFFFFF8)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reserved_30 = ProtoField.new("Reserved 30", "coinbase.deribit.marketdataapi.sbe.v1.0.reserved30", ftypes.UINT32, nil, base.DEC, 0xFFFFFFFC)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "coinbase.deribit.marketdataapi.sbe.v1.0.reservedbits", ftypes.UINT16, nil, base.DEC, 0xFFF8)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.retransmit = ProtoField.new("Retransmit", "coinbase.deribit.marketdataapi.sbe.v1.0.retransmit", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.retry_delay_nanos = ProtoField.new("Retry Delay Nanos", "coinbase.deribit.marketdataapi.sbe.v1.0.retrydelaynanos", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.schema_version = ProtoField.new("Schema Version", "coinbase.deribit.marketdataapi.sbe.v1.0.schemaversion", ftypes.UINT16)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.sending_time = ProtoField.new("Sending Time", "coinbase.deribit.marketdataapi.sbe.v1.0.sendingtime", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.seq_num = ProtoField.new("Seq Num", "coinbase.deribit.marketdataapi.sbe.v1.0.seqnum", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.settlement_price = ProtoField.new("Settlement Price", "coinbase.deribit.marketdataapi.sbe.v1.0.settlementprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.snapshot = ProtoField.new("Snapshot", "coinbase.deribit.marketdataapi.sbe.v1.0.snapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.start_of_transaction = ProtoField.new("Start Of Transaction", "coinbase.deribit.marketdataapi.sbe.v1.0.startoftransaction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.status = ProtoField.new("Status", "coinbase.deribit.marketdataapi.sbe.v1.0.status", ftypes.INT8)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.strike_price = ProtoField.new("Strike Price", "coinbase.deribit.marketdataapi.sbe.v1.0.strikeprice", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.symbol = ProtoField.new("Symbol", "coinbase.deribit.marketdataapi.sbe.v1.0.symbol", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.taker_flags = ProtoField.new("Taker Flags", "coinbase.deribit.marketdataapi.sbe.v1.0.takerflags", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.taker_order_id = ProtoField.new("Taker Order Id", "coinbase.deribit.marketdataapi.sbe.v1.0.takerorderid", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.template_id = ProtoField.new("Template Id", "coinbase.deribit.marketdataapi.sbe.v1.0.templateid", ftypes.UINT16)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.tick_size = ProtoField.new("Tick Size", "coinbase.deribit.marketdataapi.sbe.v1.0.ticksize", ftypes.DOUBLE)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.timestamp = ProtoField.new("Timestamp", "coinbase.deribit.marketdataapi.sbe.v1.0.timestamp", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.total_filled_mantissa = ProtoField.new("Total Filled Mantissa", "coinbase.deribit.marketdataapi.sbe.v1.0.totalfilledmantissa", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.trading_status = ProtoField.new("Trading Status", "coinbase.deribit.marketdataapi.sbe.v1.0.tradingstatus", ftypes.INT8)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.transact_time = ProtoField.new("Transact Time", "coinbase.deribit.marketdataapi.sbe.v1.0.transacttime", ftypes.INT64)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.type = ProtoField.new("Type", "coinbase.deribit.marketdataapi.sbe.v1.0.type", ftypes.INT8)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.week_of_month = ProtoField.new("Week Of Month", "coinbase.deribit.marketdataapi.sbe.v1.0.weekofmonth", ftypes.INT16)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.year = ProtoField.new("Year", "coinbase.deribit.marketdataapi.sbe.v1.0.year", ftypes.INT16)

-- Coinbase Deribit Sbe MarketDataApi 1.0 Application Messages
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.ask_delete_message = ProtoField.new("Ask Delete Message", "coinbase.deribit.marketdataapi.sbe.v1.0.askdeletemessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.ask_put_message = ProtoField.new("Ask Put Message", "coinbase.deribit.marketdataapi.sbe.v1.0.askputmessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.ask_qty_reduced_message = ProtoField.new("Ask Qty Reduced Message", "coinbase.deribit.marketdataapi.sbe.v1.0.askqtyreducedmessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.bid_delete_message = ProtoField.new("Bid Delete Message", "coinbase.deribit.marketdataapi.sbe.v1.0.biddeletemessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.bid_put_message = ProtoField.new("Bid Put Message", "coinbase.deribit.marketdataapi.sbe.v1.0.bidputmessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.bid_qty_reduced_message = ProtoField.new("Bid Qty Reduced Message", "coinbase.deribit.marketdataapi.sbe.v1.0.bidqtyreducedmessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.block_trade_message = ProtoField.new("Block Trade Message", "coinbase.deribit.marketdataapi.sbe.v1.0.blocktrademessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.end_of_cycle_message = ProtoField.new("End Of Cycle Message", "coinbase.deribit.marketdataapi.sbe.v1.0.endofcyclemessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.instrument_info_message = ProtoField.new("Instrument Info Message", "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentinfomessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.instrument_message = ProtoField.new("Instrument Message", "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentmessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.instrument_ref_message = ProtoField.new("Instrument Ref Message", "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentrefmessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.retransmit_reject_message = ProtoField.new("Retransmit Reject Message", "coinbase.deribit.marketdataapi.sbe.v1.0.retransmitrejectmessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.retransmit_request_message = ProtoField.new("Retransmit Request Message", "coinbase.deribit.marketdataapi.sbe.v1.0.retransmitrequestmessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.snapshot_header_message = ProtoField.new("Snapshot Header Message", "coinbase.deribit.marketdataapi.sbe.v1.0.snapshotheadermessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.snapshot_trailer_message = ProtoField.new("Snapshot Trailer Message", "coinbase.deribit.marketdataapi.sbe.v1.0.snapshottrailermessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.trade_message = ProtoField.new("Trade Message", "coinbase.deribit.marketdataapi.sbe.v1.0.trademessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.trade_summary_message = ProtoField.new("Trade Summary Message", "coinbase.deribit.marketdataapi.sbe.v1.0.tradesummarymessage", ftypes.STRING)
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.trading_status_update_message = ProtoField.new("Trading Status Update Message", "coinbase.deribit.marketdataapi.sbe.v1.0.tradingstatusupdatemessage", ftypes.STRING)

-- Coinbase Deribit MarketDataApi Sbe 1.0 generated fields
omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.md_message_index = ProtoField.new("Md Message Index", "coinbase.deribit.marketdataapi.sbe.v1.0.mdmessageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Coinbase Deribit MarketDataApi Sbe 1.0 Element Dissection Options
show.application_messages = true
show.flags = true
show.logical_expiry = true
show.maker_flags = true
show.md_message = true
show.md_message_header = true
show.message_flags = true
show.packet = true
show.packet_header = true
show.packet_type = true
show.taker_flags = true
show.md_message_index = true

-- Register Coinbase Deribit MarketDataApi Sbe 1.0 Show Options
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_flags = Pref.bool("Show Flags", show.flags, "Parse and add Flags to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_logical_expiry = Pref.bool("Show Logical Expiry", show.logical_expiry, "Parse and add Logical Expiry to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_maker_flags = Pref.bool("Show Maker Flags", show.maker_flags, "Parse and add Maker Flags to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_md_message = Pref.bool("Show Md Message", show.md_message, "Parse and add Md Message to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_md_message_header = Pref.bool("Show Md Message Header", show.md_message_header, "Parse and add Md Message Header to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_message_flags = Pref.bool("Show Message Flags", show.message_flags, "Parse and add Message Flags to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_packet_type = Pref.bool("Show Packet Type", show.packet_type, "Parse and add Packet Type to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_taker_flags = Pref.bool("Show Taker Flags", show.taker_flags, "Parse and add Taker Flags to protocol tree")
omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_md_message_index = Pref.bool("Show Md Message Index", show.md_message_index, "Show generated md message index in protocol tree")

-- Handle changed preferences
function omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_application_messages then
    show.application_messages = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_application_messages
  end
  if show.flags ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_flags then
    show.flags = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_flags
  end
  if show.logical_expiry ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_logical_expiry then
    show.logical_expiry = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_logical_expiry
  end
  if show.maker_flags ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_maker_flags then
    show.maker_flags = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_maker_flags
  end
  if show.md_message ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_md_message then
    show.md_message = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_md_message
  end
  if show.md_message_header ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_md_message_header then
    show.md_message_header = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_md_message_header
  end
  if show.message_flags ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_message_flags then
    show.message_flags = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_message_flags
  end
  if show.packet ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_packet then
    show.packet = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_packet
  end
  if show.packet_header ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_packet_header then
    show.packet_header = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_packet_header
  end
  if show.packet_type ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_packet_type then
    show.packet_type = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_packet_type
  end
  if show.taker_flags ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_taker_flags then
    show.taker_flags = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_taker_flags
  end
  if show.md_message_index ~= omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_md_message_index then
    show.md_message_index = omi_coinbase_deribit_marketdataapi_sbe_v1_0.prefs.show_md_message_index
  end
end


-----------------------------------------------------------------------
-- Coinbase Deribit MarketDataApi Sbe 1.0 Fields
-----------------------------------------------------------------------

-- Active Instrument Count
coinbase_deribit_marketdataapi_sbe_v1_0.active_instrument_count = {}

-- Size: Active Instrument Count
coinbase_deribit_marketdataapi_sbe_v1_0.active_instrument_count.size = 4

-- Display: Active Instrument Count
coinbase_deribit_marketdataapi_sbe_v1_0.active_instrument_count.display = function(value)
  return "Active Instrument Count: "..value
end

-- Dissect: Active Instrument Count
coinbase_deribit_marketdataapi_sbe_v1_0.active_instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.active_instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.active_instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.active_instrument_count, range, value, display)

  return offset + length, value
end

-- Base Currency
coinbase_deribit_marketdataapi_sbe_v1_0.base_currency = {}

-- Size: Base Currency
coinbase_deribit_marketdataapi_sbe_v1_0.base_currency.size = 8

-- Display: Base Currency
coinbase_deribit_marketdataapi_sbe_v1_0.base_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Base Currency: No Value"
  end

  return "Base Currency: "..value
end

-- Dissect: Base Currency
coinbase_deribit_marketdataapi_sbe_v1_0.base_currency.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.base_currency.size
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

  local display = coinbase_deribit_marketdataapi_sbe_v1_0.base_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.base_currency, range, value, display)

  return offset + length, value
end

-- Base Increment
coinbase_deribit_marketdataapi_sbe_v1_0.base_increment = {}

-- Size: Base Increment
coinbase_deribit_marketdataapi_sbe_v1_0.base_increment.size = 8

-- Display: Base Increment
coinbase_deribit_marketdataapi_sbe_v1_0.base_increment.display = function(value)
  return "Base Increment: "..value
end

-- Translate: Base Increment
coinbase_deribit_marketdataapi_sbe_v1_0.base_increment.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Base Increment
coinbase_deribit_marketdataapi_sbe_v1_0.base_increment.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.base_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.base_increment.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.base_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.base_increment, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.begin_seq_num = {}

-- Size: Begin Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.begin_seq_num.size = 8

-- Display: Begin Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Block Rfq Id
coinbase_deribit_marketdataapi_sbe_v1_0.block_rfq_id = {}

-- Size: Block Rfq Id
coinbase_deribit_marketdataapi_sbe_v1_0.block_rfq_id.size = 8

-- Display: Block Rfq Id
coinbase_deribit_marketdataapi_sbe_v1_0.block_rfq_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Block Rfq Id: No Value"
  end

  return "Block Rfq Id: "..value
end

-- Dissect: Block Rfq Id
coinbase_deribit_marketdataapi_sbe_v1_0.block_rfq_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.block_rfq_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.block_rfq_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.block_rfq_id, range, value, display)

  return offset + length, value
end

-- Block Trade Id
coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_id = {}

-- Size: Block Trade Id
coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_id.size = 8

-- Display: Block Trade Id
coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_id.display = function(value)
  return "Block Trade Id: "..value
end

-- Dissect: Block Trade Id
coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.block_trade_id, range, value, display)

  return offset + length, value
end

-- Channel Id
coinbase_deribit_marketdataapi_sbe_v1_0.channel_id = {}

-- Size: Channel Id
coinbase_deribit_marketdataapi_sbe_v1_0.channel_id.size = 4

-- Display: Channel Id
coinbase_deribit_marketdataapi_sbe_v1_0.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
coinbase_deribit_marketdataapi_sbe_v1_0.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Creation Time
coinbase_deribit_marketdataapi_sbe_v1_0.creation_time = {}

-- Size: Creation Time
coinbase_deribit_marketdataapi_sbe_v1_0.creation_time.size = 8

-- Display: Creation Time
coinbase_deribit_marketdataapi_sbe_v1_0.creation_time.display = function(value)
  -- Check null value
  if value == Int64(0x00000000, 0x80000000) then
    return "Creation Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Creation Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Creation Time
coinbase_deribit_marketdataapi_sbe_v1_0.creation_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.creation_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.creation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.creation_time, range, value, display)

  return offset + length, value
end

-- Current Funding
coinbase_deribit_marketdataapi_sbe_v1_0.current_funding = {}

-- Size: Current Funding
coinbase_deribit_marketdataapi_sbe_v1_0.current_funding.size = 8

-- Display: Current Funding
coinbase_deribit_marketdataapi_sbe_v1_0.current_funding.display = function(value)
  return "Current Funding: "..value
end

-- Dissect: Current Funding
coinbase_deribit_marketdataapi_sbe_v1_0.current_funding.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.current_funding.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.current_funding.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.current_funding, range, value, display)

  return offset + length, value
end

-- Day Of Month
coinbase_deribit_marketdataapi_sbe_v1_0.day_of_month = {}

-- Size: Day Of Month
coinbase_deribit_marketdataapi_sbe_v1_0.day_of_month.size = 2

-- Display: Day Of Month
coinbase_deribit_marketdataapi_sbe_v1_0.day_of_month.display = function(value)
  return "Day Of Month: "..value
end

-- Dissect: Day Of Month
coinbase_deribit_marketdataapi_sbe_v1_0.day_of_month.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.day_of_month.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.day_of_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.day_of_month, range, value, display)

  return offset + length, value
end

-- Deepest Price
coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price = {}

-- Size: Deepest Price
coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price.size = 8

-- Display: Deepest Price
coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price.display = function(value)
  return "Deepest Price: "..value
end

-- Translate: Deepest Price
coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Deepest Price
coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.deepest_price, range, value, display)

  return offset + length, value
end

-- Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price = {}

-- Size: Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price.size = 8

-- Display: Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Delivery Price: No Value"
  end

  return "Delivery Price: "..value
end

-- Translate: Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.delivery_price, range, value, display)

  return offset + length, value
end

-- Details
coinbase_deribit_marketdataapi_sbe_v1_0.details = {}

-- Size: Details
coinbase_deribit_marketdataapi_sbe_v1_0.details.size = 40

-- Display: Details
coinbase_deribit_marketdataapi_sbe_v1_0.details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Details: No Value"
  end

  return "Details: "..value
end

-- Dissect: Details
coinbase_deribit_marketdataapi_sbe_v1_0.details.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.details.size
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

  local display = coinbase_deribit_marketdataapi_sbe_v1_0.details.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.details, range, value, display)

  return offset + length, value
end

-- Estimated Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price = {}

-- Size: Estimated Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price.size = 8

-- Display: Estimated Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Estimated Delivery Price: No Value"
  end

  return "Estimated Delivery Price: "..value
end

-- Translate: Estimated Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Estimated Delivery Price
coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.estimated_delivery_price, range, value, display)

  return offset + length, value
end

-- Expiry Time
coinbase_deribit_marketdataapi_sbe_v1_0.expiry_time = {}

-- Size: Expiry Time
coinbase_deribit_marketdataapi_sbe_v1_0.expiry_time.size = 8

-- Display: Expiry Time
coinbase_deribit_marketdataapi_sbe_v1_0.expiry_time.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Expiry Time: No Value"
  end

  return "Expiry Time: "..value
end

-- Dissect: Expiry Time
coinbase_deribit_marketdataapi_sbe_v1_0.expiry_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.expiry_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.expiry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.expiry_time, range, value, display)

  return offset + length, value
end

-- Fill Price
coinbase_deribit_marketdataapi_sbe_v1_0.fill_price = {}

-- Size: Fill Price
coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.size = 8

-- Display: Fill Price
coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Fill Price
coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Qty Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa = {}

-- Size: Fill Qty Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa.size = 8

-- Display: Fill Qty Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa.display = function(value)
  return "Fill Qty Mantissa: "..value
end

-- Dissect: Fill Qty Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.fill_qty_mantissa, range, value, display)

  return offset + length, value
end

-- Funding 8h
coinbase_deribit_marketdataapi_sbe_v1_0.funding_8h = {}

-- Size: Funding 8h
coinbase_deribit_marketdataapi_sbe_v1_0.funding_8h.size = 8

-- Display: Funding 8h
coinbase_deribit_marketdataapi_sbe_v1_0.funding_8h.display = function(value)
  return "Funding 8h: "..value
end

-- Dissect: Funding 8h
coinbase_deribit_marketdataapi_sbe_v1_0.funding_8h.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.funding_8h.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.funding_8h.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.funding_8h, range, value, display)

  return offset + length, value
end

-- Implied Volatility
coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility = {}

-- Size: Implied Volatility
coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility.size = 8

-- Display: Implied Volatility
coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility.display = function(value)
  return "Implied Volatility: "..value
end

-- Dissect: Implied Volatility
coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.implied_volatility, range, value, display)

  return offset + length, value
end

-- Increment Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.increment_seq_num = {}

-- Size: Increment Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.increment_seq_num.size = 8

-- Display: Increment Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.increment_seq_num.display = function(value)
  return "Increment Seq Num: "..value
end

-- Dissect: Increment Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.increment_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.increment_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.increment_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.increment_seq_num, range, value, display)

  return offset + length, value
end

-- Incremental Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.incremental_seq_num = {}

-- Size: Incremental Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.incremental_seq_num.size = 8

-- Display: Incremental Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.incremental_seq_num.display = function(value)
  return "Incremental Seq Num: "..value
end

-- Dissect: Incremental Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.incremental_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.incremental_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.incremental_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.incremental_seq_num, range, value, display)

  return offset + length, value
end

-- Incremental Timestamp
coinbase_deribit_marketdataapi_sbe_v1_0.incremental_timestamp = {}

-- Size: Incremental Timestamp
coinbase_deribit_marketdataapi_sbe_v1_0.incremental_timestamp.size = 8

-- Display: Incremental Timestamp
coinbase_deribit_marketdataapi_sbe_v1_0.incremental_timestamp.display = function(value)
  return "Incremental Timestamp: "..value
end

-- Dissect: Incremental Timestamp
coinbase_deribit_marketdataapi_sbe_v1_0.incremental_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.incremental_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.incremental_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.incremental_timestamp, range, value, display)

  return offset + length, value
end

-- Index Price
coinbase_deribit_marketdataapi_sbe_v1_0.index_price = {}

-- Size: Index Price
coinbase_deribit_marketdataapi_sbe_v1_0.index_price.size = 8

-- Display: Index Price
coinbase_deribit_marketdataapi_sbe_v1_0.index_price.display = function(value)
  return "Index Price: "..value
end

-- Translate: Index Price
coinbase_deribit_marketdataapi_sbe_v1_0.index_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Index Price
coinbase_deribit_marketdataapi_sbe_v1_0.index_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.index_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.index_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.index_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.index_price, range, value, display)

  return offset + length, value
end

-- Instrument Id
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id = {}

-- Size: Instrument Id
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size = 8

-- Display: Instrument Id
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Large Tick Size 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0 = {}

-- Size: Large Tick Size 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0.size = 8

-- Display: Large Tick Size 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Large Tick Size 0: No Value"
  end

  return "Large Tick Size 0: "..value
end

-- Translate: Large Tick Size 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Large Tick Size 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.large_tick_size_0, range, value, display)

  return offset + length, value
end

-- Large Tick Size 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1 = {}

-- Size: Large Tick Size 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1.size = 8

-- Display: Large Tick Size 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Large Tick Size 1: No Value"
  end

  return "Large Tick Size 1: "..value
end

-- Translate: Large Tick Size 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Large Tick Size 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.large_tick_size_1, range, value, display)

  return offset + length, value
end

-- Large Tick Threshold 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0 = {}

-- Size: Large Tick Threshold 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0.size = 8

-- Display: Large Tick Threshold 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Large Tick Threshold 0: No Value"
  end

  return "Large Tick Threshold 0: "..value
end

-- Translate: Large Tick Threshold 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Large Tick Threshold 0
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.large_tick_threshold_0, range, value, display)

  return offset + length, value
end

-- Large Tick Threshold 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1 = {}

-- Size: Large Tick Threshold 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1.size = 8

-- Display: Large Tick Threshold 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Large Tick Threshold 1: No Value"
  end

  return "Large Tick Threshold 1: "..value
end

-- Translate: Large Tick Threshold 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Large Tick Threshold 1
coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.large_tick_threshold_1, range, value, display)

  return offset + length, value
end

-- Maker Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.maker_order_id = {}

-- Size: Maker Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.maker_order_id.size = 8

-- Display: Maker Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.maker_order_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Maker Order Id: No Value"
  end

  return "Maker Order Id: "..value
end

-- Dissect: Maker Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.maker_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.maker_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.maker_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.maker_order_id, range, value, display)

  return offset + length, value
end

-- Mark Price
coinbase_deribit_marketdataapi_sbe_v1_0.mark_price = {}

-- Size: Mark Price
coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.size = 8

-- Display: Mark Price
coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.display = function(value)
  return "Mark Price: "..value
end

-- Translate: Mark Price
coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Mark Price
coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.mark_price, range, value, display)

  return offset + length, value
end

-- Match Id
coinbase_deribit_marketdataapi_sbe_v1_0.match_id = {}

-- Size: Match Id
coinbase_deribit_marketdataapi_sbe_v1_0.match_id.size = 8

-- Display: Match Id
coinbase_deribit_marketdataapi_sbe_v1_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
coinbase_deribit_marketdataapi_sbe_v1_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.match_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Max Buy Price
coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price = {}

-- Size: Max Buy Price
coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price.size = 8

-- Display: Max Buy Price
coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price.display = function(value)
  return "Max Buy Price: "..value
end

-- Translate: Max Buy Price
coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Max Buy Price
coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.max_buy_price, range, value, display)

  return offset + length, value
end

-- Message Count
coinbase_deribit_marketdataapi_sbe_v1_0.message_count = {}

-- Size: Message Count
coinbase_deribit_marketdataapi_sbe_v1_0.message_count.size = 2

-- Display: Message Count
coinbase_deribit_marketdataapi_sbe_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
coinbase_deribit_marketdataapi_sbe_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Count uint 8
coinbase_deribit_marketdataapi_sbe_v1_0.message_count_uint_8 = {}

-- Size: Message Count uint 8
coinbase_deribit_marketdataapi_sbe_v1_0.message_count_uint_8.size = 1

-- Display: Message Count uint 8
coinbase_deribit_marketdataapi_sbe_v1_0.message_count_uint_8.display = function(value)
  return "Message Count uint 8: "..value
end

-- Dissect: Message Count uint 8
coinbase_deribit_marketdataapi_sbe_v1_0.message_count_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.message_count_uint_8.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.message_count_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.message_count_uint_8, range, value, display)

  return offset + length, value
end

-- Message Length
coinbase_deribit_marketdataapi_sbe_v1_0.message_length = {}

-- Size: Message Length
coinbase_deribit_marketdataapi_sbe_v1_0.message_length.size = 2

-- Display: Message Length
coinbase_deribit_marketdataapi_sbe_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
coinbase_deribit_marketdataapi_sbe_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Sell Price
coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price = {}

-- Size: Min Sell Price
coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price.size = 8

-- Display: Min Sell Price
coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price.display = function(value)
  return "Min Sell Price: "..value
end

-- Translate: Min Sell Price
coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Min Sell Price
coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.min_sell_price, range, value, display)

  return offset + length, value
end

-- Month
coinbase_deribit_marketdataapi_sbe_v1_0.month = {}

-- Size: Month
coinbase_deribit_marketdataapi_sbe_v1_0.month.size = 2

-- Display: Month
coinbase_deribit_marketdataapi_sbe_v1_0.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
coinbase_deribit_marketdataapi_sbe_v1_0.month.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.month.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.month, range, value, display)

  return offset + length, value
end

-- Name
coinbase_deribit_marketdataapi_sbe_v1_0.name = {}

-- Size: Name
coinbase_deribit_marketdataapi_sbe_v1_0.name.size = 128

-- Display: Name
coinbase_deribit_marketdataapi_sbe_v1_0.name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Name: No Value"
  end

  return "Name: "..value
end

-- Dissect: Name
coinbase_deribit_marketdataapi_sbe_v1_0.name.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.name.size
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

  local display = coinbase_deribit_marketdataapi_sbe_v1_0.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.name, range, value, display)

  return offset + length, value
end

-- Number Of Legs
coinbase_deribit_marketdataapi_sbe_v1_0.number_of_legs = {}

-- Size: Number Of Legs
coinbase_deribit_marketdataapi_sbe_v1_0.number_of_legs.size = 2

-- Display: Number Of Legs
coinbase_deribit_marketdataapi_sbe_v1_0.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
coinbase_deribit_marketdataapi_sbe_v1_0.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.order_id = {}

-- Size: Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.order_id.size = 8

-- Display: Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Price
coinbase_deribit_marketdataapi_sbe_v1_0.price = {}

-- Size: Price
coinbase_deribit_marketdataapi_sbe_v1_0.price.size = 8

-- Display: Price
coinbase_deribit_marketdataapi_sbe_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
coinbase_deribit_marketdataapi_sbe_v1_0.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
coinbase_deribit_marketdataapi_sbe_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity Exponent
coinbase_deribit_marketdataapi_sbe_v1_0.quantity_exponent = {}

-- Size: Quantity Exponent
coinbase_deribit_marketdataapi_sbe_v1_0.quantity_exponent.size = 1

-- Display: Quantity Exponent
coinbase_deribit_marketdataapi_sbe_v1_0.quantity_exponent.display = function(value)
  return "Quantity Exponent: "..value
end

-- Dissect: Quantity Exponent
coinbase_deribit_marketdataapi_sbe_v1_0.quantity_exponent.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.quantity_exponent.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.quantity_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.quantity_exponent, range, value, display)

  return offset + length, value
end

-- Quantity Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa = {}

-- Size: Quantity Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.size = 8

-- Display: Quantity Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.display = function(value)
  return "Quantity Mantissa: "..value
end

-- Dissect: Quantity Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.quantity_mantissa, range, value, display)

  return offset + length, value
end

-- Quote Currency
coinbase_deribit_marketdataapi_sbe_v1_0.quote_currency = {}

-- Size: Quote Currency
coinbase_deribit_marketdataapi_sbe_v1_0.quote_currency.size = 8

-- Display: Quote Currency
coinbase_deribit_marketdataapi_sbe_v1_0.quote_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Currency: No Value"
  end

  return "Quote Currency: "..value
end

-- Dissect: Quote Currency
coinbase_deribit_marketdataapi_sbe_v1_0.quote_currency.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.quote_currency.size
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

  local display = coinbase_deribit_marketdataapi_sbe_v1_0.quote_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.quote_currency, range, value, display)

  return offset + length, value
end

-- Reason
coinbase_deribit_marketdataapi_sbe_v1_0.reason = {}

-- Size: Reason
coinbase_deribit_marketdataapi_sbe_v1_0.reason.size = 1

-- Display: Reason
coinbase_deribit_marketdataapi_sbe_v1_0.reason.display = function(value)
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
coinbase_deribit_marketdataapi_sbe_v1_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Retry Delay Nanos
coinbase_deribit_marketdataapi_sbe_v1_0.retry_delay_nanos = {}

-- Size: Retry Delay Nanos
coinbase_deribit_marketdataapi_sbe_v1_0.retry_delay_nanos.size = 8

-- Display: Retry Delay Nanos
coinbase_deribit_marketdataapi_sbe_v1_0.retry_delay_nanos.display = function(value)
  return "Retry Delay Nanos: "..value
end

-- Dissect: Retry Delay Nanos
coinbase_deribit_marketdataapi_sbe_v1_0.retry_delay_nanos.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.retry_delay_nanos.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.retry_delay_nanos.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.retry_delay_nanos, range, value, display)

  return offset + length, value
end

-- Schema Version
coinbase_deribit_marketdataapi_sbe_v1_0.schema_version = {}

-- Size: Schema Version
coinbase_deribit_marketdataapi_sbe_v1_0.schema_version.size = 2

-- Display: Schema Version
coinbase_deribit_marketdataapi_sbe_v1_0.schema_version.display = function(value)
  return "Schema Version: "..value
end

-- Dissect: Schema Version
coinbase_deribit_marketdataapi_sbe_v1_0.schema_version.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.schema_version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.schema_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.schema_version, range, value, display)

  return offset + length, value
end

-- Sending Time
coinbase_deribit_marketdataapi_sbe_v1_0.sending_time = {}

-- Size: Sending Time
coinbase_deribit_marketdataapi_sbe_v1_0.sending_time.size = 8

-- Display: Sending Time
coinbase_deribit_marketdataapi_sbe_v1_0.sending_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sending Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
coinbase_deribit_marketdataapi_sbe_v1_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.seq_num = {}

-- Size: Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.seq_num.size = 8

-- Display: Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
coinbase_deribit_marketdataapi_sbe_v1_0.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Settlement Price
coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price = {}

-- Size: Settlement Price
coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price.size = 8

-- Display: Settlement Price
coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Settlement Price: No Value"
  end

  return "Settlement Price: "..value
end

-- Translate: Settlement Price
coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Settlement Price
coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Status
coinbase_deribit_marketdataapi_sbe_v1_0.status = {}

-- Size: Status
coinbase_deribit_marketdataapi_sbe_v1_0.status.size = 1

-- Display: Status
coinbase_deribit_marketdataapi_sbe_v1_0.status.display = function(value)
  if value == 0 then
    return "Status: Open (0)"
  end
  if value == 1 then
    return "Status: Inactive (1)"
  end
  if value == 2 then
    return "Status: Settlement (2)"
  end
  if value == 3 then
    return "Status: Delivered (3)"
  end
  if value == 4 then
    return "Status: Locked (4)"
  end
  if value == 5 then
    return "Status: Halted (5)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
coinbase_deribit_marketdataapi_sbe_v1_0.status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
coinbase_deribit_marketdataapi_sbe_v1_0.strike_price = {}

-- Size: Strike Price
coinbase_deribit_marketdataapi_sbe_v1_0.strike_price.size = 8

-- Display: Strike Price
coinbase_deribit_marketdataapi_sbe_v1_0.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
coinbase_deribit_marketdataapi_sbe_v1_0.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Strike Price
coinbase_deribit_marketdataapi_sbe_v1_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.strike_price.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
coinbase_deribit_marketdataapi_sbe_v1_0.symbol = {}

-- Size: Symbol
coinbase_deribit_marketdataapi_sbe_v1_0.symbol.size = 64

-- Display: Symbol
coinbase_deribit_marketdataapi_sbe_v1_0.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
coinbase_deribit_marketdataapi_sbe_v1_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.symbol.size
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

  local display = coinbase_deribit_marketdataapi_sbe_v1_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Taker Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.taker_order_id = {}

-- Size: Taker Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.taker_order_id.size = 8

-- Display: Taker Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.taker_order_id.display = function(value)
  return "Taker Order Id: "..value
end

-- Dissect: Taker Order Id
coinbase_deribit_marketdataapi_sbe_v1_0.taker_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.taker_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.taker_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.taker_order_id, range, value, display)

  return offset + length, value
end

-- Template Id
coinbase_deribit_marketdataapi_sbe_v1_0.template_id = {}

-- Size: Template Id
coinbase_deribit_marketdataapi_sbe_v1_0.template_id.size = 2

-- Display: Template Id
coinbase_deribit_marketdataapi_sbe_v1_0.template_id.display = function(value)
  if value == 10 then
    return "Template Id: Instrument Message (10)"
  end
  if value == 12 then
    return "Template Id: Trading Status Update Message (12)"
  end
  if value == 13 then
    return "Template Id: Instrument Info Message (13)"
  end
  if value == 14 then
    return "Template Id: Instrument Ref Message (14)"
  end
  if value == 20 then
    return "Template Id: Bid Put Message (20)"
  end
  if value == 21 then
    return "Template Id: Ask Put Message (21)"
  end
  if value == 22 then
    return "Template Id: Bid Qty Reduced Message (22)"
  end
  if value == 23 then
    return "Template Id: Ask Qty Reduced Message (23)"
  end
  if value == 24 then
    return "Template Id: Bid Delete Message (24)"
  end
  if value == 25 then
    return "Template Id: Ask Delete Message (25)"
  end
  if value == 30 then
    return "Template Id: Trade Summary Message (30)"
  end
  if value == 31 then
    return "Template Id: Trade Message (31)"
  end
  if value == 33 then
    return "Template Id: Block Trade Message (33)"
  end
  if value == 100 then
    return "Template Id: Snapshot Header Message (100)"
  end
  if value == 101 then
    return "Template Id: Snapshot Trailer Message (101)"
  end
  if value == 119 then
    return "Template Id: End Of Cycle Message (119)"
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
coinbase_deribit_marketdataapi_sbe_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Tick Size
coinbase_deribit_marketdataapi_sbe_v1_0.tick_size = {}

-- Size: Tick Size
coinbase_deribit_marketdataapi_sbe_v1_0.tick_size.size = 8

-- Display: Tick Size
coinbase_deribit_marketdataapi_sbe_v1_0.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Translate: Tick Size
coinbase_deribit_marketdataapi_sbe_v1_0.tick_size.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Tick Size
coinbase_deribit_marketdataapi_sbe_v1_0.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.tick_size.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_marketdataapi_sbe_v1_0.tick_size.translate(raw)
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Timestamp
coinbase_deribit_marketdataapi_sbe_v1_0.timestamp = {}

-- Size: Timestamp
coinbase_deribit_marketdataapi_sbe_v1_0.timestamp.size = 8

-- Display: Timestamp
coinbase_deribit_marketdataapi_sbe_v1_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
coinbase_deribit_marketdataapi_sbe_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Filled Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.total_filled_mantissa = {}

-- Size: Total Filled Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.total_filled_mantissa.size = 8

-- Display: Total Filled Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.total_filled_mantissa.display = function(value)
  return "Total Filled Mantissa: "..value
end

-- Dissect: Total Filled Mantissa
coinbase_deribit_marketdataapi_sbe_v1_0.total_filled_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.total_filled_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.total_filled_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.total_filled_mantissa, range, value, display)

  return offset + length, value
end

-- Trading Status
coinbase_deribit_marketdataapi_sbe_v1_0.trading_status = {}

-- Size: Trading Status
coinbase_deribit_marketdataapi_sbe_v1_0.trading_status.size = 1

-- Display: Trading Status
coinbase_deribit_marketdataapi_sbe_v1_0.trading_status.display = function(value)
  if value == 0 then
    return "Trading Status: Open (0)"
  end
  if value == 1 then
    return "Trading Status: Inactive (1)"
  end
  if value == 2 then
    return "Trading Status: Settlement (2)"
  end
  if value == 3 then
    return "Trading Status: Delivered (3)"
  end
  if value == 4 then
    return "Trading Status: Locked (4)"
  end
  if value == 5 then
    return "Trading Status: Halted (5)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
coinbase_deribit_marketdataapi_sbe_v1_0.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transact Time
coinbase_deribit_marketdataapi_sbe_v1_0.transact_time = {}

-- Size: Transact Time
coinbase_deribit_marketdataapi_sbe_v1_0.transact_time.size = 8

-- Display: Transact Time
coinbase_deribit_marketdataapi_sbe_v1_0.transact_time.display = function(value)
  -- Check null value
  if value == Int64(0x00000000, 0x00000000) then
    return "Transact Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transact Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
coinbase_deribit_marketdataapi_sbe_v1_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Type
coinbase_deribit_marketdataapi_sbe_v1_0.type = {}

-- Size: Type
coinbase_deribit_marketdataapi_sbe_v1_0.type.size = 1

-- Display: Type
coinbase_deribit_marketdataapi_sbe_v1_0.type.display = function(value)
  if value == 0 then
    return "Type: Perp Future (0)"
  end
  if value == 1 then
    return "Type: Option (1)"
  end
  if value == 2 then
    return "Type: Spot (2)"
  end
  if value == 3 then
    return "Type: Future Combo (3)"
  end
  if value == 4 then
    return "Type: Option Combo (4)"
  end
  if value == 5 then
    return "Type: Dated Future (5)"
  end

  return "Type: Unknown("..value..")"
end

-- Dissect: Type
coinbase_deribit_marketdataapi_sbe_v1_0.type.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.type, range, value, display)

  return offset + length, value
end

-- Week Of Month
coinbase_deribit_marketdataapi_sbe_v1_0.week_of_month = {}

-- Size: Week Of Month
coinbase_deribit_marketdataapi_sbe_v1_0.week_of_month.size = 2

-- Display: Week Of Month
coinbase_deribit_marketdataapi_sbe_v1_0.week_of_month.display = function(value)
  return "Week Of Month: "..value
end

-- Dissect: Week Of Month
coinbase_deribit_marketdataapi_sbe_v1_0.week_of_month.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.week_of_month.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.week_of_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.week_of_month, range, value, display)

  return offset + length, value
end

-- Year
coinbase_deribit_marketdataapi_sbe_v1_0.year = {}

-- Size: Year
coinbase_deribit_marketdataapi_sbe_v1_0.year.size = 2

-- Display: Year
coinbase_deribit_marketdataapi_sbe_v1_0.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
coinbase_deribit_marketdataapi_sbe_v1_0.year.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_marketdataapi_sbe_v1_0.year.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.year, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Coinbase Deribit MarketDataApi Sbe 1.0
-----------------------------------------------------------------------

-- Retransmit Reject Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_reject_message = {}

-- Size: Retransmit Reject Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_reject_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.retry_delay_nanos.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.details.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.reason.size

-- Display: Retransmit Reject Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Reject Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retry Delay Nanos: int64
  index, retry_delay_nanos = coinbase_deribit_marketdataapi_sbe_v1_0.retry_delay_nanos.dissect(buffer, index, packet, parent)

  -- Details: char40
  index, details = coinbase_deribit_marketdataapi_sbe_v1_0.details.dissect(buffer, index, packet, parent)

  -- Reason: RetransmitRejectReason
  index, reason = coinbase_deribit_marketdataapi_sbe_v1_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.retransmit_reject_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Request Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_request_message = {}

-- Size: Retransmit Request Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_request_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.begin_seq_num.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.message_count_uint_8.size

-- Display: Retransmit Request Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: int64
  index, begin_seq_num = coinbase_deribit_marketdataapi_sbe_v1_0.begin_seq_num.dissect(buffer, index, packet, parent)

  -- Message Count uint 8: uint8
  index, message_count_uint_8 = coinbase_deribit_marketdataapi_sbe_v1_0.message_count_uint_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request Message
coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.retransmit_request_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_request_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Cycle Message
coinbase_deribit_marketdataapi_sbe_v1_0.end_of_cycle_message = {}

-- Size: End Of Cycle Message
coinbase_deribit_marketdataapi_sbe_v1_0.end_of_cycle_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.active_instrument_count.size

-- Display: End Of Cycle Message
coinbase_deribit_marketdataapi_sbe_v1_0.end_of_cycle_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Cycle Message
coinbase_deribit_marketdataapi_sbe_v1_0.end_of_cycle_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Active Instrument Count: int32
  index, active_instrument_count = coinbase_deribit_marketdataapi_sbe_v1_0.active_instrument_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Cycle Message
coinbase_deribit_marketdataapi_sbe_v1_0.end_of_cycle_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.end_of_cycle_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.end_of_cycle_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.end_of_cycle_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.end_of_cycle_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Trailer Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_trailer_message = {}

-- Size: Snapshot Trailer Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_trailer_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.timestamp.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.increment_seq_num.size

-- Display: Snapshot Trailer Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_trailer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Trailer Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_trailer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_marketdataapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Increment Seq Num: int64
  index, increment_seq_num = coinbase_deribit_marketdataapi_sbe_v1_0.increment_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Trailer Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_trailer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.snapshot_trailer_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_trailer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_trailer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_trailer_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Header Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_header_message = {}

-- Size: Snapshot Header Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_header_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.incremental_timestamp.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.incremental_seq_num.size

-- Display: Snapshot Header Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Header Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Incremental Timestamp: TimestampNanos
  index, incremental_timestamp = coinbase_deribit_marketdataapi_sbe_v1_0.incremental_timestamp.dissect(buffer, index, packet, parent)

  -- Incremental Seq Num: int64
  index, incremental_seq_num = coinbase_deribit_marketdataapi_sbe_v1_0.incremental_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Header Message
coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.snapshot_header_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Taker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags = {}

-- Size: Taker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.size = 4

-- Display: Taker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Sell flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    flags[#flags + 1] = "Is Sell"
  end
  -- Is Is Liquidation flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    flags[#flags + 1] = "Is Liquidation"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Taker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.bits = function(range, value, packet, parent)

  -- Is Sell: 1 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_sell, range, value)

  -- Is Liquidation: 1 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_liquidation, range, value)

  -- Reserved 30: 30 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reserved_30, range, value)
end

-- Dissect: Taker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.taker_flags, range, display)

  if show.taker_flags then
    coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Block Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_message = {}

-- Size: Block Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.block_rfq_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.index_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.number_of_legs.size

-- Display: Block Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Id: int64
  index, match_id = coinbase_deribit_marketdataapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Block Trade Id: int64
  index, block_trade_id = coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_id.dissect(buffer, index, packet, parent)

  -- Block Rfq Id: int64
  index, block_rfq_id = coinbase_deribit_marketdataapi_sbe_v1_0.block_rfq_id.dissect(buffer, index, packet, parent)

  -- Fill Qty Mantissa: QuantityMantissa
  index, fill_qty_mantissa = coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Mark Price: Price9
  index, mark_price = coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.dissect(buffer, index, packet, parent)

  -- Index Price: Price9
  index, index_price = coinbase_deribit_marketdataapi_sbe_v1_0.index_price.dissect(buffer, index, packet, parent)

  -- Implied Volatility: double
  index, implied_volatility = coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility.dissect(buffer, index, packet, parent)

  -- Taker Flags: Struct of 3 fields
  index, taker_flags = coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.dissect(buffer, index, packet, parent)

  -- Number Of Legs: uint16
  index, number_of_legs = coinbase_deribit_marketdataapi_sbe_v1_0.number_of_legs.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.block_trade_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Maker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags = {}

-- Size: Maker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags.size = 4

-- Display: Maker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Sell flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    flags[#flags + 1] = "Is Sell"
  end
  -- Is Is Liquidation flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    flags[#flags + 1] = "Is Liquidation"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Maker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags.bits = function(range, value, packet, parent)

  -- Is Sell: 1 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_sell, range, value)

  -- Is Liquidation: 1 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_liquidation, range, value)

  -- Reserved 30: 30 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reserved_30, range, value)
end

-- Dissect: Maker Flags
coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.maker_flags, range, display)

  if show.maker_flags then
    coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_message = {}

-- Size: Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.maker_order_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags.size

-- Display: Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Id: int64
  index, match_id = coinbase_deribit_marketdataapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Maker Order Id: int64
  index, maker_order_id = coinbase_deribit_marketdataapi_sbe_v1_0.maker_order_id.dissect(buffer, index, packet, parent)

  -- Fill Qty Mantissa: QuantityMantissa
  index, fill_qty_mantissa = coinbase_deribit_marketdataapi_sbe_v1_0.fill_qty_mantissa.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_marketdataapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Maker Flags: Struct of 3 fields
  index, maker_flags = coinbase_deribit_marketdataapi_sbe_v1_0.maker_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.trade_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Summary Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_summary_message = {}

-- Size: Trade Summary Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_summary_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.taker_order_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.total_filled_mantissa.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.index_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.size

-- Display: Trade Summary Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Taker Order Id: int64
  index, taker_order_id = coinbase_deribit_marketdataapi_sbe_v1_0.taker_order_id.dissect(buffer, index, packet, parent)

  -- Total Filled Mantissa: QuantityMantissa
  index, total_filled_mantissa = coinbase_deribit_marketdataapi_sbe_v1_0.total_filled_mantissa.dissect(buffer, index, packet, parent)

  -- Deepest Price: Price9
  index, deepest_price = coinbase_deribit_marketdataapi_sbe_v1_0.deepest_price.dissect(buffer, index, packet, parent)

  -- Mark Price: Price9
  index, mark_price = coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.dissect(buffer, index, packet, parent)

  -- Index Price: Price9
  index, index_price = coinbase_deribit_marketdataapi_sbe_v1_0.index_price.dissect(buffer, index, packet, parent)

  -- Implied Volatility: double
  index, implied_volatility = coinbase_deribit_marketdataapi_sbe_v1_0.implied_volatility.dissect(buffer, index, packet, parent)

  -- Taker Flags: Struct of 3 fields
  index, taker_flags = coinbase_deribit_marketdataapi_sbe_v1_0.taker_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Message
coinbase_deribit_marketdataapi_sbe_v1_0.trade_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.trade_summary_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.trade_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.trade_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.trade_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_delete_message = {}

-- Size: Ask Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_delete_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size

-- Display: Ask Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: int64
  index, order_id = coinbase_deribit_marketdataapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.ask_delete_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.ask_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.ask_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.ask_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_delete_message = {}

-- Size: Bid Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_delete_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size

-- Display: Bid Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: int64
  index, order_id = coinbase_deribit_marketdataapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Delete Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.bid_delete_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.bid_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.bid_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.bid_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_qty_reduced_message = {}

-- Size: Ask Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_qty_reduced_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.size

-- Display: Ask Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_qty_reduced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_qty_reduced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: int64
  index, order_id = coinbase_deribit_marketdataapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Quantity Mantissa: QuantityMantissa
  index, quantity_mantissa = coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_qty_reduced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.ask_qty_reduced_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.ask_qty_reduced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.ask_qty_reduced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.ask_qty_reduced_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_qty_reduced_message = {}

-- Size: Bid Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_qty_reduced_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.size

-- Display: Bid Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_qty_reduced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_qty_reduced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: int64
  index, order_id = coinbase_deribit_marketdataapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Quantity Mantissa: QuantityMantissa
  index, quantity_mantissa = coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Qty Reduced Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_qty_reduced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.bid_qty_reduced_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.bid_qty_reduced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.bid_qty_reduced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.bid_qty_reduced_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_put_message = {}

-- Size: Ask Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_put_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.price.size

-- Display: Ask Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_put_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_put_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: int64
  index, order_id = coinbase_deribit_marketdataapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Quantity Mantissa: QuantityMantissa
  index, quantity_mantissa = coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_marketdataapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.ask_put_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.ask_put_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.ask_put_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.ask_put_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.ask_put_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_put_message = {}

-- Size: Bid Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_put_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.price.size

-- Display: Bid Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_put_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_put_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: int64
  index, order_id = coinbase_deribit_marketdataapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Quantity Mantissa: QuantityMantissa
  index, quantity_mantissa = coinbase_deribit_marketdataapi_sbe_v1_0.quantity_mantissa.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_marketdataapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Put Message
coinbase_deribit_marketdataapi_sbe_v1_0.bid_put_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.bid_put_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.bid_put_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.bid_put_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.bid_put_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Ref Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_ref_message = {}

-- Size: Instrument Ref Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_ref_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.current_funding.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.funding_8h.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price.size

-- Display: Instrument Ref Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_ref_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Ref Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_ref_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Current Funding: double
  index, current_funding = coinbase_deribit_marketdataapi_sbe_v1_0.current_funding.dissect(buffer, index, packet, parent)

  -- Funding 8h: double
  index, funding_8h = coinbase_deribit_marketdataapi_sbe_v1_0.funding_8h.dissect(buffer, index, packet, parent)

  -- Estimated Delivery Price: Price9
  index, estimated_delivery_price = coinbase_deribit_marketdataapi_sbe_v1_0.estimated_delivery_price.dissect(buffer, index, packet, parent)

  -- Delivery Price: Price9
  index, delivery_price = coinbase_deribit_marketdataapi_sbe_v1_0.delivery_price.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price9
  index, settlement_price = coinbase_deribit_marketdataapi_sbe_v1_0.settlement_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Ref Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_ref_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.instrument_ref_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_ref_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_ref_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.instrument_ref_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Info Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_info_message = {}

-- Size: Instrument Info Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_info_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.index_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.size

-- Display: Instrument Info Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Min Sell Price: Price9
  index, min_sell_price = coinbase_deribit_marketdataapi_sbe_v1_0.min_sell_price.dissect(buffer, index, packet, parent)

  -- Max Buy Price: Price9
  index, max_buy_price = coinbase_deribit_marketdataapi_sbe_v1_0.max_buy_price.dissect(buffer, index, packet, parent)

  -- Index Price: Price9
  index, index_price = coinbase_deribit_marketdataapi_sbe_v1_0.index_price.dissect(buffer, index, packet, parent)

  -- Mark Price: Price9
  index, mark_price = coinbase_deribit_marketdataapi_sbe_v1_0.mark_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.instrument_info_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.instrument_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Update Message
coinbase_deribit_marketdataapi_sbe_v1_0.trading_status_update_message = {}

-- Size: Trading Status Update Message
coinbase_deribit_marketdataapi_sbe_v1_0.trading_status_update_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.trading_status.size

-- Display: Trading Status Update Message
coinbase_deribit_marketdataapi_sbe_v1_0.trading_status_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Update Message
coinbase_deribit_marketdataapi_sbe_v1_0.trading_status_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Status: InstrumentStatus
  index, trading_status = coinbase_deribit_marketdataapi_sbe_v1_0.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Update Message
coinbase_deribit_marketdataapi_sbe_v1_0.trading_status_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.trading_status_update_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.trading_status_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.trading_status_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.trading_status_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags
coinbase_deribit_marketdataapi_sbe_v1_0.flags = {}

-- Size: Flags
coinbase_deribit_marketdataapi_sbe_v1_0.flags.size = 4

-- Display: Flags
coinbase_deribit_marketdataapi_sbe_v1_0.flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Reversed flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    flags[#flags + 1] = "Is Reversed"
  end
  -- Is Is Put Option flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    flags[#flags + 1] = "Is Put Option"
  end
  -- Is Is Perpetual flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    flags[#flags + 1] = "Is Perpetual"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
coinbase_deribit_marketdataapi_sbe_v1_0.flags.bits = function(range, value, packet, parent)

  -- Is Reversed: 1 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_reversed, range, value)

  -- Is Put Option: 1 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_put_option, range, value)

  -- Is Perpetual: 1 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.is_perpetual, range, value)

  -- Reserved 29: 29 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reserved_29, range, value)
end

-- Dissect: Flags
coinbase_deribit_marketdataapi_sbe_v1_0.flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_marketdataapi_sbe_v1_0.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.flags, range, display)

  if show.flags then
    coinbase_deribit_marketdataapi_sbe_v1_0.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Logical Expiry
coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry = {}

-- Size: Logical Expiry
coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.year.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.month.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.week_of_month.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.day_of_month.size

-- Display: Logical Expiry
coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logical Expiry
coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: int16
  index, year = coinbase_deribit_marketdataapi_sbe_v1_0.year.dissect(buffer, index, packet, parent)

  -- Month: int16
  index, month = coinbase_deribit_marketdataapi_sbe_v1_0.month.dissect(buffer, index, packet, parent)

  -- Week Of Month: int16
  index, week_of_month = coinbase_deribit_marketdataapi_sbe_v1_0.week_of_month.dissect(buffer, index, packet, parent)

  -- Day Of Month: int16
  index, day_of_month = coinbase_deribit_marketdataapi_sbe_v1_0.day_of_month.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logical Expiry
coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry.dissect = function(buffer, offset, packet, parent)
  if show.logical_expiry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.logical_expiry, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_message = {}

-- Size: Instrument Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_message.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.symbol.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.name.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.base_currency.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.quote_currency.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.base_increment.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.tick_size.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.strike_price.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.creation_time.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.expiry_time.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.flags.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.type.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.status.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.quantity_exponent.size

-- Display: Instrument Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: int64
  index, instrument_id = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Symbol: char64
  index, symbol = coinbase_deribit_marketdataapi_sbe_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Name: char128
  index, name = coinbase_deribit_marketdataapi_sbe_v1_0.name.dissect(buffer, index, packet, parent)

  -- Base Currency: char8
  index, base_currency = coinbase_deribit_marketdataapi_sbe_v1_0.base_currency.dissect(buffer, index, packet, parent)

  -- Quote Currency: char8
  index, quote_currency = coinbase_deribit_marketdataapi_sbe_v1_0.quote_currency.dissect(buffer, index, packet, parent)

  -- Base Increment: Price9
  index, base_increment = coinbase_deribit_marketdataapi_sbe_v1_0.base_increment.dissect(buffer, index, packet, parent)

  -- Tick Size: Price9
  index, tick_size = coinbase_deribit_marketdataapi_sbe_v1_0.tick_size.dissect(buffer, index, packet, parent)

  -- Strike Price: Price9
  index, strike_price = coinbase_deribit_marketdataapi_sbe_v1_0.strike_price.dissect(buffer, index, packet, parent)

  -- Large Tick Size 0: Price9
  index, large_tick_size_0 = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_0.dissect(buffer, index, packet, parent)

  -- Large Tick Threshold 0: Price9
  index, large_tick_threshold_0 = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_0.dissect(buffer, index, packet, parent)

  -- Large Tick Size 1: Price9
  index, large_tick_size_1 = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_size_1.dissect(buffer, index, packet, parent)

  -- Large Tick Threshold 1: Price9
  index, large_tick_threshold_1 = coinbase_deribit_marketdataapi_sbe_v1_0.large_tick_threshold_1.dissect(buffer, index, packet, parent)

  -- Creation Time: TimestampNanos
  index, creation_time = coinbase_deribit_marketdataapi_sbe_v1_0.creation_time.dissect(buffer, index, packet, parent)

  -- Expiry Time: TimestampNanos
  index, expiry_time = coinbase_deribit_marketdataapi_sbe_v1_0.expiry_time.dissect(buffer, index, packet, parent)

  -- Logical Expiry: Struct of 4 fields
  index, logical_expiry = coinbase_deribit_marketdataapi_sbe_v1_0.logical_expiry.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 4 fields
  index, flags = coinbase_deribit_marketdataapi_sbe_v1_0.flags.dissect(buffer, index, packet, parent)

  -- Type: InstrumentType
  index, type = coinbase_deribit_marketdataapi_sbe_v1_0.type.dissect(buffer, index, packet, parent)

  -- Status: InstrumentStatus
  index, status = coinbase_deribit_marketdataapi_sbe_v1_0.status.dissect(buffer, index, packet, parent)

  -- Quantity Exponent: int8
  index, quantity_exponent = coinbase_deribit_marketdataapi_sbe_v1_0.quantity_exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Message
coinbase_deribit_marketdataapi_sbe_v1_0.instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.instrument_message, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
coinbase_deribit_marketdataapi_sbe_v1_0.payload = {}

-- Dissect: Payload
coinbase_deribit_marketdataapi_sbe_v1_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Message
  if template_id == 10 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.instrument_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Update Message
  if template_id == 12 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.trading_status_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Message
  if template_id == 13 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.instrument_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Ref Message
  if template_id == 14 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.instrument_ref_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Put Message
  if template_id == 20 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.bid_put_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Put Message
  if template_id == 21 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.ask_put_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Qty Reduced Message
  if template_id == 22 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.bid_qty_reduced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Qty Reduced Message
  if template_id == 23 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.ask_qty_reduced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Delete Message
  if template_id == 24 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.bid_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Delete Message
  if template_id == 25 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.ask_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Summary Message
  if template_id == 30 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.trade_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if template_id == 31 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Block Trade Message
  if template_id == 33 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.block_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Header Message
  if template_id == 100 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Trailer Message
  if template_id == 101 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.snapshot_trailer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Cycle Message
  if template_id == 119 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.end_of_cycle_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request Message
  if template_id == 200 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Reject Message
  if template_id == 202 then
    return coinbase_deribit_marketdataapi_sbe_v1_0.retransmit_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Flags
coinbase_deribit_marketdataapi_sbe_v1_0.message_flags = {}

-- Size: Message Flags
coinbase_deribit_marketdataapi_sbe_v1_0.message_flags.size = 2

-- Display: Message Flags
coinbase_deribit_marketdataapi_sbe_v1_0.message_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Start Of Transaction flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Start Of Transaction"
  end
  -- Is End Of Transaction flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "End Of Transaction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Message Flags
coinbase_deribit_marketdataapi_sbe_v1_0.message_flags.bits = function(range, value, packet, parent)

  -- Start Of Transaction: 1 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.start_of_transaction, range, value)

  -- End Of Transaction: 1 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.end_of_transaction, range, value)

  -- Reserved Bits: 14 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reserved_bits, range, value)
end

-- Dissect: Message Flags
coinbase_deribit_marketdataapi_sbe_v1_0.message_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_marketdataapi_sbe_v1_0.message_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.message_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.message_flags, range, display)

  if show.message_flags then
    coinbase_deribit_marketdataapi_sbe_v1_0.message_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Md Message Header
coinbase_deribit_marketdataapi_sbe_v1_0.md_message_header = {}

-- Size: Md Message Header
coinbase_deribit_marketdataapi_sbe_v1_0.md_message_header.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.message_length.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.template_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.schema_version.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.message_flags.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.transact_time.size

-- Display: Md Message Header
coinbase_deribit_marketdataapi_sbe_v1_0.md_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Message Header
coinbase_deribit_marketdataapi_sbe_v1_0.md_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: uint16
  index, message_length = coinbase_deribit_marketdataapi_sbe_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = coinbase_deribit_marketdataapi_sbe_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Version: uint16
  index, schema_version = coinbase_deribit_marketdataapi_sbe_v1_0.schema_version.dissect(buffer, index, packet, parent)

  -- Message Flags: Struct of 3 fields
  index, message_flags = coinbase_deribit_marketdataapi_sbe_v1_0.message_flags.dissect(buffer, index, packet, parent)

  -- Transact Time: int64
  index, transact_time = coinbase_deribit_marketdataapi_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Message Header
coinbase_deribit_marketdataapi_sbe_v1_0.md_message_header.dissect = function(buffer, offset, packet, parent)
  if show.md_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.md_message_header, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.md_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.md_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.md_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Md Message
coinbase_deribit_marketdataapi_sbe_v1_0.md_message = {}

-- Display: Md Message
coinbase_deribit_marketdataapi_sbe_v1_0.md_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Message
coinbase_deribit_marketdataapi_sbe_v1_0.md_message.fields = function(buffer, offset, packet, parent, size_of_md_message, md_message_index)
  local index = offset

  -- Implicit Md Message Index
  if md_message_index ~= nil and show.md_message_index then
    local iteration = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.md_message_index, md_message_index)
    iteration:set_generated()
  end

  -- Md Message Header: Struct of 5 fields
  index, md_message_header = coinbase_deribit_marketdataapi_sbe_v1_0.md_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 14, 2):le_uint()

  -- Payload: Runtime Type with 18 branches
  index = coinbase_deribit_marketdataapi_sbe_v1_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Md Message
coinbase_deribit_marketdataapi_sbe_v1_0.md_message.dissect = function(buffer, offset, packet, parent, size_of_md_message, md_message_index)
  local index = offset + size_of_md_message

  -- Optionally add group/struct element to protocol tree
  if show.md_message then
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.md_message, buffer(offset, 0))
    local current = coinbase_deribit_marketdataapi_sbe_v1_0.md_message.fields(buffer, offset, packet, parent, size_of_md_message, md_message_index)
    parent:set_len(size_of_md_message)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.md_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    coinbase_deribit_marketdataapi_sbe_v1_0.md_message.fields(buffer, offset, packet, parent, size_of_md_message, md_message_index)

    return index
  end
end

-- Packet Type
coinbase_deribit_marketdataapi_sbe_v1_0.packet_type = {}

-- Size: Packet Type
coinbase_deribit_marketdataapi_sbe_v1_0.packet_type.size = 2

-- Display: Packet Type
coinbase_deribit_marketdataapi_sbe_v1_0.packet_type.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Incremental Update flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Incremental Update"
  end
  -- Is Snapshot flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Snapshot"
  end
  -- Is Retransmit flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Retransmit"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Packet Type
coinbase_deribit_marketdataapi_sbe_v1_0.packet_type.bits = function(range, value, packet, parent)

  -- Incremental Update: choice
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.incremental_update, range, value)

  -- Snapshot: choice
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.snapshot, range, value)

  -- Retransmit: choice
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.retransmit, range, value)

  -- Reserved Bits: 13 Bit
  parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.reserved_bits, range, value)
end

-- Dissect: Packet Type
coinbase_deribit_marketdataapi_sbe_v1_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_marketdataapi_sbe_v1_0.packet_type.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_marketdataapi_sbe_v1_0.packet_type.display(range, value, packet, parent)
  local element = parent:add_le(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.packet_type, range, display)

  if show.packet_type then
    coinbase_deribit_marketdataapi_sbe_v1_0.packet_type.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Packet Header
coinbase_deribit_marketdataapi_sbe_v1_0.packet_header = {}

-- Size: Packet Header
coinbase_deribit_marketdataapi_sbe_v1_0.packet_header.size =
  coinbase_deribit_marketdataapi_sbe_v1_0.sending_time.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.seq_num.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.channel_id.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.packet_type.size + 
  coinbase_deribit_marketdataapi_sbe_v1_0.message_count.size

-- Display: Packet Header
coinbase_deribit_marketdataapi_sbe_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
coinbase_deribit_marketdataapi_sbe_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: int64
  index, sending_time = coinbase_deribit_marketdataapi_sbe_v1_0.sending_time.dissect(buffer, index, packet, parent)

  -- Seq Num: int64
  index, seq_num = coinbase_deribit_marketdataapi_sbe_v1_0.seq_num.dissect(buffer, index, packet, parent)

  -- Channel Id: int32
  index, channel_id = coinbase_deribit_marketdataapi_sbe_v1_0.channel_id.dissect(buffer, index, packet, parent)

  -- Packet Type: Struct of 4 fields
  index, packet_type = coinbase_deribit_marketdataapi_sbe_v1_0.packet_type.dissect(buffer, index, packet, parent)

  -- Message Count: uint16
  index, message_count = coinbase_deribit_marketdataapi_sbe_v1_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
coinbase_deribit_marketdataapi_sbe_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0.fields.packet_header, buffer(offset, 0))
    local index = coinbase_deribit_marketdataapi_sbe_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_marketdataapi_sbe_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_marketdataapi_sbe_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
coinbase_deribit_marketdataapi_sbe_v1_0.packet = {}

-- Verify required size of Udp packet
coinbase_deribit_marketdataapi_sbe_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= coinbase_deribit_marketdataapi_sbe_v1_0.packet_header.size
end

-- Dissect Packet
coinbase_deribit_marketdataapi_sbe_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = coinbase_deribit_marketdataapi_sbe_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):le_uint()

  -- Repeating: Md Message
  for md_message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Md Message
    index, md_message = coinbase_deribit_marketdataapi_sbe_v1_0.md_message.dissect(buffer, index, packet, parent, message_length, md_message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_coinbase_deribit_marketdataapi_sbe_v1_0.init()
end

-- Dissector for Coinbase Deribit MarketDataApi Sbe 1.0
function omi_coinbase_deribit_marketdataapi_sbe_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_coinbase_deribit_marketdataapi_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_coinbase_deribit_marketdataapi_sbe_v1_0, buffer(), omi_coinbase_deribit_marketdataapi_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return coinbase_deribit_marketdataapi_sbe_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Coinbase Deribit MarketDataApi Sbe 1.0 (Udp)
local function omi_coinbase_deribit_marketdataapi_sbe_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not coinbase_deribit_marketdataapi_sbe_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_coinbase_deribit_marketdataapi_sbe_v1_0
  omi_coinbase_deribit_marketdataapi_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Coinbase Deribit MarketDataApi Sbe 1.0
omi_coinbase_deribit_marketdataapi_sbe_v1_0:register_heuristic("udp", omi_coinbase_deribit_marketdataapi_sbe_v1_0_udp_heuristic)

-- Register Coinbase Deribit MarketDataApi Sbe 1.0 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_coinbase_deribit_marketdataapi_sbe_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Coinbase
--   Version: 1.0
--   Date: Friday, September 5, 2025
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
