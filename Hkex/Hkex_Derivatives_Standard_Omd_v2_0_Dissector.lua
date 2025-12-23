-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex Derivatives Standard Omd 2.0 Protocol
local omi_hkex_derivatives_standard_omd_v2_0 = Proto("Hkex.Derivatives.Standard.Omd.v2.0.Lua", "Hkex Derivatives Standard Omd 2.0")

-- Protocol table
local hkex_derivatives_standard_omd_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex Derivatives Standard Omd 2.0 Fields
omi_hkex_derivatives_standard_omd_v2_0.fields.actual_start_time = ProtoField.new("Actual Start Time", "hkex.derivatives.standard.omd.v2.0.actualstarttime", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.aggregate_quantity = ProtoField.new("Aggregate Quantity", "hkex.derivatives.standard.omd.v2.0.aggregatequantity", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.alert_id = ProtoField.new("Alert Id", "hkex.derivatives.standard.omd.v2.0.alertid", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.amendment_execution_time = ProtoField.new("Amendment Execution Time", "hkex.derivatives.standard.omd.v2.0.amendmentexecutiontime", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.base_currency = ProtoField.new("Base Currency", "hkex.derivatives.standard.omd.v2.0.basecurrency", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "hkex.derivatives.standard.omd.v2.0.beginseqnum", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.bid_ask_flag = ProtoField.new("Bid Ask Flag", "hkex.derivatives.standard.omd.v2.0.bidaskflag", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.book_entry = ProtoField.new("Book Entry", "hkex.derivatives.standard.omd.v2.0.bookentry", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.calculated_opening_price = ProtoField.new("Calculated Opening Price", "hkex.derivatives.standard.omd.v2.0.calculatedopeningprice", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.channel_id = ProtoField.new("Channel Id", "hkex.derivatives.standard.omd.v2.0.channelid", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.combo_orderbook_id = ProtoField.new("Combo Orderbook Id", "hkex.derivatives.standard.omd.v2.0.comboorderbookid", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_code = ProtoField.new("Commodity Code", "hkex.derivatives.standard.omd.v2.0.commoditycode", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_id = ProtoField.new("Commodity Id", "hkex.derivatives.standard.omd.v2.0.commodityid", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_name = ProtoField.new("Commodity Name", "hkex.derivatives.standard.omd.v2.0.commodityname", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.compression_mode = ProtoField.new("Compression Mode", "hkex.derivatives.standard.omd.v2.0.compressionmode", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.content = ProtoField.new("Content", "hkex.derivatives.standard.omd.v2.0.content", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.contract_size_int_324 = ProtoField.new("Contract Size Int 324", "hkex.derivatives.standard.omd.v2.0.contractsizeint324", ftypes.INT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.contract_size_uint_324 = ProtoField.new("Contract Size Uint 324", "hkex.derivatives.standard.omd.v2.0.contractsizeuint324", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.cooling_off_end_time = ProtoField.new("Cooling Off End Time", "hkex.derivatives.standard.omd.v2.0.coolingoffendtime", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.cooling_off_start_time = ProtoField.new("Cooling Off Start Time", "hkex.derivatives.standard.omd.v2.0.coolingoffstarttime", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.day_indicator = ProtoField.new("Day Indicator", "hkex.derivatives.standard.omd.v2.0.dayindicator", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.decimal_in_contract_size = ProtoField.new("Decimal In Contract Size", "hkex.derivatives.standard.omd.v2.0.decimalincontractsize", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.decimal_in_price = ProtoField.new("Decimal In Price", "hkex.derivatives.standard.omd.v2.0.decimalinprice", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.decimal_in_strike_price = ProtoField.new("Decimal In Strike Price", "hkex.derivatives.standard.omd.v2.0.decimalinstrikeprice", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.decimal_in_underlying_price = ProtoField.new("Decimal In Underlying Price", "hkex.derivatives.standard.omd.v2.0.decimalinunderlyingprice", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.dr_status = ProtoField.new("Dr Status", "hkex.derivatives.standard.omd.v2.0.drstatus", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.effective_last_trading_date = ProtoField.new("Effective Last Trading Date", "hkex.derivatives.standard.omd.v2.0.effectivelasttradingdate", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.effective_tomorrow = ProtoField.new("Effective Tomorrow", "hkex.derivatives.standard.omd.v2.0.effectivetomorrow", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.end_seq_num = ProtoField.new("End Seq Num", "hkex.derivatives.standard.omd.v2.0.endseqnum", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.exchange = ProtoField.new("Exchange", "hkex.derivatives.standard.omd.v2.0.exchange", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.filler_1 = ProtoField.new("Filler 1", "hkex.derivatives.standard.omd.v2.0.filler1", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.filler_10 = ProtoField.new("Filler 10", "hkex.derivatives.standard.omd.v2.0.filler10", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.filler_2 = ProtoField.new("Filler 2", "hkex.derivatives.standard.omd.v2.0.filler2", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.filler_3 = ProtoField.new("Filler 3", "hkex.derivatives.standard.omd.v2.0.filler3", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.filler_4 = ProtoField.new("Filler 4", "hkex.derivatives.standard.omd.v2.0.filler4", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.filler_5 = ProtoField.new("Filler 5", "hkex.derivatives.standard.omd.v2.0.filler5", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.filler_6 = ProtoField.new("Filler 6", "hkex.derivatives.standard.omd.v2.0.filler6", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.first_trading_date = ProtoField.new("First Trading Date", "hkex.derivatives.standard.omd.v2.0.firsttradingdate", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.first_trading_time = ProtoField.new("First Trading Time", "hkex.derivatives.standard.omd.v2.0.firsttradingtime", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.gross_oi = ProtoField.new("Gross Oi", "hkex.derivatives.standard.omd.v2.0.grossoi", ftypes.INT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.header = ProtoField.new("Header", "hkex.derivatives.standard.omd.v2.0.header", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.high_price = ProtoField.new("High Price", "hkex.derivatives.standard.omd.v2.0.highprice", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.implied_price = ProtoField.new("Implied Price", "hkex.derivatives.standard.omd.v2.0.impliedprice", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.implied_quantity = ProtoField.new("Implied Quantity", "hkex.derivatives.standard.omd.v2.0.impliedquantity", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_class_id = ProtoField.new("Instrument Class Id", "hkex.derivatives.standard.omd.v2.0.instrumentclassid", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_class_key = ProtoField.new("Instrument Class Key", "hkex.derivatives.standard.omd.v2.0.instrumentclasskey", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_class_name = ProtoField.new("Instrument Class Name", "hkex.derivatives.standard.omd.v2.0.instrumentclassname", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_group = ProtoField.new("Instrument Group", "hkex.derivatives.standard.omd.v2.0.instrumentgroup", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_status_uint_81 = ProtoField.new("Instrument Status Uint 81", "hkex.derivatives.standard.omd.v2.0.instrumentstatusuint81", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_type_id = ProtoField.new("Instrument Type Id", "hkex.derivatives.standard.omd.v2.0.instrumenttypeid", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_type_key = ProtoField.new("Instrument Type Key", "hkex.derivatives.standard.omd.v2.0.instrumenttypekey", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.isin_code = ProtoField.new("Isin Code", "hkex.derivatives.standard.omd.v2.0.isincode", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.key_type = ProtoField.new("Key Type", "hkex.derivatives.standard.omd.v2.0.keytype", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.last_fragment = ProtoField.new("Last Fragment", "hkex.derivatives.standard.omd.v2.0.lastfragment", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.last_price = ProtoField.new("Last Price", "hkex.derivatives.standard.omd.v2.0.lastprice", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.last_seq_num = ProtoField.new("Last Seq Num", "hkex.derivatives.standard.omd.v2.0.lastseqnum", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.last_trading_date = ProtoField.new("Last Trading Date", "hkex.derivatives.standard.omd.v2.0.lasttradingdate", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.last_trading_time = ProtoField.new("Last Trading Time", "hkex.derivatives.standard.omd.v2.0.lasttradingtime", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.leg_orderbook_id = ProtoField.new("Leg Orderbook Id", "hkex.derivatives.standard.omd.v2.0.legorderbookid", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "hkex.derivatives.standard.omd.v2.0.legratio", ftypes.INT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.leg_side = ProtoField.new("Leg Side", "hkex.derivatives.standard.omd.v2.0.legside", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.low_price = ProtoField.new("Low Price", "hkex.derivatives.standard.omd.v2.0.lowprice", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.market_uint_162 = ProtoField.new("Market Uint 162", "hkex.derivatives.standard.omd.v2.0.marketuint162", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.market_uint_164 = ProtoField.new("Market Uint 164", "hkex.derivatives.standard.omd.v2.0.marketuint164", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.match_id = ProtoField.new("Match Id", "hkex.derivatives.standard.omd.v2.0.matchid", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.message = ProtoField.new("Message", "hkex.derivatives.standard.omd.v2.0.message", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.modifier = ProtoField.new("Modifier", "hkex.derivatives.standard.omd.v2.0.modifier", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.msg_count = ProtoField.new("Msg Count", "hkex.derivatives.standard.omd.v2.0.msgcount", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.msg_header = ProtoField.new("Msg Header", "hkex.derivatives.standard.omd.v2.0.msgheader", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.msg_size = ProtoField.new("Msg Size", "hkex.derivatives.standard.omd.v2.0.msgsize", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.msg_type = ProtoField.new("Msg Type", "hkex.derivatives.standard.omd.v2.0.msgtype", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.net_oi = ProtoField.new("Net Oi", "hkex.derivatives.standard.omd.v2.0.netoi", ftypes.INT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.new_seq_no = ProtoField.new("New Seq No", "hkex.derivatives.standard.omd.v2.0.newseqno", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.no_entries = ProtoField.new("No Entries", "hkex.derivatives.standard.omd.v2.0.noentries", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.noof_lines = ProtoField.new("Noof Lines", "hkex.derivatives.standard.omd.v2.0.nooflines", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.number_of_legs = ProtoField.new("Number Of Legs", "hkex.derivatives.standard.omd.v2.0.numberoflegs", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.number_of_orders = ProtoField.new("Number Of Orders", "hkex.derivatives.standard.omd.v2.0.numberoforders", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.open_price = ProtoField.new("Open Price", "hkex.derivatives.standard.omd.v2.0.openprice", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.order_book_id = ProtoField.new("Order Book Id", "hkex.derivatives.standard.omd.v2.0.orderbookid", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.order_id = ProtoField.new("Order Id", "hkex.derivatives.standard.omd.v2.0.orderid", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.packet = ProtoField.new("Packet", "hkex.derivatives.standard.omd.v2.0.packet", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.packet_header = ProtoField.new("Packet Header", "hkex.derivatives.standard.omd.v2.0.packetheader", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.payload = ProtoField.new("Payload", "hkex.derivatives.standard.omd.v2.0.payload", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.derivatives.standard.omd.v2.0.pktsize", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.planned_start_time = ProtoField.new("Planned Start Time", "hkex.derivatives.standard.omd.v2.0.plannedstarttime", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.price = ProtoField.new("Price", "hkex.derivatives.standard.omd.v2.0.price", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.price_level = ProtoField.new("Price Level", "hkex.derivatives.standard.omd.v2.0.pricelevel", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.price_quotation_factor_int_324 = ProtoField.new("Price Quotation Factor Int 324", "hkex.derivatives.standard.omd.v2.0.pricequotationfactorint324", ftypes.INT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.price_quotation_factor_uint_324 = ProtoField.new("Price Quotation Factor Uint 324", "hkex.derivatives.standard.omd.v2.0.pricequotationfactoruint324", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.priority = ProtoField.new("Priority", "hkex.derivatives.standard.omd.v2.0.priority", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.quantity_int_324 = ProtoField.new("Quantity Int 324", "hkex.derivatives.standard.omd.v2.0.quantityint324", ftypes.INT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.quantity_uint_324 = ProtoField.new("Quantity Uint 324", "hkex.derivatives.standard.omd.v2.0.quantityuint324", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.quantity_uint_648 = ProtoField.new("Quantity Uint 648", "hkex.derivatives.standard.omd.v2.0.quantityuint648", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.retrans_status = ProtoField.new("Retrans Status", "hkex.derivatives.standard.omd.v2.0.retransstatus", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.send_time = ProtoField.new("Send Time", "hkex.derivatives.standard.omd.v2.0.sendtime", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.seq_num = ProtoField.new("Seq Num", "hkex.derivatives.standard.omd.v2.0.seqnum", ftypes.UINT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.session = ProtoField.new("Session", "hkex.derivatives.standard.omd.v2.0.session", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.session_status = ProtoField.new("Session Status", "hkex.derivatives.standard.omd.v2.0.sessionstatus", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.settlement_currency_id = ProtoField.new("Settlement Currency Id", "hkex.derivatives.standard.omd.v2.0.settlementcurrencyid", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.settlement_price = ProtoField.new("Settlement Price", "hkex.derivatives.standard.omd.v2.0.settlementprice", ftypes.INT32)
omi_hkex_derivatives_standard_omd_v2_0.fields.side = ProtoField.new("Side", "hkex.derivatives.standard.omd.v2.0.side", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.source = ProtoField.new("Source", "hkex.derivatives.standard.omd.v2.0.source", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.state = ProtoField.new("State", "hkex.derivatives.standard.omd.v2.0.state", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.state_level = ProtoField.new("State Level", "hkex.derivatives.standard.omd.v2.0.statelevel", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.strike_price = ProtoField.new("Strike Price", "hkex.derivatives.standard.omd.v2.0.strikeprice", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.suspended = ProtoField.new("Suspended", "hkex.derivatives.standard.omd.v2.0.suspended", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.suspension_indicator = ProtoField.new("Suspension Indicator", "hkex.derivatives.standard.omd.v2.0.suspensionindicator", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.symbol = ProtoField.new("Symbol", "hkex.derivatives.standard.omd.v2.0.symbol", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.tick_size = ProtoField.new("Tick Size", "hkex.derivatives.standard.omd.v2.0.ticksize", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.tradable = ProtoField.new("Tradable", "hkex.derivatives.standard.omd.v2.0.tradable", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.trade_condition = ProtoField.new("Trade Condition", "hkex.derivatives.standard.omd.v2.0.tradecondition", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.trade_id = ProtoField.new("Trade Id", "hkex.derivatives.standard.omd.v2.0.tradeid", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.trade_report_volume = ProtoField.new("Trade Report Volume", "hkex.derivatives.standard.omd.v2.0.tradereportvolume", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.trade_state = ProtoField.new("Trade State", "hkex.derivatives.standard.omd.v2.0.tradestate", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.trade_sub_type = ProtoField.new("Trade Sub Type", "hkex.derivatives.standard.omd.v2.0.tradesubtype", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.trade_time = ProtoField.new("Trade Time", "hkex.derivatives.standard.omd.v2.0.tradetime", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.turnover = ProtoField.new("Turnover", "hkex.derivatives.standard.omd.v2.0.turnover", ftypes.UINT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.underlying_code = ProtoField.new("Underlying Code", "hkex.derivatives.standard.omd.v2.0.underlyingcode", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.underlying_type = ProtoField.new("Underlying Type", "hkex.derivatives.standard.omd.v2.0.underlyingtype", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.update_action = ProtoField.new("Update Action", "hkex.derivatives.standard.omd.v2.0.updateaction", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.username = ProtoField.new("Username", "hkex.derivatives.standard.omd.v2.0.username", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_flag = ProtoField.new("Vcm Flag", "hkex.derivatives.standard.omd.v2.0.vcmflag", ftypes.UINT8)
omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_lower_price = ProtoField.new("Vcm Lower Price", "hkex.derivatives.standard.omd.v2.0.vcmlowerprice", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_reference_price = ProtoField.new("Vcm Reference Price", "hkex.derivatives.standard.omd.v2.0.vcmreferenceprice", ftypes.INT64)
omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_upper_price = ProtoField.new("Vcm Upper Price", "hkex.derivatives.standard.omd.v2.0.vcmupperprice", ftypes.INT64)

-- Hkex Derivatives Standard Omd 2.0 messages
omi_hkex_derivatives_standard_omd_v2_0.fields.aggregate_implied_order = ProtoField.new("Aggregate Implied Order", "hkex.derivatives.standard.omd.v2.0.aggregateimpliedorder", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.aggregate_order_book_update_message = ProtoField.new("Aggregate Order Book Update Message", "hkex.derivatives.standard.omd.v2.0.aggregateorderbookupdatemessage", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.calculated_opening_price_message = ProtoField.new("Calculated Opening Price Message", "hkex.derivatives.standard.omd.v2.0.calculatedopeningpricemessage", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.class_definition = ProtoField.new("Class Definition", "hkex.derivatives.standard.omd.v2.0.classdefinition", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.combination_definition = ProtoField.new("Combination Definition", "hkex.derivatives.standard.omd.v2.0.combinationdefinition", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_and_class_status = ProtoField.new("Commodity And Class Status", "hkex.derivatives.standard.omd.v2.0.commodityandclassstatus", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_definition = ProtoField.new("Commodity Definition", "hkex.derivatives.standard.omd.v2.0.commoditydefinition", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "hkex.derivatives.standard.omd.v2.0.disasterrecoverysignalmessage", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_definition = ProtoField.new("Instrument Definition", "hkex.derivatives.standard.omd.v2.0.instrumentdefinition", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_status = ProtoField.new("Instrument Status", "hkex.derivatives.standard.omd.v2.0.instrumentstatus", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.logon = ProtoField.new("Logon", "hkex.derivatives.standard.omd.v2.0.logon", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.logon_response = ProtoField.new("Logon Response", "hkex.derivatives.standard.omd.v2.0.logonresponse", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.market_alert_message = ProtoField.new("Market Alert Message", "hkex.derivatives.standard.omd.v2.0.marketalertmessage", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.market_status = ProtoField.new("Market Status", "hkex.derivatives.standard.omd.v2.0.marketstatus", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.open_interest_message = ProtoField.new("Open Interest Message", "hkex.derivatives.standard.omd.v2.0.openinterestmessage", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.quote_request = ProtoField.new("Quote Request", "hkex.derivatives.standard.omd.v2.0.quoterequest", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.refresh_complete = ProtoField.new("Refresh Complete", "hkex.derivatives.standard.omd.v2.0.refreshcomplete", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.retransmission_request = ProtoField.new("Retransmission Request", "hkex.derivatives.standard.omd.v2.0.retransmissionrequest", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.retransmission_response = ProtoField.new("Retransmission Response", "hkex.derivatives.standard.omd.v2.0.retransmissionresponse", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.sequence_reset = ProtoField.new("Sequence Reset", "hkex.derivatives.standard.omd.v2.0.sequencereset", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.thm_trigger = ProtoField.new("Thm Trigger", "hkex.derivatives.standard.omd.v2.0.thmtrigger", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.trade = ProtoField.new("Trade", "hkex.derivatives.standard.omd.v2.0.trade", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.trade_amendment_message = ProtoField.new("Trade Amendment Message", "hkex.derivatives.standard.omd.v2.0.tradeamendmentmessage", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.trade_statistics_message = ProtoField.new("Trade Statistics Message", "hkex.derivatives.standard.omd.v2.0.tradestatisticsmessage", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_end = ProtoField.new("Vcm End", "hkex.derivatives.standard.omd.v2.0.vcmend", ftypes.STRING)
omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_trigger = ProtoField.new("Vcm Trigger", "hkex.derivatives.standard.omd.v2.0.vcmtrigger", ftypes.STRING)

-- Hkex Derivatives Standard Omd 2.0 generated fields
omi_hkex_derivatives_standard_omd_v2_0.fields.book_entry_index = ProtoField.new("Book Entry Index", "hkex.derivatives.standard.omd.v2.0.bookentryindex", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.content_index = ProtoField.new("Content Index", "hkex.derivatives.standard.omd.v2.0.contentindex", ftypes.UINT16)
omi_hkex_derivatives_standard_omd_v2_0.fields.message_index = ProtoField.new("Message Index", "hkex.derivatives.standard.omd.v2.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex Derivatives Standard Omd 2.0 Element Dissection Options
show.aggregate_implied_order = true
show.aggregate_order_book_update_message = true
show.book_entry = true
show.calculated_opening_price_message = true
show.class_definition = true
show.combination_definition = true
show.commodity_and_class_status = true
show.commodity_definition = true
show.disaster_recovery_signal_message = true
show.instrument_definition = true
show.instrument_status = true
show.logon = true
show.logon_response = true
show.market_alert_message = true
show.market_status = true
show.message = true
show.msg_header = true
show.open_interest_message = true
show.packet = true
show.packet_header = true
show.quote_request = true
show.refresh_complete = true
show.retransmission_request = true
show.retransmission_response = true
show.sequence_reset = true
show.thm_trigger = true
show.trade = true
show.trade_amendment_message = true
show.trade_statistics_message = true
show.vcm_end = true
show.vcm_trigger = true
show.payload = false

-- Register Hkex Derivatives Standard Omd 2.0 Show Options
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_aggregate_implied_order = Pref.bool("Show Aggregate Implied Order", show.aggregate_implied_order, "Parse and add Aggregate Implied Order to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_aggregate_order_book_update_message = Pref.bool("Show Aggregate Order Book Update Message", show.aggregate_order_book_update_message, "Parse and add Aggregate Order Book Update Message to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_book_entry = Pref.bool("Show Book Entry", show.book_entry, "Parse and add Book Entry to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_calculated_opening_price_message = Pref.bool("Show Calculated Opening Price Message", show.calculated_opening_price_message, "Parse and add Calculated Opening Price Message to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_class_definition = Pref.bool("Show Class Definition", show.class_definition, "Parse and add Class Definition to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_combination_definition = Pref.bool("Show Combination Definition", show.combination_definition, "Parse and add Combination Definition to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_commodity_and_class_status = Pref.bool("Show Commodity And Class Status", show.commodity_and_class_status, "Parse and add Commodity And Class Status to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_commodity_definition = Pref.bool("Show Commodity Definition", show.commodity_definition, "Parse and add Commodity Definition to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_disaster_recovery_signal_message = Pref.bool("Show Disaster Recovery Signal Message", show.disaster_recovery_signal_message, "Parse and add Disaster Recovery Signal Message to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_instrument_definition = Pref.bool("Show Instrument Definition", show.instrument_definition, "Parse and add Instrument Definition to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_instrument_status = Pref.bool("Show Instrument Status", show.instrument_status, "Parse and add Instrument Status to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_logon = Pref.bool("Show Logon", show.logon, "Parse and add Logon to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_logon_response = Pref.bool("Show Logon Response", show.logon_response, "Parse and add Logon Response to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_market_alert_message = Pref.bool("Show Market Alert Message", show.market_alert_message, "Parse and add Market Alert Message to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_market_status = Pref.bool("Show Market Status", show.market_status, "Parse and add Market Status to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_open_interest_message = Pref.bool("Show Open Interest Message", show.open_interest_message, "Parse and add Open Interest Message to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_refresh_complete = Pref.bool("Show Refresh Complete", show.refresh_complete, "Parse and add Refresh Complete to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_retransmission_response = Pref.bool("Show Retransmission Response", show.retransmission_response, "Parse and add Retransmission Response to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_sequence_reset = Pref.bool("Show Sequence Reset", show.sequence_reset, "Parse and add Sequence Reset to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_thm_trigger = Pref.bool("Show Thm Trigger", show.thm_trigger, "Parse and add Thm Trigger to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_trade_amendment_message = Pref.bool("Show Trade Amendment Message", show.trade_amendment_message, "Parse and add Trade Amendment Message to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_trade_statistics_message = Pref.bool("Show Trade Statistics Message", show.trade_statistics_message, "Parse and add Trade Statistics Message to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_vcm_end = Pref.bool("Show Vcm End", show.vcm_end, "Parse and add Vcm End to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_vcm_trigger = Pref.bool("Show Vcm Trigger", show.vcm_trigger, "Parse and add Vcm Trigger to protocol tree")
omi_hkex_derivatives_standard_omd_v2_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_hkex_derivatives_standard_omd_v2_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.aggregate_implied_order ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_aggregate_implied_order then
    show.aggregate_implied_order = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_aggregate_implied_order
    changed = true
  end
  if show.aggregate_order_book_update_message ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_aggregate_order_book_update_message then
    show.aggregate_order_book_update_message = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_aggregate_order_book_update_message
    changed = true
  end
  if show.book_entry ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_book_entry then
    show.book_entry = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_book_entry
    changed = true
  end
  if show.calculated_opening_price_message ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_calculated_opening_price_message then
    show.calculated_opening_price_message = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_calculated_opening_price_message
    changed = true
  end
  if show.class_definition ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_class_definition then
    show.class_definition = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_class_definition
    changed = true
  end
  if show.combination_definition ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_combination_definition then
    show.combination_definition = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_combination_definition
    changed = true
  end
  if show.commodity_and_class_status ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_commodity_and_class_status then
    show.commodity_and_class_status = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_commodity_and_class_status
    changed = true
  end
  if show.commodity_definition ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_commodity_definition then
    show.commodity_definition = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_commodity_definition
    changed = true
  end
  if show.disaster_recovery_signal_message ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_disaster_recovery_signal_message then
    show.disaster_recovery_signal_message = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_disaster_recovery_signal_message
    changed = true
  end
  if show.instrument_definition ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_instrument_definition then
    show.instrument_definition = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_instrument_definition
    changed = true
  end
  if show.instrument_status ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_instrument_status then
    show.instrument_status = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_instrument_status
    changed = true
  end
  if show.logon ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_logon then
    show.logon = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_logon
    changed = true
  end
  if show.logon_response ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_logon_response then
    show.logon_response = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_logon_response
    changed = true
  end
  if show.market_alert_message ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_market_alert_message then
    show.market_alert_message = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_market_alert_message
    changed = true
  end
  if show.market_status ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_market_status then
    show.market_status = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_market_status
    changed = true
  end
  if show.message ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_message then
    show.message = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_message
    changed = true
  end
  if show.msg_header ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_msg_header then
    show.msg_header = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_msg_header
    changed = true
  end
  if show.open_interest_message ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_open_interest_message then
    show.open_interest_message = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_open_interest_message
    changed = true
  end
  if show.packet ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_packet then
    show.packet = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_packet_header then
    show.packet_header = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_packet_header
    changed = true
  end
  if show.quote_request ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_quote_request then
    show.quote_request = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_quote_request
    changed = true
  end
  if show.refresh_complete ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_refresh_complete then
    show.refresh_complete = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_refresh_complete
    changed = true
  end
  if show.retransmission_request ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_retransmission_request then
    show.retransmission_request = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_retransmission_request
    changed = true
  end
  if show.retransmission_response ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_retransmission_response then
    show.retransmission_response = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_retransmission_response
    changed = true
  end
  if show.sequence_reset ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_sequence_reset then
    show.sequence_reset = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_sequence_reset
    changed = true
  end
  if show.thm_trigger ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_thm_trigger then
    show.thm_trigger = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_thm_trigger
    changed = true
  end
  if show.trade ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_trade then
    show.trade = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_trade
    changed = true
  end
  if show.trade_amendment_message ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_trade_amendment_message then
    show.trade_amendment_message = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_trade_amendment_message
    changed = true
  end
  if show.trade_statistics_message ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_trade_statistics_message then
    show.trade_statistics_message = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_trade_statistics_message
    changed = true
  end
  if show.vcm_end ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_vcm_end then
    show.vcm_end = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_vcm_end
    changed = true
  end
  if show.vcm_trigger ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_vcm_trigger then
    show.vcm_trigger = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_vcm_trigger
    changed = true
  end
  if show.payload ~= omi_hkex_derivatives_standard_omd_v2_0.prefs.show_payload then
    show.payload = omi_hkex_derivatives_standard_omd_v2_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Hkex Derivatives Standard Omd 2.0
-----------------------------------------------------------------------

-- Net Oi
hkex_derivatives_standard_omd_v2_0.net_oi = {}

-- Size: Net Oi
hkex_derivatives_standard_omd_v2_0.net_oi.size = 4

-- Display: Net Oi
hkex_derivatives_standard_omd_v2_0.net_oi.display = function(value)
  return "Net Oi: "..value
end

-- Dissect: Net Oi
hkex_derivatives_standard_omd_v2_0.net_oi.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.net_oi.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_standard_omd_v2_0.net_oi.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.net_oi, range, value, display)

  return offset + length, value
end

-- Gross Oi
hkex_derivatives_standard_omd_v2_0.gross_oi = {}

-- Size: Gross Oi
hkex_derivatives_standard_omd_v2_0.gross_oi.size = 4

-- Display: Gross Oi
hkex_derivatives_standard_omd_v2_0.gross_oi.display = function(value)
  return "Gross Oi: "..value
end

-- Dissect: Gross Oi
hkex_derivatives_standard_omd_v2_0.gross_oi.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.gross_oi.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_standard_omd_v2_0.gross_oi.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.gross_oi, range, value, display)

  return offset + length, value
end

-- Settlement Price
hkex_derivatives_standard_omd_v2_0.settlement_price = {}

-- Size: Settlement Price
hkex_derivatives_standard_omd_v2_0.settlement_price.size = 4

-- Display: Settlement Price
hkex_derivatives_standard_omd_v2_0.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
hkex_derivatives_standard_omd_v2_0.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.settlement_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_standard_omd_v2_0.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Order Book Id
hkex_derivatives_standard_omd_v2_0.order_book_id = {}

-- Size: Order Book Id
hkex_derivatives_standard_omd_v2_0.order_book_id.size = 4

-- Display: Order Book Id
hkex_derivatives_standard_omd_v2_0.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
hkex_derivatives_standard_omd_v2_0.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.order_book_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Filler 6
hkex_derivatives_standard_omd_v2_0.filler_6 = {}

-- Size: Filler 6
hkex_derivatives_standard_omd_v2_0.filler_6.size = 6

-- Display: Filler 6
hkex_derivatives_standard_omd_v2_0.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
hkex_derivatives_standard_omd_v2_0.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.filler_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Day Indicator
hkex_derivatives_standard_omd_v2_0.day_indicator = {}

-- Size: Day Indicator
hkex_derivatives_standard_omd_v2_0.day_indicator.size = 2

-- Display: Day Indicator
hkex_derivatives_standard_omd_v2_0.day_indicator.display = function(value)
  if value == 0 then
    return "Day Indicator: Current Trading Day (0)"
  end
  if value == 1 then
    return "Day Indicator: Previous Trading Day (1)"
  end

  return "Day Indicator: Unknown("..value..")"
end

-- Dissect: Day Indicator
hkex_derivatives_standard_omd_v2_0.day_indicator.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.day_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.day_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.day_indicator, range, value, display)

  return offset + length, value
end

-- Open Interest Message
hkex_derivatives_standard_omd_v2_0.open_interest_message = {}

-- Size: Open Interest Message
hkex_derivatives_standard_omd_v2_0.open_interest_message.size =
  hkex_derivatives_standard_omd_v2_0.day_indicator.size + 
  hkex_derivatives_standard_omd_v2_0.filler_6.size + 
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.settlement_price.size + 
  hkex_derivatives_standard_omd_v2_0.gross_oi.size + 
  hkex_derivatives_standard_omd_v2_0.net_oi.size

-- Display: Open Interest Message
hkex_derivatives_standard_omd_v2_0.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
hkex_derivatives_standard_omd_v2_0.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Day Indicator: Uint16
  index, day_indicator = hkex_derivatives_standard_omd_v2_0.day_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: String
  index, filler_6 = hkex_derivatives_standard_omd_v2_0.filler_6.dissect(buffer, index, packet, parent)

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Settlement Price: Int32
  index, settlement_price = hkex_derivatives_standard_omd_v2_0.settlement_price.dissect(buffer, index, packet, parent)

  -- Gross Oi: Int32
  index, gross_oi = hkex_derivatives_standard_omd_v2_0.gross_oi.dissect(buffer, index, packet, parent)

  -- Net Oi: Int32
  index, net_oi = hkex_derivatives_standard_omd_v2_0.net_oi.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
hkex_derivatives_standard_omd_v2_0.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.open_interest_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.open_interest_message, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Content
hkex_derivatives_standard_omd_v2_0.content = {}

-- Size: Content
hkex_derivatives_standard_omd_v2_0.content.size = 320

-- Display: Content
hkex_derivatives_standard_omd_v2_0.content.display = function(value)
  return "Content: "..value
end

-- Dissect: Content
hkex_derivatives_standard_omd_v2_0.content.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.content.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.content.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.content, range, value, display)

  return offset + length, value
end

-- Noof Lines
hkex_derivatives_standard_omd_v2_0.noof_lines = {}

-- Size: Noof Lines
hkex_derivatives_standard_omd_v2_0.noof_lines.size = 1

-- Display: Noof Lines
hkex_derivatives_standard_omd_v2_0.noof_lines.display = function(value)
  return "Noof Lines: "..value
end

-- Dissect: Noof Lines
hkex_derivatives_standard_omd_v2_0.noof_lines.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.noof_lines.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.noof_lines.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.noof_lines, range, value, display)

  return offset + length, value
end

-- Priority
hkex_derivatives_standard_omd_v2_0.priority = {}

-- Size: Priority
hkex_derivatives_standard_omd_v2_0.priority.size = 1

-- Display: Priority
hkex_derivatives_standard_omd_v2_0.priority.display = function(value)
  if value == 0 then
    return "Priority: Critical (0)"
  end
  if value == 1 then
    return "Priority: Important (1)"
  end
  if value == 2 then
    return "Priority: Normal (2)"
  end

  return "Priority: Unknown("..value..")"
end

-- Dissect: Priority
hkex_derivatives_standard_omd_v2_0.priority.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.priority.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.priority, range, value, display)

  return offset + length, value
end

-- Last Fragment
hkex_derivatives_standard_omd_v2_0.last_fragment = {}

-- Size: Last Fragment
hkex_derivatives_standard_omd_v2_0.last_fragment.size = 1

-- Display: Last Fragment
hkex_derivatives_standard_omd_v2_0.last_fragment.display = function(value)
  if value == "Y" then
    return "Last Fragment: Complete (Y)"
  end
  if value == "M" then
    return "Last Fragment: Not Complete (M)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
hkex_derivatives_standard_omd_v2_0.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.last_fragment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Header
hkex_derivatives_standard_omd_v2_0.header = {}

-- Size: Header
hkex_derivatives_standard_omd_v2_0.header.size = 320

-- Display: Header
hkex_derivatives_standard_omd_v2_0.header.display = function(value)
  return "Header: "..value
end

-- Dissect: Header
hkex_derivatives_standard_omd_v2_0.header.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.header.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.header.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.header, range, value, display)

  return offset + length, value
end

-- Source
hkex_derivatives_standard_omd_v2_0.source = {}

-- Size: Source
hkex_derivatives_standard_omd_v2_0.source.size = 1

-- Display: Source
hkex_derivatives_standard_omd_v2_0.source.display = function(value)
  if value == "H" then
    return "Source: Trading System (H)"
  end

  return "Source: Unknown("..value..")"
end

-- Dissect: Source
hkex_derivatives_standard_omd_v2_0.source.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.source, range, value, display)

  return offset + length, value
end

-- Alert Id
hkex_derivatives_standard_omd_v2_0.alert_id = {}

-- Size: Alert Id
hkex_derivatives_standard_omd_v2_0.alert_id.size = 8

-- Display: Alert Id
hkex_derivatives_standard_omd_v2_0.alert_id.display = function(value)
  return "Alert Id: "..value
end

-- Dissect: Alert Id
hkex_derivatives_standard_omd_v2_0.alert_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.alert_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.alert_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.alert_id, range, value, display)

  return offset + length, value
end

-- Market Alert Message
hkex_derivatives_standard_omd_v2_0.market_alert_message = {}

-- Calculate size of: Market Alert Message
hkex_derivatives_standard_omd_v2_0.market_alert_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_derivatives_standard_omd_v2_0.alert_id.size

  index = index + hkex_derivatives_standard_omd_v2_0.source.size

  index = index + hkex_derivatives_standard_omd_v2_0.header.size

  index = index + hkex_derivatives_standard_omd_v2_0.last_fragment.size

  index = index + hkex_derivatives_standard_omd_v2_0.priority.size

  index = index + hkex_derivatives_standard_omd_v2_0.noof_lines.size

  -- Calculate field size from count
  local content_count = buffer(offset + index - 1, 1):le_uint()
  index = index + content_count * 320

  return index
end

-- Display: Market Alert Message
hkex_derivatives_standard_omd_v2_0.market_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Alert Message
hkex_derivatives_standard_omd_v2_0.market_alert_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Alert Id: Uint64
  index, alert_id = hkex_derivatives_standard_omd_v2_0.alert_id.dissect(buffer, index, packet, parent)

  -- Source: String
  index, source = hkex_derivatives_standard_omd_v2_0.source.dissect(buffer, index, packet, parent)

  -- Header: Binary
  index, header = hkex_derivatives_standard_omd_v2_0.header.dissect(buffer, index, packet, parent)

  -- Last Fragment: String
  index, last_fragment = hkex_derivatives_standard_omd_v2_0.last_fragment.dissect(buffer, index, packet, parent)

  -- Priority: Uint8
  index, priority = hkex_derivatives_standard_omd_v2_0.priority.dissect(buffer, index, packet, parent)

  -- Noof Lines: Uint8
  index, noof_lines = hkex_derivatives_standard_omd_v2_0.noof_lines.dissect(buffer, index, packet, parent)

  -- Repeating: Content
  for content_index = 1, noof_lines do
    index, content = hkex_derivatives_standard_omd_v2_0.content.dissect(buffer, index, packet, parent, content_index)
  end

  return index
end

-- Dissect: Market Alert Message
hkex_derivatives_standard_omd_v2_0.market_alert_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_alert_message then
    local length = hkex_derivatives_standard_omd_v2_0.market_alert_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = hkex_derivatives_standard_omd_v2_0.market_alert_message.display(buffer, packet, parent)
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.market_alert_message, range, display)
  end

  return hkex_derivatives_standard_omd_v2_0.market_alert_message.fields(buffer, offset, packet, parent)
end

-- Quantity Uint 648
hkex_derivatives_standard_omd_v2_0.quantity_uint_648 = {}

-- Size: Quantity Uint 648
hkex_derivatives_standard_omd_v2_0.quantity_uint_648.size = 8

-- Display: Quantity Uint 648
hkex_derivatives_standard_omd_v2_0.quantity_uint_648.display = function(value)
  return "Quantity Uint 648: "..value
end

-- Dissect: Quantity Uint 648
hkex_derivatives_standard_omd_v2_0.quantity_uint_648.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.quantity_uint_648.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.quantity_uint_648.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.quantity_uint_648, range, value, display)

  return offset + length, value
end

-- Filler 4
hkex_derivatives_standard_omd_v2_0.filler_4 = {}

-- Size: Filler 4
hkex_derivatives_standard_omd_v2_0.filler_4.size = 4

-- Display: Filler 4
hkex_derivatives_standard_omd_v2_0.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
hkex_derivatives_standard_omd_v2_0.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.filler_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Calculated Opening Price
hkex_derivatives_standard_omd_v2_0.calculated_opening_price = {}

-- Size: Calculated Opening Price
hkex_derivatives_standard_omd_v2_0.calculated_opening_price.size = 8

-- Display: Calculated Opening Price
hkex_derivatives_standard_omd_v2_0.calculated_opening_price.display = function(value)
  return "Calculated Opening Price: "..value
end

-- Dissect: Calculated Opening Price
hkex_derivatives_standard_omd_v2_0.calculated_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.calculated_opening_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.calculated_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.calculated_opening_price, range, value, display)

  return offset + length, value
end

-- Calculated Opening Price Message
hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message = {}

-- Size: Calculated Opening Price Message
hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message.size =
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.calculated_opening_price.size + 
  hkex_derivatives_standard_omd_v2_0.filler_4.size + 
  hkex_derivatives_standard_omd_v2_0.quantity_uint_648.size

-- Display: Calculated Opening Price Message
hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Calculated Opening Price Message
hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Calculated Opening Price: Int64
  index, calculated_opening_price = hkex_derivatives_standard_omd_v2_0.calculated_opening_price.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_derivatives_standard_omd_v2_0.filler_4.dissect(buffer, index, packet, parent)

  -- Quantity Uint 648: Uint64
  index, quantity_uint_648 = hkex_derivatives_standard_omd_v2_0.quantity_uint_648.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Calculated Opening Price Message
hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.calculated_opening_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.calculated_opening_price_message, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Filler 3
hkex_derivatives_standard_omd_v2_0.filler_3 = {}

-- Size: Filler 3
hkex_derivatives_standard_omd_v2_0.filler_3.size = 3

-- Display: Filler 3
hkex_derivatives_standard_omd_v2_0.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
hkex_derivatives_standard_omd_v2_0.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.filler_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Turnover
hkex_derivatives_standard_omd_v2_0.turnover = {}

-- Size: Turnover
hkex_derivatives_standard_omd_v2_0.turnover.size = 8

-- Display: Turnover
hkex_derivatives_standard_omd_v2_0.turnover.display = function(value)
  return "Turnover: "..value
end

-- Dissect: Turnover
hkex_derivatives_standard_omd_v2_0.turnover.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.turnover.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.turnover, range, value, display)

  return offset + length, value
end

-- Trade Report Volume
hkex_derivatives_standard_omd_v2_0.trade_report_volume = {}

-- Size: Trade Report Volume
hkex_derivatives_standard_omd_v2_0.trade_report_volume.size = 8

-- Display: Trade Report Volume
hkex_derivatives_standard_omd_v2_0.trade_report_volume.display = function(value)
  return "Trade Report Volume: "..value
end

-- Dissect: Trade Report Volume
hkex_derivatives_standard_omd_v2_0.trade_report_volume.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.trade_report_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.trade_report_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.trade_report_volume, range, value, display)

  return offset + length, value
end

-- Low Price
hkex_derivatives_standard_omd_v2_0.low_price = {}

-- Size: Low Price
hkex_derivatives_standard_omd_v2_0.low_price.size = 8

-- Display: Low Price
hkex_derivatives_standard_omd_v2_0.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
hkex_derivatives_standard_omd_v2_0.low_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.low_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.low_price, range, value, display)

  return offset + length, value
end

-- High Price
hkex_derivatives_standard_omd_v2_0.high_price = {}

-- Size: High Price
hkex_derivatives_standard_omd_v2_0.high_price.size = 8

-- Display: High Price
hkex_derivatives_standard_omd_v2_0.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
hkex_derivatives_standard_omd_v2_0.high_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.high_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.high_price, range, value, display)

  return offset + length, value
end

-- Open Price
hkex_derivatives_standard_omd_v2_0.open_price = {}

-- Size: Open Price
hkex_derivatives_standard_omd_v2_0.open_price.size = 8

-- Display: Open Price
hkex_derivatives_standard_omd_v2_0.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
hkex_derivatives_standard_omd_v2_0.open_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.open_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.open_price, range, value, display)

  return offset + length, value
end

-- Session
hkex_derivatives_standard_omd_v2_0.session = {}

-- Size: Session
hkex_derivatives_standard_omd_v2_0.session.size = 1

-- Display: Session
hkex_derivatives_standard_omd_v2_0.session.display = function(value)
  if value == 0 then
    return "Session: T Session (0)"
  end
  if value == 1 then
    return "Session: T Plus One Session (1)"
  end

  return "Session: Unknown("..value..")"
end

-- Dissect: Session
hkex_derivatives_standard_omd_v2_0.session.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.session.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- Last Price
hkex_derivatives_standard_omd_v2_0.last_price = {}

-- Size: Last Price
hkex_derivatives_standard_omd_v2_0.last_price.size = 8

-- Display: Last Price
hkex_derivatives_standard_omd_v2_0.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
hkex_derivatives_standard_omd_v2_0.last_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.last_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.last_price, range, value, display)

  return offset + length, value
end

-- Trade Statistics Message
hkex_derivatives_standard_omd_v2_0.trade_statistics_message = {}

-- Size: Trade Statistics Message
hkex_derivatives_standard_omd_v2_0.trade_statistics_message.size =
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.last_price.size + 
  hkex_derivatives_standard_omd_v2_0.session.size + 
  hkex_derivatives_standard_omd_v2_0.open_price.size + 
  hkex_derivatives_standard_omd_v2_0.high_price.size + 
  hkex_derivatives_standard_omd_v2_0.low_price.size + 
  hkex_derivatives_standard_omd_v2_0.trade_report_volume.size + 
  hkex_derivatives_standard_omd_v2_0.turnover.size + 
  hkex_derivatives_standard_omd_v2_0.filler_3.size

-- Display: Trade Statistics Message
hkex_derivatives_standard_omd_v2_0.trade_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Statistics Message
hkex_derivatives_standard_omd_v2_0.trade_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Last Price: Int64
  index, last_price = hkex_derivatives_standard_omd_v2_0.last_price.dissect(buffer, index, packet, parent)

  -- Session: Uint8
  index, session = hkex_derivatives_standard_omd_v2_0.session.dissect(buffer, index, packet, parent)

  -- Open Price: Int64
  index, open_price = hkex_derivatives_standard_omd_v2_0.open_price.dissect(buffer, index, packet, parent)

  -- High Price: Int64
  index, high_price = hkex_derivatives_standard_omd_v2_0.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Int64
  index, low_price = hkex_derivatives_standard_omd_v2_0.low_price.dissect(buffer, index, packet, parent)

  -- Trade Report Volume: Uint64
  index, trade_report_volume = hkex_derivatives_standard_omd_v2_0.trade_report_volume.dissect(buffer, index, packet, parent)

  -- Turnover: Uint64
  index, turnover = hkex_derivatives_standard_omd_v2_0.turnover.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Statistics Message
hkex_derivatives_standard_omd_v2_0.trade_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_statistics_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.trade_statistics_message, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.trade_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.trade_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.trade_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade State
hkex_derivatives_standard_omd_v2_0.trade_state = {}

-- Size: Trade State
hkex_derivatives_standard_omd_v2_0.trade_state.size = 1

-- Display: Trade State
hkex_derivatives_standard_omd_v2_0.trade_state.display = function(value)
  if value == 1 then
    return "Trade State: Cancelled (1)"
  end
  if value == 2 then
    return "Trade State: Amended (2)"
  end

  return "Trade State: Unknown("..value..")"
end

-- Dissect: Trade State
hkex_derivatives_standard_omd_v2_0.trade_state.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.trade_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.trade_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.trade_state, range, value, display)

  return offset + length, value
end

-- Amendment Execution Time
hkex_derivatives_standard_omd_v2_0.amendment_execution_time = {}

-- Size: Amendment Execution Time
hkex_derivatives_standard_omd_v2_0.amendment_execution_time.size = 8

-- Display: Amendment Execution Time
hkex_derivatives_standard_omd_v2_0.amendment_execution_time.display = function(value)
  return "Amendment Execution Time: "..value
end

-- Dissect: Amendment Execution Time
hkex_derivatives_standard_omd_v2_0.amendment_execution_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.amendment_execution_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.amendment_execution_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.amendment_execution_time, range, value, display)

  return offset + length, value
end

-- Quantity Uint 324
hkex_derivatives_standard_omd_v2_0.quantity_uint_324 = {}

-- Size: Quantity Uint 324
hkex_derivatives_standard_omd_v2_0.quantity_uint_324.size = 4

-- Display: Quantity Uint 324
hkex_derivatives_standard_omd_v2_0.quantity_uint_324.display = function(value)
  return "Quantity Uint 324: "..value
end

-- Dissect: Quantity Uint 324
hkex_derivatives_standard_omd_v2_0.quantity_uint_324.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.quantity_uint_324.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.quantity_uint_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.quantity_uint_324, range, value, display)

  return offset + length, value
end

-- Price
hkex_derivatives_standard_omd_v2_0.price = {}

-- Size: Price
hkex_derivatives_standard_omd_v2_0.price.size = 8

-- Display: Price
hkex_derivatives_standard_omd_v2_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
hkex_derivatives_standard_omd_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Trade Id
hkex_derivatives_standard_omd_v2_0.trade_id = {}

-- Size: Trade Id
hkex_derivatives_standard_omd_v2_0.trade_id.size = 8

-- Display: Trade Id
hkex_derivatives_standard_omd_v2_0.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
hkex_derivatives_standard_omd_v2_0.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Amendment Message
hkex_derivatives_standard_omd_v2_0.trade_amendment_message = {}

-- Size: Trade Amendment Message
hkex_derivatives_standard_omd_v2_0.trade_amendment_message.size =
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.trade_id.size + 
  hkex_derivatives_standard_omd_v2_0.price.size + 
  hkex_derivatives_standard_omd_v2_0.quantity_uint_324.size + 
  hkex_derivatives_standard_omd_v2_0.amendment_execution_time.size + 
  hkex_derivatives_standard_omd_v2_0.trade_state.size + 
  hkex_derivatives_standard_omd_v2_0.filler_3.size

-- Display: Trade Amendment Message
hkex_derivatives_standard_omd_v2_0.trade_amendment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Amendment Message
hkex_derivatives_standard_omd_v2_0.trade_amendment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Uint64
  index, trade_id = hkex_derivatives_standard_omd_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = hkex_derivatives_standard_omd_v2_0.price.dissect(buffer, index, packet, parent)

  -- Quantity Uint 324: Uint32
  index, quantity_uint_324 = hkex_derivatives_standard_omd_v2_0.quantity_uint_324.dissect(buffer, index, packet, parent)

  -- Amendment Execution Time: Uint64
  index, amendment_execution_time = hkex_derivatives_standard_omd_v2_0.amendment_execution_time.dissect(buffer, index, packet, parent)

  -- Trade State: Uint8
  index, trade_state = hkex_derivatives_standard_omd_v2_0.trade_state.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Amendment Message
hkex_derivatives_standard_omd_v2_0.trade_amendment_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_amendment_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.trade_amendment_message, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.trade_amendment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.trade_amendment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.trade_amendment_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Time
hkex_derivatives_standard_omd_v2_0.trade_time = {}

-- Size: Trade Time
hkex_derivatives_standard_omd_v2_0.trade_time.size = 8

-- Display: Trade Time
hkex_derivatives_standard_omd_v2_0.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
hkex_derivatives_standard_omd_v2_0.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trade Condition
hkex_derivatives_standard_omd_v2_0.trade_condition = {}

-- Size: Trade Condition
hkex_derivatives_standard_omd_v2_0.trade_condition.size = 1

-- Display: Trade Condition
hkex_derivatives_standard_omd_v2_0.trade_condition.display = function(value)
  if value == 0 then
    return "Trade Condition: Na (0)"
  end
  if value == 1 then
    return "Trade Condition: Explicit Order Vs Explicit Order (1)"
  end
  if value == 2 then
    return "Trade Condition: Explicit Order Vs Implied Order (2)"
  end
  if value == 3 then
    return "Trade Condition: Implied Order Vs Explicit Order (3)"
  end
  if value == 4 then
    return "Trade Condition: Implied Order Vs Implied Order (4)"
  end
  if value == 5 then
    return "Trade Condition: Exchange Reported On Behalf Trade (5)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
hkex_derivatives_standard_omd_v2_0.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.trade_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Sub Type
hkex_derivatives_standard_omd_v2_0.trade_sub_type = {}

-- Size: Trade Sub Type
hkex_derivatives_standard_omd_v2_0.trade_sub_type.size = 1

-- Display: Trade Sub Type
hkex_derivatives_standard_omd_v2_0.trade_sub_type.display = function(value)
  if value == 0 then
    return "Trade Sub Type: Continuous Match (0)"
  end
  if value == 1 then
    return "Trade Sub Type: Opening Uncross (1)"
  end
  if value == 2 then
    return "Trade Sub Type: Block Trade (2)"
  end

  return "Trade Sub Type: Unknown("..value..")"
end

-- Dissect: Trade Sub Type
hkex_derivatives_standard_omd_v2_0.trade_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.trade_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.trade_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.trade_sub_type, range, value, display)

  return offset + length, value
end

-- Side
hkex_derivatives_standard_omd_v2_0.side = {}

-- Size: Side
hkex_derivatives_standard_omd_v2_0.side.size = 1

-- Display: Side
hkex_derivatives_standard_omd_v2_0.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 1 then
    return "Side: Bid (1)"
  end
  if value == 2 then
    return "Side: Offer (2)"
  end
  if value == 0 then
    return "Side: Bid (0)"
  end
  if value == 1 then
    return "Side: Offer (1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
hkex_derivatives_standard_omd_v2_0.side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.side, range, value, display)

  return offset + length, value
end

-- Match Id
hkex_derivatives_standard_omd_v2_0.match_id = {}

-- Size: Match Id
hkex_derivatives_standard_omd_v2_0.match_id.size = 8

-- Display: Match Id
hkex_derivatives_standard_omd_v2_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
hkex_derivatives_standard_omd_v2_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Order Id
hkex_derivatives_standard_omd_v2_0.order_id = {}

-- Size: Order Id
hkex_derivatives_standard_omd_v2_0.order_id.size = 8

-- Display: Order Id
hkex_derivatives_standard_omd_v2_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
hkex_derivatives_standard_omd_v2_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade
hkex_derivatives_standard_omd_v2_0.trade = {}

-- Size: Trade
hkex_derivatives_standard_omd_v2_0.trade.size =
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.order_id.size + 
  hkex_derivatives_standard_omd_v2_0.price.size + 
  hkex_derivatives_standard_omd_v2_0.trade_id.size + 
  hkex_derivatives_standard_omd_v2_0.match_id.size + 
  hkex_derivatives_standard_omd_v2_0.side.size + 
  hkex_derivatives_standard_omd_v2_0.trade_sub_type.size + 
  hkex_derivatives_standard_omd_v2_0.trade_condition.size + 
  hkex_derivatives_standard_omd_v2_0.filler_3.size + 
  hkex_derivatives_standard_omd_v2_0.quantity_uint_324.size + 
  hkex_derivatives_standard_omd_v2_0.trade_time.size

-- Display: Trade
hkex_derivatives_standard_omd_v2_0.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
hkex_derivatives_standard_omd_v2_0.trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_derivatives_standard_omd_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = hkex_derivatives_standard_omd_v2_0.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Uint64
  index, trade_id = hkex_derivatives_standard_omd_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Match Id: Uint64
  index, match_id = hkex_derivatives_standard_omd_v2_0.match_id.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_derivatives_standard_omd_v2_0.side.dissect(buffer, index, packet, parent)

  -- Trade Sub Type: Uint8
  index, trade_sub_type = hkex_derivatives_standard_omd_v2_0.trade_sub_type.dissect(buffer, index, packet, parent)

  -- Trade Condition: Uint8
  index, trade_condition = hkex_derivatives_standard_omd_v2_0.trade_condition.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  -- Quantity Uint 324: Uint32
  index, quantity_uint_324 = hkex_derivatives_standard_omd_v2_0.quantity_uint_324.dissect(buffer, index, packet, parent)

  -- Trade Time: Uint64
  index, trade_time = hkex_derivatives_standard_omd_v2_0.trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade
hkex_derivatives_standard_omd_v2_0.trade.dissect = function(buffer, offset, packet, parent)
  if show.trade then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.trade, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.trade.fields(buffer, offset, packet, parent)
  end
end

-- Filler 1
hkex_derivatives_standard_omd_v2_0.filler_1 = {}

-- Size: Filler 1
hkex_derivatives_standard_omd_v2_0.filler_1.size = 1

-- Display: Filler 1
hkex_derivatives_standard_omd_v2_0.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
hkex_derivatives_standard_omd_v2_0.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Implied Quantity
hkex_derivatives_standard_omd_v2_0.implied_quantity = {}

-- Size: Implied Quantity
hkex_derivatives_standard_omd_v2_0.implied_quantity.size = 8

-- Display: Implied Quantity
hkex_derivatives_standard_omd_v2_0.implied_quantity.display = function(value)
  return "Implied Quantity: "..value
end

-- Dissect: Implied Quantity
hkex_derivatives_standard_omd_v2_0.implied_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.implied_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.implied_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.implied_quantity, range, value, display)

  return offset + length, value
end

-- Implied Price
hkex_derivatives_standard_omd_v2_0.implied_price = {}

-- Size: Implied Price
hkex_derivatives_standard_omd_v2_0.implied_price.size = 8

-- Display: Implied Price
hkex_derivatives_standard_omd_v2_0.implied_price.display = function(value)
  return "Implied Price: "..value
end

-- Dissect: Implied Price
hkex_derivatives_standard_omd_v2_0.implied_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.implied_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.implied_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.implied_price, range, value, display)

  return offset + length, value
end

-- Aggregate Implied Order
hkex_derivatives_standard_omd_v2_0.aggregate_implied_order = {}

-- Size: Aggregate Implied Order
hkex_derivatives_standard_omd_v2_0.aggregate_implied_order.size =
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.implied_price.size + 
  hkex_derivatives_standard_omd_v2_0.implied_quantity.size + 
  hkex_derivatives_standard_omd_v2_0.side.size + 
  hkex_derivatives_standard_omd_v2_0.filler_1.size

-- Display: Aggregate Implied Order
hkex_derivatives_standard_omd_v2_0.aggregate_implied_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aggregate Implied Order
hkex_derivatives_standard_omd_v2_0.aggregate_implied_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Implied Price: Int64
  index, implied_price = hkex_derivatives_standard_omd_v2_0.implied_price.dissect(buffer, index, packet, parent)

  -- Implied Quantity: Uint64
  index, implied_quantity = hkex_derivatives_standard_omd_v2_0.implied_quantity.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_derivatives_standard_omd_v2_0.side.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_standard_omd_v2_0.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aggregate Implied Order
hkex_derivatives_standard_omd_v2_0.aggregate_implied_order.dissect = function(buffer, offset, packet, parent)
  if show.aggregate_implied_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.aggregate_implied_order, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.aggregate_implied_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.aggregate_implied_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.aggregate_implied_order.fields(buffer, offset, packet, parent)
  end
end

-- Bid Ask Flag
hkex_derivatives_standard_omd_v2_0.bid_ask_flag = {}

-- Size: Bid Ask Flag
hkex_derivatives_standard_omd_v2_0.bid_ask_flag.size = 1

-- Display: Bid Ask Flag
hkex_derivatives_standard_omd_v2_0.bid_ask_flag.display = function(value)
  if value == 0 then
    return "Bid Ask Flag: Bid (0)"
  end
  if value == 1 then
    return "Bid Ask Flag: Ask (1)"
  end
  if value == 2 then
    return "Bid Ask Flag: Both (2)"
  end

  return "Bid Ask Flag: Unknown("..value..")"
end

-- Dissect: Bid Ask Flag
hkex_derivatives_standard_omd_v2_0.bid_ask_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.bid_ask_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.bid_ask_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.bid_ask_flag, range, value, display)

  return offset + length, value
end

-- Quantity Int 324
hkex_derivatives_standard_omd_v2_0.quantity_int_324 = {}

-- Size: Quantity Int 324
hkex_derivatives_standard_omd_v2_0.quantity_int_324.size = 4

-- Display: Quantity Int 324
hkex_derivatives_standard_omd_v2_0.quantity_int_324.display = function(value)
  return "Quantity Int 324: "..value
end

-- Dissect: Quantity Int 324
hkex_derivatives_standard_omd_v2_0.quantity_int_324.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.quantity_int_324.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_standard_omd_v2_0.quantity_int_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.quantity_int_324, range, value, display)

  return offset + length, value
end

-- Quote Request
hkex_derivatives_standard_omd_v2_0.quote_request = {}

-- Size: Quote Request
hkex_derivatives_standard_omd_v2_0.quote_request.size =
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.quantity_int_324.size + 
  hkex_derivatives_standard_omd_v2_0.bid_ask_flag.size + 
  hkex_derivatives_standard_omd_v2_0.filler_3.size

-- Display: Quote Request
hkex_derivatives_standard_omd_v2_0.quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
hkex_derivatives_standard_omd_v2_0.quote_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Quantity Int 324: Int32
  index, quantity_int_324 = hkex_derivatives_standard_omd_v2_0.quantity_int_324.dissect(buffer, index, packet, parent)

  -- Bid Ask Flag: Uint8
  index, bid_ask_flag = hkex_derivatives_standard_omd_v2_0.bid_ask_flag.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
hkex_derivatives_standard_omd_v2_0.quote_request.dissect = function(buffer, offset, packet, parent)
  if show.quote_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.quote_request, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.quote_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.quote_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.quote_request.fields(buffer, offset, packet, parent)
  end
end

-- Update Action
hkex_derivatives_standard_omd_v2_0.update_action = {}

-- Size: Update Action
hkex_derivatives_standard_omd_v2_0.update_action.size = 1

-- Display: Update Action
hkex_derivatives_standard_omd_v2_0.update_action.display = function(value)
  if value == 0 then
    return "Update Action: New (0)"
  end
  if value == 1 then
    return "Update Action: Change (1)"
  end
  if value == 2 then
    return "Update Action: Delete (2)"
  end
  if value == 74 then
    return "Update Action: Clear (74)"
  end

  return "Update Action: Unknown("..value..")"
end

-- Dissect: Update Action
hkex_derivatives_standard_omd_v2_0.update_action.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.update_action, range, value, display)

  return offset + length, value
end

-- Price Level
hkex_derivatives_standard_omd_v2_0.price_level = {}

-- Size: Price Level
hkex_derivatives_standard_omd_v2_0.price_level.size = 1

-- Display: Price Level
hkex_derivatives_standard_omd_v2_0.price_level.display = function(value)
  return "Price Level: "..value
end

-- Dissect: Price Level
hkex_derivatives_standard_omd_v2_0.price_level.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.price_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.price_level, range, value, display)

  return offset + length, value
end

-- Number Of Orders
hkex_derivatives_standard_omd_v2_0.number_of_orders = {}

-- Size: Number Of Orders
hkex_derivatives_standard_omd_v2_0.number_of_orders.size = 4

-- Display: Number Of Orders
hkex_derivatives_standard_omd_v2_0.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
hkex_derivatives_standard_omd_v2_0.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Aggregate Quantity
hkex_derivatives_standard_omd_v2_0.aggregate_quantity = {}

-- Size: Aggregate Quantity
hkex_derivatives_standard_omd_v2_0.aggregate_quantity.size = 8

-- Display: Aggregate Quantity
hkex_derivatives_standard_omd_v2_0.aggregate_quantity.display = function(value)
  return "Aggregate Quantity: "..value
end

-- Dissect: Aggregate Quantity
hkex_derivatives_standard_omd_v2_0.aggregate_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.aggregate_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.aggregate_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.aggregate_quantity, range, value, display)

  return offset + length, value
end

-- Book Entry
hkex_derivatives_standard_omd_v2_0.book_entry = {}

-- Size: Book Entry
hkex_derivatives_standard_omd_v2_0.book_entry.size =
  hkex_derivatives_standard_omd_v2_0.aggregate_quantity.size + 
  hkex_derivatives_standard_omd_v2_0.price.size + 
  hkex_derivatives_standard_omd_v2_0.number_of_orders.size + 
  hkex_derivatives_standard_omd_v2_0.side.size + 
  hkex_derivatives_standard_omd_v2_0.filler_1.size + 
  hkex_derivatives_standard_omd_v2_0.price_level.size + 
  hkex_derivatives_standard_omd_v2_0.update_action.size

-- Display: Book Entry
hkex_derivatives_standard_omd_v2_0.book_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Entry
hkex_derivatives_standard_omd_v2_0.book_entry.fields = function(buffer, offset, packet, parent, book_entry_index)
  local index = offset

  -- Implicit Book Entry Index
  if book_entry_index ~= nil then
    local iteration = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.book_entry_index, book_entry_index)
    iteration:set_generated()
  end

  -- Aggregate Quantity: Uint64
  index, aggregate_quantity = hkex_derivatives_standard_omd_v2_0.aggregate_quantity.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = hkex_derivatives_standard_omd_v2_0.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Uint32
  index, number_of_orders = hkex_derivatives_standard_omd_v2_0.number_of_orders.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_derivatives_standard_omd_v2_0.side.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_standard_omd_v2_0.filler_1.dissect(buffer, index, packet, parent)

  -- Price Level: Uint8
  index, price_level = hkex_derivatives_standard_omd_v2_0.price_level.dissect(buffer, index, packet, parent)

  -- Update Action: Uint8
  index, update_action = hkex_derivatives_standard_omd_v2_0.update_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Entry
hkex_derivatives_standard_omd_v2_0.book_entry.dissect = function(buffer, offset, packet, parent, book_entry_index)
  if show.book_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.book_entry, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.book_entry.fields(buffer, offset, packet, parent, book_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.book_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.book_entry.fields(buffer, offset, packet, parent, book_entry_index)
  end
end

-- No Entries
hkex_derivatives_standard_omd_v2_0.no_entries = {}

-- Size: No Entries
hkex_derivatives_standard_omd_v2_0.no_entries.size = 1

-- Display: No Entries
hkex_derivatives_standard_omd_v2_0.no_entries.display = function(value)
  return "No Entries: "..value
end

-- Dissect: No Entries
hkex_derivatives_standard_omd_v2_0.no_entries.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.no_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.no_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.no_entries, range, value, display)

  return offset + length, value
end

-- Aggregate Order Book Update Message
hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message = {}

-- Calculate size of: Aggregate Order Book Update Message
hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_derivatives_standard_omd_v2_0.order_book_id.size

  index = index + hkex_derivatives_standard_omd_v2_0.filler_3.size

  index = index + hkex_derivatives_standard_omd_v2_0.no_entries.size

  -- Calculate field size from count
  local book_entry_count = buffer(offset + index - 1, 1):le_uint()
  index = index + book_entry_count * 24

  return index
end

-- Display: Aggregate Order Book Update Message
hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aggregate Order Book Update Message
hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  -- No Entries: Uint8
  index, no_entries = hkex_derivatives_standard_omd_v2_0.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Book Entry
  for book_entry_index = 1, no_entries do
    index, book_entry = hkex_derivatives_standard_omd_v2_0.book_entry.dissect(buffer, index, packet, parent, book_entry_index)
  end

  return index
end

-- Dissect: Aggregate Order Book Update Message
hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.aggregate_order_book_update_message then
    local length = hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.aggregate_order_book_update_message, range, display)
  end

  return hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message.fields(buffer, offset, packet, parent)
end

-- Filler 10
hkex_derivatives_standard_omd_v2_0.filler_10 = {}

-- Size: Filler 10
hkex_derivatives_standard_omd_v2_0.filler_10.size = 10

-- Display: Filler 10
hkex_derivatives_standard_omd_v2_0.filler_10.display = function(value)
  return "Filler 10: "..value
end

-- Dissect: Filler 10
hkex_derivatives_standard_omd_v2_0.filler_10.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.filler_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.filler_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.filler_10, range, value, display)

  return offset + length, value
end

-- Instrument Class Key
hkex_derivatives_standard_omd_v2_0.instrument_class_key = {}

-- Size: Instrument Class Key
hkex_derivatives_standard_omd_v2_0.instrument_class_key.size = 4

-- Display: Instrument Class Key
hkex_derivatives_standard_omd_v2_0.instrument_class_key.display = function(value)
  return "Instrument Class Key: "..value
end

-- Dissect: Instrument Class Key
hkex_derivatives_standard_omd_v2_0.instrument_class_key.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.instrument_class_key.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.instrument_class_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_class_key, range, value, display)

  return offset + length, value
end

-- Thm Trigger
hkex_derivatives_standard_omd_v2_0.thm_trigger = {}

-- Size: Thm Trigger
hkex_derivatives_standard_omd_v2_0.thm_trigger.size =
  hkex_derivatives_standard_omd_v2_0.instrument_class_key.size + 
  hkex_derivatives_standard_omd_v2_0.filler_10.size

-- Display: Thm Trigger
hkex_derivatives_standard_omd_v2_0.thm_trigger.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Thm Trigger
hkex_derivatives_standard_omd_v2_0.thm_trigger.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Class Key: Uint32
  index, instrument_class_key = hkex_derivatives_standard_omd_v2_0.instrument_class_key.dissect(buffer, index, packet, parent)

  -- Filler 10: String
  index, filler_10 = hkex_derivatives_standard_omd_v2_0.filler_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Thm Trigger
hkex_derivatives_standard_omd_v2_0.thm_trigger.dissect = function(buffer, offset, packet, parent)
  if show.thm_trigger then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.thm_trigger, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.thm_trigger.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.thm_trigger.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.thm_trigger.fields(buffer, offset, packet, parent)
  end
end

-- Cooling Off End Time
hkex_derivatives_standard_omd_v2_0.cooling_off_end_time = {}

-- Size: Cooling Off End Time
hkex_derivatives_standard_omd_v2_0.cooling_off_end_time.size = 8

-- Display: Cooling Off End Time
hkex_derivatives_standard_omd_v2_0.cooling_off_end_time.display = function(value)
  return "Cooling Off End Time: "..value
end

-- Dissect: Cooling Off End Time
hkex_derivatives_standard_omd_v2_0.cooling_off_end_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.cooling_off_end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.cooling_off_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.cooling_off_end_time, range, value, display)

  return offset + length, value
end

-- Cooling Off Start Time
hkex_derivatives_standard_omd_v2_0.cooling_off_start_time = {}

-- Size: Cooling Off Start Time
hkex_derivatives_standard_omd_v2_0.cooling_off_start_time.size = 8

-- Display: Cooling Off Start Time
hkex_derivatives_standard_omd_v2_0.cooling_off_start_time.display = function(value)
  return "Cooling Off Start Time: "..value
end

-- Dissect: Cooling Off Start Time
hkex_derivatives_standard_omd_v2_0.cooling_off_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.cooling_off_start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.cooling_off_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.cooling_off_start_time, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_derivatives_standard_omd_v2_0.msg_type = {}

-- Size: Msg Type
hkex_derivatives_standard_omd_v2_0.msg_type.size = 2

-- Display: Msg Type
hkex_derivatives_standard_omd_v2_0.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset (100)"
  end
  if value == 105 then
    return "Msg Type: Disaster Recovery Signal Message (105)"
  end
  if value == 101 then
    return "Msg Type: Logon (101)"
  end
  if value == 102 then
    return "Msg Type: Logon Response (102)"
  end
  if value == 201 then
    return "Msg Type: Retransmission Request (201)"
  end
  if value == 202 then
    return "Msg Type: Retransmission Response (202)"
  end
  if value == 203 then
    return "Msg Type: Refresh Complete (203)"
  end
  if value == 301 then
    return "Msg Type: Commodity Definition (301)"
  end
  if value == 302 then
    return "Msg Type: Class Definition (302)"
  end
  if value == 304 then
    return "Msg Type: Instrument Definition (304)"
  end
  if value == 305 then
    return "Msg Type: Combination Definition (305)"
  end
  if value == 320 then
    return "Msg Type: Market Status (320)"
  end
  if value == 321 then
    return "Msg Type: Instrument Status (321)"
  end
  if value == 322 then
    return "Msg Type: Commodity And Class Status (322)"
  end
  if value == 324 then
    return "Msg Type: Vcm Trigger (324)"
  end
  if value == 325 then
    return "Msg Type: Vcm End (325)"
  end
  if value == 326 then
    return "Msg Type: Thm Trigger (326)"
  end
  if value == 353 then
    return "Msg Type: Aggregate Order Book Update Message (353)"
  end
  if value == 336 then
    return "Msg Type: Quote Request (336)"
  end
  if value == 337 then
    return "Msg Type: Aggregate Implied Order (337)"
  end
  if value == 350 then
    return "Msg Type: Trade (350)"
  end
  if value == 356 then
    return "Msg Type: Trade Amendment Message (356)"
  end
  if value == 360 then
    return "Msg Type: Trade Statistics Message (360)"
  end
  if value == 364 then
    return "Msg Type: Calculated Opening Price Message (364)"
  end
  if value == 323 then
    return "Msg Type: Market Alert Message (323)"
  end
  if value == 366 then
    return "Msg Type: Open Interest Message (366)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_derivatives_standard_omd_v2_0.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_derivatives_standard_omd_v2_0.msg_size = {}

-- Size: Msg Size
hkex_derivatives_standard_omd_v2_0.msg_size.size = 2

-- Display: Msg Size
hkex_derivatives_standard_omd_v2_0.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_derivatives_standard_omd_v2_0.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Vcm End
hkex_derivatives_standard_omd_v2_0.vcm_end = {}

-- Size: Vcm End
hkex_derivatives_standard_omd_v2_0.vcm_end.size =
  hkex_derivatives_standard_omd_v2_0.msg_size.size + 
  hkex_derivatives_standard_omd_v2_0.msg_type.size + 
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.cooling_off_start_time.size + 
  hkex_derivatives_standard_omd_v2_0.cooling_off_end_time.size

-- Display: Vcm End
hkex_derivatives_standard_omd_v2_0.vcm_end.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vcm End
hkex_derivatives_standard_omd_v2_0.vcm_end.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = hkex_derivatives_standard_omd_v2_0.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = hkex_derivatives_standard_omd_v2_0.msg_type.dissect(buffer, index, packet, parent)

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Cooling Off Start Time: Uint64
  index, cooling_off_start_time = hkex_derivatives_standard_omd_v2_0.cooling_off_start_time.dissect(buffer, index, packet, parent)

  -- Cooling Off End Time: Uint64
  index, cooling_off_end_time = hkex_derivatives_standard_omd_v2_0.cooling_off_end_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vcm End
hkex_derivatives_standard_omd_v2_0.vcm_end.dissect = function(buffer, offset, packet, parent)
  if show.vcm_end then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_end, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.vcm_end.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.vcm_end.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.vcm_end.fields(buffer, offset, packet, parent)
  end
end

-- Filler 2
hkex_derivatives_standard_omd_v2_0.filler_2 = {}

-- Size: Filler 2
hkex_derivatives_standard_omd_v2_0.filler_2.size = 2

-- Display: Filler 2
hkex_derivatives_standard_omd_v2_0.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
hkex_derivatives_standard_omd_v2_0.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.filler_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Vcm Upper Price
hkex_derivatives_standard_omd_v2_0.vcm_upper_price = {}

-- Size: Vcm Upper Price
hkex_derivatives_standard_omd_v2_0.vcm_upper_price.size = 8

-- Display: Vcm Upper Price
hkex_derivatives_standard_omd_v2_0.vcm_upper_price.display = function(value)
  return "Vcm Upper Price: "..value
end

-- Dissect: Vcm Upper Price
hkex_derivatives_standard_omd_v2_0.vcm_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.vcm_upper_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.vcm_upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_upper_price, range, value, display)

  return offset + length, value
end

-- Vcm Lower Price
hkex_derivatives_standard_omd_v2_0.vcm_lower_price = {}

-- Size: Vcm Lower Price
hkex_derivatives_standard_omd_v2_0.vcm_lower_price.size = 8

-- Display: Vcm Lower Price
hkex_derivatives_standard_omd_v2_0.vcm_lower_price.display = function(value)
  return "Vcm Lower Price: "..value
end

-- Dissect: Vcm Lower Price
hkex_derivatives_standard_omd_v2_0.vcm_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.vcm_lower_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.vcm_lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_lower_price, range, value, display)

  return offset + length, value
end

-- Vcm Reference Price
hkex_derivatives_standard_omd_v2_0.vcm_reference_price = {}

-- Size: Vcm Reference Price
hkex_derivatives_standard_omd_v2_0.vcm_reference_price.size = 8

-- Display: Vcm Reference Price
hkex_derivatives_standard_omd_v2_0.vcm_reference_price.display = function(value)
  return "Vcm Reference Price: "..value
end

-- Dissect: Vcm Reference Price
hkex_derivatives_standard_omd_v2_0.vcm_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.vcm_reference_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.vcm_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_reference_price, range, value, display)

  return offset + length, value
end

-- Vcm Trigger
hkex_derivatives_standard_omd_v2_0.vcm_trigger = {}

-- Size: Vcm Trigger
hkex_derivatives_standard_omd_v2_0.vcm_trigger.size =
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.cooling_off_start_time.size + 
  hkex_derivatives_standard_omd_v2_0.cooling_off_end_time.size + 
  hkex_derivatives_standard_omd_v2_0.vcm_reference_price.size + 
  hkex_derivatives_standard_omd_v2_0.vcm_lower_price.size + 
  hkex_derivatives_standard_omd_v2_0.vcm_upper_price.size + 
  hkex_derivatives_standard_omd_v2_0.filler_2.size

-- Display: Vcm Trigger
hkex_derivatives_standard_omd_v2_0.vcm_trigger.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vcm Trigger
hkex_derivatives_standard_omd_v2_0.vcm_trigger.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Cooling Off Start Time: Uint64
  index, cooling_off_start_time = hkex_derivatives_standard_omd_v2_0.cooling_off_start_time.dissect(buffer, index, packet, parent)

  -- Cooling Off End Time: Uint64
  index, cooling_off_end_time = hkex_derivatives_standard_omd_v2_0.cooling_off_end_time.dissect(buffer, index, packet, parent)

  -- Vcm Reference Price: Int64
  index, vcm_reference_price = hkex_derivatives_standard_omd_v2_0.vcm_reference_price.dissect(buffer, index, packet, parent)

  -- Vcm Lower Price: Int64
  index, vcm_lower_price = hkex_derivatives_standard_omd_v2_0.vcm_lower_price.dissect(buffer, index, packet, parent)

  -- Vcm Upper Price: Int64
  index, vcm_upper_price = hkex_derivatives_standard_omd_v2_0.vcm_upper_price.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_standard_omd_v2_0.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vcm Trigger
hkex_derivatives_standard_omd_v2_0.vcm_trigger.dissect = function(buffer, offset, packet, parent)
  if show.vcm_trigger then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_trigger, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.vcm_trigger.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.vcm_trigger.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.vcm_trigger.fields(buffer, offset, packet, parent)
  end
end

-- Suspended
hkex_derivatives_standard_omd_v2_0.suspended = {}

-- Size: Suspended
hkex_derivatives_standard_omd_v2_0.suspended.size = 1

-- Display: Suspended
hkex_derivatives_standard_omd_v2_0.suspended.display = function(value)
  if value == "Y" then
    return "Suspended: Yes (Y)"
  end
  if value == "N" then
    return "Suspended: No (N)"
  end

  return "Suspended: Unknown("..value..")"
end

-- Dissect: Suspended
hkex_derivatives_standard_omd_v2_0.suspended.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.suspended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.suspended, range, value, display)

  return offset + length, value
end

-- Commodity Code
hkex_derivatives_standard_omd_v2_0.commodity_code = {}

-- Size: Commodity Code
hkex_derivatives_standard_omd_v2_0.commodity_code.size = 4

-- Display: Commodity Code
hkex_derivatives_standard_omd_v2_0.commodity_code.display = function(value)
  return "Commodity Code: "..value
end

-- Dissect: Commodity Code
hkex_derivatives_standard_omd_v2_0.commodity_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.commodity_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.commodity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_code, range, value, display)

  return offset + length, value
end

-- Commodity And Class Status
hkex_derivatives_standard_omd_v2_0.commodity_and_class_status = {}

-- Size: Commodity And Class Status
hkex_derivatives_standard_omd_v2_0.commodity_and_class_status.size =
  hkex_derivatives_standard_omd_v2_0.commodity_code.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_class_key.size + 
  hkex_derivatives_standard_omd_v2_0.suspended.size + 
  hkex_derivatives_standard_omd_v2_0.filler_1.size

-- Display: Commodity And Class Status
hkex_derivatives_standard_omd_v2_0.commodity_and_class_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity And Class Status
hkex_derivatives_standard_omd_v2_0.commodity_and_class_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Commodity Code: Uint32
  index, commodity_code = hkex_derivatives_standard_omd_v2_0.commodity_code.dissect(buffer, index, packet, parent)

  -- Instrument Class Key: Uint32
  index, instrument_class_key = hkex_derivatives_standard_omd_v2_0.instrument_class_key.dissect(buffer, index, packet, parent)

  -- Suspended: String
  index, suspended = hkex_derivatives_standard_omd_v2_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_standard_omd_v2_0.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity And Class Status
hkex_derivatives_standard_omd_v2_0.commodity_and_class_status.dissect = function(buffer, offset, packet, parent)
  if show.commodity_and_class_status then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_and_class_status, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.commodity_and_class_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.commodity_and_class_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.commodity_and_class_status.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Uint 81
hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81 = {}

-- Size: Instrument Status Uint 81
hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81.size = 1

-- Display: Instrument Status Uint 81
hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81.display = function(value)
  return "Instrument Status Uint 81: "..value
end

-- Dissect: Instrument Status Uint 81
hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_status_uint_81, range, value, display)

  return offset + length, value
end

-- Suspension Indicator
hkex_derivatives_standard_omd_v2_0.suspension_indicator = {}

-- Size: Suspension Indicator
hkex_derivatives_standard_omd_v2_0.suspension_indicator.size = 1

-- Display: Suspension Indicator
hkex_derivatives_standard_omd_v2_0.suspension_indicator.display = function(value)
  if value == 1 then
    return "Suspension Indicator: Suspended For Trading (1)"
  end
  if value == 2 then
    return "Suspension Indicator: Not Suspended (2)"
  end

  return "Suspension Indicator: Unknown("..value..")"
end

-- Dissect: Suspension Indicator
hkex_derivatives_standard_omd_v2_0.suspension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.suspension_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.suspension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.suspension_indicator, range, value, display)

  return offset + length, value
end

-- Instrument Status
hkex_derivatives_standard_omd_v2_0.instrument_status = {}

-- Size: Instrument Status
hkex_derivatives_standard_omd_v2_0.instrument_status.size =
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.suspension_indicator.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81.size + 
  hkex_derivatives_standard_omd_v2_0.filler_2.size

-- Display: Instrument Status
hkex_derivatives_standard_omd_v2_0.instrument_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status
hkex_derivatives_standard_omd_v2_0.instrument_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Suspension Indicator: Uint8
  index, suspension_indicator = hkex_derivatives_standard_omd_v2_0.suspension_indicator.dissect(buffer, index, packet, parent)

  -- Instrument Status Uint 81: Uint8
  index, instrument_status_uint_81 = hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_standard_omd_v2_0.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status
hkex_derivatives_standard_omd_v2_0.instrument_status.dissect = function(buffer, offset, packet, parent)
  if show.instrument_status then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_status, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.instrument_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.instrument_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.instrument_status.fields(buffer, offset, packet, parent)
  end
end

-- State
hkex_derivatives_standard_omd_v2_0.state = {}

-- Size: State
hkex_derivatives_standard_omd_v2_0.state.size = 2

-- Display: State
hkex_derivatives_standard_omd_v2_0.state.display = function(value)
  return "State: "..value
end

-- Dissect: State
hkex_derivatives_standard_omd_v2_0.state.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.state, range, value, display)

  return offset + length, value
end

-- Planned Start Time
hkex_derivatives_standard_omd_v2_0.planned_start_time = {}

-- Size: Planned Start Time
hkex_derivatives_standard_omd_v2_0.planned_start_time.size = 8

-- Display: Planned Start Time
hkex_derivatives_standard_omd_v2_0.planned_start_time.display = function(value)
  return "Planned Start Time: "..value
end

-- Dissect: Planned Start Time
hkex_derivatives_standard_omd_v2_0.planned_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.planned_start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.planned_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.planned_start_time, range, value, display)

  return offset + length, value
end

-- Actual Start Time
hkex_derivatives_standard_omd_v2_0.actual_start_time = {}

-- Size: Actual Start Time
hkex_derivatives_standard_omd_v2_0.actual_start_time.size = 8

-- Display: Actual Start Time
hkex_derivatives_standard_omd_v2_0.actual_start_time.display = function(value)
  return "Actual Start Time: "..value
end

-- Dissect: Actual Start Time
hkex_derivatives_standard_omd_v2_0.actual_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.actual_start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.actual_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.actual_start_time, range, value, display)

  return offset + length, value
end

-- Instrument Type Key
hkex_derivatives_standard_omd_v2_0.instrument_type_key = {}

-- Size: Instrument Type Key
hkex_derivatives_standard_omd_v2_0.instrument_type_key.size = 4

-- Display: Instrument Type Key
hkex_derivatives_standard_omd_v2_0.instrument_type_key.display = function(value)
  return "Instrument Type Key: "..value
end

-- Dissect: Instrument Type Key
hkex_derivatives_standard_omd_v2_0.instrument_type_key.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.instrument_type_key.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.instrument_type_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_type_key, range, value, display)

  return offset + length, value
end

-- Market Uint 164
hkex_derivatives_standard_omd_v2_0.market_uint_164 = {}

-- Size: Market Uint 164
hkex_derivatives_standard_omd_v2_0.market_uint_164.size = 4

-- Display: Market Uint 164
hkex_derivatives_standard_omd_v2_0.market_uint_164.display = function(value)
  return "Market Uint 164: "..value
end

-- Dissect: Market Uint 164
hkex_derivatives_standard_omd_v2_0.market_uint_164.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.market_uint_164.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.market_uint_164.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.market_uint_164, range, value, display)

  return offset + length, value
end

-- State Level
hkex_derivatives_standard_omd_v2_0.state_level = {}

-- Size: State Level
hkex_derivatives_standard_omd_v2_0.state_level.size = 1

-- Display: State Level
hkex_derivatives_standard_omd_v2_0.state_level.display = function(value)
  if value == "E" then
    return "State Level: Exchange (E)"
  end
  if value == "M" then
    return "State Level: Market (M)"
  end
  if value == "T" then
    return "State Level: Instrument Type (T)"
  end
  if value == "t" then
    return "State Level: Combo Type (t)"
  end
  if value == "C" then
    return "State Level: Instrument Class (C)"
  end
  if value == "c" then
    return "State Level: Combo Class (c)"
  end

  return "State Level: Unknown("..value..")"
end

-- Dissect: State Level
hkex_derivatives_standard_omd_v2_0.state_level.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.state_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.state_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.state_level, range, value, display)

  return offset + length, value
end

-- Market Status
hkex_derivatives_standard_omd_v2_0.market_status = {}

-- Size: Market Status
hkex_derivatives_standard_omd_v2_0.market_status.size =
  hkex_derivatives_standard_omd_v2_0.state_level.size + 
  hkex_derivatives_standard_omd_v2_0.market_uint_164.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_type_key.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_class_key.size + 
  hkex_derivatives_standard_omd_v2_0.filler_4.size + 
  hkex_derivatives_standard_omd_v2_0.actual_start_time.size + 
  hkex_derivatives_standard_omd_v2_0.planned_start_time.size + 
  hkex_derivatives_standard_omd_v2_0.state.size + 
  hkex_derivatives_standard_omd_v2_0.filler_1.size

-- Display: Market Status
hkex_derivatives_standard_omd_v2_0.market_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status
hkex_derivatives_standard_omd_v2_0.market_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- State Level: String
  index, state_level = hkex_derivatives_standard_omd_v2_0.state_level.dissect(buffer, index, packet, parent)

  -- Market Uint 164: Uint16
  index, market_uint_164 = hkex_derivatives_standard_omd_v2_0.market_uint_164.dissect(buffer, index, packet, parent)

  -- Instrument Type Key: Uint32
  index, instrument_type_key = hkex_derivatives_standard_omd_v2_0.instrument_type_key.dissect(buffer, index, packet, parent)

  -- Instrument Class Key: Uint32
  index, instrument_class_key = hkex_derivatives_standard_omd_v2_0.instrument_class_key.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_derivatives_standard_omd_v2_0.filler_4.dissect(buffer, index, packet, parent)

  -- Actual Start Time: Uint64
  index, actual_start_time = hkex_derivatives_standard_omd_v2_0.actual_start_time.dissect(buffer, index, packet, parent)

  -- Planned Start Time: Uint64
  index, planned_start_time = hkex_derivatives_standard_omd_v2_0.planned_start_time.dissect(buffer, index, packet, parent)

  -- State: Uint16
  index, state = hkex_derivatives_standard_omd_v2_0.state.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_standard_omd_v2_0.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status
hkex_derivatives_standard_omd_v2_0.market_status.dissect = function(buffer, offset, packet, parent)
  if show.market_status then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.market_status, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.market_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.market_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.market_status.fields(buffer, offset, packet, parent)
  end
end

-- Leg Ratio
hkex_derivatives_standard_omd_v2_0.leg_ratio = {}

-- Size: Leg Ratio
hkex_derivatives_standard_omd_v2_0.leg_ratio.size = 4

-- Display: Leg Ratio
hkex_derivatives_standard_omd_v2_0.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
hkex_derivatives_standard_omd_v2_0.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_standard_omd_v2_0.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
hkex_derivatives_standard_omd_v2_0.leg_side = {}

-- Size: Leg Side
hkex_derivatives_standard_omd_v2_0.leg_side.size = 1

-- Display: Leg Side
hkex_derivatives_standard_omd_v2_0.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg Side: Opposite (C)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
hkex_derivatives_standard_omd_v2_0.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Orderbook Id
hkex_derivatives_standard_omd_v2_0.leg_orderbook_id = {}

-- Size: Leg Orderbook Id
hkex_derivatives_standard_omd_v2_0.leg_orderbook_id.size = 4

-- Display: Leg Orderbook Id
hkex_derivatives_standard_omd_v2_0.leg_orderbook_id.display = function(value)
  return "Leg Orderbook Id: "..value
end

-- Dissect: Leg Orderbook Id
hkex_derivatives_standard_omd_v2_0.leg_orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.leg_orderbook_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.leg_orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.leg_orderbook_id, range, value, display)

  return offset + length, value
end

-- Combo Orderbook Id
hkex_derivatives_standard_omd_v2_0.combo_orderbook_id = {}

-- Size: Combo Orderbook Id
hkex_derivatives_standard_omd_v2_0.combo_orderbook_id.size = 4

-- Display: Combo Orderbook Id
hkex_derivatives_standard_omd_v2_0.combo_orderbook_id.display = function(value)
  return "Combo Orderbook Id: "..value
end

-- Dissect: Combo Orderbook Id
hkex_derivatives_standard_omd_v2_0.combo_orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.combo_orderbook_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.combo_orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.combo_orderbook_id, range, value, display)

  return offset + length, value
end

-- Combination Definition
hkex_derivatives_standard_omd_v2_0.combination_definition = {}

-- Size: Combination Definition
hkex_derivatives_standard_omd_v2_0.combination_definition.size =
  hkex_derivatives_standard_omd_v2_0.msg_size.size + 
  hkex_derivatives_standard_omd_v2_0.msg_type.size + 
  hkex_derivatives_standard_omd_v2_0.combo_orderbook_id.size + 
  hkex_derivatives_standard_omd_v2_0.leg_orderbook_id.size + 
  hkex_derivatives_standard_omd_v2_0.filler_3.size + 
  hkex_derivatives_standard_omd_v2_0.leg_side.size + 
  hkex_derivatives_standard_omd_v2_0.leg_ratio.size

-- Display: Combination Definition
hkex_derivatives_standard_omd_v2_0.combination_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Definition
hkex_derivatives_standard_omd_v2_0.combination_definition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = hkex_derivatives_standard_omd_v2_0.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = hkex_derivatives_standard_omd_v2_0.msg_type.dissect(buffer, index, packet, parent)

  -- Combo Orderbook Id: Uint32
  index, combo_orderbook_id = hkex_derivatives_standard_omd_v2_0.combo_orderbook_id.dissect(buffer, index, packet, parent)

  -- Leg Orderbook Id: Uint32
  index, leg_orderbook_id = hkex_derivatives_standard_omd_v2_0.leg_orderbook_id.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  -- Leg Side: String
  index, leg_side = hkex_derivatives_standard_omd_v2_0.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Int32
  index, leg_ratio = hkex_derivatives_standard_omd_v2_0.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Definition
hkex_derivatives_standard_omd_v2_0.combination_definition.dissect = function(buffer, offset, packet, parent)
  if show.combination_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.combination_definition, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.combination_definition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.combination_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.combination_definition.fields(buffer, offset, packet, parent)
  end
end

-- Effective Tomorrow
hkex_derivatives_standard_omd_v2_0.effective_tomorrow = {}

-- Size: Effective Tomorrow
hkex_derivatives_standard_omd_v2_0.effective_tomorrow.size = 1

-- Display: Effective Tomorrow
hkex_derivatives_standard_omd_v2_0.effective_tomorrow.display = function(value)
  if value == 0 then
    return "Effective Tomorrow: False (0)"
  end
  if value == 1 then
    return "Effective Tomorrow: True (1)"
  end

  return "Effective Tomorrow: Unknown("..value..")"
end

-- Dissect: Effective Tomorrow
hkex_derivatives_standard_omd_v2_0.effective_tomorrow.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.effective_tomorrow.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.effective_tomorrow.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.effective_tomorrow, range, value, display)

  return offset + length, value
end

-- Isin Code
hkex_derivatives_standard_omd_v2_0.isin_code = {}

-- Size: Isin Code
hkex_derivatives_standard_omd_v2_0.isin_code.size = 12

-- Display: Isin Code
hkex_derivatives_standard_omd_v2_0.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
hkex_derivatives_standard_omd_v2_0.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.isin_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Vcm Flag
hkex_derivatives_standard_omd_v2_0.vcm_flag = {}

-- Size: Vcm Flag
hkex_derivatives_standard_omd_v2_0.vcm_flag.size = 1

-- Display: Vcm Flag
hkex_derivatives_standard_omd_v2_0.vcm_flag.display = function(value)
  if value == 0 then
    return "Vcm Flag: Not Applicable (0)"
  end
  if value == 1 then
    return "Vcm Flag: Applicable (1)"
  end

  return "Vcm Flag: Unknown("..value..")"
end

-- Dissect: Vcm Flag
hkex_derivatives_standard_omd_v2_0.vcm_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.vcm_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.vcm_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.vcm_flag, range, value, display)

  return offset + length, value
end

-- Number Of Legs
hkex_derivatives_standard_omd_v2_0.number_of_legs = {}

-- Size: Number Of Legs
hkex_derivatives_standard_omd_v2_0.number_of_legs.size = 1

-- Display: Number Of Legs
hkex_derivatives_standard_omd_v2_0.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
hkex_derivatives_standard_omd_v2_0.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Price Quotation Factor Int 324
hkex_derivatives_standard_omd_v2_0.price_quotation_factor_int_324 = {}

-- Size: Price Quotation Factor Int 324
hkex_derivatives_standard_omd_v2_0.price_quotation_factor_int_324.size = 4

-- Display: Price Quotation Factor Int 324
hkex_derivatives_standard_omd_v2_0.price_quotation_factor_int_324.display = function(value)
  return "Price Quotation Factor Int 324: "..value
end

-- Dissect: Price Quotation Factor Int 324
hkex_derivatives_standard_omd_v2_0.price_quotation_factor_int_324.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.price_quotation_factor_int_324.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_standard_omd_v2_0.price_quotation_factor_int_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.price_quotation_factor_int_324, range, value, display)

  return offset + length, value
end

-- Contract Size Int 324
hkex_derivatives_standard_omd_v2_0.contract_size_int_324 = {}

-- Size: Contract Size Int 324
hkex_derivatives_standard_omd_v2_0.contract_size_int_324.size = 4

-- Display: Contract Size Int 324
hkex_derivatives_standard_omd_v2_0.contract_size_int_324.display = function(value)
  return "Contract Size Int 324: "..value
end

-- Dissect: Contract Size Int 324
hkex_derivatives_standard_omd_v2_0.contract_size_int_324.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.contract_size_int_324.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_standard_omd_v2_0.contract_size_int_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.contract_size_int_324, range, value, display)

  return offset + length, value
end

-- First Trading Time
hkex_derivatives_standard_omd_v2_0.first_trading_time = {}

-- Size: First Trading Time
hkex_derivatives_standard_omd_v2_0.first_trading_time.size = 8

-- Display: First Trading Time
hkex_derivatives_standard_omd_v2_0.first_trading_time.display = function(value)
  return "First Trading Time: "..value
end

-- Dissect: First Trading Time
hkex_derivatives_standard_omd_v2_0.first_trading_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.first_trading_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.first_trading_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.first_trading_time, range, value, display)

  return offset + length, value
end

-- First Trading Date
hkex_derivatives_standard_omd_v2_0.first_trading_date = {}

-- Size: First Trading Date
hkex_derivatives_standard_omd_v2_0.first_trading_date.size = 4

-- Display: First Trading Date
hkex_derivatives_standard_omd_v2_0.first_trading_date.display = function(value)
  return "First Trading Date: "..value
end

-- Dissect: First Trading Date
hkex_derivatives_standard_omd_v2_0.first_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.first_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.first_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.first_trading_date, range, value, display)

  return offset + length, value
end

-- Effective Last Trading Date
hkex_derivatives_standard_omd_v2_0.effective_last_trading_date = {}

-- Size: Effective Last Trading Date
hkex_derivatives_standard_omd_v2_0.effective_last_trading_date.size = 4

-- Display: Effective Last Trading Date
hkex_derivatives_standard_omd_v2_0.effective_last_trading_date.display = function(value)
  return "Effective Last Trading Date: "..value
end

-- Dissect: Effective Last Trading Date
hkex_derivatives_standard_omd_v2_0.effective_last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.effective_last_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.effective_last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.effective_last_trading_date, range, value, display)

  return offset + length, value
end

-- Strike Price
hkex_derivatives_standard_omd_v2_0.strike_price = {}

-- Size: Strike Price
hkex_derivatives_standard_omd_v2_0.strike_price.size = 8

-- Display: Strike Price
hkex_derivatives_standard_omd_v2_0.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
hkex_derivatives_standard_omd_v2_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.strike_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Last Trading Time
hkex_derivatives_standard_omd_v2_0.last_trading_time = {}

-- Size: Last Trading Time
hkex_derivatives_standard_omd_v2_0.last_trading_time.size = 8

-- Display: Last Trading Time
hkex_derivatives_standard_omd_v2_0.last_trading_time.display = function(value)
  return "Last Trading Time: "..value
end

-- Dissect: Last Trading Time
hkex_derivatives_standard_omd_v2_0.last_trading_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.last_trading_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.last_trading_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.last_trading_time, range, value, display)

  return offset + length, value
end

-- Last Trading Date
hkex_derivatives_standard_omd_v2_0.last_trading_date = {}

-- Size: Last Trading Date
hkex_derivatives_standard_omd_v2_0.last_trading_date.size = 4

-- Display: Last Trading Date
hkex_derivatives_standard_omd_v2_0.last_trading_date.display = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
hkex_derivatives_standard_omd_v2_0.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.last_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Modifier
hkex_derivatives_standard_omd_v2_0.modifier = {}

-- Size: Modifier
hkex_derivatives_standard_omd_v2_0.modifier.size = 2

-- Display: Modifier
hkex_derivatives_standard_omd_v2_0.modifier.display = function(value)
  return "Modifier: "..value
end

-- Dissect: Modifier
hkex_derivatives_standard_omd_v2_0.modifier.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.modifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.modifier, range, value, display)

  return offset + length, value
end

-- Instrument Group
hkex_derivatives_standard_omd_v2_0.instrument_group = {}

-- Size: Instrument Group
hkex_derivatives_standard_omd_v2_0.instrument_group.size = 2

-- Display: Instrument Group
hkex_derivatives_standard_omd_v2_0.instrument_group.display = function(value)
  return "Instrument Group: "..value
end

-- Dissect: Instrument Group
hkex_derivatives_standard_omd_v2_0.instrument_group.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.instrument_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.instrument_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_group, range, value, display)

  return offset + length, value
end

-- Market Uint 162
hkex_derivatives_standard_omd_v2_0.market_uint_162 = {}

-- Size: Market Uint 162
hkex_derivatives_standard_omd_v2_0.market_uint_162.size = 2

-- Display: Market Uint 162
hkex_derivatives_standard_omd_v2_0.market_uint_162.display = function(value)
  return "Market Uint 162: "..value
end

-- Dissect: Market Uint 162
hkex_derivatives_standard_omd_v2_0.market_uint_162.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.market_uint_162.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.market_uint_162.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.market_uint_162, range, value, display)

  return offset + length, value
end

-- Symbol
hkex_derivatives_standard_omd_v2_0.symbol = {}

-- Size: Symbol
hkex_derivatives_standard_omd_v2_0.symbol.size = 32

-- Display: Symbol
hkex_derivatives_standard_omd_v2_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
hkex_derivatives_standard_omd_v2_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Instrument Definition
hkex_derivatives_standard_omd_v2_0.instrument_definition = {}

-- Size: Instrument Definition
hkex_derivatives_standard_omd_v2_0.instrument_definition.size =
  hkex_derivatives_standard_omd_v2_0.msg_size.size + 
  hkex_derivatives_standard_omd_v2_0.msg_type.size + 
  hkex_derivatives_standard_omd_v2_0.order_book_id.size + 
  hkex_derivatives_standard_omd_v2_0.symbol.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_class_key.size + 
  hkex_derivatives_standard_omd_v2_0.market_uint_162.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_group.size + 
  hkex_derivatives_standard_omd_v2_0.modifier.size + 
  hkex_derivatives_standard_omd_v2_0.commodity_code.size + 
  hkex_derivatives_standard_omd_v2_0.last_trading_date.size + 
  hkex_derivatives_standard_omd_v2_0.last_trading_time.size + 
  hkex_derivatives_standard_omd_v2_0.strike_price.size + 
  hkex_derivatives_standard_omd_v2_0.effective_last_trading_date.size + 
  hkex_derivatives_standard_omd_v2_0.first_trading_date.size + 
  hkex_derivatives_standard_omd_v2_0.first_trading_time.size + 
  hkex_derivatives_standard_omd_v2_0.filler_3.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81.size + 
  hkex_derivatives_standard_omd_v2_0.contract_size_int_324.size + 
  hkex_derivatives_standard_omd_v2_0.price_quotation_factor_int_324.size + 
  hkex_derivatives_standard_omd_v2_0.number_of_legs.size + 
  hkex_derivatives_standard_omd_v2_0.vcm_flag.size + 
  hkex_derivatives_standard_omd_v2_0.isin_code.size + 
  hkex_derivatives_standard_omd_v2_0.effective_tomorrow.size + 
  hkex_derivatives_standard_omd_v2_0.filler_3.size

-- Display: Instrument Definition
hkex_derivatives_standard_omd_v2_0.instrument_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition
hkex_derivatives_standard_omd_v2_0.instrument_definition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = hkex_derivatives_standard_omd_v2_0.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = hkex_derivatives_standard_omd_v2_0.msg_type.dissect(buffer, index, packet, parent)

  -- Order Book Id: Uint32
  index, order_book_id = hkex_derivatives_standard_omd_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = hkex_derivatives_standard_omd_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Class Key: Uint32
  index, instrument_class_key = hkex_derivatives_standard_omd_v2_0.instrument_class_key.dissect(buffer, index, packet, parent)

  -- Market Uint 162: Uint16
  index, market_uint_162 = hkex_derivatives_standard_omd_v2_0.market_uint_162.dissect(buffer, index, packet, parent)

  -- Instrument Group: Uint16
  index, instrument_group = hkex_derivatives_standard_omd_v2_0.instrument_group.dissect(buffer, index, packet, parent)

  -- Modifier: Uint16
  index, modifier = hkex_derivatives_standard_omd_v2_0.modifier.dissect(buffer, index, packet, parent)

  -- Commodity Code: Uint32
  index, commodity_code = hkex_derivatives_standard_omd_v2_0.commodity_code.dissect(buffer, index, packet, parent)

  -- Last Trading Date: Uint32
  index, last_trading_date = hkex_derivatives_standard_omd_v2_0.last_trading_date.dissect(buffer, index, packet, parent)

  -- Last Trading Time: Uint64
  index, last_trading_time = hkex_derivatives_standard_omd_v2_0.last_trading_time.dissect(buffer, index, packet, parent)

  -- Strike Price: Int64
  index, strike_price = hkex_derivatives_standard_omd_v2_0.strike_price.dissect(buffer, index, packet, parent)

  -- Effective Last Trading Date: Uint32
  index, effective_last_trading_date = hkex_derivatives_standard_omd_v2_0.effective_last_trading_date.dissect(buffer, index, packet, parent)

  -- First Trading Date: Uint32
  index, first_trading_date = hkex_derivatives_standard_omd_v2_0.first_trading_date.dissect(buffer, index, packet, parent)

  -- First Trading Time: Uint64
  index, first_trading_time = hkex_derivatives_standard_omd_v2_0.first_trading_time.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  -- Instrument Status Uint 81: Uint8
  index, instrument_status_uint_81 = hkex_derivatives_standard_omd_v2_0.instrument_status_uint_81.dissect(buffer, index, packet, parent)

  -- Contract Size Int 324: Int32
  index, contract_size_int_324 = hkex_derivatives_standard_omd_v2_0.contract_size_int_324.dissect(buffer, index, packet, parent)

  -- Price Quotation Factor Int 324: Int32
  index, price_quotation_factor_int_324 = hkex_derivatives_standard_omd_v2_0.price_quotation_factor_int_324.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Uint8
  index, number_of_legs = hkex_derivatives_standard_omd_v2_0.number_of_legs.dissect(buffer, index, packet, parent)

  -- Vcm Flag: Uint8
  index, vcm_flag = hkex_derivatives_standard_omd_v2_0.vcm_flag.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = hkex_derivatives_standard_omd_v2_0.isin_code.dissect(buffer, index, packet, parent)

  -- Effective Tomorrow: Uint8
  index, effective_tomorrow = hkex_derivatives_standard_omd_v2_0.effective_tomorrow.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition
hkex_derivatives_standard_omd_v2_0.instrument_definition.dissect = function(buffer, offset, packet, parent)
  if show.instrument_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_definition, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.instrument_definition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.instrument_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.instrument_definition.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Currency Id
hkex_derivatives_standard_omd_v2_0.settlement_currency_id = {}

-- Size: Settlement Currency Id
hkex_derivatives_standard_omd_v2_0.settlement_currency_id.size = 3

-- Display: Settlement Currency Id
hkex_derivatives_standard_omd_v2_0.settlement_currency_id.display = function(value)
  return "Settlement Currency Id: "..value
end

-- Dissect: Settlement Currency Id
hkex_derivatives_standard_omd_v2_0.settlement_currency_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.settlement_currency_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.settlement_currency_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.settlement_currency_id, range, value, display)

  return offset + length, value
end

-- Base Currency
hkex_derivatives_standard_omd_v2_0.base_currency = {}

-- Size: Base Currency
hkex_derivatives_standard_omd_v2_0.base_currency.size = 3

-- Display: Base Currency
hkex_derivatives_standard_omd_v2_0.base_currency.display = function(value)
  return "Base Currency: "..value
end

-- Dissect: Base Currency
hkex_derivatives_standard_omd_v2_0.base_currency.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.base_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.base_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.base_currency, range, value, display)

  return offset + length, value
end

-- Tradable
hkex_derivatives_standard_omd_v2_0.tradable = {}

-- Size: Tradable
hkex_derivatives_standard_omd_v2_0.tradable.size = 1

-- Display: Tradable
hkex_derivatives_standard_omd_v2_0.tradable.display = function(value)
  if value == 1 then
    return "Tradable: Yes (1)"
  end
  if value == 2 then
    return "Tradable: No (2)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
hkex_derivatives_standard_omd_v2_0.tradable.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.tradable.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.tradable, range, value, display)

  return offset + length, value
end

-- Tick Size
hkex_derivatives_standard_omd_v2_0.tick_size = {}

-- Size: Tick Size
hkex_derivatives_standard_omd_v2_0.tick_size.size = 8

-- Display: Tick Size
hkex_derivatives_standard_omd_v2_0.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
hkex_derivatives_standard_omd_v2_0.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.tick_size.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_standard_omd_v2_0.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Decimal In Price
hkex_derivatives_standard_omd_v2_0.decimal_in_price = {}

-- Size: Decimal In Price
hkex_derivatives_standard_omd_v2_0.decimal_in_price.size = 2

-- Display: Decimal In Price
hkex_derivatives_standard_omd_v2_0.decimal_in_price.display = function(value)
  return "Decimal In Price: "..value
end

-- Dissect: Decimal In Price
hkex_derivatives_standard_omd_v2_0.decimal_in_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.decimal_in_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.decimal_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.decimal_in_price, range, value, display)

  return offset + length, value
end

-- Decimal In Strike Price
hkex_derivatives_standard_omd_v2_0.decimal_in_strike_price = {}

-- Size: Decimal In Strike Price
hkex_derivatives_standard_omd_v2_0.decimal_in_strike_price.size = 2

-- Display: Decimal In Strike Price
hkex_derivatives_standard_omd_v2_0.decimal_in_strike_price.display = function(value)
  return "Decimal In Strike Price: "..value
end

-- Dissect: Decimal In Strike Price
hkex_derivatives_standard_omd_v2_0.decimal_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.decimal_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.decimal_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.decimal_in_strike_price, range, value, display)

  return offset + length, value
end

-- Decimal In Contract Size
hkex_derivatives_standard_omd_v2_0.decimal_in_contract_size = {}

-- Size: Decimal In Contract Size
hkex_derivatives_standard_omd_v2_0.decimal_in_contract_size.size = 2

-- Display: Decimal In Contract Size
hkex_derivatives_standard_omd_v2_0.decimal_in_contract_size.display = function(value)
  return "Decimal In Contract Size: "..value
end

-- Dissect: Decimal In Contract Size
hkex_derivatives_standard_omd_v2_0.decimal_in_contract_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.decimal_in_contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.decimal_in_contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.decimal_in_contract_size, range, value, display)

  return offset + length, value
end

-- Contract Size Uint 324
hkex_derivatives_standard_omd_v2_0.contract_size_uint_324 = {}

-- Size: Contract Size Uint 324
hkex_derivatives_standard_omd_v2_0.contract_size_uint_324.size = 4

-- Display: Contract Size Uint 324
hkex_derivatives_standard_omd_v2_0.contract_size_uint_324.display = function(value)
  return "Contract Size Uint 324: "..value
end

-- Dissect: Contract Size Uint 324
hkex_derivatives_standard_omd_v2_0.contract_size_uint_324.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.contract_size_uint_324.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.contract_size_uint_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.contract_size_uint_324, range, value, display)

  return offset + length, value
end

-- Price Quotation Factor Uint 324
hkex_derivatives_standard_omd_v2_0.price_quotation_factor_uint_324 = {}

-- Size: Price Quotation Factor Uint 324
hkex_derivatives_standard_omd_v2_0.price_quotation_factor_uint_324.size = 4

-- Display: Price Quotation Factor Uint 324
hkex_derivatives_standard_omd_v2_0.price_quotation_factor_uint_324.display = function(value)
  return "Price Quotation Factor Uint 324: "..value
end

-- Dissect: Price Quotation Factor Uint 324
hkex_derivatives_standard_omd_v2_0.price_quotation_factor_uint_324.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.price_quotation_factor_uint_324.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.price_quotation_factor_uint_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.price_quotation_factor_uint_324, range, value, display)

  return offset + length, value
end

-- Instrument Type Id
hkex_derivatives_standard_omd_v2_0.instrument_type_id = {}

-- Size: Instrument Type Id
hkex_derivatives_standard_omd_v2_0.instrument_type_id.size = 8

-- Display: Instrument Type Id
hkex_derivatives_standard_omd_v2_0.instrument_type_id.display = function(value)
  return "Instrument Type Id: "..value
end

-- Dissect: Instrument Type Id
hkex_derivatives_standard_omd_v2_0.instrument_type_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.instrument_type_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.instrument_type_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_type_id, range, value, display)

  return offset + length, value
end

-- Exchange
hkex_derivatives_standard_omd_v2_0.exchange = {}

-- Size: Exchange
hkex_derivatives_standard_omd_v2_0.exchange.size = 2

-- Display: Exchange
hkex_derivatives_standard_omd_v2_0.exchange.display = function(value)
  return "Exchange: "..value
end

-- Dissect: Exchange
hkex_derivatives_standard_omd_v2_0.exchange.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.exchange.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.exchange, range, value, display)

  return offset + length, value
end

-- Instrument Class Name
hkex_derivatives_standard_omd_v2_0.instrument_class_name = {}

-- Size: Instrument Class Name
hkex_derivatives_standard_omd_v2_0.instrument_class_name.size = 40

-- Display: Instrument Class Name
hkex_derivatives_standard_omd_v2_0.instrument_class_name.display = function(value)
  return "Instrument Class Name: "..value
end

-- Dissect: Instrument Class Name
hkex_derivatives_standard_omd_v2_0.instrument_class_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.instrument_class_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.instrument_class_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_class_name, range, value, display)

  return offset + length, value
end

-- Key Type
hkex_derivatives_standard_omd_v2_0.key_type = {}

-- Size: Key Type
hkex_derivatives_standard_omd_v2_0.key_type.size = 1

-- Display: Key Type
hkex_derivatives_standard_omd_v2_0.key_type.display = function(value)
  if value == "0" then
    return "Key Type: Instrument Class (0)"
  end
  if value == "1" then
    return "Key Type: Combo Class (1)"
  end

  return "Key Type: Unknown("..value..")"
end

-- Dissect: Key Type
hkex_derivatives_standard_omd_v2_0.key_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.key_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.key_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.key_type, range, value, display)

  return offset + length, value
end

-- Instrument Class Id
hkex_derivatives_standard_omd_v2_0.instrument_class_id = {}

-- Size: Instrument Class Id
hkex_derivatives_standard_omd_v2_0.instrument_class_id.size = 14

-- Display: Instrument Class Id
hkex_derivatives_standard_omd_v2_0.instrument_class_id.display = function(value)
  return "Instrument Class Id: "..value
end

-- Dissect: Instrument Class Id
hkex_derivatives_standard_omd_v2_0.instrument_class_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.instrument_class_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.instrument_class_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.instrument_class_id, range, value, display)

  return offset + length, value
end

-- Class Definition
hkex_derivatives_standard_omd_v2_0.class_definition = {}

-- Size: Class Definition
hkex_derivatives_standard_omd_v2_0.class_definition.size =
  hkex_derivatives_standard_omd_v2_0.msg_size.size + 
  hkex_derivatives_standard_omd_v2_0.msg_type.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_class_id.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_class_key.size + 
  hkex_derivatives_standard_omd_v2_0.key_type.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_class_name.size + 
  hkex_derivatives_standard_omd_v2_0.exchange.size + 
  hkex_derivatives_standard_omd_v2_0.market_uint_162.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_group.size + 
  hkex_derivatives_standard_omd_v2_0.commodity_code.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_type_id.size + 
  hkex_derivatives_standard_omd_v2_0.instrument_type_key.size + 
  hkex_derivatives_standard_omd_v2_0.filler_3.size + 
  hkex_derivatives_standard_omd_v2_0.price_quotation_factor_uint_324.size + 
  hkex_derivatives_standard_omd_v2_0.contract_size_uint_324.size + 
  hkex_derivatives_standard_omd_v2_0.decimal_in_contract_size.size + 
  hkex_derivatives_standard_omd_v2_0.decimal_in_strike_price.size + 
  hkex_derivatives_standard_omd_v2_0.decimal_in_price.size + 
  hkex_derivatives_standard_omd_v2_0.tick_size.size + 
  hkex_derivatives_standard_omd_v2_0.tradable.size + 
  hkex_derivatives_standard_omd_v2_0.base_currency.size + 
  hkex_derivatives_standard_omd_v2_0.settlement_currency_id.size + 
  hkex_derivatives_standard_omd_v2_0.effective_tomorrow.size + 
  hkex_derivatives_standard_omd_v2_0.filler_2.size

-- Display: Class Definition
hkex_derivatives_standard_omd_v2_0.class_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Class Definition
hkex_derivatives_standard_omd_v2_0.class_definition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = hkex_derivatives_standard_omd_v2_0.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = hkex_derivatives_standard_omd_v2_0.msg_type.dissect(buffer, index, packet, parent)

  -- Instrument Class Id: String
  index, instrument_class_id = hkex_derivatives_standard_omd_v2_0.instrument_class_id.dissect(buffer, index, packet, parent)

  -- Instrument Class Key: Uint32
  index, instrument_class_key = hkex_derivatives_standard_omd_v2_0.instrument_class_key.dissect(buffer, index, packet, parent)

  -- Key Type: String
  index, key_type = hkex_derivatives_standard_omd_v2_0.key_type.dissect(buffer, index, packet, parent)

  -- Instrument Class Name: String
  index, instrument_class_name = hkex_derivatives_standard_omd_v2_0.instrument_class_name.dissect(buffer, index, packet, parent)

  -- Exchange: Uint16
  index, exchange = hkex_derivatives_standard_omd_v2_0.exchange.dissect(buffer, index, packet, parent)

  -- Market Uint 162: Uint16
  index, market_uint_162 = hkex_derivatives_standard_omd_v2_0.market_uint_162.dissect(buffer, index, packet, parent)

  -- Instrument Group: Uint16
  index, instrument_group = hkex_derivatives_standard_omd_v2_0.instrument_group.dissect(buffer, index, packet, parent)

  -- Commodity Code: Uint32
  index, commodity_code = hkex_derivatives_standard_omd_v2_0.commodity_code.dissect(buffer, index, packet, parent)

  -- Instrument Type Id: String
  index, instrument_type_id = hkex_derivatives_standard_omd_v2_0.instrument_type_id.dissect(buffer, index, packet, parent)

  -- Instrument Type Key: Uint32
  index, instrument_type_key = hkex_derivatives_standard_omd_v2_0.instrument_type_key.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  -- Price Quotation Factor Uint 324: Uint32
  index, price_quotation_factor_uint_324 = hkex_derivatives_standard_omd_v2_0.price_quotation_factor_uint_324.dissect(buffer, index, packet, parent)

  -- Contract Size Uint 324: Uint32
  index, contract_size_uint_324 = hkex_derivatives_standard_omd_v2_0.contract_size_uint_324.dissect(buffer, index, packet, parent)

  -- Decimal In Contract Size: Uint16
  index, decimal_in_contract_size = hkex_derivatives_standard_omd_v2_0.decimal_in_contract_size.dissect(buffer, index, packet, parent)

  -- Decimal In Strike Price: Uint16
  index, decimal_in_strike_price = hkex_derivatives_standard_omd_v2_0.decimal_in_strike_price.dissect(buffer, index, packet, parent)

  -- Decimal In Price: Uint16
  index, decimal_in_price = hkex_derivatives_standard_omd_v2_0.decimal_in_price.dissect(buffer, index, packet, parent)

  -- Tick Size: Int64
  index, tick_size = hkex_derivatives_standard_omd_v2_0.tick_size.dissect(buffer, index, packet, parent)

  -- Tradable: Uint8
  index, tradable = hkex_derivatives_standard_omd_v2_0.tradable.dissect(buffer, index, packet, parent)

  -- Base Currency: String
  index, base_currency = hkex_derivatives_standard_omd_v2_0.base_currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency Id: String
  index, settlement_currency_id = hkex_derivatives_standard_omd_v2_0.settlement_currency_id.dissect(buffer, index, packet, parent)

  -- Effective Tomorrow: Uint8
  index, effective_tomorrow = hkex_derivatives_standard_omd_v2_0.effective_tomorrow.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_standard_omd_v2_0.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Class Definition
hkex_derivatives_standard_omd_v2_0.class_definition.dissect = function(buffer, offset, packet, parent)
  if show.class_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.class_definition, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.class_definition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.class_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.class_definition.fields(buffer, offset, packet, parent)
  end
end

-- Filler 5
hkex_derivatives_standard_omd_v2_0.filler_5 = {}

-- Size: Filler 5
hkex_derivatives_standard_omd_v2_0.filler_5.size = 5

-- Display: Filler 5
hkex_derivatives_standard_omd_v2_0.filler_5.display = function(value)
  return "Filler 5: "..value
end

-- Dissect: Filler 5
hkex_derivatives_standard_omd_v2_0.filler_5.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.filler_5.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.filler_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.filler_5, range, value, display)

  return offset + length, value
end

-- Decimal In Underlying Price
hkex_derivatives_standard_omd_v2_0.decimal_in_underlying_price = {}

-- Size: Decimal In Underlying Price
hkex_derivatives_standard_omd_v2_0.decimal_in_underlying_price.size = 2

-- Display: Decimal In Underlying Price
hkex_derivatives_standard_omd_v2_0.decimal_in_underlying_price.display = function(value)
  return "Decimal In Underlying Price: "..value
end

-- Dissect: Decimal In Underlying Price
hkex_derivatives_standard_omd_v2_0.decimal_in_underlying_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.decimal_in_underlying_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.decimal_in_underlying_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.decimal_in_underlying_price, range, value, display)

  return offset + length, value
end

-- Underlying Type
hkex_derivatives_standard_omd_v2_0.underlying_type = {}

-- Size: Underlying Type
hkex_derivatives_standard_omd_v2_0.underlying_type.size = 1

-- Display: Underlying Type
hkex_derivatives_standard_omd_v2_0.underlying_type.display = function(value)
  if value == "S" then
    return "Underlying Type: Stock (S)"
  end
  if value == "C" then
    return "Underlying Type: Currency (C)"
  end
  if value == "I" then
    return "Underlying Type: Fixed Income (I)"
  end
  if value == "E" then
    return "Underlying Type: Energy Power (E)"
  end
  if value == "A" then
    return "Underlying Type: Commodity (A)"
  end
  if value == "M" then
    return "Underlying Type: Metal (M)"
  end

  return "Underlying Type: Unknown("..value..")"
end

-- Dissect: Underlying Type
hkex_derivatives_standard_omd_v2_0.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.underlying_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Underlying Code
hkex_derivatives_standard_omd_v2_0.underlying_code = {}

-- Size: Underlying Code
hkex_derivatives_standard_omd_v2_0.underlying_code.size = 20

-- Display: Underlying Code
hkex_derivatives_standard_omd_v2_0.underlying_code.display = function(value)
  return "Underlying Code: "..value
end

-- Dissect: Underlying Code
hkex_derivatives_standard_omd_v2_0.underlying_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.underlying_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.underlying_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.underlying_code, range, value, display)

  return offset + length, value
end

-- Commodity Id
hkex_derivatives_standard_omd_v2_0.commodity_id = {}

-- Size: Commodity Id
hkex_derivatives_standard_omd_v2_0.commodity_id.size = 6

-- Display: Commodity Id
hkex_derivatives_standard_omd_v2_0.commodity_id.display = function(value)
  return "Commodity Id: "..value
end

-- Dissect: Commodity Id
hkex_derivatives_standard_omd_v2_0.commodity_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.commodity_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.commodity_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_id, range, value, display)

  return offset + length, value
end

-- Commodity Name
hkex_derivatives_standard_omd_v2_0.commodity_name = {}

-- Size: Commodity Name
hkex_derivatives_standard_omd_v2_0.commodity_name.size = 40

-- Display: Commodity Name
hkex_derivatives_standard_omd_v2_0.commodity_name.display = function(value)
  return "Commodity Name: "..value
end

-- Dissect: Commodity Name
hkex_derivatives_standard_omd_v2_0.commodity_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.commodity_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.commodity_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_name, range, value, display)

  return offset + length, value
end

-- Commodity Definition
hkex_derivatives_standard_omd_v2_0.commodity_definition = {}

-- Size: Commodity Definition
hkex_derivatives_standard_omd_v2_0.commodity_definition.size =
  hkex_derivatives_standard_omd_v2_0.commodity_code.size + 
  hkex_derivatives_standard_omd_v2_0.commodity_name.size + 
  hkex_derivatives_standard_omd_v2_0.commodity_id.size + 
  hkex_derivatives_standard_omd_v2_0.underlying_code.size + 
  hkex_derivatives_standard_omd_v2_0.underlying_type.size + 
  hkex_derivatives_standard_omd_v2_0.decimal_in_underlying_price.size + 
  hkex_derivatives_standard_omd_v2_0.base_currency.size + 
  hkex_derivatives_standard_omd_v2_0.effective_tomorrow.size + 
  hkex_derivatives_standard_omd_v2_0.filler_5.size

-- Display: Commodity Definition
hkex_derivatives_standard_omd_v2_0.commodity_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Definition
hkex_derivatives_standard_omd_v2_0.commodity_definition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Commodity Code: Uint32
  index, commodity_code = hkex_derivatives_standard_omd_v2_0.commodity_code.dissect(buffer, index, packet, parent)

  -- Commodity Name: String
  index, commodity_name = hkex_derivatives_standard_omd_v2_0.commodity_name.dissect(buffer, index, packet, parent)

  -- Commodity Id: String
  index, commodity_id = hkex_derivatives_standard_omd_v2_0.commodity_id.dissect(buffer, index, packet, parent)

  -- Underlying Code: String
  index, underlying_code = hkex_derivatives_standard_omd_v2_0.underlying_code.dissect(buffer, index, packet, parent)

  -- Underlying Type: String
  index, underlying_type = hkex_derivatives_standard_omd_v2_0.underlying_type.dissect(buffer, index, packet, parent)

  -- Decimal In Underlying Price: Uint16
  index, decimal_in_underlying_price = hkex_derivatives_standard_omd_v2_0.decimal_in_underlying_price.dissect(buffer, index, packet, parent)

  -- Base Currency: String
  index, base_currency = hkex_derivatives_standard_omd_v2_0.base_currency.dissect(buffer, index, packet, parent)

  -- Effective Tomorrow: Uint8
  index, effective_tomorrow = hkex_derivatives_standard_omd_v2_0.effective_tomorrow.dissect(buffer, index, packet, parent)

  -- Filler 5: String
  index, filler_5 = hkex_derivatives_standard_omd_v2_0.filler_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Definition
hkex_derivatives_standard_omd_v2_0.commodity_definition.dissect = function(buffer, offset, packet, parent)
  if show.commodity_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.commodity_definition, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.commodity_definition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.commodity_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.commodity_definition.fields(buffer, offset, packet, parent)
  end
end

-- Last Seq Num
hkex_derivatives_standard_omd_v2_0.last_seq_num = {}

-- Size: Last Seq Num
hkex_derivatives_standard_omd_v2_0.last_seq_num.size = 4

-- Display: Last Seq Num
hkex_derivatives_standard_omd_v2_0.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
hkex_derivatives_standard_omd_v2_0.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Refresh Complete
hkex_derivatives_standard_omd_v2_0.refresh_complete = {}

-- Size: Refresh Complete
hkex_derivatives_standard_omd_v2_0.refresh_complete.size =
  hkex_derivatives_standard_omd_v2_0.last_seq_num.size

-- Display: Refresh Complete
hkex_derivatives_standard_omd_v2_0.refresh_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete
hkex_derivatives_standard_omd_v2_0.refresh_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = hkex_derivatives_standard_omd_v2_0.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete
hkex_derivatives_standard_omd_v2_0.refresh_complete.dissect = function(buffer, offset, packet, parent)
  if show.refresh_complete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.refresh_complete, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.refresh_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.refresh_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.refresh_complete.fields(buffer, offset, packet, parent)
  end
end

-- End Seq Num
hkex_derivatives_standard_omd_v2_0.end_seq_num = {}

-- Size: End Seq Num
hkex_derivatives_standard_omd_v2_0.end_seq_num.size = 4

-- Display: End Seq Num
hkex_derivatives_standard_omd_v2_0.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
hkex_derivatives_standard_omd_v2_0.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
hkex_derivatives_standard_omd_v2_0.begin_seq_num = {}

-- Size: Begin Seq Num
hkex_derivatives_standard_omd_v2_0.begin_seq_num.size = 4

-- Display: Begin Seq Num
hkex_derivatives_standard_omd_v2_0.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
hkex_derivatives_standard_omd_v2_0.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Retrans Status
hkex_derivatives_standard_omd_v2_0.retrans_status = {}

-- Size: Retrans Status
hkex_derivatives_standard_omd_v2_0.retrans_status.size = 1

-- Display: Retrans Status
hkex_derivatives_standard_omd_v2_0.retrans_status.display = function(value)
  if value == 0 then
    return "Retrans Status: Request Accepted (0)"
  end
  if value == 1 then
    return "Retrans Status: Unkown Unauthorized Channel Id (1)"
  end
  if value == 2 then
    return "Retrans Status: Messages Not Available (2)"
  end
  if value == 100 then
    return "Retrans Status: Exceeds Maximum Sequence Range (100)"
  end
  if value == 101 then
    return "Retrans Status: Exceeds Maximum Requests In A Day (101)"
  end

  return "Retrans Status: Unknown("..value..")"
end

-- Dissect: Retrans Status
hkex_derivatives_standard_omd_v2_0.retrans_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.retrans_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.retrans_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.retrans_status, range, value, display)

  return offset + length, value
end

-- Channel Id
hkex_derivatives_standard_omd_v2_0.channel_id = {}

-- Size: Channel Id
hkex_derivatives_standard_omd_v2_0.channel_id.size = 2

-- Display: Channel Id
hkex_derivatives_standard_omd_v2_0.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
hkex_derivatives_standard_omd_v2_0.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Retransmission Response
hkex_derivatives_standard_omd_v2_0.retransmission_response = {}

-- Size: Retransmission Response
hkex_derivatives_standard_omd_v2_0.retransmission_response.size =
  hkex_derivatives_standard_omd_v2_0.channel_id.size + 
  hkex_derivatives_standard_omd_v2_0.retrans_status.size + 
  hkex_derivatives_standard_omd_v2_0.filler_1.size + 
  hkex_derivatives_standard_omd_v2_0.begin_seq_num.size + 
  hkex_derivatives_standard_omd_v2_0.end_seq_num.size

-- Display: Retransmission Response
hkex_derivatives_standard_omd_v2_0.retransmission_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response
hkex_derivatives_standard_omd_v2_0.retransmission_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = hkex_derivatives_standard_omd_v2_0.channel_id.dissect(buffer, index, packet, parent)

  -- Retrans Status: Uint8
  index, retrans_status = hkex_derivatives_standard_omd_v2_0.retrans_status.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_standard_omd_v2_0.filler_1.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = hkex_derivatives_standard_omd_v2_0.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = hkex_derivatives_standard_omd_v2_0.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response
hkex_derivatives_standard_omd_v2_0.retransmission_response.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.retransmission_response, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.retransmission_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.retransmission_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.retransmission_response.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
hkex_derivatives_standard_omd_v2_0.retransmission_request = {}

-- Size: Retransmission Request
hkex_derivatives_standard_omd_v2_0.retransmission_request.size =
  hkex_derivatives_standard_omd_v2_0.channel_id.size + 
  hkex_derivatives_standard_omd_v2_0.filler_2.size + 
  hkex_derivatives_standard_omd_v2_0.begin_seq_num.size + 
  hkex_derivatives_standard_omd_v2_0.end_seq_num.size

-- Display: Retransmission Request
hkex_derivatives_standard_omd_v2_0.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
hkex_derivatives_standard_omd_v2_0.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = hkex_derivatives_standard_omd_v2_0.channel_id.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_standard_omd_v2_0.filler_2.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = hkex_derivatives_standard_omd_v2_0.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = hkex_derivatives_standard_omd_v2_0.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
hkex_derivatives_standard_omd_v2_0.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.retransmission_request, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Session Status
hkex_derivatives_standard_omd_v2_0.session_status = {}

-- Size: Session Status
hkex_derivatives_standard_omd_v2_0.session_status.size = 1

-- Display: Session Status
hkex_derivatives_standard_omd_v2_0.session_status.display = function(value)
  if value == 0 then
    return "Session Status: Session Active (0)"
  end
  if value == 5 then
    return "Session Status: Invalid Username Or Ip Address (5)"
  end
  if value == 100 then
    return "Session Status: User Already Connected (100)"
  end

  return "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
hkex_derivatives_standard_omd_v2_0.session_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.session_status, range, value, display)

  return offset + length, value
end

-- Logon Response
hkex_derivatives_standard_omd_v2_0.logon_response = {}

-- Size: Logon Response
hkex_derivatives_standard_omd_v2_0.logon_response.size =
  hkex_derivatives_standard_omd_v2_0.session_status.size + 
  hkex_derivatives_standard_omd_v2_0.filler_3.size

-- Display: Logon Response
hkex_derivatives_standard_omd_v2_0.logon_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response
hkex_derivatives_standard_omd_v2_0.logon_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Status: Uint8
  index, session_status = hkex_derivatives_standard_omd_v2_0.session_status.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_standard_omd_v2_0.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response
hkex_derivatives_standard_omd_v2_0.logon_response.dissect = function(buffer, offset, packet, parent)
  if show.logon_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.logon_response, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.logon_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.logon_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.logon_response.fields(buffer, offset, packet, parent)
  end
end

-- Username
hkex_derivatives_standard_omd_v2_0.username = {}

-- Size: Username
hkex_derivatives_standard_omd_v2_0.username.size = 12

-- Display: Username
hkex_derivatives_standard_omd_v2_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
hkex_derivatives_standard_omd_v2_0.username.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_standard_omd_v2_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.username, range, value, display)

  return offset + length, value
end

-- Logon
hkex_derivatives_standard_omd_v2_0.logon = {}

-- Size: Logon
hkex_derivatives_standard_omd_v2_0.logon.size =
  hkex_derivatives_standard_omd_v2_0.username.size

-- Display: Logon
hkex_derivatives_standard_omd_v2_0.logon.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon
hkex_derivatives_standard_omd_v2_0.logon.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: String
  index, username = hkex_derivatives_standard_omd_v2_0.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon
hkex_derivatives_standard_omd_v2_0.logon.dissect = function(buffer, offset, packet, parent)
  if show.logon then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.logon, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.logon.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.logon.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.logon.fields(buffer, offset, packet, parent)
  end
end

-- Dr Status
hkex_derivatives_standard_omd_v2_0.dr_status = {}

-- Size: Dr Status
hkex_derivatives_standard_omd_v2_0.dr_status.size = 4

-- Display: Dr Status
hkex_derivatives_standard_omd_v2_0.dr_status.display = function(value)
  if value == 1 then
    return "Dr Status: Dr In Progress (1)"
  end
  if value == 2 then
    return "Dr Status: Dr Completed (2)"
  end

  return "Dr Status: Unknown("..value..")"
end

-- Dissect: Dr Status
hkex_derivatives_standard_omd_v2_0.dr_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.dr_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.dr_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.dr_status, range, value, display)

  return offset + length, value
end

-- Disaster Recovery Signal Message
hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message.size =
  hkex_derivatives_standard_omd_v2_0.dr_status.size

-- Display: Disaster Recovery Signal Message
hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dr Status: Uint32
  index, dr_status = hkex_derivatives_standard_omd_v2_0.dr_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.disaster_recovery_signal_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- New Seq No
hkex_derivatives_standard_omd_v2_0.new_seq_no = {}

-- Size: New Seq No
hkex_derivatives_standard_omd_v2_0.new_seq_no.size = 4

-- Display: New Seq No
hkex_derivatives_standard_omd_v2_0.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
hkex_derivatives_standard_omd_v2_0.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Sequence Reset
hkex_derivatives_standard_omd_v2_0.sequence_reset = {}

-- Size: Sequence Reset
hkex_derivatives_standard_omd_v2_0.sequence_reset.size =
  hkex_derivatives_standard_omd_v2_0.new_seq_no.size

-- Display: Sequence Reset
hkex_derivatives_standard_omd_v2_0.sequence_reset.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset
hkex_derivatives_standard_omd_v2_0.sequence_reset.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = hkex_derivatives_standard_omd_v2_0.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset
hkex_derivatives_standard_omd_v2_0.sequence_reset.dissect = function(buffer, offset, packet, parent)
  if show.sequence_reset then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.sequence_reset, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.sequence_reset.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.sequence_reset.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.sequence_reset.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_derivatives_standard_omd_v2_0.payload = {}

-- Size: Payload
hkex_derivatives_standard_omd_v2_0.payload.size = function(buffer, offset, msg_type)
  -- Size of Sequence Reset
  if msg_type == 100 then
    return hkex_derivatives_standard_omd_v2_0.sequence_reset.size
  end
  -- Size of Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message.size
  end
  -- Size of Logon
  if msg_type == 101 then
    return hkex_derivatives_standard_omd_v2_0.logon.size
  end
  -- Size of Logon Response
  if msg_type == 102 then
    return hkex_derivatives_standard_omd_v2_0.logon_response.size
  end
  -- Size of Retransmission Request
  if msg_type == 201 then
    return hkex_derivatives_standard_omd_v2_0.retransmission_request.size
  end
  -- Size of Retransmission Response
  if msg_type == 202 then
    return hkex_derivatives_standard_omd_v2_0.retransmission_response.size
  end
  -- Size of Refresh Complete
  if msg_type == 203 then
    return hkex_derivatives_standard_omd_v2_0.refresh_complete.size
  end
  -- Size of Commodity Definition
  if msg_type == 301 then
    return hkex_derivatives_standard_omd_v2_0.commodity_definition.size
  end
  -- Size of Class Definition
  if msg_type == 302 then
    return hkex_derivatives_standard_omd_v2_0.class_definition.size
  end
  -- Size of Instrument Definition
  if msg_type == 304 then
    return hkex_derivatives_standard_omd_v2_0.instrument_definition.size
  end
  -- Size of Combination Definition
  if msg_type == 305 then
    return hkex_derivatives_standard_omd_v2_0.combination_definition.size
  end
  -- Size of Market Status
  if msg_type == 320 then
    return hkex_derivatives_standard_omd_v2_0.market_status.size
  end
  -- Size of Instrument Status
  if msg_type == 321 then
    return hkex_derivatives_standard_omd_v2_0.instrument_status.size
  end
  -- Size of Commodity And Class Status
  if msg_type == 322 then
    return hkex_derivatives_standard_omd_v2_0.commodity_and_class_status.size
  end
  -- Size of Vcm Trigger
  if msg_type == 324 then
    return hkex_derivatives_standard_omd_v2_0.vcm_trigger.size
  end
  -- Size of Vcm End
  if msg_type == 325 then
    return hkex_derivatives_standard_omd_v2_0.vcm_end.size
  end
  -- Size of Thm Trigger
  if msg_type == 326 then
    return hkex_derivatives_standard_omd_v2_0.thm_trigger.size
  end
  -- Size of Aggregate Order Book Update Message
  if msg_type == 353 then
    return hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message.size(buffer, offset)
  end
  -- Size of Quote Request
  if msg_type == 336 then
    return hkex_derivatives_standard_omd_v2_0.quote_request.size
  end
  -- Size of Aggregate Implied Order
  if msg_type == 337 then
    return hkex_derivatives_standard_omd_v2_0.aggregate_implied_order.size
  end
  -- Size of Trade
  if msg_type == 350 then
    return hkex_derivatives_standard_omd_v2_0.trade.size
  end
  -- Size of Trade Amendment Message
  if msg_type == 356 then
    return hkex_derivatives_standard_omd_v2_0.trade_amendment_message.size
  end
  -- Size of Trade Statistics Message
  if msg_type == 360 then
    return hkex_derivatives_standard_omd_v2_0.trade_statistics_message.size
  end
  -- Size of Calculated Opening Price Message
  if msg_type == 364 then
    return hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message.size
  end
  -- Size of Market Alert Message
  if msg_type == 323 then
    return hkex_derivatives_standard_omd_v2_0.market_alert_message.size(buffer, offset)
  end
  -- Size of Open Interest Message
  if msg_type == 366 then
    return hkex_derivatives_standard_omd_v2_0.open_interest_message.size
  end

  return 0
end

-- Display: Payload
hkex_derivatives_standard_omd_v2_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
hkex_derivatives_standard_omd_v2_0.payload.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset
  if msg_type == 100 then
    return hkex_derivatives_standard_omd_v2_0.sequence_reset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_derivatives_standard_omd_v2_0.disaster_recovery_signal_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon
  if msg_type == 101 then
    return hkex_derivatives_standard_omd_v2_0.logon.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response
  if msg_type == 102 then
    return hkex_derivatives_standard_omd_v2_0.logon_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if msg_type == 201 then
    return hkex_derivatives_standard_omd_v2_0.retransmission_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Response
  if msg_type == 202 then
    return hkex_derivatives_standard_omd_v2_0.retransmission_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complete
  if msg_type == 203 then
    return hkex_derivatives_standard_omd_v2_0.refresh_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity Definition
  if msg_type == 301 then
    return hkex_derivatives_standard_omd_v2_0.commodity_definition.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Class Definition
  if msg_type == 302 then
    return hkex_derivatives_standard_omd_v2_0.class_definition.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition
  if msg_type == 304 then
    return hkex_derivatives_standard_omd_v2_0.instrument_definition.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Definition
  if msg_type == 305 then
    return hkex_derivatives_standard_omd_v2_0.combination_definition.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Status
  if msg_type == 320 then
    return hkex_derivatives_standard_omd_v2_0.market_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status
  if msg_type == 321 then
    return hkex_derivatives_standard_omd_v2_0.instrument_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity And Class Status
  if msg_type == 322 then
    return hkex_derivatives_standard_omd_v2_0.commodity_and_class_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Vcm Trigger
  if msg_type == 324 then
    return hkex_derivatives_standard_omd_v2_0.vcm_trigger.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Vcm End
  if msg_type == 325 then
    return hkex_derivatives_standard_omd_v2_0.vcm_end.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Thm Trigger
  if msg_type == 326 then
    return hkex_derivatives_standard_omd_v2_0.thm_trigger.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aggregate Order Book Update Message
  if msg_type == 353 then
    return hkex_derivatives_standard_omd_v2_0.aggregate_order_book_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if msg_type == 336 then
    return hkex_derivatives_standard_omd_v2_0.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aggregate Implied Order
  if msg_type == 337 then
    return hkex_derivatives_standard_omd_v2_0.aggregate_implied_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade
  if msg_type == 350 then
    return hkex_derivatives_standard_omd_v2_0.trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Amendment Message
  if msg_type == 356 then
    return hkex_derivatives_standard_omd_v2_0.trade_amendment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Statistics Message
  if msg_type == 360 then
    return hkex_derivatives_standard_omd_v2_0.trade_statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Calculated Opening Price Message
  if msg_type == 364 then
    return hkex_derivatives_standard_omd_v2_0.calculated_opening_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Alert Message
  if msg_type == 323 then
    return hkex_derivatives_standard_omd_v2_0.market_alert_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if msg_type == 366 then
    return hkex_derivatives_standard_omd_v2_0.open_interest_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
hkex_derivatives_standard_omd_v2_0.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return hkex_derivatives_standard_omd_v2_0.payload.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = hkex_derivatives_standard_omd_v2_0.payload.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = hkex_derivatives_standard_omd_v2_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.payload, range, display)

  return hkex_derivatives_standard_omd_v2_0.payload.branches(buffer, offset, packet, parent, msg_type)
end

-- Msg Header
hkex_derivatives_standard_omd_v2_0.msg_header = {}

-- Size: Msg Header
hkex_derivatives_standard_omd_v2_0.msg_header.size =
  hkex_derivatives_standard_omd_v2_0.msg_size.size + 
  hkex_derivatives_standard_omd_v2_0.msg_type.size

-- Display: Msg Header
hkex_derivatives_standard_omd_v2_0.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_derivatives_standard_omd_v2_0.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = hkex_derivatives_standard_omd_v2_0.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = hkex_derivatives_standard_omd_v2_0.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_derivatives_standard_omd_v2_0.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.msg_header, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_derivatives_standard_omd_v2_0.message = {}

-- Display: Message
hkex_derivatives_standard_omd_v2_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_derivatives_standard_omd_v2_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_derivatives_standard_omd_v2_0.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 26 branches
  index = hkex_derivatives_standard_omd_v2_0.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_derivatives_standard_omd_v2_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.message, buffer(offset, 0))
    local current = hkex_derivatives_standard_omd_v2_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_derivatives_standard_omd_v2_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_derivatives_standard_omd_v2_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
hkex_derivatives_standard_omd_v2_0.send_time = {}

-- Size: Send Time
hkex_derivatives_standard_omd_v2_0.send_time.size = 8

-- Display: Send Time
hkex_derivatives_standard_omd_v2_0.send_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_derivatives_standard_omd_v2_0.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_standard_omd_v2_0.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_derivatives_standard_omd_v2_0.seq_num = {}

-- Size: Seq Num
hkex_derivatives_standard_omd_v2_0.seq_num.size = 4

-- Display: Seq Num
hkex_derivatives_standard_omd_v2_0.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_derivatives_standard_omd_v2_0.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Compression Mode
hkex_derivatives_standard_omd_v2_0.compression_mode = {}

-- Size: Compression Mode
hkex_derivatives_standard_omd_v2_0.compression_mode.size = 1

-- Display: Compression Mode
hkex_derivatives_standard_omd_v2_0.compression_mode.display = function(value)
  return "Compression Mode: "..value
end

-- Dissect: Compression Mode
hkex_derivatives_standard_omd_v2_0.compression_mode.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.compression_mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_derivatives_standard_omd_v2_0.compression_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.compression_mode, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_derivatives_standard_omd_v2_0.msg_count = {}

-- Size: Msg Count
hkex_derivatives_standard_omd_v2_0.msg_count.size = 1

-- Display: Msg Count
hkex_derivatives_standard_omd_v2_0.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_derivatives_standard_omd_v2_0.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_derivatives_standard_omd_v2_0.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_derivatives_standard_omd_v2_0.pkt_size = {}

-- Size: Pkt Size
hkex_derivatives_standard_omd_v2_0.pkt_size.size = 2

-- Display: Pkt Size
hkex_derivatives_standard_omd_v2_0.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_derivatives_standard_omd_v2_0.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_standard_omd_v2_0.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_standard_omd_v2_0.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Packet Header
hkex_derivatives_standard_omd_v2_0.packet_header = {}

-- Size: Packet Header
hkex_derivatives_standard_omd_v2_0.packet_header.size =
  hkex_derivatives_standard_omd_v2_0.pkt_size.size + 
  hkex_derivatives_standard_omd_v2_0.msg_count.size + 
  hkex_derivatives_standard_omd_v2_0.compression_mode.size + 
  hkex_derivatives_standard_omd_v2_0.seq_num.size + 
  hkex_derivatives_standard_omd_v2_0.send_time.size

-- Display: Packet Header
hkex_derivatives_standard_omd_v2_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_derivatives_standard_omd_v2_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_derivatives_standard_omd_v2_0.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_derivatives_standard_omd_v2_0.msg_count.dissect(buffer, index, packet, parent)

  -- Compression Mode: 1 Byte Unsigned Fixed Width Integer
  index, compression_mode = hkex_derivatives_standard_omd_v2_0.compression_mode.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_derivatives_standard_omd_v2_0.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_derivatives_standard_omd_v2_0.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_derivatives_standard_omd_v2_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_standard_omd_v2_0.fields.packet_header, buffer(offset, 0))
    local index = hkex_derivatives_standard_omd_v2_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_standard_omd_v2_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_standard_omd_v2_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_derivatives_standard_omd_v2_0.packet = {}

-- Dissect Packet
hkex_derivatives_standard_omd_v2_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_derivatives_standard_omd_v2_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_derivatives_standard_omd_v2_0.message.dissect(buffer, index, packet, parent, msg_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_derivatives_standard_omd_v2_0.init()
end

-- Dissector for Hkex Derivatives Standard Omd 2.0
function omi_hkex_derivatives_standard_omd_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_derivatives_standard_omd_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_derivatives_standard_omd_v2_0, buffer(), omi_hkex_derivatives_standard_omd_v2_0.description, "("..buffer:len().." Bytes)")
  return hkex_derivatives_standard_omd_v2_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_hkex_derivatives_standard_omd_v2_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
hkex_derivatives_standard_omd_v2_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Hkex Derivatives Standard Omd 2.0
local function omi_hkex_derivatives_standard_omd_v2_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_derivatives_standard_omd_v2_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_derivatives_standard_omd_v2_0
  omi_hkex_derivatives_standard_omd_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex Derivatives Standard Omd 2.0
omi_hkex_derivatives_standard_omd_v2_0:register_heuristic("udp", omi_hkex_derivatives_standard_omd_v2_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 2.0
--   Date: Tuesday, September 16, 2025
--   Specification: HKEX_OMD_Derivatives_Binary_Interface_Specifications_v1-47.pdf
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
